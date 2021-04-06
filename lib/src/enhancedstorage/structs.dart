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

class ENHANCED_STORAGE_PASSWORD_SILO_INFORMATION extends Struct {
  @Uint8()
  external int CurrentAdminFailures;
  @Uint8()
  external int CurrentUserFailures;
  @Uint32()
  external int TotalUserAuthenticationCount;
  @Uint32()
  external int TotalAdminAuthenticationCount;
  @Int32()
  external int FipsCompliant;
  @Int32()
  external int SecurityIDAvailable;
  @Int32()
  external int InitializeInProgress;
  @Int32()
  external int ITMSArmed;
  @Int32()
  external int ITMSArmable;
  @Int32()
  external int UserCreated;
  @Int32()
  external int ResetOnPORDefault;
  @Int32()
  external int ResetOnPORCurrent;
  @Uint8()
  external int MaxAdminFailures;
  @Uint8()
  external int MaxUserFailures;
  @Uint32()
  external int TimeToCompleteInitialization;
  @Uint32()
  external int TimeRemainingToCompleteInitialization;
  @Uint32()
  external int MinTimeToAuthenticate;
  @Uint8()
  external int MaxAdminPasswordSize;
  @Uint8()
  external int MinAdminPasswordSize;
  @Uint8()
  external int MaxAdminHintSize;
  @Uint8()
  external int MaxUserPasswordSize;
  @Uint8()
  external int MinUserPasswordSize;
  @Uint8()
  external int MaxUserHintSize;
  @Uint8()
  external int MaxUserNameSize;
  @Uint8()
  external int MaxSiloNameSize;
  @Uint16()
  external int MaxChallengeSize;
}

class EnumEnhancedStorageACT extends Struct {}

class EnhancedStorageACT extends Struct {}

class EnhancedStorageSilo extends Struct {}

class EnhancedStorageSiloAction extends Struct {}

class ACT_AUTHORIZATION_STATE extends Struct {
  @Uint32()
  external int ulState;
}

class SILO_INFO extends Struct {
  @Uint32()
  external int ulSTID;
  @Uint8()
  external int SpecificationMajor;
  @Uint8()
  external int SpecificationMinor;
  @Uint8()
  external int ImplementationMajor;
  @Uint8()
  external int ImplementationMinor;
  @Uint8()
  external int type;
  @Uint8()
  external int capabilities;
}
