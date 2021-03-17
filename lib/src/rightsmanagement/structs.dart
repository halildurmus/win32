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

class DRMID extends Struct {
  @Uint32() external int uVersion;
  external Pointer<Utf16> wszIDType;
  external Pointer<Utf16> wszID;
}

class DRMBOUNDLICENSEPARAMS extends Struct {
  @Uint32() external int uVersion;
  @Uint32() external int hEnablingPrincipal;
  @Uint32() external int hSecureStore;
  external Pointer<Utf16> wszRightsRequested;
  external Pointer<Utf16> wszRightsGroup;
  external DRMID idResource;
  @Uint32() external int cAuthenticatorCount;
  external Pointer<Uint32> rghAuthenticators;
  external Pointer<Utf16> wszDefaultEnablingPrincipalCredentials;
  @Uint32() external int dwFlags;
}

class DRM_LICENSE_ACQ_DATA extends Struct {
  @Uint32() external int uVersion;
  external Pointer<Utf16> wszURL;
  external Pointer<Utf16> wszLocalFilename;
  external Pointer<Uint8> pbPostData;
  @Uint32() external int dwPostDataSize;
  external Pointer<Utf16> wszFriendlyName;
}

class DRM_ACTSERV_INFO extends Struct {
  @Uint32() external int uVersion;
  external Pointer<Utf16> wszPubKey;
  external Pointer<Utf16> wszURL;
}

class DRM_CLIENT_VERSION_INFO extends Struct {
  @Uint32() external int uStructVersion;
  external __uint__ dwVersion;
  external __ushort__ wszHierarchy;
  external __ushort__ wszProductId;
  external __ushort__ wszProductDescription;
}

