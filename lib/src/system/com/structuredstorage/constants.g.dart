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

const PROPSETFLAG_DEFAULT = 0x0;
const PROPSETFLAG_NONSIMPLE = 0x1;
const PROPSETFLAG_ANSI = 0x2;
const PROPSETFLAG_UNBUFFERED = 0x4;
const PROPSETFLAG_CASE_SENSITIVE = 0x8;
const PROPSET_BEHAVIOR_CASE_SENSITIVE = 0x1;
const PID_DICTIONARY = 0x0;
const PID_CODEPAGE = 0x1;
const PID_FIRST_USABLE = 0x2;
const PID_FIRST_NAME_DEFAULT = 0xfff;
const PID_LOCALE = 0x80000000;
const PID_MODIFY_TIME = 0x80000001;
const PID_SECURITY = 0x80000002;
const PID_BEHAVIOR = 0x80000003;
const PID_ILLEGAL = 0xffffffff;
const PID_MIN_READONLY = 0x80000000;
const PID_MAX_READONLY = 0xbfffffff;
const PRSPEC_INVALID = 0xffffffff;
const PROPSETHDR_OSVERSION_UNKNOWN = 0xffffffff;
const PIDDI_THUMBNAIL = 0x2;
const PIDSI_TITLE = 0x2;
const PIDSI_SUBJECT = 0x3;
const PIDSI_AUTHOR = 0x4;
const PIDSI_KEYWORDS = 0x5;
const PIDSI_COMMENTS = 0x6;
const PIDSI_TEMPLATE = 0x7;
const PIDSI_LASTAUTHOR = 0x8;
const PIDSI_REVNUMBER = 0x9;
const PIDSI_EDITTIME = 0xa;
const PIDSI_LASTPRINTED = 0xb;
const PIDSI_CREATE_DTM = 0xc;
const PIDSI_LASTSAVE_DTM = 0xd;
const PIDSI_PAGECOUNT = 0xe;
const PIDSI_WORDCOUNT = 0xf;
const PIDSI_CHARCOUNT = 0x10;
const PIDSI_THUMBNAIL = 0x11;
const PIDSI_APPNAME = 0x12;
const PIDSI_DOC_SECURITY = 0x13;
const PIDDSI_CATEGORY = 0x2;
const PIDDSI_PRESFORMAT = 0x3;
const PIDDSI_BYTECOUNT = 0x4;
const PIDDSI_LINECOUNT = 0x5;
const PIDDSI_PARCOUNT = 0x6;
const PIDDSI_SLIDECOUNT = 0x7;
const PIDDSI_NOTECOUNT = 0x8;
const PIDDSI_HIDDENCOUNT = 0x9;
const PIDDSI_MMCLIPCOUNT = 0xa;
const PIDDSI_SCALE = 0xb;
const PIDDSI_HEADINGPAIR = 0xc;
const PIDDSI_DOCPARTS = 0xd;
const PIDDSI_MANAGER = 0xe;
const PIDDSI_COMPANY = 0xf;
const PIDDSI_LINKSDIRTY = 0x10;
const PIDMSI_EDITOR = 0x2;
const PIDMSI_SUPPLIER = 0x3;
const PIDMSI_SOURCE = 0x4;
const PIDMSI_SEQUENCE_NO = 0x5;
const PIDMSI_PROJECT = 0x6;
const PIDMSI_STATUS = 0x7;
const PIDMSI_OWNER = 0x8;
const PIDMSI_RATING = 0x9;
const PIDMSI_PRODUCTION = 0xa;
const PIDMSI_COPYRIGHT = 0xb;
const CWCSTORAGENAME = 0x20;
const STGOPTIONS_VERSION = 0x1;
const CCH_MAX_PROPSTG_NAME = 0x1f;
