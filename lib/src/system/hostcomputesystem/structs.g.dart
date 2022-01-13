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
import '../../system/hostcomputesystem/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/structs.g.dart';
import '../../system/hostcomputesystem/callbacks.g.dart';

/// {@category Struct}
class HCS_CREATE_OPTIONS_1 extends Struct {
  @Int32()
  external int Version;

  @IntPtr()
  external int UserToken;

  external Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor;

  @Uint32()
  external int CallbackOptions;

  external Pointer CallbackContext;

  external Pointer<NativeFunction<HCS_EVENT_CALLBACK>> Callback;
}

/// {@category Struct}
class HCS_EVENT extends Struct {
  @Int32()
  external int Type;

  external Pointer<Utf16> EventData;

  @IntPtr()
  external int Operation;
}

/// {@category Struct}
class HCS_PROCESS_INFORMATION extends Struct {
  @Uint32()
  external int ProcessId;

  @Uint32()
  external int Reserved;

  @IntPtr()
  external int StdInput;

  @IntPtr()
  external int StdOutput;

  @IntPtr()
  external int StdError;
}
