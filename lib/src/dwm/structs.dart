// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
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

class UNSIGNED_RATIO extends Struct {
  @Uint32()
  external int uiNumerator;
  @Uint32()
  external int uiDenominator;
}

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
  @Uint32()
  external int eSampling;
}
