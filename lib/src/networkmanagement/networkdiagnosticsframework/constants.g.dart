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

const NDF_ERROR_START = 0xf900;
const NDF_E_LENGTH_EXCEEDED = 0x8008f900;
const NDF_E_NOHELPERCLASS = 0x8008f901;
const NDF_E_CANCELLED = 0x8008f902;
const NDF_E_DISABLED = 0x8008f904;
const NDF_E_BAD_PARAM = 0x8008f905;
const NDF_E_VALIDATION = 0x8008f906;
const NDF_E_UNKNOWN = 0x8008f907;
const NDF_E_PROBLEM_PRESENT = 0x8008f908;
const RF_WORKAROUND = 0x20000000;
const RF_USER_ACTION = 0x10000000;
const RF_USER_CONFIRMATION = 0x8000000;
const RF_INFORMATION_ONLY = 0x2000000;
const RF_UI_ONLY = 0x1000000;
const RF_SHOW_EVENTS = 0x800000;
const RF_VALIDATE_HELPTOPIC = 0x400000;
const RF_REPRO = 0x200000;
const RF_CONTACT_ADMIN = 0x20000;
const RF_RESERVED = 0x40000000;
const RF_RESERVED_CA = 0x80000000;
const RF_RESERVED_LNI = 0x10000;
const RCF_ISLEAF = 0x1;
const RCF_ISCONFIRMED = 0x2;
const RCF_ISTHIRDPARTY = 0x4;
const DF_IMPERSONATION = 0x80000000;
const DF_TRACELESS = 0x40000000;
const NDF_INBOUND_FLAG_EDGETRAVERSAL = 0x1;
const NDF_INBOUND_FLAG_HEALTHCHECK = 0x2;
const NDF_ADD_CAPTURE_TRACE = 0x1;
const NDF_APPLY_INCLUSION_LIST_FILTER = 0x2;
