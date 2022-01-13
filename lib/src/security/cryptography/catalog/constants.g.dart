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

const CRYPTCAT_MAX_MEMBERTAG = 0x40;
const CRYPTCAT_MEMBER_SORTED = 0x40000000;
const CRYPTCAT_ATTR_AUTHENTICATED = 0x10000000;
const CRYPTCAT_ATTR_UNAUTHENTICATED = 0x20000000;
const CRYPTCAT_ATTR_NAMEASCII = 0x1;
const CRYPTCAT_ATTR_NAMEOBJID = 0x2;
const CRYPTCAT_ATTR_DATAASCII = 0x10000;
const CRYPTCAT_ATTR_DATABASE64 = 0x20000;
const CRYPTCAT_ATTR_DATAREPLACE = 0x40000;
const CRYPTCAT_ATTR_NO_AUTO_COMPAT_ENTRY = 0x1000000;
const CRYPTCAT_E_AREA_HEADER = 0x0;
const CRYPTCAT_E_AREA_MEMBER = 0x10000;
const CRYPTCAT_E_AREA_ATTRIBUTE = 0x20000;
const CRYPTCAT_E_CDF_UNSUPPORTED = 0x1;
const CRYPTCAT_E_CDF_DUPLICATE = 0x2;
const CRYPTCAT_E_CDF_TAGNOTFOUND = 0x4;
const CRYPTCAT_E_CDF_MEMBER_FILE_PATH = 0x10001;
const CRYPTCAT_E_CDF_MEMBER_INDIRECTDATA = 0x10002;
const CRYPTCAT_E_CDF_MEMBER_FILENOTFOUND = 0x10004;
const CRYPTCAT_E_CDF_BAD_GUID_CONV = 0x20001;
const CRYPTCAT_E_CDF_ATTR_TOOFEWVALUES = 0x20002;
const CRYPTCAT_E_CDF_ATTR_TYPECOMBO = 0x20004;
const CRYPTCAT_ADDCATALOG_NONE = 0x0;
const CRYPTCAT_ADDCATALOG_HARDLINK = 0x1;
