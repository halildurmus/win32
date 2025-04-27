/// A Dart library for working with Windows Metadata (.winmd) files.
///
/// This library can be used to query Windows developer APIs, encompassing both
/// unmanaged APIs like Win32 or COM, as well as modern APIs like
/// Windows Runtime (WinRT) that include their own metadata.
///
/// The library consumes metadata in the
/// [ECMA-335](https://ecma-international.org/wp-content/uploads/ECMA-335_6th_edition_june_2012.pdf)
/// format, originally part of the Common Language Infrastructure (CLI) - a
/// standardized interface offered by .NET libraries. Since its creation,
/// Windows Metadata has served as a
/// [language-neutral specification of the Windows Runtime APIs](https://learn.microsoft.com/uwp/winrt-cref/winmd-files).
/// More recently, the same format has been utilized to provide machine-readable
/// metadata for the
/// [traditional Win32 and COM APIs](https://github.com/microsoft/win32metadata)
/// and [Win32 APIs in the Windows Driver Kit (WDK)](
/// https://github.com/microsoft/wdkmetadata) that have been available in
/// Windows for many years.
///
/// While the ability to interpret this format from Dart is valuable for various
/// reasons, the original motivation behind creating this package was to
/// facilitate a
/// [Dart language projection of the Win32 API](https://pub.dev/packages/win32).
/// Utilizing Windows Metadata allows the generation of a Win32 API projection
/// programmatically, offering resilience against errors or changes over time.
///
/// Beyond these specific use cases, this package can be valuable for creating
/// Windows utilities using Dart or Flutter.
///
/// To start using this library, obtaining a `Scope` is necessary. A `Scope`
/// contains a named set of metadata. For most scenarios, you should retrieve a
/// scope through one of the static methods of the `MetadataStore` class, which
/// caches retrieved scopes.
///
/// For example, to retrieve the latest Win32 metadata scope, you can use the
/// following code:
///
/// ```dart
/// final scope = await MetadataStore.loadWin32Scope();
/// ```
///
/// By default, the `loadWin32Scope` method downloads the latest version of
/// the NuGet package `Microsoft.Windows.SDK.Win32Metadata` and loads the
/// metadata from it. If you prefer a different version, you can specify the
/// `version` string as a parameter:
///
/// ```dart
/// final scope =
///   await MetadataStore.loadWin32Scope(version: '52.0.65-preview');
/// ```
///
/// Alternatively, a scope can be obtained directly from a
/// Windows Metadata (.winmd) file, as follows:
///
/// ```dart
/// final scope = MetadataStore.loadScopeFromFile(File('path/to/file.winmd'));
/// ```
///
/// **Note:** If the metadata you want to load has already been downloaded and
/// stored locally, `loadWdkScope`, `loadWin32Scope`, or `loadWinrtScope` will
/// load the metadata from the local storage instead of downloading it again.
///
/// You can get the list of all package directories stored locally as follows:
///
/// ```dart
/// for (final directory in LocalStorageManager.storedPackageDirectories) {
///   print(directory);
/// }
/// ```
///
/// From this point, the `scope` object can be interrogated for its children,
/// particularly the collection of `typeDef` objects, which in turn contain
/// `Method`, `Field`, `Event`, and `Property` members.
///
/// In general, the model presented by this package aligns with the APIs exposed
/// by the
/// [IMetaDataImport2](https://learn.microsoft.com/windows/win32/api/rometadataapi/nn-rometadataapi-imetadataimport2)
/// COM interface exposed by `rometadata.dll`.
library;

export 'src/attributes.dart';
export 'src/bindings.dart'
    show
        CorElementType,
        ELEMENT_TYPE_ARRAY,
        ELEMENT_TYPE_BOOLEAN,
        ELEMENT_TYPE_BYREF,
        ELEMENT_TYPE_CHAR,
        ELEMENT_TYPE_CLASS,
        ELEMENT_TYPE_CMOD_OPT,
        ELEMENT_TYPE_CMOD_REQD,
        ELEMENT_TYPE_ENUM,
        ELEMENT_TYPE_FIELD,
        ELEMENT_TYPE_FNPTR,
        ELEMENT_TYPE_GENERICINST,
        ELEMENT_TYPE_I,
        ELEMENT_TYPE_I1,
        ELEMENT_TYPE_I2,
        ELEMENT_TYPE_I4,
        ELEMENT_TYPE_I8,
        ELEMENT_TYPE_MAX,
        ELEMENT_TYPE_MVAR,
        ELEMENT_TYPE_OBJECT,
        ELEMENT_TYPE_PROPERTY,
        ELEMENT_TYPE_PTR,
        ELEMENT_TYPE_R4,
        ELEMENT_TYPE_R8,
        ELEMENT_TYPE_SENTINEL,
        ELEMENT_TYPE_STRING,
        ELEMENT_TYPE_SZARRAY,
        ELEMENT_TYPE_TYPEDBYREF,
        ELEMENT_TYPE_U,
        ELEMENT_TYPE_U1,
        ELEMENT_TYPE_U2,
        ELEMENT_TYPE_U4,
        ELEMENT_TYPE_U8,
        ELEMENT_TYPE_VALUETYPE,
        ELEMENT_TYPE_VAR,
        ELEMENT_TYPE_VOID;
export 'src/compressed_integer.dart';
export 'src/culture.dart';
export 'src/custom_attribute_parameter.dart';
export 'src/exception.dart';
export 'src/guid.dart';
export 'src/logger.dart';
export 'src/metadata_type.dart';
export 'src/metadata_value.dart';
export 'src/method_signature.dart';
export 'src/reader/blob.dart';
export 'src/reader/codes.dart';
export 'src/reader/extensions.dart';
export 'src/reader/has_custom_attributes.dart';
export 'src/reader/heap/blob.dart';
export 'src/reader/heap/guid.dart';
export 'src/reader/heap/metadata_heap.dart';
export 'src/reader/heap/string.dart';
export 'src/reader/heap/user_string.dart';
export 'src/reader/item_index.dart';
export 'src/reader/metadata_index.dart';
export 'src/reader/metadata_reader.dart';
export 'src/reader/row.dart';
export 'src/reader/table/assembly_ref.dart';
export 'src/reader/table/class_layout.dart';
export 'src/reader/table/constant.dart';
export 'src/reader/table/custom_attribute.dart';
export 'src/reader/table/field.dart';
export 'src/reader/table/field_layout.dart';
export 'src/reader/table/generic_param.dart';
export 'src/reader/table/generic_param_constraint.dart';
export 'src/reader/table/impl_map.dart';
export 'src/reader/table/interface_impl.dart';
export 'src/reader/table/member_ref.dart';
export 'src/reader/table/method_def.dart';
export 'src/reader/table/module.dart';
export 'src/reader/table/module_ref.dart';
export 'src/reader/table/nested_class.dart';
export 'src/reader/table/param.dart';
export 'src/reader/table/type_def.dart';
export 'src/reader/table/type_ref.dart';
export 'src/reader/table/type_spec.dart';
export 'src/reader/table_index.dart';
export 'src/reader/table_stream.dart';
export 'src/reader/type_category.dart';
export 'src/type_name.dart';
