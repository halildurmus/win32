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

class NetEnumHandle extends Struct {
  @IntPtr() external int Value;
}

class CONNECTDLGSTRUCTA extends Struct {
  @Uint32() external int cbStructure;
  @IntPtr() external int hwndOwner;
  external Pointer<NETRESOURCEA> lpConnRes;
  @Uint32() external int dwFlags;
  @Uint32() external int dwDevNum;
}

class CONNECTDLGSTRUCTW extends Struct {
  @Uint32() external int cbStructure;
  @IntPtr() external int hwndOwner;
  external Pointer<NETRESOURCE> lpConnRes;
  @Uint32() external int dwFlags;
  @Uint32() external int dwDevNum;
}

class DISCDLGSTRUCTA extends Struct {
  @Uint32() external int cbStructure;
  @IntPtr() external int hwndOwner;
  external Pointer<Utf8> lpLocalName;
  external Pointer<Utf8> lpRemoteName;
  @Uint32() external int dwFlags;
}

class DISCDLGSTRUCTW extends Struct {
  @Uint32() external int cbStructure;
  @IntPtr() external int hwndOwner;
  external Pointer<Utf16> lpLocalName;
  external Pointer<Utf16> lpRemoteName;
  @Uint32() external int dwFlags;
}

class NETINFOSTRUCT extends Struct {
  @Uint32() external int cbStructure;
  @Uint32() external int dwProviderVersion;
  @Uint32() external int dwStatus;
  @Uint32() external int dwCharacteristics;
  @IntPtr() external int dwHandle;
  @Uint16() external int wNetType;
  @Uint32() external int dwPrinters;
  @Uint32() external int dwDrives;
}

