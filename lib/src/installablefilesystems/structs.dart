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

class HFILTER extends Struct {
  @IntPtr()
  external int Value;
}

class HFILTER_INSTANCE extends Struct {
  @IntPtr()
  external int Value;
}

class FilterFindHandle extends Struct {
  @IntPtr()
  external int Value;
}

class FilterVolumeFindHandle extends Struct {
  @IntPtr()
  external int Value;
}

class FilterInstanceFindHandle extends Struct {
  @IntPtr()
  external int Value;
}

class FilterVolumeInstanceFindHandle extends Struct {
  @IntPtr()
  external int Value;
}

class FILTER_FULL_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;
  @Uint32()
  external int FrameID;
  @Uint32()
  external int NumberOfInstances;
  @Uint16()
  external int FilterNameLength;
  @Array(1)
  external Array<Uint16> FilterNameBuffer;
}

class FILTER_AGGREGATE_BASIC_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Type;
}

class FILTER_AGGREGATE_STANDARD_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Type;
}

class FILTER_VOLUME_BASIC_INFORMATION extends Struct {
  @Uint16()
  external int FilterVolumeNameLength;
  @Array(1)
  external Array<Uint16> FilterVolumeName;
}

class FILTER_VOLUME_STANDARD_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;
  @Uint32()
  external int Flags;
  @Uint32()
  external int FrameID;
  @Uint32()
  external int FileSystemType;
  @Uint16()
  external int FilterVolumeNameLength;
  @Array(1)
  external Array<Uint16> FilterVolumeName;
}

class INSTANCE_BASIC_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;
  @Uint16()
  external int InstanceNameLength;
  @Uint16()
  external int InstanceNameBufferOffset;
}

class INSTANCE_PARTIAL_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;
  @Uint16()
  external int InstanceNameLength;
  @Uint16()
  external int InstanceNameBufferOffset;
  @Uint16()
  external int AltitudeLength;
  @Uint16()
  external int AltitudeBufferOffset;
}

class INSTANCE_FULL_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;
  @Uint16()
  external int InstanceNameLength;
  @Uint16()
  external int InstanceNameBufferOffset;
  @Uint16()
  external int AltitudeLength;
  @Uint16()
  external int AltitudeBufferOffset;
  @Uint16()
  external int VolumeNameLength;
  @Uint16()
  external int VolumeNameBufferOffset;
  @Uint16()
  external int FilterNameLength;
  @Uint16()
  external int FilterNameBufferOffset;
}

class INSTANCE_AGGREGATE_STANDARD_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Type;
}

class FILTER_MESSAGE_HEADER extends Struct {
  @Uint32()
  external int ReplyLength;
  @Uint64()
  external int MessageId;
}

class FILTER_REPLY_HEADER extends Struct {
  @Int32()
  external int Status;
  @Uint64()
  external int MessageId;
}
