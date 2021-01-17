# Win32 API Parser

This utility loads a JSON file containing API metadata and generates a series of
files representing FFI mappings and tests.

The format for the JSON file is as follows:

```json
{
    // API name as exported by the DLL (includes 'W' if API is Unicode)
    "DeleteFileW": {
        // The API name as it appears in Dart (no 'W' postfix)
        "neutralApiName": "DeleteFile",

        // The API prototype, as presented in Windows docs
        "prototype": "BOOL DeleteFileW(\n  LPCWSTR lpFileName\n);",

        // The DLL that exports the API
        "dllLibrary": "kernel32",

        // The doc comment for the API (typically, first sentence of the docs)
        "comment": "Deletes an existing file."
    },
    ...
}
```