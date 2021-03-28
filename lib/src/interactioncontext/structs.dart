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

class HINTERACTIONCONTEXT extends Struct {
  @IntPtr() external int Value;
}

class MANIPULATION_TRANSFORM extends Struct {
  @Float() external double translationX;
  @Float() external double translationY;
  @Float() external double scale;
  @Float() external double expansion;
  @Float() external double rotation;
}

class MANIPULATION_VELOCITY extends Struct {
  @Float() external double velocityX;
  @Float() external double velocityY;
  @Float() external double velocityExpansion;
  @Float() external double velocityAngular;
}

class INTERACTION_ARGUMENTS_MANIPULATION extends Struct {
  external MANIPULATION_TRANSFORM delta;
  external MANIPULATION_TRANSFORM cumulative;
  external MANIPULATION_VELOCITY velocity;
  @Uint32() external int railsState;
}

class INTERACTION_ARGUMENTS_TAP extends Struct {
  @Uint32() external int count;
}

class INTERACTION_ARGUMENTS_CROSS_SLIDE extends Struct {
  @Uint32() external int flags;
}

class INTERACTION_CONTEXT_OUTPUT extends Struct {
  @Uint32() external int interactionId;
  @Uint32() external int interactionFlags;
  @Uint32() external int inputType;
  @Float() external double x;
  @Float() external double y;
  @Uint32() external int arguments;
}

class INTERACTION_CONTEXT_OUTPUT2 extends Struct {
  @Uint32() external int interactionId;
  @Uint32() external int interactionFlags;
  @Uint32() external int inputType;
  @Uint32() external int contactCount;
  @Uint32() external int currentContactCount;
  @Float() external double x;
  @Float() external double y;
  @Uint32() external int arguments;
}

class INTERACTION_CONTEXT_CONFIGURATION extends Struct {
  @Uint32() external int interactionId;
  @Uint32() external int enable;
}

class CROSS_SLIDE_PARAMETER extends Struct {
  @Uint32() external int threshold;
  @Float() external double distance;
}

