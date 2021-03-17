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

class OCTET_STRING extends Struct {
  @Uint32() external int dwLength;
  external Pointer<Uint8> lpValue;
}

class LIFE_TIME extends Struct {
  external FILETIME startTime;
  external FILETIME endTime;
}

class DIAG_SOCKADDR extends Struct {
  @Uint16() external int family;
  external __byte__ data;
}

class ShellCommandInfo extends Struct {
  external Pointer<Utf16> pwszOperation;
  external Pointer<Utf16> pwszFile;
  external Pointer<Utf16> pwszParameters;
  external Pointer<Utf16> pwszDirectory;
  @Uint32() external int nShowCmd;
}

class RepairInfo extends Struct {
  external GUID guid;
  external Pointer<Utf16> pwszClassName;
  external Pointer<Utf16> pwszDescription;
  @Uint32() external int sidType;
  @Int32() external int cost;
  @Uint32() external int flags;
  @Uint32() external int scope;
  @Uint32() external int risk;
  external UiInfo UiInfo;
  @Int32() external int rootCauseIndex;
}

class RepairInfoEx extends Struct {
  external RepairInfo repair;
  @Uint16() external int repairRank;
}

class RootCauseInfo extends Struct {
  external Pointer<Utf16> pwszDescription;
  external GUID rootCauseID;
  @Uint32() external int rootCauseFlags;
  external GUID networkInterfaceID;
  external Pointer<RepairInfoEx> pRepairs;
  @Uint16() external int repairCount;
}

class HYPOTHESIS extends Struct {
  external Pointer<Utf16> pwszClassName;
  external Pointer<Utf16> pwszDescription;
  @Uint32() external int celt;
  external Pointer<HELPER_ATTRIBUTE> rgAttributes;
}

class HelperAttributeInfo extends Struct {
  external Pointer<Utf16> pwszName;
  @Uint32() external int type;
}

class DiagnosticsInfo extends Struct {
  @Int32() external int cost;
  @Uint32() external int flags;
}

class HypothesisResult extends Struct {
  external HYPOTHESIS hypothesis;
  @Uint32() external int pathStatus;
}

