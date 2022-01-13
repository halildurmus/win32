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
import '../../specialTypes.dart';
import '../../system/com/IUnknown.dart';
import '../../media/dxmediaobjects/IMediaBuffer.dart';

/// {@category Struct}
class DMO_MEDIA_TYPE extends Struct {
  external GUID majortype;

  external GUID subtype;

  @Int32()
  external int bFixedSizeSamples;

  @Int32()
  external int bTemporalCompression;

  @Uint32()
  external int lSampleSize;

  external GUID formattype;

  external Pointer<COMObject> pUnk;

  @Uint32()
  external int cbFormat;

  external Pointer<Uint8> pbFormat;
}

/// {@category Struct}
class DMO_OUTPUT_DATA_BUFFER extends Struct {
  external Pointer<COMObject> pBuffer;

  @Uint32()
  external int dwStatus;

  @Int64()
  external int rtTimestamp;

  @Int64()
  external int rtTimelength;
}

/// {@category Struct}
class DMO_PARTIAL_MEDIATYPE extends Struct {
  external GUID type;

  external GUID subtype;
}
