# Agent notes

This is a Respo UI module. Keep project-specific notes short; use the current Calcit and installed Respo documentation for language and API details.

Before editing:

```bash
calcit docs agents --full
calcit docs read upgrade --full
calcit libs readme respo.calcit --file docs/Respo-Agent.md --full
```

The canonical source snapshot is `calcit.cirru`; do not use or add `compact.cirru`. Modify snapshots with `calcit edit` / `calcit tree`, then run `calcit calcit.cirru edit format`.

Validation:

```bash
caps --ci
calcit calcit.cirru edit format
git diff --exit-code -- calcit.cirru
calcit calcit.cirru --check-only
calcit calcit.cirru js
yarn install --immutable
```

Use `calcit`, not the retired `cr` command. Query detailed syntax or migration guidance with `calcit docs read` instead of maintaining a copied manual here.

