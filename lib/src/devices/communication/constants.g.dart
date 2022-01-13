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

const MDM_COMPRESSION = 0x1;
const MDM_ERROR_CONTROL = 0x2;
const MDM_FORCED_EC = 0x4;
const MDM_CELLULAR = 0x8;
const MDM_FLOWCONTROL_HARD = 0x10;
const MDM_FLOWCONTROL_SOFT = 0x20;
const MDM_CCITT_OVERRIDE = 0x40;
const MDM_SPEED_ADJUST = 0x80;
const MDM_TONE_DIAL = 0x100;
const MDM_BLIND_DIAL = 0x200;
const MDM_V23_OVERRIDE = 0x400;
const MDM_DIAGNOSTICS = 0x800;
const MDM_MASK_BEARERMODE = 0xf000;
const MDM_SHIFT_BEARERMODE = 0xc;
const MDM_MASK_PROTOCOLID = 0xf0000;
const MDM_SHIFT_PROTOCOLID = 0x10;
const MDM_MASK_PROTOCOLDATA = 0xff00000;
const MDM_SHIFT_PROTOCOLDATA = 0x14;
const MDM_SHIFT_PROTOCOLINFO = 0x10;
const MDM_SHIFT_EXTENDEDINFO = 0xc;
const MDM_BEARERMODE_ANALOG = 0x0;
const MDM_BEARERMODE_ISDN = 0x1;
const MDM_BEARERMODE_GSM = 0x2;
const MDM_PROTOCOLID_DEFAULT = 0x0;
const MDM_PROTOCOLID_HDLCPPP = 0x1;
const MDM_PROTOCOLID_V128 = 0x2;
const MDM_PROTOCOLID_X75 = 0x3;
const MDM_PROTOCOLID_V110 = 0x4;
const MDM_PROTOCOLID_V120 = 0x5;
const MDM_PROTOCOLID_AUTO = 0x6;
const MDM_PROTOCOLID_ANALOG = 0x7;
const MDM_PROTOCOLID_GPRS = 0x8;
const MDM_PROTOCOLID_PIAFS = 0x9;
const MDM_SHIFT_HDLCPPP_SPEED = 0x0;
const MDM_MASK_HDLCPPP_SPEED = 0x7;
const MDM_HDLCPPP_SPEED_DEFAULT = 0x0;
const MDM_HDLCPPP_SPEED_64K = 0x1;
const MDM_HDLCPPP_SPEED_56K = 0x2;
const MDM_SHIFT_HDLCPPP_AUTH = 0x3;
const MDM_HDLCPPP_AUTH_DEFAULT = 0x0;
const MDM_HDLCPPP_AUTH_NONE = 0x1;
const MDM_HDLCPPP_AUTH_PAP = 0x2;
const MDM_HDLCPPP_AUTH_CHAP = 0x3;
const MDM_HDLCPPP_AUTH_MSCHAP = 0x4;
const MDM_SHIFT_HDLCPPP_ML = 0x6;
const MDM_HDLCPPP_ML_DEFAULT = 0x0;
const MDM_HDLCPPP_ML_NONE = 0x1;
const MDM_HDLCPPP_ML_2 = 0x2;
const MDM_SHIFT_V120_SPEED = 0x0;
const MDM_MASK_V120_SPEED = 0x7;
const MDM_V120_SPEED_DEFAULT = 0x0;
const MDM_V120_SPEED_64K = 0x1;
const MDM_V120_SPEED_56K = 0x2;
const MDM_SHIFT_V120_ML = 0x6;
const MDM_V120_ML_DEFAULT = 0x0;
const MDM_V120_ML_NONE = 0x1;
const MDM_V120_ML_2 = 0x2;
const MDM_SHIFT_X75_DATA = 0x0;
const MDM_MASK_X75_DATA = 0x7;
const MDM_X75_DATA_DEFAULT = 0x0;
const MDM_X75_DATA_64K = 0x1;
const MDM_X75_DATA_128K = 0x2;
const MDM_X75_DATA_T_70 = 0x3;
const MDM_X75_DATA_BTX = 0x4;
const MDM_SHIFT_V110_SPEED = 0x0;
const MDM_MASK_V110_SPEED = 0xf;
const MDM_V110_SPEED_DEFAULT = 0x0;
const MDM_V110_SPEED_1DOT2K = 0x1;
const MDM_V110_SPEED_2DOT4K = 0x2;
const MDM_V110_SPEED_4DOT8K = 0x3;
const MDM_V110_SPEED_9DOT6K = 0x4;
const MDM_V110_SPEED_12DOT0K = 0x5;
const MDM_V110_SPEED_14DOT4K = 0x6;
const MDM_V110_SPEED_19DOT2K = 0x7;
const MDM_V110_SPEED_28DOT8K = 0x8;
const MDM_V110_SPEED_38DOT4K = 0x9;
const MDM_V110_SPEED_57DOT6K = 0xa;
const MDM_SHIFT_AUTO_SPEED = 0x0;
const MDM_MASK_AUTO_SPEED = 0x7;
const MDM_AUTO_SPEED_DEFAULT = 0x0;
const MDM_SHIFT_AUTO_ML = 0x6;
const MDM_AUTO_ML_DEFAULT = 0x0;
const MDM_AUTO_ML_NONE = 0x1;
const MDM_AUTO_ML_2 = 0x2;
const MDM_ANALOG_RLP_ON = 0x0;
const MDM_ANALOG_RLP_OFF = 0x1;
const MDM_ANALOG_V34 = 0x2;
const MDM_PIAFS_INCOMING = 0x0;
const MDM_PIAFS_OUTGOING = 0x1;
const SID_3GPP_SUPSVCMODEL = 0x0;
const MAXLENGTH_NAI = 0x48;
const MAXLENGTH_UICCDATASTORE = 0xa;
