/// Dart language support for working with Windows Metadata.
///
/// This library may be used to interrogate the Windows developer API, whether
/// unmanaged APIs like Win32 or COM, or APIs like Windows Runtime that include
/// their own metadata.
///
/// The library consumes metadata in the
/// [ECMA-335](https://www.ecma-international.org/publications/files/ECMA-ST/ECMA-335.pdf)
/// format, which originated as part of the Common Language Infrastructure
/// (CLI), part of the standardized interface offered by .NET libraries. Since
/// its creation, Windows Metadata has been used to provide a [language-neutral
/// specification of the Windows Runtime
/// APIs](https://docs.microsoft.com/en-us/uwp/winrt-cref/winmd-files). More
/// recently still, the same format has been used to provide machine-readable
/// metadata for the [traditional Win32 and COM
/// APIs](https://github.com/microsoft/win32metadata) that have been available
/// in Windows for many years.
///
/// Being able to interpret this format from Dart is useful for a variety of
/// reasons; however, the original reason for this package's creation was to
/// support a [Dart language projection of the Win32
/// API](https://pub.dev/packages/win32). Using Windows Metadata allows for a
/// projection of the Win32 API to be generated programmatically, and provides
/// resilience against errors or changes over time.
///
/// In addition to the package above and more specialized alternatives, other
/// tooling may also find this package useful for creating Windows utilities
/// with Dart or Flutter.
///
/// To start using this library, it's necessary to obtain a [Scope], which
/// contains a named set of metadata. For most scenarios, you should retrieve a
/// scope through one of the static methods of the [MetadataStore] class, which
/// caches retrieved scopes. The `winmd` package embeds the Win32 API metadata
/// for ease of distribution. so the following can be used to get to the Win32
/// scope:
///
/// ```dart
///   final scope = MetadataStore.getWin32Scope();
/// ```
///
/// From here, you can interrogate the `scope` object for its children; in
/// particular, the collection of [TypeDef] objects that in turn contain
/// [Method], [Field], [Event] and [Property] members.
///
/// In general, the model presented by this package is consistent with the APIs
/// exposed by the
/// [IMetaDataImport](https://docs.microsoft.com/en-us/windows/win32/api/rometadataapi/nn-rometadataapi-imetadataimport)
/// COM interface exposed by `rometadata.dll`.

library winmd;

export 'src/classlayout.dart';
export 'src/customattribute.dart';
export 'src/enums.dart';
export 'src/event.dart';
export 'src/field.dart';
export 'src/genericparam.dart';
export 'src/genericparamconstraint.dart';
export 'src/memberref.dart';
export 'src/metadatastore.dart';
export 'src/method.dart';
export 'src/methodimpls.dart';
export 'src/mixins/customattributes_mixin.dart';
export 'src/mixins/genericparams_mixin.dart';
export 'src/mixins/supportedarchitectures_mixin.dart';
export 'src/moduleref.dart';
export 'src/parameter.dart';
export 'src/pekind.dart';
export 'src/pinvokemap.dart';
export 'src/property.dart';
export 'src/scope.dart';
export 'src/tokenObject.dart';
export 'src/type_aliases.dart';
export 'src/typedef.dart';
export 'src/typeidentifier.dart';
export 'src/utils/blob.dart';
export 'src/utils/exception.dart';
export 'src/utils/typetuple.dart';
