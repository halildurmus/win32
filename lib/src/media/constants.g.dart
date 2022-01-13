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

const TIMERR_NOERROR = 0x0;
const TIMERR_NOCANDO = 0x61;
const TIMERR_STRUCT = 0x81;
const MAXPNAMELEN = 0x20;
const MAXERRORLENGTH = 0x100;
const MM_MICROSOFT = 0x1;
const MM_MIDI_MAPPER = 0x1;
const MM_WAVE_MAPPER = 0x2;
const MM_SNDBLST_MIDIOUT = 0x3;
const MM_SNDBLST_MIDIIN = 0x4;
const MM_SNDBLST_SYNTH = 0x5;
const MM_SNDBLST_WAVEOUT = 0x6;
const MM_SNDBLST_WAVEIN = 0x7;
const MM_ADLIB = 0x9;
const MM_MPU401_MIDIOUT = 0xa;
const MM_MPU401_MIDIIN = 0xb;
const MM_PC_JOYSTICK = 0xc;
const TIME_MS = 0x1;
const TIME_SAMPLES = 0x2;
const TIME_BYTES = 0x4;
const TIME_SMPTE = 0x8;
const TIME_MIDI = 0x10;
const TIME_TICKS = 0x20;
const MM_JOY1MOVE = 0x3a0;
const MM_JOY2MOVE = 0x3a1;
const MM_JOY1ZMOVE = 0x3a2;
const MM_JOY2ZMOVE = 0x3a3;
const MM_JOY1BUTTONDOWN = 0x3b5;
const MM_JOY2BUTTONDOWN = 0x3b6;
const MM_JOY1BUTTONUP = 0x3b7;
const MM_JOY2BUTTONUP = 0x3b8;
const MM_MCINOTIFY = 0x3b9;
const MM_WOM_OPEN = 0x3bb;
const MM_WOM_CLOSE = 0x3bc;
const MM_WOM_DONE = 0x3bd;
const MM_WIM_OPEN = 0x3be;
const MM_WIM_CLOSE = 0x3bf;
const MM_WIM_DATA = 0x3c0;
const MM_MIM_OPEN = 0x3c1;
const MM_MIM_CLOSE = 0x3c2;
const MM_MIM_DATA = 0x3c3;
const MM_MIM_LONGDATA = 0x3c4;
const MM_MIM_ERROR = 0x3c5;
const MM_MIM_LONGERROR = 0x3c6;
const MM_MOM_OPEN = 0x3c7;
const MM_MOM_CLOSE = 0x3c8;
const MM_MOM_DONE = 0x3c9;
const MM_DRVM_OPEN = 0x3d0;
const MM_DRVM_CLOSE = 0x3d1;
const MM_DRVM_DATA = 0x3d2;
const MM_DRVM_ERROR = 0x3d3;
const MM_STREAM_OPEN = 0x3d4;
const MM_STREAM_CLOSE = 0x3d5;
const MM_STREAM_DONE = 0x3d6;
const MM_STREAM_ERROR = 0x3d7;
const MM_MOM_POSITIONCB = 0x3ca;
const MM_MCISIGNAL = 0x3cb;
const MM_MIM_MOREDATA = 0x3cc;
const MM_MIXM_LINE_CHANGE = 0x3d0;
const MM_MIXM_CONTROL_CHANGE = 0x3d1;
const MMSYSERR_BASE = 0x0;
const WAVERR_BASE = 0x20;
const MIDIERR_BASE = 0x40;
const TIMERR_BASE = 0x60;
const JOYERR_BASE = 0xa0;
const MCIERR_BASE = 0x100;
const MIXERR_BASE = 0x400;
const MCI_STRING_OFFSET = 0x200;
const MCI_VD_OFFSET = 0x400;
const MCI_CD_OFFSET = 0x440;
const MCI_WAVE_OFFSET = 0x480;
const MCI_SEQ_OFFSET = 0x4c0;
const MMSYSERR_NOERROR = 0x0;
const MMSYSERR_ERROR = 0x1;
const MMSYSERR_BADDEVICEID = 0x2;
const MMSYSERR_NOTENABLED = 0x3;
const MMSYSERR_ALLOCATED = 0x4;
const MMSYSERR_INVALHANDLE = 0x5;
const MMSYSERR_NODRIVER = 0x6;
const MMSYSERR_NOMEM = 0x7;
const MMSYSERR_NOTSUPPORTED = 0x8;
const MMSYSERR_BADERRNUM = 0x9;
const MMSYSERR_INVALFLAG = 0xa;
const MMSYSERR_INVALPARAM = 0xb;
const MMSYSERR_HANDLEBUSY = 0xc;
const MMSYSERR_INVALIDALIAS = 0xd;
const MMSYSERR_BADDB = 0xe;
const MMSYSERR_KEYNOTFOUND = 0xf;
const MMSYSERR_READERROR = 0x10;
const MMSYSERR_WRITEERROR = 0x11;
const MMSYSERR_DELETEERROR = 0x12;
const MMSYSERR_VALNOTFOUND = 0x13;
const MMSYSERR_NODRIVERCB = 0x14;
const MMSYSERR_MOREDATA = 0x15;
const MMSYSERR_LASTERROR = 0x15;
const TIME_ONESHOT = 0x0;
const TIME_PERIODIC = 0x1;
const TIME_CALLBACK_FUNCTION = 0x0;
const TIME_CALLBACK_EVENT_SET = 0x10;
const TIME_CALLBACK_EVENT_PULSE = 0x20;
const TIME_KILL_SYNCHRONOUS = 0x100;
