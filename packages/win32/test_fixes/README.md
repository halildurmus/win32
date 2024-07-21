## What's here?

For information about the files in this directory, see
https://github.com/flutter/flutter/wiki/Data-driven-Fixes#testing.

## Organization

The contents of this directory are used to test the `dart fix` refactorings
offered by this package. See `lib/fix_data` directory for the fix definitions.

Note that files in this directory are excluded from analysis.

## Running the dart fix tests

In order to test the fixes manually:

```cmd
> cd test_fixes
> dart fix --compare-to-golden
```
