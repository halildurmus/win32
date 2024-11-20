## Directory contents

The `.yaml` files in these directories are used to define the
[`dart fix` framework](https://dart.dev/tools/dart-fix) refactorings.

When adding a new `.yaml` file, make a copy of `fix_template.yaml`. See the
`test_fixes` directory for the tests that validate these fix rules.

To run these tests locally, execute this command in the `test_fixes` directory.

```cmd
dart fix --compare-to-golden
```

For more documentation about Data Driven Fixes, see
<https://dart.dev/go/data-driven-fixes#test-folder>.
