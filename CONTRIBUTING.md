Contributions to this project that improve the fidelity of the object model as
retrieved from metadata are warmly received. For pull requests, please include
tests that show the proposed change is working as expected.

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

That is, `winmd` would be considered feature-complete if a developer could build
a Dart equivalent of
[ilspy](https://github.com/icsharpcode/ILSpy) or
[ildasm](https://docs.microsoft.com/dotnet/framework/tools/ildasm-exe-il-disassembler)
with it.

## Generating a Dart Projection with `winmd`

A separate package, [win32](https://pub.dev/packages/win32), provides a Dart
projection of the Win32 APIs using the `winmd` package. Specifically, the
[win32gen](https://github.com/dart-windows/win32/tree/main/tool/win32gen)
package is responsible for handling the transformation from the generated object
model to a Dart projection by reading Windows metadata and generating
corresponding Dart classes and types.

Similarly, the packages in the
[dartwinrt](https://github.com/dart-windows/dartwinrt) repository provide a Dart
projection of the Windows Runtime (WinRT) APIs using the `winmd` package.
Specifically, the
[winrtgen](https://github.com/dart-windows/dartwinrt/tree/main/packages/winrtgen)
package is responsible for handling the transformation from the generated object
model to a Dart projection by reading Windows metadata and generating
corresponding Dart classes and types.

As a general principle, if there is missing data in `winmd` that prevents
`win32gen` or `winrtgen` from being able to build a projection, such issues
should be addressed through a pull request to the `winmd` repository.
Conversely, if the data is present in `winmd` but is not in the required format
needed to build a projection, such issues should be resolved with a pull request
to the [win32](https://github.com/dart-windows/win32) or
[dartwinrt](https://github.com/dart-windows/dartwinrt) repositories.
