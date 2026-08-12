# 修复 read-field 回归测试断言

- 修正 `respo-ui.schema/read-field` 新增回归测试中 `assert=` 的错误参数形式。
- 覆盖 `nil` 与空 Map 缺失字段两种输入，确保测试与实际断言签名一致。
- 通过 `cr test respo-ui.schema/read-field --require-match --format json` 验证。
