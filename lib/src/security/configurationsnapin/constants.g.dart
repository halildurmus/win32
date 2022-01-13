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

const cNodetypeSceTemplateServices = 0x0;
const cNodetypeSceAnalysisServices = 0x0;
const cNodetypeSceEventLog = 0x0;
const SCESTATUS_SUCCESS = 0x0;
const SCESTATUS_INVALID_PARAMETER = 0x1;
const SCESTATUS_RECORD_NOT_FOUND = 0x2;
const SCESTATUS_INVALID_DATA = 0x3;
const SCESTATUS_OBJECT_EXIST = 0x4;
const SCESTATUS_BUFFER_TOO_SMALL = 0x5;
const SCESTATUS_PROFILE_NOT_FOUND = 0x6;
const SCESTATUS_BAD_FORMAT = 0x7;
const SCESTATUS_NOT_ENOUGH_RESOURCE = 0x8;
const SCESTATUS_ACCESS_DENIED = 0x9;
const SCESTATUS_CANT_DELETE = 0xa;
const SCESTATUS_PREFIX_OVERFLOW = 0xb;
const SCESTATUS_OTHER_ERROR = 0xc;
const SCESTATUS_ALREADY_RUNNING = 0xd;
const SCESTATUS_SERVICE_NOT_SUPPORT = 0xe;
const SCESTATUS_MOD_NOT_FOUND = 0xf;
const SCESTATUS_EXCEPTION_IN_SERVER = 0x10;
const SCESTATUS_NO_TEMPLATE_GIVEN = 0x11;
const SCESTATUS_NO_MAPPING = 0x12;
const SCESTATUS_TRUST_FAIL = 0x13;
const SCESVC_ENUMERATION_MAX = 0x64;
