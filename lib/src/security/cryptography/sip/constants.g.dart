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

const MSSIP_FLAGS_PROHIBIT_RESIZE_ON_CREATE = 0x10000;
const MSSIP_FLAGS_USE_CATALOG = 0x20000;
const MSSIP_FLAGS_MULTI_HASH = 0x40000;
const SPC_INC_PE_RESOURCES_FLAG = 0x80;
const SPC_INC_PE_DEBUG_INFO_FLAG = 0x40;
const SPC_INC_PE_IMPORT_ADDR_TABLE_FLAG = 0x20;
const SPC_EXC_PE_PAGE_HASHES_FLAG = 0x10;
const SPC_INC_PE_PAGE_HASHES_FLAG = 0x100;
const SPC_DIGEST_GENERATE_FLAG = 0x200;
const SPC_DIGEST_SIGN_FLAG = 0x400;
const SPC_DIGEST_SIGN_EX_FLAG = 0x4000;
const SPC_RELAXED_PE_MARKER_CHECK = 0x800;
const SPC_MARKER_CHECK_SKIP_SIP_INDIRECT_DATA_FLAG = 0x1;
const SPC_MARKER_CHECK_CURRENTLY_SUPPORTED_FLAGS = 0x1;
const MSSIP_ADDINFO_NONE = 0x0;
const MSSIP_ADDINFO_FLAT = 0x1;
const MSSIP_ADDINFO_CATMEMBER = 0x2;
const MSSIP_ADDINFO_BLOB = 0x3;
const MSSIP_ADDINFO_NONMSSIP = 0x1f4;
const SIP_CAP_SET_VERSION_2 = 0x2;
const SIP_CAP_SET_VERSION_3 = 0x3;
const SIP_CAP_SET_CUR_VER = 0x3;
const SIP_CAP_FLAG_SEALING = 0x1;
const SIP_MAX_MAGIC_NUMBER = 0x4;
