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
import '../../graphics/directcomposition/structs.g.dart';
import '../../graphics/dxgi/common/structs.g.dart';

/// {@category Struct}
class COMPOSITION_FRAME_STATS extends Struct {
  @Uint64()
  external int startTime;

  @Uint64()
  external int targetTime;

  @Uint64()
  external int framePeriod;
}

/// {@category Struct}
class COMPOSITION_STATS extends Struct {
  @Uint32()
  external int presentCount;

  @Uint32()
  external int refreshCount;

  @Uint32()
  external int virtualRefreshCount;

  @Uint64()
  external int time;
}

/// {@category Struct}
class COMPOSITION_TARGET_ID extends Struct {
  external LUID displayAdapterLuid;

  external LUID renderAdapterLuid;

  @Uint32()
  external int vidPnSourceId;

  @Uint32()
  external int vidPnTargetId;

  @Uint32()
  external int uniqueId;
}

/// {@category Struct}
class COMPOSITION_TARGET_STATS extends Struct {
  @Uint32()
  external int outstandingPresents;

  @Uint64()
  external int presentTime;

  @Uint64()
  external int vblankDuration;

  external COMPOSITION_STATS presentedStats;

  external COMPOSITION_STATS completedStats;
}

/// {@category Struct}
class DCOMPOSITION_FRAME_STATISTICS extends Struct {
  @Int64()
  external int lastFrameTime;

  external DXGI_RATIONAL currentCompositionRate;

  @Int64()
  external int currentTime;

  @Int64()
  external int timeFrequency;

  @Int64()
  external int nextEstimatedFrameTime;
}

/// {@category Struct}
class DCompositionInkTrailPoint extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;

  @Float()
  external double radius;
}
