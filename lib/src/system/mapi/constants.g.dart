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

const MAPI_OLE = 0x1;
const MAPI_OLE_STATIC = 0x2;
const MAPI_ORIG = 0x0;
const MAPI_TO = 0x1;
const MAPI_CC = 0x2;
const MAPI_BCC = 0x3;
const MAPI_UNREAD = 0x1;
const MAPI_RECEIPT_REQUESTED = 0x2;
const MAPI_SENT = 0x4;
const MAPI_LOGON_UI = 0x1;
const MAPI_PASSWORD_UI = 0x20000;
const MAPI_NEW_SESSION = 0x2;
const MAPI_FORCE_DOWNLOAD = 0x1000;
const MAPI_EXTENDED = 0x20;
const MAPI_DIALOG = 0x8;
const MAPI_FORCE_UNICODE = 0x40000;
const MAPI_UNREAD_ONLY = 0x20;
const MAPI_GUARANTEE_FIFO = 0x100;
const MAPI_LONG_MSGID = 0x4000;
const MAPI_PEEK = 0x80;
const MAPI_SUPPRESS_ATTACH = 0x800;
const MAPI_ENVELOPE_ONLY = 0x40;
const MAPI_BODY_AS_FILE = 0x200;
const MAPI_AB_NOMODIFY = 0x400;
const SUCCESS_SUCCESS = 0x0;
const MAPI_USER_ABORT = 0x1;
const MAPI_E_USER_ABORT = 0x1;
const MAPI_E_FAILURE = 0x2;
const MAPI_E_LOGON_FAILURE = 0x3;
const MAPI_E_LOGIN_FAILURE = 0x3;
const MAPI_E_DISK_FULL = 0x4;
const MAPI_E_INSUFFICIENT_MEMORY = 0x5;
const MAPI_E_ACCESS_DENIED = 0x6;
const MAPI_E_TOO_MANY_SESSIONS = 0x8;
const MAPI_E_TOO_MANY_FILES = 0x9;
const MAPI_E_TOO_MANY_RECIPIENTS = 0xa;
const MAPI_E_ATTACHMENT_NOT_FOUND = 0xb;
const MAPI_E_ATTACHMENT_OPEN_FAILURE = 0xc;
const MAPI_E_ATTACHMENT_WRITE_FAILURE = 0xd;
const MAPI_E_UNKNOWN_RECIPIENT = 0xe;
const MAPI_E_BAD_RECIPTYPE = 0xf;
const MAPI_E_NO_MESSAGES = 0x10;
const MAPI_E_INVALID_MESSAGE = 0x11;
const MAPI_E_TEXT_TOO_LARGE = 0x12;
const MAPI_E_INVALID_SESSION = 0x13;
const MAPI_E_TYPE_NOT_SUPPORTED = 0x14;
const MAPI_E_AMBIGUOUS_RECIPIENT = 0x15;
const MAPI_E_AMBIG_RECIP = 0x15;
const MAPI_E_MESSAGE_IN_USE = 0x16;
const MAPI_E_NETWORK_FAILURE = 0x17;
const MAPI_E_INVALID_EDITFIELDS = 0x18;
const MAPI_E_INVALID_RECIPS = 0x19;
const MAPI_E_NOT_SUPPORTED = 0x1a;
const MAPI_E_UNICODE_NOT_SUPPORTED = 0x1b;
const MAPI_E_ATTACHMENT_TOO_LARGE = 0x1c;
