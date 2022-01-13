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
import '../../graphics/compositionswapchain/structs.g.dart';
import '../../graphics/dxgi/common/structs.g.dart';

/// {@category Struct}
class CompositionFrameDisplayInstance extends Struct {
  external LUID displayAdapterLUID;

  @Uint32()
  external int displayVidPnSourceId;

  @Uint32()
  external int displayUniqueId;

  external LUID renderAdapterLUID;

  @Int32()
  external int instanceKind;

  external PresentationTransform finalTransform;

  @Uint8()
  external int requiredCrossAdapterCopy;

  @Int32()
  external int colorSpace;
}

/// {@category Struct}
class PresentationTransform extends Struct {
  @Float()
  external double M11;

  @Float()
  external double M12;

  @Float()
  external double M21;

  @Float()
  external double M22;

  @Float()
  external double M31;

  @Float()
  external double M32;
}

/// {@category Struct}
class SystemInterruptTime extends Struct {
  @Uint64()
  external int value;
}
