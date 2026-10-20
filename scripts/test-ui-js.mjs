import assert from "node:assert/strict";
import { execFileSync } from "node:child_process";
import { copyFileSync, mkdirSync, mkdtempSync, readdirSync, readFileSync, rmSync, symlinkSync } from "node:fs";
import path from "node:path";
import { fileURLToPath, pathToFileURL } from "node:url";
import * as c from "@calcit/procs";

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
  const routes = ["index", "design", "layouts", "widgets", "fonts", "components", "utils"];
  // Every exported component needs a demo block on the components page.
  const categoryTitles = ["Form controls", "Navigation", "Disclosure and hints", "Feedback", "Data display", "Code and utilities"];
  const componentIds = ["button", "input", "textarea", "select", "checkbox", "switch", "radio-group", "field", "tabs", "breadcrumb",
    "pagination", "steps", "collapse", "tooltip", "kbd", "alert", "progress", "spinner", "skeleton", "empty", "badge", "card", "avatar",
    "tag", "attributes", "divider", "time", "cirru-snippet", "snippet", "copy", "close", "placeholder", "catoptric-text"];
  const designSections = ["color", "typography", "spacing", "shape", "sizing", "elevation", "motion", "conventions", "usage"];
  const pageScenarios = routes.flatMap((route) => [["println", `|Showcase route: ${route}`], ["let", [["html", ["respo.render.html/make-string", ["comp-container",
    ["respo-ui.schema/Store", ":router", ["respo-router.parser/parse-address", `|/${route}.html`, "respo-ui.router/dict"], ":states", ["{}"]]]]]],
    ["assert", [".includes?", "html", "|Respo UI"], `|Showcase route ${route} must render`],
    ...(route === "components" ? [...categoryTitles, ...componentIds.map((id) => `id="demo-${id}"`)].map((text) =>
      ["assert", [".includes?", "html", `|${text}`], `|Missing component showcase section: ${text}`]) : []),
    ...(route === "design" ? designSections.map((id) => `id="design-${id}"`).map((text) =>
      ["assert", [".includes?", "html", `|${text}`], `|Missing design system section: ${text}`]) : []),
  ]]);
  operations.push(["edit", "def", pages, "--input-format", "json-ast", "--code",
    JSON.stringify(["defn", "replay-js-pages", [], ...pageScenarios, "&unit"])]);
  operations.push(["edit", "schema", pages, "--input-format", "cirru", "--code",
    "quote $ :: 'Fn $ {} (:args $ []) (:return 'Unit)"]);
  calls.push([pages]);
  // Build typed callbacks in Calcit, then invoke the actual DOM-host handlers.
  // The event table intentionally exposes opaque host-callable functions.
  for (const [name, type] of [["checkbox", "Bool"], ["switch", "Bool"], ["select", "String"], ["radio-group", "String"], ["input", "String"], ["textarea", "String"], ["pagination", "Number"]]) {
    const helper = `replay-${name}-event`;
    const items = "([] (respo-ui.schema/SelectOption :value |a :label |A) (respo-ui.schema/SelectOption :value |b :label |B))";
    const component = { select: `comp-select |a ${items}`, "radio-group": `comp-radio-group |a ${items}`,
      input: "comp-input |a", textarea: "comp-textarea |a", pagination: "comp-pagination 2 3" }[name] ?? `comp-${name} false`;
    const options = { select: "respo-ui.schema/SelectOptions", "radio-group": "respo-ui.schema/RadioGroupOptions",
      input: "respo-ui.schema/InputOptions", textarea: "respo-ui.schema/InputOptions",
      pagination: "respo-ui.schema/PaginationOptions" }[name]
      ?? "respo-ui.schema/SwitchOptions";
    operations.push(["edit", "def", `respo-ui.comp/${helper}`, "--input-format", "cirru", "--code", `quote $ defn ${helper} ()
  ${component} $ Option :some $ ${options} :on-change
    Option :some $ fn (value d!)
      hint-fn $ {} (:return 'Unit)
        :args $ [] '${type}
          :: 'Fn $ {} (:args $ [] '${type}) (:return 'Unit)
      d! value`]);
    operations.push(["edit", "schema", `respo-ui.comp/${helper}`, "--input-format", "cirru", "--code",
      "quote $ :: 'Fn $ {} (:args $ []) (:return 'respo.schema/Component)"]);
    calls.push([`respo-ui.comp/${helper}`]);
  }
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
  // Every var(--rui-*) in the generated code must name a declared design token.
  const declared = new Set([...original.toString().matchAll(/DesignToken :group \S+ :name \|([\w-]+)/g)].map((m) => m[1]));
  assert.ok(declared.size > 100, "design tokens must be declared in respo-ui.tokens/design-tokens");
  for (const file of readdirSync(output).filter((name) => name.startsWith("respo-ui.") && name.endsWith(".mjs"))) {
    for (const [, name] of readFileSync(path.join(output, file), "utf8").matchAll(/var\(--rui-([\w-]+)\)/g)) {
      assert.ok(declared.has(name), `${file} reads undeclared token --rui-${name}`);
    }
  }
  const components = await import(pathToFileURL(path.join(output, "respo-ui.comp.mjs")).href);
  const field = (value, name) => value.get(c.newTag(name));
  const elements = (option) => {
    if (option.tag.value === "none") return [];
    assert.equal(option.tag.value, "some");
    const node = option.get(1);
    if (node.tag.value === "component") return elements(field(node.get(1), "tree"));
    assert.equal(node.tag.value, "element");
    const element = node.get(1);
    const children = field(element, "children");
    return [element, ...Array.from({ length: children.len() }, (_, i) =>
      elements(field(children.get(i), "node"))).flat()];
  };
  const eventHandler = (name, elementName, eventName) => {
    const component = components[`replay_${name}_event`]();
    const element = elements(field(component, "tree")).find(element => field(element, "name").value === elementName);
    assert.ok(element, `${name} must render its native ${elementName}`);
    const handler = field(element, "event").get(c.newTag(eventName));
    assert.equal(typeof handler, "function", `${name} must expose its DOM event handler`);
    return handler;
  };
  for (const name of ["checkbox", "switch"]) {
    const handler = eventHandler(name, "input", "input");
    for (const [input, expected] of [["{}", false], ["{} (:checked nil)", false],
      ["{} (:checked false)", false], ["{} (:checked true)", true]]) {
      const dispatched = [];
      assert.equal(handler(c.parse_cirru_edn(input), value => { dispatched.push(value); }), undefined);
      assert.deepEqual(dispatched, [expected], `${name}: ${input}`);
    }
    for (const input of ["{} (:checked |wrong)", "{} (:checked 0)", "{} (:checked |)"]) {
      const dispatched = [];
      assert.throws(() => handler(c.parse_cirru_edn(input), value => { dispatched.push(value); }), /Bool|bool/);
      assert.deepEqual(dispatched, [], "rejected checked payload must not dispatch");
    }
    const failure = new Error(`${name} dispatch failure`);
    assert.throws(() => handler(c.parse_cirru_edn("{} (:checked true)"), () => { throw failure; }), error => error === failure);
  }
  const select = eventHandler("select", "select", "change");
  for (const [input, expected] of [["{}", ""], ["{} (:value nil)", ""], ["{} (:value false)", "false"],
    ["{} (:value 0)", "0"], ["{} (:value |)", ""], ["{} (:value |中文😀)", "中文😀"]]) {
    const dispatched = [];
    assert.equal(select(c.parse_cirru_edn(input), value => { dispatched.push(value); }), undefined);
    assert.deepEqual(dispatched, [expected], `select: ${input}`);
  }
  for (const name of ["input", "textarea"]) {
    const handler = eventHandler(name, name, "input");
    for (const [input, expected] of [["{}", ""], ["{} (:value |)", ""], ["{} (:value |中文😀)", "中文😀"], ["{} (:value 0)", "0"]]) {
      const dispatched = [];
      assert.equal(handler(c.parse_cirru_edn(input), value => { dispatched.push(value); }), undefined);
      assert.deepEqual(dispatched, [expected], `${name}: ${input}`);
    }
  }
  const failure = new Error("select dispatch failure");
  assert.throws(() => select(c.parse_cirru_edn("{} (:value |a)"), () => { throw failure; }), error => error === failure);
  // Radio inputs dispatch their own item value, whatever the host event carries.
  const radios = elements(field(components.replay_radio_group_event(), "tree"))
    .filter(element => field(element, "name").value === "input");
  assert.equal(radios.length, 2, "radio group must render one input per item");
  for (const [index, expected] of [[0, "a"], [1, "b"]]) {
    const dispatched = [];
    const handler = field(radios[index], "event").get(c.newTag("change"));
    assert.equal(handler(c.parse_cirru_edn("{}"), value => { dispatched.push(value); }), undefined);
    assert.deepEqual(dispatched, [expected], `radio-group: item ${index}`);
  }
  // Page buttons dispatch their target page; the current page does not dispatch.
  const pageButtons = elements(field(components.replay_pagination_event(), "tree"))
    .filter(element => field(element, "name").value === "button");
  assert.equal(pageButtons.length, 5, "pagination 2 of 3 renders prev, three pages and next");
  for (const [index, expected] of [[0, [1]], [1, [1]], [2, []], [3, [3]], [4, [3]]]) {
    const dispatched = [];
    const handler = field(pageButtons[index], "event").get(c.newTag("click"));
    assert.equal(handler(c.parse_cirru_edn("{}"), value => { dispatched.push(value); }), undefined);
    assert.deepEqual(dispatched, expected, `pagination: button ${index}`);
  }
  console.log(`Generated JS replay passed: ${listed.selected}/${listed.selected} attached ASTs, ${scenarios.length} skeleton scenarios, ${routes.length} showcase routes and checked/value host-event boundaries`);
} finally {
  assert.deepEqual(readFileSync(path.join(root, "calcit.cirru")), original, "Canonical Snapshot changed during replay");
  // This uniquely created child contains only this run's copied Snapshot and output.
  rmSync(scratch, { recursive: true, force: true });
}
