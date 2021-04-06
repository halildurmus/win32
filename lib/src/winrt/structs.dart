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

class HSTRING extends Struct {
  @IntPtr() external int Value;
}

class HSTRING_BUFFER extends Struct {
  @IntPtr() external int Value;
}

class ROPARAMIIDHANDLE extends Struct {
  @IntPtr() external int Value;
}

class APARTMENT_SHUTDOWN_REGISTRATION_COOKIE extends Struct {
  @IntPtr() external int Value;
}

class EventRegistrationToken extends Struct {
  @Int64() external int value;
}

class HSTRING_HEADER extends Struct {
  @Uint32() external int Reserved;
}

class PDF_RENDER_PARAMS extends Struct {
  external D2D_RECT_F SourceRect;
  @Uint32() external int DestinationWidth;
  @Uint32() external int DestinationHeight;
  external D2D_COLOR_F BackgroundColor;
  @Uint8() external int IgnoreHighContrast;
}

class __AnonymousRecord_roapi_L45_C9 extends Struct {
}

class ServerInformation extends Struct {
  @Uint32() external int dwServerPid;
  @Uint32() external int dwServerTid;
  @Uint64() external int ui64ServerAddress;
}

