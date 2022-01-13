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

const ENCLAVE_RUNTIME_POLICY_ALLOW_FULL_DEBUG = 0x1;
const ENCLAVE_RUNTIME_POLICY_ALLOW_DYNAMIC_DEBUG = 0x2;
const ENCLAVE_UNSEAL_FLAG_STALE_KEY = 0x1;
const ENCLAVE_FLAG_FULL_DEBUG_ENABLED = 0x1;
const ENCLAVE_FLAG_DYNAMIC_DEBUG_ENABLED = 0x2;
const ENCLAVE_FLAG_DYNAMIC_DEBUG_ACTIVE = 0x4;
const VBS_ENCLAVE_REPORT_PKG_HEADER_VERSION_CURRENT = 0x1;
const VBS_ENCLAVE_REPORT_SIGNATURE_SCHEME_SHA256_RSA_PSS_SHA256 = 0x1;
const VBS_ENCLAVE_REPORT_VERSION_CURRENT = 0x1;
const ENCLAVE_REPORT_DATA_LENGTH = 0x40;
const VBS_ENCLAVE_VARDATA_INVALID = 0x0;
const VBS_ENCLAVE_VARDATA_MODULE = 0x1;
const ENCLAVE_VBS_BASIC_KEY_FLAG_MEASUREMENT = 0x1;
const ENCLAVE_VBS_BASIC_KEY_FLAG_FAMILY_ID = 0x2;
const ENCLAVE_VBS_BASIC_KEY_FLAG_IMAGE_ID = 0x4;
const ENCLAVE_VBS_BASIC_KEY_FLAG_DEBUG_KEY = 0x8;
