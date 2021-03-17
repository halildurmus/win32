// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class InertiaProcessor extends Struct {
}

class ManipulationProcessor extends Struct {
}

class HGESTUREINFO extends Struct {
  @IntPtr() external int Value;
}

class HTOUCHINPUT extends Struct {
  @IntPtr() external int Value;
}

class TOUCHINPUT extends Struct {
  @Int32() external int x;
  @Int32() external int y;
  @IntPtr() external int hSource;
  @Uint32() external int dwID;
  @Uint32() external int dwFlags;
  @Uint32() external int dwMask;
  @Uint32() external int dwTime;
  @IntPtr() external int dwExtraInfo;
  @Uint32() external int cxContact;
  @Uint32() external int cyContact;
}

class GESTUREINFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dwID;
  @IntPtr() external int hwndTarget;
  external POINTS ptsLocation;
  @Uint32() external int dwInstanceID;
  @Uint32() external int dwSequenceID;
  @Uint64() external int ullArguments;
  @Uint32() external int cbExtraArgs;
}

class GESTURENOTIFYSTRUCT extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  @IntPtr() external int hwndTarget;
  external POINTS ptsLocation;
  @Uint32() external int dwInstanceID;
}

class GESTURECONFIG extends Struct {
  @Uint32() external int dwID;
  @Uint32() external int dwWant;
  @Uint32() external int dwBlock;
}

