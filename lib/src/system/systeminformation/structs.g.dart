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
import '../../system/systeminformation/structs.g.dart';
import '../../system/diagnostics/debug/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class CACHE_DESCRIPTOR extends Struct {
  @Uint8()
  external int Level;

  @Uint8()
  external int Associativity;

  @Uint16()
  external int LineSize;

  @Uint32()
  external int Size;

  @Int32()
  external int Type;
}

/// {@category Struct}
class CACHE_RELATIONSHIP extends Struct {
  @Uint8()
  external int Level;

  @Uint8()
  external int Associativity;

  @Uint16()
  external int LineSize;

  @Uint32()
  external int CacheSize;

  @Int32()
  external int Type;

  @Array(18)
  external Array<Uint8> Reserved;

  @Uint16()
  external int GroupCount;

  external _CACHE_RELATIONSHIP__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CACHE_RELATIONSHIP__Anonymous_e__Union extends Union {
  external GROUP_AFFINITY GroupMask;

  @Array(1)
  external Array<GROUP_AFFINITY> GroupMasks;
}

extension CACHE_RELATIONSHIP_Extension on CACHE_RELATIONSHIP {
  GROUP_AFFINITY get GroupMask => this.Anonymous.GroupMask;
  set GroupMask(GROUP_AFFINITY value) => this.Anonymous.GroupMask = value;

  Array<GROUP_AFFINITY> get GroupMasks => this.Anonymous.GroupMasks;
  set GroupMasks(Array<GROUP_AFFINITY> value) =>
      this.Anonymous.GroupMasks = value;
}

/// {@category Struct}
class GROUP_AFFINITY extends Struct {
  @IntPtr()
  external int Mask;

  @Uint16()
  external int Group;

  @Array(3)
  external Array<Uint16> Reserved;
}

/// {@category Struct}
class GROUP_RELATIONSHIP extends Struct {
  @Uint16()
  external int MaximumGroupCount;

  @Uint16()
  external int ActiveGroupCount;

  @Array(20)
  external Array<Uint8> Reserved;

  @Array(1)
  external Array<PROCESSOR_GROUP_INFO> GroupInfo;
}

/// {@category Struct}
class MEMORYSTATUS extends Struct {
  @Uint32()
  external int dwLength;

  @Uint32()
  external int dwMemoryLoad;

  @IntPtr()
  external int dwTotalPhys;

  @IntPtr()
  external int dwAvailPhys;

  @IntPtr()
  external int dwTotalPageFile;

  @IntPtr()
  external int dwAvailPageFile;

  @IntPtr()
  external int dwTotalVirtual;

  @IntPtr()
  external int dwAvailVirtual;
}

/// {@category Struct}
class MEMORYSTATUSEX extends Struct {
  @Uint32()
  external int dwLength;

  @Uint32()
  external int dwMemoryLoad;

  @Uint64()
  external int ullTotalPhys;

  @Uint64()
  external int ullAvailPhys;

  @Uint64()
  external int ullTotalPageFile;

  @Uint64()
  external int ullAvailPageFile;

  @Uint64()
  external int ullTotalVirtual;

  @Uint64()
  external int ullAvailVirtual;

  @Uint64()
  external int ullAvailExtendedVirtual;
}

/// {@category Struct}
class NUMA_NODE_RELATIONSHIP extends Struct {
  @Uint32()
  external int NodeNumber;

  @Array(18)
  external Array<Uint8> Reserved;

  @Uint16()
  external int GroupCount;

  external _NUMA_NODE_RELATIONSHIP__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _NUMA_NODE_RELATIONSHIP__Anonymous_e__Union extends Union {
  external GROUP_AFFINITY GroupMask;

  @Array(1)
  external Array<GROUP_AFFINITY> GroupMasks;
}

extension NUMA_NODE_RELATIONSHIP_Extension on NUMA_NODE_RELATIONSHIP {
  GROUP_AFFINITY get GroupMask => this.Anonymous.GroupMask;
  set GroupMask(GROUP_AFFINITY value) => this.Anonymous.GroupMask = value;

  Array<GROUP_AFFINITY> get GroupMasks => this.Anonymous.GroupMasks;
  set GroupMasks(Array<GROUP_AFFINITY> value) =>
      this.Anonymous.GroupMasks = value;
}

/// {@category Struct}
class OSVERSIONINFOEX extends Struct {
  @Uint32()
  external int dwOSVersionInfoSize;

  @Uint32()
  external int dwMajorVersion;

  @Uint32()
  external int dwMinorVersion;

  @Uint32()
  external int dwBuildNumber;

  @Uint32()
  external int dwPlatformId;

  @Array(128)
  external Array<Uint16> _szCSDVersion;

  String get szCSDVersion {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szCSDVersion[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szCSDVersion(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szCSDVersion[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int wServicePackMajor;

  @Uint16()
  external int wServicePackMinor;

  @Uint16()
  external int wSuiteMask;

  @Uint8()
  external int wProductType;

  @Uint8()
  external int wReserved;
}

/// {@category Struct}
class OSVERSIONINFO extends Struct {
  @Uint32()
  external int dwOSVersionInfoSize;

  @Uint32()
  external int dwMajorVersion;

  @Uint32()
  external int dwMinorVersion;

  @Uint32()
  external int dwBuildNumber;

  @Uint32()
  external int dwPlatformId;

  @Array(128)
  external Array<Uint16> _szCSDVersion;

  String get szCSDVersion {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szCSDVersion[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szCSDVersion(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szCSDVersion[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class PROCESSOR_GROUP_INFO extends Struct {
  @Uint8()
  external int MaximumProcessorCount;

  @Uint8()
  external int ActiveProcessorCount;

  @Array(38)
  external Array<Uint8> Reserved;

  @IntPtr()
  external int ActiveProcessorMask;
}

/// {@category Struct}
class PROCESSOR_RELATIONSHIP extends Struct {
  @Uint8()
  external int Flags;

  @Uint8()
  external int EfficiencyClass;

  @Array(20)
  external Array<Uint8> Reserved;

  @Uint16()
  external int GroupCount;

  @Array(1)
  external Array<GROUP_AFFINITY> GroupMask;
}

/// {@category Struct}
class SYSTEM_CPU_SET_INFORMATION extends Struct {
  @Uint32()
  external int Size;

  @Int32()
  external int Type;

  external _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union extends Union {
  external _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct
      CpuSet;
}

/// {@category Struct}
class _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct
    extends Struct {
  @Uint32()
  external int Id;

  @Uint16()
  external int Group;

  @Uint8()
  external int LogicalProcessorIndex;

  @Uint8()
  external int CoreIndex;

  @Uint8()
  external int LastLevelCacheIndex;

  @Uint8()
  external int NumaNodeIndex;

  @Uint8()
  external int EfficiencyClass;

  external _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct__Anonymous1_e__Union
      Anonymous1;

  external _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct__Anonymous2_e__Union
      Anonymous2;

  @Uint64()
  external int AllocationTag;
}

/// {@category Struct}
class _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct__Anonymous1_e__Union
    extends Union {
  @Uint8()
  external int AllFlags;

  external _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct__Anonymous1_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct__Anonymous1_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int bitfield;
}

extension SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct__Anonymous1_e__Union_Extension
    on SYSTEM_CPU_SET_INFORMATION {
  int get bitfield => this.Anonymous.CpuSet.Anonymous1.Anonymous.bitfield;
  set bitfield(int value) =>
      this.Anonymous.CpuSet.Anonymous1.Anonymous.bitfield = value;
}

extension SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct_Extension
    on SYSTEM_CPU_SET_INFORMATION {
  int get AllFlags => this.Anonymous.CpuSet.Anonymous1.AllFlags;
  set AllFlags(int value) => this.Anonymous.CpuSet.Anonymous1.AllFlags = value;

  _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct__Anonymous1_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.CpuSet.Anonymous1.Anonymous;
  set Anonymous(
          _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct__Anonymous1_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.CpuSet.Anonymous1.Anonymous = value;
}

/// {@category Struct}
class _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct__Anonymous2_e__Union
    extends Union {
  @Uint32()
  external int Reserved;

  @Uint8()
  external int SchedulingClass;
}

extension SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct_Extension_1
    on SYSTEM_CPU_SET_INFORMATION {
  int get Reserved => this.Anonymous.CpuSet.Anonymous2.Reserved;
  set Reserved(int value) => this.Anonymous.CpuSet.Anonymous2.Reserved = value;

  int get SchedulingClass => this.Anonymous.CpuSet.Anonymous2.SchedulingClass;
  set SchedulingClass(int value) =>
      this.Anonymous.CpuSet.Anonymous2.SchedulingClass = value;
}

extension SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union_Extension
    on SYSTEM_CPU_SET_INFORMATION {
  int get Id => this.Anonymous.CpuSet.Id;
  set Id(int value) => this.Anonymous.CpuSet.Id = value;

  int get Group => this.Anonymous.CpuSet.Group;
  set Group(int value) => this.Anonymous.CpuSet.Group = value;

  int get LogicalProcessorIndex => this.Anonymous.CpuSet.LogicalProcessorIndex;
  set LogicalProcessorIndex(int value) =>
      this.Anonymous.CpuSet.LogicalProcessorIndex = value;

  int get CoreIndex => this.Anonymous.CpuSet.CoreIndex;
  set CoreIndex(int value) => this.Anonymous.CpuSet.CoreIndex = value;

  int get LastLevelCacheIndex => this.Anonymous.CpuSet.LastLevelCacheIndex;
  set LastLevelCacheIndex(int value) =>
      this.Anonymous.CpuSet.LastLevelCacheIndex = value;

  int get NumaNodeIndex => this.Anonymous.CpuSet.NumaNodeIndex;
  set NumaNodeIndex(int value) => this.Anonymous.CpuSet.NumaNodeIndex = value;

  int get EfficiencyClass => this.Anonymous.CpuSet.EfficiencyClass;
  set EfficiencyClass(int value) =>
      this.Anonymous.CpuSet.EfficiencyClass = value;

  _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct__Anonymous1_e__Union
      get Anonymous1 => this.Anonymous.CpuSet.Anonymous1;
  set Anonymous1(
          _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct__Anonymous1_e__Union
              value) =>
      this.Anonymous.CpuSet.Anonymous1 = value;

  _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct__Anonymous2_e__Union
      get Anonymous2 => this.Anonymous.CpuSet.Anonymous2;
  set Anonymous2(
          _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct__Anonymous2_e__Union
              value) =>
      this.Anonymous.CpuSet.Anonymous2 = value;

  int get AllocationTag => this.Anonymous.CpuSet.AllocationTag;
  set AllocationTag(int value) => this.Anonymous.CpuSet.AllocationTag = value;
}

extension SYSTEM_CPU_SET_INFORMATION_Extension on SYSTEM_CPU_SET_INFORMATION {
  _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct
      get CpuSet => this.Anonymous.CpuSet;
  set CpuSet(
          _SYSTEM_CPU_SET_INFORMATION__Anonymous_e__Union__CpuSet_e__Struct
              value) =>
      this.Anonymous.CpuSet = value;
}

/// {@category Struct}
class SYSTEM_INFO extends Struct {
  external _SYSTEM_INFO__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwPageSize;

  external Pointer lpMinimumApplicationAddress;

  external Pointer lpMaximumApplicationAddress;

  @IntPtr()
  external int dwActiveProcessorMask;

  @Uint32()
  external int dwNumberOfProcessors;

  @Uint32()
  external int dwProcessorType;

  @Uint32()
  external int dwAllocationGranularity;

  @Uint16()
  external int wProcessorLevel;

  @Uint16()
  external int wProcessorRevision;
}

/// {@category Struct}
class _SYSTEM_INFO__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwOemId;

  external _SYSTEM_INFO__Anonymous_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _SYSTEM_INFO__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int wProcessorArchitecture;

  @Uint16()
  external int wReserved;
}

extension SYSTEM_INFO__Anonymous_e__Union_Extension on SYSTEM_INFO {
  int get wProcessorArchitecture =>
      this.Anonymous.Anonymous.wProcessorArchitecture;
  set wProcessorArchitecture(int value) =>
      this.Anonymous.Anonymous.wProcessorArchitecture = value;

  int get wReserved => this.Anonymous.Anonymous.wReserved;
  set wReserved(int value) => this.Anonymous.Anonymous.wReserved = value;
}

extension SYSTEM_INFO_Extension on SYSTEM_INFO {
  int get dwOemId => this.Anonymous.dwOemId;
  set dwOemId(int value) => this.Anonymous.dwOemId = value;

  _SYSTEM_INFO__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(_SYSTEM_INFO__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class SYSTEM_LOGICAL_PROCESSOR_INFORMATION extends Struct {
  @IntPtr()
  external int ProcessorMask;

  @Int32()
  external int Relationship;

  external _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union extends Union {
  external _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union__ProcessorCore_e__Struct
      ProcessorCore;

  external _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union__NumaNode_e__Struct
      NumaNode;

  external CACHE_DESCRIPTOR Cache;

  @Array(2)
  external Array<Uint64> Reserved;
}

/// {@category Struct}
class _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union__ProcessorCore_e__Struct
    extends Struct {
  @Uint8()
  external int Flags;
}

extension SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union_Extension
    on SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
  int get Flags => this.Anonymous.ProcessorCore.Flags;
  set Flags(int value) => this.Anonymous.ProcessorCore.Flags = value;
}

/// {@category Struct}
class _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union__NumaNode_e__Struct
    extends Struct {
  @Uint32()
  external int NodeNumber;
}

extension SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union_Extension_1
    on SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
  int get NodeNumber => this.Anonymous.NumaNode.NodeNumber;
  set NodeNumber(int value) => this.Anonymous.NumaNode.NodeNumber = value;
}

extension SYSTEM_LOGICAL_PROCESSOR_INFORMATION_Extension
    on SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
  _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union__ProcessorCore_e__Struct
      get ProcessorCore => this.Anonymous.ProcessorCore;
  set ProcessorCore(
          _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union__ProcessorCore_e__Struct
              value) =>
      this.Anonymous.ProcessorCore = value;

  _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union__NumaNode_e__Struct
      get NumaNode => this.Anonymous.NumaNode;
  set NumaNode(
          _SYSTEM_LOGICAL_PROCESSOR_INFORMATION__Anonymous_e__Union__NumaNode_e__Struct
              value) =>
      this.Anonymous.NumaNode = value;

  CACHE_DESCRIPTOR get Cache => this.Anonymous.Cache;
  set Cache(CACHE_DESCRIPTOR value) => this.Anonymous.Cache = value;

  Array<Uint64> get Reserved => this.Anonymous.Reserved;
  set Reserved(Array<Uint64> value) => this.Anonymous.Reserved = value;
}

/// {@category Struct}
class SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX extends Struct {
  @Int32()
  external int Relationship;

  @Uint32()
  external int Size;

  external _SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX__Anonymous_e__Union
    extends Union {
  external PROCESSOR_RELATIONSHIP Processor;

  external NUMA_NODE_RELATIONSHIP NumaNode;

  external CACHE_RELATIONSHIP Cache;

  external GROUP_RELATIONSHIP Group;
}

extension SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX_Extension
    on SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX {
  PROCESSOR_RELATIONSHIP get Processor => this.Anonymous.Processor;
  set Processor(PROCESSOR_RELATIONSHIP value) =>
      this.Anonymous.Processor = value;

  NUMA_NODE_RELATIONSHIP get NumaNode => this.Anonymous.NumaNode;
  set NumaNode(NUMA_NODE_RELATIONSHIP value) => this.Anonymous.NumaNode = value;

  CACHE_RELATIONSHIP get Cache => this.Anonymous.Cache;
  set Cache(CACHE_RELATIONSHIP value) => this.Anonymous.Cache = value;

  GROUP_RELATIONSHIP get Group => this.Anonymous.Group;
  set Group(GROUP_RELATIONSHIP value) => this.Anonymous.Group = value;
}

/// {@category Struct}
class SYSTEM_POOL_ZEROING_INFORMATION extends Struct {
  @Uint8()
  external int PoolZeroingSupportPresent;
}

/// {@category Struct}
class SYSTEM_PROCESSOR_CYCLE_TIME_INFORMATION extends Struct {
  @Uint64()
  external int CycleTime;
}

/// {@category Struct}
class SYSTEM_SUPPORTED_PROCESSOR_ARCHITECTURES_INFORMATION extends Struct {
  @Uint32()
  external int bitfield;
}
