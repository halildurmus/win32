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

class CF_CONNECTION_KEY extends Struct {
  @IntPtr() external int Value;
}

class CF_FS_METADATA extends Struct {
  external FILE_BASIC_INFO BasicInfo;
  @Int64() external int FileSize;
}

class CF_PLACEHOLDER_CREATE_INFO extends Struct {
  external Pointer<Utf16> RelativeFileName;
  external CF_FS_METADATA FsMetadata;
  external Pointer FileIdentity;
  @Uint32() external int FileIdentityLength;
  @Uint32() external int Flags;
  @Int32() external int Result;
  @Int64() external int CreateUsn;
}

class CF_PROCESS_INFO extends Struct {
  @Uint32() external int StructSize;
  @Uint32() external int ProcessId;
  external Pointer<Utf16> ImagePath;
  external Pointer<Utf16> PackageName;
  external Pointer<Utf16> ApplicationId;
  external Pointer<Utf16> CommandLine;
  @Uint32() external int SessionId;
}

class CF_PLATFORM_INFO extends Struct {
  @Uint32() external int BuildNumber;
  @Uint32() external int RevisionNumber;
  @Uint32() external int IntegrationNumber;
}

class CF_HYDRATION_POLICY_PRIMARY_USHORT extends Struct {
  @Uint16() external int us;
}

class CF_HYDRATION_POLICY_MODIFIER_USHORT extends Struct {
  @Uint16() external int us;
}

class CF_HYDRATION_POLICY extends Struct {
  external CF_HYDRATION_POLICY_PRIMARY_USHORT Primary;
  external CF_HYDRATION_POLICY_MODIFIER_USHORT Modifier;
}

class CF_POPULATION_POLICY_PRIMARY_USHORT extends Struct {
  @Uint16() external int us;
}

class CF_POPULATION_POLICY_MODIFIER_USHORT extends Struct {
  @Uint16() external int us;
}

class CF_POPULATION_POLICY extends Struct {
  external CF_POPULATION_POLICY_PRIMARY_USHORT Primary;
  external CF_POPULATION_POLICY_MODIFIER_USHORT Modifier;
}

class CF_SYNC_POLICIES extends Struct {
  @Uint32() external int StructSize;
  external CF_HYDRATION_POLICY Hydration;
  external CF_POPULATION_POLICY Population;
  @Uint32() external int InSync;
  @Uint32() external int HardLink;
  @Uint32() external int PlaceholderManagement;
}

class CF_SYNC_REGISTRATION extends Struct {
  @Uint32() external int StructSize;
  external Pointer<Utf16> ProviderName;
  external Pointer<Utf16> ProviderVersion;
  external Pointer SyncRootIdentity;
  @Uint32() external int SyncRootIdentityLength;
  external Pointer FileIdentity;
  @Uint32() external int FileIdentityLength;
  external GUID ProviderId;
}

class CF_CALLBACK_INFO extends Struct {
  @Uint32() external int StructSize;
  @IntPtr() external int ConnectionKey;
  external Pointer CallbackContext;
  external Pointer<Utf16> VolumeGuidName;
  external Pointer<Utf16> VolumeDosName;
  @Uint32() external int VolumeSerialNumber;
  @Int64() external int SyncRootFileId;
  external Pointer SyncRootIdentity;
  @Uint32() external int SyncRootIdentityLength;
  @Int64() external int FileId;
  @Int64() external int FileSize;
  external Pointer FileIdentity;
  @Uint32() external int FileIdentityLength;
  external Pointer<Utf16> NormalizedPath;
  @Int64() external int TransferKey;
  @Uint8() external int PriorityHint;
  external Pointer<CORRELATION_VECTOR> CorrelationVector;
  external Pointer<CF_PROCESS_INFO> ProcessInfo;
  @Int64() external int RequestKey;
}

class CF_CALLBACK_PARAMETERS extends Struct {
  @Uint32() external int ParamSize;
  @Uint32() external int Anonymous;
}

class CF_CALLBACK_REGISTRATION extends Struct {
  @Uint32() external int Type;
  external CF_CALLBACK Callback;
}

class CF_SYNC_STATUS extends Struct {
  @Uint32() external int StructSize;
  @Uint32() external int Code;
  @Uint32() external int DescriptionOffset;
  @Uint32() external int DescriptionLength;
  @Uint32() external int DeviceIdOffset;
  @Uint32() external int DeviceIdLength;
}

class CF_OPERATION_INFO extends Struct {
  @Uint32() external int StructSize;
  @Uint32() external int Type;
  @IntPtr() external int ConnectionKey;
  @Int64() external int TransferKey;
  external Pointer<CORRELATION_VECTOR> CorrelationVector;
  external Pointer<CF_SYNC_STATUS> SyncStatus;
  @Int64() external int RequestKey;
}

class CF_OPERATION_PARAMETERS extends Struct {
  @Uint32() external int ParamSize;
  @Uint32() external int Anonymous;
}

class CF_FILE_RANGE extends Struct {
  @Int64() external int StartingOffset;
  @Int64() external int Length;
}

class CF_PLACEHOLDER_BASIC_INFO extends Struct {
  @Uint32() external int PinState;
  @Uint32() external int InSyncState;
  @Int64() external int FileId;
  @Int64() external int SyncRootFileId;
  @Uint32() external int FileIdentityLength;
  @Array(1)
  external Array<Uint8> FileIdentity;
}

class CF_PLACEHOLDER_STANDARD_INFO extends Struct {
  @Int64() external int OnDiskDataSize;
  @Int64() external int ValidatedDataSize;
  @Int64() external int ModifiedDataSize;
  @Int64() external int PropertiesSize;
  @Uint32() external int PinState;
  @Uint32() external int InSyncState;
  @Int64() external int FileId;
  @Int64() external int SyncRootFileId;
  @Uint32() external int FileIdentityLength;
  @Array(1)
  external Array<Uint8> FileIdentity;
}

class CF_SYNC_ROOT_BASIC_INFO extends Struct {
  @Int64() external int SyncRootFileId;
}

class CF_SYNC_ROOT_PROVIDER_INFO extends Struct {
  @Uint32() external int ProviderStatus;
  @Array(129)
  external Array<Uint16> ProviderName;
  @Array(129)
  external Array<Uint16> ProviderVersion;
}

class CF_SYNC_ROOT_STANDARD_INFO extends Struct {
  @Int64() external int SyncRootFileId;
  external CF_HYDRATION_POLICY HydrationPolicy;
  external CF_POPULATION_POLICY PopulationPolicy;
  @Uint32() external int InSyncPolicy;
  @Uint32() external int HardLinkPolicy;
  @Uint32() external int ProviderStatus;
  @Array(129)
  external Array<Uint16> ProviderName;
  @Array(129)
  external Array<Uint16> ProviderVersion;
  @Uint32() external int SyncRootIdentityLength;
  @Array(1)
  external Array<Uint8> SyncRootIdentity;
}

