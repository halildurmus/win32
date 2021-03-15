# Contributing to Win32

Contributions are very much appreciated. With thousands of Win32 APIs, there's a
lot of ground to cover :)

Don't hesitate to ask questions -- I'm just honored that you're thinking of
contributing!

Some tips:

## Classic Win32 APIs

- When wrapping a Win32 API, use the Unicode ('W') wide variants of these APIs,
  rather than the ANSI ('A') variants. For example:
  [CredWriteW](https://docs.microsoft.com/en-us/windows/win32/api/wincred/nf-wincred-credwritew),
  rather than
  [CredWriteA](https://docs.microsoft.com/en-us/windows/win32/api/wincred/nf-wincred-credwritea).

- To create a new API, *don't* edit the main library files themselves; these get
  overwritten. Instead, edit `tool\manual_gen\win32api.json` and run
  `tool\generate.cmd` to update the library files. This might seem a pain, but
  it gives protection against any changes to dart:ffi, since the typedef syntax
  can be easily recreated as necessary.

- Structs belong in `structs.dart` and constants belong in `constants.dart`.

- There are plenty of good existing patterns to build off in these locations;
  try to mirror an existing function if you can for consistency!

- Ideally pull requests for new API submissions include a sample (`example\`
  directory) and some tests (`tests\` directory).

## COM APIs

- Grab the `.h` file for the interface from the Windows SDK, and annotate it
  accordingly with its vtable starting index based off the interface it inherits
  from. For example, `IModalWindow.h` inherits from `IUnknown`, which has a
  vtable from 0..2. It therefore has the following annotation:

```c
// vtable_start 3
```

- For interfaces that can be instantiated, add a separate annotation with its
  class name and CLSID. For example, `FileOpenDialog` is created by annotating
  `IFileOpenDialog` with the following:

```c
// class FileOpenDialog DC1C5A9C-E88A-4dde-A5A1-60F82A20AEF7
```

Now run `generate.cmd` from the `tools\` directory, which should create the
relevant class in the `\lib\src\generated` directory.

- You may need to add additional types to `tools\generate\types.dart` to help
  the tool understand how to convert them to their Dart equivalent
  representation.

## Windows Runtime APIs

- This is a work in progress. For synchronous APIs, a similar approach can be
  taken to the COM APIs, but using IDL instead of header files.

- Asynchronous APIs (the majority) are not yet supported. I'm currently
  investigating interrogating the metadata APIs directly, rather than manually
  parsing the IDL files, to generate Windows Runtime mappings.
