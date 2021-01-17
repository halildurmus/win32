# Win32 API Parser

This utility loads a JSON file containing API metadata and generates a series of
files representing FFI mappings and tests.

The format for the JSON file is as follows:

```json
{
    // API name (the generic name that will be presented in Dart code)
    "DeleteFile": {
        // The API prototype, as presented in Windows docs
        // Note that this should include a 'W' postfix if the declared function
        // has both Unicode and ANSI variants. See:
        // https://docs.microsoft.com/en-us/windows/win32/intl/unicode-in-the-windows-api
        // 
        // The version presented in the docs is inconsistent -- some docs
        // include it, others don't -- so pay attention here. If you get a
        // failure in lookupFunction when running tests, this is a common
        // source of error.
        "prototype": "BOOL DeleteFileW(\n  LPCWSTR lpFileName\n);",

        // The DLL that exports the API
        "dllLibrary": "kernel32",

        // The doc comment for the API (typically, first sentence of the docs)
        "comment": "Deletes an existing file.",

        // (Optional) Minimum version of Windows required to use this function. 
        // If omitted, this function will be available to all supported OSes.
        "minimumWindowsVersion": "WIN10_RS3",

        // (Optional) Whether a test should be generated for this function. 
        // Unless there's a *really* good mitigation for this, this should be
        // true.
        "test": false
    },
    ...
}
```

## API Notes

1. `TaskDialog`
TaskDialog* is a special case since it requires `comctl32.dll` v6. This is
not available to `dart test` because of
https://github.com/dart-lang/sdk/issues/42598

2. `IsWow64Process2`
The documentation says `IsWow64Process2` is available in Windows Server 2016
(i.e. RS2 / build 10586), and the header files mark it as available on any
Windows 10 version, but this is not true, per:
https://www.rudyhuyn.com/blog/2017/12/13/how-to-detect-that-your-x86-application-runs-on-windows-on-arm/
and per inspection on a physical Windows Server 2016 machine.