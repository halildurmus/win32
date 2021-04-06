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

class ID_PARAMETER_PAIR extends Struct {
  @Int32()
  external int fIsVariable;
  @Uint16()
  external int cbIdSize;
}

class ID_PARAMETERS extends Struct {
  @Uint32()
  external int dwSize;
  external ID_PARAMETER_PAIR replicaId;
  external ID_PARAMETER_PAIR itemId;
  external ID_PARAMETER_PAIR changeUnitId;
}

class SYNC_SESSION_STATISTICS extends Struct {
  @Uint32()
  external int dwChangesApplied;
  @Uint32()
  external int dwChangesFailed;
}

class SYNC_VERSION extends Struct {
  @Uint32()
  external int dwLastUpdatingReplicaKey;
  @Uint64()
  external int ullTickCount;
}

class SYNC_RANGE extends Struct {
  external Pointer<Uint8> pbClosedLowerBound;
  external Pointer<Uint8> pbClosedUpperBound;
}

class SYNC_TIME extends Struct {
  @Uint32()
  external int dwDate;
  @Uint32()
  external int dwTime;
}

class SYNC_FILTER_CHANGE extends Struct {
  @Int32()
  external int fMoveIn;
  external SYNC_VERSION moveVersion;
}

class SyncProviderRegistration extends Struct {}

class SyncProviderConfiguration extends Struct {
  @Uint32()
  external int dwVersion;
  external GUID guidInstanceId;
  external GUID clsidProvider;
  external GUID guidConfigUIInstanceId;
  external GUID guidContentType;
  @Uint32()
  external int dwCapabilities;
  @Uint32()
  external int dwSupportedArchitecture;
}

class SyncProviderConfigUIConfiguration extends Struct {
  @Uint32()
  external int dwVersion;
  external GUID guidInstanceId;
  external GUID clsidConfigUI;
  external GUID guidContentType;
  @Uint32()
  external int dwCapabilities;
  @Uint32()
  external int dwSupportedArchitecture;
  @Int32()
  external int fIsGlobal;
}
