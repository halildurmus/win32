# Win32 API Generation

The traditional (C-style) APIs exposed by this library are generated from
metadata. Windows has structured metadata for APIs, which is loaded from
package:winmd. The JSON files in this folder describe which items we're
generating, and supplements this metadata with documentation. The generate
package consumes this metadata and transforms it into Dart files.

## JSON Format

The format for the JSON file (`win32_functions.json`) is as follows:

```jsonc
{
    // API name (the generic name that will be presented in Dart code).
    "DeleteFile": {
        // The original name of the API, as presented in Windows docs.
        // Note that this should include a 'W' postfix if the declared function
        // has both Unicode and ANSI variants. See:
        // https://learn.microsoft.com/windows/win32/intl/unicode-in-the-windows-api
        //
        // The version presented in the docs is inconsistent -- some docs
        // include it, others don't -- so pay attention here. If you get a
        // failure in lookupFunction when running tests, this is a common
        // source of error.
        "originalName": "DeleteFileW",

        // (Optional) Minimum version of Windows required to use this function.
        // If omitted, this function will be available to all supported OSes.
        "minimumWindowsVersion": "WIN10_RS3",
    },
    ...
}
```

## Win32 API Notes

This section documents specific characteristics of certain APIs that may not be
clear from the JSON file itself. It should be used to call out exceptions that
may not be intuitive.

### `TaskDialog*`

`TaskDialog` and `TaskDialogIndirect` is a special case since it requires
`comctl32.dll` v6. This is not available to `dart test` because of [Dart
issue #42598](https://github.com/dart-lang/sdk/issues/42598).

### `IsWow64Process2`

The Windows API documentation says `IsWow64Process2` is available in Windows
Server 2016 (i.e. RS2 / build 10586), and the header files mark it as available
on any Windows 10 version. But the API itself is not available on such early
versions. This is noted in a [blog post by Rudy
Huyn](https://www.rudyhuyn.com/blog/2017/12/13/how-to-detect-that-your-x86-application-runs-on-windows-on-arm/)
and through inspection on a physical Windows Server 2016 machine.
