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

/// {@category Struct}
class TimedLevel extends Struct {
  @Array(2048)
  external Array<Uint8> frequency;

  @Array(2048)
  external Array<Uint8> waveform;

  @Int32()
  external int state;

  @Int64()
  external int timeStamp;
}

/// {@category Struct}
class WMPContextMenuInfo extends Struct {
  @Uint32()
  external int dwID;

  external Pointer<Utf16> bstrMenuText;

  external Pointer<Utf16> bstrHelpText;
}

/// {@category Struct}
@Packed(1)
class WMP_WMDM_METADATA_ROUND_TRIP_DEVICE2PC extends Struct {
  @Uint32()
  external int dwCurrentTransactionID;

  @Uint32()
  external int dwReturnedObjectCount;

  @Uint32()
  external int dwUnretrievedObjectCount;

  @Uint32()
  external int dwDeletedObjectStartingOffset;

  @Uint32()
  external int dwFlags;

  @Array(1)
  external Array<Uint16> _wsObjectPathnameList;

  String get wsObjectPathnameList {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_wsObjectPathnameList[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wsObjectPathnameList(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _wsObjectPathnameList[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
@Packed(1)
class WMP_WMDM_METADATA_ROUND_TRIP_PC2DEVICE extends Struct {
  @Uint32()
  external int dwChangesSinceTransactionID;

  @Uint32()
  external int dwResultSetStartingIndex;
}
