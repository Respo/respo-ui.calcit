# Strict browser utility boundaries

- Give `santinize-html-text` a concrete String-to-String contract so its replace chain specializes statically, and escape ampersands before angle brackets so numeric/named entities cannot reintroduce markup.
- Model the popup returned by `window.open` as an external-object trait with typed document and `postMessage` members.
- Route popup body HTML writes through Respo's exported `respo.dom/set-inner-html!` host helper so generated JavaScript uses the browser `innerHTML` field across the module boundary.
- Pin the verified Respo 0.16.94 and respo-router 0.8.12 releases so strict dependency resolution uses one consistent DOM boundary implementation.
- The exact gen-code strict consumer no longer reports any respo-ui-owned preprocessing warning.
- Tracks `Respo/respo-ui.calcit#63` and `calcit-lang/calcit#872`.
