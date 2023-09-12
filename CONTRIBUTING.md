Contributions to this project that improve the fidelity of the object model as
retrieved from metadata are warmly received. For pull requests, please include
tests that show the proposed change is working as expected.

## What belongs in the `winmd` package?

This package aims to provide a Dart API to Windows metadata, backed by the
underlying [IMetaDataImport2][imetadataimport2_link] COM interface provided in
`rometadata.dll`.

It goes beyond a simple projection of the underlying COM API in a number of
areas, such as:

- Caching retrieved data for performance and processing;
- Navigating through `TypeRef`s to the true `TypeDef`, even if in a different
  scope, where possible;
- Replacing references to the .NET type system (e.g. `System.Guid`) with
  type-agnostic replacements.

`winmd` does _not_ attempt to provide a Dart mapping. It is intended to focus
exclusively on interrogating a metadata file and transforming it into a
high-fidelity object model. It should be essentially agnostic to the underlying
types and should not assume that a Dart type system is the target.

In other words, `winmd` would be considered feature-complete if developers could
use it to build a Dart equivalent of [ILSpy][ilspy_link] or
[ildasm][ildasm_link].

## Generating a Dart Projection with `winmd`

- The [win32][win32_package_link] package provides a Dart projection of the
  Win32 APIs using the `winmd` package.

  In particular, the [win32gen][win32gen_link] package excels at streamlining
  the process of converting the generated object model into a Dart projection.
  This transformation is achieved by meticulously parsing Windows metadata and
  subsequently crafting Dart classes and types that mirror the original APIs.

- The [windows_*][windows_packages_link] packages provide a Dart projection of
  the Windows Runtime (WinRT) APIs using the `winmd` package.

  Similarly, the [winrtgen][winrtgen_link] package plays a pivotal role in
  converting the Windows Runtime (WinRT) APIs into a corresponding Dart
  projection. Like its counterpart, it accomplishes this feat by meticulously
  analyzing Windows metadata and generating Dart classes and types that
  accurately replicate the WinRT APIs.

As a general principle, if there is missing data within the `winmd` that
prevents `win32gen` or `winrtgen` from creating projections, such issues should
be resolved through a pull request to the `winmd` repository.

Conversely, if the data is available in `winmd` but not in the required format
needed to create a projection, such issues should be resolved through a pull
request to the [win32][win32_repo_link] or [dartwinrt][dartwinrt_repo_link]
repositories.

[dartwinrt_repo_link]: https://github.com/dart-windows/dartwinrt
[ildasm_link]: https://learn.microsoft.com/dotnet/framework/tools/ildasm-exe-il-disassembler
[ilspy_link]: https://github.com/icsharpcode/ILSpy
[imetadataimport2_link]: https://learn.microsoft.com/windows/win32/api/rometadataapi/nn-rometadataapi-imetadataimport2
[win32_repo_link]: https://github.com/dart-windows/win32
[win32_package_link]: https://pub.dev/packages/win32
[win32gen_link]: https://github.com/dart-windows/win32/tree/main/tool/win32gen
[windows_packages_link]: https://pub.dev/packages?q=publisher%3Awin32.pub+topic%3Awinrt
[winrtgen_link]: https://github.com/dart-windows/dartwinrt/tree/main/packages/winrtgen
