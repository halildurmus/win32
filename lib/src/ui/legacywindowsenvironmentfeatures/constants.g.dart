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

const EVCF_HASSETTINGS = 0x1;
const EVCF_ENABLEBYDEFAULT = 0x2;
const EVCF_REMOVEFROMLIST = 0x4;
const EVCF_ENABLEBYDEFAULT_AUTO = 0x8;
const EVCF_DONTSHOWIFZERO = 0x10;
const EVCF_SETTINGSMODE = 0x20;
const EVCF_OUTOFDISKSPACE = 0x40;
const EVCF_USERCONSENTOBTAINED = 0x80;
const EVCF_SYSTEMAUTORUN = 0x100;
const EVCCBF_LASTNOTIFICATION = 0x1;
const STATEBITS_FLAT = 0x1;
const REC_S_IDIDTHEUPDATES = 0x41000;
const REC_S_NOTCOMPLETE = 0x41001;
const REC_S_NOTCOMPLETEBUTPROPAGATE = 0x41002;
const REC_E_ABORTED = 0x80041000;
const REC_E_NOCALLBACK = 0x80041001;
const REC_E_NORESIDUES = 0x80041002;
const REC_E_TOODIFFERENT = 0x80041003;
const REC_E_INEEDTODOTHEUPDATES = 0x80041004;
