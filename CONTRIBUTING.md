Contributions to this project that improve the fidelity of the object model as
retrieved from metadata are warmly received. For pull requests, please include
tests that demonstrate that the proposed change works as expected on either the
integrated Win32 metadata or the OS-provided WinRT metadata.

## What belongs in the `winmd` package?

This package aims to provide a Dart API to Windows metadata, backed by the
underlying `IMetaDataImport2` COM interface provided in `rometadata.dll`. It
goes beyond a simple projection of the underlying COM API in a number of areas,
such as:

- Caching retrieved data for performance and processing;
- Navigating through `TypeRef`s to the true `TypeDef`, even if in a different
  scope, where possible;
- Replacing references to the .NET type system (e.g. `System.Guid`) with
  type-agnostic replacements.

`winmd` does _not_ attempt to provide a Dart mapping. It is intended to focus
exclusively on interrogating a metadata file and transforming it into a
high-fidelity object model. It should be essentially agnostic to the underlying
types, e.g. it should not assume a Dart type system is the target.

That is, winmd would be considered feature-complete if a developer could build
a Dart equivalent of
[ilspy](https://github.com/icsharpcode/ILSpy) or
[ildasm](https://docs.microsoft.com/dotnet/framework/tools/ildasm-exe-il-disassembler)
with it.

A minor exception is that for packaging reasons, we bundle the Win32 .winmd file
with it and include a method for loading it. Unlike WinRT metadata which ships
as part of the OS, the Win32 metadata is shipped out of band and so it's
convenient to bundle it here.

## Generating a Dart projection with `winmd`

A separate package, [`win32`](https://pub.dev/packages/win32), provides a Dart
projection of the Windows API using the `winmd` package. It is this package that
handles the transformation from the generated object model to a Dart projection,
specifically the `win32/generator` subproject which reads in Windows metadata
and creates corresponding Dart classes and types.

As a general principle, therefore, if data is missing in `winmd` that prevents
`win32/generator` from being able to build a projection, that should be fixed
through a pull request to `winmd`. Conversely, if the data is in winmd but not
in the right format needed to build a projection, that should be fixed with a
pull request to `win32/generator`.
