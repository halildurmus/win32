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
import '../../system/hypervisor/structs.g.dart';
import '../../system/hypervisor/callbacks.g.dart';

/// {@category Struct}
class DOS_IMAGE_INFO extends Struct {
  external Pointer<Utf8> PdbName;

  @Uint64()
  external int ImageBaseAddress;

  @Uint32()
  external int ImageSize;

  @Uint32()
  external int Timestamp;
}

/// {@category Struct}
class GPA_MEMORY_CHUNK extends Struct {
  @Uint64()
  external int GuestPhysicalStartPageIndex;

  @Uint64()
  external int PageCount;
}

/// {@category Struct}
class GUEST_OS_INFO extends Union {
  @Uint64()
  external int AsUINT64;

  external _GUEST_OS_INFO__ClosedSource_e__Struct ClosedSource;

  external _GUEST_OS_INFO__OpenSource_e__Struct OpenSource;
}

/// {@category Struct}
class _GUEST_OS_INFO__ClosedSource_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension GUEST_OS_INFO_Extension on GUEST_OS_INFO {
  int get bitfield => this.ClosedSource.bitfield;
  set bitfield(int value) => this.ClosedSource.bitfield = value;
}

/// {@category Struct}
class _GUEST_OS_INFO__OpenSource_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension GUEST_OS_INFO_Extension_1 on GUEST_OS_INFO {
  int get bitfield => this.OpenSource.bitfield;
  set bitfield(int value) => this.OpenSource.bitfield = value;
}

/// {@category Struct}
class HDV_PCI_DEVICE_INTERFACE extends Struct {
  @Int32()
  external int Version;

  external Pointer<NativeFunction<HDV_PCI_DEVICE_INITIALIZE>> Initialize;

  external Pointer<NativeFunction<HDV_PCI_DEVICE_TEARDOWN>> Teardown;

  external Pointer<NativeFunction<HDV_PCI_DEVICE_SET_CONFIGURATION>>
      SetConfiguration;

  external Pointer<NativeFunction<HDV_PCI_DEVICE_GET_DETAILS>> GetDetails;

  external Pointer<NativeFunction<HDV_PCI_DEVICE_START>> Start;

  external Pointer<NativeFunction<HDV_PCI_DEVICE_STOP>> Stop;

  external Pointer<NativeFunction<HDV_PCI_READ_CONFIG_SPACE>> ReadConfigSpace;

  external Pointer<NativeFunction<HDV_PCI_WRITE_CONFIG_SPACE>> WriteConfigSpace;

  external Pointer<NativeFunction<HDV_PCI_READ_INTERCEPTED_MEMORY>>
      ReadInterceptedMemory;

  external Pointer<NativeFunction<HDV_PCI_WRITE_INTERCEPTED_MEMORY>>
      WriteInterceptedMemory;
}

/// {@category Struct}
class HDV_PCI_PNP_ID extends Struct {
  @Uint16()
  external int VendorID;

  @Uint16()
  external int DeviceID;

  @Uint8()
  external int RevisionID;

  @Uint8()
  external int ProgIf;

  @Uint8()
  external int SubClass;

  @Uint8()
  external int BaseClass;

  @Uint16()
  external int SubVendorID;

  @Uint16()
  external int SubSystemID;
}

/// {@category Struct}
class HVSOCKET_ADDRESS_INFO extends Struct {
  external GUID SystemId;

  external GUID VirtualMachineId;

  external GUID SiloId;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class MODULE_INFO extends Struct {
  external Pointer<Utf8> ProcessImageName;

  external DOS_IMAGE_INFO Image;
}

/// {@category Struct}
class SOCKADDR_HV extends Struct {
  @Uint16()
  external int Family;

  @Uint16()
  external int Reserved;

  external GUID VmId;

  external GUID ServiceId;
}

/// {@category Struct}
class VIRTUAL_PROCESSOR_REGISTER extends Union {
  @Uint64()
  external int Reg64;

  @Uint32()
  external int Reg32;

  @Uint16()
  external int Reg16;

  @Uint8()
  external int Reg8;

  external _VIRTUAL_PROCESSOR_REGISTER__Reg128_e__Struct Reg128;

  external _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union X64;
}

/// {@category Struct}
class _VIRTUAL_PROCESSOR_REGISTER__Reg128_e__Struct extends Struct {
  @Uint64()
  external int Low64;

  @Uint64()
  external int High64;
}

extension VIRTUAL_PROCESSOR_REGISTER_Extension on VIRTUAL_PROCESSOR_REGISTER {
  int get Low64 => this.Reg128.Low64;
  set Low64(int value) => this.Reg128.Low64 = value;

  int get High64 => this.Reg128.High64;
  set High64(int value) => this.Reg128.High64 = value;
}

/// {@category Struct}
class _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union extends Union {
  external _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Segment_e__Struct Segment;

  external _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Table_e__Struct Table;

  external _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__FpControlStatus_e__Struct
      FpControlStatus;

  external _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__XmmControlStatus_e__Struct
      XmmControlStatus;
}

/// {@category Struct}
class _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Segment_e__Struct
    extends Struct {
  @Uint64()
  external int Base;

  @Uint32()
  external int Limit;

  @Uint16()
  external int Selector;

  external _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Segment_e__Struct__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Segment_e__Struct__Anonymous_e__Union
    extends Union {
  @Uint16()
  external int Attributes;

  external _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Segment_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Segment_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int bitfield;
}

extension VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Segment_e__Struct__Anonymous_e__Union_Extension
    on VIRTUAL_PROCESSOR_REGISTER {
  int get bitfield => this.X64.Segment.Anonymous.Anonymous.bitfield;
  set bitfield(int value) =>
      this.X64.Segment.Anonymous.Anonymous.bitfield = value;
}

extension VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Segment_e__Struct_Extension
    on VIRTUAL_PROCESSOR_REGISTER {
  int get Attributes => this.X64.Segment.Anonymous.Attributes;
  set Attributes(int value) => this.X64.Segment.Anonymous.Attributes = value;

  _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Segment_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.X64.Segment.Anonymous.Anonymous;
  set Anonymous(
          _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Segment_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.X64.Segment.Anonymous.Anonymous = value;
}

extension VIRTUAL_PROCESSOR_REGISTER__X64_e__Union_Extension
    on VIRTUAL_PROCESSOR_REGISTER {
  int get Base => this.X64.Segment.Base;
  set Base(int value) => this.X64.Segment.Base = value;

  int get Limit => this.X64.Segment.Limit;
  set Limit(int value) => this.X64.Segment.Limit = value;

  int get Selector => this.X64.Segment.Selector;
  set Selector(int value) => this.X64.Segment.Selector = value;

  _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Segment_e__Struct__Anonymous_e__Union
      get Anonymous => this.X64.Segment.Anonymous;
  set Anonymous(
          _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Segment_e__Struct__Anonymous_e__Union
              value) =>
      this.X64.Segment.Anonymous = value;
}

/// {@category Struct}
class _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Table_e__Struct
    extends Struct {
  @Uint16()
  external int Limit;

  @Uint64()
  external int Base;
}

extension VIRTUAL_PROCESSOR_REGISTER__X64_e__Union_Extension_1
    on VIRTUAL_PROCESSOR_REGISTER {
  int get Limit => this.X64.Table.Limit;
  set Limit(int value) => this.X64.Table.Limit = value;

  int get Base => this.X64.Table.Base;
  set Base(int value) => this.X64.Table.Base = value;
}

/// {@category Struct}
class _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__FpControlStatus_e__Struct
    extends Struct {
  @Uint16()
  external int FpControl;

  @Uint16()
  external int FpStatus;

  @Uint8()
  external int FpTag;

  @Uint8()
  external int Reserved;

  @Uint16()
  external int LastFpOp;

  external _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__FpControlStatus_e__Struct__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__FpControlStatus_e__Struct__Anonymous_e__Union
    extends Union {
  @Uint64()
  external int LastFpRip;

  external _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__FpControlStatus_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__FpControlStatus_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int LastFpEip;

  @Uint16()
  external int LastFpCs;
}

extension VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__FpControlStatus_e__Struct__Anonymous_e__Union_Extension
    on VIRTUAL_PROCESSOR_REGISTER {
  int get LastFpEip => this.X64.FpControlStatus.Anonymous.Anonymous.LastFpEip;
  set LastFpEip(int value) =>
      this.X64.FpControlStatus.Anonymous.Anonymous.LastFpEip = value;

  int get LastFpCs => this.X64.FpControlStatus.Anonymous.Anonymous.LastFpCs;
  set LastFpCs(int value) =>
      this.X64.FpControlStatus.Anonymous.Anonymous.LastFpCs = value;
}

extension VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__FpControlStatus_e__Struct_Extension
    on VIRTUAL_PROCESSOR_REGISTER {
  int get LastFpRip => this.X64.FpControlStatus.Anonymous.LastFpRip;
  set LastFpRip(int value) =>
      this.X64.FpControlStatus.Anonymous.LastFpRip = value;

  _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__FpControlStatus_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.X64.FpControlStatus.Anonymous.Anonymous;
  set Anonymous(
          _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__FpControlStatus_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.X64.FpControlStatus.Anonymous.Anonymous = value;
}

extension VIRTUAL_PROCESSOR_REGISTER__X64_e__Union_Extension_2
    on VIRTUAL_PROCESSOR_REGISTER {
  int get FpControl => this.X64.FpControlStatus.FpControl;
  set FpControl(int value) => this.X64.FpControlStatus.FpControl = value;

  int get FpStatus => this.X64.FpControlStatus.FpStatus;
  set FpStatus(int value) => this.X64.FpControlStatus.FpStatus = value;

  int get FpTag => this.X64.FpControlStatus.FpTag;
  set FpTag(int value) => this.X64.FpControlStatus.FpTag = value;

  int get Reserved => this.X64.FpControlStatus.Reserved;
  set Reserved(int value) => this.X64.FpControlStatus.Reserved = value;

  int get LastFpOp => this.X64.FpControlStatus.LastFpOp;
  set LastFpOp(int value) => this.X64.FpControlStatus.LastFpOp = value;

  _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__FpControlStatus_e__Struct__Anonymous_e__Union
      get Anonymous => this.X64.FpControlStatus.Anonymous;
  set Anonymous(
          _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__FpControlStatus_e__Struct__Anonymous_e__Union
              value) =>
      this.X64.FpControlStatus.Anonymous = value;
}

/// {@category Struct}
class _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__XmmControlStatus_e__Struct
    extends Struct {
  external _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__XmmControlStatus_e__Struct__Anonymous_e__Union
      Anonymous;

  @Uint32()
  external int XmmStatusControl;

  @Uint32()
  external int XmmStatusControlMask;
}

/// {@category Struct}
class _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__XmmControlStatus_e__Struct__Anonymous_e__Union
    extends Union {
  @Uint64()
  external int LastFpRdp;

  external _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__XmmControlStatus_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__XmmControlStatus_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int LastFpDp;

  @Uint16()
  external int LastFpDs;
}

extension VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__XmmControlStatus_e__Struct__Anonymous_e__Union_Extension
    on VIRTUAL_PROCESSOR_REGISTER {
  int get LastFpDp => this.X64.XmmControlStatus.Anonymous.Anonymous.LastFpDp;
  set LastFpDp(int value) =>
      this.X64.XmmControlStatus.Anonymous.Anonymous.LastFpDp = value;

  int get LastFpDs => this.X64.XmmControlStatus.Anonymous.Anonymous.LastFpDs;
  set LastFpDs(int value) =>
      this.X64.XmmControlStatus.Anonymous.Anonymous.LastFpDs = value;
}

extension VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__XmmControlStatus_e__Struct_Extension
    on VIRTUAL_PROCESSOR_REGISTER {
  int get LastFpRdp => this.X64.XmmControlStatus.Anonymous.LastFpRdp;
  set LastFpRdp(int value) =>
      this.X64.XmmControlStatus.Anonymous.LastFpRdp = value;

  _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__XmmControlStatus_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.X64.XmmControlStatus.Anonymous.Anonymous;
  set Anonymous(
          _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__XmmControlStatus_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.X64.XmmControlStatus.Anonymous.Anonymous = value;
}

extension VIRTUAL_PROCESSOR_REGISTER__X64_e__Union_Extension_3
    on VIRTUAL_PROCESSOR_REGISTER {
  _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__XmmControlStatus_e__Struct__Anonymous_e__Union
      get Anonymous => this.X64.XmmControlStatus.Anonymous;
  set Anonymous(
          _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__XmmControlStatus_e__Struct__Anonymous_e__Union
              value) =>
      this.X64.XmmControlStatus.Anonymous = value;

  int get XmmStatusControl => this.X64.XmmControlStatus.XmmStatusControl;
  set XmmStatusControl(int value) =>
      this.X64.XmmControlStatus.XmmStatusControl = value;

  int get XmmStatusControlMask =>
      this.X64.XmmControlStatus.XmmStatusControlMask;
  set XmmStatusControlMask(int value) =>
      this.X64.XmmControlStatus.XmmStatusControlMask = value;
}

extension VIRTUAL_PROCESSOR_REGISTER_Extension_1 on VIRTUAL_PROCESSOR_REGISTER {
  _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Segment_e__Struct get Segment =>
      this.X64.Segment;
  set Segment(
          _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Segment_e__Struct value) =>
      this.X64.Segment = value;

  _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Table_e__Struct get Table =>
      this.X64.Table;
  set Table(_VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__Table_e__Struct value) =>
      this.X64.Table = value;

  _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__FpControlStatus_e__Struct
      get FpControlStatus => this.X64.FpControlStatus;
  set FpControlStatus(
          _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__FpControlStatus_e__Struct
              value) =>
      this.X64.FpControlStatus = value;

  _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__XmmControlStatus_e__Struct
      get XmmControlStatus => this.X64.XmmControlStatus;
  set XmmControlStatus(
          _VIRTUAL_PROCESSOR_REGISTER__X64_e__Union__XmmControlStatus_e__Struct
              value) =>
      this.X64.XmmControlStatus = value;
}

/// {@category Struct}
class VM_GENCOUNTER extends Struct {
  @Uint64()
  external int GenerationCount;

  @Uint64()
  external int GenerationCountHigh;
}

/// {@category Struct}
class WHV_ACCESS_GPA_CONTROLS extends Union {
  @Uint64()
  external int AsUINT64;

  external _WHV_ACCESS_GPA_CONTROLS__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _WHV_ACCESS_GPA_CONTROLS__Anonymous_e__Struct extends Struct {
  @Int32()
  external int CacheType;

  @Uint32()
  external int Reserved;
}

extension WHV_ACCESS_GPA_CONTROLS_Extension on WHV_ACCESS_GPA_CONTROLS {
  int get CacheType => this.Anonymous.CacheType;
  set CacheType(int value) => this.Anonymous.CacheType = value;

  int get Reserved => this.Anonymous.Reserved;
  set Reserved(int value) => this.Anonymous.Reserved = value;
}

/// {@category Struct}
class WHV_ADVISE_GPA_RANGE extends Union {
  external WHV_ADVISE_GPA_RANGE_POPULATE Populate;
}

/// {@category Struct}
class WHV_ADVISE_GPA_RANGE_POPULATE extends Struct {
  external WHV_ADVISE_GPA_RANGE_POPULATE_FLAGS Flags;

  @Int32()
  external int AccessType;
}

/// {@category Struct}
class WHV_ADVISE_GPA_RANGE_POPULATE_FLAGS extends Union {
  @Uint32()
  external int AsUINT32;

  external _WHV_ADVISE_GPA_RANGE_POPULATE_FLAGS__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _WHV_ADVISE_GPA_RANGE_POPULATE_FLAGS__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension WHV_ADVISE_GPA_RANGE_POPULATE_FLAGS_Extension
    on WHV_ADVISE_GPA_RANGE_POPULATE_FLAGS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_CAPABILITY extends Union {
  @Int32()
  external int HypervisorPresent;

  external WHV_CAPABILITY_FEATURES Features;

  external WHV_EXTENDED_VM_EXITS ExtendedVmExits;

  @Int32()
  external int ProcessorVendor;

  external WHV_PROCESSOR_FEATURES ProcessorFeatures;

  external WHV_SYNTHETIC_PROCESSOR_FEATURES_BANKS
      SyntheticProcessorFeaturesBanks;

  external WHV_PROCESSOR_XSAVE_FEATURES ProcessorXsaveFeatures;

  @Uint8()
  external int ProcessorClFlushSize;

  @Uint64()
  external int ExceptionExitBitmap;

  external WHV_X64_MSR_EXIT_BITMAP X64MsrExitBitmap;

  @Uint64()
  external int ProcessorClockFrequency;

  @Uint64()
  external int InterruptClockFrequency;

  external WHV_PROCESSOR_FEATURES_BANKS ProcessorFeaturesBanks;

  external WHV_ADVISE_GPA_RANGE_POPULATE_FLAGS GpaRangePopulateFlags;

  external WHV_CAPABILITY_PROCESSOR_FREQUENCY_CAP ProcessorFrequencyCap;

  external WHV_PROCESSOR_PERFMON_FEATURES ProcessorPerfmonFeatures;

  external WHV_SCHEDULER_FEATURES SchedulerFeatures;
}

/// {@category Struct}
class WHV_CAPABILITY_FEATURES extends Union {
  external _WHV_CAPABILITY_FEATURES__Anonymous_e__Struct Anonymous;

  @Uint64()
  external int AsUINT64;
}

/// {@category Struct}
class _WHV_CAPABILITY_FEATURES__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension WHV_CAPABILITY_FEATURES_Extension on WHV_CAPABILITY_FEATURES {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_CAPABILITY_PROCESSOR_FREQUENCY_CAP extends Struct {
  @Uint32()
  external int bitfield;

  @Uint32()
  external int HighestFrequencyMhz;

  @Uint32()
  external int NominalFrequencyMhz;

  @Uint32()
  external int LowestFrequencyMhz;

  @Uint32()
  external int FrequencyStepMhz;
}

/// {@category Struct}
class WHV_CPUID_OUTPUT extends Struct {
  @Uint32()
  external int Eax;

  @Uint32()
  external int Ebx;

  @Uint32()
  external int Ecx;

  @Uint32()
  external int Edx;
}

/// {@category Struct}
class WHV_DOORBELL_MATCH_DATA extends Struct {
  @Uint64()
  external int GuestAddress;

  @Uint64()
  external int Value;

  @Uint32()
  external int Length;

  @Uint32()
  external int bitfield;
}

/// {@category Struct}
class WHV_EMULATOR_CALLBACKS extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Reserved;

  external Pointer<NativeFunction<WHV_EMULATOR_IO_PORT_CALLBACK>>
      WHvEmulatorIoPortCallback;

  external Pointer<NativeFunction<WHV_EMULATOR_MEMORY_CALLBACK>>
      WHvEmulatorMemoryCallback;

  external Pointer<
          NativeFunction<WHV_EMULATOR_GET_VIRTUAL_PROCESSOR_REGISTERS_CALLBACK>>
      WHvEmulatorGetVirtualProcessorRegisters;

  external Pointer<
          NativeFunction<WHV_EMULATOR_SET_VIRTUAL_PROCESSOR_REGISTERS_CALLBACK>>
      WHvEmulatorSetVirtualProcessorRegisters;

  external Pointer<NativeFunction<WHV_EMULATOR_TRANSLATE_GVA_PAGE_CALLBACK>>
      WHvEmulatorTranslateGvaPage;
}

/// {@category Struct}
class WHV_EMULATOR_IO_ACCESS_INFO extends Struct {
  @Uint8()
  external int Direction;

  @Uint16()
  external int Port;

  @Uint16()
  external int AccessSize;

  @Uint32()
  external int Data;
}

/// {@category Struct}
class WHV_EMULATOR_MEMORY_ACCESS_INFO extends Struct {
  @Uint64()
  external int GpaAddress;

  @Uint8()
  external int Direction;

  @Uint8()
  external int AccessSize;

  @Array(8)
  external Array<Uint8> Data;
}

/// {@category Struct}
class WHV_EMULATOR_STATUS extends Union {
  external _WHV_EMULATOR_STATUS__Anonymous_e__Struct Anonymous;

  @Uint32()
  external int AsUINT32;
}

/// {@category Struct}
class _WHV_EMULATOR_STATUS__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension WHV_EMULATOR_STATUS_Extension on WHV_EMULATOR_STATUS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_EXTENDED_VM_EXITS extends Union {
  external _WHV_EXTENDED_VM_EXITS__Anonymous_e__Struct Anonymous;

  @Uint64()
  external int AsUINT64;
}

/// {@category Struct}
class _WHV_EXTENDED_VM_EXITS__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension WHV_EXTENDED_VM_EXITS_Extension on WHV_EXTENDED_VM_EXITS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_HYPERCALL_CONTEXT extends Struct {
  @Uint64()
  external int Rax;

  @Uint64()
  external int Rbx;

  @Uint64()
  external int Rcx;

  @Uint64()
  external int Rdx;

  @Uint64()
  external int R8;

  @Uint64()
  external int Rsi;

  @Uint64()
  external int Rdi;

  @Uint64()
  external int Reserved0;

  @Array(6)
  external Array<WHV_UINT128> XmmRegisters;

  @Array(2)
  external Array<Uint64> Reserved1;
}

/// {@category Struct}
class WHV_INTERNAL_ACTIVITY_REGISTER extends Union {
  external _WHV_INTERNAL_ACTIVITY_REGISTER__Anonymous_e__Struct Anonymous;

  @Uint64()
  external int AsUINT64;
}

/// {@category Struct}
class _WHV_INTERNAL_ACTIVITY_REGISTER__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension WHV_INTERNAL_ACTIVITY_REGISTER_Extension
    on WHV_INTERNAL_ACTIVITY_REGISTER {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_INTERRUPT_CONTROL extends Struct {
  @Uint64()
  external int bitfield;

  @Uint32()
  external int Destination;

  @Uint32()
  external int Vector;
}

/// {@category Struct}
class WHV_MEMORY_ACCESS_CONTEXT extends Struct {
  @Uint8()
  external int InstructionByteCount;

  @Array(3)
  external Array<Uint8> Reserved;

  @Array(16)
  external Array<Uint8> InstructionBytes;

  external WHV_MEMORY_ACCESS_INFO AccessInfo;

  @Uint64()
  external int Gpa;

  @Uint64()
  external int Gva;
}

/// {@category Struct}
class WHV_MEMORY_ACCESS_INFO extends Union {
  external _WHV_MEMORY_ACCESS_INFO__Anonymous_e__Struct Anonymous;

  @Uint32()
  external int AsUINT32;
}

/// {@category Struct}
class _WHV_MEMORY_ACCESS_INFO__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension WHV_MEMORY_ACCESS_INFO_Extension on WHV_MEMORY_ACCESS_INFO {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_MEMORY_RANGE_ENTRY extends Struct {
  @Uint64()
  external int GuestAddress;

  @Uint64()
  external int SizeInBytes;
}

/// {@category Struct}
class WHV_MSR_ACTION_ENTRY extends Struct {
  @Uint32()
  external int Index;

  @Uint8()
  external int ReadAction;

  @Uint8()
  external int WriteAction;

  @Uint16()
  external int Reserved;
}

/// {@category Struct}
class WHV_NOTIFICATION_PORT_PARAMETERS extends Struct {
  @Int32()
  external int NotificationPortType;

  @Uint32()
  external int Reserved;

  external _WHV_NOTIFICATION_PORT_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _WHV_NOTIFICATION_PORT_PARAMETERS__Anonymous_e__Union extends Union {
  external WHV_DOORBELL_MATCH_DATA Doorbell;

  external _WHV_NOTIFICATION_PORT_PARAMETERS__Anonymous_e__Union__Event_e__Struct
      Event;
}

/// {@category Struct}
class _WHV_NOTIFICATION_PORT_PARAMETERS__Anonymous_e__Union__Event_e__Struct
    extends Struct {
  @Uint32()
  external int ConnectionId;
}

extension WHV_NOTIFICATION_PORT_PARAMETERS__Anonymous_e__Union_Extension
    on WHV_NOTIFICATION_PORT_PARAMETERS {
  int get ConnectionId => this.Anonymous.Event.ConnectionId;
  set ConnectionId(int value) => this.Anonymous.Event.ConnectionId = value;
}

extension WHV_NOTIFICATION_PORT_PARAMETERS_Extension
    on WHV_NOTIFICATION_PORT_PARAMETERS {
  WHV_DOORBELL_MATCH_DATA get Doorbell => this.Anonymous.Doorbell;
  set Doorbell(WHV_DOORBELL_MATCH_DATA value) =>
      this.Anonymous.Doorbell = value;

  _WHV_NOTIFICATION_PORT_PARAMETERS__Anonymous_e__Union__Event_e__Struct
      get Event => this.Anonymous.Event;
  set Event(
          _WHV_NOTIFICATION_PORT_PARAMETERS__Anonymous_e__Union__Event_e__Struct
              value) =>
      this.Anonymous.Event = value;
}

/// {@category Struct}
class WHV_PARTITION_MEMORY_COUNTERS extends Struct {
  @Uint64()
  external int Mapped4KPageCount;

  @Uint64()
  external int Mapped2MPageCount;

  @Uint64()
  external int Mapped1GPageCount;
}

/// {@category Struct}
class WHV_PARTITION_PROPERTY extends Union {
  external WHV_EXTENDED_VM_EXITS ExtendedVmExits;

  external WHV_PROCESSOR_FEATURES ProcessorFeatures;

  external WHV_SYNTHETIC_PROCESSOR_FEATURES_BANKS
      SyntheticProcessorFeaturesBanks;

  external WHV_PROCESSOR_XSAVE_FEATURES ProcessorXsaveFeatures;

  @Uint8()
  external int ProcessorClFlushSize;

  @Uint32()
  external int ProcessorCount;

  @Array(1)
  external Array<Uint32> CpuidExitList;

  @Array(1)
  external Array<WHV_X64_CPUID_RESULT> CpuidResultList;

  @Array(1)
  external Array<WHV_X64_CPUID_RESULT2> CpuidResultList2;

  @Array(1)
  external Array<WHV_MSR_ACTION_ENTRY> MsrActionList;

  @Int32()
  external int UnimplementedMsrAction;

  @Uint64()
  external int ExceptionExitBitmap;

  @Int32()
  external int LocalApicEmulationMode;

  @Int32()
  external int SeparateSecurityDomain;

  @Int32()
  external int NestedVirtualization;

  external WHV_X64_MSR_EXIT_BITMAP X64MsrExitBitmap;

  @Uint64()
  external int ProcessorClockFrequency;

  @Uint64()
  external int InterruptClockFrequency;

  @Int32()
  external int ApicRemoteRead;

  external WHV_PROCESSOR_FEATURES_BANKS ProcessorFeaturesBanks;

  @Uint64()
  external int ReferenceTime;

  @Uint16()
  external int PrimaryNumaNode;

  @Uint32()
  external int CpuReserve;

  @Uint32()
  external int CpuCap;

  @Uint32()
  external int CpuWeight;

  @Uint64()
  external int CpuGroupId;

  @Uint32()
  external int ProcessorFrequencyCap;

  @Int32()
  external int AllowDeviceAssignment;

  external WHV_PROCESSOR_PERFMON_FEATURES ProcessorPerfmonFeatures;

  @Int32()
  external int DisableSmt;
}

/// {@category Struct}
class WHV_PROCESSOR_APIC_COUNTERS extends Struct {
  @Uint64()
  external int MmioAccessCount;

  @Uint64()
  external int EoiAccessCount;

  @Uint64()
  external int TprAccessCount;

  @Uint64()
  external int SentIpiCount;

  @Uint64()
  external int SelfIpiCount;
}

/// {@category Struct}
class WHV_PROCESSOR_EVENT_COUNTERS extends Struct {
  @Uint64()
  external int PageFaultCount;

  @Uint64()
  external int ExceptionCount;

  @Uint64()
  external int InterruptCount;
}

/// {@category Struct}
class WHV_PROCESSOR_FEATURES extends Union {
  external _WHV_PROCESSOR_FEATURES__Anonymous_e__Struct Anonymous;

  @Uint64()
  external int AsUINT64;
}

/// {@category Struct}
class _WHV_PROCESSOR_FEATURES__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension WHV_PROCESSOR_FEATURES_Extension on WHV_PROCESSOR_FEATURES {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_PROCESSOR_FEATURES1 extends Union {
  external _WHV_PROCESSOR_FEATURES1__Anonymous_e__Struct Anonymous;

  @Uint64()
  external int AsUINT64;
}

/// {@category Struct}
class _WHV_PROCESSOR_FEATURES1__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension WHV_PROCESSOR_FEATURES1_Extension on WHV_PROCESSOR_FEATURES1 {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_PROCESSOR_FEATURES_BANKS extends Struct {
  @Uint32()
  external int BanksCount;

  @Uint32()
  external int Reserved0;

  external _WHV_PROCESSOR_FEATURES_BANKS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _WHV_PROCESSOR_FEATURES_BANKS__Anonymous_e__Union extends Union {
  external _WHV_PROCESSOR_FEATURES_BANKS__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Array(2)
  external Array<Uint64> AsUINT64;
}

/// {@category Struct}
class _WHV_PROCESSOR_FEATURES_BANKS__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  external WHV_PROCESSOR_FEATURES Bank0;

  external WHV_PROCESSOR_FEATURES1 Bank1;
}

extension WHV_PROCESSOR_FEATURES_BANKS__Anonymous_e__Union_Extension
    on WHV_PROCESSOR_FEATURES_BANKS {
  WHV_PROCESSOR_FEATURES get Bank0 => this.Anonymous.Anonymous.Bank0;
  set Bank0(WHV_PROCESSOR_FEATURES value) =>
      this.Anonymous.Anonymous.Bank0 = value;

  WHV_PROCESSOR_FEATURES1 get Bank1 => this.Anonymous.Anonymous.Bank1;
  set Bank1(WHV_PROCESSOR_FEATURES1 value) =>
      this.Anonymous.Anonymous.Bank1 = value;
}

extension WHV_PROCESSOR_FEATURES_BANKS_Extension
    on WHV_PROCESSOR_FEATURES_BANKS {
  _WHV_PROCESSOR_FEATURES_BANKS__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _WHV_PROCESSOR_FEATURES_BANKS__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  Array<Uint64> get AsUINT64 => this.Anonymous.AsUINT64;
  set AsUINT64(Array<Uint64> value) => this.Anonymous.AsUINT64 = value;
}

/// {@category Struct}
class WHV_PROCESSOR_INTERCEPT_COUNTER extends Struct {
  @Uint64()
  external int Count;

  @Uint64()
  external int Time100ns;
}

/// {@category Struct}
class WHV_PROCESSOR_INTERCEPT_COUNTERS extends Struct {
  external WHV_PROCESSOR_INTERCEPT_COUNTER PageInvalidations;

  external WHV_PROCESSOR_INTERCEPT_COUNTER ControlRegisterAccesses;

  external WHV_PROCESSOR_INTERCEPT_COUNTER IoInstructions;

  external WHV_PROCESSOR_INTERCEPT_COUNTER HaltInstructions;

  external WHV_PROCESSOR_INTERCEPT_COUNTER CpuidInstructions;

  external WHV_PROCESSOR_INTERCEPT_COUNTER MsrAccesses;

  external WHV_PROCESSOR_INTERCEPT_COUNTER OtherIntercepts;

  external WHV_PROCESSOR_INTERCEPT_COUNTER PendingInterrupts;

  external WHV_PROCESSOR_INTERCEPT_COUNTER EmulatedInstructions;

  external WHV_PROCESSOR_INTERCEPT_COUNTER DebugRegisterAccesses;

  external WHV_PROCESSOR_INTERCEPT_COUNTER PageFaultIntercepts;

  external WHV_PROCESSOR_INTERCEPT_COUNTER NestedPageFaultIntercepts;

  external WHV_PROCESSOR_INTERCEPT_COUNTER Hypercalls;

  external WHV_PROCESSOR_INTERCEPT_COUNTER RdpmcInstructions;
}

/// {@category Struct}
class WHV_PROCESSOR_PERFMON_FEATURES extends Union {
  external _WHV_PROCESSOR_PERFMON_FEATURES__Anonymous_e__Struct Anonymous;

  @Uint64()
  external int AsUINT64;
}

/// {@category Struct}
class _WHV_PROCESSOR_PERFMON_FEATURES__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension WHV_PROCESSOR_PERFMON_FEATURES_Extension
    on WHV_PROCESSOR_PERFMON_FEATURES {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_PROCESSOR_RUNTIME_COUNTERS extends Struct {
  @Uint64()
  external int TotalRuntime100ns;

  @Uint64()
  external int HypervisorRuntime100ns;
}

/// {@category Struct}
class WHV_PROCESSOR_SYNTHETIC_FEATURES_COUNTERS extends Struct {
  @Uint64()
  external int SyntheticInterruptsCount;

  @Uint64()
  external int LongSpinWaitHypercallsCount;

  @Uint64()
  external int OtherHypercallsCount;

  @Uint64()
  external int SyntheticInterruptHypercallsCount;

  @Uint64()
  external int VirtualInterruptHypercallsCount;

  @Uint64()
  external int VirtualMmuHypercallsCount;
}

/// {@category Struct}
class WHV_PROCESSOR_XSAVE_FEATURES extends Union {
  external _WHV_PROCESSOR_XSAVE_FEATURES__Anonymous_e__Struct Anonymous;

  @Uint64()
  external int AsUINT64;
}

/// {@category Struct}
class _WHV_PROCESSOR_XSAVE_FEATURES__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension WHV_PROCESSOR_XSAVE_FEATURES_Extension
    on WHV_PROCESSOR_XSAVE_FEATURES {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_REGISTER_VALUE extends Union {
  external WHV_UINT128 Reg128;

  @Uint64()
  external int Reg64;

  @Uint32()
  external int Reg32;

  @Uint16()
  external int Reg16;

  @Uint8()
  external int Reg8;

  external WHV_X64_FP_REGISTER Fp;

  external WHV_X64_FP_CONTROL_STATUS_REGISTER FpControlStatus;

  external WHV_X64_XMM_CONTROL_STATUS_REGISTER XmmControlStatus;

  external WHV_X64_SEGMENT_REGISTER Segment;

  external WHV_X64_TABLE_REGISTER Table;

  external WHV_X64_INTERRUPT_STATE_REGISTER InterruptState;

  external WHV_X64_PENDING_INTERRUPTION_REGISTER PendingInterruption;

  external WHV_X64_DELIVERABILITY_NOTIFICATIONS_REGISTER
      DeliverabilityNotifications;

  external WHV_X64_PENDING_EXCEPTION_EVENT ExceptionEvent;

  external WHV_X64_PENDING_EXT_INT_EVENT ExtIntEvent;

  external WHV_INTERNAL_ACTIVITY_REGISTER InternalActivity;

  external WHV_X64_PENDING_DEBUG_EXCEPTION PendingDebugException;
}

/// {@category Struct}
class WHV_RUN_VP_CANCELED_CONTEXT extends Struct {
  @Int32()
  external int CancelReason;
}

/// {@category Struct}
class WHV_RUN_VP_EXIT_CONTEXT extends Struct {
  @Int32()
  external int ExitReason;

  @Uint32()
  external int Reserved;

  external WHV_VP_EXIT_CONTEXT VpContext;

  external _WHV_RUN_VP_EXIT_CONTEXT__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _WHV_RUN_VP_EXIT_CONTEXT__Anonymous_e__Union extends Union {
  external WHV_MEMORY_ACCESS_CONTEXT MemoryAccess;

  external WHV_X64_IO_PORT_ACCESS_CONTEXT IoPortAccess;

  external WHV_X64_MSR_ACCESS_CONTEXT MsrAccess;

  external WHV_X64_CPUID_ACCESS_CONTEXT CpuidAccess;

  external WHV_VP_EXCEPTION_CONTEXT VpException;

  external WHV_X64_INTERRUPTION_DELIVERABLE_CONTEXT InterruptWindow;

  external WHV_X64_UNSUPPORTED_FEATURE_CONTEXT UnsupportedFeature;

  external WHV_RUN_VP_CANCELED_CONTEXT CancelReason;

  external WHV_X64_APIC_EOI_CONTEXT ApicEoi;

  external WHV_X64_RDTSC_CONTEXT ReadTsc;

  external WHV_X64_APIC_SMI_CONTEXT ApicSmi;

  external WHV_HYPERCALL_CONTEXT Hypercall;

  external WHV_X64_APIC_INIT_SIPI_CONTEXT ApicInitSipi;

  external WHV_X64_APIC_WRITE_CONTEXT ApicWrite;

  external WHV_SYNIC_SINT_DELIVERABLE_CONTEXT SynicSintDeliverable;
}

extension WHV_RUN_VP_EXIT_CONTEXT_Extension on WHV_RUN_VP_EXIT_CONTEXT {
  WHV_MEMORY_ACCESS_CONTEXT get MemoryAccess => this.Anonymous.MemoryAccess;
  set MemoryAccess(WHV_MEMORY_ACCESS_CONTEXT value) =>
      this.Anonymous.MemoryAccess = value;

  WHV_X64_IO_PORT_ACCESS_CONTEXT get IoPortAccess =>
      this.Anonymous.IoPortAccess;
  set IoPortAccess(WHV_X64_IO_PORT_ACCESS_CONTEXT value) =>
      this.Anonymous.IoPortAccess = value;

  WHV_X64_MSR_ACCESS_CONTEXT get MsrAccess => this.Anonymous.MsrAccess;
  set MsrAccess(WHV_X64_MSR_ACCESS_CONTEXT value) =>
      this.Anonymous.MsrAccess = value;

  WHV_X64_CPUID_ACCESS_CONTEXT get CpuidAccess => this.Anonymous.CpuidAccess;
  set CpuidAccess(WHV_X64_CPUID_ACCESS_CONTEXT value) =>
      this.Anonymous.CpuidAccess = value;

  WHV_VP_EXCEPTION_CONTEXT get VpException => this.Anonymous.VpException;
  set VpException(WHV_VP_EXCEPTION_CONTEXT value) =>
      this.Anonymous.VpException = value;

  WHV_X64_INTERRUPTION_DELIVERABLE_CONTEXT get InterruptWindow =>
      this.Anonymous.InterruptWindow;
  set InterruptWindow(WHV_X64_INTERRUPTION_DELIVERABLE_CONTEXT value) =>
      this.Anonymous.InterruptWindow = value;

  WHV_X64_UNSUPPORTED_FEATURE_CONTEXT get UnsupportedFeature =>
      this.Anonymous.UnsupportedFeature;
  set UnsupportedFeature(WHV_X64_UNSUPPORTED_FEATURE_CONTEXT value) =>
      this.Anonymous.UnsupportedFeature = value;

  WHV_RUN_VP_CANCELED_CONTEXT get CancelReason => this.Anonymous.CancelReason;
  set CancelReason(WHV_RUN_VP_CANCELED_CONTEXT value) =>
      this.Anonymous.CancelReason = value;

  WHV_X64_APIC_EOI_CONTEXT get ApicEoi => this.Anonymous.ApicEoi;
  set ApicEoi(WHV_X64_APIC_EOI_CONTEXT value) => this.Anonymous.ApicEoi = value;

  WHV_X64_RDTSC_CONTEXT get ReadTsc => this.Anonymous.ReadTsc;
  set ReadTsc(WHV_X64_RDTSC_CONTEXT value) => this.Anonymous.ReadTsc = value;

  WHV_X64_APIC_SMI_CONTEXT get ApicSmi => this.Anonymous.ApicSmi;
  set ApicSmi(WHV_X64_APIC_SMI_CONTEXT value) => this.Anonymous.ApicSmi = value;

  WHV_HYPERCALL_CONTEXT get Hypercall => this.Anonymous.Hypercall;
  set Hypercall(WHV_HYPERCALL_CONTEXT value) =>
      this.Anonymous.Hypercall = value;

  WHV_X64_APIC_INIT_SIPI_CONTEXT get ApicInitSipi =>
      this.Anonymous.ApicInitSipi;
  set ApicInitSipi(WHV_X64_APIC_INIT_SIPI_CONTEXT value) =>
      this.Anonymous.ApicInitSipi = value;

  WHV_X64_APIC_WRITE_CONTEXT get ApicWrite => this.Anonymous.ApicWrite;
  set ApicWrite(WHV_X64_APIC_WRITE_CONTEXT value) =>
      this.Anonymous.ApicWrite = value;

  WHV_SYNIC_SINT_DELIVERABLE_CONTEXT get SynicSintDeliverable =>
      this.Anonymous.SynicSintDeliverable;
  set SynicSintDeliverable(WHV_SYNIC_SINT_DELIVERABLE_CONTEXT value) =>
      this.Anonymous.SynicSintDeliverable = value;
}

/// {@category Struct}
class WHV_SCHEDULER_FEATURES extends Union {
  external _WHV_SCHEDULER_FEATURES__Anonymous_e__Struct Anonymous;

  @Uint64()
  external int AsUINT64;
}

/// {@category Struct}
class _WHV_SCHEDULER_FEATURES__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension WHV_SCHEDULER_FEATURES_Extension on WHV_SCHEDULER_FEATURES {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_SRIOV_RESOURCE_DESCRIPTOR extends Struct {
  @Array(200)
  external Array<Uint16> _PnpInstanceId;

  String get PnpInstanceId {
    final charCodes = <int>[];
    for (var i = 0; i < 200; i++) {
      charCodes.add(_PnpInstanceId[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set PnpInstanceId(String value) {
    final stringToStore = value.padRight(200, '\x00');
    for (var i = 0; i < 200; i++) {
      _PnpInstanceId[i] = stringToStore.codeUnitAt(i);
    }
  }

  external LUID VirtualFunctionId;

  @Uint16()
  external int VirtualFunctionIndex;

  @Uint16()
  external int Reserved;
}

/// {@category Struct}
class WHV_SYNIC_EVENT_PARAMETERS extends Struct {
  @Uint32()
  external int VpIndex;

  @Uint8()
  external int TargetSint;

  @Uint8()
  external int Reserved;

  @Uint16()
  external int FlagNumber;
}

/// {@category Struct}
class WHV_SYNIC_SINT_DELIVERABLE_CONTEXT extends Struct {
  @Uint16()
  external int DeliverableSints;

  @Uint16()
  external int Reserved1;

  @Uint32()
  external int Reserved2;
}

/// {@category Struct}
class WHV_SYNTHETIC_PROCESSOR_FEATURES extends Union {
  external _WHV_SYNTHETIC_PROCESSOR_FEATURES__Anonymous_e__Struct Anonymous;

  @Uint64()
  external int AsUINT64;
}

/// {@category Struct}
class _WHV_SYNTHETIC_PROCESSOR_FEATURES__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension WHV_SYNTHETIC_PROCESSOR_FEATURES_Extension
    on WHV_SYNTHETIC_PROCESSOR_FEATURES {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_SYNTHETIC_PROCESSOR_FEATURES_BANKS extends Struct {
  @Uint32()
  external int BanksCount;

  @Uint32()
  external int Reserved0;

  external _WHV_SYNTHETIC_PROCESSOR_FEATURES_BANKS__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _WHV_SYNTHETIC_PROCESSOR_FEATURES_BANKS__Anonymous_e__Union
    extends Union {
  external _WHV_SYNTHETIC_PROCESSOR_FEATURES_BANKS__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Array(1)
  external Array<Uint64> AsUINT64;
}

/// {@category Struct}
class _WHV_SYNTHETIC_PROCESSOR_FEATURES_BANKS__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  external WHV_SYNTHETIC_PROCESSOR_FEATURES Bank0;
}

extension WHV_SYNTHETIC_PROCESSOR_FEATURES_BANKS__Anonymous_e__Union_Extension
    on WHV_SYNTHETIC_PROCESSOR_FEATURES_BANKS {
  WHV_SYNTHETIC_PROCESSOR_FEATURES get Bank0 => this.Anonymous.Anonymous.Bank0;
  set Bank0(WHV_SYNTHETIC_PROCESSOR_FEATURES value) =>
      this.Anonymous.Anonymous.Bank0 = value;
}

extension WHV_SYNTHETIC_PROCESSOR_FEATURES_BANKS_Extension
    on WHV_SYNTHETIC_PROCESSOR_FEATURES_BANKS {
  _WHV_SYNTHETIC_PROCESSOR_FEATURES_BANKS__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _WHV_SYNTHETIC_PROCESSOR_FEATURES_BANKS__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  Array<Uint64> get AsUINT64 => this.Anonymous.AsUINT64;
  set AsUINT64(Array<Uint64> value) => this.Anonymous.AsUINT64 = value;
}

/// {@category Struct}
class WHV_TRANSLATE_GVA_RESULT extends Struct {
  @Int32()
  external int ResultCode;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class WHV_TRIGGER_PARAMETERS extends Struct {
  @Int32()
  external int TriggerType;

  @Uint32()
  external int Reserved;

  external _WHV_TRIGGER_PARAMETERS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _WHV_TRIGGER_PARAMETERS__Anonymous_e__Union extends Union {
  external WHV_INTERRUPT_CONTROL Interrupt;

  external WHV_SYNIC_EVENT_PARAMETERS SynicEvent;

  external _WHV_TRIGGER_PARAMETERS__Anonymous_e__Union__DeviceInterrupt_e__Struct
      DeviceInterrupt;
}

/// {@category Struct}
class _WHV_TRIGGER_PARAMETERS__Anonymous_e__Union__DeviceInterrupt_e__Struct
    extends Struct {
  @Uint64()
  external int LogicalDeviceId;

  @Uint64()
  external int MsiAddress;

  @Uint32()
  external int MsiData;

  @Uint32()
  external int Reserved;
}

extension WHV_TRIGGER_PARAMETERS__Anonymous_e__Union_Extension
    on WHV_TRIGGER_PARAMETERS {
  int get LogicalDeviceId => this.Anonymous.DeviceInterrupt.LogicalDeviceId;
  set LogicalDeviceId(int value) =>
      this.Anonymous.DeviceInterrupt.LogicalDeviceId = value;

  int get MsiAddress => this.Anonymous.DeviceInterrupt.MsiAddress;
  set MsiAddress(int value) =>
      this.Anonymous.DeviceInterrupt.MsiAddress = value;

  int get MsiData => this.Anonymous.DeviceInterrupt.MsiData;
  set MsiData(int value) => this.Anonymous.DeviceInterrupt.MsiData = value;

  int get Reserved => this.Anonymous.DeviceInterrupt.Reserved;
  set Reserved(int value) => this.Anonymous.DeviceInterrupt.Reserved = value;
}

extension WHV_TRIGGER_PARAMETERS_Extension on WHV_TRIGGER_PARAMETERS {
  WHV_INTERRUPT_CONTROL get Interrupt => this.Anonymous.Interrupt;
  set Interrupt(WHV_INTERRUPT_CONTROL value) =>
      this.Anonymous.Interrupt = value;

  WHV_SYNIC_EVENT_PARAMETERS get SynicEvent => this.Anonymous.SynicEvent;
  set SynicEvent(WHV_SYNIC_EVENT_PARAMETERS value) =>
      this.Anonymous.SynicEvent = value;

  _WHV_TRIGGER_PARAMETERS__Anonymous_e__Union__DeviceInterrupt_e__Struct
      get DeviceInterrupt => this.Anonymous.DeviceInterrupt;
  set DeviceInterrupt(
          _WHV_TRIGGER_PARAMETERS__Anonymous_e__Union__DeviceInterrupt_e__Struct
              value) =>
      this.Anonymous.DeviceInterrupt = value;
}

/// {@category Struct}
class WHV_UINT128 extends Union {
  external _WHV_UINT128__Anonymous_e__Struct Anonymous;

  @Array(4)
  external Array<Uint32> Dword;
}

/// {@category Struct}
class _WHV_UINT128__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int Low64;

  @Uint64()
  external int High64;
}

extension WHV_UINT128_Extension on WHV_UINT128 {
  int get Low64 => this.Anonymous.Low64;
  set Low64(int value) => this.Anonymous.Low64 = value;

  int get High64 => this.Anonymous.High64;
  set High64(int value) => this.Anonymous.High64 = value;
}

/// {@category Struct}
class WHV_VIRTUAL_PROCESSOR_PROPERTY extends Struct {
  @Int32()
  external int PropertyCode;

  @Uint32()
  external int Reserved;

  external _WHV_VIRTUAL_PROCESSOR_PROPERTY__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _WHV_VIRTUAL_PROCESSOR_PROPERTY__Anonymous_e__Union extends Union {
  @Uint16()
  external int NumaNode;

  @Uint64()
  external int Padding;
}

extension WHV_VIRTUAL_PROCESSOR_PROPERTY_Extension
    on WHV_VIRTUAL_PROCESSOR_PROPERTY {
  int get NumaNode => this.Anonymous.NumaNode;
  set NumaNode(int value) => this.Anonymous.NumaNode = value;

  int get Padding => this.Anonymous.Padding;
  set Padding(int value) => this.Anonymous.Padding = value;
}

/// {@category Struct}
class WHV_VPCI_DEVICE_NOTIFICATION extends Struct {
  @Int32()
  external int NotificationType;

  @Uint32()
  external int Reserved1;

  external _WHV_VPCI_DEVICE_NOTIFICATION__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _WHV_VPCI_DEVICE_NOTIFICATION__Anonymous_e__Union extends Union {
  @Uint64()
  external int Reserved2;
}

extension WHV_VPCI_DEVICE_NOTIFICATION_Extension
    on WHV_VPCI_DEVICE_NOTIFICATION {
  int get Reserved2 => this.Anonymous.Reserved2;
  set Reserved2(int value) => this.Anonymous.Reserved2 = value;
}

/// {@category Struct}
class WHV_VPCI_DEVICE_REGISTER extends Struct {
  @Int32()
  external int Location;

  @Uint32()
  external int SizeInBytes;

  @Uint64()
  external int OffsetInBytes;
}

/// {@category Struct}
class WHV_VPCI_HARDWARE_IDS extends Struct {
  @Uint16()
  external int VendorID;

  @Uint16()
  external int DeviceID;

  @Uint8()
  external int RevisionID;

  @Uint8()
  external int ProgIf;

  @Uint8()
  external int SubClass;

  @Uint8()
  external int BaseClass;

  @Uint16()
  external int SubVendorID;

  @Uint16()
  external int SubSystemID;
}

/// {@category Struct}
class WHV_VPCI_INTERRUPT_TARGET extends Struct {
  @Uint32()
  external int Vector;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ProcessorCount;

  @Array(1)
  external Array<Uint32> Processors;
}

/// {@category Struct}
class WHV_VPCI_MMIO_MAPPING extends Struct {
  @Int32()
  external int Location;

  @Uint32()
  external int Flags;

  @Uint64()
  external int SizeInBytes;

  @Uint64()
  external int OffsetInBytes;

  external Pointer VirtualAddress;
}

/// {@category Struct}
class WHV_VPCI_PROBED_BARS extends Struct {
  @Array(6)
  external Array<Uint32> Value;
}

/// {@category Struct}
class WHV_VP_EXCEPTION_CONTEXT extends Struct {
  @Uint8()
  external int InstructionByteCount;

  @Array(3)
  external Array<Uint8> Reserved;

  @Array(16)
  external Array<Uint8> InstructionBytes;

  external WHV_VP_EXCEPTION_INFO ExceptionInfo;

  @Uint8()
  external int ExceptionType;

  @Array(3)
  external Array<Uint8> Reserved2;

  @Uint32()
  external int ErrorCode;

  @Uint64()
  external int ExceptionParameter;
}

/// {@category Struct}
class WHV_VP_EXCEPTION_INFO extends Union {
  external _WHV_VP_EXCEPTION_INFO__Anonymous_e__Struct Anonymous;

  @Uint32()
  external int AsUINT32;
}

/// {@category Struct}
class _WHV_VP_EXCEPTION_INFO__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension WHV_VP_EXCEPTION_INFO_Extension on WHV_VP_EXCEPTION_INFO {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_VP_EXIT_CONTEXT extends Struct {
  external WHV_X64_VP_EXECUTION_STATE ExecutionState;

  @Uint8()
  external int bitfield;

  @Uint8()
  external int Reserved;

  @Uint32()
  external int Reserved2;

  external WHV_X64_SEGMENT_REGISTER Cs;

  @Uint64()
  external int Rip;

  @Uint64()
  external int Rflags;
}

/// {@category Struct}
class WHV_X64_APIC_EOI_CONTEXT extends Struct {
  @Uint32()
  external int InterruptVector;
}

/// {@category Struct}
class WHV_X64_APIC_INIT_SIPI_CONTEXT extends Struct {
  @Uint64()
  external int ApicIcr;
}

/// {@category Struct}
class WHV_X64_APIC_SMI_CONTEXT extends Struct {
  @Uint64()
  external int ApicIcr;
}

/// {@category Struct}
class WHV_X64_APIC_WRITE_CONTEXT extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Reserved;

  @Uint64()
  external int WriteValue;
}

/// {@category Struct}
class WHV_X64_CPUID_ACCESS_CONTEXT extends Struct {
  @Uint64()
  external int Rax;

  @Uint64()
  external int Rcx;

  @Uint64()
  external int Rdx;

  @Uint64()
  external int Rbx;

  @Uint64()
  external int DefaultResultRax;

  @Uint64()
  external int DefaultResultRcx;

  @Uint64()
  external int DefaultResultRdx;

  @Uint64()
  external int DefaultResultRbx;
}

/// {@category Struct}
class WHV_X64_CPUID_RESULT extends Struct {
  @Uint32()
  external int Function;

  @Array(3)
  external Array<Uint32> Reserved;

  @Uint32()
  external int Eax;

  @Uint32()
  external int Ebx;

  @Uint32()
  external int Ecx;

  @Uint32()
  external int Edx;
}

/// {@category Struct}
class WHV_X64_CPUID_RESULT2 extends Struct {
  @Uint32()
  external int Function;

  @Uint32()
  external int Index;

  @Uint32()
  external int VpIndex;

  @Uint32()
  external int Flags;

  external WHV_CPUID_OUTPUT Output;

  external WHV_CPUID_OUTPUT Mask;
}

/// {@category Struct}
class WHV_X64_DELIVERABILITY_NOTIFICATIONS_REGISTER extends Union {
  external _WHV_X64_DELIVERABILITY_NOTIFICATIONS_REGISTER__Anonymous_e__Struct
      Anonymous;

  @Uint64()
  external int AsUINT64;
}

/// {@category Struct}
class _WHV_X64_DELIVERABILITY_NOTIFICATIONS_REGISTER__Anonymous_e__Struct
    extends Struct {
  @Uint64()
  external int bitfield;
}

extension WHV_X64_DELIVERABILITY_NOTIFICATIONS_REGISTER_Extension
    on WHV_X64_DELIVERABILITY_NOTIFICATIONS_REGISTER {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_X64_FP_CONTROL_STATUS_REGISTER extends Union {
  external _WHV_X64_FP_CONTROL_STATUS_REGISTER__Anonymous_e__Struct Anonymous;

  external WHV_UINT128 AsUINT128;
}

/// {@category Struct}
class _WHV_X64_FP_CONTROL_STATUS_REGISTER__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int FpControl;

  @Uint16()
  external int FpStatus;

  @Uint8()
  external int FpTag;

  @Uint8()
  external int Reserved;

  @Uint16()
  external int LastFpOp;

  external _WHV_X64_FP_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _WHV_X64_FP_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union
    extends Union {
  @Uint64()
  external int LastFpRip;

  external _WHV_X64_FP_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _WHV_X64_FP_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int LastFpEip;

  @Uint16()
  external int LastFpCs;

  @Uint16()
  external int Reserved2;
}

extension WHV_X64_FP_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union_Extension
    on WHV_X64_FP_CONTROL_STATUS_REGISTER {
  int get LastFpEip => this.Anonymous.Anonymous.Anonymous.LastFpEip;
  set LastFpEip(int value) =>
      this.Anonymous.Anonymous.Anonymous.LastFpEip = value;

  int get LastFpCs => this.Anonymous.Anonymous.Anonymous.LastFpCs;
  set LastFpCs(int value) =>
      this.Anonymous.Anonymous.Anonymous.LastFpCs = value;

  int get Reserved2 => this.Anonymous.Anonymous.Anonymous.Reserved2;
  set Reserved2(int value) =>
      this.Anonymous.Anonymous.Anonymous.Reserved2 = value;
}

extension WHV_X64_FP_CONTROL_STATUS_REGISTER__Anonymous_e__Struct_Extension
    on WHV_X64_FP_CONTROL_STATUS_REGISTER {
  int get LastFpRip => this.Anonymous.Anonymous.LastFpRip;
  set LastFpRip(int value) => this.Anonymous.Anonymous.LastFpRip = value;

  _WHV_X64_FP_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous.Anonymous;
  set Anonymous(
          _WHV_X64_FP_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous.Anonymous = value;
}

extension WHV_X64_FP_CONTROL_STATUS_REGISTER_Extension
    on WHV_X64_FP_CONTROL_STATUS_REGISTER {
  int get FpControl => this.Anonymous.FpControl;
  set FpControl(int value) => this.Anonymous.FpControl = value;

  int get FpStatus => this.Anonymous.FpStatus;
  set FpStatus(int value) => this.Anonymous.FpStatus = value;

  int get FpTag => this.Anonymous.FpTag;
  set FpTag(int value) => this.Anonymous.FpTag = value;

  int get Reserved => this.Anonymous.Reserved;
  set Reserved(int value) => this.Anonymous.Reserved = value;

  int get LastFpOp => this.Anonymous.LastFpOp;
  set LastFpOp(int value) => this.Anonymous.LastFpOp = value;

  _WHV_X64_FP_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _WHV_X64_FP_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class WHV_X64_FP_REGISTER extends Union {
  external _WHV_X64_FP_REGISTER__Anonymous_e__Struct Anonymous;

  external WHV_UINT128 AsUINT128;
}

/// {@category Struct}
class _WHV_X64_FP_REGISTER__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int Mantissa;

  @Uint64()
  external int bitfield;
}

extension WHV_X64_FP_REGISTER_Extension on WHV_X64_FP_REGISTER {
  int get Mantissa => this.Anonymous.Mantissa;
  set Mantissa(int value) => this.Anonymous.Mantissa = value;

  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_X64_INTERRUPTION_DELIVERABLE_CONTEXT extends Struct {
  @Int32()
  external int DeliverableType;
}

/// {@category Struct}
class WHV_X64_INTERRUPT_STATE_REGISTER extends Union {
  external _WHV_X64_INTERRUPT_STATE_REGISTER__Anonymous_e__Struct Anonymous;

  @Uint64()
  external int AsUINT64;
}

/// {@category Struct}
class _WHV_X64_INTERRUPT_STATE_REGISTER__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension WHV_X64_INTERRUPT_STATE_REGISTER_Extension
    on WHV_X64_INTERRUPT_STATE_REGISTER {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_X64_IO_PORT_ACCESS_CONTEXT extends Struct {
  @Uint8()
  external int InstructionByteCount;

  @Array(3)
  external Array<Uint8> Reserved;

  @Array(16)
  external Array<Uint8> InstructionBytes;

  external WHV_X64_IO_PORT_ACCESS_INFO AccessInfo;

  @Uint16()
  external int PortNumber;

  @Array(3)
  external Array<Uint16> Reserved2;

  @Uint64()
  external int Rax;

  @Uint64()
  external int Rcx;

  @Uint64()
  external int Rsi;

  @Uint64()
  external int Rdi;

  external WHV_X64_SEGMENT_REGISTER Ds;

  external WHV_X64_SEGMENT_REGISTER Es;
}

/// {@category Struct}
class WHV_X64_IO_PORT_ACCESS_INFO extends Union {
  external _WHV_X64_IO_PORT_ACCESS_INFO__Anonymous_e__Struct Anonymous;

  @Uint32()
  external int AsUINT32;
}

/// {@category Struct}
class _WHV_X64_IO_PORT_ACCESS_INFO__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension WHV_X64_IO_PORT_ACCESS_INFO_Extension on WHV_X64_IO_PORT_ACCESS_INFO {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_X64_MSR_ACCESS_CONTEXT extends Struct {
  external WHV_X64_MSR_ACCESS_INFO AccessInfo;

  @Uint32()
  external int MsrNumber;

  @Uint64()
  external int Rax;

  @Uint64()
  external int Rdx;
}

/// {@category Struct}
class WHV_X64_MSR_ACCESS_INFO extends Union {
  external _WHV_X64_MSR_ACCESS_INFO__Anonymous_e__Struct Anonymous;

  @Uint32()
  external int AsUINT32;
}

/// {@category Struct}
class _WHV_X64_MSR_ACCESS_INFO__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension WHV_X64_MSR_ACCESS_INFO_Extension on WHV_X64_MSR_ACCESS_INFO {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_X64_MSR_EXIT_BITMAP extends Union {
  @Uint64()
  external int AsUINT64;

  external _WHV_X64_MSR_EXIT_BITMAP__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _WHV_X64_MSR_EXIT_BITMAP__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension WHV_X64_MSR_EXIT_BITMAP_Extension on WHV_X64_MSR_EXIT_BITMAP {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_X64_PENDING_DEBUG_EXCEPTION extends Union {
  @Uint64()
  external int AsUINT64;

  external _WHV_X64_PENDING_DEBUG_EXCEPTION__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _WHV_X64_PENDING_DEBUG_EXCEPTION__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension WHV_X64_PENDING_DEBUG_EXCEPTION_Extension
    on WHV_X64_PENDING_DEBUG_EXCEPTION {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_X64_PENDING_EXCEPTION_EVENT extends Union {
  external _WHV_X64_PENDING_EXCEPTION_EVENT__Anonymous_e__Struct Anonymous;

  external WHV_UINT128 AsUINT128;
}

/// {@category Struct}
class _WHV_X64_PENDING_EXCEPTION_EVENT__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int bitfield;

  @Uint32()
  external int ErrorCode;

  @Uint64()
  external int ExceptionParameter;
}

extension WHV_X64_PENDING_EXCEPTION_EVENT_Extension
    on WHV_X64_PENDING_EXCEPTION_EVENT {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;

  int get ErrorCode => this.Anonymous.ErrorCode;
  set ErrorCode(int value) => this.Anonymous.ErrorCode = value;

  int get ExceptionParameter => this.Anonymous.ExceptionParameter;
  set ExceptionParameter(int value) =>
      this.Anonymous.ExceptionParameter = value;
}

/// {@category Struct}
class WHV_X64_PENDING_EXT_INT_EVENT extends Union {
  external _WHV_X64_PENDING_EXT_INT_EVENT__Anonymous_e__Struct Anonymous;

  external WHV_UINT128 AsUINT128;
}

/// {@category Struct}
class _WHV_X64_PENDING_EXT_INT_EVENT__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int bitfield;

  @Uint64()
  external int Reserved2;
}

extension WHV_X64_PENDING_EXT_INT_EVENT_Extension
    on WHV_X64_PENDING_EXT_INT_EVENT {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;

  int get Reserved2 => this.Anonymous.Reserved2;
  set Reserved2(int value) => this.Anonymous.Reserved2 = value;
}

/// {@category Struct}
class WHV_X64_PENDING_INTERRUPTION_REGISTER extends Union {
  external _WHV_X64_PENDING_INTERRUPTION_REGISTER__Anonymous_e__Struct
      Anonymous;

  @Uint64()
  external int AsUINT64;
}

/// {@category Struct}
class _WHV_X64_PENDING_INTERRUPTION_REGISTER__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;

  @Uint32()
  external int ErrorCode;
}

extension WHV_X64_PENDING_INTERRUPTION_REGISTER_Extension
    on WHV_X64_PENDING_INTERRUPTION_REGISTER {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;

  int get ErrorCode => this.Anonymous.ErrorCode;
  set ErrorCode(int value) => this.Anonymous.ErrorCode = value;
}

/// {@category Struct}
class WHV_X64_RDTSC_CONTEXT extends Struct {
  @Uint64()
  external int TscAux;

  @Uint64()
  external int VirtualOffset;

  @Uint64()
  external int Tsc;

  @Uint64()
  external int ReferenceTime;

  external WHV_X64_RDTSC_INFO RdtscInfo;
}

/// {@category Struct}
class WHV_X64_RDTSC_INFO extends Union {
  external _WHV_X64_RDTSC_INFO__Anonymous_e__Struct Anonymous;

  @Uint64()
  external int AsUINT64;
}

/// {@category Struct}
class _WHV_X64_RDTSC_INFO__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int bitfield;
}

extension WHV_X64_RDTSC_INFO_Extension on WHV_X64_RDTSC_INFO {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_X64_SEGMENT_REGISTER extends Struct {
  @Uint64()
  external int Base;

  @Uint32()
  external int Limit;

  @Uint16()
  external int Selector;

  external _WHV_X64_SEGMENT_REGISTER__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _WHV_X64_SEGMENT_REGISTER__Anonymous_e__Union extends Union {
  external _WHV_X64_SEGMENT_REGISTER__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint16()
  external int Attributes;
}

/// {@category Struct}
class _WHV_X64_SEGMENT_REGISTER__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int bitfield;
}

extension WHV_X64_SEGMENT_REGISTER__Anonymous_e__Union_Extension
    on WHV_X64_SEGMENT_REGISTER {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension WHV_X64_SEGMENT_REGISTER_Extension on WHV_X64_SEGMENT_REGISTER {
  _WHV_X64_SEGMENT_REGISTER__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _WHV_X64_SEGMENT_REGISTER__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get Attributes => this.Anonymous.Attributes;
  set Attributes(int value) => this.Anonymous.Attributes = value;
}

/// {@category Struct}
class WHV_X64_TABLE_REGISTER extends Struct {
  @Array(3)
  external Array<Uint16> Pad;

  @Uint16()
  external int Limit;

  @Uint64()
  external int Base;
}

/// {@category Struct}
class WHV_X64_UNSUPPORTED_FEATURE_CONTEXT extends Struct {
  @Int32()
  external int FeatureCode;

  @Uint32()
  external int Reserved;

  @Uint64()
  external int FeatureParameter;
}

/// {@category Struct}
class WHV_X64_VP_EXECUTION_STATE extends Union {
  external _WHV_X64_VP_EXECUTION_STATE__Anonymous_e__Struct Anonymous;

  @Uint16()
  external int AsUINT16;
}

/// {@category Struct}
class _WHV_X64_VP_EXECUTION_STATE__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension WHV_X64_VP_EXECUTION_STATE_Extension on WHV_X64_VP_EXECUTION_STATE {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class WHV_X64_XMM_CONTROL_STATUS_REGISTER extends Union {
  external _WHV_X64_XMM_CONTROL_STATUS_REGISTER__Anonymous_e__Struct Anonymous;

  external WHV_UINT128 AsUINT128;
}

/// {@category Struct}
class _WHV_X64_XMM_CONTROL_STATUS_REGISTER__Anonymous_e__Struct extends Struct {
  external _WHV_X64_XMM_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union
      Anonymous;

  @Uint32()
  external int XmmStatusControl;

  @Uint32()
  external int XmmStatusControlMask;
}

/// {@category Struct}
class _WHV_X64_XMM_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union
    extends Union {
  @Uint64()
  external int LastFpRdp;

  external _WHV_X64_XMM_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _WHV_X64_XMM_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int LastFpDp;

  @Uint16()
  external int LastFpDs;

  @Uint16()
  external int Reserved;
}

extension WHV_X64_XMM_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union_Extension
    on WHV_X64_XMM_CONTROL_STATUS_REGISTER {
  int get LastFpDp => this.Anonymous.Anonymous.Anonymous.LastFpDp;
  set LastFpDp(int value) =>
      this.Anonymous.Anonymous.Anonymous.LastFpDp = value;

  int get LastFpDs => this.Anonymous.Anonymous.Anonymous.LastFpDs;
  set LastFpDs(int value) =>
      this.Anonymous.Anonymous.Anonymous.LastFpDs = value;

  int get Reserved => this.Anonymous.Anonymous.Anonymous.Reserved;
  set Reserved(int value) =>
      this.Anonymous.Anonymous.Anonymous.Reserved = value;
}

extension WHV_X64_XMM_CONTROL_STATUS_REGISTER__Anonymous_e__Struct_Extension
    on WHV_X64_XMM_CONTROL_STATUS_REGISTER {
  int get LastFpRdp => this.Anonymous.Anonymous.LastFpRdp;
  set LastFpRdp(int value) => this.Anonymous.Anonymous.LastFpRdp = value;

  _WHV_X64_XMM_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous.Anonymous;
  set Anonymous(
          _WHV_X64_XMM_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous.Anonymous = value;
}

extension WHV_X64_XMM_CONTROL_STATUS_REGISTER_Extension
    on WHV_X64_XMM_CONTROL_STATUS_REGISTER {
  _WHV_X64_XMM_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _WHV_X64_XMM_CONTROL_STATUS_REGISTER__Anonymous_e__Struct__Anonymous_e__Union
              value) =>
      this.Anonymous.Anonymous = value;

  int get XmmStatusControl => this.Anonymous.XmmStatusControl;
  set XmmStatusControl(int value) => this.Anonymous.XmmStatusControl = value;

  int get XmmStatusControlMask => this.Anonymous.XmmStatusControlMask;
  set XmmStatusControlMask(int value) =>
      this.Anonymous.XmmStatusControlMask = value;
}
