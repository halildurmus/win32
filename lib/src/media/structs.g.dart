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
import '../combase.dart';
import '../guid.dart';
import '../media/structs.g.dart';

/// {@category Struct}
class MMTIME extends Struct {
  @Uint32()
  external int wType;

  external _MMTIME__u_e__Union u;
}

/// {@category Struct}
class _MMTIME__u_e__Union extends Union {
  @Uint32()
  external int ms;

  @Uint32()
  external int sample;

  @Uint32()
  external int cb;

  @Uint32()
  external int ticks;

  external _MMTIME__u_e__Union__smpte_e__Struct smpte;

  external _MMTIME__u_e__Union__midi_e__Struct midi;
}

/// {@category Struct}
class _MMTIME__u_e__Union__smpte_e__Struct extends Struct {
  @Uint8()
  external int hour;

  @Uint8()
  external int min;

  @Uint8()
  external int sec;

  @Uint8()
  external int frame;

  @Uint8()
  external int fps;

  @Uint8()
  external int dummy;

  @Array(2)
  external Array<Uint8> pad;
}

extension MMTIME__u_e__Union_Extension on MMTIME {
  int get hour => this.u.smpte.hour;
  set hour(int value) => this.u.smpte.hour = value;

  int get min => this.u.smpte.min;
  set min(int value) => this.u.smpte.min = value;

  int get sec => this.u.smpte.sec;
  set sec(int value) => this.u.smpte.sec = value;

  int get frame => this.u.smpte.frame;
  set frame(int value) => this.u.smpte.frame = value;

  int get fps => this.u.smpte.fps;
  set fps(int value) => this.u.smpte.fps = value;

  int get dummy => this.u.smpte.dummy;
  set dummy(int value) => this.u.smpte.dummy = value;

  Array<Uint8> get pad => this.u.smpte.pad;
  set pad(Array<Uint8> value) => this.u.smpte.pad = value;
}

/// {@category Struct}
@Packed(1)
class _MMTIME__u_e__Union__midi_e__Struct extends Struct {
  @Uint32()
  external int songptrpos;
}

extension MMTIME__u_e__Union_Extension_1 on MMTIME {
  int get songptrpos => this.u.midi.songptrpos;
  set songptrpos(int value) => this.u.midi.songptrpos = value;
}

extension MMTIME_Extension on MMTIME {
  int get ms => this.u.ms;
  set ms(int value) => this.u.ms = value;

  int get sample => this.u.sample;
  set sample(int value) => this.u.sample = value;

  int get cb => this.u.cb;
  set cb(int value) => this.u.cb = value;

  int get ticks => this.u.ticks;
  set ticks(int value) => this.u.ticks = value;

  _MMTIME__u_e__Union__smpte_e__Struct get smpte => this.u.smpte;
  set smpte(_MMTIME__u_e__Union__smpte_e__Struct value) => this.u.smpte = value;

  _MMTIME__u_e__Union__midi_e__Struct get midi => this.u.midi;
  set midi(_MMTIME__u_e__Union__midi_e__Struct value) => this.u.midi = value;
}

/// {@category Struct}
class TIMECAPS extends Struct {
  @Uint32()
  external int wPeriodMin;

  @Uint32()
  external int wPeriodMax;
}

/// {@category Struct}
class TIMECODE extends Union {
  external _TIMECODE__Anonymous_e__Struct Anonymous;

  @Uint64()
  external int qw;
}

/// {@category Struct}
class _TIMECODE__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int wFrameRate;

  @Uint16()
  external int wFrameFract;

  @Uint32()
  external int dwFrames;
}

extension TIMECODE_Extension on TIMECODE {
  int get wFrameRate => this.Anonymous.wFrameRate;
  set wFrameRate(int value) => this.Anonymous.wFrameRate = value;

  int get wFrameFract => this.Anonymous.wFrameFract;
  set wFrameFract(int value) => this.Anonymous.wFrameFract = value;

  int get dwFrames => this.Anonymous.dwFrames;
  set dwFrames(int value) => this.Anonymous.dwFrames = value;
}

/// {@category Struct}
class TIMECODE_SAMPLE extends Struct {
  @Int64()
  external int qwTick;

  external TIMECODE timecode;

  @Uint32()
  external int dwUser;

  @Uint32()
  external int dwFlags;
}
