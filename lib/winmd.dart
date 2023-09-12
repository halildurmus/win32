// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Dart language support for working with Windows Metadata.
///
/// This library enables interrogation of the Windows developer API, including
/// unmanaged APIs like Win32 or COM, as well as APIs like Windows Runtime
/// (WinRT) that include their own metadata.
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
/// that have been available in Windows for many years.
///
/// While the ability to interpret this format from Dart is valuable for various
/// reasons, the original motivation behind creating this package was to
/// facilitate a
/// [Dart language projection of the Win32 API](https://pub.dev/packages/win32).
/// Utilizing Windows Metadata allows the generation of a Win32 API projection
/// programmatically, offering resilience against errors or changes over time.
///
/// In addition to the aforementioned package and other specialized
/// alternatives, this package may prove useful for creating Windows utilities
/// using Dart or Flutter.
///
/// To start using this library, obtaining a `Scope` is necessary. A `Scope`
/// contains a named set of metadata. For most scenarios, you should retrieve a
/// scope through one of the static methods of the `MetadataStore` class, which
/// caches retrieved scopes.
///
/// The following code retrieves the Win32 scope:
///
/// ```dart
/// final scope = await MetadataStore.loadWin32Metadata();
/// ```
///
/// By default, the `loadWin32Metadata` method downloads the latest version of
/// the NuGet package `Microsoft.Windows.SDK.Win32Metadata` and loads the
/// metadata from it. If a different version is desired, the `version` string
/// can be specified as a parameter:
///
/// ```dart
/// final scope =
///   await MetadataStore.loadWin32Metadata(version: '52.0.65-preview');
/// ```
///
/// Similarly, the following code retrieves the WinRT scope:
///
/// ```dart
/// final scope = await MetadataStore.loadWinRTMetadata();
/// ```
///
/// By default, the `loadWinRTMetadata` method downloads the latest version of
/// the NuGet package `Microsoft.Windows.SDK.Contracts` and loads the metadata
/// from it. If a different version is preferred, the `version` string can be
/// specified as a parameter:
///
/// ```dart
/// final scope =
///   await MetadataStore.loadWinRTMetadata(version: '10.0.22621.755');
/// ```
///
/// Alternatively, a scope can be obtained directly from a Windows Metadata file
/// (.winmd):
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
/// [IMetaDataImport](https://learn.microsoft.com/windows/win32/api/rometadataapi/nn-rometadataapi-imetadataimport)
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
