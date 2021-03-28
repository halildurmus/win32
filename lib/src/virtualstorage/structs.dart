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

class VIRTUAL_STORAGE_TYPE extends Struct {
  @Uint32() external int DeviceId;
  external GUID VendorId;
}

class OPEN_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class CREATE_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class ATTACH_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class STORAGE_DEPENDENCY_INFO_TYPE_1 extends Struct {
  @Uint32() external int DependencyTypeFlags;
  @Uint32() external int ProviderSpecificFlags;
  external VIRTUAL_STORAGE_TYPE VirtualStorageType;
}

class STORAGE_DEPENDENCY_INFO_TYPE_2 extends Struct {
  @Uint32() external int DependencyTypeFlags;
  @Uint32() external int ProviderSpecificFlags;
  external VIRTUAL_STORAGE_TYPE VirtualStorageType;
  @Uint32() external int AncestorLevel;
  external Pointer<Utf16> DependencyDeviceName;
  external Pointer<Utf16> HostVolumeName;
  external Pointer<Utf16> DependentVolumeName;
  external Pointer<Utf16> DependentVolumeRelativePath;
}

class STORAGE_DEPENDENCY_INFO extends Struct {
  @Uint32() external int Version;
  @Uint32() external int NumberEntries;
  @Uint32() external int Anonymous;
}

class GET_VIRTUAL_DISK_INFO extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class SET_VIRTUAL_DISK_INFO extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class VIRTUAL_DISK_PROGRESS extends Struct {
  @Uint32() external int OperationStatus;
  @Uint64() external int CurrentValue;
  @Uint64() external int CompletionValue;
}

class COMPACT_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class MERGE_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class EXPAND_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class RESIZE_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class MIRROR_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class QUERY_CHANGES_VIRTUAL_DISK_RANGE extends Struct {
  @Uint64() external int ByteOffset;
  @Uint64() external int ByteLength;
  @Uint64() external int Reserved;
}

class TAKE_SNAPSHOT_VHDSET_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class DELETE_SNAPSHOT_VHDSET_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class MODIFY_VHDSET_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class APPLY_SNAPSHOT_VHDSET_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class RAW_SCSI_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class RAW_SCSI_VIRTUAL_DISK_RESPONSE extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class FORK_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

