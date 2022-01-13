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
import '../../devices/communication/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class COMMCONFIG extends Struct {
  @Uint32()
  external int dwSize;

  @Uint16()
  external int wVersion;

  @Uint16()
  external int wReserved;

  external DCB dcb;

  @Uint32()
  external int dwProviderSubType;

  @Uint32()
  external int dwProviderOffset;

  @Uint32()
  external int dwProviderSize;

  @Array(1)
  external Array<Uint16> _wcProviderData;

  String get wcProviderData {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_wcProviderData[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wcProviderData(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _wcProviderData[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class COMMPROP extends Struct {
  @Uint16()
  external int wPacketLength;

  @Uint16()
  external int wPacketVersion;

  @Uint32()
  external int dwServiceMask;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwMaxTxQueue;

  @Uint32()
  external int dwMaxRxQueue;

  @Uint32()
  external int dwMaxBaud;

  @Uint32()
  external int dwProvSubType;

  @Uint32()
  external int dwProvCapabilities;

  @Uint32()
  external int dwSettableParams;

  @Uint32()
  external int dwSettableBaud;

  @Uint16()
  external int wSettableData;

  @Uint16()
  external int wSettableStopParity;

  @Uint32()
  external int dwCurrentTxQueue;

  @Uint32()
  external int dwCurrentRxQueue;

  @Uint32()
  external int dwProvSpec1;

  @Uint32()
  external int dwProvSpec2;

  @Array(1)
  external Array<Uint16> _wcProvChar;

  String get wcProvChar {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_wcProvChar[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wcProvChar(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _wcProvChar[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class COMMTIMEOUTS extends Struct {
  @Uint32()
  external int ReadIntervalTimeout;

  @Uint32()
  external int ReadTotalTimeoutMultiplier;

  @Uint32()
  external int ReadTotalTimeoutConstant;

  @Uint32()
  external int WriteTotalTimeoutMultiplier;

  @Uint32()
  external int WriteTotalTimeoutConstant;
}

/// {@category Struct}
class COMSTAT extends Struct {
  @Uint32()
  external int bitfield;

  @Uint32()
  external int cbInQue;

  @Uint32()
  external int cbOutQue;
}

/// {@category Struct}
class DCB extends Struct {
  @Uint32()
  external int DCBlength;

  @Uint32()
  external int BaudRate;

  @Uint32()
  external int bitfield;

  @Uint16()
  external int wReserved;

  @Uint16()
  external int XonLim;

  @Uint16()
  external int XoffLim;

  @Uint8()
  external int ByteSize;

  @Uint8()
  external int Parity;

  @Uint8()
  external int StopBits;

  @Uint8()
  external int XonChar;

  @Uint8()
  external int XoffChar;

  @Uint8()
  external int ErrorChar;

  @Uint8()
  external int EofChar;

  @Uint8()
  external int EvtChar;

  @Uint16()
  external int wReserved1;
}

/// {@category Struct}
class MODEMDEVCAPS extends Struct {
  @Uint32()
  external int dwActualSize;

  @Uint32()
  external int dwRequiredSize;

  @Uint32()
  external int dwDevSpecificOffset;

  @Uint32()
  external int dwDevSpecificSize;

  @Uint32()
  external int dwModemProviderVersion;

  @Uint32()
  external int dwModemManufacturerOffset;

  @Uint32()
  external int dwModemManufacturerSize;

  @Uint32()
  external int dwModemModelOffset;

  @Uint32()
  external int dwModemModelSize;

  @Uint32()
  external int dwModemVersionOffset;

  @Uint32()
  external int dwModemVersionSize;

  @Uint32()
  external int dwDialOptions;

  @Uint32()
  external int dwCallSetupFailTimer;

  @Uint32()
  external int dwInactivityTimeout;

  @Uint32()
  external int dwSpeakerVolume;

  @Uint32()
  external int dwSpeakerMode;

  @Uint32()
  external int dwModemOptions;

  @Uint32()
  external int dwMaxDTERate;

  @Uint32()
  external int dwMaxDCERate;

  @Array(1)
  external Array<Uint8> abVariablePortion;
}

/// {@category Struct}
class MODEMSETTINGS extends Struct {
  @Uint32()
  external int dwActualSize;

  @Uint32()
  external int dwRequiredSize;

  @Uint32()
  external int dwDevSpecificOffset;

  @Uint32()
  external int dwDevSpecificSize;

  @Uint32()
  external int dwCallSetupFailTimer;

  @Uint32()
  external int dwInactivityTimeout;

  @Uint32()
  external int dwSpeakerVolume;

  @Uint32()
  external int dwSpeakerMode;

  @Uint32()
  external int dwPreferredModemOptions;

  @Uint32()
  external int dwNegotiatedModemOptions;

  @Uint32()
  external int dwNegotiatedDCERate;

  @Array(1)
  external Array<Uint8> abVariablePortion;
}
