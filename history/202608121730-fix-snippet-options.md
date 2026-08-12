## Fix optional options in comp-cirru-snippet

- Replace legacy `get` calls with `respo-ui.schema/read-field` and normalize omitted options to an empty map so the current Calcit runtime never reads fields from nil.
- Add an example that calls `comp-cirru-snippet` without an options map.
- JavaScript example execution is currently blocked in this detached module checkout because Node cannot resolve the workspace `@calcit/procs` package; Calcit code generation itself completes.
