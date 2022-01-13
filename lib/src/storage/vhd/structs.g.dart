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
import '../../storage/vhd/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class APPLY_SNAPSHOT_VHDSET_PARAMETERS extends Struct {
  @Int32()
  external int Version;

  external _APPLY_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _APPLY_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union extends Union {
  external _APPLY_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      Version1;
}

/// {@category Struct}
class _APPLY_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
    extends Struct {
  external GUID SnapshotId;

  external GUID LeafSnapshotId;
}

extension APPLY_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union_Extension
    on APPLY_SNAPSHOT_VHDSET_PARAMETERS {
  GUID get SnapshotId => this.Anonymous.Version1.SnapshotId;
  set SnapshotId(GUID value) => this.Anonymous.Version1.SnapshotId = value;

  GUID get LeafSnapshotId => this.Anonymous.Version1.LeafSnapshotId;
  set LeafSnapshotId(GUID value) =>
      this.Anonymous.Version1.LeafSnapshotId = value;
}

extension APPLY_SNAPSHOT_VHDSET_PARAMETERS_Extension
    on APPLY_SNAPSHOT_VHDSET_PARAMETERS {
  _APPLY_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      get Version1 => this.Anonymous.Version1;
  set Version1(
          _APPLY_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
              value) =>
      this.Anonymous.Version1 = value;
}

/// {@category Struct}
class ATTACH_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Int32()
  external int Version;

  external _ATTACH_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _ATTACH_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union extends Union {
  external _ATTACH_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      Version1;

  external _ATTACH_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version2_e__Struct
      Version2;
}

/// {@category Struct}
class _ATTACH_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
    extends Struct {
  @Uint32()
  external int Reserved;
}

extension ATTACH_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union_Extension
    on ATTACH_VIRTUAL_DISK_PARAMETERS {
  int get Reserved => this.Anonymous.Version1.Reserved;
  set Reserved(int value) => this.Anonymous.Version1.Reserved = value;
}

/// {@category Struct}
class _ATTACH_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version2_e__Struct
    extends Struct {
  @Uint64()
  external int RestrictedOffset;

  @Uint64()
  external int RestrictedLength;
}

extension ATTACH_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union_Extension_1
    on ATTACH_VIRTUAL_DISK_PARAMETERS {
  int get RestrictedOffset => this.Anonymous.Version2.RestrictedOffset;
  set RestrictedOffset(int value) =>
      this.Anonymous.Version2.RestrictedOffset = value;

  int get RestrictedLength => this.Anonymous.Version2.RestrictedLength;
  set RestrictedLength(int value) =>
      this.Anonymous.Version2.RestrictedLength = value;
}

extension ATTACH_VIRTUAL_DISK_PARAMETERS_Extension
    on ATTACH_VIRTUAL_DISK_PARAMETERS {
  _ATTACH_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      get Version1 => this.Anonymous.Version1;
  set Version1(
          _ATTACH_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
              value) =>
      this.Anonymous.Version1 = value;

  _ATTACH_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version2_e__Struct
      get Version2 => this.Anonymous.Version2;
  set Version2(
          _ATTACH_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version2_e__Struct
              value) =>
      this.Anonymous.Version2 = value;
}

/// {@category Struct}
class COMPACT_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Int32()
  external int Version;

  external _COMPACT_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _COMPACT_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union extends Union {
  external _COMPACT_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      Version1;
}

/// {@category Struct}
class _COMPACT_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
    extends Struct {
  @Uint32()
  external int Reserved;
}

extension COMPACT_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union_Extension
    on COMPACT_VIRTUAL_DISK_PARAMETERS {
  int get Reserved => this.Anonymous.Version1.Reserved;
  set Reserved(int value) => this.Anonymous.Version1.Reserved = value;
}

extension COMPACT_VIRTUAL_DISK_PARAMETERS_Extension
    on COMPACT_VIRTUAL_DISK_PARAMETERS {
  _COMPACT_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      get Version1 => this.Anonymous.Version1;
  set Version1(
          _COMPACT_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
              value) =>
      this.Anonymous.Version1 = value;
}

/// {@category Struct}
class CREATE_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Int32()
  external int Version;

  external _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union extends Union {
  external _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      Version1;

  external _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version2_e__Struct
      Version2;

  external _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version3_e__Struct
      Version3;

  external _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version4_e__Struct
      Version4;
}

/// {@category Struct}
class _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
    extends Struct {
  external GUID UniqueId;

  @Uint64()
  external int MaximumSize;

  @Uint32()
  external int BlockSizeInBytes;

  @Uint32()
  external int SectorSizeInBytes;

  external Pointer<Utf16> ParentPath;

  external Pointer<Utf16> SourcePath;
}

extension CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union_Extension
    on CREATE_VIRTUAL_DISK_PARAMETERS {
  GUID get UniqueId => this.Anonymous.Version1.UniqueId;
  set UniqueId(GUID value) => this.Anonymous.Version1.UniqueId = value;

  int get MaximumSize => this.Anonymous.Version1.MaximumSize;
  set MaximumSize(int value) => this.Anonymous.Version1.MaximumSize = value;

  int get BlockSizeInBytes => this.Anonymous.Version1.BlockSizeInBytes;
  set BlockSizeInBytes(int value) =>
      this.Anonymous.Version1.BlockSizeInBytes = value;

  int get SectorSizeInBytes => this.Anonymous.Version1.SectorSizeInBytes;
  set SectorSizeInBytes(int value) =>
      this.Anonymous.Version1.SectorSizeInBytes = value;

  Pointer<Utf16> get ParentPath => this.Anonymous.Version1.ParentPath;
  set ParentPath(Pointer<Utf16> value) =>
      this.Anonymous.Version1.ParentPath = value;

  Pointer<Utf16> get SourcePath => this.Anonymous.Version1.SourcePath;
  set SourcePath(Pointer<Utf16> value) =>
      this.Anonymous.Version1.SourcePath = value;
}

/// {@category Struct}
class _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version2_e__Struct
    extends Struct {
  external GUID UniqueId;

  @Uint64()
  external int MaximumSize;

  @Uint32()
  external int BlockSizeInBytes;

  @Uint32()
  external int SectorSizeInBytes;

  @Uint32()
  external int PhysicalSectorSizeInBytes;

  external Pointer<Utf16> ParentPath;

  external Pointer<Utf16> SourcePath;

  @Uint32()
  external int OpenFlags;

  external VIRTUAL_STORAGE_TYPE ParentVirtualStorageType;

  external VIRTUAL_STORAGE_TYPE SourceVirtualStorageType;

  external GUID ResiliencyGuid;
}

extension CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union_Extension_1
    on CREATE_VIRTUAL_DISK_PARAMETERS {
  GUID get UniqueId => this.Anonymous.Version2.UniqueId;
  set UniqueId(GUID value) => this.Anonymous.Version2.UniqueId = value;

  int get MaximumSize => this.Anonymous.Version2.MaximumSize;
  set MaximumSize(int value) => this.Anonymous.Version2.MaximumSize = value;

  int get BlockSizeInBytes => this.Anonymous.Version2.BlockSizeInBytes;
  set BlockSizeInBytes(int value) =>
      this.Anonymous.Version2.BlockSizeInBytes = value;

  int get SectorSizeInBytes => this.Anonymous.Version2.SectorSizeInBytes;
  set SectorSizeInBytes(int value) =>
      this.Anonymous.Version2.SectorSizeInBytes = value;

  int get PhysicalSectorSizeInBytes =>
      this.Anonymous.Version2.PhysicalSectorSizeInBytes;
  set PhysicalSectorSizeInBytes(int value) =>
      this.Anonymous.Version2.PhysicalSectorSizeInBytes = value;

  Pointer<Utf16> get ParentPath => this.Anonymous.Version2.ParentPath;
  set ParentPath(Pointer<Utf16> value) =>
      this.Anonymous.Version2.ParentPath = value;

  Pointer<Utf16> get SourcePath => this.Anonymous.Version2.SourcePath;
  set SourcePath(Pointer<Utf16> value) =>
      this.Anonymous.Version2.SourcePath = value;

  int get OpenFlags => this.Anonymous.Version2.OpenFlags;
  set OpenFlags(int value) => this.Anonymous.Version2.OpenFlags = value;

  VIRTUAL_STORAGE_TYPE get ParentVirtualStorageType =>
      this.Anonymous.Version2.ParentVirtualStorageType;
  set ParentVirtualStorageType(VIRTUAL_STORAGE_TYPE value) =>
      this.Anonymous.Version2.ParentVirtualStorageType = value;

  VIRTUAL_STORAGE_TYPE get SourceVirtualStorageType =>
      this.Anonymous.Version2.SourceVirtualStorageType;
  set SourceVirtualStorageType(VIRTUAL_STORAGE_TYPE value) =>
      this.Anonymous.Version2.SourceVirtualStorageType = value;

  GUID get ResiliencyGuid => this.Anonymous.Version2.ResiliencyGuid;
  set ResiliencyGuid(GUID value) =>
      this.Anonymous.Version2.ResiliencyGuid = value;
}

/// {@category Struct}
class _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version3_e__Struct
    extends Struct {
  external GUID UniqueId;

  @Uint64()
  external int MaximumSize;

  @Uint32()
  external int BlockSizeInBytes;

  @Uint32()
  external int SectorSizeInBytes;

  @Uint32()
  external int PhysicalSectorSizeInBytes;

  external Pointer<Utf16> ParentPath;

  external Pointer<Utf16> SourcePath;

  @Uint32()
  external int OpenFlags;

  external VIRTUAL_STORAGE_TYPE ParentVirtualStorageType;

  external VIRTUAL_STORAGE_TYPE SourceVirtualStorageType;

  external GUID ResiliencyGuid;

  external Pointer<Utf16> SourceLimitPath;

  external VIRTUAL_STORAGE_TYPE BackingStorageType;
}

extension CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union_Extension_2
    on CREATE_VIRTUAL_DISK_PARAMETERS {
  GUID get UniqueId => this.Anonymous.Version3.UniqueId;
  set UniqueId(GUID value) => this.Anonymous.Version3.UniqueId = value;

  int get MaximumSize => this.Anonymous.Version3.MaximumSize;
  set MaximumSize(int value) => this.Anonymous.Version3.MaximumSize = value;

  int get BlockSizeInBytes => this.Anonymous.Version3.BlockSizeInBytes;
  set BlockSizeInBytes(int value) =>
      this.Anonymous.Version3.BlockSizeInBytes = value;

  int get SectorSizeInBytes => this.Anonymous.Version3.SectorSizeInBytes;
  set SectorSizeInBytes(int value) =>
      this.Anonymous.Version3.SectorSizeInBytes = value;

  int get PhysicalSectorSizeInBytes =>
      this.Anonymous.Version3.PhysicalSectorSizeInBytes;
  set PhysicalSectorSizeInBytes(int value) =>
      this.Anonymous.Version3.PhysicalSectorSizeInBytes = value;

  Pointer<Utf16> get ParentPath => this.Anonymous.Version3.ParentPath;
  set ParentPath(Pointer<Utf16> value) =>
      this.Anonymous.Version3.ParentPath = value;

  Pointer<Utf16> get SourcePath => this.Anonymous.Version3.SourcePath;
  set SourcePath(Pointer<Utf16> value) =>
      this.Anonymous.Version3.SourcePath = value;

  int get OpenFlags => this.Anonymous.Version3.OpenFlags;
  set OpenFlags(int value) => this.Anonymous.Version3.OpenFlags = value;

  VIRTUAL_STORAGE_TYPE get ParentVirtualStorageType =>
      this.Anonymous.Version3.ParentVirtualStorageType;
  set ParentVirtualStorageType(VIRTUAL_STORAGE_TYPE value) =>
      this.Anonymous.Version3.ParentVirtualStorageType = value;

  VIRTUAL_STORAGE_TYPE get SourceVirtualStorageType =>
      this.Anonymous.Version3.SourceVirtualStorageType;
  set SourceVirtualStorageType(VIRTUAL_STORAGE_TYPE value) =>
      this.Anonymous.Version3.SourceVirtualStorageType = value;

  GUID get ResiliencyGuid => this.Anonymous.Version3.ResiliencyGuid;
  set ResiliencyGuid(GUID value) =>
      this.Anonymous.Version3.ResiliencyGuid = value;

  Pointer<Utf16> get SourceLimitPath => this.Anonymous.Version3.SourceLimitPath;
  set SourceLimitPath(Pointer<Utf16> value) =>
      this.Anonymous.Version3.SourceLimitPath = value;

  VIRTUAL_STORAGE_TYPE get BackingStorageType =>
      this.Anonymous.Version3.BackingStorageType;
  set BackingStorageType(VIRTUAL_STORAGE_TYPE value) =>
      this.Anonymous.Version3.BackingStorageType = value;
}

/// {@category Struct}
class _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version4_e__Struct
    extends Struct {
  external GUID UniqueId;

  @Uint64()
  external int MaximumSize;

  @Uint32()
  external int BlockSizeInBytes;

  @Uint32()
  external int SectorSizeInBytes;

  @Uint32()
  external int PhysicalSectorSizeInBytes;

  external Pointer<Utf16> ParentPath;

  external Pointer<Utf16> SourcePath;

  @Uint32()
  external int OpenFlags;

  external VIRTUAL_STORAGE_TYPE ParentVirtualStorageType;

  external VIRTUAL_STORAGE_TYPE SourceVirtualStorageType;

  external GUID ResiliencyGuid;

  external Pointer<Utf16> SourceLimitPath;

  external VIRTUAL_STORAGE_TYPE BackingStorageType;

  external GUID PmemAddressAbstractionType;

  @Uint64()
  external int DataAlignment;
}

extension CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union_Extension_3
    on CREATE_VIRTUAL_DISK_PARAMETERS {
  GUID get UniqueId => this.Anonymous.Version4.UniqueId;
  set UniqueId(GUID value) => this.Anonymous.Version4.UniqueId = value;

  int get MaximumSize => this.Anonymous.Version4.MaximumSize;
  set MaximumSize(int value) => this.Anonymous.Version4.MaximumSize = value;

  int get BlockSizeInBytes => this.Anonymous.Version4.BlockSizeInBytes;
  set BlockSizeInBytes(int value) =>
      this.Anonymous.Version4.BlockSizeInBytes = value;

  int get SectorSizeInBytes => this.Anonymous.Version4.SectorSizeInBytes;
  set SectorSizeInBytes(int value) =>
      this.Anonymous.Version4.SectorSizeInBytes = value;

  int get PhysicalSectorSizeInBytes =>
      this.Anonymous.Version4.PhysicalSectorSizeInBytes;
  set PhysicalSectorSizeInBytes(int value) =>
      this.Anonymous.Version4.PhysicalSectorSizeInBytes = value;

  Pointer<Utf16> get ParentPath => this.Anonymous.Version4.ParentPath;
  set ParentPath(Pointer<Utf16> value) =>
      this.Anonymous.Version4.ParentPath = value;

  Pointer<Utf16> get SourcePath => this.Anonymous.Version4.SourcePath;
  set SourcePath(Pointer<Utf16> value) =>
      this.Anonymous.Version4.SourcePath = value;

  int get OpenFlags => this.Anonymous.Version4.OpenFlags;
  set OpenFlags(int value) => this.Anonymous.Version4.OpenFlags = value;

  VIRTUAL_STORAGE_TYPE get ParentVirtualStorageType =>
      this.Anonymous.Version4.ParentVirtualStorageType;
  set ParentVirtualStorageType(VIRTUAL_STORAGE_TYPE value) =>
      this.Anonymous.Version4.ParentVirtualStorageType = value;

  VIRTUAL_STORAGE_TYPE get SourceVirtualStorageType =>
      this.Anonymous.Version4.SourceVirtualStorageType;
  set SourceVirtualStorageType(VIRTUAL_STORAGE_TYPE value) =>
      this.Anonymous.Version4.SourceVirtualStorageType = value;

  GUID get ResiliencyGuid => this.Anonymous.Version4.ResiliencyGuid;
  set ResiliencyGuid(GUID value) =>
      this.Anonymous.Version4.ResiliencyGuid = value;

  Pointer<Utf16> get SourceLimitPath => this.Anonymous.Version4.SourceLimitPath;
  set SourceLimitPath(Pointer<Utf16> value) =>
      this.Anonymous.Version4.SourceLimitPath = value;

  VIRTUAL_STORAGE_TYPE get BackingStorageType =>
      this.Anonymous.Version4.BackingStorageType;
  set BackingStorageType(VIRTUAL_STORAGE_TYPE value) =>
      this.Anonymous.Version4.BackingStorageType = value;

  GUID get PmemAddressAbstractionType =>
      this.Anonymous.Version4.PmemAddressAbstractionType;
  set PmemAddressAbstractionType(GUID value) =>
      this.Anonymous.Version4.PmemAddressAbstractionType = value;

  int get DataAlignment => this.Anonymous.Version4.DataAlignment;
  set DataAlignment(int value) => this.Anonymous.Version4.DataAlignment = value;
}

extension CREATE_VIRTUAL_DISK_PARAMETERS_Extension
    on CREATE_VIRTUAL_DISK_PARAMETERS {
  _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      get Version1 => this.Anonymous.Version1;
  set Version1(
          _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
              value) =>
      this.Anonymous.Version1 = value;

  _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version2_e__Struct
      get Version2 => this.Anonymous.Version2;
  set Version2(
          _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version2_e__Struct
              value) =>
      this.Anonymous.Version2 = value;

  _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version3_e__Struct
      get Version3 => this.Anonymous.Version3;
  set Version3(
          _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version3_e__Struct
              value) =>
      this.Anonymous.Version3 = value;

  _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version4_e__Struct
      get Version4 => this.Anonymous.Version4;
  set Version4(
          _CREATE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version4_e__Struct
              value) =>
      this.Anonymous.Version4 = value;
}

/// {@category Struct}
class DELETE_SNAPSHOT_VHDSET_PARAMETERS extends Struct {
  @Int32()
  external int Version;

  external _DELETE_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _DELETE_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union extends Union {
  external _DELETE_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      Version1;
}

/// {@category Struct}
class _DELETE_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
    extends Struct {
  external GUID SnapshotId;
}

extension DELETE_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union_Extension
    on DELETE_SNAPSHOT_VHDSET_PARAMETERS {
  GUID get SnapshotId => this.Anonymous.Version1.SnapshotId;
  set SnapshotId(GUID value) => this.Anonymous.Version1.SnapshotId = value;
}

extension DELETE_SNAPSHOT_VHDSET_PARAMETERS_Extension
    on DELETE_SNAPSHOT_VHDSET_PARAMETERS {
  _DELETE_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      get Version1 => this.Anonymous.Version1;
  set Version1(
          _DELETE_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
              value) =>
      this.Anonymous.Version1 = value;
}

/// {@category Struct}
class EXPAND_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Int32()
  external int Version;

  external _EXPAND_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _EXPAND_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union extends Union {
  external _EXPAND_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      Version1;
}

/// {@category Struct}
class _EXPAND_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
    extends Struct {
  @Uint64()
  external int NewSize;
}

extension EXPAND_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union_Extension
    on EXPAND_VIRTUAL_DISK_PARAMETERS {
  int get NewSize => this.Anonymous.Version1.NewSize;
  set NewSize(int value) => this.Anonymous.Version1.NewSize = value;
}

extension EXPAND_VIRTUAL_DISK_PARAMETERS_Extension
    on EXPAND_VIRTUAL_DISK_PARAMETERS {
  _EXPAND_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      get Version1 => this.Anonymous.Version1;
  set Version1(
          _EXPAND_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
              value) =>
      this.Anonymous.Version1 = value;
}

/// {@category Struct}
class FORK_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Int32()
  external int Version;

  external _FORK_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _FORK_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union extends Union {
  external _FORK_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      Version1;
}

/// {@category Struct}
class _FORK_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
    extends Struct {
  external Pointer<Utf16> ForkedVirtualDiskPath;
}

extension FORK_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union_Extension
    on FORK_VIRTUAL_DISK_PARAMETERS {
  Pointer<Utf16> get ForkedVirtualDiskPath =>
      this.Anonymous.Version1.ForkedVirtualDiskPath;
  set ForkedVirtualDiskPath(Pointer<Utf16> value) =>
      this.Anonymous.Version1.ForkedVirtualDiskPath = value;
}

extension FORK_VIRTUAL_DISK_PARAMETERS_Extension
    on FORK_VIRTUAL_DISK_PARAMETERS {
  _FORK_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      get Version1 => this.Anonymous.Version1;
  set Version1(
          _FORK_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
              value) =>
      this.Anonymous.Version1 = value;
}

/// {@category Struct}
class GET_VIRTUAL_DISK_INFO extends Struct {
  @Int32()
  external int Version;

  external _GET_VIRTUAL_DISK_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _GET_VIRTUAL_DISK_INFO__Anonymous_e__Union extends Union {
  external _GET_VIRTUAL_DISK_INFO__Anonymous_e__Union__Size_e__Struct Size;

  external GUID Identifier;

  external _GET_VIRTUAL_DISK_INFO__Anonymous_e__Union__ParentLocation_e__Struct
      ParentLocation;

  external GUID ParentIdentifier;

  @Uint32()
  external int ParentTimestamp;

  external VIRTUAL_STORAGE_TYPE VirtualStorageType;

  @Uint32()
  external int ProviderSubtype;

  @Int32()
  external int Is4kAligned;

  @Int32()
  external int IsLoaded;

  external _GET_VIRTUAL_DISK_INFO__Anonymous_e__Union__PhysicalDisk_e__Struct
      PhysicalDisk;

  @Uint32()
  external int VhdPhysicalSectorSize;

  @Uint64()
  external int SmallestSafeVirtualSize;

  @Uint32()
  external int FragmentationPercentage;

  external GUID VirtualDiskId;

  external _GET_VIRTUAL_DISK_INFO__Anonymous_e__Union__ChangeTrackingState_e__Struct
      ChangeTrackingState;
}

/// {@category Struct}
class _GET_VIRTUAL_DISK_INFO__Anonymous_e__Union__Size_e__Struct
    extends Struct {
  @Uint64()
  external int VirtualSize;

  @Uint64()
  external int PhysicalSize;

  @Uint32()
  external int BlockSize;

  @Uint32()
  external int SectorSize;
}

extension GET_VIRTUAL_DISK_INFO__Anonymous_e__Union_Extension
    on GET_VIRTUAL_DISK_INFO {
  int get VirtualSize => this.Anonymous.Size.VirtualSize;
  set VirtualSize(int value) => this.Anonymous.Size.VirtualSize = value;

  int get PhysicalSize => this.Anonymous.Size.PhysicalSize;
  set PhysicalSize(int value) => this.Anonymous.Size.PhysicalSize = value;

  int get BlockSize => this.Anonymous.Size.BlockSize;
  set BlockSize(int value) => this.Anonymous.Size.BlockSize = value;

  int get SectorSize => this.Anonymous.Size.SectorSize;
  set SectorSize(int value) => this.Anonymous.Size.SectorSize = value;
}

/// {@category Struct}
class _GET_VIRTUAL_DISK_INFO__Anonymous_e__Union__ParentLocation_e__Struct
    extends Struct {
  @Int32()
  external int ParentResolved;

  @Array(1)
  external Array<Uint16> _ParentLocationBuffer;

  String get ParentLocationBuffer {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_ParentLocationBuffer[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ParentLocationBuffer(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _ParentLocationBuffer[i] = stringToStore.codeUnitAt(i);
    }
  }
}

extension GET_VIRTUAL_DISK_INFO__Anonymous_e__Union_Extension_1
    on GET_VIRTUAL_DISK_INFO {
  int get ParentResolved => this.Anonymous.ParentLocation.ParentResolved;
  set ParentResolved(int value) =>
      this.Anonymous.ParentLocation.ParentResolved = value;

  String get ParentLocationBuffer =>
      this.Anonymous.ParentLocation.ParentLocationBuffer;
  set ParentLocationBuffer(String value) =>
      this.Anonymous.ParentLocation.ParentLocationBuffer = value;
}

/// {@category Struct}
class _GET_VIRTUAL_DISK_INFO__Anonymous_e__Union__PhysicalDisk_e__Struct
    extends Struct {
  @Uint32()
  external int LogicalSectorSize;

  @Uint32()
  external int PhysicalSectorSize;

  @Int32()
  external int IsRemote;
}

extension GET_VIRTUAL_DISK_INFO__Anonymous_e__Union_Extension_2
    on GET_VIRTUAL_DISK_INFO {
  int get LogicalSectorSize => this.Anonymous.PhysicalDisk.LogicalSectorSize;
  set LogicalSectorSize(int value) =>
      this.Anonymous.PhysicalDisk.LogicalSectorSize = value;

  int get PhysicalSectorSize => this.Anonymous.PhysicalDisk.PhysicalSectorSize;
  set PhysicalSectorSize(int value) =>
      this.Anonymous.PhysicalDisk.PhysicalSectorSize = value;

  int get IsRemote => this.Anonymous.PhysicalDisk.IsRemote;
  set IsRemote(int value) => this.Anonymous.PhysicalDisk.IsRemote = value;
}

/// {@category Struct}
class _GET_VIRTUAL_DISK_INFO__Anonymous_e__Union__ChangeTrackingState_e__Struct
    extends Struct {
  @Int32()
  external int Enabled;

  @Int32()
  external int NewerChanges;

  @Array(1)
  external Array<Uint16> _MostRecentId;

  String get MostRecentId {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_MostRecentId[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set MostRecentId(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _MostRecentId[i] = stringToStore.codeUnitAt(i);
    }
  }
}

extension GET_VIRTUAL_DISK_INFO__Anonymous_e__Union_Extension_3
    on GET_VIRTUAL_DISK_INFO {
  int get Enabled => this.Anonymous.ChangeTrackingState.Enabled;
  set Enabled(int value) => this.Anonymous.ChangeTrackingState.Enabled = value;

  int get NewerChanges => this.Anonymous.ChangeTrackingState.NewerChanges;
  set NewerChanges(int value) =>
      this.Anonymous.ChangeTrackingState.NewerChanges = value;

  String get MostRecentId => this.Anonymous.ChangeTrackingState.MostRecentId;
  set MostRecentId(String value) =>
      this.Anonymous.ChangeTrackingState.MostRecentId = value;
}

extension GET_VIRTUAL_DISK_INFO_Extension on GET_VIRTUAL_DISK_INFO {
  _GET_VIRTUAL_DISK_INFO__Anonymous_e__Union__Size_e__Struct get Size =>
      this.Anonymous.Size;
  set Size(_GET_VIRTUAL_DISK_INFO__Anonymous_e__Union__Size_e__Struct value) =>
      this.Anonymous.Size = value;

  GUID get Identifier => this.Anonymous.Identifier;
  set Identifier(GUID value) => this.Anonymous.Identifier = value;

  _GET_VIRTUAL_DISK_INFO__Anonymous_e__Union__ParentLocation_e__Struct
      get ParentLocation => this.Anonymous.ParentLocation;
  set ParentLocation(
          _GET_VIRTUAL_DISK_INFO__Anonymous_e__Union__ParentLocation_e__Struct
              value) =>
      this.Anonymous.ParentLocation = value;

  GUID get ParentIdentifier => this.Anonymous.ParentIdentifier;
  set ParentIdentifier(GUID value) => this.Anonymous.ParentIdentifier = value;

  int get ParentTimestamp => this.Anonymous.ParentTimestamp;
  set ParentTimestamp(int value) => this.Anonymous.ParentTimestamp = value;

  VIRTUAL_STORAGE_TYPE get VirtualStorageType =>
      this.Anonymous.VirtualStorageType;
  set VirtualStorageType(VIRTUAL_STORAGE_TYPE value) =>
      this.Anonymous.VirtualStorageType = value;

  int get ProviderSubtype => this.Anonymous.ProviderSubtype;
  set ProviderSubtype(int value) => this.Anonymous.ProviderSubtype = value;

  int get Is4kAligned => this.Anonymous.Is4kAligned;
  set Is4kAligned(int value) => this.Anonymous.Is4kAligned = value;

  int get IsLoaded => this.Anonymous.IsLoaded;
  set IsLoaded(int value) => this.Anonymous.IsLoaded = value;

  _GET_VIRTUAL_DISK_INFO__Anonymous_e__Union__PhysicalDisk_e__Struct
      get PhysicalDisk => this.Anonymous.PhysicalDisk;
  set PhysicalDisk(
          _GET_VIRTUAL_DISK_INFO__Anonymous_e__Union__PhysicalDisk_e__Struct
              value) =>
      this.Anonymous.PhysicalDisk = value;

  int get VhdPhysicalSectorSize => this.Anonymous.VhdPhysicalSectorSize;
  set VhdPhysicalSectorSize(int value) =>
      this.Anonymous.VhdPhysicalSectorSize = value;

  int get SmallestSafeVirtualSize => this.Anonymous.SmallestSafeVirtualSize;
  set SmallestSafeVirtualSize(int value) =>
      this.Anonymous.SmallestSafeVirtualSize = value;

  int get FragmentationPercentage => this.Anonymous.FragmentationPercentage;
  set FragmentationPercentage(int value) =>
      this.Anonymous.FragmentationPercentage = value;

  GUID get VirtualDiskId => this.Anonymous.VirtualDiskId;
  set VirtualDiskId(GUID value) => this.Anonymous.VirtualDiskId = value;

  _GET_VIRTUAL_DISK_INFO__Anonymous_e__Union__ChangeTrackingState_e__Struct
      get ChangeTrackingState => this.Anonymous.ChangeTrackingState;
  set ChangeTrackingState(
          _GET_VIRTUAL_DISK_INFO__Anonymous_e__Union__ChangeTrackingState_e__Struct
              value) =>
      this.Anonymous.ChangeTrackingState = value;
}

/// {@category Struct}
class MERGE_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Int32()
  external int Version;

  external _MERGE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _MERGE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union extends Union {
  external _MERGE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      Version1;

  external _MERGE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version2_e__Struct
      Version2;
}

/// {@category Struct}
class _MERGE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
    extends Struct {
  @Uint32()
  external int MergeDepth;
}

extension MERGE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union_Extension
    on MERGE_VIRTUAL_DISK_PARAMETERS {
  int get MergeDepth => this.Anonymous.Version1.MergeDepth;
  set MergeDepth(int value) => this.Anonymous.Version1.MergeDepth = value;
}

/// {@category Struct}
class _MERGE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version2_e__Struct
    extends Struct {
  @Uint32()
  external int MergeSourceDepth;

  @Uint32()
  external int MergeTargetDepth;
}

extension MERGE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union_Extension_1
    on MERGE_VIRTUAL_DISK_PARAMETERS {
  int get MergeSourceDepth => this.Anonymous.Version2.MergeSourceDepth;
  set MergeSourceDepth(int value) =>
      this.Anonymous.Version2.MergeSourceDepth = value;

  int get MergeTargetDepth => this.Anonymous.Version2.MergeTargetDepth;
  set MergeTargetDepth(int value) =>
      this.Anonymous.Version2.MergeTargetDepth = value;
}

extension MERGE_VIRTUAL_DISK_PARAMETERS_Extension
    on MERGE_VIRTUAL_DISK_PARAMETERS {
  _MERGE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      get Version1 => this.Anonymous.Version1;
  set Version1(
          _MERGE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
              value) =>
      this.Anonymous.Version1 = value;

  _MERGE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version2_e__Struct
      get Version2 => this.Anonymous.Version2;
  set Version2(
          _MERGE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version2_e__Struct
              value) =>
      this.Anonymous.Version2 = value;
}

/// {@category Struct}
class MIRROR_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Int32()
  external int Version;

  external _MIRROR_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _MIRROR_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union extends Union {
  external _MIRROR_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      Version1;
}

/// {@category Struct}
class _MIRROR_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
    extends Struct {
  external Pointer<Utf16> MirrorVirtualDiskPath;
}

extension MIRROR_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union_Extension
    on MIRROR_VIRTUAL_DISK_PARAMETERS {
  Pointer<Utf16> get MirrorVirtualDiskPath =>
      this.Anonymous.Version1.MirrorVirtualDiskPath;
  set MirrorVirtualDiskPath(Pointer<Utf16> value) =>
      this.Anonymous.Version1.MirrorVirtualDiskPath = value;
}

extension MIRROR_VIRTUAL_DISK_PARAMETERS_Extension
    on MIRROR_VIRTUAL_DISK_PARAMETERS {
  _MIRROR_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      get Version1 => this.Anonymous.Version1;
  set Version1(
          _MIRROR_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
              value) =>
      this.Anonymous.Version1 = value;
}

/// {@category Struct}
class MODIFY_VHDSET_PARAMETERS extends Struct {
  @Int32()
  external int Version;

  external _MODIFY_VHDSET_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _MODIFY_VHDSET_PARAMETERS__Anonymous_e__Union extends Union {
  external _MODIFY_VHDSET_PARAMETERS__Anonymous_e__Union__SnapshotPath_e__Struct
      SnapshotPath;

  external GUID SnapshotId;

  external Pointer<Utf16> DefaultFilePath;
}

/// {@category Struct}
class _MODIFY_VHDSET_PARAMETERS__Anonymous_e__Union__SnapshotPath_e__Struct
    extends Struct {
  external GUID SnapshotId;

  external Pointer<Utf16> SnapshotFilePath;
}

extension MODIFY_VHDSET_PARAMETERS__Anonymous_e__Union_Extension
    on MODIFY_VHDSET_PARAMETERS {
  GUID get SnapshotId => this.Anonymous.SnapshotPath.SnapshotId;
  set SnapshotId(GUID value) => this.Anonymous.SnapshotPath.SnapshotId = value;

  Pointer<Utf16> get SnapshotFilePath =>
      this.Anonymous.SnapshotPath.SnapshotFilePath;
  set SnapshotFilePath(Pointer<Utf16> value) =>
      this.Anonymous.SnapshotPath.SnapshotFilePath = value;
}

extension MODIFY_VHDSET_PARAMETERS_Extension on MODIFY_VHDSET_PARAMETERS {
  _MODIFY_VHDSET_PARAMETERS__Anonymous_e__Union__SnapshotPath_e__Struct
      get SnapshotPath => this.Anonymous.SnapshotPath;
  set SnapshotPath(
          _MODIFY_VHDSET_PARAMETERS__Anonymous_e__Union__SnapshotPath_e__Struct
              value) =>
      this.Anonymous.SnapshotPath = value;

  GUID get SnapshotId => this.Anonymous.SnapshotId;
  set SnapshotId(GUID value) => this.Anonymous.SnapshotId = value;

  Pointer<Utf16> get DefaultFilePath => this.Anonymous.DefaultFilePath;
  set DefaultFilePath(Pointer<Utf16> value) =>
      this.Anonymous.DefaultFilePath = value;
}

/// {@category Struct}
class OPEN_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Int32()
  external int Version;

  external _OPEN_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _OPEN_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union extends Union {
  external _OPEN_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      Version1;

  external _OPEN_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version2_e__Struct
      Version2;

  external _OPEN_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version3_e__Struct
      Version3;
}

/// {@category Struct}
class _OPEN_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
    extends Struct {
  @Uint32()
  external int RWDepth;
}

extension OPEN_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union_Extension
    on OPEN_VIRTUAL_DISK_PARAMETERS {
  int get RWDepth => this.Anonymous.Version1.RWDepth;
  set RWDepth(int value) => this.Anonymous.Version1.RWDepth = value;
}

/// {@category Struct}
class _OPEN_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version2_e__Struct
    extends Struct {
  @Int32()
  external int GetInfoOnly;

  @Int32()
  external int ReadOnly;

  external GUID ResiliencyGuid;
}

extension OPEN_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union_Extension_1
    on OPEN_VIRTUAL_DISK_PARAMETERS {
  int get GetInfoOnly => this.Anonymous.Version2.GetInfoOnly;
  set GetInfoOnly(int value) => this.Anonymous.Version2.GetInfoOnly = value;

  int get ReadOnly => this.Anonymous.Version2.ReadOnly;
  set ReadOnly(int value) => this.Anonymous.Version2.ReadOnly = value;

  GUID get ResiliencyGuid => this.Anonymous.Version2.ResiliencyGuid;
  set ResiliencyGuid(GUID value) =>
      this.Anonymous.Version2.ResiliencyGuid = value;
}

/// {@category Struct}
class _OPEN_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version3_e__Struct
    extends Struct {
  @Int32()
  external int GetInfoOnly;

  @Int32()
  external int ReadOnly;

  external GUID ResiliencyGuid;

  external GUID SnapshotId;
}

extension OPEN_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union_Extension_2
    on OPEN_VIRTUAL_DISK_PARAMETERS {
  int get GetInfoOnly => this.Anonymous.Version3.GetInfoOnly;
  set GetInfoOnly(int value) => this.Anonymous.Version3.GetInfoOnly = value;

  int get ReadOnly => this.Anonymous.Version3.ReadOnly;
  set ReadOnly(int value) => this.Anonymous.Version3.ReadOnly = value;

  GUID get ResiliencyGuid => this.Anonymous.Version3.ResiliencyGuid;
  set ResiliencyGuid(GUID value) =>
      this.Anonymous.Version3.ResiliencyGuid = value;

  GUID get SnapshotId => this.Anonymous.Version3.SnapshotId;
  set SnapshotId(GUID value) => this.Anonymous.Version3.SnapshotId = value;
}

extension OPEN_VIRTUAL_DISK_PARAMETERS_Extension
    on OPEN_VIRTUAL_DISK_PARAMETERS {
  _OPEN_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      get Version1 => this.Anonymous.Version1;
  set Version1(
          _OPEN_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
              value) =>
      this.Anonymous.Version1 = value;

  _OPEN_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version2_e__Struct
      get Version2 => this.Anonymous.Version2;
  set Version2(
          _OPEN_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version2_e__Struct
              value) =>
      this.Anonymous.Version2 = value;

  _OPEN_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version3_e__Struct
      get Version3 => this.Anonymous.Version3;
  set Version3(
          _OPEN_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version3_e__Struct
              value) =>
      this.Anonymous.Version3 = value;
}

/// {@category Struct}
class QUERY_CHANGES_VIRTUAL_DISK_RANGE extends Struct {
  @Uint64()
  external int ByteOffset;

  @Uint64()
  external int ByteLength;

  @Uint64()
  external int Reserved;
}

/// {@category Struct}
class RAW_SCSI_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Int32()
  external int Version;

  external _RAW_SCSI_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _RAW_SCSI_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union extends Union {
  external _RAW_SCSI_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      Version1;
}

/// {@category Struct}
class _RAW_SCSI_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
    extends Struct {
  @Int32()
  external int RSVDHandle;

  @Uint8()
  external int DataIn;

  @Uint8()
  external int CdbLength;

  @Uint8()
  external int SenseInfoLength;

  @Uint32()
  external int SrbFlags;

  @Uint32()
  external int DataTransferLength;

  external Pointer DataBuffer;

  external Pointer<Uint8> SenseInfo;

  external Pointer<Uint8> Cdb;
}

extension RAW_SCSI_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union_Extension
    on RAW_SCSI_VIRTUAL_DISK_PARAMETERS {
  int get RSVDHandle => this.Anonymous.Version1.RSVDHandle;
  set RSVDHandle(int value) => this.Anonymous.Version1.RSVDHandle = value;

  int get DataIn => this.Anonymous.Version1.DataIn;
  set DataIn(int value) => this.Anonymous.Version1.DataIn = value;

  int get CdbLength => this.Anonymous.Version1.CdbLength;
  set CdbLength(int value) => this.Anonymous.Version1.CdbLength = value;

  int get SenseInfoLength => this.Anonymous.Version1.SenseInfoLength;
  set SenseInfoLength(int value) =>
      this.Anonymous.Version1.SenseInfoLength = value;

  int get SrbFlags => this.Anonymous.Version1.SrbFlags;
  set SrbFlags(int value) => this.Anonymous.Version1.SrbFlags = value;

  int get DataTransferLength => this.Anonymous.Version1.DataTransferLength;
  set DataTransferLength(int value) =>
      this.Anonymous.Version1.DataTransferLength = value;

  Pointer get DataBuffer => this.Anonymous.Version1.DataBuffer;
  set DataBuffer(Pointer value) => this.Anonymous.Version1.DataBuffer = value;

  Pointer<Uint8> get SenseInfo => this.Anonymous.Version1.SenseInfo;
  set SenseInfo(Pointer<Uint8> value) =>
      this.Anonymous.Version1.SenseInfo = value;

  Pointer<Uint8> get Cdb => this.Anonymous.Version1.Cdb;
  set Cdb(Pointer<Uint8> value) => this.Anonymous.Version1.Cdb = value;
}

extension RAW_SCSI_VIRTUAL_DISK_PARAMETERS_Extension
    on RAW_SCSI_VIRTUAL_DISK_PARAMETERS {
  _RAW_SCSI_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      get Version1 => this.Anonymous.Version1;
  set Version1(
          _RAW_SCSI_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
              value) =>
      this.Anonymous.Version1 = value;
}

/// {@category Struct}
class RAW_SCSI_VIRTUAL_DISK_RESPONSE extends Struct {
  @Int32()
  external int Version;

  external _RAW_SCSI_VIRTUAL_DISK_RESPONSE__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _RAW_SCSI_VIRTUAL_DISK_RESPONSE__Anonymous_e__Union extends Union {
  external _RAW_SCSI_VIRTUAL_DISK_RESPONSE__Anonymous_e__Union__Version1_e__Struct
      Version1;
}

/// {@category Struct}
class _RAW_SCSI_VIRTUAL_DISK_RESPONSE__Anonymous_e__Union__Version1_e__Struct
    extends Struct {
  @Uint8()
  external int ScsiStatus;

  @Uint8()
  external int SenseInfoLength;

  @Uint32()
  external int DataTransferLength;
}

extension RAW_SCSI_VIRTUAL_DISK_RESPONSE__Anonymous_e__Union_Extension
    on RAW_SCSI_VIRTUAL_DISK_RESPONSE {
  int get ScsiStatus => this.Anonymous.Version1.ScsiStatus;
  set ScsiStatus(int value) => this.Anonymous.Version1.ScsiStatus = value;

  int get SenseInfoLength => this.Anonymous.Version1.SenseInfoLength;
  set SenseInfoLength(int value) =>
      this.Anonymous.Version1.SenseInfoLength = value;

  int get DataTransferLength => this.Anonymous.Version1.DataTransferLength;
  set DataTransferLength(int value) =>
      this.Anonymous.Version1.DataTransferLength = value;
}

extension RAW_SCSI_VIRTUAL_DISK_RESPONSE_Extension
    on RAW_SCSI_VIRTUAL_DISK_RESPONSE {
  _RAW_SCSI_VIRTUAL_DISK_RESPONSE__Anonymous_e__Union__Version1_e__Struct
      get Version1 => this.Anonymous.Version1;
  set Version1(
          _RAW_SCSI_VIRTUAL_DISK_RESPONSE__Anonymous_e__Union__Version1_e__Struct
              value) =>
      this.Anonymous.Version1 = value;
}

/// {@category Struct}
class RESIZE_VIRTUAL_DISK_PARAMETERS extends Struct {
  @Int32()
  external int Version;

  external _RESIZE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _RESIZE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union extends Union {
  external _RESIZE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      Version1;
}

/// {@category Struct}
class _RESIZE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
    extends Struct {
  @Uint64()
  external int NewSize;
}

extension RESIZE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union_Extension
    on RESIZE_VIRTUAL_DISK_PARAMETERS {
  int get NewSize => this.Anonymous.Version1.NewSize;
  set NewSize(int value) => this.Anonymous.Version1.NewSize = value;
}

extension RESIZE_VIRTUAL_DISK_PARAMETERS_Extension
    on RESIZE_VIRTUAL_DISK_PARAMETERS {
  _RESIZE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      get Version1 => this.Anonymous.Version1;
  set Version1(
          _RESIZE_VIRTUAL_DISK_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
              value) =>
      this.Anonymous.Version1 = value;
}

/// {@category Struct}
class SET_VIRTUAL_DISK_INFO extends Struct {
  @Int32()
  external int Version;

  external _SET_VIRTUAL_DISK_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _SET_VIRTUAL_DISK_INFO__Anonymous_e__Union extends Union {
  external Pointer<Utf16> ParentFilePath;

  external GUID UniqueIdentifier;

  external _SET_VIRTUAL_DISK_INFO__Anonymous_e__Union__ParentPathWithDepthInfo_e__Struct
      ParentPathWithDepthInfo;

  @Uint32()
  external int VhdPhysicalSectorSize;

  external GUID VirtualDiskId;

  @Int32()
  external int ChangeTrackingEnabled;

  external _SET_VIRTUAL_DISK_INFO__Anonymous_e__Union__ParentLocator_e__Struct
      ParentLocator;
}

/// {@category Struct}
class _SET_VIRTUAL_DISK_INFO__Anonymous_e__Union__ParentPathWithDepthInfo_e__Struct
    extends Struct {
  @Uint32()
  external int ChildDepth;

  external Pointer<Utf16> ParentFilePath;
}

extension SET_VIRTUAL_DISK_INFO__Anonymous_e__Union_Extension
    on SET_VIRTUAL_DISK_INFO {
  int get ChildDepth => this.Anonymous.ParentPathWithDepthInfo.ChildDepth;
  set ChildDepth(int value) =>
      this.Anonymous.ParentPathWithDepthInfo.ChildDepth = value;

  Pointer<Utf16> get ParentFilePath =>
      this.Anonymous.ParentPathWithDepthInfo.ParentFilePath;
  set ParentFilePath(Pointer<Utf16> value) =>
      this.Anonymous.ParentPathWithDepthInfo.ParentFilePath = value;
}

/// {@category Struct}
class _SET_VIRTUAL_DISK_INFO__Anonymous_e__Union__ParentLocator_e__Struct
    extends Struct {
  external GUID LinkageId;

  external Pointer<Utf16> ParentFilePath;
}

extension SET_VIRTUAL_DISK_INFO__Anonymous_e__Union_Extension_1
    on SET_VIRTUAL_DISK_INFO {
  GUID get LinkageId => this.Anonymous.ParentLocator.LinkageId;
  set LinkageId(GUID value) => this.Anonymous.ParentLocator.LinkageId = value;

  Pointer<Utf16> get ParentFilePath =>
      this.Anonymous.ParentLocator.ParentFilePath;
  set ParentFilePath(Pointer<Utf16> value) =>
      this.Anonymous.ParentLocator.ParentFilePath = value;
}

extension SET_VIRTUAL_DISK_INFO_Extension on SET_VIRTUAL_DISK_INFO {
  Pointer<Utf16> get ParentFilePath => this.Anonymous.ParentFilePath;
  set ParentFilePath(Pointer<Utf16> value) =>
      this.Anonymous.ParentFilePath = value;

  GUID get UniqueIdentifier => this.Anonymous.UniqueIdentifier;
  set UniqueIdentifier(GUID value) => this.Anonymous.UniqueIdentifier = value;

  _SET_VIRTUAL_DISK_INFO__Anonymous_e__Union__ParentPathWithDepthInfo_e__Struct
      get ParentPathWithDepthInfo => this.Anonymous.ParentPathWithDepthInfo;
  set ParentPathWithDepthInfo(
          _SET_VIRTUAL_DISK_INFO__Anonymous_e__Union__ParentPathWithDepthInfo_e__Struct
              value) =>
      this.Anonymous.ParentPathWithDepthInfo = value;

  int get VhdPhysicalSectorSize => this.Anonymous.VhdPhysicalSectorSize;
  set VhdPhysicalSectorSize(int value) =>
      this.Anonymous.VhdPhysicalSectorSize = value;

  GUID get VirtualDiskId => this.Anonymous.VirtualDiskId;
  set VirtualDiskId(GUID value) => this.Anonymous.VirtualDiskId = value;

  int get ChangeTrackingEnabled => this.Anonymous.ChangeTrackingEnabled;
  set ChangeTrackingEnabled(int value) =>
      this.Anonymous.ChangeTrackingEnabled = value;

  _SET_VIRTUAL_DISK_INFO__Anonymous_e__Union__ParentLocator_e__Struct
      get ParentLocator => this.Anonymous.ParentLocator;
  set ParentLocator(
          _SET_VIRTUAL_DISK_INFO__Anonymous_e__Union__ParentLocator_e__Struct
              value) =>
      this.Anonymous.ParentLocator = value;
}

/// {@category Struct}
class STORAGE_DEPENDENCY_INFO extends Struct {
  @Int32()
  external int Version;

  @Uint32()
  external int NumberEntries;

  external _STORAGE_DEPENDENCY_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _STORAGE_DEPENDENCY_INFO__Anonymous_e__Union extends Union {
  @Array(1)
  external Array<STORAGE_DEPENDENCY_INFO_TYPE_1> Version1Entries;

  @Array(1)
  external Array<STORAGE_DEPENDENCY_INFO_TYPE_2> Version2Entries;
}

extension STORAGE_DEPENDENCY_INFO_Extension on STORAGE_DEPENDENCY_INFO {
  Array<STORAGE_DEPENDENCY_INFO_TYPE_1> get Version1Entries =>
      this.Anonymous.Version1Entries;
  set Version1Entries(Array<STORAGE_DEPENDENCY_INFO_TYPE_1> value) =>
      this.Anonymous.Version1Entries = value;

  Array<STORAGE_DEPENDENCY_INFO_TYPE_2> get Version2Entries =>
      this.Anonymous.Version2Entries;
  set Version2Entries(Array<STORAGE_DEPENDENCY_INFO_TYPE_2> value) =>
      this.Anonymous.Version2Entries = value;
}

/// {@category Struct}
class STORAGE_DEPENDENCY_INFO_TYPE_1 extends Struct {
  @Uint32()
  external int DependencyTypeFlags;

  @Uint32()
  external int ProviderSpecificFlags;

  external VIRTUAL_STORAGE_TYPE VirtualStorageType;
}

/// {@category Struct}
class STORAGE_DEPENDENCY_INFO_TYPE_2 extends Struct {
  @Uint32()
  external int DependencyTypeFlags;

  @Uint32()
  external int ProviderSpecificFlags;

  external VIRTUAL_STORAGE_TYPE VirtualStorageType;

  @Uint32()
  external int AncestorLevel;

  external Pointer<Utf16> DependencyDeviceName;

  external Pointer<Utf16> HostVolumeName;

  external Pointer<Utf16> DependentVolumeName;

  external Pointer<Utf16> DependentVolumeRelativePath;
}

/// {@category Struct}
class TAKE_SNAPSHOT_VHDSET_PARAMETERS extends Struct {
  @Int32()
  external int Version;

  external _TAKE_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _TAKE_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union extends Union {
  external _TAKE_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      Version1;
}

/// {@category Struct}
class _TAKE_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
    extends Struct {
  external GUID SnapshotId;
}

extension TAKE_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union_Extension
    on TAKE_SNAPSHOT_VHDSET_PARAMETERS {
  GUID get SnapshotId => this.Anonymous.Version1.SnapshotId;
  set SnapshotId(GUID value) => this.Anonymous.Version1.SnapshotId = value;
}

extension TAKE_SNAPSHOT_VHDSET_PARAMETERS_Extension
    on TAKE_SNAPSHOT_VHDSET_PARAMETERS {
  _TAKE_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
      get Version1 => this.Anonymous.Version1;
  set Version1(
          _TAKE_SNAPSHOT_VHDSET_PARAMETERS__Anonymous_e__Union__Version1_e__Struct
              value) =>
      this.Anonymous.Version1 = value;
}

/// {@category Struct}
class VIRTUAL_DISK_PROGRESS extends Struct {
  @Uint32()
  external int OperationStatus;

  @Uint64()
  external int CurrentValue;

  @Uint64()
  external int CompletionValue;
}

/// {@category Struct}
class VIRTUAL_STORAGE_TYPE extends Struct {
  @Uint32()
  external int DeviceId;

  external GUID VendorId;
}
