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
import '../../system/memory/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class CFG_CALL_TARGET_INFO extends Struct {
  @IntPtr()
  external int Offset;

  @IntPtr()
  external int Flags;
}

/// {@category Struct}
class HEAP_SUMMARY extends Struct {
  @Uint32()
  external int cb;

  @IntPtr()
  external int cbAllocated;

  @IntPtr()
  external int cbCommitted;

  @IntPtr()
  external int cbReserved;

  @IntPtr()
  external int cbMaxReserve;
}

/// {@category Struct}
class MEMORY_BASIC_INFORMATION extends Struct {
  external Pointer BaseAddress;

  external Pointer AllocationBase;

  @Uint32()
  external int AllocationProtect;

  @Uint16()
  external int PartitionId;

  @IntPtr()
  external int RegionSize;

  @Uint32()
  external int State;

  @Uint32()
  external int Protect;

  @Uint32()
  external int Type;
}

/// {@category Struct}
class MEMORY_BASIC_INFORMATION32 extends Struct {
  @Uint32()
  external int BaseAddress;

  @Uint32()
  external int AllocationBase;

  @Uint32()
  external int AllocationProtect;

  @Uint32()
  external int RegionSize;

  @Uint32()
  external int State;

  @Uint32()
  external int Protect;

  @Uint32()
  external int Type;
}

/// {@category Struct}
class MEMORY_BASIC_INFORMATION64 extends Struct {
  @Uint64()
  external int BaseAddress;

  @Uint64()
  external int AllocationBase;

  @Uint32()
  external int AllocationProtect;

  @Uint32()
  external int alignment1;

  @Uint64()
  external int RegionSize;

  @Uint32()
  external int State;

  @Uint32()
  external int Protect;

  @Uint32()
  external int Type;

  @Uint32()
  external int alignment2;
}

/// {@category Struct}
class MEM_EXTENDED_PARAMETER extends Struct {
  external _MEM_EXTENDED_PARAMETER__Anonymous1_e__Struct Anonymous1;

  external _MEM_EXTENDED_PARAMETER__Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
class _MEM_EXTENDED_PARAMETER__Anonymous1_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension MEM_EXTENDED_PARAMETER_Extension on MEM_EXTENDED_PARAMETER {
  int get bitfield => this.Anonymous1.bitfield;
  set bitfield(int value) => this.Anonymous1.bitfield = value;
}

/// {@category Struct}
class _MEM_EXTENDED_PARAMETER__Anonymous2_e__Union extends Union {
  @Uint64()
  external int ULong64;

  external Pointer $Pointer;

  @IntPtr()
  external int Size;

  @IntPtr()
  external int $Handle;

  @Uint32()
  external int ULong;
}

extension MEM_EXTENDED_PARAMETER_Extension_1 on MEM_EXTENDED_PARAMETER {
  int get ULong64 => this.Anonymous2.ULong64;
  set ULong64(int value) => this.Anonymous2.ULong64 = value;

  Pointer get $Pointer => this.Anonymous2.$Pointer;
  set $Pointer(Pointer value) => this.Anonymous2.$Pointer = value;

  int get Size => this.Anonymous2.Size;
  set Size(int value) => this.Anonymous2.Size = value;

  int get $Handle => this.Anonymous2.$Handle;
  set $Handle(int value) => this.Anonymous2.$Handle = value;

  int get ULong => this.Anonymous2.ULong;
  set ULong(int value) => this.Anonymous2.ULong = value;
}

/// {@category Struct}
class PROCESS_HEAP_ENTRY extends Struct {
  external Pointer lpData;

  @Uint32()
  external int cbData;

  @Uint8()
  external int cbOverhead;

  @Uint8()
  external int iRegionIndex;

  @Uint16()
  external int wFlags;

  external _PROCESS_HEAP_ENTRY__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PROCESS_HEAP_ENTRY__Anonymous_e__Union extends Union {
  external _PROCESS_HEAP_ENTRY__Anonymous_e__Union__Block_e__Struct Block;

  external _PROCESS_HEAP_ENTRY__Anonymous_e__Union__Region_e__Struct Region;
}

/// {@category Struct}
class _PROCESS_HEAP_ENTRY__Anonymous_e__Union__Block_e__Struct extends Struct {
  @IntPtr()
  external int hMem;

  @Array(3)
  external Array<Uint32> dwReserved;
}

extension PROCESS_HEAP_ENTRY__Anonymous_e__Union_Extension
    on PROCESS_HEAP_ENTRY {
  int get hMem => this.Anonymous.Block.hMem;
  set hMem(int value) => this.Anonymous.Block.hMem = value;

  Array<Uint32> get dwReserved => this.Anonymous.Block.dwReserved;
  set dwReserved(Array<Uint32> value) =>
      this.Anonymous.Block.dwReserved = value;
}

/// {@category Struct}
class _PROCESS_HEAP_ENTRY__Anonymous_e__Union__Region_e__Struct extends Struct {
  @Uint32()
  external int dwCommittedSize;

  @Uint32()
  external int dwUnCommittedSize;

  external Pointer lpFirstBlock;

  external Pointer lpLastBlock;
}

extension PROCESS_HEAP_ENTRY__Anonymous_e__Union_Extension_1
    on PROCESS_HEAP_ENTRY {
  int get dwCommittedSize => this.Anonymous.Region.dwCommittedSize;
  set dwCommittedSize(int value) =>
      this.Anonymous.Region.dwCommittedSize = value;

  int get dwUnCommittedSize => this.Anonymous.Region.dwUnCommittedSize;
  set dwUnCommittedSize(int value) =>
      this.Anonymous.Region.dwUnCommittedSize = value;

  Pointer get lpFirstBlock => this.Anonymous.Region.lpFirstBlock;
  set lpFirstBlock(Pointer value) => this.Anonymous.Region.lpFirstBlock = value;

  Pointer get lpLastBlock => this.Anonymous.Region.lpLastBlock;
  set lpLastBlock(Pointer value) => this.Anonymous.Region.lpLastBlock = value;
}

extension PROCESS_HEAP_ENTRY_Extension on PROCESS_HEAP_ENTRY {
  _PROCESS_HEAP_ENTRY__Anonymous_e__Union__Block_e__Struct get Block =>
      this.Anonymous.Block;
  set Block(_PROCESS_HEAP_ENTRY__Anonymous_e__Union__Block_e__Struct value) =>
      this.Anonymous.Block = value;

  _PROCESS_HEAP_ENTRY__Anonymous_e__Union__Region_e__Struct get Region =>
      this.Anonymous.Region;
  set Region(_PROCESS_HEAP_ENTRY__Anonymous_e__Union__Region_e__Struct value) =>
      this.Anonymous.Region = value;
}

/// {@category Struct}
class WIN32_MEMORY_PARTITION_INFORMATION extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int NumaNode;

  @Uint32()
  external int Channel;

  @Uint32()
  external int NumberOfNumaNodes;

  @Uint64()
  external int ResidentAvailablePages;

  @Uint64()
  external int CommittedPages;

  @Uint64()
  external int CommitLimit;

  @Uint64()
  external int PeakCommitment;

  @Uint64()
  external int TotalNumberOfPages;

  @Uint64()
  external int AvailablePages;

  @Uint64()
  external int ZeroPages;

  @Uint64()
  external int FreePages;

  @Uint64()
  external int StandbyPages;

  @Array(16)
  external Array<Uint64> Reserved;

  @Uint64()
  external int MaximumCommitLimit;

  @Uint64()
  external int Reserved2;

  @Uint32()
  external int PartitionId;
}

/// {@category Struct}
class WIN32_MEMORY_RANGE_ENTRY extends Struct {
  external Pointer VirtualAddress;

  @IntPtr()
  external int NumberOfBytes;
}

/// {@category Struct}
class WIN32_MEMORY_REGION_INFORMATION extends Struct {
  external Pointer AllocationBase;

  @Uint32()
  external int AllocationProtect;

  external _WIN32_MEMORY_REGION_INFORMATION__Anonymous_e__Union Anonymous;

  @IntPtr()
  external int RegionSize;

  @IntPtr()
  external int CommitSize;
}

/// {@category Struct}
class _WIN32_MEMORY_REGION_INFORMATION__Anonymous_e__Union extends Union {
  @Uint32()
  external int Flags;

  external _WIN32_MEMORY_REGION_INFORMATION__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _WIN32_MEMORY_REGION_INFORMATION__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension WIN32_MEMORY_REGION_INFORMATION__Anonymous_e__Union_Extension
    on WIN32_MEMORY_REGION_INFORMATION {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension WIN32_MEMORY_REGION_INFORMATION_Extension
    on WIN32_MEMORY_REGION_INFORMATION {
  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;

  _WIN32_MEMORY_REGION_INFORMATION__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _WIN32_MEMORY_REGION_INFORMATION__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}
