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
import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../media/devicemanager/structs.g.dart';
import '../../specialTypes.dart';

/// {@category Struct}
@Packed(1)
class MTP_COMMAND_DATA_IN extends Struct {
  @Uint16()
  external int OpCode;

  @Uint32()
  external int NumParams;

  @Array(5)
  external Array<Uint32> Params;

  @Uint32()
  external int NextPhase;

  @Uint32()
  external int CommandWriteDataSize;

  @Array(1)
  external Array<Uint8> CommandWriteData;
}

/// {@category Struct}
@Packed(1)
class MTP_COMMAND_DATA_OUT extends Struct {
  @Uint16()
  external int ResponseCode;

  @Uint32()
  external int NumParams;

  @Array(5)
  external Array<Uint32> Params;

  @Uint32()
  external int CommandReadDataSize;

  @Array(1)
  external Array<Uint8> CommandReadData;
}

/// {@category Struct}
class OPAQUECOMMAND extends Struct {
  external GUID guidCommand;

  @Uint32()
  external int dwDataLen;

  external Pointer<Uint8> pData;

  @Array(20)
  external Array<Uint8> abMAC;
}

/// {@category Struct}
class WMDMDATETIME extends Struct {
  @Uint16()
  external int wYear;

  @Uint16()
  external int wMonth;

  @Uint16()
  external int wDay;

  @Uint16()
  external int wHour;

  @Uint16()
  external int wMinute;

  @Uint16()
  external int wSecond;
}

/// {@category Struct}
class WMDMDetermineMaxPropStringLen extends Union {
  @Array(27)
  external Array<Uint16> _sz001;

  String get sz001 {
    final charCodes = <int>[];
    for (var i = 0; i < 27; i++) {
      charCodes.add(_sz001[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz001(String value) {
    final stringToStore = value.padRight(27, '\x00');
    for (var i = 0; i < 27; i++) {
      _sz001[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(31)
  external Array<Uint16> _sz002;

  String get sz002 {
    final charCodes = <int>[];
    for (var i = 0; i < 31; i++) {
      charCodes.add(_sz002[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz002(String value) {
    final stringToStore = value.padRight(31, '\x00');
    for (var i = 0; i < 31; i++) {
      _sz002[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(14)
  external Array<Uint16> _sz003;

  String get sz003 {
    final charCodes = <int>[];
    for (var i = 0; i < 14; i++) {
      charCodes.add(_sz003[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz003(String value) {
    final stringToStore = value.padRight(14, '\x00');
    for (var i = 0; i < 14; i++) {
      _sz003[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(16)
  external Array<Uint16> _sz004;

  String get sz004 {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_sz004[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz004(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _sz004[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(22)
  external Array<Uint16> _sz005;

  String get sz005 {
    final charCodes = <int>[];
    for (var i = 0; i < 22; i++) {
      charCodes.add(_sz005[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz005(String value) {
    final stringToStore = value.padRight(22, '\x00');
    for (var i = 0; i < 22; i++) {
      _sz005[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(14)
  external Array<Uint16> _sz006;

  String get sz006 {
    final charCodes = <int>[];
    for (var i = 0; i < 14; i++) {
      charCodes.add(_sz006[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz006(String value) {
    final stringToStore = value.padRight(14, '\x00');
    for (var i = 0; i < 14; i++) {
      _sz006[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(20)
  external Array<Uint16> _sz007;

  String get sz007 {
    final charCodes = <int>[];
    for (var i = 0; i < 20; i++) {
      charCodes.add(_sz007[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz007(String value) {
    final stringToStore = value.padRight(20, '\x00');
    for (var i = 0; i < 20; i++) {
      _sz007[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(20)
  external Array<Uint16> _sz008;

  String get sz008 {
    final charCodes = <int>[];
    for (var i = 0; i < 20; i++) {
      charCodes.add(_sz008[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz008(String value) {
    final stringToStore = value.padRight(20, '\x00');
    for (var i = 0; i < 20; i++) {
      _sz008[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(22)
  external Array<Uint16> _sz009;

  String get sz009 {
    final charCodes = <int>[];
    for (var i = 0; i < 22; i++) {
      charCodes.add(_sz009[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz009(String value) {
    final stringToStore = value.padRight(22, '\x00');
    for (var i = 0; i < 22; i++) {
      _sz009[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(11)
  external Array<Uint16> _sz010;

  String get sz010 {
    final charCodes = <int>[];
    for (var i = 0; i < 11; i++) {
      charCodes.add(_sz010[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz010(String value) {
    final stringToStore = value.padRight(11, '\x00');
    for (var i = 0; i < 11; i++) {
      _sz010[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(12)
  external Array<Uint16> _sz011;

  String get sz011 {
    final charCodes = <int>[];
    for (var i = 0; i < 12; i++) {
      charCodes.add(_sz011[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz011(String value) {
    final stringToStore = value.padRight(12, '\x00');
    for (var i = 0; i < 12; i++) {
      _sz011[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(17)
  external Array<Uint16> _sz012;

  String get sz012 {
    final charCodes = <int>[];
    for (var i = 0; i < 17; i++) {
      charCodes.add(_sz012[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz012(String value) {
    final stringToStore = value.padRight(17, '\x00');
    for (var i = 0; i < 17; i++) {
      _sz012[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(17)
  external Array<Uint16> _sz013;

  String get sz013 {
    final charCodes = <int>[];
    for (var i = 0; i < 17; i++) {
      charCodes.add(_sz013[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz013(String value) {
    final stringToStore = value.padRight(17, '\x00');
    for (var i = 0; i < 17; i++) {
      _sz013[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(16)
  external Array<Uint16> _sz014;

  String get sz014 {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_sz014[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz014(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _sz014[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(17)
  external Array<Uint16> _sz015;

  String get sz015 {
    final charCodes = <int>[];
    for (var i = 0; i < 17; i++) {
      charCodes.add(_sz015[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz015(String value) {
    final stringToStore = value.padRight(17, '\x00');
    for (var i = 0; i < 17; i++) {
      _sz015[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(11)
  external Array<Uint16> _sz016;

  String get sz016 {
    final charCodes = <int>[];
    for (var i = 0; i < 11; i++) {
      charCodes.add(_sz016[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz016(String value) {
    final stringToStore = value.padRight(11, '\x00');
    for (var i = 0; i < 11; i++) {
      _sz016[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(11)
  external Array<Uint16> _sz017;

  String get sz017 {
    final charCodes = <int>[];
    for (var i = 0; i < 11; i++) {
      charCodes.add(_sz017[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz017(String value) {
    final stringToStore = value.padRight(11, '\x00');
    for (var i = 0; i < 11; i++) {
      _sz017[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(15)
  external Array<Uint16> _sz018;

  String get sz018 {
    final charCodes = <int>[];
    for (var i = 0; i < 15; i++) {
      charCodes.add(_sz018[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz018(String value) {
    final stringToStore = value.padRight(15, '\x00');
    for (var i = 0; i < 15; i++) {
      _sz018[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(22)
  external Array<Uint16> _sz019;

  String get sz019 {
    final charCodes = <int>[];
    for (var i = 0; i < 22; i++) {
      charCodes.add(_sz019[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz019(String value) {
    final stringToStore = value.padRight(22, '\x00');
    for (var i = 0; i < 22; i++) {
      _sz019[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(20)
  external Array<Uint16> _sz020;

  String get sz020 {
    final charCodes = <int>[];
    for (var i = 0; i < 20; i++) {
      charCodes.add(_sz020[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz020(String value) {
    final stringToStore = value.padRight(20, '\x00');
    for (var i = 0; i < 20; i++) {
      _sz020[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(22)
  external Array<Uint16> _sz021;

  String get sz021 {
    final charCodes = <int>[];
    for (var i = 0; i < 22; i++) {
      charCodes.add(_sz021[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz021(String value) {
    final stringToStore = value.padRight(22, '\x00');
    for (var i = 0; i < 22; i++) {
      _sz021[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(21)
  external Array<Uint16> _sz022;

  String get sz022 {
    final charCodes = <int>[];
    for (var i = 0; i < 21; i++) {
      charCodes.add(_sz022[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz022(String value) {
    final stringToStore = value.padRight(21, '\x00');
    for (var i = 0; i < 21; i++) {
      _sz022[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(24)
  external Array<Uint16> _sz023;

  String get sz023 {
    final charCodes = <int>[];
    for (var i = 0; i < 24; i++) {
      charCodes.add(_sz023[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz023(String value) {
    final stringToStore = value.padRight(24, '\x00');
    for (var i = 0; i < 24; i++) {
      _sz023[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(20)
  external Array<Uint16> _sz024;

  String get sz024 {
    final charCodes = <int>[];
    for (var i = 0; i < 20; i++) {
      charCodes.add(_sz024[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz024(String value) {
    final stringToStore = value.padRight(20, '\x00');
    for (var i = 0; i < 20; i++) {
      _sz024[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(10)
  external Array<Uint16> _sz025;

  String get sz025 {
    final charCodes = <int>[];
    for (var i = 0; i < 10; i++) {
      charCodes.add(_sz025[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz025(String value) {
    final stringToStore = value.padRight(10, '\x00');
    for (var i = 0; i < 10; i++) {
      _sz025[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(14)
  external Array<Uint16> _sz026;

  String get sz026 {
    final charCodes = <int>[];
    for (var i = 0; i < 14; i++) {
      charCodes.add(_sz026[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz026(String value) {
    final stringToStore = value.padRight(14, '\x00');
    for (var i = 0; i < 14; i++) {
      _sz026[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(11)
  external Array<Uint16> _sz027;

  String get sz027 {
    final charCodes = <int>[];
    for (var i = 0; i < 11; i++) {
      charCodes.add(_sz027[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz027(String value) {
    final stringToStore = value.padRight(11, '\x00');
    for (var i = 0; i < 11; i++) {
      _sz027[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(11)
  external Array<Uint16> _sz028;

  String get sz028 {
    final charCodes = <int>[];
    for (var i = 0; i < 11; i++) {
      charCodes.add(_sz028[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz028(String value) {
    final stringToStore = value.padRight(11, '\x00');
    for (var i = 0; i < 11; i++) {
      _sz028[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(13)
  external Array<Uint16> _sz029;

  String get sz029 {
    final charCodes = <int>[];
    for (var i = 0; i < 13; i++) {
      charCodes.add(_sz029[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz029(String value) {
    final stringToStore = value.padRight(13, '\x00');
    for (var i = 0; i < 13; i++) {
      _sz029[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(17)
  external Array<Uint16> _sz030;

  String get sz030 {
    final charCodes = <int>[];
    for (var i = 0; i < 17; i++) {
      charCodes.add(_sz030[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz030(String value) {
    final stringToStore = value.padRight(17, '\x00');
    for (var i = 0; i < 17; i++) {
      _sz030[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(16)
  external Array<Uint16> _sz031;

  String get sz031 {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_sz031[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz031(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _sz031[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(17)
  external Array<Uint16> _sz032;

  String get sz032 {
    final charCodes = <int>[];
    for (var i = 0; i < 17; i++) {
      charCodes.add(_sz032[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz032(String value) {
    final stringToStore = value.padRight(17, '\x00');
    for (var i = 0; i < 17; i++) {
      _sz032[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(20)
  external Array<Uint16> _sz033;

  String get sz033 {
    final charCodes = <int>[];
    for (var i = 0; i < 20; i++) {
      charCodes.add(_sz033[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz033(String value) {
    final stringToStore = value.padRight(20, '\x00');
    for (var i = 0; i < 20; i++) {
      _sz033[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(19)
  external Array<Uint16> _sz034;

  String get sz034 {
    final charCodes = <int>[];
    for (var i = 0; i < 19; i++) {
      charCodes.add(_sz034[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz034(String value) {
    final stringToStore = value.padRight(19, '\x00');
    for (var i = 0; i < 19; i++) {
      _sz034[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(18)
  external Array<Uint16> _sz035;

  String get sz035 {
    final charCodes = <int>[];
    for (var i = 0; i < 18; i++) {
      charCodes.add(_sz035[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz035(String value) {
    final stringToStore = value.padRight(18, '\x00');
    for (var i = 0; i < 18; i++) {
      _sz035[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(18)
  external Array<Uint16> _sz036;

  String get sz036 {
    final charCodes = <int>[];
    for (var i = 0; i < 18; i++) {
      charCodes.add(_sz036[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz036(String value) {
    final stringToStore = value.padRight(18, '\x00');
    for (var i = 0; i < 18; i++) {
      _sz036[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(15)
  external Array<Uint16> _sz037;

  String get sz037 {
    final charCodes = <int>[];
    for (var i = 0; i < 15; i++) {
      charCodes.add(_sz037[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz037(String value) {
    final stringToStore = value.padRight(15, '\x00');
    for (var i = 0; i < 15; i++) {
      _sz037[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(14)
  external Array<Uint16> _sz041;

  String get sz041 {
    final charCodes = <int>[];
    for (var i = 0; i < 14; i++) {
      charCodes.add(_sz041[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz041(String value) {
    final stringToStore = value.padRight(14, '\x00');
    for (var i = 0; i < 14; i++) {
      _sz041[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(22)
  external Array<Uint16> _sz043;

  String get sz043 {
    final charCodes = <int>[];
    for (var i = 0; i < 22; i++) {
      charCodes.add(_sz043[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz043(String value) {
    final stringToStore = value.padRight(22, '\x00');
    for (var i = 0; i < 22; i++) {
      _sz043[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(16)
  external Array<Uint16> _sz044;

  String get sz044 {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_sz044[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz044(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _sz044[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(20)
  external Array<Uint16> _sz045;

  String get sz045 {
    final charCodes = <int>[];
    for (var i = 0; i < 20; i++) {
      charCodes.add(_sz045[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz045(String value) {
    final stringToStore = value.padRight(20, '\x00');
    for (var i = 0; i < 20; i++) {
      _sz045[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(14)
  external Array<Uint16> _sz046;

  String get sz046 {
    final charCodes = <int>[];
    for (var i = 0; i < 14; i++) {
      charCodes.add(_sz046[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz046(String value) {
    final stringToStore = value.padRight(14, '\x00');
    for (var i = 0; i < 14; i++) {
      _sz046[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(14)
  external Array<Uint16> _sz047;

  String get sz047 {
    final charCodes = <int>[];
    for (var i = 0; i < 14; i++) {
      charCodes.add(_sz047[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz047(String value) {
    final stringToStore = value.padRight(14, '\x00');
    for (var i = 0; i < 14; i++) {
      _sz047[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(12)
  external Array<Uint16> _sz048;

  String get sz048 {
    final charCodes = <int>[];
    for (var i = 0; i < 12; i++) {
      charCodes.add(_sz048[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz048(String value) {
    final stringToStore = value.padRight(12, '\x00');
    for (var i = 0; i < 12; i++) {
      _sz048[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(25)
  external Array<Uint16> _sz049;

  String get sz049 {
    final charCodes = <int>[];
    for (var i = 0; i < 25; i++) {
      charCodes.add(_sz049[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz049(String value) {
    final stringToStore = value.padRight(25, '\x00');
    for (var i = 0; i < 25; i++) {
      _sz049[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(26)
  external Array<Uint16> _sz050;

  String get sz050 {
    final charCodes = <int>[];
    for (var i = 0; i < 26; i++) {
      charCodes.add(_sz050[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz050(String value) {
    final stringToStore = value.padRight(26, '\x00');
    for (var i = 0; i < 26; i++) {
      _sz050[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(25)
  external Array<Uint16> _sz051;

  String get sz051 {
    final charCodes = <int>[];
    for (var i = 0; i < 25; i++) {
      charCodes.add(_sz051[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz051(String value) {
    final stringToStore = value.padRight(25, '\x00');
    for (var i = 0; i < 25; i++) {
      _sz051[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(16)
  external Array<Uint16> _sz052;

  String get sz052 {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_sz052[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz052(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _sz052[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(24)
  external Array<Uint16> _sz053;

  String get sz053 {
    final charCodes = <int>[];
    for (var i = 0; i < 24; i++) {
      charCodes.add(_sz053[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz053(String value) {
    final stringToStore = value.padRight(24, '\x00');
    for (var i = 0; i < 24; i++) {
      _sz053[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(15)
  external Array<Uint16> _sz054;

  String get sz054 {
    final charCodes = <int>[];
    for (var i = 0; i < 15; i++) {
      charCodes.add(_sz054[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz054(String value) {
    final stringToStore = value.padRight(15, '\x00');
    for (var i = 0; i < 15; i++) {
      _sz054[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(21)
  external Array<Uint16> _sz055;

  String get sz055 {
    final charCodes = <int>[];
    for (var i = 0; i < 21; i++) {
      charCodes.add(_sz055[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz055(String value) {
    final stringToStore = value.padRight(21, '\x00');
    for (var i = 0; i < 21; i++) {
      _sz055[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(16)
  external Array<Uint16> _sz056;

  String get sz056 {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_sz056[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz056(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _sz056[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(22)
  external Array<Uint16> _sz057;

  String get sz057 {
    final charCodes = <int>[];
    for (var i = 0; i < 22; i++) {
      charCodes.add(_sz057[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz057(String value) {
    final stringToStore = value.padRight(22, '\x00');
    for (var i = 0; i < 22; i++) {
      _sz057[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(14)
  external Array<Uint16> _sz058;

  String get sz058 {
    final charCodes = <int>[];
    for (var i = 0; i < 14; i++) {
      charCodes.add(_sz058[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz058(String value) {
    final stringToStore = value.padRight(14, '\x00');
    for (var i = 0; i < 14; i++) {
      _sz058[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(25)
  external Array<Uint16> _sz059;

  String get sz059 {
    final charCodes = <int>[];
    for (var i = 0; i < 25; i++) {
      charCodes.add(_sz059[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz059(String value) {
    final stringToStore = value.padRight(25, '\x00');
    for (var i = 0; i < 25; i++) {
      _sz059[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(18)
  external Array<Uint16> _sz060;

  String get sz060 {
    final charCodes = <int>[];
    for (var i = 0; i < 18; i++) {
      charCodes.add(_sz060[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz060(String value) {
    final stringToStore = value.padRight(18, '\x00');
    for (var i = 0; i < 18; i++) {
      _sz060[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(22)
  external Array<Uint16> _sz061;

  String get sz061 {
    final charCodes = <int>[];
    for (var i = 0; i < 22; i++) {
      charCodes.add(_sz061[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz061(String value) {
    final stringToStore = value.padRight(22, '\x00');
    for (var i = 0; i < 22; i++) {
      _sz061[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(26)
  external Array<Uint16> _sz062;

  String get sz062 {
    final charCodes = <int>[];
    for (var i = 0; i < 26; i++) {
      charCodes.add(_sz062[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz062(String value) {
    final stringToStore = value.padRight(26, '\x00');
    for (var i = 0; i < 26; i++) {
      _sz062[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(36)
  external Array<Uint16> _sz063;

  String get sz063 {
    final charCodes = <int>[];
    for (var i = 0; i < 36; i++) {
      charCodes.add(_sz063[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz063(String value) {
    final stringToStore = value.padRight(36, '\x00');
    for (var i = 0; i < 36; i++) {
      _sz063[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(23)
  external Array<Uint16> _sz064;

  String get sz064 {
    final charCodes = <int>[];
    for (var i = 0; i < 23; i++) {
      charCodes.add(_sz064[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz064(String value) {
    final stringToStore = value.padRight(23, '\x00');
    for (var i = 0; i < 23; i++) {
      _sz064[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(12)
  external Array<Uint16> _sz065;

  String get sz065 {
    final charCodes = <int>[];
    for (var i = 0; i < 12; i++) {
      charCodes.add(_sz065[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz065(String value) {
    final stringToStore = value.padRight(12, '\x00');
    for (var i = 0; i < 12; i++) {
      _sz065[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(24)
  external Array<Uint16> _sz066;

  String get sz066 {
    final charCodes = <int>[];
    for (var i = 0; i < 24; i++) {
      charCodes.add(_sz066[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz066(String value) {
    final stringToStore = value.padRight(24, '\x00');
    for (var i = 0; i < 24; i++) {
      _sz066[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(11)
  external Array<Uint16> _sz067;

  String get sz067 {
    final charCodes = <int>[];
    for (var i = 0; i < 11; i++) {
      charCodes.add(_sz067[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz067(String value) {
    final stringToStore = value.padRight(11, '\x00');
    for (var i = 0; i < 11; i++) {
      _sz067[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(12)
  external Array<Uint16> _sz068;

  String get sz068 {
    final charCodes = <int>[];
    for (var i = 0; i < 12; i++) {
      charCodes.add(_sz068[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz068(String value) {
    final stringToStore = value.padRight(12, '\x00');
    for (var i = 0; i < 12; i++) {
      _sz068[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(14)
  external Array<Uint16> _sz069;

  String get sz069 {
    final charCodes = <int>[];
    for (var i = 0; i < 14; i++) {
      charCodes.add(_sz069[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz069(String value) {
    final stringToStore = value.padRight(14, '\x00');
    for (var i = 0; i < 14; i++) {
      _sz069[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(20)
  external Array<Uint16> _sz070;

  String get sz070 {
    final charCodes = <int>[];
    for (var i = 0; i < 20; i++) {
      charCodes.add(_sz070[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz070(String value) {
    final stringToStore = value.padRight(20, '\x00');
    for (var i = 0; i < 20; i++) {
      _sz070[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(15)
  external Array<Uint16> _sz071;

  String get sz071 {
    final charCodes = <int>[];
    for (var i = 0; i < 15; i++) {
      charCodes.add(_sz071[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz071(String value) {
    final stringToStore = value.padRight(15, '\x00');
    for (var i = 0; i < 15; i++) {
      _sz071[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(14)
  external Array<Uint16> _sz072;

  String get sz072 {
    final charCodes = <int>[];
    for (var i = 0; i < 14; i++) {
      charCodes.add(_sz072[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz072(String value) {
    final stringToStore = value.padRight(14, '\x00');
    for (var i = 0; i < 14; i++) {
      _sz072[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(31)
  external Array<Uint16> _sz073;

  String get sz073 {
    final charCodes = <int>[];
    for (var i = 0; i < 31; i++) {
      charCodes.add(_sz073[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz073(String value) {
    final stringToStore = value.padRight(31, '\x00');
    for (var i = 0; i < 31; i++) {
      _sz073[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(24)
  external Array<Uint16> _sz074;

  String get sz074 {
    final charCodes = <int>[];
    for (var i = 0; i < 24; i++) {
      charCodes.add(_sz074[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz074(String value) {
    final stringToStore = value.padRight(24, '\x00');
    for (var i = 0; i < 24; i++) {
      _sz074[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(22)
  external Array<Uint16> _sz075;

  String get sz075 {
    final charCodes = <int>[];
    for (var i = 0; i < 22; i++) {
      charCodes.add(_sz075[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz075(String value) {
    final stringToStore = value.padRight(22, '\x00');
    for (var i = 0; i < 22; i++) {
      _sz075[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(24)
  external Array<Uint16> _sz076;

  String get sz076 {
    final charCodes = <int>[];
    for (var i = 0; i < 24; i++) {
      charCodes.add(_sz076[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz076(String value) {
    final stringToStore = value.padRight(24, '\x00');
    for (var i = 0; i < 24; i++) {
      _sz076[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(21)
  external Array<Uint16> _sz077;

  String get sz077 {
    final charCodes = <int>[];
    for (var i = 0; i < 21; i++) {
      charCodes.add(_sz077[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz077(String value) {
    final stringToStore = value.padRight(21, '\x00');
    for (var i = 0; i < 21; i++) {
      _sz077[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(27)
  external Array<Uint16> _sz078;

  String get sz078 {
    final charCodes = <int>[];
    for (var i = 0; i < 27; i++) {
      charCodes.add(_sz078[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz078(String value) {
    final stringToStore = value.padRight(27, '\x00');
    for (var i = 0; i < 27; i++) {
      _sz078[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(27)
  external Array<Uint16> _sz079;

  String get sz079 {
    final charCodes = <int>[];
    for (var i = 0; i < 27; i++) {
      charCodes.add(_sz079[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz079(String value) {
    final stringToStore = value.padRight(27, '\x00');
    for (var i = 0; i < 27; i++) {
      _sz079[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(20)
  external Array<Uint16> _sz080;

  String get sz080 {
    final charCodes = <int>[];
    for (var i = 0; i < 20; i++) {
      charCodes.add(_sz080[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz080(String value) {
    final stringToStore = value.padRight(20, '\x00');
    for (var i = 0; i < 20; i++) {
      _sz080[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(33)
  external Array<Uint16> _sz081;

  String get sz081 {
    final charCodes = <int>[];
    for (var i = 0; i < 33; i++) {
      charCodes.add(_sz081[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz081(String value) {
    final stringToStore = value.padRight(33, '\x00');
    for (var i = 0; i < 33; i++) {
      _sz081[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(21)
  external Array<Uint16> _sz082;

  String get sz082 {
    final charCodes = <int>[];
    for (var i = 0; i < 21; i++) {
      charCodes.add(_sz082[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz082(String value) {
    final stringToStore = value.padRight(21, '\x00');
    for (var i = 0; i < 21; i++) {
      _sz082[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _sz083;

  String get sz083 {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_sz083[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz083(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _sz083[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(26)
  external Array<Uint16> _sz084;

  String get sz084 {
    final charCodes = <int>[];
    for (var i = 0; i < 26; i++) {
      charCodes.add(_sz084[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz084(String value) {
    final stringToStore = value.padRight(26, '\x00');
    for (var i = 0; i < 26; i++) {
      _sz084[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(18)
  external Array<Uint16> _sz085;

  String get sz085 {
    final charCodes = <int>[];
    for (var i = 0; i < 18; i++) {
      charCodes.add(_sz085[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz085(String value) {
    final stringToStore = value.padRight(18, '\x00');
    for (var i = 0; i < 18; i++) {
      _sz085[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(30)
  external Array<Uint16> _sz086;

  String get sz086 {
    final charCodes = <int>[];
    for (var i = 0; i < 30; i++) {
      charCodes.add(_sz086[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set sz086(String value) {
    final stringToStore = value.padRight(30, '\x00');
    for (var i = 0; i < 30; i++) {
      _sz086[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class WMDMID extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwVendorID;

  @Array(128)
  external Array<Uint8> pID;

  @Uint32()
  external int SerialNumberLength;
}

/// {@category Struct}
class WMDMMetadataView extends Struct {
  external Pointer<Utf16> pwszViewName;

  @Uint32()
  external int nDepth;

  external Pointer<Pointer<Uint16>> ppwszTags;
}

/// {@category Struct}
class WMDMRIGHTS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwContentType;

  @Uint32()
  external int fuFlags;

  @Uint32()
  external int fuRights;

  @Uint32()
  external int dwAppSec;

  @Uint32()
  external int dwPlaybackCount;

  external WMDMDATETIME ExpirationDate;
}

/// {@category Struct}
class WMDM_FORMAT_CAPABILITY extends Struct {
  @Uint32()
  external int nPropConfig;

  external Pointer<WMDM_PROP_CONFIG> pConfigs;
}

/// {@category Struct}
class WMDM_PROP_CONFIG extends Struct {
  @Uint32()
  external int nPreference;

  @Uint32()
  external int nPropDesc;

  external Pointer<WMDM_PROP_DESC> pPropDesc;
}

/// {@category Struct}
class WMDM_PROP_DESC extends Struct {
  external Pointer<Utf16> pwszPropName;

  @Int32()
  external int ValidValuesForm;

  external _WMDM_PROP_DESC__ValidValues_e__Union ValidValues;
}

/// {@category Struct}
class _WMDM_PROP_DESC__ValidValues_e__Union extends Union {
  external WMDM_PROP_VALUES_RANGE ValidValuesRange;

  external WMDM_PROP_VALUES_ENUM EnumeratedValidValues;
}

extension WMDM_PROP_DESC_Extension on WMDM_PROP_DESC {
  WMDM_PROP_VALUES_RANGE get ValidValuesRange =>
      this.ValidValues.ValidValuesRange;
  set ValidValuesRange(WMDM_PROP_VALUES_RANGE value) =>
      this.ValidValues.ValidValuesRange = value;

  WMDM_PROP_VALUES_ENUM get EnumeratedValidValues =>
      this.ValidValues.EnumeratedValidValues;
  set EnumeratedValidValues(WMDM_PROP_VALUES_ENUM value) =>
      this.ValidValues.EnumeratedValidValues = value;
}

/// {@category Struct}
class WMDM_PROP_VALUES_ENUM extends Struct {
  @Uint32()
  external int cEnumValues;

  external Pointer<PROPVARIANT> pValues;
}

/// {@category Struct}
class WMDM_PROP_VALUES_RANGE extends Struct {
  external PROPVARIANT rangeMin;

  external PROPVARIANT rangeMax;

  external PROPVARIANT rangeStep;
}

/// {@category Struct}
class WMFILECAPABILITIES extends Struct {
  external Pointer<Utf16> pwszMimeType;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class MACINFO extends Struct {
  @Int32()
  external int fUsed;

  @Array(36)
  external Array<Uint8> abMacState;
}
