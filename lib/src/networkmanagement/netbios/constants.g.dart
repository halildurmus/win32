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

const NCBNAMSZ = 0x10;
const MAX_LANA = 0xfe;
const NAME_FLAGS_MASK = 0x87;
const GROUP_NAME = 0x80;
const UNIQUE_NAME = 0x0;
const REGISTERING = 0x0;
const REGISTERED = 0x4;
const DEREGISTERED = 0x5;
const DUPLICATE = 0x6;
const DUPLICATE_DEREG = 0x7;
const LISTEN_OUTSTANDING = 0x1;
const CALL_PENDING = 0x2;
const SESSION_ESTABLISHED = 0x3;
const HANGUP_PENDING = 0x4;
const HANGUP_COMPLETE = 0x5;
const SESSION_ABORTED = 0x6;
const NCBCALL = 0x10;
const NCBLISTEN = 0x11;
const NCBHANGUP = 0x12;
const NCBSEND = 0x14;
const NCBRECV = 0x15;
const NCBRECVANY = 0x16;
const NCBCHAINSEND = 0x17;
const NCBDGSEND = 0x20;
const NCBDGRECV = 0x21;
const NCBDGSENDBC = 0x22;
const NCBDGRECVBC = 0x23;
const NCBADDNAME = 0x30;
const NCBDELNAME = 0x31;
const NCBRESET = 0x32;
const NCBASTAT = 0x33;
const NCBSSTAT = 0x34;
const NCBCANCEL = 0x35;
const NCBADDGRNAME = 0x36;
const NCBENUM = 0x37;
const NCBUNLINK = 0x70;
const NCBSENDNA = 0x71;
const NCBCHAINSENDNA = 0x72;
const NCBLANSTALERT = 0x73;
const NCBACTION = 0x77;
const NCBFINDNAME = 0x78;
const NCBTRACE = 0x79;
const ASYNCH = 0x80;
const NRC_GOODRET = 0x0;
const NRC_BUFLEN = 0x1;
const NRC_ILLCMD = 0x3;
const NRC_CMDTMO = 0x5;
const NRC_INCOMP = 0x6;
const NRC_BADDR = 0x7;
const NRC_SNUMOUT = 0x8;
const NRC_NORES = 0x9;
const NRC_SCLOSED = 0xa;
const NRC_CMDCAN = 0xb;
const NRC_DUPNAME = 0xd;
const NRC_NAMTFUL = 0xe;
const NRC_ACTSES = 0xf;
const NRC_LOCTFUL = 0x11;
const NRC_REMTFUL = 0x12;
const NRC_ILLNN = 0x13;
const NRC_NOCALL = 0x14;
const NRC_NOWILD = 0x15;
const NRC_INUSE = 0x16;
const NRC_NAMERR = 0x17;
const NRC_SABORT = 0x18;
const NRC_NAMCONF = 0x19;
const NRC_IFBUSY = 0x21;
const NRC_TOOMANY = 0x22;
const NRC_BRIDGE = 0x23;
const NRC_CANOCCR = 0x24;
const NRC_CANCEL = 0x26;
const NRC_DUPENV = 0x30;
const NRC_ENVNOTDEF = 0x34;
const NRC_OSRESNOTAV = 0x35;
const NRC_MAXAPPS = 0x36;
const NRC_NOSAPS = 0x37;
const NRC_NORESOURCES = 0x38;
const NRC_INVADDRESS = 0x39;
const NRC_INVDDID = 0x3b;
const NRC_LOCKFAIL = 0x3c;
const NRC_OPENERR = 0x3f;
const NRC_SYSTEM = 0x40;
const NRC_PENDING = 0xff;
