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
import '../../storage/installablefilesystems/structs.g.dart';

/// {@category Struct}
class FILTER_AGGREGATE_BASIC_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Uint32()
  external int Flags;

  external _FILTER_AGGREGATE_BASIC_INFORMATION__Type_e__Union Type;
}

/// {@category Struct}
class _FILTER_AGGREGATE_BASIC_INFORMATION__Type_e__Union extends Union {
  external _FILTER_AGGREGATE_BASIC_INFORMATION__Type_e__Union__MiniFilter_e__Struct
      MiniFilter;

  external _FILTER_AGGREGATE_BASIC_INFORMATION__Type_e__Union__LegacyFilter_e__Struct
      LegacyFilter;
}

/// {@category Struct}
class _FILTER_AGGREGATE_BASIC_INFORMATION__Type_e__Union__MiniFilter_e__Struct
    extends Struct {
  @Uint32()
  external int FrameID;

  @Uint32()
  external int NumberOfInstances;

  @Uint16()
  external int FilterNameLength;

  @Uint16()
  external int FilterNameBufferOffset;

  @Uint16()
  external int FilterAltitudeLength;

  @Uint16()
  external int FilterAltitudeBufferOffset;
}

extension FILTER_AGGREGATE_BASIC_INFORMATION__Type_e__Union_Extension
    on FILTER_AGGREGATE_BASIC_INFORMATION {
  int get FrameID => this.Type.MiniFilter.FrameID;
  set FrameID(int value) => this.Type.MiniFilter.FrameID = value;

  int get NumberOfInstances => this.Type.MiniFilter.NumberOfInstances;
  set NumberOfInstances(int value) =>
      this.Type.MiniFilter.NumberOfInstances = value;

  int get FilterNameLength => this.Type.MiniFilter.FilterNameLength;
  set FilterNameLength(int value) =>
      this.Type.MiniFilter.FilterNameLength = value;

  int get FilterNameBufferOffset => this.Type.MiniFilter.FilterNameBufferOffset;
  set FilterNameBufferOffset(int value) =>
      this.Type.MiniFilter.FilterNameBufferOffset = value;

  int get FilterAltitudeLength => this.Type.MiniFilter.FilterAltitudeLength;
  set FilterAltitudeLength(int value) =>
      this.Type.MiniFilter.FilterAltitudeLength = value;

  int get FilterAltitudeBufferOffset =>
      this.Type.MiniFilter.FilterAltitudeBufferOffset;
  set FilterAltitudeBufferOffset(int value) =>
      this.Type.MiniFilter.FilterAltitudeBufferOffset = value;
}

/// {@category Struct}
class _FILTER_AGGREGATE_BASIC_INFORMATION__Type_e__Union__LegacyFilter_e__Struct
    extends Struct {
  @Uint16()
  external int FilterNameLength;

  @Uint16()
  external int FilterNameBufferOffset;
}

extension FILTER_AGGREGATE_BASIC_INFORMATION__Type_e__Union_Extension_1
    on FILTER_AGGREGATE_BASIC_INFORMATION {
  int get FilterNameLength => this.Type.LegacyFilter.FilterNameLength;
  set FilterNameLength(int value) =>
      this.Type.LegacyFilter.FilterNameLength = value;

  int get FilterNameBufferOffset =>
      this.Type.LegacyFilter.FilterNameBufferOffset;
  set FilterNameBufferOffset(int value) =>
      this.Type.LegacyFilter.FilterNameBufferOffset = value;
}

extension FILTER_AGGREGATE_BASIC_INFORMATION_Extension
    on FILTER_AGGREGATE_BASIC_INFORMATION {
  _FILTER_AGGREGATE_BASIC_INFORMATION__Type_e__Union__MiniFilter_e__Struct
      get MiniFilter => this.Type.MiniFilter;
  set MiniFilter(
          _FILTER_AGGREGATE_BASIC_INFORMATION__Type_e__Union__MiniFilter_e__Struct
              value) =>
      this.Type.MiniFilter = value;

  _FILTER_AGGREGATE_BASIC_INFORMATION__Type_e__Union__LegacyFilter_e__Struct
      get LegacyFilter => this.Type.LegacyFilter;
  set LegacyFilter(
          _FILTER_AGGREGATE_BASIC_INFORMATION__Type_e__Union__LegacyFilter_e__Struct
              value) =>
      this.Type.LegacyFilter = value;
}

/// {@category Struct}
class FILTER_AGGREGATE_STANDARD_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Uint32()
  external int Flags;

  external _FILTER_AGGREGATE_STANDARD_INFORMATION__Type_e__Union Type;
}

/// {@category Struct}
class _FILTER_AGGREGATE_STANDARD_INFORMATION__Type_e__Union extends Union {
  external _FILTER_AGGREGATE_STANDARD_INFORMATION__Type_e__Union__MiniFilter_e__Struct
      MiniFilter;

  external _FILTER_AGGREGATE_STANDARD_INFORMATION__Type_e__Union__LegacyFilter_e__Struct
      LegacyFilter;
}

/// {@category Struct}
class _FILTER_AGGREGATE_STANDARD_INFORMATION__Type_e__Union__MiniFilter_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int FrameID;

  @Uint32()
  external int NumberOfInstances;

  @Uint16()
  external int FilterNameLength;

  @Uint16()
  external int FilterNameBufferOffset;

  @Uint16()
  external int FilterAltitudeLength;

  @Uint16()
  external int FilterAltitudeBufferOffset;
}

extension FILTER_AGGREGATE_STANDARD_INFORMATION__Type_e__Union_Extension
    on FILTER_AGGREGATE_STANDARD_INFORMATION {
  int get Flags => this.Type.MiniFilter.Flags;
  set Flags(int value) => this.Type.MiniFilter.Flags = value;

  int get FrameID => this.Type.MiniFilter.FrameID;
  set FrameID(int value) => this.Type.MiniFilter.FrameID = value;

  int get NumberOfInstances => this.Type.MiniFilter.NumberOfInstances;
  set NumberOfInstances(int value) =>
      this.Type.MiniFilter.NumberOfInstances = value;

  int get FilterNameLength => this.Type.MiniFilter.FilterNameLength;
  set FilterNameLength(int value) =>
      this.Type.MiniFilter.FilterNameLength = value;

  int get FilterNameBufferOffset => this.Type.MiniFilter.FilterNameBufferOffset;
  set FilterNameBufferOffset(int value) =>
      this.Type.MiniFilter.FilterNameBufferOffset = value;

  int get FilterAltitudeLength => this.Type.MiniFilter.FilterAltitudeLength;
  set FilterAltitudeLength(int value) =>
      this.Type.MiniFilter.FilterAltitudeLength = value;

  int get FilterAltitudeBufferOffset =>
      this.Type.MiniFilter.FilterAltitudeBufferOffset;
  set FilterAltitudeBufferOffset(int value) =>
      this.Type.MiniFilter.FilterAltitudeBufferOffset = value;
}

/// {@category Struct}
class _FILTER_AGGREGATE_STANDARD_INFORMATION__Type_e__Union__LegacyFilter_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  @Uint16()
  external int FilterNameLength;

  @Uint16()
  external int FilterNameBufferOffset;

  @Uint16()
  external int FilterAltitudeLength;

  @Uint16()
  external int FilterAltitudeBufferOffset;
}

extension FILTER_AGGREGATE_STANDARD_INFORMATION__Type_e__Union_Extension_1
    on FILTER_AGGREGATE_STANDARD_INFORMATION {
  int get Flags => this.Type.LegacyFilter.Flags;
  set Flags(int value) => this.Type.LegacyFilter.Flags = value;

  int get FilterNameLength => this.Type.LegacyFilter.FilterNameLength;
  set FilterNameLength(int value) =>
      this.Type.LegacyFilter.FilterNameLength = value;

  int get FilterNameBufferOffset =>
      this.Type.LegacyFilter.FilterNameBufferOffset;
  set FilterNameBufferOffset(int value) =>
      this.Type.LegacyFilter.FilterNameBufferOffset = value;

  int get FilterAltitudeLength => this.Type.LegacyFilter.FilterAltitudeLength;
  set FilterAltitudeLength(int value) =>
      this.Type.LegacyFilter.FilterAltitudeLength = value;

  int get FilterAltitudeBufferOffset =>
      this.Type.LegacyFilter.FilterAltitudeBufferOffset;
  set FilterAltitudeBufferOffset(int value) =>
      this.Type.LegacyFilter.FilterAltitudeBufferOffset = value;
}

extension FILTER_AGGREGATE_STANDARD_INFORMATION_Extension
    on FILTER_AGGREGATE_STANDARD_INFORMATION {
  _FILTER_AGGREGATE_STANDARD_INFORMATION__Type_e__Union__MiniFilter_e__Struct
      get MiniFilter => this.Type.MiniFilter;
  set MiniFilter(
          _FILTER_AGGREGATE_STANDARD_INFORMATION__Type_e__Union__MiniFilter_e__Struct
              value) =>
      this.Type.MiniFilter = value;

  _FILTER_AGGREGATE_STANDARD_INFORMATION__Type_e__Union__LegacyFilter_e__Struct
      get LegacyFilter => this.Type.LegacyFilter;
  set LegacyFilter(
          _FILTER_AGGREGATE_STANDARD_INFORMATION__Type_e__Union__LegacyFilter_e__Struct
              value) =>
      this.Type.LegacyFilter = value;
}

/// {@category Struct}
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
  external Array<Uint16> _FilterNameBuffer;

  String get FilterNameBuffer {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_FilterNameBuffer[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FilterNameBuffer(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _FilterNameBuffer[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class FILTER_MESSAGE_HEADER extends Struct {
  @Uint32()
  external int ReplyLength;

  @Uint64()
  external int MessageId;
}

/// {@category Struct}
class FILTER_REPLY_HEADER extends Struct {
  @Int32()
  external int Status;

  @Uint64()
  external int MessageId;
}

/// {@category Struct}
class FILTER_VOLUME_BASIC_INFORMATION extends Struct {
  @Uint16()
  external int FilterVolumeNameLength;

  @Array(1)
  external Array<Uint16> _FilterVolumeName;

  String get FilterVolumeName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_FilterVolumeName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FilterVolumeName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _FilterVolumeName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class FILTER_VOLUME_STANDARD_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Uint32()
  external int Flags;

  @Uint32()
  external int FrameID;

  @Int32()
  external int FileSystemType;

  @Uint16()
  external int FilterVolumeNameLength;

  @Array(1)
  external Array<Uint16> _FilterVolumeName;

  String get FilterVolumeName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_FilterVolumeName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FilterVolumeName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _FilterVolumeName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class INSTANCE_AGGREGATE_STANDARD_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Uint32()
  external int Flags;

  external _INSTANCE_AGGREGATE_STANDARD_INFORMATION__Type_e__Union Type;
}

/// {@category Struct}
class _INSTANCE_AGGREGATE_STANDARD_INFORMATION__Type_e__Union extends Union {
  external _INSTANCE_AGGREGATE_STANDARD_INFORMATION__Type_e__Union__MiniFilter_e__Struct
      MiniFilter;

  external _INSTANCE_AGGREGATE_STANDARD_INFORMATION__Type_e__Union__LegacyFilter_e__Struct
      LegacyFilter;
}

/// {@category Struct}
class _INSTANCE_AGGREGATE_STANDARD_INFORMATION__Type_e__Union__MiniFilter_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int FrameID;

  @Int32()
  external int VolumeFileSystemType;

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

  @Uint32()
  external int SupportedFeatures;
}

extension INSTANCE_AGGREGATE_STANDARD_INFORMATION__Type_e__Union_Extension
    on INSTANCE_AGGREGATE_STANDARD_INFORMATION {
  int get Flags => this.Type.MiniFilter.Flags;
  set Flags(int value) => this.Type.MiniFilter.Flags = value;

  int get FrameID => this.Type.MiniFilter.FrameID;
  set FrameID(int value) => this.Type.MiniFilter.FrameID = value;

  int get VolumeFileSystemType => this.Type.MiniFilter.VolumeFileSystemType;
  set VolumeFileSystemType(int value) =>
      this.Type.MiniFilter.VolumeFileSystemType = value;

  int get InstanceNameLength => this.Type.MiniFilter.InstanceNameLength;
  set InstanceNameLength(int value) =>
      this.Type.MiniFilter.InstanceNameLength = value;

  int get InstanceNameBufferOffset =>
      this.Type.MiniFilter.InstanceNameBufferOffset;
  set InstanceNameBufferOffset(int value) =>
      this.Type.MiniFilter.InstanceNameBufferOffset = value;

  int get AltitudeLength => this.Type.MiniFilter.AltitudeLength;
  set AltitudeLength(int value) => this.Type.MiniFilter.AltitudeLength = value;

  int get AltitudeBufferOffset => this.Type.MiniFilter.AltitudeBufferOffset;
  set AltitudeBufferOffset(int value) =>
      this.Type.MiniFilter.AltitudeBufferOffset = value;

  int get VolumeNameLength => this.Type.MiniFilter.VolumeNameLength;
  set VolumeNameLength(int value) =>
      this.Type.MiniFilter.VolumeNameLength = value;

  int get VolumeNameBufferOffset => this.Type.MiniFilter.VolumeNameBufferOffset;
  set VolumeNameBufferOffset(int value) =>
      this.Type.MiniFilter.VolumeNameBufferOffset = value;

  int get FilterNameLength => this.Type.MiniFilter.FilterNameLength;
  set FilterNameLength(int value) =>
      this.Type.MiniFilter.FilterNameLength = value;

  int get FilterNameBufferOffset => this.Type.MiniFilter.FilterNameBufferOffset;
  set FilterNameBufferOffset(int value) =>
      this.Type.MiniFilter.FilterNameBufferOffset = value;

  int get SupportedFeatures => this.Type.MiniFilter.SupportedFeatures;
  set SupportedFeatures(int value) =>
      this.Type.MiniFilter.SupportedFeatures = value;
}

/// {@category Struct}
class _INSTANCE_AGGREGATE_STANDARD_INFORMATION__Type_e__Union__LegacyFilter_e__Struct
    extends Struct {
  @Uint32()
  external int Flags;

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

  @Uint32()
  external int SupportedFeatures;
}

extension INSTANCE_AGGREGATE_STANDARD_INFORMATION__Type_e__Union_Extension_1
    on INSTANCE_AGGREGATE_STANDARD_INFORMATION {
  int get Flags => this.Type.LegacyFilter.Flags;
  set Flags(int value) => this.Type.LegacyFilter.Flags = value;

  int get AltitudeLength => this.Type.LegacyFilter.AltitudeLength;
  set AltitudeLength(int value) =>
      this.Type.LegacyFilter.AltitudeLength = value;

  int get AltitudeBufferOffset => this.Type.LegacyFilter.AltitudeBufferOffset;
  set AltitudeBufferOffset(int value) =>
      this.Type.LegacyFilter.AltitudeBufferOffset = value;

  int get VolumeNameLength => this.Type.LegacyFilter.VolumeNameLength;
  set VolumeNameLength(int value) =>
      this.Type.LegacyFilter.VolumeNameLength = value;

  int get VolumeNameBufferOffset =>
      this.Type.LegacyFilter.VolumeNameBufferOffset;
  set VolumeNameBufferOffset(int value) =>
      this.Type.LegacyFilter.VolumeNameBufferOffset = value;

  int get FilterNameLength => this.Type.LegacyFilter.FilterNameLength;
  set FilterNameLength(int value) =>
      this.Type.LegacyFilter.FilterNameLength = value;

  int get FilterNameBufferOffset =>
      this.Type.LegacyFilter.FilterNameBufferOffset;
  set FilterNameBufferOffset(int value) =>
      this.Type.LegacyFilter.FilterNameBufferOffset = value;

  int get SupportedFeatures => this.Type.LegacyFilter.SupportedFeatures;
  set SupportedFeatures(int value) =>
      this.Type.LegacyFilter.SupportedFeatures = value;
}

extension INSTANCE_AGGREGATE_STANDARD_INFORMATION_Extension
    on INSTANCE_AGGREGATE_STANDARD_INFORMATION {
  _INSTANCE_AGGREGATE_STANDARD_INFORMATION__Type_e__Union__MiniFilter_e__Struct
      get MiniFilter => this.Type.MiniFilter;
  set MiniFilter(
          _INSTANCE_AGGREGATE_STANDARD_INFORMATION__Type_e__Union__MiniFilter_e__Struct
              value) =>
      this.Type.MiniFilter = value;

  _INSTANCE_AGGREGATE_STANDARD_INFORMATION__Type_e__Union__LegacyFilter_e__Struct
      get LegacyFilter => this.Type.LegacyFilter;
  set LegacyFilter(
          _INSTANCE_AGGREGATE_STANDARD_INFORMATION__Type_e__Union__LegacyFilter_e__Struct
              value) =>
      this.Type.LegacyFilter = value;
}

/// {@category Struct}
class INSTANCE_BASIC_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Uint16()
  external int InstanceNameLength;

  @Uint16()
  external int InstanceNameBufferOffset;
}

/// {@category Struct}
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

/// {@category Struct}
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
