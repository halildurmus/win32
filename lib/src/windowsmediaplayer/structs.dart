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

class WindowsMediaPlayer extends Struct {
}

class WMPLib extends Struct {
}

class WMPRemoteMediaServices extends Struct {
}

class FeedsManager extends Struct {
}

class FeedFolderWatcher extends Struct {
}

class FeedWatcher extends Struct {
}

class TimedLevel extends Struct {
  @Array(136)
  external Array<Uint8> frequency;
  @Array(136)
  external Array<Uint8> waveform;
  @Int32() external int state;
  @Int64() external int timeStamp;
}

class WMPContextMenuInfo extends Struct {
  @Uint32() external int dwID;
  external Pointer<Utf16> bstrMenuText;
  external Pointer<Utf16> bstrHelpText;
}

class WMP_WMDM_METADATA_ROUND_TRIP_PC2DEVICE extends Struct {
  @Uint32() external int dwChangesSinceTransactionID;
  @Uint32() external int dwResultSetStartingIndex;
}

class WMP_WMDM_METADATA_ROUND_TRIP_DEVICE2PC extends Struct {
  @Uint32() external int dwCurrentTransactionID;
  @Uint32() external int dwReturnedObjectCount;
  @Uint32() external int dwUnretrievedObjectCount;
  @Uint32() external int dwDeletedObjectStartingOffset;
  @Uint32() external int dwFlags;
  @Array(1)
  external Array<Uint16> wsObjectPathnameList;
}

