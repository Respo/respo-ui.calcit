import assert from "node:assert/strict";
import { execFileSync } from "node:child_process";
import { copyFileSync, mkdirSync, mkdtempSync, readFileSync, rmSync, symlinkSync } from "node:fs";
import path from "node:path";
import { fileURLToPath, pathToFileURL } from "node:url";

const root = fileURLToPath(new URL("../", import.meta.url));
const cli = process.env.CALCIT_BIN ?? "calcit";
const run = (...args) => execFileSync(cli, args, {
  cwd: root, encoding: "utf8", stdio: ["ignore", "pipe", "pipe"],
});
// These existing discovery APIs expose JSON; executable ASTs come from the CLI.
const listed = JSON.parse(run("test", "--list", "--require-match", "--format", "json"));
assert.ok(listed.selected > 0, "No attached ui tests selected");
assert.equal(listed.tests.length, listed.selected);
const targets = [...new Set(listed.tests.map(({ id }) => id.split("#")[0]))];
const definitions = new Map(targets.map((target) => [target,
  JSON.parse(run("query", "def", target, "--format", "json")).data]));
const scratch = mkdtempSync(path.join(root, ".calcit", "ui-js-replay-"));
const snapshot = path.join(scratch, "calcit.cirru");
const original = readFileSync(path.join(root, "calcit.cirru"));
try {
  copyFileSync(path.join(root, "calcit.cirru"), snapshot);
  copyFileSync(path.join(root, "deps.cirru"), path.join(scratch, "deps.cirru"));
  mkdirSync(path.join(scratch, ".calcit"));
  symlinkSync(path.join(root, ".calcit", "modules"), path.join(scratch, ".calcit", "modules"), "dir");
  const operations = [];
  const calls = [];
  listed.tests.forEach(({ id }, index) => {
    const separator = id.indexOf("#");
    const target = id.slice(0, separator);
    const name = id.slice(separator + 1);
    const test = definitions.get(target).tests.find((test) => test.name === name);
    assert.ok(test?.code, `Missing test AST: ${id}`);
    const namespace = target.split("/")[0];
    const helper = `replay-attached-${index}`;
    operations.push(["edit", "def", `${namespace}/${helper}`, "--input-format", "json-ast", "--code",
      JSON.stringify(["defn", helper, [], test.code, "&unit"])]);
    operations.push(["edit", "schema", `${namespace}/${helper}`, "--input-format", "cirru", "--code",
      "quote $ :: 'Fn $ {} (:args $ []) (:return 'Unit)"]);
    calls.push([`${namespace}/${helper}`]);
  });
  // Styles are a JS-host API; keep these render assertions outside native tests.
  const options = (values = {}) => ["respo-ui.schema/SkeletonOptions",
    ...["label", "kind", "width", "height", "class-name", "style"].flatMap((field) => [
      `:${field}`, field in values ? ["Option", ":some", values[field]] : ["Option", ":none"],
    ])];
  const render = (value) => ["respo.render.html/make-string", ["comp-skeleton", value]];
  const browser = "respo-ui.comp/replay-js-skeleton";
  const scenarios = [
    ["let", [["html", render(["Option", ":none"])]],
      ["assert", [".includes?", "html", "style-skeleton-text"], "|Missing options must use text skeleton"],
      ["assert", [".includes?", "html", '|aria-hidden="true"'], "|Unlabeled skeleton must be decorative"]],
    ["let", [["html", render(["Option", ":some", options()])]],
      ["assert", [".includes?", "html", "style-skeleton-text"], "|Missing kind must use text skeleton"],
      ["assert", [".includes?", "html", '|aria-hidden="true"'], "|Missing label must remain decorative"]],
    ["let", [["html", render(["Option", ":some", options({
      label: "|Loading 中文", kind: ":circle", width: "|20px", height: "|20px", "class-name": "|custom-skeleton",
      style: ["{}", [":width", "|48px"], [":color", "|red"]],
    })])]],
      ["assert", [".includes?", "html", "style-skeleton-circle"], "|Explicit circle kind must be preserved"],
      ["assert", [".includes?", "html", "|custom-skeleton"], "|Custom class must be preserved"],
      ["assert", [".includes?", "html", '|role="status"'], "|Labeled skeleton must expose status"],
      ["assert", [".includes?", "html", '|aria-label="Loading 中文"'], "|Label must be preserved"],
      ["assert", [".includes?", "html", "|width:48px"], "|Explicit style overrides dimensions"],
      ["assert", [".includes?", "html", "|height:20px"], "|Other dimensions must remain"],
      ["assert", [".includes?", "html", "|color:red"], "|Other style properties must remain"]],
  ];
  operations.push(["edit", "def", browser, "--input-format", "json-ast", "--code",
    JSON.stringify(["defn", "replay-js-skeleton", [], ...scenarios, "&unit"])]);
  operations.push(["edit", "schema", browser, "--input-format", "cirru", "--code",
    "quote $ :: 'Fn $ {} (:args $ []) (:return 'Unit)"]);
  calls.push([browser]);
  // Exercise every real showcase route, not only isolated component examples.
  const pages = "respo-ui.comp.container/replay-js-pages";
  const routes = ["index", "layouts", "widgets", "fonts", "components", "utils"];
  const pageScenarios = routes.flatMap((route) => [["println", `|Showcase route: ${route}`], ["let", [["html", ["respo.render.html/make-string", ["comp-container",
    ["respo-ui.schema/Store", ":router", ["respo-router.parser/parse-address", `|/${route}.html`, "respo-ui.router/dict"], ":states", ["{}"]]]]]],
    ["assert", [".includes?", "html", "|Respo UI"], `|Showcase route ${route} must render`],
    ...(route === "components" ? ["Component examples", "Attributes DEMO", "Tabs demo"].map((text) =>
      ["assert", [".includes?", "html", `|${text}`], `|Missing component showcase section: ${text}`]) : []),
  ]]);
  operations.push(["edit", "def", pages, "--input-format", "json-ast", "--code",
    JSON.stringify(["defn", "replay-js-pages", [], ...pageScenarios, "&unit"])]);
  operations.push(["edit", "schema", pages, "--input-format", "cirru", "--code",
    "quote $ :: 'Fn $ {} (:args $ []) (:return 'Unit)"]);
  calls.push([pages]);
  const entry = "respo-ui.util/replay-all-attached";
  operations.push(["edit", "def", entry, "--input-format", "json-ast", "--code",
    JSON.stringify(["defn", "replay-all-attached", [], ...calls, "&unit"])]);
  operations.push(["edit", "schema", entry, "--input-format", "cirru", "--code",
    "quote $ :: 'Fn $ {} (:args $ []) (:return 'Unit)"]);
  operations.push(["config", "set", "init-fn", entry]);
  operations.push(["config", "set", "reload-fn", entry]);
  const code = JSON.stringify(operations);
  const preview = JSON.parse(run(snapshot, "edit", "transaction", "--code", code, "--dry-run", "--format", "json"));
  run(snapshot, "edit", "transaction", "--code", code, "--expect-revision", preview.original_revision, "--format", "json");
  const output = path.join(scratch, "js-out");
  run("--emit-path", output, snapshot, "js");
  const generated = await import(pathToFileURL(path.join(output, "respo-ui.util.mjs")).href);
  assert.equal(typeof generated.replay_all_attached, "function");
  generated.replay_all_attached();
  console.log(`Generated JS replay passed: ${listed.selected}/${listed.selected} attached ASTs, ${scenarios.length} skeleton scenarios and ${routes.length} showcase routes`);
} finally {
  assert.deepEqual(readFileSync(path.join(root, "calcit.cirru")), original, "Canonical Snapshot changed during replay");
  // This uniquely created child contains only this run's copied Snapshot and output.
  rmSync(scratch, { recursive: true, force: true });
}
