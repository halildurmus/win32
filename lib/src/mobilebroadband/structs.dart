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

class MBN_INTERFACE_CAPS extends Struct {
  @Uint32() external int cellularClass;
  @Uint32() external int voiceClass;
  @Uint32() external int dataClass;
  external Pointer<Utf16> customDataClass;
  @Uint32() external int gsmBandClass;
  @Uint32() external int cdmaBandClass;
  external Pointer<Utf16> customBandClass;
  @Uint32() external int smsCaps;
  @Uint32() external int controlCaps;
  external Pointer<Utf16> deviceID;
  external Pointer<Utf16> manufacturer;
  external Pointer<Utf16> model;
  external Pointer<Utf16> firmwareInfo;
}

class MBN_PROVIDER extends Struct {
  external Pointer<Utf16> providerID;
  @Uint32() external int providerState;
  external Pointer<Utf16> providerName;
  @Uint32() external int dataClass;
}

class MBN_PROVIDER2 extends Struct {
  external MBN_PROVIDER provider;
  @Uint32() external int cellularClass;
  @Uint32() external int signalStrength;
  @Uint32() external int signalError;
}

class MBN_PIN_INFO extends Struct {
  @Uint32() external int pinState;
  @Uint32() external int pinType;
  @Uint32() external int attemptsRemaining;
}

class MBN_CONTEXT extends Struct {
  @Uint32() external int contextID;
  @Uint32() external int contextType;
  external Pointer<Utf16> accessString;
  external Pointer<Utf16> userName;
  external Pointer<Utf16> password;
  @Uint32() external int compression;
  @Uint32() external int authType;
}

class MBN_SMS_FILTER extends Struct {
  @Uint32() external int flag;
  @Uint32() external int messageIndex;
}

class MBN_SMS_STATUS_INFO extends Struct {
  @Uint32() external int flag;
  @Uint32() external int messageIndex;
}

class MBN_DEVICE_SERVICE extends Struct {
  external Pointer<Utf16> deviceServiceID;
  @Int16() external int dataWriteSupported;
  @Int16() external int dataReadSupported;
}

