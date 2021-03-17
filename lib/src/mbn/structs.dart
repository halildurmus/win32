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

class MbnConnectionProfileManager extends Struct {
}

class MbnInterfaceManager extends Struct {
}

class MbnConnectionManager extends Struct {
}

class MbnDeviceServicesManager extends Struct {
}

class __mbnapi_ReferenceRemainingTypes__ extends Struct {
  @Uint32() external int bandClass;
  @Uint32() external int contextConstants;
  @Uint32() external int ctrlCaps;
  @Uint32() external int dataClass;
  @Uint32() external int interfaceCapsConstants;
  @Uint32() external int pinConstants;
  @Uint32() external int providerConstants;
  @Uint32() external int providerState;
  @Uint32() external int registrationConstants;
  @Uint32() external int signalConstants;
  @Uint32() external int smsCaps;
  @Uint32() external int smsConstants;
  @Uint32() external int wwaextSmsConstants;
  @Uint32() external int smsStatusFlag;
}

class __DummyPinType__ extends Struct {
  @Uint32() external int pinType;
}

