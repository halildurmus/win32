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
import '../../system/distributedtransactioncoordinator/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class BOID extends Struct {
  @Array(16)
  external Array<Uint8> rgb;
}

/// {@category Struct}
class OLE_TM_CONFIG_PARAMS_V1 extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwcConcurrencyHint;
}

/// {@category Struct}
class OLE_TM_CONFIG_PARAMS_V2 extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwcConcurrencyHint;

  @Int32()
  external int applicationType;

  external GUID clusterResourceId;
}

/// {@category Struct}
class XACTOPT extends Struct {
  @Uint32()
  external int ulTimeout;

  @Array(40)
  external Array<Uint8> szDescription;
}

/// {@category Struct}
class XACTSTATS extends Struct {
  @Uint32()
  external int cOpen;

  @Uint32()
  external int cCommitting;

  @Uint32()
  external int cCommitted;

  @Uint32()
  external int cAborting;

  @Uint32()
  external int cAborted;

  @Uint32()
  external int cInDoubt;

  @Uint32()
  external int cHeuristicDecision;

  external FILETIME timeTransactionsUp;
}

/// {@category Struct}
class XACTTRANSINFO extends Struct {
  external BOID uow;

  @Int32()
  external int isoLevel;

  @Uint32()
  external int isoFlags;

  @Uint32()
  external int grfTCSupported;

  @Uint32()
  external int grfRMSupported;

  @Uint32()
  external int grfTCSupportedRetaining;

  @Uint32()
  external int grfRMSupportedRetaining;
}

/// {@category Struct}
class ProxyConfigParams extends Struct {
  @Uint16()
  external int wcThreadsMax;
}

/// {@category Struct}
class xa_switch_t extends Struct {
  @Array(32)
  external Array<Uint8> name;

  @Int32()
  external int flags;

  @Int32()
  external int version;

  @IntPtr()
  external int xa_open_entry;

  @IntPtr()
  external int xa_close_entry;

  @IntPtr()
  external int xa_start_entry;

  @IntPtr()
  external int xa_end_entry;

  @IntPtr()
  external int xa_rollback_entry;

  @IntPtr()
  external int xa_prepare_entry;

  @IntPtr()
  external int xa_commit_entry;

  @IntPtr()
  external int xa_recover_entry;

  @IntPtr()
  external int xa_forget_entry;

  @IntPtr()
  external int xa_complete_entry;
}

/// {@category Struct}
class xid_t extends Struct {
  @Int32()
  external int formatID;

  @Int32()
  external int gtrid_length;

  @Int32()
  external int bqual_length;

  @Array(128)
  external Array<Uint8> data;
}
