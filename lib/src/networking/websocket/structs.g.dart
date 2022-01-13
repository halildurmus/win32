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
import '../../networking/websocket/structs.g.dart';

/// {@category Struct}
class WEB_SOCKET_BUFFER extends Union {
  external _WEB_SOCKET_BUFFER__Data_e__Struct Data;

  external _WEB_SOCKET_BUFFER__CloseStatus_e__Struct CloseStatus;
}

/// {@category Struct}
class _WEB_SOCKET_BUFFER__Data_e__Struct extends Struct {
  external Pointer<Uint8> pbBuffer;

  @Uint32()
  external int ulBufferLength;
}

extension WEB_SOCKET_BUFFER_Extension on WEB_SOCKET_BUFFER {
  Pointer<Uint8> get pbBuffer => this.Data.pbBuffer;
  set pbBuffer(Pointer<Uint8> value) => this.Data.pbBuffer = value;

  int get ulBufferLength => this.Data.ulBufferLength;
  set ulBufferLength(int value) => this.Data.ulBufferLength = value;
}

/// {@category Struct}
class _WEB_SOCKET_BUFFER__CloseStatus_e__Struct extends Struct {
  external Pointer<Uint8> pbReason;

  @Uint32()
  external int ulReasonLength;

  @Uint16()
  external int usStatus;
}

extension WEB_SOCKET_BUFFER_Extension_1 on WEB_SOCKET_BUFFER {
  Pointer<Uint8> get pbReason => this.CloseStatus.pbReason;
  set pbReason(Pointer<Uint8> value) => this.CloseStatus.pbReason = value;

  int get ulReasonLength => this.CloseStatus.ulReasonLength;
  set ulReasonLength(int value) => this.CloseStatus.ulReasonLength = value;

  int get usStatus => this.CloseStatus.usStatus;
  set usStatus(int value) => this.CloseStatus.usStatus = value;
}

/// {@category Struct}
class WEB_SOCKET_HTTP_HEADER extends Struct {
  external Pointer<Utf8> pcName;

  @Uint32()
  external int ulNameLength;

  external Pointer<Utf8> pcValue;

  @Uint32()
  external int ulValueLength;
}

/// {@category Struct}
class WEB_SOCKET_PROPERTY extends Struct {
  @Int32()
  external int Type;

  external Pointer pvValue;

  @Uint32()
  external int ulValueSize;
}
