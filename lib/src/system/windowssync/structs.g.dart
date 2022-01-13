// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../system/windowssync/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class ID_PARAMETERS extends Struct {
  @Uint32()
  external int dwSize;

  external ID_PARAMETER_PAIR replicaId;

  external ID_PARAMETER_PAIR itemId;

  external ID_PARAMETER_PAIR changeUnitId;
}

/// {@category Struct}
class ID_PARAMETER_PAIR extends Struct {
  @Int32()
  external int fIsVariable;

  @Uint16()
  external int cbIdSize;
}

/// {@category Struct}
class SYNC_FILTER_CHANGE extends Struct {
  @Int32()
  external int fMoveIn;

  external SYNC_VERSION moveVersion;
}

/// {@category Struct}
class SYNC_RANGE extends Struct {
  external Pointer<Uint8> pbClosedLowerBound;

  external Pointer<Uint8> pbClosedUpperBound;
}

/// {@category Struct}
class SYNC_SESSION_STATISTICS extends Struct {
  @Uint32()
  external int dwChangesApplied;

  @Uint32()
  external int dwChangesFailed;
}

/// {@category Struct}
class SYNC_TIME extends Struct {
  @Uint32()
  external int dwDate;

  @Uint32()
  external int dwTime;
}

/// {@category Struct}
class SYNC_VERSION extends Struct {
  @Uint32()
  external int dwLastUpdatingReplicaKey;

  @Uint64()
  external int ullTickCount;
}

/// {@category Struct}
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

/// {@category Struct}
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
