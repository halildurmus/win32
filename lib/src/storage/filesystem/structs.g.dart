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
import '../../storage/filesystem/structs.g.dart';
import '../../storage/filesystem/callbacks.g.dart';
import '../../security/structs.g.dart';

/// {@category Struct}
class BY_HANDLE_FILE_INFORMATION extends Struct {
  @Uint32()
  external int dwFileAttributes;

  external FILETIME ftCreationTime;

  external FILETIME ftLastAccessTime;

  external FILETIME ftLastWriteTime;

  @Uint32()
  external int dwVolumeSerialNumber;

  @Uint32()
  external int nFileSizeHigh;

  @Uint32()
  external int nFileSizeLow;

  @Uint32()
  external int nNumberOfLinks;

  @Uint32()
  external int nFileIndexHigh;

  @Uint32()
  external int nFileIndexLow;
}

/// {@category Struct}
class CLFS_LOG_NAME_INFORMATION extends Struct {
  @Uint16()
  external int NameLengthInBytes;

  @Array(1)
  external Array<Uint16> _Name;

  String get Name {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_Name[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Name(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _Name[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class CLFS_MGMT_NOTIFICATION extends Struct {
  @Int32()
  external int Notification;

  external CLS_LSN Lsn;

  @Uint16()
  external int LogIsPinned;
}

/// {@category Struct}
class CLFS_MGMT_POLICY extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int LengthInBytes;

  @Uint32()
  external int PolicyFlags;

  @Int32()
  external int PolicyType;

  external _CLFS_MGMT_POLICY__PolicyParameters_e__Union PolicyParameters;
}

/// {@category Struct}
class _CLFS_MGMT_POLICY__PolicyParameters_e__Union extends Union {
  external _CLFS_MGMT_POLICY__PolicyParameters_e__Union__MaximumSize_e__Struct
      MaximumSize;

  external _CLFS_MGMT_POLICY__PolicyParameters_e__Union__MinimumSize_e__Struct
      MinimumSize;

  external _CLFS_MGMT_POLICY__PolicyParameters_e__Union__NewContainerSize_e__Struct
      NewContainerSize;

  external _CLFS_MGMT_POLICY__PolicyParameters_e__Union__GrowthRate_e__Struct
      GrowthRate;

  external _CLFS_MGMT_POLICY__PolicyParameters_e__Union__LogTail_e__Struct
      LogTail;

  external _CLFS_MGMT_POLICY__PolicyParameters_e__Union__AutoShrink_e__Struct
      AutoShrink;

  external _CLFS_MGMT_POLICY__PolicyParameters_e__Union__AutoGrow_e__Struct
      AutoGrow;

  external _CLFS_MGMT_POLICY__PolicyParameters_e__Union__NewContainerPrefix_e__Struct
      NewContainerPrefix;

  external _CLFS_MGMT_POLICY__PolicyParameters_e__Union__NewContainerSuffix_e__Struct
      NewContainerSuffix;

  external _CLFS_MGMT_POLICY__PolicyParameters_e__Union__NewContainerExtension_e__Struct
      NewContainerExtension;
}

/// {@category Struct}
class _CLFS_MGMT_POLICY__PolicyParameters_e__Union__MaximumSize_e__Struct
    extends Struct {
  @Uint32()
  external int Containers;
}

extension CLFS_MGMT_POLICY__PolicyParameters_e__Union_Extension
    on CLFS_MGMT_POLICY {
  int get Containers => this.PolicyParameters.MaximumSize.Containers;
  set Containers(int value) =>
      this.PolicyParameters.MaximumSize.Containers = value;
}

/// {@category Struct}
class _CLFS_MGMT_POLICY__PolicyParameters_e__Union__MinimumSize_e__Struct
    extends Struct {
  @Uint32()
  external int Containers;
}

extension CLFS_MGMT_POLICY__PolicyParameters_e__Union_Extension_1
    on CLFS_MGMT_POLICY {
  int get Containers => this.PolicyParameters.MinimumSize.Containers;
  set Containers(int value) =>
      this.PolicyParameters.MinimumSize.Containers = value;
}

/// {@category Struct}
class _CLFS_MGMT_POLICY__PolicyParameters_e__Union__NewContainerSize_e__Struct
    extends Struct {
  @Uint32()
  external int SizeInBytes;
}

extension CLFS_MGMT_POLICY__PolicyParameters_e__Union_Extension_2
    on CLFS_MGMT_POLICY {
  int get SizeInBytes => this.PolicyParameters.NewContainerSize.SizeInBytes;
  set SizeInBytes(int value) =>
      this.PolicyParameters.NewContainerSize.SizeInBytes = value;
}

/// {@category Struct}
class _CLFS_MGMT_POLICY__PolicyParameters_e__Union__GrowthRate_e__Struct
    extends Struct {
  @Uint32()
  external int AbsoluteGrowthInContainers;

  @Uint32()
  external int RelativeGrowthPercentage;
}

extension CLFS_MGMT_POLICY__PolicyParameters_e__Union_Extension_3
    on CLFS_MGMT_POLICY {
  int get AbsoluteGrowthInContainers =>
      this.PolicyParameters.GrowthRate.AbsoluteGrowthInContainers;
  set AbsoluteGrowthInContainers(int value) =>
      this.PolicyParameters.GrowthRate.AbsoluteGrowthInContainers = value;

  int get RelativeGrowthPercentage =>
      this.PolicyParameters.GrowthRate.RelativeGrowthPercentage;
  set RelativeGrowthPercentage(int value) =>
      this.PolicyParameters.GrowthRate.RelativeGrowthPercentage = value;
}

/// {@category Struct}
class _CLFS_MGMT_POLICY__PolicyParameters_e__Union__LogTail_e__Struct
    extends Struct {
  @Uint32()
  external int MinimumAvailablePercentage;

  @Uint32()
  external int MinimumAvailableContainers;
}

extension CLFS_MGMT_POLICY__PolicyParameters_e__Union_Extension_4
    on CLFS_MGMT_POLICY {
  int get MinimumAvailablePercentage =>
      this.PolicyParameters.LogTail.MinimumAvailablePercentage;
  set MinimumAvailablePercentage(int value) =>
      this.PolicyParameters.LogTail.MinimumAvailablePercentage = value;

  int get MinimumAvailableContainers =>
      this.PolicyParameters.LogTail.MinimumAvailableContainers;
  set MinimumAvailableContainers(int value) =>
      this.PolicyParameters.LogTail.MinimumAvailableContainers = value;
}

/// {@category Struct}
class _CLFS_MGMT_POLICY__PolicyParameters_e__Union__AutoShrink_e__Struct
    extends Struct {
  @Uint32()
  external int Percentage;
}

extension CLFS_MGMT_POLICY__PolicyParameters_e__Union_Extension_5
    on CLFS_MGMT_POLICY {
  int get Percentage => this.PolicyParameters.AutoShrink.Percentage;
  set Percentage(int value) =>
      this.PolicyParameters.AutoShrink.Percentage = value;
}

/// {@category Struct}
class _CLFS_MGMT_POLICY__PolicyParameters_e__Union__AutoGrow_e__Struct
    extends Struct {
  @Uint32()
  external int Enabled;
}

extension CLFS_MGMT_POLICY__PolicyParameters_e__Union_Extension_6
    on CLFS_MGMT_POLICY {
  int get Enabled => this.PolicyParameters.AutoGrow.Enabled;
  set Enabled(int value) => this.PolicyParameters.AutoGrow.Enabled = value;
}

/// {@category Struct}
class _CLFS_MGMT_POLICY__PolicyParameters_e__Union__NewContainerPrefix_e__Struct
    extends Struct {
  @Uint16()
  external int PrefixLengthInBytes;

  @Array(1)
  external Array<Uint16> _PrefixString;

  String get PrefixString {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_PrefixString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set PrefixString(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _PrefixString[i] = stringToStore.codeUnitAt(i);
    }
  }
}

extension CLFS_MGMT_POLICY__PolicyParameters_e__Union_Extension_7
    on CLFS_MGMT_POLICY {
  int get PrefixLengthInBytes =>
      this.PolicyParameters.NewContainerPrefix.PrefixLengthInBytes;
  set PrefixLengthInBytes(int value) =>
      this.PolicyParameters.NewContainerPrefix.PrefixLengthInBytes = value;

  String get PrefixString =>
      this.PolicyParameters.NewContainerPrefix.PrefixString;
  set PrefixString(String value) =>
      this.PolicyParameters.NewContainerPrefix.PrefixString = value;
}

/// {@category Struct}
class _CLFS_MGMT_POLICY__PolicyParameters_e__Union__NewContainerSuffix_e__Struct
    extends Struct {
  @Uint64()
  external int NextContainerSuffix;
}

extension CLFS_MGMT_POLICY__PolicyParameters_e__Union_Extension_8
    on CLFS_MGMT_POLICY {
  int get NextContainerSuffix =>
      this.PolicyParameters.NewContainerSuffix.NextContainerSuffix;
  set NextContainerSuffix(int value) =>
      this.PolicyParameters.NewContainerSuffix.NextContainerSuffix = value;
}

/// {@category Struct}
class _CLFS_MGMT_POLICY__PolicyParameters_e__Union__NewContainerExtension_e__Struct
    extends Struct {
  @Uint16()
  external int ExtensionLengthInBytes;

  @Array(1)
  external Array<Uint16> _ExtensionString;

  String get ExtensionString {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_ExtensionString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ExtensionString(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _ExtensionString[i] = stringToStore.codeUnitAt(i);
    }
  }
}

extension CLFS_MGMT_POLICY__PolicyParameters_e__Union_Extension_9
    on CLFS_MGMT_POLICY {
  int get ExtensionLengthInBytes =>
      this.PolicyParameters.NewContainerExtension.ExtensionLengthInBytes;
  set ExtensionLengthInBytes(int value) =>
      this.PolicyParameters.NewContainerExtension.ExtensionLengthInBytes =
          value;

  String get ExtensionString =>
      this.PolicyParameters.NewContainerExtension.ExtensionString;
  set ExtensionString(String value) =>
      this.PolicyParameters.NewContainerExtension.ExtensionString = value;
}

extension CLFS_MGMT_POLICY_Extension on CLFS_MGMT_POLICY {
  _CLFS_MGMT_POLICY__PolicyParameters_e__Union__MaximumSize_e__Struct
      get MaximumSize => this.PolicyParameters.MaximumSize;
  set MaximumSize(
          _CLFS_MGMT_POLICY__PolicyParameters_e__Union__MaximumSize_e__Struct
              value) =>
      this.PolicyParameters.MaximumSize = value;

  _CLFS_MGMT_POLICY__PolicyParameters_e__Union__MinimumSize_e__Struct
      get MinimumSize => this.PolicyParameters.MinimumSize;
  set MinimumSize(
          _CLFS_MGMT_POLICY__PolicyParameters_e__Union__MinimumSize_e__Struct
              value) =>
      this.PolicyParameters.MinimumSize = value;

  _CLFS_MGMT_POLICY__PolicyParameters_e__Union__NewContainerSize_e__Struct
      get NewContainerSize => this.PolicyParameters.NewContainerSize;
  set NewContainerSize(
          _CLFS_MGMT_POLICY__PolicyParameters_e__Union__NewContainerSize_e__Struct
              value) =>
      this.PolicyParameters.NewContainerSize = value;

  _CLFS_MGMT_POLICY__PolicyParameters_e__Union__GrowthRate_e__Struct
      get GrowthRate => this.PolicyParameters.GrowthRate;
  set GrowthRate(
          _CLFS_MGMT_POLICY__PolicyParameters_e__Union__GrowthRate_e__Struct
              value) =>
      this.PolicyParameters.GrowthRate = value;

  _CLFS_MGMT_POLICY__PolicyParameters_e__Union__LogTail_e__Struct get LogTail =>
      this.PolicyParameters.LogTail;
  set LogTail(
          _CLFS_MGMT_POLICY__PolicyParameters_e__Union__LogTail_e__Struct
              value) =>
      this.PolicyParameters.LogTail = value;

  _CLFS_MGMT_POLICY__PolicyParameters_e__Union__AutoShrink_e__Struct
      get AutoShrink => this.PolicyParameters.AutoShrink;
  set AutoShrink(
          _CLFS_MGMT_POLICY__PolicyParameters_e__Union__AutoShrink_e__Struct
              value) =>
      this.PolicyParameters.AutoShrink = value;

  _CLFS_MGMT_POLICY__PolicyParameters_e__Union__AutoGrow_e__Struct
      get AutoGrow => this.PolicyParameters.AutoGrow;
  set AutoGrow(
          _CLFS_MGMT_POLICY__PolicyParameters_e__Union__AutoGrow_e__Struct
              value) =>
      this.PolicyParameters.AutoGrow = value;

  _CLFS_MGMT_POLICY__PolicyParameters_e__Union__NewContainerPrefix_e__Struct
      get NewContainerPrefix => this.PolicyParameters.NewContainerPrefix;
  set NewContainerPrefix(
          _CLFS_MGMT_POLICY__PolicyParameters_e__Union__NewContainerPrefix_e__Struct
              value) =>
      this.PolicyParameters.NewContainerPrefix = value;

  _CLFS_MGMT_POLICY__PolicyParameters_e__Union__NewContainerSuffix_e__Struct
      get NewContainerSuffix => this.PolicyParameters.NewContainerSuffix;
  set NewContainerSuffix(
          _CLFS_MGMT_POLICY__PolicyParameters_e__Union__NewContainerSuffix_e__Struct
              value) =>
      this.PolicyParameters.NewContainerSuffix = value;

  _CLFS_MGMT_POLICY__PolicyParameters_e__Union__NewContainerExtension_e__Struct
      get NewContainerExtension => this.PolicyParameters.NewContainerExtension;
  set NewContainerExtension(
          _CLFS_MGMT_POLICY__PolicyParameters_e__Union__NewContainerExtension_e__Struct
              value) =>
      this.PolicyParameters.NewContainerExtension = value;
}

/// {@category Struct}
class CLFS_NODE_ID extends Struct {
  @Uint32()
  external int cType;

  @Uint32()
  external int cbNode;
}

/// {@category Struct}
class CLFS_PHYSICAL_LSN_INFORMATION extends Struct {
  @Uint8()
  external int StreamIdentifier;

  external CLS_LSN VirtualLsn;

  external CLS_LSN PhysicalLsn;
}

/// {@category Struct}
class CLFS_STREAM_ID_INFORMATION extends Struct {
  @Uint8()
  external int StreamIdentifier;
}

/// {@category Struct}
class CLS_ARCHIVE_DESCRIPTOR extends Struct {
  @Uint64()
  external int coffLow;

  @Uint64()
  external int coffHigh;

  external CLS_CONTAINER_INFORMATION infoContainer;
}

/// {@category Struct}
class CLS_CONTAINER_INFORMATION extends Struct {
  @Uint32()
  external int FileAttributes;

  @Uint64()
  external int CreationTime;

  @Uint64()
  external int LastAccessTime;

  @Uint64()
  external int LastWriteTime;

  @Int64()
  external int ContainerSize;

  @Uint32()
  external int FileNameActualLength;

  @Uint32()
  external int FileNameLength;

  @Array(256)
  external Array<Uint16> _FileName;

  String get FileName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_FileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _FileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int State;

  @Uint32()
  external int PhysicalContainerId;

  @Uint32()
  external int LogicalContainerId;
}

/// {@category Struct}
class CLS_INFORMATION extends Struct {
  @Int64()
  external int TotalAvailable;

  @Int64()
  external int CurrentAvailable;

  @Int64()
  external int TotalReservation;

  @Uint64()
  external int BaseFileSize;

  @Uint64()
  external int ContainerSize;

  @Uint32()
  external int TotalContainers;

  @Uint32()
  external int FreeContainers;

  @Uint32()
  external int TotalClients;

  @Uint32()
  external int Attributes;

  @Uint32()
  external int FlushThreshold;

  @Uint32()
  external int SectorSize;

  external CLS_LSN MinArchiveTailLsn;

  external CLS_LSN BaseLsn;

  external CLS_LSN LastFlushedLsn;

  external CLS_LSN LastLsn;

  external CLS_LSN RestartLsn;

  external GUID Identity;
}

/// {@category Struct}
class CLS_IO_STATISTICS extends Struct {
  external CLS_IO_STATISTICS_HEADER hdrIoStats;

  @Uint64()
  external int cFlush;

  @Uint64()
  external int cbFlush;

  @Uint64()
  external int cMetaFlush;

  @Uint64()
  external int cbMetaFlush;
}

/// {@category Struct}
class CLS_IO_STATISTICS_HEADER extends Struct {
  @Uint8()
  external int ubMajorVersion;

  @Uint8()
  external int ubMinorVersion;

  @Int32()
  external int eStatsClass;

  @Uint16()
  external int cbLength;

  @Uint32()
  external int coffData;
}

/// {@category Struct}
class CLS_LSN extends Struct {
  @Uint64()
  external int Internal;
}

/// {@category Struct}
class CLS_SCAN_CONTEXT extends Struct {
  external CLFS_NODE_ID cidNode;

  @IntPtr()
  external int hLog;

  @Uint32()
  external int cIndex;

  @Uint32()
  external int cContainers;

  @Uint32()
  external int cContainersReturned;

  @Uint8()
  external int eScanMode;

  external Pointer<CLS_CONTAINER_INFORMATION> pinfoContainer;
}

/// {@category Struct}
class CLS_WRITE_ENTRY extends Struct {
  external Pointer Buffer;

  @Uint32()
  external int ByteLength;
}

/// {@category Struct}
class CONNECTION_INFO_0 extends Struct {
  @Uint32()
  external int coni0_id;
}

/// {@category Struct}
class CONNECTION_INFO_1 extends Struct {
  @Uint32()
  external int coni1_id;

  @Uint32()
  external int coni1_type;

  @Uint32()
  external int coni1_num_opens;

  @Uint32()
  external int coni1_num_users;

  @Uint32()
  external int coni1_time;

  external Pointer<Utf16> coni1_username;

  external Pointer<Utf16> coni1_netname;
}

/// {@category Struct}
class COPYFILE2_EXTENDED_PARAMETERS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwCopyFlags;

  external Pointer<Int32> pfCancel;

  external Pointer<NativeFunction<PCOPYFILE2_PROGRESS_ROUTINE>>
      pProgressRoutine;

  external Pointer pvCallbackContext;
}

/// {@category Struct}
class COPYFILE2_EXTENDED_PARAMETERS_V2 extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwCopyFlags;

  external Pointer<Int32> pfCancel;

  external Pointer<NativeFunction<PCOPYFILE2_PROGRESS_ROUTINE>>
      pProgressRoutine;

  external Pointer pvCallbackContext;

  @Uint32()
  external int dwCopyFlagsV2;

  @Uint32()
  external int ioDesiredSize;

  @Uint32()
  external int ioDesiredRate;

  @Array(8)
  external Array<Pointer> reserved;
}

/// {@category Struct}
class COPYFILE2_MESSAGE extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int dwPadding;

  external _COPYFILE2_MESSAGE__Info_e__Union Info;
}

/// {@category Struct}
class _COPYFILE2_MESSAGE__Info_e__Union extends Union {
  external _COPYFILE2_MESSAGE__Info_e__Union__ChunkStarted_e__Struct
      ChunkStarted;

  external _COPYFILE2_MESSAGE__Info_e__Union__ChunkFinished_e__Struct
      ChunkFinished;

  external _COPYFILE2_MESSAGE__Info_e__Union__StreamStarted_e__Struct
      StreamStarted;

  external _COPYFILE2_MESSAGE__Info_e__Union__StreamFinished_e__Struct
      StreamFinished;

  external _COPYFILE2_MESSAGE__Info_e__Union__PollContinue_e__Struct
      PollContinue;

  external _COPYFILE2_MESSAGE__Info_e__Union__Error_e__Struct Error;
}

/// {@category Struct}
class _COPYFILE2_MESSAGE__Info_e__Union__ChunkStarted_e__Struct extends Struct {
  @Uint32()
  external int dwStreamNumber;

  @Uint32()
  external int dwReserved;

  @IntPtr()
  external int hSourceFile;

  @IntPtr()
  external int hDestinationFile;

  @Uint64()
  external int uliChunkNumber;

  @Uint64()
  external int uliChunkSize;

  @Uint64()
  external int uliStreamSize;

  @Uint64()
  external int uliTotalFileSize;
}

extension COPYFILE2_MESSAGE__Info_e__Union_Extension on COPYFILE2_MESSAGE {
  int get dwStreamNumber => this.Info.ChunkStarted.dwStreamNumber;
  set dwStreamNumber(int value) =>
      this.Info.ChunkStarted.dwStreamNumber = value;

  int get dwReserved => this.Info.ChunkStarted.dwReserved;
  set dwReserved(int value) => this.Info.ChunkStarted.dwReserved = value;

  int get hSourceFile => this.Info.ChunkStarted.hSourceFile;
  set hSourceFile(int value) => this.Info.ChunkStarted.hSourceFile = value;

  int get hDestinationFile => this.Info.ChunkStarted.hDestinationFile;
  set hDestinationFile(int value) =>
      this.Info.ChunkStarted.hDestinationFile = value;

  int get uliChunkNumber => this.Info.ChunkStarted.uliChunkNumber;
  set uliChunkNumber(int value) =>
      this.Info.ChunkStarted.uliChunkNumber = value;

  int get uliChunkSize => this.Info.ChunkStarted.uliChunkSize;
  set uliChunkSize(int value) => this.Info.ChunkStarted.uliChunkSize = value;

  int get uliStreamSize => this.Info.ChunkStarted.uliStreamSize;
  set uliStreamSize(int value) => this.Info.ChunkStarted.uliStreamSize = value;

  int get uliTotalFileSize => this.Info.ChunkStarted.uliTotalFileSize;
  set uliTotalFileSize(int value) =>
      this.Info.ChunkStarted.uliTotalFileSize = value;
}

/// {@category Struct}
class _COPYFILE2_MESSAGE__Info_e__Union__ChunkFinished_e__Struct
    extends Struct {
  @Uint32()
  external int dwStreamNumber;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hSourceFile;

  @IntPtr()
  external int hDestinationFile;

  @Uint64()
  external int uliChunkNumber;

  @Uint64()
  external int uliChunkSize;

  @Uint64()
  external int uliStreamSize;

  @Uint64()
  external int uliStreamBytesTransferred;

  @Uint64()
  external int uliTotalFileSize;

  @Uint64()
  external int uliTotalBytesTransferred;
}

extension COPYFILE2_MESSAGE__Info_e__Union_Extension_1 on COPYFILE2_MESSAGE {
  int get dwStreamNumber => this.Info.ChunkFinished.dwStreamNumber;
  set dwStreamNumber(int value) =>
      this.Info.ChunkFinished.dwStreamNumber = value;

  int get dwFlags => this.Info.ChunkFinished.dwFlags;
  set dwFlags(int value) => this.Info.ChunkFinished.dwFlags = value;

  int get hSourceFile => this.Info.ChunkFinished.hSourceFile;
  set hSourceFile(int value) => this.Info.ChunkFinished.hSourceFile = value;

  int get hDestinationFile => this.Info.ChunkFinished.hDestinationFile;
  set hDestinationFile(int value) =>
      this.Info.ChunkFinished.hDestinationFile = value;

  int get uliChunkNumber => this.Info.ChunkFinished.uliChunkNumber;
  set uliChunkNumber(int value) =>
      this.Info.ChunkFinished.uliChunkNumber = value;

  int get uliChunkSize => this.Info.ChunkFinished.uliChunkSize;
  set uliChunkSize(int value) => this.Info.ChunkFinished.uliChunkSize = value;

  int get uliStreamSize => this.Info.ChunkFinished.uliStreamSize;
  set uliStreamSize(int value) => this.Info.ChunkFinished.uliStreamSize = value;

  int get uliStreamBytesTransferred =>
      this.Info.ChunkFinished.uliStreamBytesTransferred;
  set uliStreamBytesTransferred(int value) =>
      this.Info.ChunkFinished.uliStreamBytesTransferred = value;

  int get uliTotalFileSize => this.Info.ChunkFinished.uliTotalFileSize;
  set uliTotalFileSize(int value) =>
      this.Info.ChunkFinished.uliTotalFileSize = value;

  int get uliTotalBytesTransferred =>
      this.Info.ChunkFinished.uliTotalBytesTransferred;
  set uliTotalBytesTransferred(int value) =>
      this.Info.ChunkFinished.uliTotalBytesTransferred = value;
}

/// {@category Struct}
class _COPYFILE2_MESSAGE__Info_e__Union__StreamStarted_e__Struct
    extends Struct {
  @Uint32()
  external int dwStreamNumber;

  @Uint32()
  external int dwReserved;

  @IntPtr()
  external int hSourceFile;

  @IntPtr()
  external int hDestinationFile;

  @Uint64()
  external int uliStreamSize;

  @Uint64()
  external int uliTotalFileSize;
}

extension COPYFILE2_MESSAGE__Info_e__Union_Extension_2 on COPYFILE2_MESSAGE {
  int get dwStreamNumber => this.Info.StreamStarted.dwStreamNumber;
  set dwStreamNumber(int value) =>
      this.Info.StreamStarted.dwStreamNumber = value;

  int get dwReserved => this.Info.StreamStarted.dwReserved;
  set dwReserved(int value) => this.Info.StreamStarted.dwReserved = value;

  int get hSourceFile => this.Info.StreamStarted.hSourceFile;
  set hSourceFile(int value) => this.Info.StreamStarted.hSourceFile = value;

  int get hDestinationFile => this.Info.StreamStarted.hDestinationFile;
  set hDestinationFile(int value) =>
      this.Info.StreamStarted.hDestinationFile = value;

  int get uliStreamSize => this.Info.StreamStarted.uliStreamSize;
  set uliStreamSize(int value) => this.Info.StreamStarted.uliStreamSize = value;

  int get uliTotalFileSize => this.Info.StreamStarted.uliTotalFileSize;
  set uliTotalFileSize(int value) =>
      this.Info.StreamStarted.uliTotalFileSize = value;
}

/// {@category Struct}
class _COPYFILE2_MESSAGE__Info_e__Union__StreamFinished_e__Struct
    extends Struct {
  @Uint32()
  external int dwStreamNumber;

  @Uint32()
  external int dwReserved;

  @IntPtr()
  external int hSourceFile;

  @IntPtr()
  external int hDestinationFile;

  @Uint64()
  external int uliStreamSize;

  @Uint64()
  external int uliStreamBytesTransferred;

  @Uint64()
  external int uliTotalFileSize;

  @Uint64()
  external int uliTotalBytesTransferred;
}

extension COPYFILE2_MESSAGE__Info_e__Union_Extension_3 on COPYFILE2_MESSAGE {
  int get dwStreamNumber => this.Info.StreamFinished.dwStreamNumber;
  set dwStreamNumber(int value) =>
      this.Info.StreamFinished.dwStreamNumber = value;

  int get dwReserved => this.Info.StreamFinished.dwReserved;
  set dwReserved(int value) => this.Info.StreamFinished.dwReserved = value;

  int get hSourceFile => this.Info.StreamFinished.hSourceFile;
  set hSourceFile(int value) => this.Info.StreamFinished.hSourceFile = value;

  int get hDestinationFile => this.Info.StreamFinished.hDestinationFile;
  set hDestinationFile(int value) =>
      this.Info.StreamFinished.hDestinationFile = value;

  int get uliStreamSize => this.Info.StreamFinished.uliStreamSize;
  set uliStreamSize(int value) =>
      this.Info.StreamFinished.uliStreamSize = value;

  int get uliStreamBytesTransferred =>
      this.Info.StreamFinished.uliStreamBytesTransferred;
  set uliStreamBytesTransferred(int value) =>
      this.Info.StreamFinished.uliStreamBytesTransferred = value;

  int get uliTotalFileSize => this.Info.StreamFinished.uliTotalFileSize;
  set uliTotalFileSize(int value) =>
      this.Info.StreamFinished.uliTotalFileSize = value;

  int get uliTotalBytesTransferred =>
      this.Info.StreamFinished.uliTotalBytesTransferred;
  set uliTotalBytesTransferred(int value) =>
      this.Info.StreamFinished.uliTotalBytesTransferred = value;
}

/// {@category Struct}
class _COPYFILE2_MESSAGE__Info_e__Union__PollContinue_e__Struct extends Struct {
  @Uint32()
  external int dwReserved;
}

extension COPYFILE2_MESSAGE__Info_e__Union_Extension_4 on COPYFILE2_MESSAGE {
  int get dwReserved => this.Info.PollContinue.dwReserved;
  set dwReserved(int value) => this.Info.PollContinue.dwReserved = value;
}

/// {@category Struct}
class _COPYFILE2_MESSAGE__Info_e__Union__Error_e__Struct extends Struct {
  @Int32()
  external int CopyPhase;

  @Uint32()
  external int dwStreamNumber;

  @Int32()
  external int hrFailure;

  @Uint32()
  external int dwReserved;

  @Uint64()
  external int uliChunkNumber;

  @Uint64()
  external int uliStreamSize;

  @Uint64()
  external int uliStreamBytesTransferred;

  @Uint64()
  external int uliTotalFileSize;

  @Uint64()
  external int uliTotalBytesTransferred;
}

extension COPYFILE2_MESSAGE__Info_e__Union_Extension_5 on COPYFILE2_MESSAGE {
  int get CopyPhase => this.Info.Error.CopyPhase;
  set CopyPhase(int value) => this.Info.Error.CopyPhase = value;

  int get dwStreamNumber => this.Info.Error.dwStreamNumber;
  set dwStreamNumber(int value) => this.Info.Error.dwStreamNumber = value;

  int get hrFailure => this.Info.Error.hrFailure;
  set hrFailure(int value) => this.Info.Error.hrFailure = value;

  int get dwReserved => this.Info.Error.dwReserved;
  set dwReserved(int value) => this.Info.Error.dwReserved = value;

  int get uliChunkNumber => this.Info.Error.uliChunkNumber;
  set uliChunkNumber(int value) => this.Info.Error.uliChunkNumber = value;

  int get uliStreamSize => this.Info.Error.uliStreamSize;
  set uliStreamSize(int value) => this.Info.Error.uliStreamSize = value;

  int get uliStreamBytesTransferred =>
      this.Info.Error.uliStreamBytesTransferred;
  set uliStreamBytesTransferred(int value) =>
      this.Info.Error.uliStreamBytesTransferred = value;

  int get uliTotalFileSize => this.Info.Error.uliTotalFileSize;
  set uliTotalFileSize(int value) => this.Info.Error.uliTotalFileSize = value;

  int get uliTotalBytesTransferred => this.Info.Error.uliTotalBytesTransferred;
  set uliTotalBytesTransferred(int value) =>
      this.Info.Error.uliTotalBytesTransferred = value;
}

extension COPYFILE2_MESSAGE_Extension on COPYFILE2_MESSAGE {
  _COPYFILE2_MESSAGE__Info_e__Union__ChunkStarted_e__Struct get ChunkStarted =>
      this.Info.ChunkStarted;
  set ChunkStarted(
          _COPYFILE2_MESSAGE__Info_e__Union__ChunkStarted_e__Struct value) =>
      this.Info.ChunkStarted = value;

  _COPYFILE2_MESSAGE__Info_e__Union__ChunkFinished_e__Struct
      get ChunkFinished => this.Info.ChunkFinished;
  set ChunkFinished(
          _COPYFILE2_MESSAGE__Info_e__Union__ChunkFinished_e__Struct value) =>
      this.Info.ChunkFinished = value;

  _COPYFILE2_MESSAGE__Info_e__Union__StreamStarted_e__Struct
      get StreamStarted => this.Info.StreamStarted;
  set StreamStarted(
          _COPYFILE2_MESSAGE__Info_e__Union__StreamStarted_e__Struct value) =>
      this.Info.StreamStarted = value;

  _COPYFILE2_MESSAGE__Info_e__Union__StreamFinished_e__Struct
      get StreamFinished => this.Info.StreamFinished;
  set StreamFinished(
          _COPYFILE2_MESSAGE__Info_e__Union__StreamFinished_e__Struct value) =>
      this.Info.StreamFinished = value;

  _COPYFILE2_MESSAGE__Info_e__Union__PollContinue_e__Struct get PollContinue =>
      this.Info.PollContinue;
  set PollContinue(
          _COPYFILE2_MESSAGE__Info_e__Union__PollContinue_e__Struct value) =>
      this.Info.PollContinue = value;

  _COPYFILE2_MESSAGE__Info_e__Union__Error_e__Struct get Error =>
      this.Info.Error;
  set Error(_COPYFILE2_MESSAGE__Info_e__Union__Error_e__Struct value) =>
      this.Info.Error = value;
}

/// {@category Struct}
class CREATEFILE2_EXTENDED_PARAMETERS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFileAttributes;

  @Uint32()
  external int dwFileFlags;

  @Uint32()
  external int dwSecurityQosFlags;

  external Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes;

  @IntPtr()
  external int hTemplateFile;
}

/// {@category Struct}
class DISKQUOTA_USER_INFORMATION extends Struct {
  @Int64()
  external int QuotaUsed;

  @Int64()
  external int QuotaThreshold;

  @Int64()
  external int QuotaLimit;
}

/// {@category Struct}
class DISK_SPACE_INFORMATION extends Struct {
  @Uint64()
  external int ActualTotalAllocationUnits;

  @Uint64()
  external int ActualAvailableAllocationUnits;

  @Uint64()
  external int ActualPoolUnavailableAllocationUnits;

  @Uint64()
  external int CallerTotalAllocationUnits;

  @Uint64()
  external int CallerAvailableAllocationUnits;

  @Uint64()
  external int CallerPoolUnavailableAllocationUnits;

  @Uint64()
  external int UsedAllocationUnits;

  @Uint64()
  external int TotalReservedAllocationUnits;

  @Uint64()
  external int VolumeStorageReserveAllocationUnits;

  @Uint64()
  external int AvailableCommittedAllocationUnits;

  @Uint64()
  external int PoolAvailableAllocationUnits;

  @Uint32()
  external int SectorsPerAllocationUnit;

  @Uint32()
  external int BytesPerSector;
}

/// {@category Struct}
class EFS_CERTIFICATE_BLOB extends Struct {
  @Uint32()
  external int dwCertEncodingType;

  @Uint32()
  external int cbData;

  external Pointer<Uint8> pbData;
}

/// {@category Struct}
class EFS_COMPATIBILITY_INFO extends Struct {
  @Uint32()
  external int EfsVersion;
}

/// {@category Struct}
class EFS_DECRYPTION_STATUS_INFO extends Struct {
  @Uint32()
  external int dwDecryptionError;

  @Uint32()
  external int dwHashOffset;

  @Uint32()
  external int cbHash;
}

/// {@category Struct}
class EFS_ENCRYPTION_STATUS_INFO extends Struct {
  @Int32()
  external int bHasCurrentKey;

  @Uint32()
  external int dwEncryptionError;
}

/// {@category Struct}
class EFS_HASH_BLOB extends Struct {
  @Uint32()
  external int cbData;

  external Pointer<Uint8> pbData;
}

/// {@category Struct}
class EFS_KEY_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int Entropy;

  @Uint32()
  external int Algorithm;

  @Uint32()
  external int KeyLength;
}

/// {@category Struct}
class EFS_PIN_BLOB extends Struct {
  @Uint32()
  external int cbPadding;

  @Uint32()
  external int cbData;

  external Pointer<Uint8> pbData;
}

/// {@category Struct}
class EFS_RPC_BLOB extends Struct {
  @Uint32()
  external int cbData;

  external Pointer<Uint8> pbData;
}

/// {@category Struct}
class EFS_VERSION_INFO extends Struct {
  @Uint32()
  external int EfsVersion;

  @Uint32()
  external int SubVersion;
}

/// {@category Struct}
class ENCRYPTED_FILE_METADATA_SIGNATURE extends Struct {
  @Uint32()
  external int dwEfsAccessType;

  external Pointer<ENCRYPTION_CERTIFICATE_HASH_LIST> pCertificatesAdded;

  external Pointer<ENCRYPTION_CERTIFICATE> pEncryptionCertificate;

  external Pointer<EFS_RPC_BLOB> pEfsStreamSignature;
}

/// {@category Struct}
class ENCRYPTION_CERTIFICATE extends Struct {
  @Uint32()
  external int cbTotalLength;

  external Pointer<SID> pUserSid;

  external Pointer<EFS_CERTIFICATE_BLOB> pCertBlob;
}

/// {@category Struct}
class ENCRYPTION_CERTIFICATE_HASH extends Struct {
  @Uint32()
  external int cbTotalLength;

  external Pointer<SID> pUserSid;

  external Pointer<EFS_HASH_BLOB> pHash;

  external Pointer<Utf16> lpDisplayInformation;
}

/// {@category Struct}
class ENCRYPTION_CERTIFICATE_HASH_LIST extends Struct {
  @Uint32()
  external int nCert_Hash;

  external Pointer<Pointer<ENCRYPTION_CERTIFICATE_HASH>> pUsers;
}

/// {@category Struct}
class ENCRYPTION_CERTIFICATE_LIST extends Struct {
  @Uint32()
  external int nUsers;

  external Pointer<Pointer<ENCRYPTION_CERTIFICATE>> pUsers;
}

/// {@category Struct}
class ENCRYPTION_PROTECTOR extends Struct {
  @Uint32()
  external int cbTotalLength;

  external Pointer<SID> pUserSid;

  external Pointer<Utf16> lpProtectorDescriptor;
}

/// {@category Struct}
class ENCRYPTION_PROTECTOR_LIST extends Struct {
  @Uint32()
  external int nProtectors;

  external Pointer<Pointer<ENCRYPTION_PROTECTOR>> pProtectors;
}

/// {@category Struct}
class FH_OVERLAPPED extends Struct {
  @IntPtr()
  external int Internal;

  @IntPtr()
  external int InternalHigh;

  @Uint32()
  external int Offset;

  @Uint32()
  external int OffsetHigh;

  @IntPtr()
  external int hEvent;

  external Pointer<NativeFunction<PFN_IO_COMPLETION>> pfnCompletion;

  @IntPtr()
  external int Reserved1;

  @IntPtr()
  external int Reserved2;

  @IntPtr()
  external int Reserved3;

  @IntPtr()
  external int Reserved4;
}

/// {@category Struct}
class FILE_ALIGNMENT_INFO extends Struct {
  @Uint32()
  external int AlignmentRequirement;
}

/// {@category Struct}
class FILE_ALLOCATION_INFO extends Struct {
  @Int64()
  external int AllocationSize;
}

/// {@category Struct}
class FILE_ATTRIBUTE_TAG_INFO extends Struct {
  @Uint32()
  external int FileAttributes;

  @Uint32()
  external int ReparseTag;
}

/// {@category Struct}
class FILE_BASIC_INFO extends Struct {
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
class FILE_COMPRESSION_INFO extends Struct {
  @Int64()
  external int CompressedFileSize;

  @Uint16()
  external int CompressionFormat;

  @Uint8()
  external int CompressionUnitShift;

  @Uint8()
  external int ChunkShift;

  @Uint8()
  external int ClusterShift;

  @Array(3)
  external Array<Uint8> Reserved;
}

/// {@category Struct}
class FILE_DISPOSITION_INFO extends Struct {
  @Uint8()
  external int DeleteFileA;
}

/// {@category Struct}
class FILE_END_OF_FILE_INFO extends Struct {
  @Int64()
  external int EndOfFile;
}

/// {@category Struct}
class FILE_EXTENT extends Struct {
  @Uint64()
  external int VolumeOffset;

  @Uint64()
  external int ExtentLength;
}

/// {@category Struct}
class FILE_FULL_DIR_INFO extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Uint32()
  external int FileIndex;

  @Int64()
  external int CreationTime;

  @Int64()
  external int LastAccessTime;

  @Int64()
  external int LastWriteTime;

  @Int64()
  external int ChangeTime;

  @Int64()
  external int EndOfFile;

  @Int64()
  external int AllocationSize;

  @Uint32()
  external int FileAttributes;

  @Uint32()
  external int FileNameLength;

  @Uint32()
  external int EaSize;

  @Array(1)
  external Array<Uint16> _FileName;

  String get FileName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_FileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _FileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class FILE_ID_128 extends Struct {
  @Array(16)
  external Array<Uint8> Identifier;
}

/// {@category Struct}
class FILE_ID_BOTH_DIR_INFO extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Uint32()
  external int FileIndex;

  @Int64()
  external int CreationTime;

  @Int64()
  external int LastAccessTime;

  @Int64()
  external int LastWriteTime;

  @Int64()
  external int ChangeTime;

  @Int64()
  external int EndOfFile;

  @Int64()
  external int AllocationSize;

  @Uint32()
  external int FileAttributes;

  @Uint32()
  external int FileNameLength;

  @Uint32()
  external int EaSize;

  @Int8()
  external int ShortNameLength;

  @Array(12)
  external Array<Uint16> _ShortName;

  String get ShortName {
    final charCodes = <int>[];
    for (var i = 0; i < 12; i++) {
      charCodes.add(_ShortName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ShortName(String value) {
    final stringToStore = value.padRight(12, '\x00');
    for (var i = 0; i < 12; i++) {
      _ShortName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int64()
  external int FileId;

  @Array(1)
  external Array<Uint16> _FileName;

  String get FileName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_FileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _FileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class FILE_ID_DESCRIPTOR extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int Type;

  external _FILE_ID_DESCRIPTOR__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _FILE_ID_DESCRIPTOR__Anonymous_e__Union extends Union {
  @Int64()
  external int FileId;

  external GUID ObjectId;

  external FILE_ID_128 ExtendedFileId;
}

extension FILE_ID_DESCRIPTOR_Extension on FILE_ID_DESCRIPTOR {
  int get FileId => this.Anonymous.FileId;
  set FileId(int value) => this.Anonymous.FileId = value;

  GUID get ObjectId => this.Anonymous.ObjectId;
  set ObjectId(GUID value) => this.Anonymous.ObjectId = value;

  FILE_ID_128 get ExtendedFileId => this.Anonymous.ExtendedFileId;
  set ExtendedFileId(FILE_ID_128 value) =>
      this.Anonymous.ExtendedFileId = value;
}

/// {@category Struct}
class FILE_ID_EXTD_DIR_INFO extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Uint32()
  external int FileIndex;

  @Int64()
  external int CreationTime;

  @Int64()
  external int LastAccessTime;

  @Int64()
  external int LastWriteTime;

  @Int64()
  external int ChangeTime;

  @Int64()
  external int EndOfFile;

  @Int64()
  external int AllocationSize;

  @Uint32()
  external int FileAttributes;

  @Uint32()
  external int FileNameLength;

  @Uint32()
  external int EaSize;

  @Uint32()
  external int ReparsePointTag;

  external FILE_ID_128 FileId;

  @Array(1)
  external Array<Uint16> _FileName;

  String get FileName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_FileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _FileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class FILE_ID_INFO extends Struct {
  @Uint64()
  external int VolumeSerialNumber;

  external FILE_ID_128 FileId;
}

/// {@category Struct}
class FILE_INFO_2 extends Struct {
  @Uint32()
  external int fi2_id;
}

/// {@category Struct}
class FILE_INFO_3 extends Struct {
  @Uint32()
  external int fi3_id;

  @Uint32()
  external int fi3_permissions;

  @Uint32()
  external int fi3_num_locks;

  external Pointer<Utf16> fi3_pathname;

  external Pointer<Utf16> fi3_username;
}

/// {@category Struct}
class FILE_IO_PRIORITY_HINT_INFO extends Struct {
  @Int32()
  external int PriorityHint;
}

/// {@category Struct}
class FILE_NAME_INFO extends Struct {
  @Uint32()
  external int FileNameLength;

  @Array(1)
  external Array<Uint16> _FileName;

  String get FileName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_FileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _FileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class FILE_NOTIFY_EXTENDED_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Uint32()
  external int Action;

  @Int64()
  external int CreationTime;

  @Int64()
  external int LastModificationTime;

  @Int64()
  external int LastChangeTime;

  @Int64()
  external int LastAccessTime;

  @Int64()
  external int AllocatedLength;

  @Int64()
  external int FileSize;

  @Uint32()
  external int FileAttributes;

  @Uint32()
  external int ReparsePointTag;

  @Int64()
  external int FileId;

  @Int64()
  external int ParentFileId;

  @Uint32()
  external int FileNameLength;

  @Array(1)
  external Array<Uint16> _FileName;

  String get FileName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_FileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _FileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class FILE_NOTIFY_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Uint32()
  external int Action;

  @Uint32()
  external int FileNameLength;

  @Array(1)
  external Array<Uint16> _FileName;

  String get FileName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_FileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _FileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class FILE_REMOTE_PROTOCOL_INFO extends Struct {
  @Uint16()
  external int StructureVersion;

  @Uint16()
  external int StructureSize;

  @Uint32()
  external int Protocol;

  @Uint16()
  external int ProtocolMajorVersion;

  @Uint16()
  external int ProtocolMinorVersion;

  @Uint16()
  external int ProtocolRevision;

  @Uint16()
  external int Reserved;

  @Uint32()
  external int Flags;

  external _FILE_REMOTE_PROTOCOL_INFO__GenericReserved_e__Struct
      GenericReserved;

  external _FILE_REMOTE_PROTOCOL_INFO__ProtocolSpecific_e__Union
      ProtocolSpecific;
}

/// {@category Struct}
class _FILE_REMOTE_PROTOCOL_INFO__GenericReserved_e__Struct extends Struct {
  @Array(8)
  external Array<Uint32> Reserved;
}

extension FILE_REMOTE_PROTOCOL_INFO_Extension on FILE_REMOTE_PROTOCOL_INFO {
  Array<Uint32> get Reserved => this.GenericReserved.Reserved;
  set Reserved(Array<Uint32> value) => this.GenericReserved.Reserved = value;
}

/// {@category Struct}
class _FILE_REMOTE_PROTOCOL_INFO__ProtocolSpecific_e__Union extends Union {
  external _FILE_REMOTE_PROTOCOL_INFO__ProtocolSpecific_e__Union__Smb2_e__Struct
      Smb2;

  @Array(16)
  external Array<Uint32> Reserved;
}

/// {@category Struct}
class _FILE_REMOTE_PROTOCOL_INFO__ProtocolSpecific_e__Union__Smb2_e__Struct
    extends Struct {
  external _FILE_REMOTE_PROTOCOL_INFO__ProtocolSpecific_e__Union__Smb2_e__Struct__Server_e__Struct
      Server;

  external _FILE_REMOTE_PROTOCOL_INFO__ProtocolSpecific_e__Union__Smb2_e__Struct__Share_e__Struct
      Share;
}

/// {@category Struct}
class _FILE_REMOTE_PROTOCOL_INFO__ProtocolSpecific_e__Union__Smb2_e__Struct__Server_e__Struct
    extends Struct {
  @Uint32()
  external int Capabilities;
}

extension FILE_REMOTE_PROTOCOL_INFO__ProtocolSpecific_e__Union__Smb2_e__Struct_Extension
    on FILE_REMOTE_PROTOCOL_INFO {
  int get Capabilities => this.ProtocolSpecific.Smb2.Server.Capabilities;
  set Capabilities(int value) =>
      this.ProtocolSpecific.Smb2.Server.Capabilities = value;
}

/// {@category Struct}
class _FILE_REMOTE_PROTOCOL_INFO__ProtocolSpecific_e__Union__Smb2_e__Struct__Share_e__Struct
    extends Struct {
  @Uint32()
  external int Capabilities;

  @Uint32()
  external int CachingFlags;
}

extension FILE_REMOTE_PROTOCOL_INFO__ProtocolSpecific_e__Union__Smb2_e__Struct_Extension_1
    on FILE_REMOTE_PROTOCOL_INFO {
  int get Capabilities => this.ProtocolSpecific.Smb2.Share.Capabilities;
  set Capabilities(int value) =>
      this.ProtocolSpecific.Smb2.Share.Capabilities = value;

  int get CachingFlags => this.ProtocolSpecific.Smb2.Share.CachingFlags;
  set CachingFlags(int value) =>
      this.ProtocolSpecific.Smb2.Share.CachingFlags = value;
}

extension FILE_REMOTE_PROTOCOL_INFO__ProtocolSpecific_e__Union_Extension
    on FILE_REMOTE_PROTOCOL_INFO {
  _FILE_REMOTE_PROTOCOL_INFO__ProtocolSpecific_e__Union__Smb2_e__Struct__Server_e__Struct
      get Server => this.ProtocolSpecific.Smb2.Server;
  set Server(
          _FILE_REMOTE_PROTOCOL_INFO__ProtocolSpecific_e__Union__Smb2_e__Struct__Server_e__Struct
              value) =>
      this.ProtocolSpecific.Smb2.Server = value;

  _FILE_REMOTE_PROTOCOL_INFO__ProtocolSpecific_e__Union__Smb2_e__Struct__Share_e__Struct
      get Share => this.ProtocolSpecific.Smb2.Share;
  set Share(
          _FILE_REMOTE_PROTOCOL_INFO__ProtocolSpecific_e__Union__Smb2_e__Struct__Share_e__Struct
              value) =>
      this.ProtocolSpecific.Smb2.Share = value;
}

extension FILE_REMOTE_PROTOCOL_INFO_Extension_1 on FILE_REMOTE_PROTOCOL_INFO {
  _FILE_REMOTE_PROTOCOL_INFO__ProtocolSpecific_e__Union__Smb2_e__Struct
      get Smb2 => this.ProtocolSpecific.Smb2;
  set Smb2(
          _FILE_REMOTE_PROTOCOL_INFO__ProtocolSpecific_e__Union__Smb2_e__Struct
              value) =>
      this.ProtocolSpecific.Smb2 = value;

  Array<Uint32> get Reserved => this.ProtocolSpecific.Reserved;
  set Reserved(Array<Uint32> value) => this.ProtocolSpecific.Reserved = value;
}

/// {@category Struct}
class FILE_RENAME_INFO extends Struct {
  external _FILE_RENAME_INFO__Anonymous_e__Union Anonymous;

  @IntPtr()
  external int RootDirectory;

  @Uint32()
  external int FileNameLength;

  @Array(1)
  external Array<Uint16> _FileName;

  String get FileName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_FileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _FileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class _FILE_RENAME_INFO__Anonymous_e__Union extends Union {
  @Uint8()
  external int ReplaceIfExists;

  @Uint32()
  external int Flags;
}

extension FILE_RENAME_INFO_Extension on FILE_RENAME_INFO {
  int get ReplaceIfExists => this.Anonymous.ReplaceIfExists;
  set ReplaceIfExists(int value) => this.Anonymous.ReplaceIfExists = value;

  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;
}

/// {@category Struct}
class FILE_SEGMENT_ELEMENT extends Union {
  external Pointer Buffer;

  @Uint64()
  external int Alignment;
}

/// {@category Struct}
class FILE_STANDARD_INFO extends Struct {
  @Int64()
  external int AllocationSize;

  @Int64()
  external int EndOfFile;

  @Uint32()
  external int NumberOfLinks;

  @Uint8()
  external int DeletePending;

  @Uint8()
  external int Directory;
}

/// {@category Struct}
class FILE_STORAGE_INFO extends Struct {
  @Uint32()
  external int LogicalBytesPerSector;

  @Uint32()
  external int PhysicalBytesPerSectorForAtomicity;

  @Uint32()
  external int PhysicalBytesPerSectorForPerformance;

  @Uint32()
  external int FileSystemEffectivePhysicalBytesPerSectorForAtomicity;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ByteOffsetForSectorAlignment;

  @Uint32()
  external int ByteOffsetForPartitionAlignment;
}

/// {@category Struct}
class FILE_STREAM_INFO extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Uint32()
  external int StreamNameLength;

  @Int64()
  external int StreamSize;

  @Int64()
  external int StreamAllocationSize;

  @Array(1)
  external Array<Uint16> _StreamName;

  String get StreamName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_StreamName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set StreamName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _StreamName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class FIO_CONTEXT extends Struct {
  @Uint32()
  external int m_dwTempHack;

  @Uint32()
  external int m_dwSignature;

  @IntPtr()
  external int m_hFile;

  @Uint32()
  external int m_dwLinesOffset;

  @Uint32()
  external int m_dwHeaderLength;
}

/// {@category Struct}
class HIORING__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class IORING_BUFFER_INFO extends Struct {
  external Pointer Address;

  @Uint32()
  external int Length;
}

/// {@category Struct}
class IORING_BUFFER_REF extends Struct {
  @Int32()
  external int Kind;

  external _IORING_BUFFER_REF_BufferUnion Buffer;
}

/// {@category Struct}
class _IORING_BUFFER_REF_BufferUnion extends Union {
  external Pointer Address;

  external IORING_REGISTERED_BUFFER IndexAndOffset;
}

extension IORING_BUFFER_REF_Extension on IORING_BUFFER_REF {
  Pointer get Address => this.Buffer.Address;
  set Address(Pointer value) => this.Buffer.Address = value;

  IORING_REGISTERED_BUFFER get IndexAndOffset => this.Buffer.IndexAndOffset;
  set IndexAndOffset(IORING_REGISTERED_BUFFER value) =>
      this.Buffer.IndexAndOffset = value;
}

/// {@category Struct}
class IORING_CAPABILITIES extends Struct {
  @Int32()
  external int MaxVersion;

  @Uint32()
  external int MaxSubmissionQueueSize;

  @Uint32()
  external int MaxCompletionQueueSize;

  @Int32()
  external int FeatureFlags;
}

/// {@category Struct}
class IORING_CQE extends Struct {
  @IntPtr()
  external int UserData;

  @Int32()
  external int ResultCode;

  @IntPtr()
  external int Information;
}

/// {@category Struct}
class IORING_CREATE_FLAGS extends Struct {
  @Int32()
  external int Required;

  @Int32()
  external int Advisory;
}

/// {@category Struct}
class IORING_HANDLE_REF extends Struct {
  @Int32()
  external int Kind;

  external _IORING_HANDLE_REF_HandleUnion $Handle;
}

/// {@category Struct}
class _IORING_HANDLE_REF_HandleUnion extends Union {
  @IntPtr()
  external int $Handle;

  @Uint32()
  external int Index;
}

extension IORING_HANDLE_REF_Extension on IORING_HANDLE_REF {
  int get $Handle => this.$Handle.$Handle;
  set $Handle(int value) => this.$Handle.$Handle = value;

  int get Index => this.$Handle.Index;
  set Index(int value) => this.$Handle.Index = value;
}

/// {@category Struct}
class IORING_INFO extends Struct {
  @Int32()
  external int IoRingVersion;

  external IORING_CREATE_FLAGS Flags;

  @Uint32()
  external int SubmissionQueueSize;

  @Uint32()
  external int CompletionQueueSize;
}

/// {@category Struct}
class IORING_REGISTERED_BUFFER extends Struct {
  @Uint32()
  external int BufferIndex;

  @Uint32()
  external int Offset;
}

/// {@category Struct}
class KCRM_MARSHAL_HEADER extends Struct {
  @Uint32()
  external int VersionMajor;

  @Uint32()
  external int VersionMinor;

  @Uint32()
  external int NumProtocols;

  @Uint32()
  external int Unused;
}

/// {@category Struct}
class KCRM_PROTOCOL_BLOB extends Struct {
  external GUID ProtocolId;

  @Uint32()
  external int StaticInfoLength;

  @Uint32()
  external int TransactionIdInfoLength;

  @Uint32()
  external int Unused1;

  @Uint32()
  external int Unused2;
}

/// {@category Struct}
class KCRM_TRANSACTION_BLOB extends Struct {
  external GUID UOW;

  external GUID TmIdentity;

  @Uint32()
  external int IsolationLevel;

  @Uint32()
  external int IsolationFlags;

  @Uint32()
  external int Timeout;

  @Array(64)
  external Array<Uint16> _Description;

  String get Description {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_Description[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Description(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _Description[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class LOG_MANAGEMENT_CALLBACKS extends Struct {
  external Pointer CallbackContext;

  external Pointer<NativeFunction<PLOG_TAIL_ADVANCE_CALLBACK>>
      AdvanceTailCallback;

  external Pointer<NativeFunction<PLOG_FULL_HANDLER_CALLBACK>>
      LogFullHandlerCallback;

  external Pointer<NativeFunction<PLOG_UNPINNED_CALLBACK>> LogUnpinnedCallback;
}

/// {@category Struct}
class MediaLabelInfo extends Struct {
  @Array(64)
  external Array<Uint16> _LabelType;

  String get LabelType {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_LabelType[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set LabelType(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _LabelType[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int LabelIDSize;

  @Array(256)
  external Array<Uint8> LabelID;

  @Array(256)
  external Array<Uint16> _LabelAppDescr;

  String get LabelAppDescr {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_LabelAppDescr[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set LabelAppDescr(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _LabelAppDescr[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class NAME_CACHE_CONTEXT extends Struct {
  @Uint32()
  external int m_dwSignature;
}

/// {@category Struct}
class NTMS_ALLOCATION_INFORMATION extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer lpReserved;

  external GUID AllocatedFrom;
}

/// {@category Struct}
class NTMS_ASYNC_IO extends Struct {
  external GUID OperationId;

  external GUID EventId;

  @Uint32()
  external int dwOperationType;

  @Uint32()
  external int dwResult;

  @Uint32()
  external int dwAsyncState;

  @IntPtr()
  external int hEvent;

  @Int32()
  external int bOnStateChange;
}

/// {@category Struct}
class NTMS_CHANGERINFORMATION extends Struct {
  @Uint32()
  external int Number;

  external GUID ChangerType;

  @Array(32)
  external Array<Uint16> _szSerialNumber;

  String get szSerialNumber {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szSerialNumber[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szSerialNumber(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szSerialNumber[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _szRevision;

  String get szRevision {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szRevision[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szRevision(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szRevision[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _szDeviceName;

  String get szDeviceName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szDeviceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDeviceName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szDeviceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int ScsiPort;

  @Uint16()
  external int ScsiBus;

  @Uint16()
  external int ScsiTarget;

  @Uint16()
  external int ScsiLun;

  external GUID Library;
}

/// {@category Struct}
class NTMS_CHANGERTYPEINFORMATION extends Struct {
  @Array(128)
  external Array<Uint16> _szVendor;

  String get szVendor {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szVendor[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szVendor(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szVendor[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _szProduct;

  String get szProduct {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szProduct[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szProduct(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szProduct[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int DeviceType;
}

/// {@category Struct}
class NTMS_COMPUTERINFORMATION extends Struct {
  @Uint32()
  external int dwLibRequestPurgeTime;

  @Uint32()
  external int dwOpRequestPurgeTime;

  @Uint32()
  external int dwLibRequestFlags;

  @Uint32()
  external int dwOpRequestFlags;

  @Uint32()
  external int dwMediaPoolPolicy;
}

/// {@category Struct}
class NTMS_DRIVEINFORMATION extends Struct {
  @Uint32()
  external int Number;

  @Int32()
  external int State;

  external GUID DriveType;

  @Array(64)
  external Array<Uint16> _szDeviceName;

  String get szDeviceName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szDeviceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDeviceName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szDeviceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _szSerialNumber;

  String get szSerialNumber {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szSerialNumber[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szSerialNumber(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szSerialNumber[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _szRevision;

  String get szRevision {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szRevision[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szRevision(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szRevision[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int ScsiPort;

  @Uint16()
  external int ScsiBus;

  @Uint16()
  external int ScsiTarget;

  @Uint16()
  external int ScsiLun;

  @Uint32()
  external int dwMountCount;

  external SYSTEMTIME LastCleanedTs;

  external GUID SavedPartitionId;

  external GUID Library;

  external GUID Reserved;

  @Uint32()
  external int dwDeferDismountDelay;
}

/// {@category Struct}
class NTMS_DRIVETYPEINFORMATION extends Struct {
  @Array(128)
  external Array<Uint16> _szVendor;

  String get szVendor {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szVendor[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szVendor(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szVendor[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _szProduct;

  String get szProduct {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szProduct[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szProduct(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szProduct[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int NumberOfHeads;

  @Uint32()
  external int DeviceType;
}

/// {@category Struct}
class NTMS_FILESYSTEM_INFO extends Struct {
  @Array(64)
  external Array<Uint16> _FileSystemType;

  String get FileSystemType {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_FileSystemType[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileSystemType(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _FileSystemType[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _VolumeName;

  String get VolumeName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_VolumeName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set VolumeName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _VolumeName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int SerialNumber;
}

/// {@category Struct}
class NTMS_I1_LIBRARYINFORMATION extends Struct {
  @Uint32()
  external int LibraryType;

  external GUID CleanerSlot;

  external GUID CleanerSlotDefault;

  @Int32()
  external int LibrarySupportsDriveCleaning;

  @Int32()
  external int BarCodeReaderInstalled;

  @Uint32()
  external int InventoryMethod;

  @Uint32()
  external int dwCleanerUsesRemaining;

  @Uint32()
  external int FirstDriveNumber;

  @Uint32()
  external int dwNumberOfDrives;

  @Uint32()
  external int FirstSlotNumber;

  @Uint32()
  external int dwNumberOfSlots;

  @Uint32()
  external int FirstDoorNumber;

  @Uint32()
  external int dwNumberOfDoors;

  @Uint32()
  external int FirstPortNumber;

  @Uint32()
  external int dwNumberOfPorts;

  @Uint32()
  external int FirstChangerNumber;

  @Uint32()
  external int dwNumberOfChangers;

  @Uint32()
  external int dwNumberOfMedia;

  @Uint32()
  external int dwNumberOfMediaTypes;

  @Uint32()
  external int dwNumberOfLibRequests;

  external GUID Reserved;
}

/// {@category Struct}
class NTMS_I1_LIBREQUESTINFORMATION extends Struct {
  @Uint32()
  external int OperationCode;

  @Uint32()
  external int OperationOption;

  @Uint32()
  external int State;

  external GUID PartitionId;

  external GUID DriveId;

  external GUID PhysMediaId;

  external GUID Library;

  external GUID SlotId;

  external SYSTEMTIME TimeQueued;

  external SYSTEMTIME TimeCompleted;

  @Array(64)
  external Array<Uint16> _szApplication;

  String get szApplication {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szApplication[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szApplication(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szApplication[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _szUser;

  String get szUser {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szUser[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szUser(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szUser[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _szComputer;

  String get szComputer {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szComputer[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szComputer(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szComputer[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class NTMS_I1_OBJECTINFORMATION extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwType;

  external SYSTEMTIME Created;

  external SYSTEMTIME Modified;

  external GUID ObjectGuid;

  @Int32()
  external int Enabled;

  @Uint32()
  external int dwOperationalState;

  @Array(64)
  external Array<Uint16> _szName;

  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(127)
  external Array<Uint16> _szDescription;

  String get szDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 127; i++) {
      charCodes.add(_szDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDescription(String value) {
    final stringToStore = value.padRight(127, '\x00');
    for (var i = 0; i < 127; i++) {
      _szDescription[i] = stringToStore.codeUnitAt(i);
    }
  }

  external _NTMS_I1_OBJECTINFORMATIONW__Info_e__Union Info;
}

/// {@category Struct}
class _NTMS_I1_OBJECTINFORMATIONW__Info_e__Union extends Union {
  external NTMS_DRIVEINFORMATION Drive;

  external NTMS_DRIVETYPEINFORMATION DriveType;

  external NTMS_I1_LIBRARYINFORMATION Library;

  external NTMS_CHANGERINFORMATION Changer;

  external NTMS_CHANGERTYPEINFORMATION ChangerType;

  external NTMS_STORAGESLOTINFORMATION StorageSlot;

  external NTMS_IEDOORINFORMATION IEDoor;

  external NTMS_IEPORTINFORMATION IEPort;

  external NTMS_I1_PMIDINFORMATION PhysicalMedia;

  external NTMS_LMIDINFORMATION LogicalMedia;

  external NTMS_I1_PARTITIONINFORMATION Partition;

  external NTMS_MEDIAPOOLINFORMATION MediaPool;

  external NTMS_MEDIATYPEINFORMATION MediaType;

  external NTMS_I1_LIBREQUESTINFORMATION LibRequest;

  external NTMS_I1_OPREQUESTINFORMATION OpRequest;
}

extension NTMS_I1_OBJECTINFORMATIONW_Extension on NTMS_I1_OBJECTINFORMATION {
  NTMS_DRIVEINFORMATION get Drive => this.Info.Drive;
  set Drive(NTMS_DRIVEINFORMATION value) => this.Info.Drive = value;

  NTMS_DRIVETYPEINFORMATION get DriveType => this.Info.DriveType;
  set DriveType(NTMS_DRIVETYPEINFORMATION value) => this.Info.DriveType = value;

  NTMS_I1_LIBRARYINFORMATION get Library => this.Info.Library;
  set Library(NTMS_I1_LIBRARYINFORMATION value) => this.Info.Library = value;

  NTMS_CHANGERINFORMATION get Changer => this.Info.Changer;
  set Changer(NTMS_CHANGERINFORMATION value) => this.Info.Changer = value;

  NTMS_CHANGERTYPEINFORMATION get ChangerType => this.Info.ChangerType;
  set ChangerType(NTMS_CHANGERTYPEINFORMATION value) =>
      this.Info.ChangerType = value;

  NTMS_STORAGESLOTINFORMATION get StorageSlot => this.Info.StorageSlot;
  set StorageSlot(NTMS_STORAGESLOTINFORMATION value) =>
      this.Info.StorageSlot = value;

  NTMS_IEDOORINFORMATION get IEDoor => this.Info.IEDoor;
  set IEDoor(NTMS_IEDOORINFORMATION value) => this.Info.IEDoor = value;

  NTMS_IEPORTINFORMATION get IEPort => this.Info.IEPort;
  set IEPort(NTMS_IEPORTINFORMATION value) => this.Info.IEPort = value;

  NTMS_I1_PMIDINFORMATION get PhysicalMedia => this.Info.PhysicalMedia;
  set PhysicalMedia(NTMS_I1_PMIDINFORMATION value) =>
      this.Info.PhysicalMedia = value;

  NTMS_LMIDINFORMATION get LogicalMedia => this.Info.LogicalMedia;
  set LogicalMedia(NTMS_LMIDINFORMATION value) =>
      this.Info.LogicalMedia = value;

  NTMS_I1_PARTITIONINFORMATION get Partition => this.Info.Partition;
  set Partition(NTMS_I1_PARTITIONINFORMATION value) =>
      this.Info.Partition = value;

  NTMS_MEDIAPOOLINFORMATION get MediaPool => this.Info.MediaPool;
  set MediaPool(NTMS_MEDIAPOOLINFORMATION value) => this.Info.MediaPool = value;

  NTMS_MEDIATYPEINFORMATION get MediaType => this.Info.MediaType;
  set MediaType(NTMS_MEDIATYPEINFORMATION value) => this.Info.MediaType = value;

  NTMS_I1_LIBREQUESTINFORMATION get LibRequest => this.Info.LibRequest;
  set LibRequest(NTMS_I1_LIBREQUESTINFORMATION value) =>
      this.Info.LibRequest = value;

  NTMS_I1_OPREQUESTINFORMATION get OpRequest => this.Info.OpRequest;
  set OpRequest(NTMS_I1_OPREQUESTINFORMATION value) =>
      this.Info.OpRequest = value;
}

/// {@category Struct}
class NTMS_I1_OPREQUESTINFORMATION extends Struct {
  @Uint32()
  external int Request;

  external SYSTEMTIME Submitted;

  @Uint32()
  external int State;

  @Array(127)
  external Array<Uint16> _szMessage;

  String get szMessage {
    final charCodes = <int>[];
    for (var i = 0; i < 127; i++) {
      charCodes.add(_szMessage[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szMessage(String value) {
    final stringToStore = value.padRight(127, '\x00');
    for (var i = 0; i < 127; i++) {
      _szMessage[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int Arg1Type;

  external GUID Arg1;

  @Uint32()
  external int Arg2Type;

  external GUID Arg2;

  @Array(64)
  external Array<Uint16> _szApplication;

  String get szApplication {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szApplication[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szApplication(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szApplication[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _szUser;

  String get szUser {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szUser[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szUser(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szUser[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _szComputer;

  String get szComputer {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szComputer[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szComputer(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szComputer[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class NTMS_I1_PARTITIONINFORMATION extends Struct {
  external GUID PhysicalMedia;

  external GUID LogicalMedia;

  @Uint32()
  external int State;

  @Uint16()
  external int Side;

  @Uint32()
  external int dwOmidLabelIdLength;

  @Array(255)
  external Array<Uint8> OmidLabelId;

  @Array(64)
  external Array<Uint16> _szOmidLabelType;

  String get szOmidLabelType {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szOmidLabelType[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szOmidLabelType(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szOmidLabelType[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _szOmidLabelInfo;

  String get szOmidLabelInfo {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szOmidLabelInfo[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szOmidLabelInfo(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szOmidLabelInfo[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwMountCount;

  @Uint32()
  external int dwAllocateCount;
}

/// {@category Struct}
class NTMS_I1_PMIDINFORMATION extends Struct {
  external GUID CurrentLibrary;

  external GUID MediaPool;

  external GUID Location;

  @Uint32()
  external int LocationType;

  external GUID MediaType;

  external GUID HomeSlot;

  @Array(64)
  external Array<Uint16> _szBarCode;

  String get szBarCode {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szBarCode[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szBarCode(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szBarCode[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int BarCodeState;

  @Array(32)
  external Array<Uint16> _szSequenceNumber;

  String get szSequenceNumber {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szSequenceNumber[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szSequenceNumber(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szSequenceNumber[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int MediaState;

  @Uint32()
  external int dwNumberOfPartitions;
}

/// {@category Struct}
class NTMS_IEDOORINFORMATION extends Struct {
  @Uint32()
  external int Number;

  @Int32()
  external int State;

  @Uint16()
  external int MaxOpenSecs;

  external GUID Library;
}

/// {@category Struct}
class NTMS_IEPORTINFORMATION extends Struct {
  @Uint32()
  external int Number;

  @Int32()
  external int Content;

  @Int32()
  external int Position;

  @Uint16()
  external int MaxExtendSecs;

  external GUID Library;
}

/// {@category Struct}
class NTMS_LIBRARYINFORMATION extends Struct {
  @Int32()
  external int LibraryType;

  external GUID CleanerSlot;

  external GUID CleanerSlotDefault;

  @Int32()
  external int LibrarySupportsDriveCleaning;

  @Int32()
  external int BarCodeReaderInstalled;

  @Int32()
  external int InventoryMethod;

  @Uint32()
  external int dwCleanerUsesRemaining;

  @Uint32()
  external int FirstDriveNumber;

  @Uint32()
  external int dwNumberOfDrives;

  @Uint32()
  external int FirstSlotNumber;

  @Uint32()
  external int dwNumberOfSlots;

  @Uint32()
  external int FirstDoorNumber;

  @Uint32()
  external int dwNumberOfDoors;

  @Uint32()
  external int FirstPortNumber;

  @Uint32()
  external int dwNumberOfPorts;

  @Uint32()
  external int FirstChangerNumber;

  @Uint32()
  external int dwNumberOfChangers;

  @Uint32()
  external int dwNumberOfMedia;

  @Uint32()
  external int dwNumberOfMediaTypes;

  @Uint32()
  external int dwNumberOfLibRequests;

  external GUID Reserved;

  @Int32()
  external int AutoRecovery;

  @Int32()
  external int dwFlags;
}

/// {@category Struct}
class NTMS_LIBREQUESTINFORMATION extends Struct {
  @Int32()
  external int OperationCode;

  @Uint32()
  external int OperationOption;

  @Int32()
  external int State;

  external GUID PartitionId;

  external GUID DriveId;

  external GUID PhysMediaId;

  external GUID Library;

  external GUID SlotId;

  external SYSTEMTIME TimeQueued;

  external SYSTEMTIME TimeCompleted;

  @Array(64)
  external Array<Uint16> _szApplication;

  String get szApplication {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szApplication[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szApplication(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szApplication[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _szUser;

  String get szUser {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szUser[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szUser(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szUser[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _szComputer;

  String get szComputer {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szComputer[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szComputer(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szComputer[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwErrorCode;

  external GUID WorkItemId;

  @Uint32()
  external int dwPriority;
}

/// {@category Struct}
class NTMS_LMIDINFORMATION extends Struct {
  external GUID MediaPool;

  @Uint32()
  external int dwNumberOfPartitions;
}

/// {@category Struct}
class NTMS_MEDIAPOOLINFORMATION extends Struct {
  @Uint32()
  external int PoolType;

  external GUID MediaType;

  external GUID Parent;

  @Uint32()
  external int AllocationPolicy;

  @Uint32()
  external int DeallocationPolicy;

  @Uint32()
  external int dwMaxAllocates;

  @Uint32()
  external int dwNumberOfPhysicalMedia;

  @Uint32()
  external int dwNumberOfLogicalMedia;

  @Uint32()
  external int dwNumberOfMediaPools;
}

/// {@category Struct}
class NTMS_MEDIATYPEINFORMATION extends Struct {
  @Uint32()
  external int MediaType;

  @Uint32()
  external int NumberOfSides;

  @Int32()
  external int ReadWriteCharacteristics;

  @Uint32()
  external int DeviceType;
}

/// {@category Struct}
class NTMS_MOUNT_INFORMATION extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer lpReserved;
}

/// {@category Struct}
class NTMS_NOTIFICATIONINFORMATION extends Struct {
  @Int32()
  external int dwOperation;

  external GUID ObjectId;
}

/// {@category Struct}
class NTMS_OBJECTINFORMATION extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int dwType;

  external SYSTEMTIME Created;

  external SYSTEMTIME Modified;

  external GUID ObjectGuid;

  @Int32()
  external int Enabled;

  @Int32()
  external int dwOperationalState;

  @Array(64)
  external Array<Uint16> _szName;

  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(127)
  external Array<Uint16> _szDescription;

  String get szDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 127; i++) {
      charCodes.add(_szDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDescription(String value) {
    final stringToStore = value.padRight(127, '\x00');
    for (var i = 0; i < 127; i++) {
      _szDescription[i] = stringToStore.codeUnitAt(i);
    }
  }

  external _NTMS_OBJECTINFORMATIONW__Info_e__Union Info;
}

/// {@category Struct}
class _NTMS_OBJECTINFORMATIONW__Info_e__Union extends Union {
  external NTMS_DRIVEINFORMATION Drive;

  external NTMS_DRIVETYPEINFORMATION DriveType;

  external NTMS_LIBRARYINFORMATION Library;

  external NTMS_CHANGERINFORMATION Changer;

  external NTMS_CHANGERTYPEINFORMATION ChangerType;

  external NTMS_STORAGESLOTINFORMATION StorageSlot;

  external NTMS_IEDOORINFORMATION IEDoor;

  external NTMS_IEPORTINFORMATION IEPort;

  external NTMS_PMIDINFORMATION PhysicalMedia;

  external NTMS_LMIDINFORMATION LogicalMedia;

  external NTMS_PARTITIONINFORMATION Partition;

  external NTMS_MEDIAPOOLINFORMATION MediaPool;

  external NTMS_MEDIATYPEINFORMATION MediaType;

  external NTMS_LIBREQUESTINFORMATION LibRequest;

  external NTMS_OPREQUESTINFORMATION OpRequest;

  external NTMS_COMPUTERINFORMATION Computer;
}

extension NTMS_OBJECTINFORMATIONW_Extension on NTMS_OBJECTINFORMATION {
  NTMS_DRIVEINFORMATION get Drive => this.Info.Drive;
  set Drive(NTMS_DRIVEINFORMATION value) => this.Info.Drive = value;

  NTMS_DRIVETYPEINFORMATION get DriveType => this.Info.DriveType;
  set DriveType(NTMS_DRIVETYPEINFORMATION value) => this.Info.DriveType = value;

  NTMS_LIBRARYINFORMATION get Library => this.Info.Library;
  set Library(NTMS_LIBRARYINFORMATION value) => this.Info.Library = value;

  NTMS_CHANGERINFORMATION get Changer => this.Info.Changer;
  set Changer(NTMS_CHANGERINFORMATION value) => this.Info.Changer = value;

  NTMS_CHANGERTYPEINFORMATION get ChangerType => this.Info.ChangerType;
  set ChangerType(NTMS_CHANGERTYPEINFORMATION value) =>
      this.Info.ChangerType = value;

  NTMS_STORAGESLOTINFORMATION get StorageSlot => this.Info.StorageSlot;
  set StorageSlot(NTMS_STORAGESLOTINFORMATION value) =>
      this.Info.StorageSlot = value;

  NTMS_IEDOORINFORMATION get IEDoor => this.Info.IEDoor;
  set IEDoor(NTMS_IEDOORINFORMATION value) => this.Info.IEDoor = value;

  NTMS_IEPORTINFORMATION get IEPort => this.Info.IEPort;
  set IEPort(NTMS_IEPORTINFORMATION value) => this.Info.IEPort = value;

  NTMS_PMIDINFORMATION get PhysicalMedia => this.Info.PhysicalMedia;
  set PhysicalMedia(NTMS_PMIDINFORMATION value) =>
      this.Info.PhysicalMedia = value;

  NTMS_LMIDINFORMATION get LogicalMedia => this.Info.LogicalMedia;
  set LogicalMedia(NTMS_LMIDINFORMATION value) =>
      this.Info.LogicalMedia = value;

  NTMS_PARTITIONINFORMATION get Partition => this.Info.Partition;
  set Partition(NTMS_PARTITIONINFORMATION value) => this.Info.Partition = value;

  NTMS_MEDIAPOOLINFORMATION get MediaPool => this.Info.MediaPool;
  set MediaPool(NTMS_MEDIAPOOLINFORMATION value) => this.Info.MediaPool = value;

  NTMS_MEDIATYPEINFORMATION get MediaType => this.Info.MediaType;
  set MediaType(NTMS_MEDIATYPEINFORMATION value) => this.Info.MediaType = value;

  NTMS_LIBREQUESTINFORMATION get LibRequest => this.Info.LibRequest;
  set LibRequest(NTMS_LIBREQUESTINFORMATION value) =>
      this.Info.LibRequest = value;

  NTMS_OPREQUESTINFORMATION get OpRequest => this.Info.OpRequest;
  set OpRequest(NTMS_OPREQUESTINFORMATION value) => this.Info.OpRequest = value;

  NTMS_COMPUTERINFORMATION get Computer => this.Info.Computer;
  set Computer(NTMS_COMPUTERINFORMATION value) => this.Info.Computer = value;
}

/// {@category Struct}
class NTMS_OPREQUESTINFORMATION extends Struct {
  @Int32()
  external int Request;

  external SYSTEMTIME Submitted;

  @Int32()
  external int State;

  @Array(256)
  external Array<Uint16> _szMessage;

  String get szMessage {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szMessage[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szMessage(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szMessage[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int32()
  external int Arg1Type;

  external GUID Arg1;

  @Int32()
  external int Arg2Type;

  external GUID Arg2;

  @Array(64)
  external Array<Uint16> _szApplication;

  String get szApplication {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szApplication[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szApplication(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szApplication[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _szUser;

  String get szUser {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szUser[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szUser(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szUser[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _szComputer;

  String get szComputer {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szComputer[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szComputer(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szComputer[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class NTMS_PARTITIONINFORMATION extends Struct {
  external GUID PhysicalMedia;

  external GUID LogicalMedia;

  @Int32()
  external int State;

  @Uint16()
  external int Side;

  @Uint32()
  external int dwOmidLabelIdLength;

  @Array(255)
  external Array<Uint8> OmidLabelId;

  @Array(64)
  external Array<Uint16> _szOmidLabelType;

  String get szOmidLabelType {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szOmidLabelType[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szOmidLabelType(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szOmidLabelType[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _szOmidLabelInfo;

  String get szOmidLabelInfo {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szOmidLabelInfo[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szOmidLabelInfo(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szOmidLabelInfo[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwMountCount;

  @Uint32()
  external int dwAllocateCount;

  @Int64()
  external int Capacity;
}

/// {@category Struct}
class NTMS_PMIDINFORMATION extends Struct {
  external GUID CurrentLibrary;

  external GUID MediaPool;

  external GUID Location;

  @Uint32()
  external int LocationType;

  external GUID MediaType;

  external GUID HomeSlot;

  @Array(64)
  external Array<Uint16> _szBarCode;

  String get szBarCode {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szBarCode[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szBarCode(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szBarCode[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int32()
  external int BarCodeState;

  @Array(32)
  external Array<Uint16> _szSequenceNumber;

  String get szSequenceNumber {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szSequenceNumber[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szSequenceNumber(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szSequenceNumber[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int32()
  external int MediaState;

  @Uint32()
  external int dwNumberOfPartitions;

  @Uint32()
  external int dwMediaTypeCode;

  @Uint32()
  external int dwDensityCode;

  external GUID MountedPartition;
}

/// {@category Struct}
class NTMS_STORAGESLOTINFORMATION extends Struct {
  @Uint32()
  external int Number;

  @Uint32()
  external int State;

  external GUID Library;
}

/// {@category Struct}
class OFSTRUCT extends Struct {
  @Uint8()
  external int cBytes;

  @Uint8()
  external int fFixedDisk;

  @Uint16()
  external int nErrCode;

  @Uint16()
  external int Reserved1;

  @Uint16()
  external int Reserved2;

  @Array(128)
  external Array<Uint8> szPathName;
}

/// {@category Struct}
class REPARSE_GUID_DATA_BUFFER extends Struct {
  @Uint32()
  external int ReparseTag;

  @Uint16()
  external int ReparseDataLength;

  @Uint16()
  external int Reserved;

  external GUID ReparseGuid;

  external _REPARSE_GUID_DATA_BUFFER__GenericReparseBuffer_e__Struct
      GenericReparseBuffer;
}

/// {@category Struct}
class _REPARSE_GUID_DATA_BUFFER__GenericReparseBuffer_e__Struct extends Struct {
  @Array(1)
  external Array<Uint8> DataBuffer;
}

extension REPARSE_GUID_DATA_BUFFER_Extension on REPARSE_GUID_DATA_BUFFER {
  Array<Uint8> get DataBuffer => this.GenericReparseBuffer.DataBuffer;
  set DataBuffer(Array<Uint8> value) =>
      this.GenericReparseBuffer.DataBuffer = value;
}

/// {@category Struct}
class SERVER_ALIAS_INFO_0 extends Struct {
  external Pointer<Utf16> srvai0_alias;

  external Pointer<Utf16> srvai0_target;

  @Uint8()
  external int srvai0_default;

  @Uint32()
  external int srvai0_reserved;
}

/// {@category Struct}
class SERVER_CERTIFICATE_INFO_0 extends Struct {
  external Pointer<Utf16> srvci0_name;

  external Pointer<Utf16> srvci0_subject;

  external Pointer<Utf16> srvci0_issuer;

  external Pointer<Utf16> srvci0_thumbprint;

  external Pointer<Utf16> srvci0_friendlyname;

  external Pointer<Utf16> srvci0_notbefore;

  external Pointer<Utf16> srvci0_notafter;

  external Pointer<Utf16> srvci0_storelocation;

  external Pointer<Utf16> srvci0_storename;

  external Pointer<Utf16> srvci0_renewalchain;

  @Uint32()
  external int srvci0_type;

  @Uint32()
  external int srvci0_flags;
}

/// {@category Struct}
class SESSION_INFO_0 extends Struct {
  external Pointer<Utf16> sesi0_cname;
}

/// {@category Struct}
class SESSION_INFO_1 extends Struct {
  external Pointer<Utf16> sesi1_cname;

  external Pointer<Utf16> sesi1_username;

  @Uint32()
  external int sesi1_num_opens;

  @Uint32()
  external int sesi1_time;

  @Uint32()
  external int sesi1_idle_time;

  @Uint32()
  external int sesi1_user_flags;
}

/// {@category Struct}
class SESSION_INFO_10 extends Struct {
  external Pointer<Utf16> sesi10_cname;

  external Pointer<Utf16> sesi10_username;

  @Uint32()
  external int sesi10_time;

  @Uint32()
  external int sesi10_idle_time;
}

/// {@category Struct}
class SESSION_INFO_2 extends Struct {
  external Pointer<Utf16> sesi2_cname;

  external Pointer<Utf16> sesi2_username;

  @Uint32()
  external int sesi2_num_opens;

  @Uint32()
  external int sesi2_time;

  @Uint32()
  external int sesi2_idle_time;

  @Uint32()
  external int sesi2_user_flags;

  external Pointer<Utf16> sesi2_cltype_name;
}

/// {@category Struct}
class SESSION_INFO_502 extends Struct {
  external Pointer<Utf16> sesi502_cname;

  external Pointer<Utf16> sesi502_username;

  @Uint32()
  external int sesi502_num_opens;

  @Uint32()
  external int sesi502_time;

  @Uint32()
  external int sesi502_idle_time;

  @Uint32()
  external int sesi502_user_flags;

  external Pointer<Utf16> sesi502_cltype_name;

  external Pointer<Utf16> sesi502_transport;
}

/// {@category Struct}
class SHARE_INFO_0 extends Struct {
  external Pointer<Utf16> shi0_netname;
}

/// {@category Struct}
class SHARE_INFO_1 extends Struct {
  external Pointer<Utf16> shi1_netname;

  @Uint32()
  external int shi1_type;

  external Pointer<Utf16> shi1_remark;
}

/// {@category Struct}
class SHARE_INFO_1004 extends Struct {
  external Pointer<Utf16> shi1004_remark;
}

/// {@category Struct}
class SHARE_INFO_1005 extends Struct {
  @Uint32()
  external int shi1005_flags;
}

/// {@category Struct}
class SHARE_INFO_1006 extends Struct {
  @Uint32()
  external int shi1006_max_uses;
}

/// {@category Struct}
class SHARE_INFO_1501 extends Struct {
  @Uint32()
  external int shi1501_reserved;

  external Pointer<SECURITY_DESCRIPTOR> shi1501_security_descriptor;
}

/// {@category Struct}
class SHARE_INFO_1503 extends Struct {
  external GUID shi1503_sharefilter;
}

/// {@category Struct}
class SHARE_INFO_2 extends Struct {
  external Pointer<Utf16> shi2_netname;

  @Uint32()
  external int shi2_type;

  external Pointer<Utf16> shi2_remark;

  @Uint32()
  external int shi2_permissions;

  @Uint32()
  external int shi2_max_uses;

  @Uint32()
  external int shi2_current_uses;

  external Pointer<Utf16> shi2_path;

  external Pointer<Utf16> shi2_passwd;
}

/// {@category Struct}
class SHARE_INFO_501 extends Struct {
  external Pointer<Utf16> shi501_netname;

  @Uint32()
  external int shi501_type;

  external Pointer<Utf16> shi501_remark;

  @Uint32()
  external int shi501_flags;
}

/// {@category Struct}
class SHARE_INFO_502 extends Struct {
  external Pointer<Utf16> shi502_netname;

  @Uint32()
  external int shi502_type;

  external Pointer<Utf16> shi502_remark;

  @Uint32()
  external int shi502_permissions;

  @Uint32()
  external int shi502_max_uses;

  @Uint32()
  external int shi502_current_uses;

  external Pointer<Utf16> shi502_path;

  external Pointer<Utf16> shi502_passwd;

  @Uint32()
  external int shi502_reserved;

  external Pointer<SECURITY_DESCRIPTOR> shi502_security_descriptor;
}

/// {@category Struct}
class SHARE_INFO_503 extends Struct {
  external Pointer<Utf16> shi503_netname;

  @Uint32()
  external int shi503_type;

  external Pointer<Utf16> shi503_remark;

  @Uint32()
  external int shi503_permissions;

  @Uint32()
  external int shi503_max_uses;

  @Uint32()
  external int shi503_current_uses;

  external Pointer<Utf16> shi503_path;

  external Pointer<Utf16> shi503_passwd;

  external Pointer<Utf16> shi503_servername;

  @Uint32()
  external int shi503_reserved;

  external Pointer<SECURITY_DESCRIPTOR> shi503_security_descriptor;
}

/// {@category Struct}
class STAT_SERVER_0 extends Struct {
  @Uint32()
  external int sts0_start;

  @Uint32()
  external int sts0_fopens;

  @Uint32()
  external int sts0_devopens;

  @Uint32()
  external int sts0_jobsqueued;

  @Uint32()
  external int sts0_sopens;

  @Uint32()
  external int sts0_stimedout;

  @Uint32()
  external int sts0_serrorout;

  @Uint32()
  external int sts0_pwerrors;

  @Uint32()
  external int sts0_permerrors;

  @Uint32()
  external int sts0_syserrors;

  @Uint32()
  external int sts0_bytessent_low;

  @Uint32()
  external int sts0_bytessent_high;

  @Uint32()
  external int sts0_bytesrcvd_low;

  @Uint32()
  external int sts0_bytesrcvd_high;

  @Uint32()
  external int sts0_avresponse;

  @Uint32()
  external int sts0_reqbufneed;

  @Uint32()
  external int sts0_bigbufneed;
}

/// {@category Struct}
class STAT_WORKSTATION_0 extends Struct {
  @Int64()
  external int StatisticsStartTime;

  @Int64()
  external int BytesReceived;

  @Int64()
  external int SmbsReceived;

  @Int64()
  external int PagingReadBytesRequested;

  @Int64()
  external int NonPagingReadBytesRequested;

  @Int64()
  external int CacheReadBytesRequested;

  @Int64()
  external int NetworkReadBytesRequested;

  @Int64()
  external int BytesTransmitted;

  @Int64()
  external int SmbsTransmitted;

  @Int64()
  external int PagingWriteBytesRequested;

  @Int64()
  external int NonPagingWriteBytesRequested;

  @Int64()
  external int CacheWriteBytesRequested;

  @Int64()
  external int NetworkWriteBytesRequested;

  @Uint32()
  external int InitiallyFailedOperations;

  @Uint32()
  external int FailedCompletionOperations;

  @Uint32()
  external int ReadOperations;

  @Uint32()
  external int RandomReadOperations;

  @Uint32()
  external int ReadSmbs;

  @Uint32()
  external int LargeReadSmbs;

  @Uint32()
  external int SmallReadSmbs;

  @Uint32()
  external int WriteOperations;

  @Uint32()
  external int RandomWriteOperations;

  @Uint32()
  external int WriteSmbs;

  @Uint32()
  external int LargeWriteSmbs;

  @Uint32()
  external int SmallWriteSmbs;

  @Uint32()
  external int RawReadsDenied;

  @Uint32()
  external int RawWritesDenied;

  @Uint32()
  external int NetworkErrors;

  @Uint32()
  external int Sessions;

  @Uint32()
  external int FailedSessions;

  @Uint32()
  external int Reconnects;

  @Uint32()
  external int CoreConnects;

  @Uint32()
  external int Lanman20Connects;

  @Uint32()
  external int Lanman21Connects;

  @Uint32()
  external int LanmanNtConnects;

  @Uint32()
  external int ServerDisconnects;

  @Uint32()
  external int HungSessions;

  @Uint32()
  external int UseCount;

  @Uint32()
  external int FailedUseCount;

  @Uint32()
  external int CurrentCommands;
}

/// {@category Struct}
class TAPE_ERASE extends Struct {
  @Int32()
  external int Type;

  @Uint8()
  external int Immediate;
}

/// {@category Struct}
class TAPE_GET_POSITION extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Partition;

  @Int64()
  external int Offset;
}

/// {@category Struct}
class TAPE_PREPARE extends Struct {
  @Int32()
  external int Operation;

  @Uint8()
  external int Immediate;
}

/// {@category Struct}
class TAPE_SET_POSITION extends Struct {
  @Int32()
  external int Method;

  @Uint32()
  external int Partition;

  @Int64()
  external int Offset;

  @Uint8()
  external int Immediate;
}

/// {@category Struct}
class TAPE_WRITE_MARKS extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Count;

  @Uint8()
  external int Immediate;
}

/// {@category Struct}
class TRANSACTION_NOTIFICATION extends Struct {
  external Pointer TransactionKey;

  @Uint32()
  external int TransactionNotification;

  @Int64()
  external int TmVirtualClock;

  @Uint32()
  external int ArgumentLength;
}

/// {@category Struct}
class TRANSACTION_NOTIFICATION_MARSHAL_ARGUMENT extends Struct {
  @Uint32()
  external int MarshalCookie;

  external GUID UOW;
}

/// {@category Struct}
class TRANSACTION_NOTIFICATION_PROPAGATE_ARGUMENT extends Struct {
  @Uint32()
  external int PropagationCookie;

  external GUID UOW;

  external GUID TmIdentity;

  @Uint32()
  external int BufferLength;
}

/// {@category Struct}
class TRANSACTION_NOTIFICATION_RECOVERY_ARGUMENT extends Struct {
  external GUID EnlistmentId;

  external GUID UOW;
}

/// {@category Struct}
class TRANSACTION_NOTIFICATION_SAVEPOINT_ARGUMENT extends Struct {
  @Uint32()
  external int SavepointId;
}

/// {@category Struct}
class TRANSACTION_NOTIFICATION_TM_ONLINE_ARGUMENT extends Struct {
  external GUID TmIdentity;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
@Packed(4)
class TXF_ID extends Struct {
  external _TXF_ID__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
@Packed(4)
class _TXF_ID__Anonymous_e__Struct extends Struct {
  @Int64()
  external int LowPart;

  @Int64()
  external int HighPart;
}

extension TXF_ID_Extension on TXF_ID {
  int get LowPart => this.Anonymous.LowPart;
  set LowPart(int value) => this.Anonymous.LowPart = value;

  int get HighPart => this.Anonymous.HighPart;
  set HighPart(int value) => this.Anonymous.HighPart = value;
}

/// {@category Struct}
class TXF_LOG_RECORD_AFFECTED_FILE extends Struct {
  @Uint16()
  external int Version;

  @Uint32()
  external int RecordLength;

  @Uint32()
  external int Flags;

  external TXF_ID TxfFileId;

  external GUID KtmGuid;

  @Uint32()
  external int FileNameLength;

  @Uint32()
  external int FileNameByteOffsetInStructure;
}

/// {@category Struct}
class TXF_LOG_RECORD_BASE extends Struct {
  @Uint16()
  external int Version;

  @Uint16()
  external int RecordType;

  @Uint32()
  external int RecordLength;
}

/// {@category Struct}
class TXF_LOG_RECORD_TRUNCATE extends Struct {
  @Uint16()
  external int Version;

  @Uint16()
  external int RecordType;

  @Uint32()
  external int RecordLength;

  @Uint32()
  external int Flags;

  external TXF_ID TxfFileId;

  external GUID KtmGuid;

  @Int64()
  external int NewFileSize;

  @Uint32()
  external int FileNameLength;

  @Uint32()
  external int FileNameByteOffsetInStructure;
}

/// {@category Struct}
class TXF_LOG_RECORD_WRITE extends Struct {
  @Uint16()
  external int Version;

  @Uint16()
  external int RecordType;

  @Uint32()
  external int RecordLength;

  @Uint32()
  external int Flags;

  external TXF_ID TxfFileId;

  external GUID KtmGuid;

  @Int64()
  external int ByteOffsetInFile;

  @Uint32()
  external int NumBytesWritten;

  @Uint32()
  external int ByteOffsetInStructure;

  @Uint32()
  external int FileNameLength;

  @Uint32()
  external int FileNameByteOffsetInStructure;
}

/// {@category Struct}
class VOLUME_ALLOCATE_BC_STREAM_INPUT extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int RequestsPerPeriod;

  @Uint32()
  external int Period;

  @Uint8()
  external int RetryFailures;

  @Uint8()
  external int Discardable;

  @Array(2)
  external Array<Uint8> Reserved1;

  @Uint64()
  external int LowestByteOffset;

  @Uint64()
  external int HighestByteOffset;

  @Uint32()
  external int AccessType;

  @Uint32()
  external int AccessMode;
}

/// {@category Struct}
class VOLUME_ALLOCATE_BC_STREAM_OUTPUT extends Struct {
  @Uint64()
  external int RequestSize;

  @Uint32()
  external int NumOutStandingRequests;
}

/// {@category Struct}
class VOLUME_ALLOCATION_HINT_INPUT extends Struct {
  @Uint32()
  external int ClusterSize;

  @Uint32()
  external int NumberOfClusters;

  @Int64()
  external int StartingClusterNumber;
}

/// {@category Struct}
class VOLUME_ALLOCATION_HINT_OUTPUT extends Struct {
  @Array(1)
  external Array<Uint32> Bitmap;
}

/// {@category Struct}
class VOLUME_CRITICAL_IO extends Struct {
  @Uint32()
  external int AccessType;

  @Uint32()
  external int ExtentsCount;

  @Array(1)
  external Array<FILE_EXTENT> Extents;
}

/// {@category Struct}
class VOLUME_FAILOVER_SET extends Struct {
  @Uint32()
  external int NumberOfDisks;

  @Array(1)
  external Array<Uint32> DiskNumbers;
}

/// {@category Struct}
class VOLUME_GET_BC_PROPERTIES_INPUT extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Reserved1;

  @Uint64()
  external int LowestByteOffset;

  @Uint64()
  external int HighestByteOffset;

  @Uint32()
  external int AccessType;

  @Uint32()
  external int AccessMode;
}

/// {@category Struct}
class VOLUME_GET_BC_PROPERTIES_OUTPUT extends Struct {
  @Uint32()
  external int MaximumRequestsPerPeriod;

  @Uint32()
  external int MinimumPeriod;

  @Uint64()
  external int MaximumRequestSize;

  @Uint32()
  external int EstimatedTimePerRequest;

  @Uint32()
  external int NumOutStandingRequests;

  @Uint64()
  external int RequestSize;
}

/// {@category Struct}
class VOLUME_LOGICAL_OFFSET extends Struct {
  @Int64()
  external int LogicalOffset;
}

/// {@category Struct}
class VOLUME_NUMBER extends Struct {
  @Uint32()
  external int VolumeNumber;

  @Array(8)
  external Array<Uint16> _VolumeManagerName;

  String get VolumeManagerName {
    final charCodes = <int>[];
    for (var i = 0; i < 8; i++) {
      charCodes.add(_VolumeManagerName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set VolumeManagerName(String value) {
    final stringToStore = value.padRight(8, '\x00');
    for (var i = 0; i < 8; i++) {
      _VolumeManagerName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class VOLUME_PHYSICAL_OFFSET extends Struct {
  @Uint32()
  external int DiskNumber;

  @Int64()
  external int Offset;
}

/// {@category Struct}
class VOLUME_PHYSICAL_OFFSETS extends Struct {
  @Uint32()
  external int NumberOfPhysicalOffsets;

  @Array(1)
  external Array<VOLUME_PHYSICAL_OFFSET> PhysicalOffset;
}

/// {@category Struct}
class VOLUME_READ_PLEX_INPUT extends Struct {
  @Int64()
  external int ByteOffset;

  @Uint32()
  external int Length;

  @Uint32()
  external int PlexNumber;
}

/// {@category Struct}
class VOLUME_SET_GPT_ATTRIBUTES_INFORMATION extends Struct {
  @Uint64()
  external int GptAttributes;

  @Uint8()
  external int RevertOnClose;

  @Uint8()
  external int ApplyToAllConnectedVolumes;

  @Uint16()
  external int Reserved1;

  @Uint32()
  external int Reserved2;
}

/// {@category Struct}
class VOLUME_SHRINK_INFO extends Struct {
  @Uint64()
  external int VolumeSize;
}

/// {@category Struct}
class VS_FIXEDFILEINFO extends Struct {
  @Uint32()
  external int dwSignature;

  @Uint32()
  external int dwStrucVersion;

  @Uint32()
  external int dwFileVersionMS;

  @Uint32()
  external int dwFileVersionLS;

  @Uint32()
  external int dwProductVersionMS;

  @Uint32()
  external int dwProductVersionLS;

  @Uint32()
  external int dwFileFlagsMask;

  @Uint32()
  external int dwFileFlags;

  @Int32()
  external int dwFileOS;

  @Int32()
  external int dwFileType;

  @Int32()
  external int dwFileSubtype;

  @Uint32()
  external int dwFileDateMS;

  @Uint32()
  external int dwFileDateLS;
}

/// {@category Struct}
class WIM_ENTRY_INFO extends Struct {
  @Uint32()
  external int WimEntryInfoSize;

  @Uint32()
  external int WimType;

  @Int64()
  external int DataSourceId;

  external GUID WimGuid;

  external Pointer<Utf16> WimPath;

  @Uint32()
  external int WimIndex;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class WIM_EXTERNAL_FILE_INFO extends Struct {
  @Int64()
  external int DataSourceId;

  @Array(20)
  external Array<Uint8> ResourceHash;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class WIN32_FILE_ATTRIBUTE_DATA extends Struct {
  @Uint32()
  external int dwFileAttributes;

  external FILETIME ftCreationTime;

  external FILETIME ftLastAccessTime;

  external FILETIME ftLastWriteTime;

  @Uint32()
  external int nFileSizeHigh;

  @Uint32()
  external int nFileSizeLow;
}

/// {@category Struct}
class WIN32_FIND_DATA extends Struct {
  @Uint32()
  external int dwFileAttributes;

  external FILETIME ftCreationTime;

  external FILETIME ftLastAccessTime;

  external FILETIME ftLastWriteTime;

  @Uint32()
  external int nFileSizeHigh;

  @Uint32()
  external int nFileSizeLow;

  @Uint32()
  external int dwReserved0;

  @Uint32()
  external int dwReserved1;

  @Array(260)
  external Array<Uint16> _cFileName;

  String get cFileName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_cFileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set cFileName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _cFileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(14)
  external Array<Uint16> _cAlternateFileName;

  String get cAlternateFileName {
    final charCodes = <int>[];
    for (var i = 0; i < 14; i++) {
      charCodes.add(_cAlternateFileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set cAlternateFileName(String value) {
    final stringToStore = value.padRight(14, '\x00');
    for (var i = 0; i < 14; i++) {
      _cAlternateFileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class WIN32_FIND_STREAM_DATA extends Struct {
  @Int64()
  external int StreamSize;

  @Array(296)
  external Array<Uint16> _cStreamName;

  String get cStreamName {
    final charCodes = <int>[];
    for (var i = 0; i < 296; i++) {
      charCodes.add(_cStreamName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set cStreamName(String value) {
    final stringToStore = value.padRight(296, '\x00');
    for (var i = 0; i < 296; i++) {
      _cStreamName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class WIN32_STREAM_ID extends Struct {
  @Uint32()
  external int dwStreamId;

  @Uint32()
  external int dwStreamAttributes;

  @Int64()
  external int Size;

  @Uint32()
  external int dwStreamNameSize;

  @Array(1)
  external Array<Uint16> _cStreamName;

  String get cStreamName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_cStreamName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set cStreamName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _cStreamName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class WOF_FILE_COMPRESSION_INFO_V0 extends Struct {
  @Uint32()
  external int Algorithm;
}

/// {@category Struct}
class WOF_FILE_COMPRESSION_INFO_V1 extends Struct {
  @Uint32()
  external int Algorithm;

  @Uint32()
  external int Flags;
}
