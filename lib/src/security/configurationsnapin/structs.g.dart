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
import '../../security/configurationsnapin/structs.g.dart';
import '../../security/configurationsnapin/callbacks.g.dart';

/// {@category Struct}
class SCESVC_ANALYSIS_INFO extends Struct {
  @Uint32()
  external int Count;

  external Pointer<SCESVC_ANALYSIS_LINE> Lines;
}

/// {@category Struct}
class SCESVC_ANALYSIS_LINE extends Struct {
  external Pointer<Int8> Key;

  external Pointer<Uint8> Value;

  @Uint32()
  external int ValueLen;
}

/// {@category Struct}
class SCESVC_CALLBACK_INFO extends Struct {
  external Pointer sceHandle;

  external Pointer<NativeFunction<PFSCE_QUERY_INFO>> pfQueryInfo;

  external Pointer<NativeFunction<PFSCE_SET_INFO>> pfSetInfo;

  external Pointer<NativeFunction<PFSCE_FREE_INFO>> pfFreeInfo;

  external Pointer<NativeFunction<PFSCE_LOG_INFO>> pfLogInfo;
}

/// {@category Struct}
class SCESVC_CONFIGURATION_INFO extends Struct {
  @Uint32()
  external int Count;

  external Pointer<SCESVC_CONFIGURATION_LINE> Lines;
}

/// {@category Struct}
class SCESVC_CONFIGURATION_LINE extends Struct {
  external Pointer<Int8> Key;

  external Pointer<Int8> Value;

  @Uint32()
  external int ValueLen;
}
