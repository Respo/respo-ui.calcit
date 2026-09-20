# Migrate to js-ffi host adapters (Calcit 0.17.1, js-ffi 0.1.32)

- Upgrade Calcit / `@calcit/procs` to 0.17.1, Respo to 0.16.109, respo-router to 0.8.23 and
  js-ffi to 0.1.32.
- Remove the local host traits `UiDataset`, `UiStyle`, `UiDomElement`, `BrowserDate`,
  `BrowserLocation` and `EchoWindowHost`; use the shared `js-ffi.browser` / `js-ffi.shared`
  traits and adapters instead.
- Replace raw host access:
  - dataset write -> `js-ffi.browser/element-data-set!`.
  - element query/style reads and writes -> `js-ffi.browser/element-query-selector` /
    `element-set-style!` with `DomElementHost` offset/client-size fields.
  - `new js/Date` -> `js-ffi.shared/date-now-snapshot`.
  - `js/location` -> `js-ffi.browser/location-snapshot`.
  - `js/window.open` / `window.postMessage` -> `js-ffi.browser/window-open` and
    `WindowHost.post-message!`; `js/setTimeout` -> `js-ffi.browser/set-timeout!`.
  - `js/console.log` -> `js-ffi.shared/console-log!`.
- `js-ffi.browser/DomElementHost` gained `offsetLeft`/`offsetTop`/`clientWidth`/`clientHeight`,
  and `WindowHost` gained `document`/`postMessage`.
- Verified with `caps --strict --ci`, `--check-only`, attached tests, `check-public`,
  `check-examples`, check-types/weak-types/deprecated, the upgrade baseline, the quality
  baseline, `calcit calcit.cirru js` and `vite build`.
