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

const WER_FAULT_REPORTING_NO_UI = 0x20;
const WER_FAULT_REPORTING_FLAG_NO_HEAP_ON_QUEUE = 0x40;
const WER_FAULT_REPORTING_DISABLE_SNAPSHOT_CRASH = 0x80;
const WER_FAULT_REPORTING_DISABLE_SNAPSHOT_HANG = 0x100;
const WER_FAULT_REPORTING_CRITICAL = 0x200;
const WER_FAULT_REPORTING_DURABLE = 0x400;
const WER_MAX_TOTAL_PARAM_LENGTH = 0x6b8;
const WER_MAX_PREFERRED_MODULES = 0x80;
const WER_MAX_PREFERRED_MODULES_BUFFER = 0x100;
const WER_P0 = 0x0;
const WER_P1 = 0x1;
const WER_P2 = 0x2;
const WER_P3 = 0x3;
const WER_P4 = 0x4;
const WER_P5 = 0x5;
const WER_P6 = 0x6;
const WER_P7 = 0x7;
const WER_P8 = 0x8;
const WER_P9 = 0x9;
const WER_FILE_COMPRESSED = 0x4;
const WER_SUBMIT_BYPASS_POWER_THROTTLING = 0x4000;
const WER_SUBMIT_BYPASS_NETWORK_COST_THROTTLING = 0x8000;
const WER_DUMP_MASK_START = 0x1;
const WER_DUMP_NOHEAP_ONQUEUE = 0x1;
const WER_DUMP_AUXILIARY = 0x2;
const WER_MAX_REGISTERED_ENTRIES = 0x200;
const WER_MAX_REGISTERED_METADATA = 0x8;
const WER_MAX_REGISTERED_DUMPCOLLECTION = 0x4;
const WER_METADATA_KEY_MAX_LENGTH = 0x40;
const WER_METADATA_VALUE_MAX_LENGTH = 0x80;
const WER_MAX_SIGNATURE_NAME_LENGTH = 0x80;
const WER_MAX_EVENT_NAME_LENGTH = 0x40;
const WER_MAX_PARAM_LENGTH = 0x104;
const WER_MAX_PARAM_COUNT = 0xa;
const WER_MAX_FRIENDLY_EVENT_NAME_LENGTH = 0x80;
const WER_MAX_APPLICATION_NAME_LENGTH = 0x80;
const WER_MAX_DESCRIPTION_LENGTH = 0x200;
const WER_MAX_BUCKET_ID_STRING_LENGTH = 0x104;
const WER_MAX_LOCAL_DUMP_SUBPATH_LENGTH = 0x40;
const WER_MAX_REGISTERED_RUNTIME_EXCEPTION_MODULES = 0x10;
