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
import '../../system/restartmanager/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class RM_FILTER_INFO extends Struct {
  @Int32()
  external int FilterAction;

  @Int32()
  external int FilterTrigger;

  @Uint32()
  external int cbNextOffset;

  external _RM_FILTER_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _RM_FILTER_INFO__Anonymous_e__Union extends Union {
  external Pointer<Utf16> strFilename;

  external RM_UNIQUE_PROCESS Process;

  external Pointer<Utf16> strServiceShortName;
}

extension RM_FILTER_INFO_Extension on RM_FILTER_INFO {
  Pointer<Utf16> get strFilename => this.Anonymous.strFilename;
  set strFilename(Pointer<Utf16> value) => this.Anonymous.strFilename = value;

  RM_UNIQUE_PROCESS get Process => this.Anonymous.Process;
  set Process(RM_UNIQUE_PROCESS value) => this.Anonymous.Process = value;

  Pointer<Utf16> get strServiceShortName => this.Anonymous.strServiceShortName;
  set strServiceShortName(Pointer<Utf16> value) =>
      this.Anonymous.strServiceShortName = value;
}

/// {@category Struct}
class RM_PROCESS_INFO extends Struct {
  external RM_UNIQUE_PROCESS Process;

  @Array(256)
  external Array<Uint16> _strAppName;

  String get strAppName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_strAppName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set strAppName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _strAppName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _strServiceShortName;

  String get strServiceShortName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_strServiceShortName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set strServiceShortName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _strServiceShortName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int32()
  external int ApplicationType;

  @Uint32()
  external int AppStatus;

  @Uint32()
  external int TSSessionId;

  @Int32()
  external int bRestartable;
}

/// {@category Struct}
class RM_UNIQUE_PROCESS extends Struct {
  @Uint32()
  external int dwProcessId;

  external FILETIME ProcessStartTime;
}
