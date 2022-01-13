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

const TBS_CONTEXT_VERSION_ONE = 0x1;
const TBS_SUCCESS = 0x0;
const TBS_OWNERAUTH_TYPE_FULL = 0x1;
const TBS_OWNERAUTH_TYPE_ADMIN = 0x2;
const TBS_OWNERAUTH_TYPE_USER = 0x3;
const TBS_OWNERAUTH_TYPE_ENDORSEMENT = 0x4;
const TBS_OWNERAUTH_TYPE_ENDORSEMENT_20 = 0xc;
const TBS_OWNERAUTH_TYPE_STORAGE_20 = 0xd;
const TBS_CONTEXT_VERSION_TWO = 0x2;
const TPM_WNF_INFO_CLEAR_SUCCESSFUL = 0x1;
const TPM_WNF_INFO_OWNERSHIP_SUCCESSFUL = 0x2;
const TPM_WNF_INFO_NO_REBOOT_REQUIRED = 0x1;
const TPM_VERSION_UNKNOWN = 0x0;
const TPM_VERSION_12 = 0x1;
const TPM_VERSION_20 = 0x2;
const TPM_IFTYPE_UNKNOWN = 0x0;
const TPM_IFTYPE_1 = 0x1;
const TPM_IFTYPE_TRUSTZONE = 0x2;
const TPM_IFTYPE_HW = 0x3;
const TPM_IFTYPE_EMULATOR = 0x4;
const TPM_IFTYPE_SPB = 0x5;
const TBS_TCGLOG_SRTM_CURRENT = 0x0;
const TBS_TCGLOG_DRTM_CURRENT = 0x1;
const TBS_TCGLOG_SRTM_BOOT = 0x2;
const TBS_TCGLOG_SRTM_RESUME = 0x3;
const TBS_TCGLOG_DRTM_BOOT = 0x4;
const TBS_TCGLOG_DRTM_RESUME = 0x5;
