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
import '../../storage/projectedfilesystem/callbacks.g.dart';
import '../../storage/projectedfilesystem/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class PRJ_CALLBACKS extends Struct {
  external Pointer<NativeFunction<PRJ_START_DIRECTORY_ENUMERATION_CB>>
      StartDirectoryEnumerationCallback;

  external Pointer<NativeFunction<PRJ_END_DIRECTORY_ENUMERATION_CB>>
      EndDirectoryEnumerationCallback;

  external Pointer<NativeFunction<PRJ_GET_DIRECTORY_ENUMERATION_CB>>
      GetDirectoryEnumerationCallback;

  external Pointer<NativeFunction<PRJ_GET_PLACEHOLDER_INFO_CB>>
      GetPlaceholderInfoCallback;

  external Pointer<NativeFunction<PRJ_GET_FILE_DATA_CB>> GetFileDataCallback;

  external Pointer<NativeFunction<PRJ_QUERY_FILE_NAME_CB>>
      QueryFileNameCallback;

  external Pointer<NativeFunction<PRJ_NOTIFICATION_CB>> NotificationCallback;

  external Pointer<NativeFunction<PRJ_CANCEL_COMMAND_CB>> CancelCommandCallback;
}

/// {@category Struct}
class PRJ_CALLBACK_DATA extends Struct {
  @Uint32()
  external int Size;

  @Int32()
  external int Flags;

  @IntPtr()
  external int NamespaceVirtualizationContext;

  @Int32()
  external int CommandId;

  external GUID FileId;

  external GUID DataStreamId;

  external Pointer<Utf16> FilePathName;

  external Pointer<PRJ_PLACEHOLDER_VERSION_INFO> VersionInfo;

  @Uint32()
  external int TriggeringProcessId;

  external Pointer<Utf16> TriggeringProcessImageFileName;

  external Pointer InstanceContext;
}

/// {@category Struct}
class PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS extends Struct {
  @Int32()
  external int CommandType;

  external _PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS__Anonymous_e__Union
    extends Union {
  external _PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS__Anonymous_e__Union__Notification_e__Struct
      Notification;

  external _PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS__Anonymous_e__Union__Enumeration_e__Struct
      Enumeration;
}

/// {@category Struct}
class _PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS__Anonymous_e__Union__Notification_e__Struct
    extends Struct {
  @Uint32()
  external int NotificationMask;
}

extension PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS__Anonymous_e__Union_Extension
    on PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS {
  int get NotificationMask => this.Anonymous.Notification.NotificationMask;
  set NotificationMask(int value) =>
      this.Anonymous.Notification.NotificationMask = value;
}

/// {@category Struct}
class _PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS__Anonymous_e__Union__Enumeration_e__Struct
    extends Struct {
  @IntPtr()
  external int DirEntryBufferHandle;
}

extension PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS__Anonymous_e__Union_Extension_1
    on PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS {
  int get DirEntryBufferHandle =>
      this.Anonymous.Enumeration.DirEntryBufferHandle;
  set DirEntryBufferHandle(int value) =>
      this.Anonymous.Enumeration.DirEntryBufferHandle = value;
}

extension PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS_Extension
    on PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS {
  _PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS__Anonymous_e__Union__Notification_e__Struct
      get Notification => this.Anonymous.Notification;
  set Notification(
          _PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS__Anonymous_e__Union__Notification_e__Struct
              value) =>
      this.Anonymous.Notification = value;

  _PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS__Anonymous_e__Union__Enumeration_e__Struct
      get Enumeration => this.Anonymous.Enumeration;
  set Enumeration(
          _PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS__Anonymous_e__Union__Enumeration_e__Struct
              value) =>
      this.Anonymous.Enumeration = value;
}

/// {@category Struct}
class PRJ_EXTENDED_INFO extends Struct {
  @Int32()
  external int InfoType;

  @Uint32()
  external int NextInfoOffset;

  external _PRJ_EXTENDED_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PRJ_EXTENDED_INFO__Anonymous_e__Union extends Union {
  external _PRJ_EXTENDED_INFO__Anonymous_e__Union__Symlink_e__Struct Symlink;
}

/// {@category Struct}
class _PRJ_EXTENDED_INFO__Anonymous_e__Union__Symlink_e__Struct extends Struct {
  external Pointer<Utf16> TargetName;
}

extension PRJ_EXTENDED_INFO__Anonymous_e__Union_Extension on PRJ_EXTENDED_INFO {
  Pointer<Utf16> get TargetName => this.Anonymous.Symlink.TargetName;
  set TargetName(Pointer<Utf16> value) =>
      this.Anonymous.Symlink.TargetName = value;
}

extension PRJ_EXTENDED_INFO_Extension on PRJ_EXTENDED_INFO {
  _PRJ_EXTENDED_INFO__Anonymous_e__Union__Symlink_e__Struct get Symlink =>
      this.Anonymous.Symlink;
  set Symlink(
          _PRJ_EXTENDED_INFO__Anonymous_e__Union__Symlink_e__Struct value) =>
      this.Anonymous.Symlink = value;
}

/// {@category Struct}
class PRJ_FILE_BASIC_INFO extends Struct {
  @Uint8()
  external int IsDirectory;

  @Int64()
  external int FileSize;

  @Int64()
  external int CreationTime;

  @Int64()
  external int LastAccessTime;

  @Int64()
  external int LastWriteTime;

  @Int64()
  external int ChangeTime;

  @Uint32()
  external int FileAttributes;
}

/// {@category Struct}
class PRJ_NOTIFICATION_MAPPING extends Struct {
  @Uint32()
  external int NotificationBitMask;

  external Pointer<Utf16> NotificationRoot;
}

/// {@category Struct}
class PRJ_NOTIFICATION_PARAMETERS extends Union {
  external _PRJ_NOTIFICATION_PARAMETERS__PostCreate_e__Struct PostCreate;

  external _PRJ_NOTIFICATION_PARAMETERS__FileRenamed_e__Struct FileRenamed;

  external _PRJ_NOTIFICATION_PARAMETERS__FileDeletedOnHandleClose_e__Struct
      FileDeletedOnHandleClose;
}

/// {@category Struct}
class _PRJ_NOTIFICATION_PARAMETERS__PostCreate_e__Struct extends Struct {
  @Uint32()
  external int NotificationMask;
}

extension PRJ_NOTIFICATION_PARAMETERS_Extension on PRJ_NOTIFICATION_PARAMETERS {
  int get NotificationMask => this.PostCreate.NotificationMask;
  set NotificationMask(int value) => this.PostCreate.NotificationMask = value;
}

/// {@category Struct}
class _PRJ_NOTIFICATION_PARAMETERS__FileRenamed_e__Struct extends Struct {
  @Uint32()
  external int NotificationMask;
}

extension PRJ_NOTIFICATION_PARAMETERS_Extension_1
    on PRJ_NOTIFICATION_PARAMETERS {
  int get NotificationMask => this.FileRenamed.NotificationMask;
  set NotificationMask(int value) => this.FileRenamed.NotificationMask = value;
}

/// {@category Struct}
class _PRJ_NOTIFICATION_PARAMETERS__FileDeletedOnHandleClose_e__Struct
    extends Struct {
  @Uint8()
  external int IsFileModified;
}

extension PRJ_NOTIFICATION_PARAMETERS_Extension_2
    on PRJ_NOTIFICATION_PARAMETERS {
  int get IsFileModified => this.FileDeletedOnHandleClose.IsFileModified;
  set IsFileModified(int value) =>
      this.FileDeletedOnHandleClose.IsFileModified = value;
}

/// {@category Struct}
class PRJ_PLACEHOLDER_INFO extends Struct {
  external PRJ_FILE_BASIC_INFO FileBasicInfo;

  external _PRJ_PLACEHOLDER_INFO__EaInformation_e__Struct EaInformation;

  external _PRJ_PLACEHOLDER_INFO__SecurityInformation_e__Struct
      SecurityInformation;

  external _PRJ_PLACEHOLDER_INFO__StreamsInformation_e__Struct
      StreamsInformation;

  external PRJ_PLACEHOLDER_VERSION_INFO VersionInfo;

  @Array(1)
  external Array<Uint8> VariableData;
}

/// {@category Struct}
class _PRJ_PLACEHOLDER_INFO__EaInformation_e__Struct extends Struct {
  @Uint32()
  external int EaBufferSize;

  @Uint32()
  external int OffsetToFirstEa;
}

extension PRJ_PLACEHOLDER_INFO_Extension on PRJ_PLACEHOLDER_INFO {
  int get EaBufferSize => this.EaInformation.EaBufferSize;
  set EaBufferSize(int value) => this.EaInformation.EaBufferSize = value;

  int get OffsetToFirstEa => this.EaInformation.OffsetToFirstEa;
  set OffsetToFirstEa(int value) => this.EaInformation.OffsetToFirstEa = value;
}

/// {@category Struct}
class _PRJ_PLACEHOLDER_INFO__SecurityInformation_e__Struct extends Struct {
  @Uint32()
  external int SecurityBufferSize;

  @Uint32()
  external int OffsetToSecurityDescriptor;
}

extension PRJ_PLACEHOLDER_INFO_Extension_1 on PRJ_PLACEHOLDER_INFO {
  int get SecurityBufferSize => this.SecurityInformation.SecurityBufferSize;
  set SecurityBufferSize(int value) =>
      this.SecurityInformation.SecurityBufferSize = value;

  int get OffsetToSecurityDescriptor =>
      this.SecurityInformation.OffsetToSecurityDescriptor;
  set OffsetToSecurityDescriptor(int value) =>
      this.SecurityInformation.OffsetToSecurityDescriptor = value;
}

/// {@category Struct}
class _PRJ_PLACEHOLDER_INFO__StreamsInformation_e__Struct extends Struct {
  @Uint32()
  external int StreamsInfoBufferSize;

  @Uint32()
  external int OffsetToFirstStreamInfo;
}

extension PRJ_PLACEHOLDER_INFO_Extension_2 on PRJ_PLACEHOLDER_INFO {
  int get StreamsInfoBufferSize =>
      this.StreamsInformation.StreamsInfoBufferSize;
  set StreamsInfoBufferSize(int value) =>
      this.StreamsInformation.StreamsInfoBufferSize = value;

  int get OffsetToFirstStreamInfo =>
      this.StreamsInformation.OffsetToFirstStreamInfo;
  set OffsetToFirstStreamInfo(int value) =>
      this.StreamsInformation.OffsetToFirstStreamInfo = value;
}

/// {@category Struct}
class PRJ_PLACEHOLDER_VERSION_INFO extends Struct {
  @Array(128)
  external Array<Uint8> ProviderID;

  @Array(128)
  external Array<Uint8> ContentID;
}

/// {@category Struct}
class PRJ_STARTVIRTUALIZING_OPTIONS extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int PoolThreadCount;

  @Uint32()
  external int ConcurrentThreadCount;

  external Pointer<PRJ_NOTIFICATION_MAPPING> NotificationMappings;

  @Uint32()
  external int NotificationMappingsCount;
}

/// {@category Struct}
class PRJ_VIRTUALIZATION_INSTANCE_INFO extends Struct {
  external GUID InstanceID;

  @Uint32()
  external int WriteAlignment;
}
