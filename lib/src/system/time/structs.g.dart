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

import 'callbacks.g.dart';
import '../../foundation/structs.g.dart';

class DYNAMIC_TIME_ZONE_INFORMATION extends Struct {
  @Int32()
  external int Bias;
  @Array(32)
  external Array<Uint16> _StandardName;

  String get StandardName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_StandardName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set StandardName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _StandardName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external SYSTEMTIME StandardDate;
  @Int32()
  external int StandardBias;
  @Array(32)
  external Array<Uint16> _DaylightName;

  String get DaylightName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_DaylightName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DaylightName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _DaylightName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external SYSTEMTIME DaylightDate;
  @Int32()
  external int DaylightBias;
  @Array(128)
  external Array<Uint16> _TimeZoneKeyName;

  String get TimeZoneKeyName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_TimeZoneKeyName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set TimeZoneKeyName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _TimeZoneKeyName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint8()
  external int DynamicDaylightTimeDisabled;
}

class TIME_ZONE_INFORMATION extends Struct {
  @Int32()
  external int Bias;
  @Array(32)
  external Array<Uint16> _StandardName;

  String get StandardName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_StandardName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set StandardName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _StandardName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external SYSTEMTIME StandardDate;
  @Int32()
  external int StandardBias;
  @Array(32)
  external Array<Uint16> _DaylightName;

  String get DaylightName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_DaylightName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DaylightName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _DaylightName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external SYSTEMTIME DaylightDate;
  @Int32()
  external int DaylightBias;
}
