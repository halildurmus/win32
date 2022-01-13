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
import '../../system/restore/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class RESTOREPOINTINFO extends Struct {
  @Uint32()
  external int dwEventType;

  @Uint32()
  external int dwRestorePtType;

  @Int64()
  external int llSequenceNumber;

  @Array(256)
  external Array<Uint16> _szDescription;

  String get szDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDescription(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szDescription[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
@Packed(1)
class STATEMGRSTATUS extends Struct {
  @Uint32()
  external int nStatus;

  @Int64()
  external int llSequenceNumber;
}

/// {@category Struct}
class RESTOREPTINFOEX extends Struct {
  external FILETIME ftCreation;

  @Uint32()
  external int dwEventType;

  @Uint32()
  external int dwRestorePtType;

  @Uint32()
  external int dwRPNum;

  @Array(256)
  external Array<Uint16> _szDescription;

  String get szDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDescription(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szDescription[i] = stringToStore.codeUnitAt(i);
    }
  }
}
