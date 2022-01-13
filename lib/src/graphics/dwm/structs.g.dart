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
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/dwm/structs.g.dart';

/// {@category Struct}
class DWM_BLURBEHIND extends Struct {
  @Uint32()
  external int dwFlags;

  @Int32()
  external int fEnable;

  @IntPtr()
  external int hRgnBlur;

  @Int32()
  external int fTransitionOnMaximized;
}

/// {@category Struct}
class DWM_PRESENT_PARAMETERS extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int fQueue;

  @Uint64()
  external int cRefreshStart;

  @Uint32()
  external int cBuffer;

  @Int32()
  external int fUseSourceRate;

  external UNSIGNED_RATIO rateSource;

  @Uint32()
  external int cRefreshesPerFrame;

  @Int32()
  external int eSampling;
}

/// {@category Struct}
class DWM_THUMBNAIL_PROPERTIES extends Struct {
  @Uint32()
  external int dwFlags;

  external RECT rcDestination;

  external RECT rcSource;

  @Uint8()
  external int opacity;

  @Int32()
  external int fVisible;

  @Int32()
  external int fSourceClientAreaOnly;
}

/// {@category Struct}
@Packed(1)
class DWM_TIMING_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external UNSIGNED_RATIO rateRefresh;

  @Uint64()
  external int qpcRefreshPeriod;

  external UNSIGNED_RATIO rateCompose;

  @Uint64()
  external int qpcVBlank;

  @Uint64()
  external int cRefresh;

  @Uint32()
  external int cDXRefresh;

  @Uint64()
  external int qpcCompose;

  @Uint64()
  external int cFrame;

  @Uint32()
  external int cDXPresent;

  @Uint64()
  external int cRefreshFrame;

  @Uint64()
  external int cFrameSubmitted;

  @Uint32()
  external int cDXPresentSubmitted;

  @Uint64()
  external int cFrameConfirmed;

  @Uint32()
  external int cDXPresentConfirmed;

  @Uint64()
  external int cRefreshConfirmed;

  @Uint32()
  external int cDXRefreshConfirmed;

  @Uint64()
  external int cFramesLate;

  @Uint32()
  external int cFramesOutstanding;

  @Uint64()
  external int cFrameDisplayed;

  @Uint64()
  external int qpcFrameDisplayed;

  @Uint64()
  external int cRefreshFrameDisplayed;

  @Uint64()
  external int cFrameComplete;

  @Uint64()
  external int qpcFrameComplete;

  @Uint64()
  external int cFramePending;

  @Uint64()
  external int qpcFramePending;

  @Uint64()
  external int cFramesDisplayed;

  @Uint64()
  external int cFramesComplete;

  @Uint64()
  external int cFramesPending;

  @Uint64()
  external int cFramesAvailable;

  @Uint64()
  external int cFramesDropped;

  @Uint64()
  external int cFramesMissed;

  @Uint64()
  external int cRefreshNextDisplayed;

  @Uint64()
  external int cRefreshNextPresented;

  @Uint64()
  external int cRefreshesDisplayed;

  @Uint64()
  external int cRefreshesPresented;

  @Uint64()
  external int cRefreshStarted;

  @Uint64()
  external int cPixelsReceived;

  @Uint64()
  external int cPixelsDrawn;

  @Uint64()
  external int cBuffersEmpty;
}

/// {@category Struct}
@Packed(1)
class MilMatrix3x2D extends Struct {
  @Double()
  external double S_11;

  @Double()
  external double S_12;

  @Double()
  external double S_21;

  @Double()
  external double S_22;

  @Double()
  external double DX;

  @Double()
  external double DY;
}

/// {@category Struct}
@Packed(1)
class UNSIGNED_RATIO extends Struct {
  @Uint32()
  external int uiNumerator;

  @Uint32()
  external int uiDenominator;
}
