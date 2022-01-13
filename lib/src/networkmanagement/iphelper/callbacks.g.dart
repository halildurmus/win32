// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../networkmanagement/iphelper/structs.g.dart';
import '../../networking/winsock/structs.g.dart';

typedef PINTERFACE_TIMESTAMP_CONFIG_CHANGE_CALLBACK = Void Function(
  Pointer CallerContext,
);
typedef PIPFORWARD_CHANGE_CALLBACK = Void Function(
  Pointer CallerContext,
  Pointer<MIB_IPFORWARD_ROW2> Row,
  Int32 NotificationType,
);
typedef PIPINTERFACE_CHANGE_CALLBACK = Void Function(
  Pointer CallerContext,
  Pointer<MIB_IPINTERFACE_RO> Row,
  Int32 NotificationType,
);
typedef PNETWORK_CONNECTIVITY_HINT_CHANGE_CALLBACK = Void Function(
  Pointer CallerContext,
  NL_NETWORK_CONNECTIVITY_HINT ConnectivityHint,
);
typedef PSTABLE_UNICAST_IPADDRESS_TABLE_CALLBACK = Void Function(
  Pointer CallerContext,
  Pointer<MIB_UNICASTIPADDRESS_TABLE> AddressTable,
);
typedef PTEREDO_PORT_CHANGE_CALLBACK = Void Function(
  Pointer CallerContext,
  Uint16 Port,
  Int32 NotificationType,
);
typedef PUNICAST_IPADDRESS_CHANGE_CALLBACK = Void Function(
  Pointer CallerContext,
  Pointer<MIB_UNICASTIPADDRESS_RO> Row,
  Int32 NotificationType,
);
