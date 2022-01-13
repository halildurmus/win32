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
import '../../ui/interactioncontext/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';

/// {@category Struct}
class CROSS_SLIDE_PARAMETER extends Struct {
  @Int32()
  external int threshold;

  @Float()
  external double distance;
}

/// {@category Struct}
class INTERACTION_ARGUMENTS_CROSS_SLIDE extends Struct {
  @Uint32()
  external int flags;
}

/// {@category Struct}
class INTERACTION_ARGUMENTS_MANIPULATION extends Struct {
  external MANIPULATION_TRANSFORM delta;

  external MANIPULATION_TRANSFORM cumulative;

  external MANIPULATION_VELOCITY velocity;

  @Int32()
  external int railsState;
}

/// {@category Struct}
class INTERACTION_ARGUMENTS_TAP extends Struct {
  @Uint32()
  external int count;
}

/// {@category Struct}
class INTERACTION_CONTEXT_CONFIGURATION extends Struct {
  @Int32()
  external int interactionId;

  @Uint32()
  external int enable;
}

/// {@category Struct}
class INTERACTION_CONTEXT_OUTPUT extends Struct {
  @Int32()
  external int interactionId;

  @Uint32()
  external int interactionFlags;

  @Int32()
  external int inputType;

  @Float()
  external double x;

  @Float()
  external double y;

  external _INTERACTION_CONTEXT_OUTPUT__arguments_e__Union arguments;
}

/// {@category Struct}
class _INTERACTION_CONTEXT_OUTPUT__arguments_e__Union extends Union {
  external INTERACTION_ARGUMENTS_MANIPULATION manipulation;

  external INTERACTION_ARGUMENTS_TAP tap;

  external INTERACTION_ARGUMENTS_CROSS_SLIDE crossSlide;
}

extension INTERACTION_CONTEXT_OUTPUT_Extension on INTERACTION_CONTEXT_OUTPUT {
  INTERACTION_ARGUMENTS_MANIPULATION get manipulation =>
      this.arguments.manipulation;
  set manipulation(INTERACTION_ARGUMENTS_MANIPULATION value) =>
      this.arguments.manipulation = value;

  INTERACTION_ARGUMENTS_TAP get tap => this.arguments.tap;
  set tap(INTERACTION_ARGUMENTS_TAP value) => this.arguments.tap = value;

  INTERACTION_ARGUMENTS_CROSS_SLIDE get crossSlide => this.arguments.crossSlide;
  set crossSlide(INTERACTION_ARGUMENTS_CROSS_SLIDE value) =>
      this.arguments.crossSlide = value;
}

/// {@category Struct}
class INTERACTION_CONTEXT_OUTPUT2 extends Struct {
  @Int32()
  external int interactionId;

  @Uint32()
  external int interactionFlags;

  @Int32()
  external int inputType;

  @Uint32()
  external int contactCount;

  @Uint32()
  external int currentContactCount;

  @Float()
  external double x;

  @Float()
  external double y;

  external _INTERACTION_CONTEXT_OUTPUT2__arguments_e__Union arguments;
}

/// {@category Struct}
class _INTERACTION_CONTEXT_OUTPUT2__arguments_e__Union extends Union {
  external INTERACTION_ARGUMENTS_MANIPULATION manipulation;

  external INTERACTION_ARGUMENTS_TAP tap;

  external INTERACTION_ARGUMENTS_CROSS_SLIDE crossSlide;
}

extension INTERACTION_CONTEXT_OUTPUT2_Extension on INTERACTION_CONTEXT_OUTPUT2 {
  INTERACTION_ARGUMENTS_MANIPULATION get manipulation =>
      this.arguments.manipulation;
  set manipulation(INTERACTION_ARGUMENTS_MANIPULATION value) =>
      this.arguments.manipulation = value;

  INTERACTION_ARGUMENTS_TAP get tap => this.arguments.tap;
  set tap(INTERACTION_ARGUMENTS_TAP value) => this.arguments.tap = value;

  INTERACTION_ARGUMENTS_CROSS_SLIDE get crossSlide => this.arguments.crossSlide;
  set crossSlide(INTERACTION_ARGUMENTS_CROSS_SLIDE value) =>
      this.arguments.crossSlide = value;
}

/// {@category Struct}
class MANIPULATION_TRANSFORM extends Struct {
  @Float()
  external double translationX;

  @Float()
  external double translationY;

  @Float()
  external double scale;

  @Float()
  external double expansion;

  @Float()
  external double rotation;
}

/// {@category Struct}
class MANIPULATION_VELOCITY extends Struct {
  @Float()
  external double velocityX;

  @Float()
  external double velocityY;

  @Float()
  external double velocityExpansion;

  @Float()
  external double velocityAngular;
}
