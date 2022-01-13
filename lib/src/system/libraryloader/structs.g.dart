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
import '../../system/libraryloader/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class ENUMUILANG extends Struct {
  @Uint32()
  external int NumOfEnumUILang;

  @Uint32()
  external int SizeOfEnumUIBuffer;

  external Pointer<Uint16> pEnumUIBuffer;
}

/// {@category Struct}
class REDIRECTION_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int FunctionCount;

  external Pointer<REDIRECTION_FUNCTION_DESCRIPTOR> Redirections;
}

/// {@category Struct}
class REDIRECTION_FUNCTION_DESCRIPTOR extends Struct {
  external Pointer<Utf8> DllName;

  external Pointer<Utf8> FunctionName;

  external Pointer RedirectionTarget;
}
