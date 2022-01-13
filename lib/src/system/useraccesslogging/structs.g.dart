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
import '../../networking/winsock/structs.g.dart';

/// {@category Struct}
class UAL_DATA_BLOB extends Struct {
  @Uint32()
  external int Size;

  external GUID RoleGuid;

  external GUID TenantId;

  external SOCKADDR_STORAGE Address;

  @Array(260)
  external Array<Uint16> _UserName;

  String get UserName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_UserName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set UserName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _UserName[i] = stringToStore.codeUnitAt(i);
    }
  }
}
