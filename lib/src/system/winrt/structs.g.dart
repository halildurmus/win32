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
import '../../system/winrt/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class DispatcherQueueOptions extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int threadType;

  @Int32()
  external int apartmentType;
}

/// {@category Struct}
class EventRegistrationToken extends Struct {
  @Int64()
  external int value;
}

/// {@category Struct}
class HSTRING_HEADER extends Struct {
  external _HSTRING_HEADER__Reserved_e__Union Reserved;
}

/// {@category Struct}
class _HSTRING_HEADER__Reserved_e__Union extends Union {
  external Pointer Reserved1;

  @Array(24)
  external Array<Uint8> Reserved2;
}

extension HSTRING_HEADER_Extension on HSTRING_HEADER {
  Pointer get Reserved1 => this.Reserved.Reserved1;
  set Reserved1(Pointer value) => this.Reserved.Reserved1 = value;

  Array<Uint8> get Reserved2 => this.Reserved.Reserved2;
  set Reserved2(Array<Uint8> value) => this.Reserved.Reserved2 = value;
}

/// {@category Struct}
class ServerInformation extends Struct {
  @Uint32()
  external int dwServerPid;

  @Uint32()
  external int dwServerTid;

  @Uint64()
  external int ui64ServerAddress;
}

/// {@category Struct}
class RO_REGISTRATION_COOKIE extends Opaque {}
