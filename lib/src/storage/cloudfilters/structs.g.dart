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
import '../../storage/cloudfilters/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/correlationvector/structs.g.dart';
import '../../storage/cloudfilters/callbacks.g.dart';
import '../../storage/filesystem/structs.g.dart';

/// {@category Struct}
class CF_CALLBACK_INFO extends Struct {
  @Uint32()
  external int StructSize;

  @IntPtr()
  external int ConnectionKey;

  external Pointer CallbackContext;

  external Pointer<Utf16> VolumeGuidName;

  external Pointer<Utf16> VolumeDosName;

  @Uint32()
  external int VolumeSerialNumber;

  @Int64()
  external int SyncRootFileId;

  external Pointer SyncRootIdentity;

  @Uint32()
  external int SyncRootIdentityLength;

  @Int64()
  external int FileId;

  @Int64()
  external int FileSize;

  external Pointer FileIdentity;

  @Uint32()
  external int FileIdentityLength;

  external Pointer<Utf16> NormalizedPath;

  @Int64()
  external int TransferKey;

  @Uint8()
  external int PriorityHint;

  external Pointer<CORRELATION_VECTOR> CorrelationVector;

  external Pointer<CF_PROCESS_INFO> ProcessInfo;

  @Int64()
  external int RequestKey;
}

/// {@category Struct}
class CF_CALLBACK_PARAMETERS extends Struct {
  @Uint32()
  external int ParamSize;

  external _CF_CALLBACK_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CF_CALLBACK_PARAMETERS__Anonymous_e__Union extends Union {
  external _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Cancel_e__Struct Cancel;

  external _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__FetchData_e__Struct
      FetchData;

  external _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__ValidateData_e__Struct
      ValidateData;

  external _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__FetchPlaceholders_e__Struct
      FetchPlaceholders;

  external _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__OpenCompletion_e__Struct
      OpenCompletion;

  external _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__CloseCompletion_e__Struct
      CloseCompletion;

  external _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Dehydrate_e__Struct
      Dehydrate;

  external _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__DehydrateCompletion_e__Struct
      DehydrateCompletion;

  external _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Delete_e__Struct Delete;

  external _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__DeleteCompletion_e__Struct
      DeleteCompletion;

  external _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Rename_e__Struct Rename;

  external _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__RenameCompletion_e__Struct
      RenameCompletion;
}

/// {@category Struct}
class _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Cancel_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  external _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Cancel_e__Struct__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Cancel_e__Struct__Anonymous_e__Union
    extends Union {
  external _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Cancel_e__Struct__Anonymous_e__Union__FetchData_e__Struct
      FetchData;
}

/// {@category Struct}
class _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Cancel_e__Struct__Anonymous_e__Union__FetchData_e__Struct
    extends Struct {
  @Int64()
  external int FileOffset;

  @Int64()
  external int Length;
}

extension CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Cancel_e__Struct__Anonymous_e__Union_Extension
    on CF_CALLBACK_PARAMETERS {
  int get FileOffset => this.Anonymous.Cancel.Anonymous.FetchData.FileOffset;
  set FileOffset(int value) =>
      this.Anonymous.Cancel.Anonymous.FetchData.FileOffset = value;

  int get Length => this.Anonymous.Cancel.Anonymous.FetchData.Length;
  set Length(int value) =>
      this.Anonymous.Cancel.Anonymous.FetchData.Length = value;
}

extension CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Cancel_e__Struct_Extension
    on CF_CALLBACK_PARAMETERS {
  _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Cancel_e__Struct__Anonymous_e__Union__FetchData_e__Struct
      get FetchData => this.Anonymous.Cancel.Anonymous.FetchData;
  set FetchData(
          _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Cancel_e__Struct__Anonymous_e__Union__FetchData_e__Struct
              value) =>
      this.Anonymous.Cancel.Anonymous.FetchData = value;
}

extension CF_CALLBACK_PARAMETERS__Anonymous_e__Union_Extension
    on CF_CALLBACK_PARAMETERS {
  int get Flags => this.Anonymous.Cancel.Flags;
  set Flags(int value) => this.Anonymous.Cancel.Flags = value;

  _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Cancel_e__Struct__Anonymous_e__Union
      get Anonymous => this.Anonymous.Cancel.Anonymous;
  set Anonymous(
          _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Cancel_e__Struct__Anonymous_e__Union
              value) =>
      this.Anonymous.Cancel.Anonymous = value;
}

/// {@category Struct}
class _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__FetchData_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  @Int64()
  external int RequiredFileOffset;

  @Int64()
  external int RequiredLength;

  @Int64()
  external int OptionalFileOffset;

  @Int64()
  external int OptionalLength;

  @Int64()
  external int LastDehydrationTime;

  @Int32()
  external int LastDehydrationReason;
}

extension CF_CALLBACK_PARAMETERS__Anonymous_e__Union_Extension_1
    on CF_CALLBACK_PARAMETERS {
  int get Flags => this.Anonymous.FetchData.Flags;
  set Flags(int value) => this.Anonymous.FetchData.Flags = value;

  int get RequiredFileOffset => this.Anonymous.FetchData.RequiredFileOffset;
  set RequiredFileOffset(int value) =>
      this.Anonymous.FetchData.RequiredFileOffset = value;

  int get RequiredLength => this.Anonymous.FetchData.RequiredLength;
  set RequiredLength(int value) =>
      this.Anonymous.FetchData.RequiredLength = value;

  int get OptionalFileOffset => this.Anonymous.FetchData.OptionalFileOffset;
  set OptionalFileOffset(int value) =>
      this.Anonymous.FetchData.OptionalFileOffset = value;

  int get OptionalLength => this.Anonymous.FetchData.OptionalLength;
  set OptionalLength(int value) =>
      this.Anonymous.FetchData.OptionalLength = value;

  int get LastDehydrationTime => this.Anonymous.FetchData.LastDehydrationTime;
  set LastDehydrationTime(int value) =>
      this.Anonymous.FetchData.LastDehydrationTime = value;

  int get LastDehydrationReason =>
      this.Anonymous.FetchData.LastDehydrationReason;
  set LastDehydrationReason(int value) =>
      this.Anonymous.FetchData.LastDehydrationReason = value;
}

/// {@category Struct}
class _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__ValidateData_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  @Int64()
  external int RequiredFileOffset;

  @Int64()
  external int RequiredLength;
}

extension CF_CALLBACK_PARAMETERS__Anonymous_e__Union_Extension_2
    on CF_CALLBACK_PARAMETERS {
  int get Flags => this.Anonymous.ValidateData.Flags;
  set Flags(int value) => this.Anonymous.ValidateData.Flags = value;

  int get RequiredFileOffset => this.Anonymous.ValidateData.RequiredFileOffset;
  set RequiredFileOffset(int value) =>
      this.Anonymous.ValidateData.RequiredFileOffset = value;

  int get RequiredLength => this.Anonymous.ValidateData.RequiredLength;
  set RequiredLength(int value) =>
      this.Anonymous.ValidateData.RequiredLength = value;
}

/// {@category Struct}
class _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__FetchPlaceholders_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  external Pointer<Utf16> Pattern;
}

extension CF_CALLBACK_PARAMETERS__Anonymous_e__Union_Extension_3
    on CF_CALLBACK_PARAMETERS {
  int get Flags => this.Anonymous.FetchPlaceholders.Flags;
  set Flags(int value) => this.Anonymous.FetchPlaceholders.Flags = value;

  Pointer<Utf16> get Pattern => this.Anonymous.FetchPlaceholders.Pattern;
  set Pattern(Pointer<Utf16> value) =>
      this.Anonymous.FetchPlaceholders.Pattern = value;
}

/// {@category Struct}
class _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__OpenCompletion_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;
}

extension CF_CALLBACK_PARAMETERS__Anonymous_e__Union_Extension_4
    on CF_CALLBACK_PARAMETERS {
  int get Flags => this.Anonymous.OpenCompletion.Flags;
  set Flags(int value) => this.Anonymous.OpenCompletion.Flags = value;
}

/// {@category Struct}
class _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__CloseCompletion_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;
}

extension CF_CALLBACK_PARAMETERS__Anonymous_e__Union_Extension_5
    on CF_CALLBACK_PARAMETERS {
  int get Flags => this.Anonymous.CloseCompletion.Flags;
  set Flags(int value) => this.Anonymous.CloseCompletion.Flags = value;
}

/// {@category Struct}
class _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Dehydrate_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  @Int32()
  external int Reason;
}

extension CF_CALLBACK_PARAMETERS__Anonymous_e__Union_Extension_6
    on CF_CALLBACK_PARAMETERS {
  int get Flags => this.Anonymous.Dehydrate.Flags;
  set Flags(int value) => this.Anonymous.Dehydrate.Flags = value;

  int get Reason => this.Anonymous.Dehydrate.Reason;
  set Reason(int value) => this.Anonymous.Dehydrate.Reason = value;
}

/// {@category Struct}
class _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__DehydrateCompletion_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  @Int32()
  external int Reason;
}

extension CF_CALLBACK_PARAMETERS__Anonymous_e__Union_Extension_7
    on CF_CALLBACK_PARAMETERS {
  int get Flags => this.Anonymous.DehydrateCompletion.Flags;
  set Flags(int value) => this.Anonymous.DehydrateCompletion.Flags = value;

  int get Reason => this.Anonymous.DehydrateCompletion.Reason;
  set Reason(int value) => this.Anonymous.DehydrateCompletion.Reason = value;
}

/// {@category Struct}
class _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Delete_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;
}

extension CF_CALLBACK_PARAMETERS__Anonymous_e__Union_Extension_8
    on CF_CALLBACK_PARAMETERS {
  int get Flags => this.Anonymous.Delete.Flags;
  set Flags(int value) => this.Anonymous.Delete.Flags = value;
}

/// {@category Struct}
class _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__DeleteCompletion_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;
}

extension CF_CALLBACK_PARAMETERS__Anonymous_e__Union_Extension_9
    on CF_CALLBACK_PARAMETERS {
  int get Flags => this.Anonymous.DeleteCompletion.Flags;
  set Flags(int value) => this.Anonymous.DeleteCompletion.Flags = value;
}

/// {@category Struct}
class _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Rename_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  external Pointer<Utf16> TargetPath;
}

extension CF_CALLBACK_PARAMETERS__Anonymous_e__Union_Extension_10
    on CF_CALLBACK_PARAMETERS {
  int get Flags => this.Anonymous.Rename.Flags;
  set Flags(int value) => this.Anonymous.Rename.Flags = value;

  Pointer<Utf16> get TargetPath => this.Anonymous.Rename.TargetPath;
  set TargetPath(Pointer<Utf16> value) =>
      this.Anonymous.Rename.TargetPath = value;
}

/// {@category Struct}
class _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__RenameCompletion_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  external Pointer<Utf16> SourcePath;
}

extension CF_CALLBACK_PARAMETERS__Anonymous_e__Union_Extension_11
    on CF_CALLBACK_PARAMETERS {
  int get Flags => this.Anonymous.RenameCompletion.Flags;
  set Flags(int value) => this.Anonymous.RenameCompletion.Flags = value;

  Pointer<Utf16> get SourcePath => this.Anonymous.RenameCompletion.SourcePath;
  set SourcePath(Pointer<Utf16> value) =>
      this.Anonymous.RenameCompletion.SourcePath = value;
}

extension CF_CALLBACK_PARAMETERS_Extension on CF_CALLBACK_PARAMETERS {
  _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Cancel_e__Struct get Cancel =>
      this.Anonymous.Cancel;
  set Cancel(
          _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Cancel_e__Struct
              value) =>
      this.Anonymous.Cancel = value;

  _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__FetchData_e__Struct
      get FetchData => this.Anonymous.FetchData;
  set FetchData(
          _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__FetchData_e__Struct
              value) =>
      this.Anonymous.FetchData = value;

  _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__ValidateData_e__Struct
      get ValidateData => this.Anonymous.ValidateData;
  set ValidateData(
          _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__ValidateData_e__Struct
              value) =>
      this.Anonymous.ValidateData = value;

  _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__FetchPlaceholders_e__Struct
      get FetchPlaceholders => this.Anonymous.FetchPlaceholders;
  set FetchPlaceholders(
          _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__FetchPlaceholders_e__Struct
              value) =>
      this.Anonymous.FetchPlaceholders = value;

  _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__OpenCompletion_e__Struct
      get OpenCompletion => this.Anonymous.OpenCompletion;
  set OpenCompletion(
          _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__OpenCompletion_e__Struct
              value) =>
      this.Anonymous.OpenCompletion = value;

  _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__CloseCompletion_e__Struct
      get CloseCompletion => this.Anonymous.CloseCompletion;
  set CloseCompletion(
          _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__CloseCompletion_e__Struct
              value) =>
      this.Anonymous.CloseCompletion = value;

  _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Dehydrate_e__Struct
      get Dehydrate => this.Anonymous.Dehydrate;
  set Dehydrate(
          _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Dehydrate_e__Struct
              value) =>
      this.Anonymous.Dehydrate = value;

  _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__DehydrateCompletion_e__Struct
      get DehydrateCompletion => this.Anonymous.DehydrateCompletion;
  set DehydrateCompletion(
          _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__DehydrateCompletion_e__Struct
              value) =>
      this.Anonymous.DehydrateCompletion = value;

  _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Delete_e__Struct get Delete =>
      this.Anonymous.Delete;
  set Delete(
          _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Delete_e__Struct
              value) =>
      this.Anonymous.Delete = value;

  _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__DeleteCompletion_e__Struct
      get DeleteCompletion => this.Anonymous.DeleteCompletion;
  set DeleteCompletion(
          _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__DeleteCompletion_e__Struct
              value) =>
      this.Anonymous.DeleteCompletion = value;

  _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Rename_e__Struct get Rename =>
      this.Anonymous.Rename;
  set Rename(
          _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__Rename_e__Struct
              value) =>
      this.Anonymous.Rename = value;

  _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__RenameCompletion_e__Struct
      get RenameCompletion => this.Anonymous.RenameCompletion;
  set RenameCompletion(
          _CF_CALLBACK_PARAMETERS__Anonymous_e__Union__RenameCompletion_e__Struct
              value) =>
      this.Anonymous.RenameCompletion = value;
}

/// {@category Struct}
class CF_CALLBACK_REGISTRATION extends Struct {
  @Int32()
  external int Type;

  external Pointer<NativeFunction<CF_CALLBACK>> Callback;
}

/// {@category Struct}
class CF_FILE_RANGE extends Struct {
  @Int64()
  external int StartingOffset;

  @Int64()
  external int Length;
}

/// {@category Struct}
class CF_FS_METADATA extends Struct {
  external FILE_BASIC_INFO BasicInfo;

  @Int64()
  external int FileSize;
}

/// {@category Struct}
class CF_HYDRATION_POLICY extends Struct {
  external CF_HYDRATION_POLICY_PRIMARY_USHORT Primary;

  external CF_HYDRATION_POLICY_MODIFIER_USHORT Modifier;
}

/// {@category Struct}
class CF_HYDRATION_POLICY_MODIFIER_USHORT extends Struct {
  @Uint16()
  external int us;
}

/// {@category Struct}
class CF_HYDRATION_POLICY_PRIMARY_USHORT extends Struct {
  @Uint16()
  external int us;
}

/// {@category Struct}
class CF_OPERATION_INFO extends Struct {
  @Uint32()
  external int StructSize;

  @Int32()
  external int Type;

  @IntPtr()
  external int ConnectionKey;

  @Int64()
  external int TransferKey;

  external Pointer<CORRELATION_VECTOR> CorrelationVector;

  external Pointer<CF_SYNC_STATUS> SyncStatus;

  @Int64()
  external int RequestKey;
}

/// {@category Struct}
class CF_OPERATION_PARAMETERS extends Struct {
  @Uint32()
  external int ParamSize;

  external _CF_OPERATION_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CF_OPERATION_PARAMETERS__Anonymous_e__Union extends Union {
  external _CF_OPERATION_PARAMETERS__Anonymous_e__Union__TransferData_e__Struct
      TransferData;

  external _CF_OPERATION_PARAMETERS__Anonymous_e__Union__RetrieveData_e__Struct
      RetrieveData;

  external _CF_OPERATION_PARAMETERS__Anonymous_e__Union__AckData_e__Struct
      AckData;

  external _CF_OPERATION_PARAMETERS__Anonymous_e__Union__RestartHydration_e__Struct
      RestartHydration;

  external _CF_OPERATION_PARAMETERS__Anonymous_e__Union__TransferPlaceholders_e__Struct
      TransferPlaceholders;

  external _CF_OPERATION_PARAMETERS__Anonymous_e__Union__AckDehydrate_e__Struct
      AckDehydrate;

  external _CF_OPERATION_PARAMETERS__Anonymous_e__Union__AckRename_e__Struct
      AckRename;

  external _CF_OPERATION_PARAMETERS__Anonymous_e__Union__AckDelete_e__Struct
      AckDelete;
}

/// {@category Struct}
class _CF_OPERATION_PARAMETERS__Anonymous_e__Union__TransferData_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  @Int32()
  external int CompletionStatus;

  external Pointer Buffer;

  @Int64()
  external int Offset;

  @Int64()
  external int Length;
}

extension CF_OPERATION_PARAMETERS__Anonymous_e__Union_Extension
    on CF_OPERATION_PARAMETERS {
  int get Flags => this.Anonymous.TransferData.Flags;
  set Flags(int value) => this.Anonymous.TransferData.Flags = value;

  int get CompletionStatus => this.Anonymous.TransferData.CompletionStatus;
  set CompletionStatus(int value) =>
      this.Anonymous.TransferData.CompletionStatus = value;

  Pointer get Buffer => this.Anonymous.TransferData.Buffer;
  set Buffer(Pointer value) => this.Anonymous.TransferData.Buffer = value;

  int get Offset => this.Anonymous.TransferData.Offset;
  set Offset(int value) => this.Anonymous.TransferData.Offset = value;

  int get Length => this.Anonymous.TransferData.Length;
  set Length(int value) => this.Anonymous.TransferData.Length = value;
}

/// {@category Struct}
class _CF_OPERATION_PARAMETERS__Anonymous_e__Union__RetrieveData_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  external Pointer Buffer;

  @Int64()
  external int Offset;

  @Int64()
  external int Length;

  @Int64()
  external int ReturnedLength;
}

extension CF_OPERATION_PARAMETERS__Anonymous_e__Union_Extension_1
    on CF_OPERATION_PARAMETERS {
  int get Flags => this.Anonymous.RetrieveData.Flags;
  set Flags(int value) => this.Anonymous.RetrieveData.Flags = value;

  Pointer get Buffer => this.Anonymous.RetrieveData.Buffer;
  set Buffer(Pointer value) => this.Anonymous.RetrieveData.Buffer = value;

  int get Offset => this.Anonymous.RetrieveData.Offset;
  set Offset(int value) => this.Anonymous.RetrieveData.Offset = value;

  int get Length => this.Anonymous.RetrieveData.Length;
  set Length(int value) => this.Anonymous.RetrieveData.Length = value;

  int get ReturnedLength => this.Anonymous.RetrieveData.ReturnedLength;
  set ReturnedLength(int value) =>
      this.Anonymous.RetrieveData.ReturnedLength = value;
}

/// {@category Struct}
class _CF_OPERATION_PARAMETERS__Anonymous_e__Union__AckData_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  @Int32()
  external int CompletionStatus;

  @Int64()
  external int Offset;

  @Int64()
  external int Length;
}

extension CF_OPERATION_PARAMETERS__Anonymous_e__Union_Extension_2
    on CF_OPERATION_PARAMETERS {
  int get Flags => this.Anonymous.AckData.Flags;
  set Flags(int value) => this.Anonymous.AckData.Flags = value;

  int get CompletionStatus => this.Anonymous.AckData.CompletionStatus;
  set CompletionStatus(int value) =>
      this.Anonymous.AckData.CompletionStatus = value;

  int get Offset => this.Anonymous.AckData.Offset;
  set Offset(int value) => this.Anonymous.AckData.Offset = value;

  int get Length => this.Anonymous.AckData.Length;
  set Length(int value) => this.Anonymous.AckData.Length = value;
}

/// {@category Struct}
class _CF_OPERATION_PARAMETERS__Anonymous_e__Union__RestartHydration_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  external Pointer<CF_FS_METADATA> FsMetadata;

  external Pointer FileIdentity;

  @Uint32()
  external int FileIdentityLength;
}

extension CF_OPERATION_PARAMETERS__Anonymous_e__Union_Extension_3
    on CF_OPERATION_PARAMETERS {
  int get Flags => this.Anonymous.RestartHydration.Flags;
  set Flags(int value) => this.Anonymous.RestartHydration.Flags = value;

  Pointer<CF_FS_METADATA> get FsMetadata =>
      this.Anonymous.RestartHydration.FsMetadata;
  set FsMetadata(Pointer<CF_FS_METADATA> value) =>
      this.Anonymous.RestartHydration.FsMetadata = value;

  Pointer get FileIdentity => this.Anonymous.RestartHydration.FileIdentity;
  set FileIdentity(Pointer value) =>
      this.Anonymous.RestartHydration.FileIdentity = value;

  int get FileIdentityLength =>
      this.Anonymous.RestartHydration.FileIdentityLength;
  set FileIdentityLength(int value) =>
      this.Anonymous.RestartHydration.FileIdentityLength = value;
}

/// {@category Struct}
class _CF_OPERATION_PARAMETERS__Anonymous_e__Union__TransferPlaceholders_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  @Int32()
  external int CompletionStatus;

  @Int64()
  external int PlaceholderTotalCount;

  external Pointer<CF_PLACEHOLDER_CREATE_INFO> PlaceholderArray;

  @Uint32()
  external int PlaceholderCount;

  @Uint32()
  external int EntriesProcessed;
}

extension CF_OPERATION_PARAMETERS__Anonymous_e__Union_Extension_4
    on CF_OPERATION_PARAMETERS {
  int get Flags => this.Anonymous.TransferPlaceholders.Flags;
  set Flags(int value) => this.Anonymous.TransferPlaceholders.Flags = value;

  int get CompletionStatus =>
      this.Anonymous.TransferPlaceholders.CompletionStatus;
  set CompletionStatus(int value) =>
      this.Anonymous.TransferPlaceholders.CompletionStatus = value;

  int get PlaceholderTotalCount =>
      this.Anonymous.TransferPlaceholders.PlaceholderTotalCount;
  set PlaceholderTotalCount(int value) =>
      this.Anonymous.TransferPlaceholders.PlaceholderTotalCount = value;

  Pointer<CF_PLACEHOLDER_CREATE_INFO> get PlaceholderArray =>
      this.Anonymous.TransferPlaceholders.PlaceholderArray;
  set PlaceholderArray(Pointer<CF_PLACEHOLDER_CREATE_INFO> value) =>
      this.Anonymous.TransferPlaceholders.PlaceholderArray = value;

  int get PlaceholderCount =>
      this.Anonymous.TransferPlaceholders.PlaceholderCount;
  set PlaceholderCount(int value) =>
      this.Anonymous.TransferPlaceholders.PlaceholderCount = value;

  int get EntriesProcessed =>
      this.Anonymous.TransferPlaceholders.EntriesProcessed;
  set EntriesProcessed(int value) =>
      this.Anonymous.TransferPlaceholders.EntriesProcessed = value;
}

/// {@category Struct}
class _CF_OPERATION_PARAMETERS__Anonymous_e__Union__AckDehydrate_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  @Int32()
  external int CompletionStatus;

  external Pointer FileIdentity;

  @Uint32()
  external int FileIdentityLength;
}

extension CF_OPERATION_PARAMETERS__Anonymous_e__Union_Extension_5
    on CF_OPERATION_PARAMETERS {
  int get Flags => this.Anonymous.AckDehydrate.Flags;
  set Flags(int value) => this.Anonymous.AckDehydrate.Flags = value;

  int get CompletionStatus => this.Anonymous.AckDehydrate.CompletionStatus;
  set CompletionStatus(int value) =>
      this.Anonymous.AckDehydrate.CompletionStatus = value;

  Pointer get FileIdentity => this.Anonymous.AckDehydrate.FileIdentity;
  set FileIdentity(Pointer value) =>
      this.Anonymous.AckDehydrate.FileIdentity = value;

  int get FileIdentityLength => this.Anonymous.AckDehydrate.FileIdentityLength;
  set FileIdentityLength(int value) =>
      this.Anonymous.AckDehydrate.FileIdentityLength = value;
}

/// {@category Struct}
class _CF_OPERATION_PARAMETERS__Anonymous_e__Union__AckRename_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  @Int32()
  external int CompletionStatus;
}

extension CF_OPERATION_PARAMETERS__Anonymous_e__Union_Extension_6
    on CF_OPERATION_PARAMETERS {
  int get Flags => this.Anonymous.AckRename.Flags;
  set Flags(int value) => this.Anonymous.AckRename.Flags = value;

  int get CompletionStatus => this.Anonymous.AckRename.CompletionStatus;
  set CompletionStatus(int value) =>
      this.Anonymous.AckRename.CompletionStatus = value;
}

/// {@category Struct}
class _CF_OPERATION_PARAMETERS__Anonymous_e__Union__AckDelete_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  @Int32()
  external int CompletionStatus;
}

extension CF_OPERATION_PARAMETERS__Anonymous_e__Union_Extension_7
    on CF_OPERATION_PARAMETERS {
  int get Flags => this.Anonymous.AckDelete.Flags;
  set Flags(int value) => this.Anonymous.AckDelete.Flags = value;

  int get CompletionStatus => this.Anonymous.AckDelete.CompletionStatus;
  set CompletionStatus(int value) =>
      this.Anonymous.AckDelete.CompletionStatus = value;
}

extension CF_OPERATION_PARAMETERS_Extension on CF_OPERATION_PARAMETERS {
  _CF_OPERATION_PARAMETERS__Anonymous_e__Union__TransferData_e__Struct
      get TransferData => this.Anonymous.TransferData;
  set TransferData(
          _CF_OPERATION_PARAMETERS__Anonymous_e__Union__TransferData_e__Struct
              value) =>
      this.Anonymous.TransferData = value;

  _CF_OPERATION_PARAMETERS__Anonymous_e__Union__RetrieveData_e__Struct
      get RetrieveData => this.Anonymous.RetrieveData;
  set RetrieveData(
          _CF_OPERATION_PARAMETERS__Anonymous_e__Union__RetrieveData_e__Struct
              value) =>
      this.Anonymous.RetrieveData = value;

  _CF_OPERATION_PARAMETERS__Anonymous_e__Union__AckData_e__Struct get AckData =>
      this.Anonymous.AckData;
  set AckData(
          _CF_OPERATION_PARAMETERS__Anonymous_e__Union__AckData_e__Struct
              value) =>
      this.Anonymous.AckData = value;

  _CF_OPERATION_PARAMETERS__Anonymous_e__Union__RestartHydration_e__Struct
      get RestartHydration => this.Anonymous.RestartHydration;
  set RestartHydration(
          _CF_OPERATION_PARAMETERS__Anonymous_e__Union__RestartHydration_e__Struct
              value) =>
      this.Anonymous.RestartHydration = value;

  _CF_OPERATION_PARAMETERS__Anonymous_e__Union__TransferPlaceholders_e__Struct
      get TransferPlaceholders => this.Anonymous.TransferPlaceholders;
  set TransferPlaceholders(
          _CF_OPERATION_PARAMETERS__Anonymous_e__Union__TransferPlaceholders_e__Struct
              value) =>
      this.Anonymous.TransferPlaceholders = value;

  _CF_OPERATION_PARAMETERS__Anonymous_e__Union__AckDehydrate_e__Struct
      get AckDehydrate => this.Anonymous.AckDehydrate;
  set AckDehydrate(
          _CF_OPERATION_PARAMETERS__Anonymous_e__Union__AckDehydrate_e__Struct
              value) =>
      this.Anonymous.AckDehydrate = value;

  _CF_OPERATION_PARAMETERS__Anonymous_e__Union__AckRename_e__Struct
      get AckRename => this.Anonymous.AckRename;
  set AckRename(
          _CF_OPERATION_PARAMETERS__Anonymous_e__Union__AckRename_e__Struct
              value) =>
      this.Anonymous.AckRename = value;

  _CF_OPERATION_PARAMETERS__Anonymous_e__Union__AckDelete_e__Struct
      get AckDelete => this.Anonymous.AckDelete;
  set AckDelete(
          _CF_OPERATION_PARAMETERS__Anonymous_e__Union__AckDelete_e__Struct
              value) =>
      this.Anonymous.AckDelete = value;
}

/// {@category Struct}
class CF_PLACEHOLDER_BASIC_INFO extends Struct {
  @Int32()
  external int PinState;

  @Int32()
  external int InSyncState;

  @Int64()
  external int FileId;

  @Int64()
  external int SyncRootFileId;

  @Uint32()
  external int FileIdentityLength;

  @Array(1)
  external Array<Uint8> FileIdentity;
}

/// {@category Struct}
class CF_PLACEHOLDER_CREATE_INFO extends Struct {
  external Pointer<Utf16> RelativeFileName;

  external CF_FS_METADATA FsMetadata;

  external Pointer FileIdentity;

  @Uint32()
  external int FileIdentityLength;

  @Uint32()
  external int Flags;

  @Int32()
  external int Result;

  @Int64()
  external int CreateUsn;
}

/// {@category Struct}
class CF_PLACEHOLDER_STANDARD_INFO extends Struct {
  @Int64()
  external int OnDiskDataSize;

  @Int64()
  external int ValidatedDataSize;

  @Int64()
  external int ModifiedDataSize;

  @Int64()
  external int PropertiesSize;

  @Int32()
  external int PinState;

  @Int32()
  external int InSyncState;

  @Int64()
  external int FileId;

  @Int64()
  external int SyncRootFileId;

  @Uint32()
  external int FileIdentityLength;

  @Array(1)
  external Array<Uint8> FileIdentity;
}

/// {@category Struct}
class CF_PLATFORM_INFO extends Struct {
  @Uint32()
  external int BuildNumber;

  @Uint32()
  external int RevisionNumber;

  @Uint32()
  external int IntegrationNumber;
}

/// {@category Struct}
class CF_POPULATION_POLICY extends Struct {
  external CF_POPULATION_POLICY_PRIMARY_USHORT Primary;

  external CF_POPULATION_POLICY_MODIFIER_USHORT Modifier;
}

/// {@category Struct}
class CF_POPULATION_POLICY_MODIFIER_USHORT extends Struct {
  @Uint16()
  external int us;
}

/// {@category Struct}
class CF_POPULATION_POLICY_PRIMARY_USHORT extends Struct {
  @Uint16()
  external int us;
}

/// {@category Struct}
class CF_PROCESS_INFO extends Struct {
  @Uint32()
  external int StructSize;

  @Uint32()
  external int ProcessId;

  external Pointer<Utf16> ImagePath;

  external Pointer<Utf16> PackageName;

  external Pointer<Utf16> ApplicationId;

  external Pointer<Utf16> CommandLine;

  @Uint32()
  external int SessionId;
}

/// {@category Struct}
class CF_SYNC_POLICIES extends Struct {
  @Uint32()
  external int StructSize;

  external CF_HYDRATION_POLICY Hydration;

  external CF_POPULATION_POLICY Population;

  @Uint32()
  external int InSync;

  @Uint32()
  external int HardLink;

  @Int32()
  external int PlaceholderManagement;
}

/// {@category Struct}
class CF_SYNC_REGISTRATION extends Struct {
  @Uint32()
  external int StructSize;

  external Pointer<Utf16> ProviderName;

  external Pointer<Utf16> ProviderVersion;

  external Pointer SyncRootIdentity;

  @Uint32()
  external int SyncRootIdentityLength;

  external Pointer FileIdentity;

  @Uint32()
  external int FileIdentityLength;

  external GUID ProviderId;
}

/// {@category Struct}
class CF_SYNC_ROOT_BASIC_INFO extends Struct {
  @Int64()
  external int SyncRootFileId;
}

/// {@category Struct}
class CF_SYNC_ROOT_PROVIDER_INFO extends Struct {
  @Uint32()
  external int ProviderStatus;

  @Array(256)
  external Array<Uint16> _ProviderName;

  String get ProviderName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_ProviderName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ProviderName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _ProviderName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _ProviderVersion;

  String get ProviderVersion {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_ProviderVersion[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ProviderVersion(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _ProviderVersion[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class CF_SYNC_ROOT_STANDARD_INFO extends Struct {
  @Int64()
  external int SyncRootFileId;

  external CF_HYDRATION_POLICY HydrationPolicy;

  external CF_POPULATION_POLICY PopulationPolicy;

  @Uint32()
  external int InSyncPolicy;

  @Uint32()
  external int HardLinkPolicy;

  @Uint32()
  external int ProviderStatus;

  @Array(256)
  external Array<Uint16> _ProviderName;

  String get ProviderName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_ProviderName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ProviderName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _ProviderName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _ProviderVersion;

  String get ProviderVersion {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_ProviderVersion[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ProviderVersion(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _ProviderVersion[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int SyncRootIdentityLength;

  @Array(1)
  external Array<Uint8> SyncRootIdentity;
}

/// {@category Struct}
class CF_SYNC_STATUS extends Struct {
  @Uint32()
  external int StructSize;

  @Uint32()
  external int Code;

  @Uint32()
  external int DescriptionOffset;

  @Uint32()
  external int DescriptionLength;

  @Uint32()
  external int DeviceIdOffset;

  @Uint32()
  external int DeviceIdLength;
}
