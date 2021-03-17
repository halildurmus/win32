// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class AppxFactory extends Struct {
}

class AppxBundleFactory extends Struct {
}

class AppxPackagingDiagnosticEventSinkManager extends Struct {
}

class AppxEncryptionFactory extends Struct {
}

class AppxPackageEditor extends Struct {
}

class APPX_PACKAGE_SETTINGS extends Struct {
  @Int32() external int forceZip32;
  external Pointer hashMethod;
}

class APPX_PACKAGE_WRITER_PAYLOAD_STREAM extends Struct {
  external Pointer inputStream;
  external Pointer<Utf16> fileName;
  external Pointer<Utf16> contentType;
  @Uint32() external int compressionOption;
}

class APPX_ENCRYPTED_PACKAGE_SETTINGS extends Struct {
  @Uint32() external int keyLength;
  external Pointer<Utf16> encryptionAlgorithm;
  @Int32() external int useDiffusion;
  external Pointer blockMapHashAlgorithm;
}

class APPX_ENCRYPTED_PACKAGE_SETTINGS2 extends Struct {
  @Uint32() external int keyLength;
  external Pointer<Utf16> encryptionAlgorithm;
  external Pointer blockMapHashAlgorithm;
  @Uint32() external int options;
}

class APPX_KEY_INFO extends Struct {
  @Uint32() external int keyLength;
  @Uint32() external int keyIdLength;
  external Pointer<Uint8> key;
  external Pointer<Uint8> keyId;
}

class APPX_ENCRYPTED_EXEMPTIONS extends Struct {
  @Uint32() external int count;
  external Pointer<Pointer<Utf16>> plainTextFiles;
}

class PACKAGE_ID extends Struct {
  @Uint32() external int reserved;
  @Uint32() external int processorArchitecture;
  external PACKAGE_VERSION version;
  external Pointer<Utf16> name;
  external Pointer<Utf16> publisher;
  external Pointer<Utf16> resourceId;
  external Pointer<Utf16> publisherId;
}

class _PACKAGE_INFO_REFERENCE extends Struct {
  external Pointer reserved;
}

class PACKAGE_INFO extends Struct {
  @Uint32() external int reserved;
  @Uint32() external int flags;
  external Pointer<Utf16> path;
  external Pointer<Utf16> packageFullName;
  external Pointer<Utf16> packageFamilyName;
  external PACKAGE_ID packageId;
}

