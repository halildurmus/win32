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

const FSCTL_DFS_BASE = 0x6;
const DFS_VOLUME_STATES = 0xf;
const DFS_VOLUME_STATE_OK = 0x1;
const DFS_VOLUME_STATE_INCONSISTENT = 0x2;
const DFS_VOLUME_STATE_OFFLINE = 0x3;
const DFS_VOLUME_STATE_ONLINE = 0x4;
const DFS_VOLUME_STATE_RESYNCHRONIZE = 0x10;
const DFS_VOLUME_STATE_STANDBY = 0x20;
const DFS_VOLUME_STATE_FORCE_SYNC = 0x40;
const DFS_VOLUME_FLAVORS = 0x300;
const DFS_VOLUME_FLAVOR_UNUSED1 = 0x0;
const DFS_VOLUME_FLAVOR_STANDALONE = 0x100;
const DFS_VOLUME_FLAVOR_AD_BLOB = 0x200;
const DFS_STORAGE_FLAVOR_UNUSED2 = 0x300;
const DFS_STORAGE_STATES = 0xf;
const DFS_STORAGE_STATE_OFFLINE = 0x1;
const DFS_STORAGE_STATE_ONLINE = 0x2;
const DFS_STORAGE_STATE_ACTIVE = 0x4;
const DFS_PROPERTY_FLAG_INSITE_REFERRALS = 0x1;
const DFS_PROPERTY_FLAG_ROOT_SCALABILITY = 0x2;
const DFS_PROPERTY_FLAG_SITE_COSTING = 0x4;
const DFS_PROPERTY_FLAG_TARGET_FAILBACK = 0x8;
const DFS_PROPERTY_FLAG_CLUSTER_ENABLED = 0x10;
const DFS_PROPERTY_FLAG_ABDE = 0x20;
const DFS_ADD_VOLUME = 0x1;
const DFS_RESTORE_VOLUME = 0x2;
const NET_DFS_SETDC_FLAGS = 0x0;
const NET_DFS_SETDC_TIMEOUT = 0x1;
const NET_DFS_SETDC_INITPKT = 0x2;
const DFS_SITE_PRIMARY = 0x1;
const DFS_MOVE_FLAG_REPLACE_IF_EXISTS = 0x1;
const DFS_FORCE_REMOVE = 0x80000000;
const FSCTL_DFS_GET_PKT_ENTRY_STATE = 0x61fbc;
