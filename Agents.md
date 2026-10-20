# Agent notes

Respo UI is a Calcit module of typed Respo components (`respo-ui.comp`), their
option structs (`respo-ui.schema`), and static CSS classes (`respo-ui.css`). The
showcase site lives in `respo-ui.comp.*-page`, `respo-ui.comp.components`, and
`respo-ui.comp.home`.

Before editing, read the current language and Respo guidance instead of relying
on memory:

```bash
calcit docs agents --full
calcit docs read upgrade --full
calcit docs remote-libs readme respo.calcit --file docs/Respo-Agent.md --full
```

## Editing the snapshot

- `calcit.cirru` is the only source; do not use or add `compact.cirru`.
- Change definitions with `calcit edit def|schema|doc|examples|add-test`, then
  run `calcit calcit.cirru edit format`. Put multi-line input in
  `.calcit/snippets/` or pipe it through stdin.
- Inspect with `calcit query defs <ns>` and `calcit query def <ns>/<name>`.
- Use `calcit`, not the retired `cr` command.

## Component conventions

- Signature: positional data first, an `Option` of a named options struct last,
  for example `comp-badge (content options)`. Return `respo.schema/Component`.
- Options are `defstruct XOptions` in `respo-ui.schema` with every field an
  `Option`. Callers write only the fields they use; the constructor fills the
  rest with `Option :none`:
  `ButtonOptions :kind (Option :some :primary)`.
- Read a field with `respo-ui.schema/read-field options :field`, which returns
  the value or `nil`. When the value feeds arithmetic or a typed call, `match`
  on `options` and use `option:unwrap-or` instead, because `either` on a
  `read-field` result stays an Option to the checker.
- Callbacks that dispatch take the value and `d!`, and the struct carries an
  `Op` generic: `:on-change (Fn (String, Fn (Op) -> Unit) -> Unit)`. Inside
  the DOM handler, give the `fn (e d!)` a `hint-fn` with
  `(:: 'Map 'Tag 'Dynamic)` and `(:: 'Fn {:args ['Op]})`, decode the event field
  with `match (get e :value) ...`, and pass `d!` straight to the callback.
- Callers' inline callbacks also need a `hint-fn`; the strict workflow rejects
  an unannotated `fn` in a typed options field. When constructor pairs continue
  on the next line, start that line with `,` (`, :on-change $ Option :some ...`);
  a plain `:on-change $ ...` child line becomes a field access instead of a pair.
- Prefer native elements for behaviour: `<details>` for disclosure, radio inputs
  sharing `:name`, `role`/`aria-*` attributes for state.
- Reuse existing item structs (`SelectOption` serves both select and radio
  group) before adding new ones.
- New components get a `demo-block` in the matching category of the components
  page (`comp-demo-form-controls`, `comp-demo-navigation`, and so on), a chip in
  `comp-component-index`, and a name in that namespace's `respo-ui.comp :refer`
  list. `demo-block id title options-struct description & exprs` renders the
  expressions live and shows the same expressions as Cirru code, generated when
  the macro expands, so write short struct names (`ButtonOptions`, referred from
  `respo-ui.schema`) and wrap siblings in one `div` only when the layout needs it.
  Also add the component id to `componentIds` in `scripts/test-ui-js.mjs`, which
  is hand-written; the replay test then checks that the new block renders.

## Styles

- `defstyle` generates class names such as `style-badge__respo-ui_comp`, so
  never write another style's class name into a selector. Apply the class
  directly, or target children by attribute (`"|&:hover > [role=tooltip]"`).
- Use `|&&` to raise specificity when a modifier class must beat the base
  class's `:hover` rule.
- CSS values with spaces need a quoted string: `(:gap "|8px 16px")`.
- Numbers become pixels, so unitless values must be strings:
  `(:line-height |1.6)`, not `(:line-height 1.6)`.
- `max` and `min` take a list; use `&max` and `&min` for two numbers.

## Tests and examples

- Give every public component a `:doc` and one example. `docs/components.md`
  is generated from them by `node scripts/gen-components-doc.mjs`, and CI fails
  when the file is out of date. A new component also needs a section entry in
  that script.
- HTML rendering (`respo.render.html/make-string`) depends on the JS host:
  tag those tests `js-only`; `yarn test:js` replays them in generated JS.
  Pure helpers such as `pagination-pages` get untagged native tests.
- Strings containing `"` or spaces are written as `"|aria-label=\"Pick one\""`.
- SSR currently writes boolean props as `disabled="true"` / `disabled="false"`;
  assert on the exact text rather than on the attribute name.
- `scripts/test-ui-js.mjs` also calls real DOM event handlers in generated JS.
  When a component dispatches from a DOM event, add it to the event table there.

## Validation

Run the same steps as `.github/workflows/upload.yaml` before pushing:

```bash
caps --ci
yarn install --immutable
calcit calcit.cirru edit format
git diff --exit-code -- calcit.cirru
node scripts/gen-components-doc.mjs
git diff --exit-code -- docs/components.md
calcit calcit.cirru --check-only
calcit fix --workflow strict --verify --format json | jq -e '.data.workflow.status == "passed" and .diagnostics == []'
calcit calcit.cirru test --exclude-tag js-only --require-match --summary-only
yarn test:js
calcit calcit.cirru analyze check-examples --ns respo-ui.schema
calcit calcit.cirru analyze check-examples --ns respo-ui.comp --js
calcit calcit.cirru analyze weak-types --only dynamic-method --format json | jq -e '.data.summary.findings == 0'
calcit docs check-md README.md --dep ./ --failures-only
calcit calcit.cirru js
```

`--check-only` alone misses type errors that the strict workflow reports, so
always run the strict step. For a visual check, `yarn vite build` and serve
`dist/` statically; the dev server can loop on symlinked `.calcit/modules`.
