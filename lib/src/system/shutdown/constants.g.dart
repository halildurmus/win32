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

const MAX_REASON_NAME_LEN = 0x40;
const MAX_REASON_DESC_LEN = 0x100;
const MAX_REASON_BUGID_LEN = 0x20;
const MAX_REASON_COMMENT_LEN = 0x200;
const SHUTDOWN_TYPE_LEN = 0x20;
const POLICY_SHOWREASONUI_NEVER = 0x0;
const POLICY_SHOWREASONUI_ALWAYS = 0x1;
const POLICY_SHOWREASONUI_WORKSTATIONONLY = 0x2;
const POLICY_SHOWREASONUI_SERVERONLY = 0x3;
const SNAPSHOT_POLICY_NEVER = 0x0;
const SNAPSHOT_POLICY_ALWAYS = 0x1;
const SNAPSHOT_POLICY_UNPLANNED = 0x2;
const MAX_NUM_REASONS = 0x100;
