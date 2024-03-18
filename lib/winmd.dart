// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// A Dart library for working with Windows Metadata (.winmd) files.
///
/// This library can be used to query Windows developer APIs, encompassing both
/// unmanaged APIs like Win32 or COM, as well as modern APIs like
/// Windows Runtime (WinRT) that include their own metadata.
///
/// The library consumes metadata in the
/// [ECMA-335](https://www.ecma-international.org/publications/files/ECMA-ST/ECMA-335.pdf)
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
/// Additionally, this library is utilized by the
/// [windows_*](https://pub.dev/packages?q=publisher%3Awin32.pub+topic%3Awinrt)
/// packages, which provide idiomatic Dart language projections of the
/// Windows Runtime (WinRT) APIs.
///
/// Beyond these specific use cases, this package can be valuable for creating
/// Windows utilities using Dart or Flutter.
///
/// To start using this library, obtaining a `Scope` is necessary. A `Scope`
/// contains a named set of metadata. For most scenarios, you should retrieve a
/// scope through one of the static methods of the `MetadataStore` class, which
/// caches retrieved scopes.
///
/// To retrieve the latest Win32 metadata scope, you can use the following code:
///
/// ```dart
/// final scope = await MetadataStore.loadWin32Metadata();
/// ```
///
/// By default, the `loadWin32Metadata` method downloads the latest version of
/// the NuGet package `Microsoft.Windows.SDK.Win32Metadata` and loads the
/// metadata from it. If you prefer a different version, you can specify the
/// `version` string as a parameter:
///
/// ```dart
/// final scope =
///   await MetadataStore.loadWin32Metadata(version: '52.0.65-preview');
/// ```
///
/// To retrieve the latest WinRT metadata scope, you can use the following code:
///
/// ```dart
/// final scope = await MetadataStore.loadWinRTMetadata();
/// ```
///
/// Similar to the Win32 counterpart, the `loadWinRTMetadata` method downloads
/// the latest version of the NuGet package `Microsoft.Windows.SDK.Contracts`
/// and loads the metadata from it. If you prefer a different version, you can
/// specify the `version` string as a parameter:
///
/// ```dart
/// final scope =
///   await MetadataStore.loadWinRTMetadata(version: '10.0.22621.755');
/// ```
///
/// To retrieve the latest WDK metadata scope, you can use the following code:
///
/// ```dart
/// // Win32 metadata also needs to be loaded to resolve references from WDK
/// // metadata
/// await MetadataStore.loadWin32Metadata();
///
/// final scope = await MetadataStore.loadWdkMetadata();
/// ```
///
/// By default, the `loadWdkMetadata` method downloads the latest version of
/// the NuGet package `Microsoft.Windows.WDK.Win32Metadata` and loads the
/// metadata from it. If you prefer a different version, you can specify the
/// `version` string as a parameter:
///
/// ```dart
/// final scope =
///   await MetadataStore.loadWdkMetadata(version: '0.9.9-experimental');
/// ```
///
/// **Note:** If the metadata you want to load has already been downloaded and
/// stored locally, `loadWdkMetadata`, `loadWin32Metadata`, or
/// `loadWinRTMetadata` will load the metadata from the local storage instead of
/// downloading it again.
///
/// You can get the list of downloaded NuGet packages as follows:
///
/// ```dart
/// for (final package in LocalStorage.packages) {
///   print(package);
/// }
/// ```
///
/// Alternatively, a scope can be obtained directly from a
/// Windows Metadata (.winmd) file, as follows:
///
/// ```dart
/// final scope =
///   MetadataStore.loadMetadataFromFile(File('path/to/file.winmd'));
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

export 'src/class_layout.dart';
export 'src/constants.dart';
export 'src/custom_attribute.dart';
export 'src/event.dart';
export 'src/field.dart';
export 'src/generic_param.dart';
export 'src/generic_param_constraint.dart';
export 'src/interface_impl.dart';
export 'src/member_ref.dart';
export 'src/metadata_store.dart';
export 'src/method.dart';
export 'src/method_impls.dart';
export 'src/mixins/mixins.dart';
export 'src/models/models.dart';
export 'src/module_ref.dart';
export 'src/parameter.dart';
export 'src/pekind.dart';
export 'src/pinvokemap.dart';
export 'src/property.dart';
export 'src/scope.dart';
export 'src/token_object.dart';
export 'src/type_aliases.dart';
export 'src/type_def.dart';
export 'src/type_identifier.dart';
