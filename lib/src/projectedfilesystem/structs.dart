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

class PRJ_DIR_ENTRY_BUFFER_HANDLE extends Struct {
  @IntPtr() external int Value;
}

class PRJ_NAMESPACE_VIRTUALIZATION_CONTEXT extends Struct {
  @IntPtr() external int Value;
}

class PRJ_NOTIFICATION_MAPPING extends Struct {
  @Uint32() external int NotificationBitMask;
  external Pointer<Utf16> NotificationRoot;
}

class PRJ_STARTVIRTUALIZING_OPTIONS extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int PoolThreadCount;
  @Uint32() external int ConcurrentThreadCount;
  external Pointer<PRJ_NOTIFICATION_MAPPING> NotificationMappings;
  @Uint32() external int NotificationMappingsCount;
}

class PRJ_VIRTUALIZATION_INSTANCE_INFO extends Struct {
  external GUID InstanceID;
  @Uint32() external int WriteAlignment;
}

class PRJ_PLACEHOLDER_VERSION_INFO extends Struct {
  external __ubyte__ ProviderID;
  external __ubyte__ ContentID;
}

class PRJ_FILE_BASIC_INFO extends Struct {
  @Uint8() external int IsDirectory;
  @Int64() external int FileSize;
  @Int64() external int CreationTime;
  @Int64() external int LastAccessTime;
  @Int64() external int LastWriteTime;
  @Int64() external int ChangeTime;
  @Uint32() external int FileAttributes;
}

class PRJ_CALLBACK_DATA extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Flags;
  external PRJ_NAMESPACE_VIRTUALIZATION_CONTEXT NamespaceVirtualizationContext;
  @Int32() external int CommandId;
  external GUID FileId;
  external GUID DataStreamId;
  external Pointer<Utf16> FilePathName;
  external Pointer<PRJ_PLACEHOLDER_VERSION_INFO> VersionInfo;
  @Uint32() external int TriggeringProcessId;
  external Pointer<Utf16> TriggeringProcessImageFileName;
  external Pointer InstanceContext;
}

class PRJ_CALLBACKS extends Struct {
  external PRJ_START_DIRECTORY_ENUMERATION_CB StartDirectoryEnumerationCallback;
  external PRJ_END_DIRECTORY_ENUMERATION_CB EndDirectoryEnumerationCallback;
  external PRJ_GET_DIRECTORY_ENUMERATION_CB GetDirectoryEnumerationCallback;
  external PRJ_GET_PLACEHOLDER_INFO_CB GetPlaceholderInfoCallback;
  external PRJ_GET_FILE_DATA_CB GetFileDataCallback;
  external PRJ_QUERY_FILE_NAME_CB QueryFileNameCallback;
  external PRJ_NOTIFICATION_CB NotificationCallback;
  external PRJ_CANCEL_COMMAND_CB CancelCommandCallback;
}

