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

class DFS_TARGET_PRIORITY extends Struct {
  @Uint32() external int TargetPriorityClass;
  @Uint16() external int TargetPriorityRank;
  @Uint16() external int Reserved;
}

class DFS_INFO_1 extends Struct {
  external Pointer<Utf16> EntryPath;
}

class DFS_INFO_2 extends Struct {
  external Pointer<Utf16> EntryPath;
  external Pointer<Utf16> Comment;
  @Uint32() external int State;
  @Uint32() external int NumberOfStorages;
}

class DFS_STORAGE_INFO extends Struct {
  @Uint32() external int State;
  external Pointer<Utf16> ServerName;
  external Pointer<Utf16> ShareName;
}

class DFS_STORAGE_INFO_1 extends Struct {
  @Uint32() external int State;
  external Pointer<Utf16> ServerName;
  external Pointer<Utf16> ShareName;
  external DFS_TARGET_PRIORITY TargetPriority;
}

class DFS_INFO_3 extends Struct {
  external Pointer<Utf16> EntryPath;
  external Pointer<Utf16> Comment;
  @Uint32() external int State;
  @Uint32() external int NumberOfStorages;
  external Pointer<DFS_STORAGE_INFO> Storage;
}

class DFS_INFO_4 extends Struct {
  external Pointer<Utf16> EntryPath;
  external Pointer<Utf16> Comment;
  @Uint32() external int State;
  @Uint32() external int Timeout;
  external GUID Guid;
  @Uint32() external int NumberOfStorages;
  external Pointer<DFS_STORAGE_INFO> Storage;
}

class DFS_INFO_5 extends Struct {
  external Pointer<Utf16> EntryPath;
  external Pointer<Utf16> Comment;
  @Uint32() external int State;
  @Uint32() external int Timeout;
  external GUID Guid;
  @Uint32() external int PropertyFlags;
  @Uint32() external int MetadataSize;
  @Uint32() external int NumberOfStorages;
}

class DFS_INFO_6 extends Struct {
  external Pointer<Utf16> EntryPath;
  external Pointer<Utf16> Comment;
  @Uint32() external int State;
  @Uint32() external int Timeout;
  external GUID Guid;
  @Uint32() external int PropertyFlags;
  @Uint32() external int MetadataSize;
  @Uint32() external int NumberOfStorages;
  external Pointer<DFS_STORAGE_INFO_1> Storage;
}

class DFS_INFO_7 extends Struct {
  external GUID GenerationGuid;
}

class DFS_INFO_8 extends Struct {
  external Pointer<Utf16> EntryPath;
  external Pointer<Utf16> Comment;
  @Uint32() external int State;
  @Uint32() external int Timeout;
  external GUID Guid;
  @Uint32() external int PropertyFlags;
  @Uint32() external int MetadataSize;
  @Uint32() external int SdLengthReserved;
  external Pointer pSecurityDescriptor;
  @Uint32() external int NumberOfStorages;
}

class DFS_INFO_9 extends Struct {
  external Pointer<Utf16> EntryPath;
  external Pointer<Utf16> Comment;
  @Uint32() external int State;
  @Uint32() external int Timeout;
  external GUID Guid;
  @Uint32() external int PropertyFlags;
  @Uint32() external int MetadataSize;
  @Uint32() external int SdLengthReserved;
  external Pointer pSecurityDescriptor;
  @Uint32() external int NumberOfStorages;
  external Pointer<DFS_STORAGE_INFO_1> Storage;
}

class DFS_INFO_50 extends Struct {
  @Uint32() external int NamespaceMajorVersion;
  @Uint32() external int NamespaceMinorVersion;
  @Uint64() external int NamespaceCapabilities;
}

class DFS_INFO_100 extends Struct {
  external Pointer<Utf16> Comment;
}

class DFS_INFO_101 extends Struct {
  @Uint32() external int State;
}

class DFS_INFO_102 extends Struct {
  @Uint32() external int Timeout;
}

class DFS_INFO_103 extends Struct {
  @Uint32() external int PropertyFlagMask;
  @Uint32() external int PropertyFlags;
}

class DFS_INFO_104 extends Struct {
  external DFS_TARGET_PRIORITY TargetPriority;
}

class DFS_INFO_105 extends Struct {
  external Pointer<Utf16> Comment;
  @Uint32() external int State;
  @Uint32() external int Timeout;
  @Uint32() external int PropertyFlagMask;
  @Uint32() external int PropertyFlags;
}

class DFS_INFO_106 extends Struct {
  @Uint32() external int State;
  external DFS_TARGET_PRIORITY TargetPriority;
}

class DFS_INFO_107 extends Struct {
  external Pointer<Utf16> Comment;
  @Uint32() external int State;
  @Uint32() external int Timeout;
  @Uint32() external int PropertyFlagMask;
  @Uint32() external int PropertyFlags;
  @Uint32() external int SdLengthReserved;
  external Pointer pSecurityDescriptor;
}

class DFS_INFO_150 extends Struct {
  @Uint32() external int SdLengthReserved;
  external Pointer pSecurityDescriptor;
}

class DFS_INFO_200 extends Struct {
  external Pointer<Utf16> FtDfsName;
}

class DFS_INFO_300 extends Struct {
  @Uint32() external int Flags;
  external Pointer<Utf16> DfsName;
}

class DFS_SITENAME_INFO extends Struct {
  @Uint32() external int SiteFlags;
  external Pointer<Utf16> SiteName;
}

class DFS_SITELIST_INFO extends Struct {
  @Uint32() external int cSites;
  external DFS_SITENAME_INFO Site;
}

class DFS_SUPPORTED_NAMESPACE_VERSION_INFO extends Struct {
  @Uint32() external int DomainDfsMajorVersion;
  @Uint32() external int DomainDfsMinorVersion;
  @Uint64() external int DomainDfsCapabilities;
  @Uint32() external int StandaloneDfsMajorVersion;
  @Uint32() external int StandaloneDfsMinorVersion;
  @Uint64() external int StandaloneDfsCapabilities;
}

class DFS_GET_PKT_ENTRY_STATE_ARG extends Struct {
  @Uint16() external int DfsEntryPathLen;
  @Uint16() external int ServerNameLen;
  @Uint16() external int ShareNameLen;
  @Uint32() external int Level;
  external __ushort__ Buffer;
}

