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
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/threading/callbacks.g.dart';
import '../../../system/kernel/structs.g.dart';
import '../../../system/kernel/callbacks.g.dart';
import '../../../system/diagnostics/debug/IDebugProperty.dart';
import '../../../system/diagnostics/debug/IDebugStackFrame.dart';
import '../../../specialTypes.dart';
import '../../../system/com/IUnknown.dart';
import '../../../system/com/structuredstorage/ILockBytes.dart';
import '../../../system/diagnostics/debug/IDebugExtendedProperty.dart';
import '../../../system/diagnostics/debug/callbacks.g.dart';
import '../../../system/memory/structs.g.dart';
import '../../../system/time/structs.g.dart';
import '../../../storage/filesystem/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugDocumentText.dart';

/// {@category Struct}
class ADDRESS64 extends Struct {
  @Uint64()
  external int Offset;

  @Uint16()
  external int Segment;

  @Int32()
  external int Mode;
}

/// {@category Struct}
@Packed(1)
class AER_BRIDGE_DESCRIPTOR_FLAGS extends Union {
  external _AER_BRIDGE_DESCRIPTOR_FLAGS__Anonymous_e__Struct Anonymous;

  @Uint16()
  external int AsUSHORT;
}

/// {@category Struct}
@Packed(1)
class _AER_BRIDGE_DESCRIPTOR_FLAGS__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension AER_BRIDGE_DESCRIPTOR_FLAGS_Extension on AER_BRIDGE_DESCRIPTOR_FLAGS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
@Packed(1)
class AER_ENDPOINT_DESCRIPTOR_FLAGS extends Union {
  external _AER_ENDPOINT_DESCRIPTOR_FLAGS__Anonymous_e__Struct Anonymous;

  @Uint16()
  external int AsUSHORT;
}

/// {@category Struct}
@Packed(1)
class _AER_ENDPOINT_DESCRIPTOR_FLAGS__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension AER_ENDPOINT_DESCRIPTOR_FLAGS_Extension
    on AER_ENDPOINT_DESCRIPTOR_FLAGS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
@Packed(1)
class AER_ROOTPORT_DESCRIPTOR_FLAGS extends Union {
  external _AER_ROOTPORT_DESCRIPTOR_FLAGS__Anonymous_e__Struct Anonymous;

  @Uint16()
  external int AsUSHORT;
}

/// {@category Struct}
@Packed(1)
class _AER_ROOTPORT_DESCRIPTOR_FLAGS__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension AER_ROOTPORT_DESCRIPTOR_FLAGS_Extension
    on AER_ROOTPORT_DESCRIPTOR_FLAGS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class API_VERSION extends Struct {
  @Uint16()
  external int MajorVersion;

  @Uint16()
  external int MinorVersion;

  @Uint16()
  external int Revision;

  @Uint16()
  external int Reserved;
}

/// {@category Struct}
class ARM64_NT_CONTEXT extends Struct {
  @Uint32()
  external int ContextFlags;

  @Uint32()
  external int Cpsr;

  external _ARM64_NT_CONTEXT__Anonymous_e__Union Anonymous;

  @Uint64()
  external int Sp;

  @Uint64()
  external int Pc;

  @Array(32)
  external Array<ARM64_NT_NEON128> V;

  @Uint32()
  external int Fpcr;

  @Uint32()
  external int Fpsr;

  @Array(8)
  external Array<Uint32> Bcr;

  @Array(8)
  external Array<Uint64> Bvr;

  @Array(2)
  external Array<Uint32> Wcr;

  @Array(2)
  external Array<Uint64> Wvr;
}

/// {@category Struct}
class _ARM64_NT_CONTEXT__Anonymous_e__Union extends Union {
  external _ARM64_NT_CONTEXT__Anonymous_e__Union__Anonymous_e__Struct Anonymous;

  @Array(31)
  external Array<Uint64> X;
}

/// {@category Struct}
class _ARM64_NT_CONTEXT__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint64()
  external int X0;

  @Uint64()
  external int X1;

  @Uint64()
  external int X2;

  @Uint64()
  external int X3;

  @Uint64()
  external int X4;

  @Uint64()
  external int X5;

  @Uint64()
  external int X6;

  @Uint64()
  external int X7;

  @Uint64()
  external int X8;

  @Uint64()
  external int X9;

  @Uint64()
  external int X10;

  @Uint64()
  external int X11;

  @Uint64()
  external int X12;

  @Uint64()
  external int X13;

  @Uint64()
  external int X14;

  @Uint64()
  external int X15;

  @Uint64()
  external int X16;

  @Uint64()
  external int X17;

  @Uint64()
  external int X18;

  @Uint64()
  external int X19;

  @Uint64()
  external int X20;

  @Uint64()
  external int X21;

  @Uint64()
  external int X22;

  @Uint64()
  external int X23;

  @Uint64()
  external int X24;

  @Uint64()
  external int X25;

  @Uint64()
  external int X26;

  @Uint64()
  external int X27;

  @Uint64()
  external int X28;

  @Uint64()
  external int Fp;

  @Uint64()
  external int Lr;
}

extension ARM64_NT_CONTEXT__Anonymous_e__Union_Extension on ARM64_NT_CONTEXT {
  int get X0 => this.Anonymous.Anonymous.X0;
  set X0(int value) => this.Anonymous.Anonymous.X0 = value;

  int get X1 => this.Anonymous.Anonymous.X1;
  set X1(int value) => this.Anonymous.Anonymous.X1 = value;

  int get X2 => this.Anonymous.Anonymous.X2;
  set X2(int value) => this.Anonymous.Anonymous.X2 = value;

  int get X3 => this.Anonymous.Anonymous.X3;
  set X3(int value) => this.Anonymous.Anonymous.X3 = value;

  int get X4 => this.Anonymous.Anonymous.X4;
  set X4(int value) => this.Anonymous.Anonymous.X4 = value;

  int get X5 => this.Anonymous.Anonymous.X5;
  set X5(int value) => this.Anonymous.Anonymous.X5 = value;

  int get X6 => this.Anonymous.Anonymous.X6;
  set X6(int value) => this.Anonymous.Anonymous.X6 = value;

  int get X7 => this.Anonymous.Anonymous.X7;
  set X7(int value) => this.Anonymous.Anonymous.X7 = value;

  int get X8 => this.Anonymous.Anonymous.X8;
  set X8(int value) => this.Anonymous.Anonymous.X8 = value;

  int get X9 => this.Anonymous.Anonymous.X9;
  set X9(int value) => this.Anonymous.Anonymous.X9 = value;

  int get X10 => this.Anonymous.Anonymous.X10;
  set X10(int value) => this.Anonymous.Anonymous.X10 = value;

  int get X11 => this.Anonymous.Anonymous.X11;
  set X11(int value) => this.Anonymous.Anonymous.X11 = value;

  int get X12 => this.Anonymous.Anonymous.X12;
  set X12(int value) => this.Anonymous.Anonymous.X12 = value;

  int get X13 => this.Anonymous.Anonymous.X13;
  set X13(int value) => this.Anonymous.Anonymous.X13 = value;

  int get X14 => this.Anonymous.Anonymous.X14;
  set X14(int value) => this.Anonymous.Anonymous.X14 = value;

  int get X15 => this.Anonymous.Anonymous.X15;
  set X15(int value) => this.Anonymous.Anonymous.X15 = value;

  int get X16 => this.Anonymous.Anonymous.X16;
  set X16(int value) => this.Anonymous.Anonymous.X16 = value;

  int get X17 => this.Anonymous.Anonymous.X17;
  set X17(int value) => this.Anonymous.Anonymous.X17 = value;

  int get X18 => this.Anonymous.Anonymous.X18;
  set X18(int value) => this.Anonymous.Anonymous.X18 = value;

  int get X19 => this.Anonymous.Anonymous.X19;
  set X19(int value) => this.Anonymous.Anonymous.X19 = value;

  int get X20 => this.Anonymous.Anonymous.X20;
  set X20(int value) => this.Anonymous.Anonymous.X20 = value;

  int get X21 => this.Anonymous.Anonymous.X21;
  set X21(int value) => this.Anonymous.Anonymous.X21 = value;

  int get X22 => this.Anonymous.Anonymous.X22;
  set X22(int value) => this.Anonymous.Anonymous.X22 = value;

  int get X23 => this.Anonymous.Anonymous.X23;
  set X23(int value) => this.Anonymous.Anonymous.X23 = value;

  int get X24 => this.Anonymous.Anonymous.X24;
  set X24(int value) => this.Anonymous.Anonymous.X24 = value;

  int get X25 => this.Anonymous.Anonymous.X25;
  set X25(int value) => this.Anonymous.Anonymous.X25 = value;

  int get X26 => this.Anonymous.Anonymous.X26;
  set X26(int value) => this.Anonymous.Anonymous.X26 = value;

  int get X27 => this.Anonymous.Anonymous.X27;
  set X27(int value) => this.Anonymous.Anonymous.X27 = value;

  int get X28 => this.Anonymous.Anonymous.X28;
  set X28(int value) => this.Anonymous.Anonymous.X28 = value;

  int get Fp => this.Anonymous.Anonymous.Fp;
  set Fp(int value) => this.Anonymous.Anonymous.Fp = value;

  int get Lr => this.Anonymous.Anonymous.Lr;
  set Lr(int value) => this.Anonymous.Anonymous.Lr = value;
}

extension ARM64_NT_CONTEXT_Extension on ARM64_NT_CONTEXT {
  _ARM64_NT_CONTEXT__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _ARM64_NT_CONTEXT__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;

  Array<Uint64> get X => this.Anonymous.X;
  set X(Array<Uint64> value) => this.Anonymous.X = value;
}

/// {@category Struct}
class ARM64_NT_NEON128 extends Union {
  external _ARM64_NT_NEON128__Anonymous_e__Struct Anonymous;

  @Array(2)
  external Array<Double> D;

  @Array(4)
  external Array<Float> S;

  @Array(8)
  external Array<Uint16> H;

  @Array(16)
  external Array<Uint8> B;
}

/// {@category Struct}
class _ARM64_NT_NEON128__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int Low;

  @Int64()
  external int High;
}

extension ARM64_NT_NEON128_Extension on ARM64_NT_NEON128 {
  int get Low => this.Anonymous.Low;
  set Low(int value) => this.Anonymous.Low = value;

  int get High => this.Anonymous.High;
  set High(int value) => this.Anonymous.High = value;
}

/// {@category Struct}
class ArrayDimension extends Struct {
  @Int64()
  external int LowerBound;

  @Uint64()
  external int Length;

  @Uint64()
  external int Stride;
}

/// {@category Struct}
class CONTEXT extends Struct {
  @Uint64()
  external int P1Home;

  @Uint64()
  external int P2Home;

  @Uint64()
  external int P3Home;

  @Uint64()
  external int P4Home;

  @Uint64()
  external int P5Home;

  @Uint64()
  external int P6Home;

  @Uint32()
  external int ContextFlags;

  @Uint32()
  external int MxCsr;

  @Uint16()
  external int SegCs;

  @Uint16()
  external int SegDs;

  @Uint16()
  external int SegEs;

  @Uint16()
  external int SegFs;

  @Uint16()
  external int SegGs;

  @Uint16()
  external int SegSs;

  @Uint32()
  external int EFlags;

  @Uint64()
  external int Dr0;

  @Uint64()
  external int Dr1;

  @Uint64()
  external int Dr2;

  @Uint64()
  external int Dr3;

  @Uint64()
  external int Dr6;

  @Uint64()
  external int Dr7;

  @Uint64()
  external int Rax;

  @Uint64()
  external int Rcx;

  @Uint64()
  external int Rdx;

  @Uint64()
  external int Rbx;

  @Uint64()
  external int Rsp;

  @Uint64()
  external int Rbp;

  @Uint64()
  external int Rsi;

  @Uint64()
  external int Rdi;

  @Uint64()
  external int R8;

  @Uint64()
  external int R9;

  @Uint64()
  external int R10;

  @Uint64()
  external int R11;

  @Uint64()
  external int R12;

  @Uint64()
  external int R13;

  @Uint64()
  external int R14;

  @Uint64()
  external int R15;

  @Uint64()
  external int Rip;

  external _CONTEXT__Anonymous_e__Union Anonymous;

  @Array(26)
  external Array<M128A> VectorRegister;

  @Uint64()
  external int VectorControl;

  @Uint64()
  external int DebugControl;

  @Uint64()
  external int LastBranchToRip;

  @Uint64()
  external int LastBranchFromRip;

  @Uint64()
  external int LastExceptionToRip;

  @Uint64()
  external int LastExceptionFromRip;
}

/// {@category Struct}
class _CONTEXT__Anonymous_e__Union extends Union {
  external _CONTEXT__Anonymous_e__Union__Anonymous_e__Struct Anonymous;

  @Array(31)
  external Array<Uint64> X;
}

/// {@category Struct}
class _CONTEXT__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int X0;

  @Uint64()
  external int X1;

  @Uint64()
  external int X2;

  @Uint64()
  external int X3;

  @Uint64()
  external int X4;

  @Uint64()
  external int X5;

  @Uint64()
  external int X6;

  @Uint64()
  external int X7;

  @Uint64()
  external int X8;

  @Uint64()
  external int X9;

  @Uint64()
  external int X10;

  @Uint64()
  external int X11;

  @Uint64()
  external int X12;

  @Uint64()
  external int X13;

  @Uint64()
  external int X14;

  @Uint64()
  external int X15;

  @Uint64()
  external int X16;

  @Uint64()
  external int X17;

  @Uint64()
  external int X18;

  @Uint64()
  external int X19;

  @Uint64()
  external int X20;

  @Uint64()
  external int X21;

  @Uint64()
  external int X22;

  @Uint64()
  external int X23;

  @Uint64()
  external int X24;

  @Uint64()
  external int X25;

  @Uint64()
  external int X26;

  @Uint64()
  external int X27;

  @Uint64()
  external int X28;

  @Uint64()
  external int Fp;

  @Uint64()
  external int Lr;
}

extension CONTEXT__Anonymous_e__Union_Extension on CONTEXT {
  int get X0 => this.Anonymous.Anonymous.X0;
  set X0(int value) => this.Anonymous.Anonymous.X0 = value;

  int get X1 => this.Anonymous.Anonymous.X1;
  set X1(int value) => this.Anonymous.Anonymous.X1 = value;

  int get X2 => this.Anonymous.Anonymous.X2;
  set X2(int value) => this.Anonymous.Anonymous.X2 = value;

  int get X3 => this.Anonymous.Anonymous.X3;
  set X3(int value) => this.Anonymous.Anonymous.X3 = value;

  int get X4 => this.Anonymous.Anonymous.X4;
  set X4(int value) => this.Anonymous.Anonymous.X4 = value;

  int get X5 => this.Anonymous.Anonymous.X5;
  set X5(int value) => this.Anonymous.Anonymous.X5 = value;

  int get X6 => this.Anonymous.Anonymous.X6;
  set X6(int value) => this.Anonymous.Anonymous.X6 = value;

  int get X7 => this.Anonymous.Anonymous.X7;
  set X7(int value) => this.Anonymous.Anonymous.X7 = value;

  int get X8 => this.Anonymous.Anonymous.X8;
  set X8(int value) => this.Anonymous.Anonymous.X8 = value;

  int get X9 => this.Anonymous.Anonymous.X9;
  set X9(int value) => this.Anonymous.Anonymous.X9 = value;

  int get X10 => this.Anonymous.Anonymous.X10;
  set X10(int value) => this.Anonymous.Anonymous.X10 = value;

  int get X11 => this.Anonymous.Anonymous.X11;
  set X11(int value) => this.Anonymous.Anonymous.X11 = value;

  int get X12 => this.Anonymous.Anonymous.X12;
  set X12(int value) => this.Anonymous.Anonymous.X12 = value;

  int get X13 => this.Anonymous.Anonymous.X13;
  set X13(int value) => this.Anonymous.Anonymous.X13 = value;

  int get X14 => this.Anonymous.Anonymous.X14;
  set X14(int value) => this.Anonymous.Anonymous.X14 = value;

  int get X15 => this.Anonymous.Anonymous.X15;
  set X15(int value) => this.Anonymous.Anonymous.X15 = value;

  int get X16 => this.Anonymous.Anonymous.X16;
  set X16(int value) => this.Anonymous.Anonymous.X16 = value;

  int get X17 => this.Anonymous.Anonymous.X17;
  set X17(int value) => this.Anonymous.Anonymous.X17 = value;

  int get X18 => this.Anonymous.Anonymous.X18;
  set X18(int value) => this.Anonymous.Anonymous.X18 = value;

  int get X19 => this.Anonymous.Anonymous.X19;
  set X19(int value) => this.Anonymous.Anonymous.X19 = value;

  int get X20 => this.Anonymous.Anonymous.X20;
  set X20(int value) => this.Anonymous.Anonymous.X20 = value;

  int get X21 => this.Anonymous.Anonymous.X21;
  set X21(int value) => this.Anonymous.Anonymous.X21 = value;

  int get X22 => this.Anonymous.Anonymous.X22;
  set X22(int value) => this.Anonymous.Anonymous.X22 = value;

  int get X23 => this.Anonymous.Anonymous.X23;
  set X23(int value) => this.Anonymous.Anonymous.X23 = value;

  int get X24 => this.Anonymous.Anonymous.X24;
  set X24(int value) => this.Anonymous.Anonymous.X24 = value;

  int get X25 => this.Anonymous.Anonymous.X25;
  set X25(int value) => this.Anonymous.Anonymous.X25 = value;

  int get X26 => this.Anonymous.Anonymous.X26;
  set X26(int value) => this.Anonymous.Anonymous.X26 = value;

  int get X27 => this.Anonymous.Anonymous.X27;
  set X27(int value) => this.Anonymous.Anonymous.X27 = value;

  int get X28 => this.Anonymous.Anonymous.X28;
  set X28(int value) => this.Anonymous.Anonymous.X28 = value;

  int get Fp => this.Anonymous.Anonymous.Fp;
  set Fp(int value) => this.Anonymous.Anonymous.Fp = value;

  int get Lr => this.Anonymous.Anonymous.Lr;
  set Lr(int value) => this.Anonymous.Anonymous.Lr = value;
}

extension CONTEXT_Extension on CONTEXT {
  _CONTEXT__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(_CONTEXT__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;

  Array<Uint64> get X => this.Anonymous.X;
  set X(Array<Uint64> value) => this.Anonymous.X = value;
}

/// {@category Struct}
class CPU_INFORMATION extends Union {
  external _CPU_INFORMATION__X86CpuInfo_e__Struct X86CpuInfo;

  external _CPU_INFORMATION__OtherCpuInfo_e__Struct OtherCpuInfo;
}

/// {@category Struct}
class _CPU_INFORMATION__X86CpuInfo_e__Struct extends Struct {
  @Array(3)
  external Array<Uint32> VendorId;

  @Uint32()
  external int VersionInformation;

  @Uint32()
  external int FeatureInformation;

  @Uint32()
  external int AMDExtendedCpuFeatures;
}

extension CPU_INFORMATION_Extension on CPU_INFORMATION {
  Array<Uint32> get VendorId => this.X86CpuInfo.VendorId;
  set VendorId(Array<Uint32> value) => this.X86CpuInfo.VendorId = value;

  int get VersionInformation => this.X86CpuInfo.VersionInformation;
  set VersionInformation(int value) =>
      this.X86CpuInfo.VersionInformation = value;

  int get FeatureInformation => this.X86CpuInfo.FeatureInformation;
  set FeatureInformation(int value) =>
      this.X86CpuInfo.FeatureInformation = value;

  int get AMDExtendedCpuFeatures => this.X86CpuInfo.AMDExtendedCpuFeatures;
  set AMDExtendedCpuFeatures(int value) =>
      this.X86CpuInfo.AMDExtendedCpuFeatures = value;
}

/// {@category Struct}
@Packed(4)
class _CPU_INFORMATION__OtherCpuInfo_e__Struct extends Struct {
  @Array(2)
  external Array<Uint64> ProcessorFeatures;
}

extension CPU_INFORMATION_Extension_1 on CPU_INFORMATION {
  Array<Uint64> get ProcessorFeatures => this.OtherCpuInfo.ProcessorFeatures;
  set ProcessorFeatures(Array<Uint64> value) =>
      this.OtherCpuInfo.ProcessorFeatures = value;
}

/// {@category Struct}
class CREATE_PROCESS_DEBUG_INFO extends Struct {
  @IntPtr()
  external int hFile;

  @IntPtr()
  external int hProcess;

  @IntPtr()
  external int hThread;

  external Pointer lpBaseOfImage;

  @Uint32()
  external int dwDebugInfoFileOffset;

  @Uint32()
  external int nDebugInfoSize;

  external Pointer lpThreadLocalBase;

  external Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress;

  external Pointer lpImageName;

  @Uint16()
  external int fUnicode;
}

/// {@category Struct}
class CREATE_THREAD_DEBUG_INFO extends Struct {
  @IntPtr()
  external int hThread;

  external Pointer lpThreadLocalBase;

  external Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress;
}

/// {@category Struct}
class DBGHELP_DATA_REPORT_STRUCT extends Struct {
  external Pointer<Utf16> pBinPathNonExist;

  external Pointer<Utf16> pSymbolPathNonExist;
}

/// {@category Struct}
class DBGKD_DEBUG_DATA_HEADER32 extends Struct {
  external LIST_ENTRY32 $List;

  @Uint32()
  external int OwnerTag;

  @Uint32()
  external int Size;
}

/// {@category Struct}
class DBGKD_DEBUG_DATA_HEADER64 extends Struct {
  external LIST_ENTRY64 $List;

  @Uint32()
  external int OwnerTag;

  @Uint32()
  external int Size;
}

/// {@category Struct}
class DBGKD_GET_VERSION32 extends Struct {
  @Uint16()
  external int MajorVersion;

  @Uint16()
  external int MinorVersion;

  @Uint16()
  external int ProtocolVersion;

  @Uint16()
  external int Flags;

  @Uint32()
  external int KernBase;

  @Uint32()
  external int PsLoadedModuleList;

  @Uint16()
  external int MachineType;

  @Uint16()
  external int ThCallbackStack;

  @Uint16()
  external int NextCallback;

  @Uint16()
  external int FramePointer;

  @Uint32()
  external int KiCallUserMode;

  @Uint32()
  external int KeUserCallbackDispatcher;

  @Uint32()
  external int BreakpointWithStatus;

  @Uint32()
  external int DebuggerDataList;
}

/// {@category Struct}
class DBGKD_GET_VERSION64 extends Struct {
  @Uint16()
  external int MajorVersion;

  @Uint16()
  external int MinorVersion;

  @Uint8()
  external int ProtocolVersion;

  @Uint8()
  external int KdSecondaryVersion;

  @Uint16()
  external int Flags;

  @Uint16()
  external int MachineType;

  @Uint8()
  external int MaxPacketType;

  @Uint8()
  external int MaxStateChange;

  @Uint8()
  external int MaxManipulate;

  @Uint8()
  external int Simulation;

  @Array(1)
  external Array<Uint16> Unused;

  @Uint64()
  external int KernBase;

  @Uint64()
  external int PsLoadedModuleList;

  @Uint64()
  external int DebuggerDataList;
}

/// {@category Struct}
class DEBUG_BREAKPOINT_PARAMETERS extends Struct {
  @Uint64()
  external int Offset;

  @Uint32()
  external int Id;

  @Uint32()
  external int BreakType;

  @Uint32()
  external int ProcType;

  @Uint32()
  external int Flags;

  @Uint32()
  external int DataSize;

  @Uint32()
  external int DataAccessType;

  @Uint32()
  external int PassCount;

  @Uint32()
  external int CurrentPassCount;

  @Uint32()
  external int MatchThread;

  @Uint32()
  external int CommandSize;

  @Uint32()
  external int OffsetExpressionSize;
}

/// {@category Struct}
class DEBUG_CACHED_SYMBOL_INFO extends Struct {
  @Uint64()
  external int ModBase;

  @Uint64()
  external int Arg1;

  @Uint64()
  external int Arg2;

  @Uint32()
  external int Id;

  @Uint32()
  external int Arg3;
}

/// {@category Struct}
class DEBUG_CLIENT_CONTEXT extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int eClient;
}

/// {@category Struct}
class DEBUG_CREATE_PROCESS_OPTIONS extends Struct {
  @Uint32()
  external int CreateFlags;

  @Uint32()
  external int EngCreateFlags;

  @Uint32()
  external int VerifierFlags;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class DEBUG_EVENT extends Struct {
  @Uint32()
  external int dwDebugEventCode;

  @Uint32()
  external int dwProcessId;

  @Uint32()
  external int dwThreadId;

  external _DEBUG_EVENT__u_e__Union u;
}

/// {@category Struct}
class _DEBUG_EVENT__u_e__Union extends Union {
  external EXCEPTION_DEBUG_INFO Exception;

  external CREATE_THREAD_DEBUG_INFO CreateThread;

  external CREATE_PROCESS_DEBUG_INFO CreateProcessInfo;

  external EXIT_THREAD_DEBUG_INFO ExitThread;

  external EXIT_PROCESS_DEBUG_INFO ExitProcess;

  external LOAD_DLL_DEBUG_INFO LoadDll;

  external UNLOAD_DLL_DEBUG_INFO UnloadDll;

  external OUTPUT_DEBUG_STRING_INFO DebugString;

  external RIP_INFO RipInfo;
}

extension DEBUG_EVENT_Extension on DEBUG_EVENT {
  EXCEPTION_DEBUG_INFO get Exception => this.u.Exception;
  set Exception(EXCEPTION_DEBUG_INFO value) => this.u.Exception = value;

  CREATE_THREAD_DEBUG_INFO get CreateThread => this.u.CreateThread;
  set CreateThread(CREATE_THREAD_DEBUG_INFO value) =>
      this.u.CreateThread = value;

  CREATE_PROCESS_DEBUG_INFO get CreateProcessInfo => this.u.CreateProcessInfo;
  set CreateProcessInfo(CREATE_PROCESS_DEBUG_INFO value) =>
      this.u.CreateProcessInfo = value;

  EXIT_THREAD_DEBUG_INFO get ExitThread => this.u.ExitThread;
  set ExitThread(EXIT_THREAD_DEBUG_INFO value) => this.u.ExitThread = value;

  EXIT_PROCESS_DEBUG_INFO get ExitProcess => this.u.ExitProcess;
  set ExitProcess(EXIT_PROCESS_DEBUG_INFO value) => this.u.ExitProcess = value;

  LOAD_DLL_DEBUG_INFO get LoadDll => this.u.LoadDll;
  set LoadDll(LOAD_DLL_DEBUG_INFO value) => this.u.LoadDll = value;

  UNLOAD_DLL_DEBUG_INFO get UnloadDll => this.u.UnloadDll;
  set UnloadDll(UNLOAD_DLL_DEBUG_INFO value) => this.u.UnloadDll = value;

  OUTPUT_DEBUG_STRING_INFO get DebugString => this.u.DebugString;
  set DebugString(OUTPUT_DEBUG_STRING_INFO value) => this.u.DebugString = value;

  RIP_INFO get RipInfo => this.u.RipInfo;
  set RipInfo(RIP_INFO value) => this.u.RipInfo = value;
}

/// {@category Struct}
class DEBUG_EVENT_CONTEXT extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int ProcessEngineId;

  @Uint32()
  external int ThreadEngineId;

  @Uint32()
  external int FrameEngineId;
}

/// {@category Struct}
class DEBUG_EXCEPTION_FILTER_PARAMETERS extends Struct {
  @Uint32()
  external int ExecutionOption;

  @Uint32()
  external int ContinueOption;

  @Uint32()
  external int TextSize;

  @Uint32()
  external int CommandSize;

  @Uint32()
  external int SecondCommandSize;

  @Uint32()
  external int ExceptionCode;
}

/// {@category Struct}
class DEBUG_GET_TEXT_COMPLETIONS_IN extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int MatchCountLimit;

  @Array(3)
  external Array<Uint64> Reserved;
}

/// {@category Struct}
class DEBUG_GET_TEXT_COMPLETIONS_OUT extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int ReplaceIndex;

  @Uint32()
  external int MatchCount;

  @Uint32()
  external int Reserved1;

  @Array(2)
  external Array<Uint64> Reserved2;
}

/// {@category Struct}
class DEBUG_HANDLE_DATA_BASIC extends Struct {
  @Uint32()
  external int TypeNameSize;

  @Uint32()
  external int ObjectNameSize;

  @Uint32()
  external int Attributes;

  @Uint32()
  external int GrantedAccess;

  @Uint32()
  external int HandleCount;

  @Uint32()
  external int PointerCount;
}

/// {@category Struct}
class DEBUG_LAST_EVENT_INFO_BREAKPOINT extends Struct {
  @Uint32()
  external int Id;
}

/// {@category Struct}
class DEBUG_LAST_EVENT_INFO_EXCEPTION extends Struct {
  external EXCEPTION_RECORD64 ExceptionRecord;

  @Uint32()
  external int FirstChance;
}

/// {@category Struct}
class DEBUG_LAST_EVENT_INFO_EXIT_PROCESS extends Struct {
  @Uint32()
  external int ExitCode;
}

/// {@category Struct}
class DEBUG_LAST_EVENT_INFO_EXIT_THREAD extends Struct {
  @Uint32()
  external int ExitCode;
}

/// {@category Struct}
class DEBUG_LAST_EVENT_INFO_LOAD_MODULE extends Struct {
  @Uint64()
  external int Base;
}

/// {@category Struct}
class DEBUG_LAST_EVENT_INFO_SERVICE_EXCEPTION extends Struct {
  @Uint32()
  external int Kind;

  @Uint32()
  external int DataSize;

  @Uint64()
  external int Address;
}

/// {@category Struct}
class DEBUG_LAST_EVENT_INFO_SYSTEM_ERROR extends Struct {
  @Uint32()
  external int Error;

  @Uint32()
  external int Level;
}

/// {@category Struct}
class DEBUG_LAST_EVENT_INFO_UNLOAD_MODULE extends Struct {
  @Uint64()
  external int Base;
}

/// {@category Struct}
class DEBUG_MODULE_AND_ID extends Struct {
  @Uint64()
  external int ModuleBase;

  @Uint64()
  external int Id;
}

/// {@category Struct}
class DEBUG_MODULE_PARAMETERS extends Struct {
  @Uint64()
  external int Base;

  @Uint32()
  external int Size;

  @Uint32()
  external int TimeDateStamp;

  @Uint32()
  external int Checksum;

  @Uint32()
  external int Flags;

  @Uint32()
  external int SymbolType;

  @Uint32()
  external int ImageNameSize;

  @Uint32()
  external int ModuleNameSize;

  @Uint32()
  external int LoadedImageNameSize;

  @Uint32()
  external int SymbolFileNameSize;

  @Uint32()
  external int MappedImageNameSize;

  @Array(2)
  external Array<Uint64> Reserved;
}

/// {@category Struct}
class DEBUG_OFFSET_REGION extends Struct {
  @Uint64()
  external int Base;

  @Uint64()
  external int Size;
}

/// {@category Struct}
class DEBUG_PROCESSOR_IDENTIFICATION_ALL extends Union {
  external DEBUG_PROCESSOR_IDENTIFICATION_ALPHA Alpha;

  external DEBUG_PROCESSOR_IDENTIFICATION_AMD64 Amd64;

  external DEBUG_PROCESSOR_IDENTIFICATION_IA64 Ia64;

  external DEBUG_PROCESSOR_IDENTIFICATION_X86 X86;

  external DEBUG_PROCESSOR_IDENTIFICATION_ARM Arm;

  external DEBUG_PROCESSOR_IDENTIFICATION_ARM64 Arm64;
}

/// {@category Struct}
class DEBUG_PROCESSOR_IDENTIFICATION_ALPHA extends Struct {
  @Uint32()
  external int Type;

  @Uint32()
  external int Revision;
}

/// {@category Struct}
class DEBUG_PROCESSOR_IDENTIFICATION_AMD64 extends Struct {
  @Uint32()
  external int Family;

  @Uint32()
  external int Model;

  @Uint32()
  external int Stepping;

  @Array(16)
  external Array<Uint8> VendorString;
}

/// {@category Struct}
class DEBUG_PROCESSOR_IDENTIFICATION_ARM extends Struct {
  @Uint32()
  external int Model;

  @Uint32()
  external int Revision;

  @Array(16)
  external Array<Uint8> VendorString;
}

/// {@category Struct}
class DEBUG_PROCESSOR_IDENTIFICATION_ARM64 extends Struct {
  @Uint32()
  external int Model;

  @Uint32()
  external int Revision;

  @Array(16)
  external Array<Uint8> VendorString;
}

/// {@category Struct}
class DEBUG_PROCESSOR_IDENTIFICATION_IA64 extends Struct {
  @Uint32()
  external int Model;

  @Uint32()
  external int Revision;

  @Uint32()
  external int Family;

  @Uint32()
  external int ArchRev;

  @Array(16)
  external Array<Uint8> VendorString;
}

/// {@category Struct}
class DEBUG_PROCESSOR_IDENTIFICATION_X86 extends Struct {
  @Uint32()
  external int Family;

  @Uint32()
  external int Model;

  @Uint32()
  external int Stepping;

  @Array(16)
  external Array<Uint8> VendorString;
}

/// {@category Struct}
class DEBUG_READ_USER_MINIDUMP_STREAM extends Struct {
  @Uint32()
  external int StreamType;

  @Uint32()
  external int Flags;

  @Uint64()
  external int Offset;

  external Pointer Buffer;

  @Uint32()
  external int BufferSize;

  @Uint32()
  external int BufferUsed;
}

/// {@category Struct}
class DEBUG_REGISTER_DESCRIPTION extends Struct {
  @Uint32()
  external int Type;

  @Uint32()
  external int Flags;

  @Uint32()
  external int SubregMaster;

  @Uint32()
  external int SubregLength;

  @Uint64()
  external int SubregMask;

  @Uint32()
  external int SubregShift;

  @Uint32()
  external int Reserved0;
}

/// {@category Struct}
class DEBUG_SPECIFIC_FILTER_PARAMETERS extends Struct {
  @Uint32()
  external int ExecutionOption;

  @Uint32()
  external int ContinueOption;

  @Uint32()
  external int TextSize;

  @Uint32()
  external int CommandSize;

  @Uint32()
  external int ArgumentSize;
}

/// {@category Struct}
class DEBUG_STACK_FRAME extends Struct {
  @Uint64()
  external int InstructionOffset;

  @Uint64()
  external int ReturnOffset;

  @Uint64()
  external int FrameOffset;

  @Uint64()
  external int StackOffset;

  @Uint64()
  external int FuncTableEntry;

  @Array(4)
  external Array<Uint64> Params;

  @Array(6)
  external Array<Uint64> Reserved;

  @Int32()
  external int Virtual;

  @Uint32()
  external int FrameNumber;
}

/// {@category Struct}
class DEBUG_STACK_FRAME_EX extends Struct {
  @Uint64()
  external int InstructionOffset;

  @Uint64()
  external int ReturnOffset;

  @Uint64()
  external int FrameOffset;

  @Uint64()
  external int StackOffset;

  @Uint64()
  external int FuncTableEntry;

  @Array(4)
  external Array<Uint64> Params;

  @Array(6)
  external Array<Uint64> Reserved;

  @Int32()
  external int Virtual;

  @Uint32()
  external int FrameNumber;

  @Uint32()
  external int InlineFrameContext;

  @Uint32()
  external int Reserved1;
}

/// {@category Struct}
class DEBUG_SYMBOL_ENTRY extends Struct {
  @Uint64()
  external int ModuleBase;

  @Uint64()
  external int Offset;

  @Uint64()
  external int Id;

  @Uint64()
  external int Arg64;

  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint32()
  external int TypeId;

  @Uint32()
  external int NameSize;

  @Uint32()
  external int Token;

  @Uint32()
  external int Tag;

  @Uint32()
  external int Arg32;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class DEBUG_SYMBOL_PARAMETERS extends Struct {
  @Uint64()
  external int Module;

  @Uint32()
  external int TypeId;

  @Uint32()
  external int ParentSymbol;

  @Uint32()
  external int SubElements;

  @Uint32()
  external int Flags;

  @Uint64()
  external int Reserved;
}

/// {@category Struct}
class DEBUG_SYMBOL_SOURCE_ENTRY extends Struct {
  @Uint64()
  external int ModuleBase;

  @Uint64()
  external int Offset;

  @Uint64()
  external int FileNameId;

  @Uint64()
  external int EngineInternal;

  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint32()
  external int FileNameSize;

  @Uint32()
  external int StartLine;

  @Uint32()
  external int EndLine;

  @Uint32()
  external int StartColumn;

  @Uint32()
  external int EndColumn;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class DEBUG_THREAD_BASIC_INFORMATION extends Struct {
  @Uint32()
  external int Valid;

  @Uint32()
  external int ExitStatus;

  @Uint32()
  external int PriorityClass;

  @Uint32()
  external int Priority;

  @Uint64()
  external int CreateTime;

  @Uint64()
  external int ExitTime;

  @Uint64()
  external int KernelTime;

  @Uint64()
  external int UserTime;

  @Uint64()
  external int StartOffset;

  @Uint64()
  external int Affinity;
}

/// {@category Struct}
class DEBUG_TYPED_DATA extends Struct {
  @Uint64()
  external int ModBase;

  @Uint64()
  external int Offset;

  @Uint64()
  external int EngineHandle;

  @Uint64()
  external int Data;

  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint32()
  external int TypeId;

  @Uint32()
  external int BaseTypeId;

  @Uint32()
  external int Tag;

  @Uint32()
  external int Register;

  @Array(9)
  external Array<Uint64> Internal;
}

/// {@category Struct}
class DEBUG_VALUE extends Struct {
  external _DEBUG_VALUE__Anonymous_e__Union Anonymous;

  @Uint32()
  external int TailOfRawBytes;

  @Uint32()
  external int Type;
}

/// {@category Struct}
class _DEBUG_VALUE__Anonymous_e__Union extends Union {
  @Uint8()
  external int I8;

  @Uint16()
  external int I16;

  @Uint32()
  external int I32;

  external _DEBUG_VALUE__Anonymous_e__Union__Anonymous_e__Struct Anonymous;

  @Float()
  external double F32;

  @Double()
  external double F64;

  @Array(10)
  external Array<Uint8> F80Bytes;

  @Array(11)
  external Array<Uint8> F82Bytes;

  @Array(16)
  external Array<Uint8> F128Bytes;

  @Array(16)
  external Array<Uint8> VI8;

  @Array(8)
  external Array<Uint16> VI16;

  @Array(4)
  external Array<Uint32> VI32;

  @Array(2)
  external Array<Uint64> VI64;

  @Array(4)
  external Array<Float> VF32;

  @Array(2)
  external Array<Double> VF64;

  external _DEBUG_VALUE__Anonymous_e__Union__I64Parts32_e__Struct I64Parts32;

  external _DEBUG_VALUE__Anonymous_e__Union__F128Parts64_e__Struct F128Parts64;

  @Array(24)
  external Array<Uint8> RawBytes;
}

/// {@category Struct}
class _DEBUG_VALUE__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int I64;

  @Int32()
  external int Nat;
}

extension DEBUG_VALUE__Anonymous_e__Union_Extension on DEBUG_VALUE {
  int get I64 => this.Anonymous.Anonymous.I64;
  set I64(int value) => this.Anonymous.Anonymous.I64 = value;

  int get Nat => this.Anonymous.Anonymous.Nat;
  set Nat(int value) => this.Anonymous.Anonymous.Nat = value;
}

/// {@category Struct}
class _DEBUG_VALUE__Anonymous_e__Union__I64Parts32_e__Struct extends Struct {
  @Uint32()
  external int LowPart;

  @Uint32()
  external int HighPart;
}

extension DEBUG_VALUE__Anonymous_e__Union_Extension_1 on DEBUG_VALUE {
  int get LowPart => this.Anonymous.I64Parts32.LowPart;
  set LowPart(int value) => this.Anonymous.I64Parts32.LowPart = value;

  int get HighPart => this.Anonymous.I64Parts32.HighPart;
  set HighPart(int value) => this.Anonymous.I64Parts32.HighPart = value;
}

/// {@category Struct}
class _DEBUG_VALUE__Anonymous_e__Union__F128Parts64_e__Struct extends Struct {
  @Uint64()
  external int LowPart;

  @Int64()
  external int HighPart;
}

extension DEBUG_VALUE__Anonymous_e__Union_Extension_2 on DEBUG_VALUE {
  int get LowPart => this.Anonymous.F128Parts64.LowPart;
  set LowPart(int value) => this.Anonymous.F128Parts64.LowPart = value;

  int get HighPart => this.Anonymous.F128Parts64.HighPart;
  set HighPart(int value) => this.Anonymous.F128Parts64.HighPart = value;
}

extension DEBUG_VALUE_Extension on DEBUG_VALUE {
  int get I8 => this.Anonymous.I8;
  set I8(int value) => this.Anonymous.I8 = value;

  int get I16 => this.Anonymous.I16;
  set I16(int value) => this.Anonymous.I16 = value;

  int get I32 => this.Anonymous.I32;
  set I32(int value) => this.Anonymous.I32 = value;

  _DEBUG_VALUE__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(_DEBUG_VALUE__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;

  double get F32 => this.Anonymous.F32;
  set F32(double value) => this.Anonymous.F32 = value;

  double get F64 => this.Anonymous.F64;
  set F64(double value) => this.Anonymous.F64 = value;

  Array<Uint8> get F80Bytes => this.Anonymous.F80Bytes;
  set F80Bytes(Array<Uint8> value) => this.Anonymous.F80Bytes = value;

  Array<Uint8> get F82Bytes => this.Anonymous.F82Bytes;
  set F82Bytes(Array<Uint8> value) => this.Anonymous.F82Bytes = value;

  Array<Uint8> get F128Bytes => this.Anonymous.F128Bytes;
  set F128Bytes(Array<Uint8> value) => this.Anonymous.F128Bytes = value;

  Array<Uint8> get VI8 => this.Anonymous.VI8;
  set VI8(Array<Uint8> value) => this.Anonymous.VI8 = value;

  Array<Uint16> get VI16 => this.Anonymous.VI16;
  set VI16(Array<Uint16> value) => this.Anonymous.VI16 = value;

  Array<Uint32> get VI32 => this.Anonymous.VI32;
  set VI32(Array<Uint32> value) => this.Anonymous.VI32 = value;

  Array<Uint64> get VI64 => this.Anonymous.VI64;
  set VI64(Array<Uint64> value) => this.Anonymous.VI64 = value;

  Array<Float> get VF32 => this.Anonymous.VF32;
  set VF32(Array<Float> value) => this.Anonymous.VF32 = value;

  Array<Double> get VF64 => this.Anonymous.VF64;
  set VF64(Array<Double> value) => this.Anonymous.VF64 = value;

  _DEBUG_VALUE__Anonymous_e__Union__I64Parts32_e__Struct get I64Parts32 =>
      this.Anonymous.I64Parts32;
  set I64Parts32(
          _DEBUG_VALUE__Anonymous_e__Union__I64Parts32_e__Struct value) =>
      this.Anonymous.I64Parts32 = value;

  _DEBUG_VALUE__Anonymous_e__Union__F128Parts64_e__Struct get F128Parts64 =>
      this.Anonymous.F128Parts64;
  set F128Parts64(
          _DEBUG_VALUE__Anonymous_e__Union__F128Parts64_e__Struct value) =>
      this.Anonymous.F128Parts64 = value;

  Array<Uint8> get RawBytes => this.Anonymous.RawBytes;
  set RawBytes(Array<Uint8> value) => this.Anonymous.RawBytes = value;
}

/// {@category Struct}
class DISPATCHER_CONTEXT extends Struct {
  @Uint64()
  external int ControlPc;

  @Uint64()
  external int ImageBase;

  external Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY> FunctionEntry;

  @Uint64()
  external int EstablisherFrame;

  @Uint64()
  external int TargetIp;

  external Pointer<CONTEXT> ContextRecord;

  external Pointer<NativeFunction<EXCEPTION_ROUTINE>> LanguageHandler;

  external Pointer HandlerData;

  external Pointer<UNWIND_HISTORY_TABLE> HistoryTable;

  @Uint32()
  external int ScopeIndex;

  @Uint32()
  external int Fill0;
}

/// {@category Struct}
class DUMP_FILE_ATTRIBUTES extends Union {
  external _DUMP_FILE_ATTRIBUTES__Anonymous_e__Struct Anonymous;

  @Uint32()
  external int Attributes;
}

/// {@category Struct}
class _DUMP_FILE_ATTRIBUTES__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension DUMP_FILE_ATTRIBUTES_Extension on DUMP_FILE_ATTRIBUTES {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class DUMP_HEADER32 extends Struct {
  @Uint32()
  external int Signature;

  @Uint32()
  external int ValidDump;

  @Uint32()
  external int MajorVersion;

  @Uint32()
  external int MinorVersion;

  @Uint32()
  external int DirectoryTableBase;

  @Uint32()
  external int PfnDataBase;

  @Uint32()
  external int PsLoadedModuleList;

  @Uint32()
  external int PsActiveProcessHead;

  @Uint32()
  external int MachineImageType;

  @Uint32()
  external int NumberProcessors;

  @Uint32()
  external int BugCheckCode;

  @Uint32()
  external int BugCheckParameter1;

  @Uint32()
  external int BugCheckParameter2;

  @Uint32()
  external int BugCheckParameter3;

  @Uint32()
  external int BugCheckParameter4;

  @Array(32)
  external Array<Uint8> VersionUser;

  @Uint8()
  external int PaeEnabled;

  @Uint8()
  external int KdSecondaryVersion;

  @Array(2)
  external Array<Uint8> Spare3;

  @Uint32()
  external int KdDebuggerDataBlock;

  external _DUMP_HEADER32__Anonymous_e__Union Anonymous;

  @Array(1200)
  external Array<Uint8> ContextRecord;

  external EXCEPTION_RECORD32 Exception;

  @Array(128)
  external Array<Uint8> Comment;

  external DUMP_FILE_ATTRIBUTES Attributes;

  @Uint32()
  external int BootId;

  @Array(1760)
  external Array<Uint8> reserved0;

  @Uint32()
  external int DumpType;

  @Uint32()
  external int MiniDumpFields;

  @Uint32()
  external int SecondaryDataState;

  @Uint32()
  external int ProductType;

  @Uint32()
  external int SuiteMask;

  @Uint32()
  external int WriterStatus;

  @Int64()
  external int RequiredDumpSpace;

  @Array(16)
  external Array<Uint8> reserved2;

  @Int64()
  external int SystemUpTime;

  @Int64()
  external int SystemTime;

  @Array(56)
  external Array<Uint8> reserved3;
}

/// {@category Struct}
class _DUMP_HEADER32__Anonymous_e__Union extends Union {
  external PHYSICAL_MEMORY_DESCRIPTOR32 PhysicalMemoryBlock;

  @Array(700)
  external Array<Uint8> PhysicalMemoryBlockBuffer;
}

extension DUMP_HEADER32_Extension on DUMP_HEADER32 {
  PHYSICAL_MEMORY_DESCRIPTOR32 get PhysicalMemoryBlock =>
      this.Anonymous.PhysicalMemoryBlock;
  set PhysicalMemoryBlock(PHYSICAL_MEMORY_DESCRIPTOR32 value) =>
      this.Anonymous.PhysicalMemoryBlock = value;

  Array<Uint8> get PhysicalMemoryBlockBuffer =>
      this.Anonymous.PhysicalMemoryBlockBuffer;
  set PhysicalMemoryBlockBuffer(Array<Uint8> value) =>
      this.Anonymous.PhysicalMemoryBlockBuffer = value;
}

/// {@category Struct}
class DUMP_HEADER64 extends Struct {
  @Uint32()
  external int Signature;

  @Uint32()
  external int ValidDump;

  @Uint32()
  external int MajorVersion;

  @Uint32()
  external int MinorVersion;

  @Uint64()
  external int DirectoryTableBase;

  @Uint64()
  external int PfnDataBase;

  @Uint64()
  external int PsLoadedModuleList;

  @Uint64()
  external int PsActiveProcessHead;

  @Uint32()
  external int MachineImageType;

  @Uint32()
  external int NumberProcessors;

  @Uint32()
  external int BugCheckCode;

  @Uint64()
  external int BugCheckParameter1;

  @Uint64()
  external int BugCheckParameter2;

  @Uint64()
  external int BugCheckParameter3;

  @Uint64()
  external int BugCheckParameter4;

  @Array(32)
  external Array<Uint8> VersionUser;

  @Uint64()
  external int KdDebuggerDataBlock;

  external _DUMP_HEADER64__Anonymous_e__Union Anonymous;

  @Array(3000)
  external Array<Uint8> ContextRecord;

  external EXCEPTION_RECORD64 Exception;

  @Uint32()
  external int DumpType;

  @Int64()
  external int RequiredDumpSpace;

  @Int64()
  external int SystemTime;

  @Array(128)
  external Array<Uint8> Comment;

  @Int64()
  external int SystemUpTime;

  @Uint32()
  external int MiniDumpFields;

  @Uint32()
  external int SecondaryDataState;

  @Uint32()
  external int ProductType;

  @Uint32()
  external int SuiteMask;

  @Uint32()
  external int WriterStatus;

  @Uint8()
  external int Unused1;

  @Uint8()
  external int KdSecondaryVersion;

  @Array(2)
  external Array<Uint8> Unused;

  external DUMP_FILE_ATTRIBUTES Attributes;

  @Uint32()
  external int BootId;

  @Array(4008)
  external Array<Uint8> reserved0;
}

/// {@category Struct}
class _DUMP_HEADER64__Anonymous_e__Union extends Union {
  external PHYSICAL_MEMORY_DESCRIPTOR64 PhysicalMemoryBlock;

  @Array(700)
  external Array<Uint8> PhysicalMemoryBlockBuffer;
}

extension DUMP_HEADER64_Extension on DUMP_HEADER64 {
  PHYSICAL_MEMORY_DESCRIPTOR64 get PhysicalMemoryBlock =>
      this.Anonymous.PhysicalMemoryBlock;
  set PhysicalMemoryBlock(PHYSICAL_MEMORY_DESCRIPTOR64 value) =>
      this.Anonymous.PhysicalMemoryBlock = value;

  Array<Uint8> get PhysicalMemoryBlockBuffer =>
      this.Anonymous.PhysicalMemoryBlockBuffer;
  set PhysicalMemoryBlockBuffer(Array<Uint8> value) =>
      this.Anonymous.PhysicalMemoryBlockBuffer = value;
}

/// {@category Struct}
class DebugPropertyInfo extends Struct {
  @Uint32()
  external int m_dwValidFields;

  external Pointer<Utf16> m_bstrName;

  external Pointer<Utf16> m_bstrType;

  external Pointer<Utf16> m_bstrValue;

  external Pointer<Utf16> m_bstrFullName;

  @Uint32()
  external int m_dwAttrib;

  external Pointer<COMObject> m_pDebugProp;
}

/// {@category Struct}
class DebugStackFrameDescriptor extends Struct {
  external Pointer<COMObject> pdsf;

  @Uint32()
  external int dwMin;

  @Uint32()
  external int dwLim;

  @Int32()
  external int fFinal;

  external Pointer<COMObject> punkFinal;
}

/// {@category Struct}
class DebugStackFrameDescriptor64 extends Struct {
  external Pointer<COMObject> pdsf;

  @Uint64()
  external int dwMin;

  @Uint64()
  external int dwLim;

  @Int32()
  external int fFinal;

  external Pointer<COMObject> punkFinal;
}

/// {@category Struct}
class EXCEPTION_DEBUG_INFO extends Struct {
  external EXCEPTION_RECORD ExceptionRecord;

  @Uint32()
  external int dwFirstChance;
}

/// {@category Struct}
class EXCEPTION_POINTERS extends Struct {
  external Pointer<EXCEPTION_RECORD> ExceptionRecord;

  external Pointer<CONTEXT> ContextRecord;
}

/// {@category Struct}
class EXCEPTION_RECORD extends Struct {
  @Int32()
  external int ExceptionCode;

  @Uint32()
  external int ExceptionFlags;

  external Pointer<EXCEPTION_RECORD> ExceptionRecord;

  external Pointer ExceptionAddress;

  @Uint32()
  external int NumberParameters;

  @Array(15)
  external Array<IntPtr> ExceptionInformation;
}

/// {@category Struct}
class EXCEPTION_RECORD32 extends Struct {
  @Int32()
  external int ExceptionCode;

  @Uint32()
  external int ExceptionFlags;

  @Uint32()
  external int ExceptionRecord;

  @Uint32()
  external int ExceptionAddress;

  @Uint32()
  external int NumberParameters;

  @Array(15)
  external Array<Uint32> ExceptionInformation;
}

/// {@category Struct}
class EXCEPTION_RECORD64 extends Struct {
  @Int32()
  external int ExceptionCode;

  @Uint32()
  external int ExceptionFlags;

  @Uint64()
  external int ExceptionRecord;

  @Uint64()
  external int ExceptionAddress;

  @Uint32()
  external int NumberParameters;

  @Uint32()
  external int unusedAlignment;

  @Array(15)
  external Array<Uint64> ExceptionInformation;
}

/// {@category Struct}
class EXIT_PROCESS_DEBUG_INFO extends Struct {
  @Uint32()
  external int dwExitCode;
}

/// {@category Struct}
class EXIT_THREAD_DEBUG_INFO extends Struct {
  @Uint32()
  external int dwExitCode;
}

/// {@category Struct}
class EXTSTACKTRACE extends Struct {
  @Uint32()
  external int FramePointer;

  @Uint32()
  external int ProgramCounter;

  @Uint32()
  external int ReturnAddress;

  @Array(4)
  external Array<Uint32> Args;
}

/// {@category Struct}
class EXTSTACKTRACE32 extends Struct {
  @Uint32()
  external int FramePointer;

  @Uint32()
  external int ProgramCounter;

  @Uint32()
  external int ReturnAddress;

  @Array(4)
  external Array<Uint32> Args;
}

/// {@category Struct}
class EXTSTACKTRACE64 extends Struct {
  @Uint64()
  external int FramePointer;

  @Uint64()
  external int ProgramCounter;

  @Uint64()
  external int ReturnAddress;

  @Array(4)
  external Array<Uint64> Args;
}

/// {@category Struct}
class EXT_API_VERSION extends Struct {
  @Uint16()
  external int MajorVersion;

  @Uint16()
  external int MinorVersion;

  @Uint16()
  external int Revision;

  @Uint16()
  external int Reserved;
}

/// {@category Struct}
class EXT_FIND_FILE extends Struct {
  external Pointer<Utf16> FileName;

  @Uint64()
  external int IndexedSize;

  @Uint32()
  external int ImageTimeDateStamp;

  @Uint32()
  external int ImageCheckSum;

  external Pointer ExtraInfo;

  @Uint32()
  external int ExtraInfoSize;

  @Uint32()
  external int Flags;

  external Pointer FileMapping;

  @Uint64()
  external int FileMappingSize;

  @IntPtr()
  external int FileHandle;

  external Pointer<Utf16> FoundFileName;

  @Uint32()
  external int FoundFileNameChars;
}

/// {@category Struct}
class EXT_TYPED_DATA extends Struct {
  @Int32()
  external int Operation;

  @Uint32()
  external int Flags;

  external DEBUG_TYPED_DATA InData;

  external DEBUG_TYPED_DATA OutData;

  @Uint32()
  external int InStrIndex;

  @Uint32()
  external int In32;

  @Uint32()
  external int Out32;

  @Uint64()
  external int In64;

  @Uint64()
  external int Out64;

  @Uint32()
  external int StrBufferIndex;

  @Uint32()
  external int StrBufferChars;

  @Uint32()
  external int StrCharsNeeded;

  @Uint32()
  external int DataBufferIndex;

  @Uint32()
  external int DataBufferBytes;

  @Uint32()
  external int DataBytesNeeded;

  @Int32()
  external int Status;

  @Array(8)
  external Array<Uint64> Reserved;
}

/// {@category Struct}
class ExtendedDebugPropertyInfo extends Struct {
  @Uint32()
  external int dwValidFields;

  external Pointer<Utf16> pszName;

  external Pointer<Utf16> pszType;

  external Pointer<Utf16> pszValue;

  external Pointer<Utf16> pszFullName;

  @Uint32()
  external int dwAttrib;

  external Pointer<COMObject> pDebugProp;

  @Uint32()
  external int nDISPID;

  @Uint32()
  external int nType;

  external VARIANT varValue;

  external Pointer<COMObject> plbValue;

  external Pointer<COMObject> pDebugExtProp;
}

/// {@category Struct}
class FIELD_INFO extends Struct {
  external Pointer<Uint8> fName;

  external Pointer<Uint8> printName;

  @Uint32()
  external int size;

  @Uint32()
  external int fOptions;

  @Uint64()
  external int address;

  external _FIELD_INFO__Anonymous_e__Union Anonymous;

  @Uint32()
  external int TypeId;

  @Uint32()
  external int FieldOffset;

  @Uint32()
  external int BufferSize;

  external _FIELD_INFO__BitField BitField;

  @Uint32()
  external int bitfield;
}

/// {@category Struct}
class _FIELD_INFO__Anonymous_e__Union extends Union {
  external Pointer fieldCallBack;

  external Pointer pBuffer;
}

extension FIELD_INFO_Extension on FIELD_INFO {
  Pointer get fieldCallBack => this.Anonymous.fieldCallBack;
  set fieldCallBack(Pointer value) => this.Anonymous.fieldCallBack = value;

  Pointer get pBuffer => this.Anonymous.pBuffer;
  set pBuffer(Pointer value) => this.Anonymous.pBuffer = value;
}

/// {@category Struct}
class _FIELD_INFO__BitField extends Struct {
  @Uint16()
  external int Position;

  @Uint16()
  external int Size;
}

extension FIELD_INFO_Extension_1 on FIELD_INFO {
  int get Position => this.BitField.Position;
  set Position(int value) => this.BitField.Position = value;

  int get Size => this.BitField.Size;
  set Size(int value) => this.BitField.Size = value;
}

/// {@category Struct}
class FPO_DATA extends Struct {
  @Uint32()
  external int ulOffStart;

  @Uint32()
  external int cbProcSize;

  @Uint32()
  external int cdwLocals;

  @Uint16()
  external int cdwParams;

  @Uint16()
  external int bitfield;
}

/// {@category Struct}
class GET_CONTEXT_EX extends Struct {
  @Uint32()
  external int Status;

  @Uint32()
  external int ContextSize;

  external Pointer pContext;
}

/// {@category Struct}
class GET_CURRENT_PROCESS_ADDRESS extends Struct {
  @Uint32()
  external int Processor;

  @Uint64()
  external int CurrentThread;

  @Uint64()
  external int Address;
}

/// {@category Struct}
class GET_CURRENT_THREAD_ADDRESS extends Struct {
  @Uint32()
  external int Processor;

  @Uint64()
  external int Address;
}

/// {@category Struct}
class GET_EXPRESSION_EX extends Struct {
  external Pointer<Utf8> Expression;

  external Pointer<Utf8> Remainder;

  @Uint64()
  external int Value;
}

/// {@category Struct}
class GET_INPUT_LINE extends Struct {
  external Pointer<Utf8> Prompt;

  external Pointer<Utf8> Buffer;

  @Uint32()
  external int BufferSize;

  @Uint32()
  external int InputSize;
}

/// {@category Struct}
class GET_PEB_ADDRESS extends Struct {
  @Uint64()
  external int CurrentThread;

  @Uint64()
  external int Address;
}

/// {@category Struct}
class GET_SET_SYMPATH extends Struct {
  external Pointer<Utf8> Args;

  external Pointer<Utf8> Result;

  @Int32()
  external int Length;
}

/// {@category Struct}
class GET_TEB_ADDRESS extends Struct {
  @Uint64()
  external int Address;
}

/// {@category Struct}
class IMAGEHLP_CBA_EVENT extends Struct {
  @Uint32()
  external int severity;

  @Uint32()
  external int code;

  external Pointer<Utf16> desc;

  external Pointer object;
}

/// {@category Struct}
class IMAGEHLP_CBA_READ_MEMORY extends Struct {
  @Uint64()
  external int addr;

  external Pointer buf;

  @Uint32()
  external int bytes;

  external Pointer<Uint32> bytesread;
}

/// {@category Struct}
class IMAGEHLP_DEFERRED_SYMBOL_LOAD64 extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint64()
  external int BaseOfImage;

  @Uint32()
  external int CheckSum;

  @Uint32()
  external int TimeDateStamp;

  @Array(260)
  external Array<Uint8> FileName;

  @Uint8()
  external int Reparse;

  @IntPtr()
  external int hFile;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class IMAGEHLP_DEFERRED_SYMBOL_LOADW64 extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint64()
  external int BaseOfImage;

  @Uint32()
  external int CheckSum;

  @Uint32()
  external int TimeDateStamp;

  @Array(261)
  external Array<Uint16> _FileName;

  String get FileName {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_FileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileName(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _FileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint8()
  external int Reparse;

  @IntPtr()
  external int hFile;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class IMAGEHLP_DUPLICATE_SYMBOL64 extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint32()
  external int NumberOfDups;

  external Pointer<IMAGEHLP_SYMBOL64> Symbol;

  @Uint32()
  external int SelectedSymbol;
}

/// {@category Struct}
class IMAGEHLP_GET_TYPE_INFO_PARAMS extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint32()
  external int Flags;

  @Uint32()
  external int NumIds;

  external Pointer<Uint32> TypeIds;

  @Uint64()
  external int TagFilter;

  @Uint32()
  external int NumReqs;

  external Pointer<Int32> ReqKinds;

  external Pointer<IntPtr> ReqOffsets;

  external Pointer<Uint32> ReqSizes;

  @IntPtr()
  external int ReqStride;

  @IntPtr()
  external int BufferSize;

  external Pointer Buffer;

  @Uint32()
  external int EntriesMatched;

  @Uint32()
  external int EntriesFilled;

  @Uint64()
  external int TagsFound;

  @Uint64()
  external int AllReqsValid;

  @Uint32()
  external int NumReqsValid;

  external Pointer<Uint64> ReqsValid;
}

/// {@category Struct}
class IMAGEHLP_LINE64 extends Struct {
  @Uint32()
  external int SizeOfStruct;

  external Pointer Key;

  @Uint32()
  external int LineNumber;

  external Pointer<Utf8> FileName;

  @Uint64()
  external int Address;
}

/// {@category Struct}
class IMAGEHLP_LINEW64 extends Struct {
  @Uint32()
  external int SizeOfStruct;

  external Pointer Key;

  @Uint32()
  external int LineNumber;

  external Pointer<Utf16> FileName;

  @Uint64()
  external int Address;
}

/// {@category Struct}
class IMAGEHLP_MODULE64 extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint64()
  external int BaseOfImage;

  @Uint32()
  external int ImageSize;

  @Uint32()
  external int TimeDateStamp;

  @Uint32()
  external int CheckSum;

  @Uint32()
  external int NumSyms;

  @Int32()
  external int SymType;

  @Array(32)
  external Array<Uint8> ModuleName;

  @Array(256)
  external Array<Uint8> ImageName;

  @Array(256)
  external Array<Uint8> LoadedImageName;

  @Array(256)
  external Array<Uint8> LoadedPdbName;

  @Uint32()
  external int CVSig;

  @Array(780)
  external Array<Uint8> CVData;

  @Uint32()
  external int PdbSig;

  external GUID PdbSig70;

  @Uint32()
  external int PdbAge;

  @Int32()
  external int PdbUnmatched;

  @Int32()
  external int DbgUnmatched;

  @Int32()
  external int LineNumbers;

  @Int32()
  external int GlobalSymbols;

  @Int32()
  external int TypeInfo;

  @Int32()
  external int SourceIndexed;

  @Int32()
  external int Publics;

  @Uint32()
  external int MachineType;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class IMAGEHLP_MODULE64_EX extends Struct {
  external IMAGEHLP_MODULE64 Module;

  @Uint32()
  external int RegionFlags;
}

/// {@category Struct}
class IMAGEHLP_MODULEW64 extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint64()
  external int BaseOfImage;

  @Uint32()
  external int ImageSize;

  @Uint32()
  external int TimeDateStamp;

  @Uint32()
  external int CheckSum;

  @Uint32()
  external int NumSyms;

  @Int32()
  external int SymType;

  @Array(32)
  external Array<Uint16> _ModuleName;

  String get ModuleName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_ModuleName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ModuleName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _ModuleName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _ImageName;

  String get ImageName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_ImageName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ImageName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _ImageName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _LoadedImageName;

  String get LoadedImageName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_LoadedImageName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set LoadedImageName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _LoadedImageName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _LoadedPdbName;

  String get LoadedPdbName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_LoadedPdbName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set LoadedPdbName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _LoadedPdbName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int CVSig;

  @Array(780)
  external Array<Uint16> _CVData;

  String get CVData {
    final charCodes = <int>[];
    for (var i = 0; i < 780; i++) {
      charCodes.add(_CVData[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set CVData(String value) {
    final stringToStore = value.padRight(780, '\x00');
    for (var i = 0; i < 780; i++) {
      _CVData[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int PdbSig;

  external GUID PdbSig70;

  @Uint32()
  external int PdbAge;

  @Int32()
  external int PdbUnmatched;

  @Int32()
  external int DbgUnmatched;

  @Int32()
  external int LineNumbers;

  @Int32()
  external int GlobalSymbols;

  @Int32()
  external int TypeInfo;

  @Int32()
  external int SourceIndexed;

  @Int32()
  external int Publics;

  @Uint32()
  external int MachineType;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class IMAGEHLP_MODULEW64_EX extends Struct {
  external IMAGEHLP_MODULEW64 Module;

  @Uint32()
  external int RegionFlags;
}

/// {@category Struct}
class IMAGEHLP_STACK_FRAME extends Struct {
  @Uint64()
  external int InstructionOffset;

  @Uint64()
  external int ReturnOffset;

  @Uint64()
  external int FrameOffset;

  @Uint64()
  external int StackOffset;

  @Uint64()
  external int BackingStoreOffset;

  @Uint64()
  external int FuncTableEntry;

  @Array(4)
  external Array<Uint64> Params;

  @Array(5)
  external Array<Uint64> Reserved;

  @Int32()
  external int Virtual;

  @Uint32()
  external int Reserved2;
}

/// {@category Struct}
class IMAGEHLP_SYMBOL64 extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint64()
  external int Address;

  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint32()
  external int MaxNameLength;

  @Array(1)
  external Array<Uint8> Name;
}

/// {@category Struct}
class IMAGEHLP_SYMBOL64_PACKAGE extends Struct {
  external IMAGEHLP_SYMBOL64 sym;

  @Array(2001)
  external Array<Uint8> name;
}

/// {@category Struct}
class IMAGEHLP_SYMBOLW64 extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint64()
  external int Address;

  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint32()
  external int MaxNameLength;

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
class IMAGEHLP_SYMBOLW64_PACKAGE extends Struct {
  external IMAGEHLP_SYMBOLW64 sym;

  @Array(2001)
  external Array<Uint16> _name;

  String get name {
    final charCodes = <int>[];
    for (var i = 0; i < 2001; i++) {
      charCodes.add(_name[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set name(String value) {
    final stringToStore = value.padRight(2001, '\x00');
    for (var i = 0; i < 2001; i++) {
      _name[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class IMAGEHLP_SYMBOL_SRC extends Struct {
  @Uint32()
  external int sizeofstruct;

  @Uint32()
  external int type;

  @Array(260)
  external Array<Uint8> file;
}

/// {@category Struct}
class IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY extends Struct {
  @Uint32()
  external int BeginAddress;

  external _IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY__Anonymous_e__Union extends Union {
  @Uint32()
  external int UnwindData;

  external _IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY__Anonymous_e__Union_Extension
    on IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY_Extension
    on IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY {
  int get UnwindData => this.Anonymous.UnwindData;
  set UnwindData(int value) => this.Anonymous.UnwindData = value;

  _IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _IMAGE_ARM64_RUNTIME_FUNCTION_ENTRY__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class IMAGE_COFF_SYMBOLS_HEADER extends Struct {
  @Uint32()
  external int NumberOfSymbols;

  @Uint32()
  external int LvaToFirstSymbol;

  @Uint32()
  external int NumberOfLinenumbers;

  @Uint32()
  external int LvaToFirstLinenumber;

  @Uint32()
  external int RvaToFirstByteOfCode;

  @Uint32()
  external int RvaToLastByteOfCode;

  @Uint32()
  external int RvaToFirstByteOfData;

  @Uint32()
  external int RvaToLastByteOfData;
}

/// {@category Struct}
class IMAGE_COR20_HEADER extends Struct {
  @Uint32()
  external int cb;

  @Uint16()
  external int MajorRuntimeVersion;

  @Uint16()
  external int MinorRuntimeVersion;

  external IMAGE_DATA_DIRECTORY MetaData;

  @Uint32()
  external int Flags;

  external _IMAGE_COR20_HEADER__Anonymous_e__Union Anonymous;

  external IMAGE_DATA_DIRECTORY Resources;

  external IMAGE_DATA_DIRECTORY StrongNameSignature;

  external IMAGE_DATA_DIRECTORY CodeManagerTable;

  external IMAGE_DATA_DIRECTORY VTableFixups;

  external IMAGE_DATA_DIRECTORY ExportAddressTableJumps;

  external IMAGE_DATA_DIRECTORY ManagedNativeHeader;
}

/// {@category Struct}
class _IMAGE_COR20_HEADER__Anonymous_e__Union extends Union {
  @Uint32()
  external int EntryPointToken;

  @Uint32()
  external int EntryPointRVA;
}

extension IMAGE_COR20_HEADER_Extension on IMAGE_COR20_HEADER {
  int get EntryPointToken => this.Anonymous.EntryPointToken;
  set EntryPointToken(int value) => this.Anonymous.EntryPointToken = value;

  int get EntryPointRVA => this.Anonymous.EntryPointRVA;
  set EntryPointRVA(int value) => this.Anonymous.EntryPointRVA = value;
}

/// {@category Struct}
class IMAGE_DATA_DIRECTORY extends Struct {
  @Uint32()
  external int VirtualAddress;

  @Uint32()
  external int Size;
}

/// {@category Struct}
class IMAGE_DEBUG_DIRECTORY extends Struct {
  @Uint32()
  external int Characteristics;

  @Uint32()
  external int TimeDateStamp;

  @Uint16()
  external int MajorVersion;

  @Uint16()
  external int MinorVersion;

  @Uint32()
  external int Type;

  @Uint32()
  external int SizeOfData;

  @Uint32()
  external int AddressOfRawData;

  @Uint32()
  external int PointerToRawData;
}

/// {@category Struct}
class IMAGE_FILE_HEADER extends Struct {
  @Uint16()
  external int Machine;

  @Uint16()
  external int NumberOfSections;

  @Uint32()
  external int TimeDateStamp;

  @Uint32()
  external int PointerToSymbolTable;

  @Uint32()
  external int NumberOfSymbols;

  @Uint16()
  external int SizeOfOptionalHeader;

  @Uint16()
  external int Characteristics;
}

/// {@category Struct}
class IMAGE_FUNCTION_ENTRY extends Struct {
  @Uint32()
  external int StartingAddress;

  @Uint32()
  external int EndingAddress;

  @Uint32()
  external int EndOfPrologue;
}

/// {@category Struct}
@Packed(4)
class IMAGE_FUNCTION_ENTRY64 extends Struct {
  @Uint64()
  external int StartingAddress;

  @Uint64()
  external int EndingAddress;

  external _IMAGE_FUNCTION_ENTRY64__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
@Packed(4)
class _IMAGE_FUNCTION_ENTRY64__Anonymous_e__Union extends Union {
  @Uint64()
  external int EndOfPrologue;

  @Uint64()
  external int UnwindInfoAddress;
}

extension IMAGE_FUNCTION_ENTRY64_Extension on IMAGE_FUNCTION_ENTRY64 {
  int get EndOfPrologue => this.Anonymous.EndOfPrologue;
  set EndOfPrologue(int value) => this.Anonymous.EndOfPrologue = value;

  int get UnwindInfoAddress => this.Anonymous.UnwindInfoAddress;
  set UnwindInfoAddress(int value) => this.Anonymous.UnwindInfoAddress = value;
}

/// {@category Struct}
class IMAGE_LOAD_CONFIG_CODE_INTEGRITY extends Struct {
  @Uint16()
  external int Flags;

  @Uint16()
  external int Catalog;

  @Uint32()
  external int CatalogOffset;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class IMAGE_LOAD_CONFIG_DIRECTORY32 extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int TimeDateStamp;

  @Uint16()
  external int MajorVersion;

  @Uint16()
  external int MinorVersion;

  @Uint32()
  external int GlobalFlagsClear;

  @Uint32()
  external int GlobalFlagsSet;

  @Uint32()
  external int CriticalSectionDefaultTimeout;

  @Uint32()
  external int DeCommitFreeBlockThreshold;

  @Uint32()
  external int DeCommitTotalFreeThreshold;

  @Uint32()
  external int LockPrefixTable;

  @Uint32()
  external int MaximumAllocationSize;

  @Uint32()
  external int VirtualMemoryThreshold;

  @Uint32()
  external int ProcessHeapFlags;

  @Uint32()
  external int ProcessAffinityMask;

  @Uint16()
  external int CSDVersion;

  @Uint16()
  external int DependentLoadFlags;

  @Uint32()
  external int EditList;

  @Uint32()
  external int SecurityCookie;

  @Uint32()
  external int SEHandlerTable;

  @Uint32()
  external int SEHandlerCount;

  @Uint32()
  external int GuardCFCheckFunctionPointer;

  @Uint32()
  external int GuardCFDispatchFunctionPointer;

  @Uint32()
  external int GuardCFFunctionTable;

  @Uint32()
  external int GuardCFFunctionCount;

  @Uint32()
  external int GuardFlags;

  external IMAGE_LOAD_CONFIG_CODE_INTEGRITY CodeIntegrity;

  @Uint32()
  external int GuardAddressTakenIatEntryTable;

  @Uint32()
  external int GuardAddressTakenIatEntryCount;

  @Uint32()
  external int GuardLongJumpTargetTable;

  @Uint32()
  external int GuardLongJumpTargetCount;

  @Uint32()
  external int DynamicValueRelocTable;

  @Uint32()
  external int CHPEMetadataPointer;

  @Uint32()
  external int GuardRFFailureRoutine;

  @Uint32()
  external int GuardRFFailureRoutineFunctionPointer;

  @Uint32()
  external int DynamicValueRelocTableOffset;

  @Uint16()
  external int DynamicValueRelocTableSection;

  @Uint16()
  external int Reserved2;

  @Uint32()
  external int GuardRFVerifyStackPointerFunctionPointer;

  @Uint32()
  external int HotPatchTableOffset;

  @Uint32()
  external int Reserved3;

  @Uint32()
  external int EnclaveConfigurationPointer;

  @Uint32()
  external int VolatileMetadataPointer;

  @Uint32()
  external int GuardEHContinuationTable;

  @Uint32()
  external int GuardEHContinuationCount;

  @Uint32()
  external int GuardXFGCheckFunctionPointer;

  @Uint32()
  external int GuardXFGDispatchFunctionPointer;

  @Uint32()
  external int GuardXFGTableDispatchFunctionPointer;

  @Uint32()
  external int CastGuardOsDeterminedFailureMode;
}

/// {@category Struct}
class IMAGE_LOAD_CONFIG_DIRECTORY64 extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int TimeDateStamp;

  @Uint16()
  external int MajorVersion;

  @Uint16()
  external int MinorVersion;

  @Uint32()
  external int GlobalFlagsClear;

  @Uint32()
  external int GlobalFlagsSet;

  @Uint32()
  external int CriticalSectionDefaultTimeout;

  @Uint64()
  external int DeCommitFreeBlockThreshold;

  @Uint64()
  external int DeCommitTotalFreeThreshold;

  @Uint64()
  external int LockPrefixTable;

  @Uint64()
  external int MaximumAllocationSize;

  @Uint64()
  external int VirtualMemoryThreshold;

  @Uint64()
  external int ProcessAffinityMask;

  @Uint32()
  external int ProcessHeapFlags;

  @Uint16()
  external int CSDVersion;

  @Uint16()
  external int DependentLoadFlags;

  @Uint64()
  external int EditList;

  @Uint64()
  external int SecurityCookie;

  @Uint64()
  external int SEHandlerTable;

  @Uint64()
  external int SEHandlerCount;

  @Uint64()
  external int GuardCFCheckFunctionPointer;

  @Uint64()
  external int GuardCFDispatchFunctionPointer;

  @Uint64()
  external int GuardCFFunctionTable;

  @Uint64()
  external int GuardCFFunctionCount;

  @Uint32()
  external int GuardFlags;

  external IMAGE_LOAD_CONFIG_CODE_INTEGRITY CodeIntegrity;

  @Uint64()
  external int GuardAddressTakenIatEntryTable;

  @Uint64()
  external int GuardAddressTakenIatEntryCount;

  @Uint64()
  external int GuardLongJumpTargetTable;

  @Uint64()
  external int GuardLongJumpTargetCount;

  @Uint64()
  external int DynamicValueRelocTable;

  @Uint64()
  external int CHPEMetadataPointer;

  @Uint64()
  external int GuardRFFailureRoutine;

  @Uint64()
  external int GuardRFFailureRoutineFunctionPointer;

  @Uint32()
  external int DynamicValueRelocTableOffset;

  @Uint16()
  external int DynamicValueRelocTableSection;

  @Uint16()
  external int Reserved2;

  @Uint64()
  external int GuardRFVerifyStackPointerFunctionPointer;

  @Uint32()
  external int HotPatchTableOffset;

  @Uint32()
  external int Reserved3;

  @Uint64()
  external int EnclaveConfigurationPointer;

  @Uint64()
  external int VolatileMetadataPointer;

  @Uint64()
  external int GuardEHContinuationTable;

  @Uint64()
  external int GuardEHContinuationCount;

  @Uint64()
  external int GuardXFGCheckFunctionPointer;

  @Uint64()
  external int GuardXFGDispatchFunctionPointer;

  @Uint64()
  external int GuardXFGTableDispatchFunctionPointer;

  @Uint64()
  external int CastGuardOsDeterminedFailureMode;
}

/// {@category Struct}
class IMAGE_NT_HEADERS32 extends Struct {
  @Uint32()
  external int Signature;

  external IMAGE_FILE_HEADER FileHeader;

  external IMAGE_OPTIONAL_HEADER32 OptionalHeader;
}

/// {@category Struct}
class IMAGE_NT_HEADERS64 extends Struct {
  @Uint32()
  external int Signature;

  external IMAGE_FILE_HEADER FileHeader;

  external IMAGE_OPTIONAL_HEADER64 OptionalHeader;
}

/// {@category Struct}
class IMAGE_OPTIONAL_HEADER32 extends Struct {
  @Uint16()
  external int Magic;

  @Uint8()
  external int MajorLinkerVersion;

  @Uint8()
  external int MinorLinkerVersion;

  @Uint32()
  external int SizeOfCode;

  @Uint32()
  external int SizeOfInitializedData;

  @Uint32()
  external int SizeOfUninitializedData;

  @Uint32()
  external int AddressOfEntryPoint;

  @Uint32()
  external int BaseOfCode;

  @Uint32()
  external int BaseOfData;

  @Uint32()
  external int ImageBase;

  @Uint32()
  external int SectionAlignment;

  @Uint32()
  external int FileAlignment;

  @Uint16()
  external int MajorOperatingSystemVersion;

  @Uint16()
  external int MinorOperatingSystemVersion;

  @Uint16()
  external int MajorImageVersion;

  @Uint16()
  external int MinorImageVersion;

  @Uint16()
  external int MajorSubsystemVersion;

  @Uint16()
  external int MinorSubsystemVersion;

  @Uint32()
  external int Win32VersionValue;

  @Uint32()
  external int SizeOfImage;

  @Uint32()
  external int SizeOfHeaders;

  @Uint32()
  external int CheckSum;

  @Uint16()
  external int Subsystem;

  @Uint16()
  external int DllCharacteristics;

  @Uint32()
  external int SizeOfStackReserve;

  @Uint32()
  external int SizeOfStackCommit;

  @Uint32()
  external int SizeOfHeapReserve;

  @Uint32()
  external int SizeOfHeapCommit;

  @Uint32()
  external int LoaderFlags;

  @Uint32()
  external int NumberOfRvaAndSizes;

  @Array(16)
  external Array<IMAGE_DATA_DIRECTORY> DataDirectory;
}

/// {@category Struct}
class IMAGE_OPTIONAL_HEADER64 extends Struct {
  @Uint16()
  external int Magic;

  @Uint8()
  external int MajorLinkerVersion;

  @Uint8()
  external int MinorLinkerVersion;

  @Uint32()
  external int SizeOfCode;

  @Uint32()
  external int SizeOfInitializedData;

  @Uint32()
  external int SizeOfUninitializedData;

  @Uint32()
  external int AddressOfEntryPoint;

  @Uint32()
  external int BaseOfCode;

  @Uint64()
  external int ImageBase;

  @Uint32()
  external int SectionAlignment;

  @Uint32()
  external int FileAlignment;

  @Uint16()
  external int MajorOperatingSystemVersion;

  @Uint16()
  external int MinorOperatingSystemVersion;

  @Uint16()
  external int MajorImageVersion;

  @Uint16()
  external int MinorImageVersion;

  @Uint16()
  external int MajorSubsystemVersion;

  @Uint16()
  external int MinorSubsystemVersion;

  @Uint32()
  external int Win32VersionValue;

  @Uint32()
  external int SizeOfImage;

  @Uint32()
  external int SizeOfHeaders;

  @Uint32()
  external int CheckSum;

  @Uint16()
  external int Subsystem;

  @Uint16()
  external int DllCharacteristics;

  @Uint64()
  external int SizeOfStackReserve;

  @Uint64()
  external int SizeOfStackCommit;

  @Uint64()
  external int SizeOfHeapReserve;

  @Uint64()
  external int SizeOfHeapCommit;

  @Uint32()
  external int LoaderFlags;

  @Uint32()
  external int NumberOfRvaAndSizes;

  @Array(16)
  external Array<IMAGE_DATA_DIRECTORY> DataDirectory;
}

/// {@category Struct}
class IMAGE_ROM_HEADERS extends Struct {
  external IMAGE_FILE_HEADER FileHeader;

  external IMAGE_ROM_OPTIONAL_HEADER OptionalHeader;
}

/// {@category Struct}
class IMAGE_ROM_OPTIONAL_HEADER extends Struct {
  @Uint16()
  external int Magic;

  @Uint8()
  external int MajorLinkerVersion;

  @Uint8()
  external int MinorLinkerVersion;

  @Uint32()
  external int SizeOfCode;

  @Uint32()
  external int SizeOfInitializedData;

  @Uint32()
  external int SizeOfUninitializedData;

  @Uint32()
  external int AddressOfEntryPoint;

  @Uint32()
  external int BaseOfCode;

  @Uint32()
  external int BaseOfData;

  @Uint32()
  external int BaseOfBss;

  @Uint32()
  external int GprMask;

  @Array(4)
  external Array<Uint32> CprMask;

  @Uint32()
  external int GpValue;
}

/// {@category Struct}
class IMAGE_RUNTIME_FUNCTION_ENTRY extends Struct {
  @Uint32()
  external int BeginAddress;

  @Uint32()
  external int EndAddress;

  external _IMAGE_RUNTIME_FUNCTION_ENTRY__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _IMAGE_RUNTIME_FUNCTION_ENTRY__Anonymous_e__Union extends Union {
  @Uint32()
  external int UnwindInfoAddress;

  @Uint32()
  external int UnwindData;
}

extension IMAGE_RUNTIME_FUNCTION_ENTRY_Extension
    on IMAGE_RUNTIME_FUNCTION_ENTRY {
  int get UnwindInfoAddress => this.Anonymous.UnwindInfoAddress;
  set UnwindInfoAddress(int value) => this.Anonymous.UnwindInfoAddress = value;

  int get UnwindData => this.Anonymous.UnwindData;
  set UnwindData(int value) => this.Anonymous.UnwindData = value;
}

/// {@category Struct}
class IMAGE_SECTION_HEADER extends Struct {
  @Array(8)
  external Array<Uint8> Name;

  external _IMAGE_SECTION_HEADER__Misc_e__Union Misc;

  @Uint32()
  external int VirtualAddress;

  @Uint32()
  external int SizeOfRawData;

  @Uint32()
  external int PointerToRawData;

  @Uint32()
  external int PointerToRelocations;

  @Uint32()
  external int PointerToLinenumbers;

  @Uint16()
  external int NumberOfRelocations;

  @Uint16()
  external int NumberOfLinenumbers;

  @Uint32()
  external int Characteristics;
}

/// {@category Struct}
class _IMAGE_SECTION_HEADER__Misc_e__Union extends Union {
  @Uint32()
  external int PhysicalAddress;

  @Uint32()
  external int VirtualSize;
}

extension IMAGE_SECTION_HEADER_Extension on IMAGE_SECTION_HEADER {
  int get PhysicalAddress => this.Misc.PhysicalAddress;
  set PhysicalAddress(int value) => this.Misc.PhysicalAddress = value;

  int get VirtualSize => this.Misc.VirtualSize;
  set VirtualSize(int value) => this.Misc.VirtualSize = value;
}

/// {@category Struct}
class INLINE_FRAME_CONTEXT extends Union {
  @Uint32()
  external int ContextValue;

  external _INLINE_FRAME_CONTEXT__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _INLINE_FRAME_CONTEXT__Anonymous_e__Struct extends Struct {
  @Uint8()
  external int FrameId;

  @Uint8()
  external int FrameType;

  @Uint16()
  external int FrameSignature;
}

extension INLINE_FRAME_CONTEXT_Extension on INLINE_FRAME_CONTEXT {
  int get FrameId => this.Anonymous.FrameId;
  set FrameId(int value) => this.Anonymous.FrameId = value;

  int get FrameType => this.Anonymous.FrameType;
  set FrameType(int value) => this.Anonymous.FrameType = value;

  int get FrameSignature => this.Anonymous.FrameSignature;
  set FrameSignature(int value) => this.Anonymous.FrameSignature = value;
}

/// {@category Struct}
class IOSPACE extends Struct {
  @Uint32()
  external int Address;

  @Uint32()
  external int Length;

  @Uint32()
  external int Data;
}

/// {@category Struct}
class IOSPACE32 extends Struct {
  @Uint32()
  external int Address;

  @Uint32()
  external int Length;

  @Uint32()
  external int Data;
}

/// {@category Struct}
class IOSPACE64 extends Struct {
  @Uint64()
  external int Address;

  @Uint32()
  external int Length;

  @Uint32()
  external int Data;
}

/// {@category Struct}
class IOSPACE_EX extends Struct {
  @Uint32()
  external int Address;

  @Uint32()
  external int Length;

  @Uint32()
  external int Data;

  @Uint32()
  external int InterfaceType;

  @Uint32()
  external int BusNumber;

  @Uint32()
  external int AddressSpace;
}

/// {@category Struct}
class IOSPACE_EX32 extends Struct {
  @Uint32()
  external int Address;

  @Uint32()
  external int Length;

  @Uint32()
  external int Data;

  @Uint32()
  external int InterfaceType;

  @Uint32()
  external int BusNumber;

  @Uint32()
  external int AddressSpace;
}

/// {@category Struct}
class IOSPACE_EX64 extends Struct {
  @Uint64()
  external int Address;

  @Uint32()
  external int Length;

  @Uint32()
  external int Data;

  @Uint32()
  external int InterfaceType;

  @Uint32()
  external int BusNumber;

  @Uint32()
  external int AddressSpace;
}

/// {@category Struct}
class IPMI_OS_SEL_RECORD extends Struct {
  @Uint32()
  external int Signature;

  @Uint32()
  external int Version;

  @Uint32()
  external int Length;

  @Int32()
  external int RecordType;

  @Uint32()
  external int DataLength;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class JsDebugPropertyInfo extends Struct {
  external Pointer<Utf16> name;

  external Pointer<Utf16> type;

  external Pointer<Utf16> value;

  external Pointer<Utf16> fullName;

  @Int32()
  external int attr;
}

/// {@category Struct}
class KDDEBUGGER_DATA32 extends Struct {
  external DBGKD_DEBUG_DATA_HEADER32 Header;

  @Uint32()
  external int KernBase;

  @Uint32()
  external int BreakpointWithStatus;

  @Uint32()
  external int SavedContext;

  @Uint16()
  external int ThCallbackStack;

  @Uint16()
  external int NextCallback;

  @Uint16()
  external int FramePointer;

  @Uint16()
  external int bitfield;

  @Uint32()
  external int KiCallUserMode;

  @Uint32()
  external int KeUserCallbackDispatcher;

  @Uint32()
  external int PsLoadedModuleList;

  @Uint32()
  external int PsActiveProcessHead;

  @Uint32()
  external int PspCidTable;

  @Uint32()
  external int ExpSystemResourcesList;

  @Uint32()
  external int ExpPagedPoolDescriptor;

  @Uint32()
  external int ExpNumberOfPagedPools;

  @Uint32()
  external int KeTimeIncrement;

  @Uint32()
  external int KeBugCheckCallbackListHead;

  @Uint32()
  external int KiBugcheckData;

  @Uint32()
  external int IopErrorLogListHead;

  @Uint32()
  external int ObpRootDirectoryObject;

  @Uint32()
  external int ObpTypeObjectType;

  @Uint32()
  external int MmSystemCacheStart;

  @Uint32()
  external int MmSystemCacheEnd;

  @Uint32()
  external int MmSystemCacheWs;

  @Uint32()
  external int MmPfnDatabase;

  @Uint32()
  external int MmSystemPtesStart;

  @Uint32()
  external int MmSystemPtesEnd;

  @Uint32()
  external int MmSubsectionBase;

  @Uint32()
  external int MmNumberOfPagingFiles;

  @Uint32()
  external int MmLowestPhysicalPage;

  @Uint32()
  external int MmHighestPhysicalPage;

  @Uint32()
  external int MmNumberOfPhysicalPages;

  @Uint32()
  external int MmMaximumNonPagedPoolInBytes;

  @Uint32()
  external int MmNonPagedSystemStart;

  @Uint32()
  external int MmNonPagedPoolStart;

  @Uint32()
  external int MmNonPagedPoolEnd;

  @Uint32()
  external int MmPagedPoolStart;

  @Uint32()
  external int MmPagedPoolEnd;

  @Uint32()
  external int MmPagedPoolInformation;

  @Uint32()
  external int MmPageSize;

  @Uint32()
  external int MmSizeOfPagedPoolInBytes;

  @Uint32()
  external int MmTotalCommitLimit;

  @Uint32()
  external int MmTotalCommittedPages;

  @Uint32()
  external int MmSharedCommit;

  @Uint32()
  external int MmDriverCommit;

  @Uint32()
  external int MmProcessCommit;

  @Uint32()
  external int MmPagedPoolCommit;

  @Uint32()
  external int MmExtendedCommit;

  @Uint32()
  external int MmZeroedPageListHead;

  @Uint32()
  external int MmFreePageListHead;

  @Uint32()
  external int MmStandbyPageListHead;

  @Uint32()
  external int MmModifiedPageListHead;

  @Uint32()
  external int MmModifiedNoWritePageListHead;

  @Uint32()
  external int MmAvailablePages;

  @Uint32()
  external int MmResidentAvailablePages;

  @Uint32()
  external int PoolTrackTable;

  @Uint32()
  external int NonPagedPoolDescriptor;

  @Uint32()
  external int MmHighestUserAddress;

  @Uint32()
  external int MmSystemRangeStart;

  @Uint32()
  external int MmUserProbeAddress;

  @Uint32()
  external int KdPrintCircularBuffer;

  @Uint32()
  external int KdPrintCircularBufferEnd;

  @Uint32()
  external int KdPrintWritePointer;

  @Uint32()
  external int KdPrintRolloverCount;

  @Uint32()
  external int MmLoadedUserImageList;
}

/// {@category Struct}
class KDDEBUGGER_DATA64 extends Struct {
  external DBGKD_DEBUG_DATA_HEADER64 Header;

  @Uint64()
  external int KernBase;

  @Uint64()
  external int BreakpointWithStatus;

  @Uint64()
  external int SavedContext;

  @Uint16()
  external int ThCallbackStack;

  @Uint16()
  external int NextCallback;

  @Uint16()
  external int FramePointer;

  @Uint16()
  external int bitfield;

  @Uint64()
  external int KiCallUserMode;

  @Uint64()
  external int KeUserCallbackDispatcher;

  @Uint64()
  external int PsLoadedModuleList;

  @Uint64()
  external int PsActiveProcessHead;

  @Uint64()
  external int PspCidTable;

  @Uint64()
  external int ExpSystemResourcesList;

  @Uint64()
  external int ExpPagedPoolDescriptor;

  @Uint64()
  external int ExpNumberOfPagedPools;

  @Uint64()
  external int KeTimeIncrement;

  @Uint64()
  external int KeBugCheckCallbackListHead;

  @Uint64()
  external int KiBugcheckData;

  @Uint64()
  external int IopErrorLogListHead;

  @Uint64()
  external int ObpRootDirectoryObject;

  @Uint64()
  external int ObpTypeObjectType;

  @Uint64()
  external int MmSystemCacheStart;

  @Uint64()
  external int MmSystemCacheEnd;

  @Uint64()
  external int MmSystemCacheWs;

  @Uint64()
  external int MmPfnDatabase;

  @Uint64()
  external int MmSystemPtesStart;

  @Uint64()
  external int MmSystemPtesEnd;

  @Uint64()
  external int MmSubsectionBase;

  @Uint64()
  external int MmNumberOfPagingFiles;

  @Uint64()
  external int MmLowestPhysicalPage;

  @Uint64()
  external int MmHighestPhysicalPage;

  @Uint64()
  external int MmNumberOfPhysicalPages;

  @Uint64()
  external int MmMaximumNonPagedPoolInBytes;

  @Uint64()
  external int MmNonPagedSystemStart;

  @Uint64()
  external int MmNonPagedPoolStart;

  @Uint64()
  external int MmNonPagedPoolEnd;

  @Uint64()
  external int MmPagedPoolStart;

  @Uint64()
  external int MmPagedPoolEnd;

  @Uint64()
  external int MmPagedPoolInformation;

  @Uint64()
  external int MmPageSize;

  @Uint64()
  external int MmSizeOfPagedPoolInBytes;

  @Uint64()
  external int MmTotalCommitLimit;

  @Uint64()
  external int MmTotalCommittedPages;

  @Uint64()
  external int MmSharedCommit;

  @Uint64()
  external int MmDriverCommit;

  @Uint64()
  external int MmProcessCommit;

  @Uint64()
  external int MmPagedPoolCommit;

  @Uint64()
  external int MmExtendedCommit;

  @Uint64()
  external int MmZeroedPageListHead;

  @Uint64()
  external int MmFreePageListHead;

  @Uint64()
  external int MmStandbyPageListHead;

  @Uint64()
  external int MmModifiedPageListHead;

  @Uint64()
  external int MmModifiedNoWritePageListHead;

  @Uint64()
  external int MmAvailablePages;

  @Uint64()
  external int MmResidentAvailablePages;

  @Uint64()
  external int PoolTrackTable;

  @Uint64()
  external int NonPagedPoolDescriptor;

  @Uint64()
  external int MmHighestUserAddress;

  @Uint64()
  external int MmSystemRangeStart;

  @Uint64()
  external int MmUserProbeAddress;

  @Uint64()
  external int KdPrintCircularBuffer;

  @Uint64()
  external int KdPrintCircularBufferEnd;

  @Uint64()
  external int KdPrintWritePointer;

  @Uint64()
  external int KdPrintRolloverCount;

  @Uint64()
  external int MmLoadedUserImageList;

  @Uint64()
  external int NtBuildLab;

  @Uint64()
  external int KiNormalSystemCall;

  @Uint64()
  external int KiProcessorBlock;

  @Uint64()
  external int MmUnloadedDrivers;

  @Uint64()
  external int MmLastUnloadedDriver;

  @Uint64()
  external int MmTriageActionTaken;

  @Uint64()
  external int MmSpecialPoolTag;

  @Uint64()
  external int KernelVerifier;

  @Uint64()
  external int MmVerifierData;

  @Uint64()
  external int MmAllocatedNonPagedPool;

  @Uint64()
  external int MmPeakCommitment;

  @Uint64()
  external int MmTotalCommitLimitMaximum;

  @Uint64()
  external int CmNtCSDVersion;

  @Uint64()
  external int MmPhysicalMemoryBlock;

  @Uint64()
  external int MmSessionBase;

  @Uint64()
  external int MmSessionSize;

  @Uint64()
  external int MmSystemParentTablePage;

  @Uint64()
  external int MmVirtualTranslationBase;

  @Uint16()
  external int OffsetKThreadNextProcessor;

  @Uint16()
  external int OffsetKThreadTeb;

  @Uint16()
  external int OffsetKThreadKernelStack;

  @Uint16()
  external int OffsetKThreadInitialStack;

  @Uint16()
  external int OffsetKThreadApcProcess;

  @Uint16()
  external int OffsetKThreadState;

  @Uint16()
  external int OffsetKThreadBStore;

  @Uint16()
  external int OffsetKThreadBStoreLimit;

  @Uint16()
  external int SizeEProcess;

  @Uint16()
  external int OffsetEprocessPeb;

  @Uint16()
  external int OffsetEprocessParentCID;

  @Uint16()
  external int OffsetEprocessDirectoryTableBase;

  @Uint16()
  external int SizePrcb;

  @Uint16()
  external int OffsetPrcbDpcRoutine;

  @Uint16()
  external int OffsetPrcbCurrentThread;

  @Uint16()
  external int OffsetPrcbMhz;

  @Uint16()
  external int OffsetPrcbCpuType;

  @Uint16()
  external int OffsetPrcbVendorString;

  @Uint16()
  external int OffsetPrcbProcStateContext;

  @Uint16()
  external int OffsetPrcbNumber;

  @Uint16()
  external int SizeEThread;

  @Uint8()
  external int L1tfHighPhysicalBitIndex;

  @Uint8()
  external int L1tfSwizzleBitIndex;

  @Uint32()
  external int Padding0;

  @Uint64()
  external int KdPrintCircularBufferPtr;

  @Uint64()
  external int KdPrintBufferSize;

  @Uint64()
  external int KeLoaderBlock;

  @Uint16()
  external int SizePcr;

  @Uint16()
  external int OffsetPcrSelfPcr;

  @Uint16()
  external int OffsetPcrCurrentPrcb;

  @Uint16()
  external int OffsetPcrContainedPrcb;

  @Uint16()
  external int OffsetPcrInitialBStore;

  @Uint16()
  external int OffsetPcrBStoreLimit;

  @Uint16()
  external int OffsetPcrInitialStack;

  @Uint16()
  external int OffsetPcrStackLimit;

  @Uint16()
  external int OffsetPrcbPcrPage;

  @Uint16()
  external int OffsetPrcbProcStateSpecialReg;

  @Uint16()
  external int GdtR0Code;

  @Uint16()
  external int GdtR0Data;

  @Uint16()
  external int GdtR0Pcr;

  @Uint16()
  external int GdtR3Code;

  @Uint16()
  external int GdtR3Data;

  @Uint16()
  external int GdtR3Teb;

  @Uint16()
  external int GdtLdt;

  @Uint16()
  external int GdtTss;

  @Uint16()
  external int Gdt64R3CmCode;

  @Uint16()
  external int Gdt64R3CmTeb;

  @Uint64()
  external int IopNumTriageDumpDataBlocks;

  @Uint64()
  external int IopTriageDumpDataBlocks;

  @Uint64()
  external int VfCrashDataBlock;

  @Uint64()
  external int MmBadPagesDetected;

  @Uint64()
  external int MmZeroedPageSingleBitErrorsDetected;

  @Uint64()
  external int EtwpDebuggerData;

  @Uint16()
  external int OffsetPrcbContext;

  @Uint16()
  external int OffsetPrcbMaxBreakpoints;

  @Uint16()
  external int OffsetPrcbMaxWatchpoints;

  @Uint32()
  external int OffsetKThreadStackLimit;

  @Uint32()
  external int OffsetKThreadStackBase;

  @Uint32()
  external int OffsetKThreadQueueListEntry;

  @Uint32()
  external int OffsetEThreadIrpList;

  @Uint16()
  external int OffsetPrcbIdleThread;

  @Uint16()
  external int OffsetPrcbNormalDpcState;

  @Uint16()
  external int OffsetPrcbDpcStack;

  @Uint16()
  external int OffsetPrcbIsrStack;

  @Uint16()
  external int SizeKDPC_STACK_FRAME;

  @Uint16()
  external int OffsetKPriQueueThreadListHead;

  @Uint16()
  external int OffsetKThreadWaitReason;

  @Uint16()
  external int Padding1;

  @Uint64()
  external int PteBase;

  @Uint64()
  external int RetpolineStubFunctionTable;

  @Uint32()
  external int RetpolineStubFunctionTableSize;

  @Uint32()
  external int RetpolineStubOffset;

  @Uint32()
  external int RetpolineStubSize;

  @Uint16()
  external int OffsetEProcessMmHotPatchContext;
}

/// {@category Struct}
class KDHELP64 extends Struct {
  @Uint64()
  external int Thread;

  @Uint32()
  external int ThCallbackStack;

  @Uint32()
  external int ThCallbackBStore;

  @Uint32()
  external int NextCallback;

  @Uint32()
  external int FramePointer;

  @Uint64()
  external int KiCallUserMode;

  @Uint64()
  external int KeUserCallbackDispatcher;

  @Uint64()
  external int SystemRangeStart;

  @Uint64()
  external int KiUserExceptionDispatcher;

  @Uint64()
  external int StackBase;

  @Uint64()
  external int StackLimit;

  @Uint32()
  external int BuildVersion;

  @Uint32()
  external int RetpolineStubFunctionTableSize;

  @Uint64()
  external int RetpolineStubFunctionTable;

  @Uint32()
  external int RetpolineStubOffset;

  @Uint32()
  external int RetpolineStubSize;

  @Array(2)
  external Array<Uint64> Reserved0;
}

/// {@category Struct}
class KNONVOLATILE_CONTEXT_POINTERS extends Struct {
  external _KNONVOLATILE_CONTEXT_POINTERS__Anonymous1_e__Union Anonymous1;

  external _KNONVOLATILE_CONTEXT_POINTERS__Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
class _KNONVOLATILE_CONTEXT_POINTERS__Anonymous1_e__Union extends Union {
  @Array(16)
  external Array<Pointer<M128A>> FloatingContext;

  external _KNONVOLATILE_CONTEXT_POINTERS__Anonymous1_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _KNONVOLATILE_CONTEXT_POINTERS__Anonymous1_e__Union__Anonymous_e__Struct
    extends Struct {
  external Pointer<M128A> Xmm0;

  external Pointer<M128A> Xmm1;

  external Pointer<M128A> Xmm2;

  external Pointer<M128A> Xmm3;

  external Pointer<M128A> Xmm4;

  external Pointer<M128A> Xmm5;

  external Pointer<M128A> Xmm6;

  external Pointer<M128A> Xmm7;

  external Pointer<M128A> Xmm8;

  external Pointer<M128A> Xmm9;

  external Pointer<M128A> Xmm10;

  external Pointer<M128A> Xmm11;

  external Pointer<M128A> Xmm12;

  external Pointer<M128A> Xmm13;

  external Pointer<M128A> Xmm14;

  external Pointer<M128A> Xmm15;
}

extension KNONVOLATILE_CONTEXT_POINTERS__Anonymous1_e__Union_Extension
    on KNONVOLATILE_CONTEXT_POINTERS {
  Pointer<M128A> get Xmm0 => this.Anonymous1.Anonymous.Xmm0;
  set Xmm0(Pointer<M128A> value) => this.Anonymous1.Anonymous.Xmm0 = value;

  Pointer<M128A> get Xmm1 => this.Anonymous1.Anonymous.Xmm1;
  set Xmm1(Pointer<M128A> value) => this.Anonymous1.Anonymous.Xmm1 = value;

  Pointer<M128A> get Xmm2 => this.Anonymous1.Anonymous.Xmm2;
  set Xmm2(Pointer<M128A> value) => this.Anonymous1.Anonymous.Xmm2 = value;

  Pointer<M128A> get Xmm3 => this.Anonymous1.Anonymous.Xmm3;
  set Xmm3(Pointer<M128A> value) => this.Anonymous1.Anonymous.Xmm3 = value;

  Pointer<M128A> get Xmm4 => this.Anonymous1.Anonymous.Xmm4;
  set Xmm4(Pointer<M128A> value) => this.Anonymous1.Anonymous.Xmm4 = value;

  Pointer<M128A> get Xmm5 => this.Anonymous1.Anonymous.Xmm5;
  set Xmm5(Pointer<M128A> value) => this.Anonymous1.Anonymous.Xmm5 = value;

  Pointer<M128A> get Xmm6 => this.Anonymous1.Anonymous.Xmm6;
  set Xmm6(Pointer<M128A> value) => this.Anonymous1.Anonymous.Xmm6 = value;

  Pointer<M128A> get Xmm7 => this.Anonymous1.Anonymous.Xmm7;
  set Xmm7(Pointer<M128A> value) => this.Anonymous1.Anonymous.Xmm7 = value;

  Pointer<M128A> get Xmm8 => this.Anonymous1.Anonymous.Xmm8;
  set Xmm8(Pointer<M128A> value) => this.Anonymous1.Anonymous.Xmm8 = value;

  Pointer<M128A> get Xmm9 => this.Anonymous1.Anonymous.Xmm9;
  set Xmm9(Pointer<M128A> value) => this.Anonymous1.Anonymous.Xmm9 = value;

  Pointer<M128A> get Xmm10 => this.Anonymous1.Anonymous.Xmm10;
  set Xmm10(Pointer<M128A> value) => this.Anonymous1.Anonymous.Xmm10 = value;

  Pointer<M128A> get Xmm11 => this.Anonymous1.Anonymous.Xmm11;
  set Xmm11(Pointer<M128A> value) => this.Anonymous1.Anonymous.Xmm11 = value;

  Pointer<M128A> get Xmm12 => this.Anonymous1.Anonymous.Xmm12;
  set Xmm12(Pointer<M128A> value) => this.Anonymous1.Anonymous.Xmm12 = value;

  Pointer<M128A> get Xmm13 => this.Anonymous1.Anonymous.Xmm13;
  set Xmm13(Pointer<M128A> value) => this.Anonymous1.Anonymous.Xmm13 = value;

  Pointer<M128A> get Xmm14 => this.Anonymous1.Anonymous.Xmm14;
  set Xmm14(Pointer<M128A> value) => this.Anonymous1.Anonymous.Xmm14 = value;

  Pointer<M128A> get Xmm15 => this.Anonymous1.Anonymous.Xmm15;
  set Xmm15(Pointer<M128A> value) => this.Anonymous1.Anonymous.Xmm15 = value;
}

extension KNONVOLATILE_CONTEXT_POINTERS_Extension
    on KNONVOLATILE_CONTEXT_POINTERS {
  Array<Pointer<M128A>> get FloatingContext => this.Anonymous1.FloatingContext;
  set FloatingContext(Array<Pointer<M128A>> value) =>
      this.Anonymous1.FloatingContext = value;

  _KNONVOLATILE_CONTEXT_POINTERS__Anonymous1_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous1.Anonymous;
  set Anonymous(
          _KNONVOLATILE_CONTEXT_POINTERS__Anonymous1_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous1.Anonymous = value;
}

/// {@category Struct}
class _KNONVOLATILE_CONTEXT_POINTERS__Anonymous2_e__Union extends Union {
  @Array(16)
  external Array<Pointer<Uint64>> IntegerContext;

  external _KNONVOLATILE_CONTEXT_POINTERS__Anonymous2_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _KNONVOLATILE_CONTEXT_POINTERS__Anonymous2_e__Union__Anonymous_e__Struct
    extends Struct {
  external Pointer<Uint64> Rax;

  external Pointer<Uint64> Rcx;

  external Pointer<Uint64> Rdx;

  external Pointer<Uint64> Rbx;

  external Pointer<Uint64> Rsp;

  external Pointer<Uint64> Rbp;

  external Pointer<Uint64> Rsi;

  external Pointer<Uint64> Rdi;

  external Pointer<Uint64> R8;

  external Pointer<Uint64> R9;

  external Pointer<Uint64> R10;

  external Pointer<Uint64> R11;

  external Pointer<Uint64> R12;

  external Pointer<Uint64> R13;

  external Pointer<Uint64> R14;

  external Pointer<Uint64> R15;
}

extension KNONVOLATILE_CONTEXT_POINTERS__Anonymous2_e__Union_Extension
    on KNONVOLATILE_CONTEXT_POINTERS {
  Pointer<Uint64> get Rax => this.Anonymous2.Anonymous.Rax;
  set Rax(Pointer<Uint64> value) => this.Anonymous2.Anonymous.Rax = value;

  Pointer<Uint64> get Rcx => this.Anonymous2.Anonymous.Rcx;
  set Rcx(Pointer<Uint64> value) => this.Anonymous2.Anonymous.Rcx = value;

  Pointer<Uint64> get Rdx => this.Anonymous2.Anonymous.Rdx;
  set Rdx(Pointer<Uint64> value) => this.Anonymous2.Anonymous.Rdx = value;

  Pointer<Uint64> get Rbx => this.Anonymous2.Anonymous.Rbx;
  set Rbx(Pointer<Uint64> value) => this.Anonymous2.Anonymous.Rbx = value;

  Pointer<Uint64> get Rsp => this.Anonymous2.Anonymous.Rsp;
  set Rsp(Pointer<Uint64> value) => this.Anonymous2.Anonymous.Rsp = value;

  Pointer<Uint64> get Rbp => this.Anonymous2.Anonymous.Rbp;
  set Rbp(Pointer<Uint64> value) => this.Anonymous2.Anonymous.Rbp = value;

  Pointer<Uint64> get Rsi => this.Anonymous2.Anonymous.Rsi;
  set Rsi(Pointer<Uint64> value) => this.Anonymous2.Anonymous.Rsi = value;

  Pointer<Uint64> get Rdi => this.Anonymous2.Anonymous.Rdi;
  set Rdi(Pointer<Uint64> value) => this.Anonymous2.Anonymous.Rdi = value;

  Pointer<Uint64> get R8 => this.Anonymous2.Anonymous.R8;
  set R8(Pointer<Uint64> value) => this.Anonymous2.Anonymous.R8 = value;

  Pointer<Uint64> get R9 => this.Anonymous2.Anonymous.R9;
  set R9(Pointer<Uint64> value) => this.Anonymous2.Anonymous.R9 = value;

  Pointer<Uint64> get R10 => this.Anonymous2.Anonymous.R10;
  set R10(Pointer<Uint64> value) => this.Anonymous2.Anonymous.R10 = value;

  Pointer<Uint64> get R11 => this.Anonymous2.Anonymous.R11;
  set R11(Pointer<Uint64> value) => this.Anonymous2.Anonymous.R11 = value;

  Pointer<Uint64> get R12 => this.Anonymous2.Anonymous.R12;
  set R12(Pointer<Uint64> value) => this.Anonymous2.Anonymous.R12 = value;

  Pointer<Uint64> get R13 => this.Anonymous2.Anonymous.R13;
  set R13(Pointer<Uint64> value) => this.Anonymous2.Anonymous.R13 = value;

  Pointer<Uint64> get R14 => this.Anonymous2.Anonymous.R14;
  set R14(Pointer<Uint64> value) => this.Anonymous2.Anonymous.R14 = value;

  Pointer<Uint64> get R15 => this.Anonymous2.Anonymous.R15;
  set R15(Pointer<Uint64> value) => this.Anonymous2.Anonymous.R15 = value;
}

extension KNONVOLATILE_CONTEXT_POINTERS_Extension_1
    on KNONVOLATILE_CONTEXT_POINTERS {
  Array<Pointer<Uint64>> get IntegerContext => this.Anonymous2.IntegerContext;
  set IntegerContext(Array<Pointer<Uint64>> value) =>
      this.Anonymous2.IntegerContext = value;

  _KNONVOLATILE_CONTEXT_POINTERS__Anonymous2_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous2.Anonymous;
  set Anonymous(
          _KNONVOLATILE_CONTEXT_POINTERS__Anonymous2_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous2.Anonymous = value;
}

/// {@category Struct}
class LDT_ENTRY extends Struct {
  @Uint16()
  external int LimitLow;

  @Uint16()
  external int BaseLow;

  external _LDT_ENTRY__HighWord_e__Union HighWord;
}

/// {@category Struct}
class _LDT_ENTRY__HighWord_e__Union extends Union {
  external _LDT_ENTRY__HighWord_e__Union__Bytes_e__Struct Bytes;

  external _LDT_ENTRY__HighWord_e__Union__Bits_e__Struct Bits;
}

/// {@category Struct}
class _LDT_ENTRY__HighWord_e__Union__Bytes_e__Struct extends Struct {
  @Uint8()
  external int BaseMid;

  @Uint8()
  external int Flags1;

  @Uint8()
  external int Flags2;

  @Uint8()
  external int BaseHi;
}

extension LDT_ENTRY__HighWord_e__Union_Extension on LDT_ENTRY {
  int get BaseMid => this.HighWord.Bytes.BaseMid;
  set BaseMid(int value) => this.HighWord.Bytes.BaseMid = value;

  int get Flags1 => this.HighWord.Bytes.Flags1;
  set Flags1(int value) => this.HighWord.Bytes.Flags1 = value;

  int get Flags2 => this.HighWord.Bytes.Flags2;
  set Flags2(int value) => this.HighWord.Bytes.Flags2 = value;

  int get BaseHi => this.HighWord.Bytes.BaseHi;
  set BaseHi(int value) => this.HighWord.Bytes.BaseHi = value;
}

/// {@category Struct}
class _LDT_ENTRY__HighWord_e__Union__Bits_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension LDT_ENTRY__HighWord_e__Union_Extension_1 on LDT_ENTRY {
  int get bitfield => this.HighWord.Bits.bitfield;
  set bitfield(int value) => this.HighWord.Bits.bitfield = value;
}

extension LDT_ENTRY_Extension on LDT_ENTRY {
  _LDT_ENTRY__HighWord_e__Union__Bytes_e__Struct get Bytes =>
      this.HighWord.Bytes;
  set Bytes(_LDT_ENTRY__HighWord_e__Union__Bytes_e__Struct value) =>
      this.HighWord.Bytes = value;

  _LDT_ENTRY__HighWord_e__Union__Bits_e__Struct get Bits => this.HighWord.Bits;
  set Bits(_LDT_ENTRY__HighWord_e__Union__Bits_e__Struct value) =>
      this.HighWord.Bits = value;
}

/// {@category Struct}
class LOADED_IMAGE extends Struct {
  external Pointer<Utf8> ModuleName;

  @IntPtr()
  external int hFile;

  external Pointer<Uint8> MappedAddress;

  external Pointer<IMAGE_NT_HEADERS64> FileHeader;

  external Pointer<IMAGE_SECTION_HEADER> LastRvaSection;

  @Uint32()
  external int NumberOfSections;

  external Pointer<IMAGE_SECTION_HEADER> Sections;

  @Uint32()
  external int Characteristics;

  @Uint8()
  external int fSystemImage;

  @Uint8()
  external int fDOSImage;

  @Uint8()
  external int fReadOnly;

  @Uint8()
  external int Version;

  external LIST_ENTRY Links;

  @Uint32()
  external int SizeOfImage;
}

/// {@category Struct}
class LOAD_DLL_DEBUG_INFO extends Struct {
  @IntPtr()
  external int hFile;

  external Pointer lpBaseOfDll;

  @Uint32()
  external int dwDebugInfoFileOffset;

  @Uint32()
  external int nDebugInfoSize;

  external Pointer lpImageName;

  @Uint16()
  external int fUnicode;
}

/// {@category Struct}
class Location extends Struct {
  @Uint64()
  external int HostDefined;

  @Uint64()
  external int Offset;
}

/// {@category Struct}
class M128A extends Struct {
  @Uint64()
  external int Low;

  @Int64()
  external int High;
}

/// {@category Struct}
class MINIDUMP_CALLBACK_INFORMATION extends Struct {
  external Pointer<NativeFunction<MINIDUMP_CALLBACK_ROUTINE>> CallbackRoutine;

  external Pointer CallbackParam;
}

/// {@category Struct}
class MINIDUMP_CALLBACK_INPUT extends Struct {
  @Uint32()
  external int ProcessId;

  @IntPtr()
  external int ProcessHandle;

  @Uint32()
  external int CallbackType;

  external _MINIDUMP_CALLBACK_INPUT__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _MINIDUMP_CALLBACK_INPUT__Anonymous_e__Union extends Union {
  @Int32()
  external int Status;

  external MINIDUMP_THREAD_CALLBACK Thread;

  external MINIDUMP_THREAD_EX_CALLBACK ThreadEx;

  external MINIDUMP_MODULE_CALLBACK Module;

  external MINIDUMP_INCLUDE_THREAD_CALLBACK IncludeThread;

  external MINIDUMP_INCLUDE_MODULE_CALLBACK IncludeModule;

  external MINIDUMP_IO_CALLBACK Io;

  external MINIDUMP_READ_MEMORY_FAILURE_CALLBACK ReadMemoryFailure;

  @Uint32()
  external int SecondaryFlags;

  external MINIDUMP_VM_QUERY_CALLBACK VmQuery;

  external MINIDUMP_VM_PRE_READ_CALLBACK VmPreRead;

  external MINIDUMP_VM_POST_READ_CALLBACK VmPostRead;
}

extension MINIDUMP_CALLBACK_INPUT_Extension on MINIDUMP_CALLBACK_INPUT {
  int get Status => this.Anonymous.Status;
  set Status(int value) => this.Anonymous.Status = value;

  MINIDUMP_THREAD_CALLBACK get Thread => this.Anonymous.Thread;
  set Thread(MINIDUMP_THREAD_CALLBACK value) => this.Anonymous.Thread = value;

  MINIDUMP_THREAD_EX_CALLBACK get ThreadEx => this.Anonymous.ThreadEx;
  set ThreadEx(MINIDUMP_THREAD_EX_CALLBACK value) =>
      this.Anonymous.ThreadEx = value;

  MINIDUMP_MODULE_CALLBACK get Module => this.Anonymous.Module;
  set Module(MINIDUMP_MODULE_CALLBACK value) => this.Anonymous.Module = value;

  MINIDUMP_INCLUDE_THREAD_CALLBACK get IncludeThread =>
      this.Anonymous.IncludeThread;
  set IncludeThread(MINIDUMP_INCLUDE_THREAD_CALLBACK value) =>
      this.Anonymous.IncludeThread = value;

  MINIDUMP_INCLUDE_MODULE_CALLBACK get IncludeModule =>
      this.Anonymous.IncludeModule;
  set IncludeModule(MINIDUMP_INCLUDE_MODULE_CALLBACK value) =>
      this.Anonymous.IncludeModule = value;

  MINIDUMP_IO_CALLBACK get Io => this.Anonymous.Io;
  set Io(MINIDUMP_IO_CALLBACK value) => this.Anonymous.Io = value;

  MINIDUMP_READ_MEMORY_FAILURE_CALLBACK get ReadMemoryFailure =>
      this.Anonymous.ReadMemoryFailure;
  set ReadMemoryFailure(MINIDUMP_READ_MEMORY_FAILURE_CALLBACK value) =>
      this.Anonymous.ReadMemoryFailure = value;

  int get SecondaryFlags => this.Anonymous.SecondaryFlags;
  set SecondaryFlags(int value) => this.Anonymous.SecondaryFlags = value;

  MINIDUMP_VM_QUERY_CALLBACK get VmQuery => this.Anonymous.VmQuery;
  set VmQuery(MINIDUMP_VM_QUERY_CALLBACK value) =>
      this.Anonymous.VmQuery = value;

  MINIDUMP_VM_PRE_READ_CALLBACK get VmPreRead => this.Anonymous.VmPreRead;
  set VmPreRead(MINIDUMP_VM_PRE_READ_CALLBACK value) =>
      this.Anonymous.VmPreRead = value;

  MINIDUMP_VM_POST_READ_CALLBACK get VmPostRead => this.Anonymous.VmPostRead;
  set VmPostRead(MINIDUMP_VM_POST_READ_CALLBACK value) =>
      this.Anonymous.VmPostRead = value;
}

/// {@category Struct}
class MINIDUMP_CALLBACK_OUTPUT extends Struct {
  external _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union extends Union {
  @Uint32()
  external int ModuleWriteFlags;

  @Uint32()
  external int ThreadWriteFlags;

  @Uint32()
  external int SecondaryFlags;

  external _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous1_e__Struct
      Anonymous1;

  external _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous2_e__Struct
      Anonymous2;

  @IntPtr()
  external int $Handle;

  external _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous3_e__Struct
      Anonymous3;

  external _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous4_e__Struct
      Anonymous4;

  external _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous5_e__Struct
      Anonymous5;

  @Int32()
  external int Status;
}

/// {@category Struct}
@Packed(4)
class _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous1_e__Struct
    extends Struct {
  @Uint64()
  external int MemoryBase;

  @Uint32()
  external int MemorySize;
}

extension MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union_Extension
    on MINIDUMP_CALLBACK_OUTPUT {
  int get MemoryBase => this.Anonymous.Anonymous1.MemoryBase;
  set MemoryBase(int value) => this.Anonymous.Anonymous1.MemoryBase = value;

  int get MemorySize => this.Anonymous.Anonymous1.MemorySize;
  set MemorySize(int value) => this.Anonymous.Anonymous1.MemorySize = value;
}

/// {@category Struct}
class _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous2_e__Struct
    extends Struct {
  @Int32()
  external int CheckCancel;

  @Int32()
  external int Cancel;
}

extension MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union_Extension_1
    on MINIDUMP_CALLBACK_OUTPUT {
  int get CheckCancel => this.Anonymous.Anonymous2.CheckCancel;
  set CheckCancel(int value) => this.Anonymous.Anonymous2.CheckCancel = value;

  int get Cancel => this.Anonymous.Anonymous2.Cancel;
  set Cancel(int value) => this.Anonymous.Anonymous2.Cancel = value;
}

/// {@category Struct}
class _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous3_e__Struct
    extends Struct {
  external MINIDUMP_MEMORY_INFO VmRegion;

  @Int32()
  external int Continue;
}

extension MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union_Extension_2
    on MINIDUMP_CALLBACK_OUTPUT {
  MINIDUMP_MEMORY_INFO get VmRegion => this.Anonymous.Anonymous3.VmRegion;
  set VmRegion(MINIDUMP_MEMORY_INFO value) =>
      this.Anonymous.Anonymous3.VmRegion = value;

  int get Continue => this.Anonymous.Anonymous3.Continue;
  set Continue(int value) => this.Anonymous.Anonymous3.Continue = value;
}

/// {@category Struct}
class _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous4_e__Struct
    extends Struct {
  @Int32()
  external int VmQueryStatus;

  external MINIDUMP_MEMORY_INFO VmQueryResult;
}

extension MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union_Extension_3
    on MINIDUMP_CALLBACK_OUTPUT {
  int get VmQueryStatus => this.Anonymous.Anonymous4.VmQueryStatus;
  set VmQueryStatus(int value) =>
      this.Anonymous.Anonymous4.VmQueryStatus = value;

  MINIDUMP_MEMORY_INFO get VmQueryResult =>
      this.Anonymous.Anonymous4.VmQueryResult;
  set VmQueryResult(MINIDUMP_MEMORY_INFO value) =>
      this.Anonymous.Anonymous4.VmQueryResult = value;
}

/// {@category Struct}
class _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous5_e__Struct
    extends Struct {
  @Int32()
  external int VmReadStatus;

  @Uint32()
  external int VmReadBytesCompleted;
}

extension MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union_Extension_4
    on MINIDUMP_CALLBACK_OUTPUT {
  int get VmReadStatus => this.Anonymous.Anonymous5.VmReadStatus;
  set VmReadStatus(int value) => this.Anonymous.Anonymous5.VmReadStatus = value;

  int get VmReadBytesCompleted =>
      this.Anonymous.Anonymous5.VmReadBytesCompleted;
  set VmReadBytesCompleted(int value) =>
      this.Anonymous.Anonymous5.VmReadBytesCompleted = value;
}

extension MINIDUMP_CALLBACK_OUTPUT_Extension on MINIDUMP_CALLBACK_OUTPUT {
  int get ModuleWriteFlags => this.Anonymous.ModuleWriteFlags;
  set ModuleWriteFlags(int value) => this.Anonymous.ModuleWriteFlags = value;

  int get ThreadWriteFlags => this.Anonymous.ThreadWriteFlags;
  set ThreadWriteFlags(int value) => this.Anonymous.ThreadWriteFlags = value;

  int get SecondaryFlags => this.Anonymous.SecondaryFlags;
  set SecondaryFlags(int value) => this.Anonymous.SecondaryFlags = value;

  _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous1_e__Struct
      get Anonymous1 => this.Anonymous.Anonymous1;
  set Anonymous1(
          _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous1_e__Struct
              value) =>
      this.Anonymous.Anonymous1 = value;

  _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous2_e__Struct
      get Anonymous2 => this.Anonymous.Anonymous2;
  set Anonymous2(
          _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous2_e__Struct
              value) =>
      this.Anonymous.Anonymous2 = value;

  int get $Handle => this.Anonymous.$Handle;
  set $Handle(int value) => this.Anonymous.$Handle = value;

  _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous3_e__Struct
      get Anonymous3 => this.Anonymous.Anonymous3;
  set Anonymous3(
          _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous3_e__Struct
              value) =>
      this.Anonymous.Anonymous3 = value;

  _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous4_e__Struct
      get Anonymous4 => this.Anonymous.Anonymous4;
  set Anonymous4(
          _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous4_e__Struct
              value) =>
      this.Anonymous.Anonymous4 = value;

  _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous5_e__Struct
      get Anonymous5 => this.Anonymous.Anonymous5;
  set Anonymous5(
          _MINIDUMP_CALLBACK_OUTPUT__Anonymous_e__Union__Anonymous5_e__Struct
              value) =>
      this.Anonymous.Anonymous5 = value;

  int get Status => this.Anonymous.Status;
  set Status(int value) => this.Anonymous.Status = value;
}

/// {@category Struct}
class MINIDUMP_DIRECTORY extends Struct {
  @Uint32()
  external int StreamType;

  external MINIDUMP_LOCATION_DESCRIPTOR Location;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_EXCEPTION extends Struct {
  @Uint32()
  external int ExceptionCode;

  @Uint32()
  external int ExceptionFlags;

  @Uint64()
  external int ExceptionRecord;

  @Uint64()
  external int ExceptionAddress;

  @Uint32()
  external int NumberParameters;

  @Uint32()
  external int unusedAlignment;

  @Array(15)
  external Array<Uint64> ExceptionInformation;
}

/// {@category Struct}
class MINIDUMP_EXCEPTION_INFORMATION extends Struct {
  @Uint32()
  external int ThreadId;

  external Pointer<EXCEPTION_POINTERS> ExceptionPointers;

  @Int32()
  external int ClientPointers;
}

/// {@category Struct}
class MINIDUMP_EXCEPTION_INFORMATION64 extends Struct {
  @Uint32()
  external int ThreadId;

  @Uint64()
  external int ExceptionRecord;

  @Uint64()
  external int ContextRecord;

  @Int32()
  external int ClientPointers;
}

/// {@category Struct}
class MINIDUMP_EXCEPTION_STREAM extends Struct {
  @Uint32()
  external int ThreadId;

  @Uint32()
  external int alignment;

  external MINIDUMP_EXCEPTION ExceptionRecord;

  external MINIDUMP_LOCATION_DESCRIPTOR ThreadContext;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_FUNCTION_TABLE_DESCRIPTOR extends Struct {
  @Uint64()
  external int MinimumAddress;

  @Uint64()
  external int MaximumAddress;

  @Uint64()
  external int BaseAddress;

  @Uint32()
  external int EntryCount;

  @Uint32()
  external int SizeOfAlignPad;
}

/// {@category Struct}
class MINIDUMP_FUNCTION_TABLE_STREAM extends Struct {
  @Uint32()
  external int SizeOfHeader;

  @Uint32()
  external int SizeOfDescriptor;

  @Uint32()
  external int SizeOfNativeDescriptor;

  @Uint32()
  external int SizeOfFunctionEntry;

  @Uint32()
  external int NumberOfDescriptors;

  @Uint32()
  external int SizeOfAlignPad;
}

/// {@category Struct}
class MINIDUMP_HANDLE_DATA_STREAM extends Struct {
  @Uint32()
  external int SizeOfHeader;

  @Uint32()
  external int SizeOfDescriptor;

  @Uint32()
  external int NumberOfDescriptors;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_HANDLE_DESCRIPTOR extends Struct {
  @Uint64()
  external int $Handle;

  @Uint32()
  external int TypeNameRva;

  @Uint32()
  external int ObjectNameRva;

  @Uint32()
  external int Attributes;

  @Uint32()
  external int GrantedAccess;

  @Uint32()
  external int HandleCount;

  @Uint32()
  external int PointerCount;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_HANDLE_DESCRIPTOR_2 extends Struct {
  @Uint64()
  external int $Handle;

  @Uint32()
  external int TypeNameRva;

  @Uint32()
  external int ObjectNameRva;

  @Uint32()
  external int Attributes;

  @Uint32()
  external int GrantedAccess;

  @Uint32()
  external int HandleCount;

  @Uint32()
  external int PointerCount;

  @Uint32()
  external int ObjectInfoRva;

  @Uint32()
  external int Reserved0;
}

/// {@category Struct}
class MINIDUMP_HANDLE_OBJECT_INFORMATION extends Struct {
  @Uint32()
  external int NextInfoRva;

  @Uint32()
  external int InfoType;

  @Uint32()
  external int SizeOfInfo;
}

/// {@category Struct}
class MINIDUMP_HANDLE_OPERATION_LIST extends Struct {
  @Uint32()
  external int SizeOfHeader;

  @Uint32()
  external int SizeOfEntry;

  @Uint32()
  external int NumberOfEntries;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class MINIDUMP_HEADER extends Struct {
  @Uint32()
  external int Signature;

  @Uint32()
  external int Version;

  @Uint32()
  external int NumberOfStreams;

  @Uint32()
  external int StreamDirectoryRva;

  @Uint32()
  external int CheckSum;

  external _MINIDUMP_HEADER__Anonymous_e__Union Anonymous;

  @Uint64()
  external int Flags;
}

/// {@category Struct}
class _MINIDUMP_HEADER__Anonymous_e__Union extends Union {
  @Uint32()
  external int Reserved;

  @Uint32()
  external int TimeDateStamp;
}

extension MINIDUMP_HEADER_Extension on MINIDUMP_HEADER {
  int get Reserved => this.Anonymous.Reserved;
  set Reserved(int value) => this.Anonymous.Reserved = value;

  int get TimeDateStamp => this.Anonymous.TimeDateStamp;
  set TimeDateStamp(int value) => this.Anonymous.TimeDateStamp = value;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_INCLUDE_MODULE_CALLBACK extends Struct {
  @Uint64()
  external int BaseOfImage;
}

/// {@category Struct}
class MINIDUMP_INCLUDE_THREAD_CALLBACK extends Struct {
  @Uint32()
  external int ThreadId;
}

/// {@category Struct}
class MINIDUMP_IO_CALLBACK extends Struct {
  @IntPtr()
  external int $Handle;

  @Uint64()
  external int Offset;

  external Pointer Buffer;

  @Uint32()
  external int BufferBytes;
}

/// {@category Struct}
class MINIDUMP_LOCATION_DESCRIPTOR extends Struct {
  @Uint32()
  external int DataSize;

  @Uint32()
  external int Rva;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_LOCATION_DESCRIPTOR64 extends Struct {
  @Uint64()
  external int DataSize;

  @Uint64()
  external int Rva;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_MEMORY64_LIST extends Struct {
  @Uint64()
  external int NumberOfMemoryRanges;

  @Uint64()
  external int BaseRva;

  @Array(1)
  external Array<MINIDUMP_MEMORY_DESCRIPTOR64> MemoryRanges;
}

/// {@category Struct}
class MINIDUMP_MEMORY_DESCRIPTOR extends Struct {
  @Uint64()
  external int StartOfMemoryRange;

  external MINIDUMP_LOCATION_DESCRIPTOR Memory;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_MEMORY_DESCRIPTOR64 extends Struct {
  @Uint64()
  external int StartOfMemoryRange;

  @Uint64()
  external int DataSize;
}

/// {@category Struct}
class MINIDUMP_MEMORY_INFO extends Struct {
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
@Packed(4)
class MINIDUMP_MEMORY_INFO_LIST extends Struct {
  @Uint32()
  external int SizeOfHeader;

  @Uint32()
  external int SizeOfEntry;

  @Uint64()
  external int NumberOfEntries;
}

/// {@category Struct}
class MINIDUMP_MEMORY_LIST extends Struct {
  @Uint32()
  external int NumberOfMemoryRanges;

  @Array(1)
  external Array<MINIDUMP_MEMORY_DESCRIPTOR> MemoryRanges;
}

/// {@category Struct}
class MINIDUMP_MISC_INFO extends Struct {
  @Uint32()
  external int SizeOfInfo;

  @Uint32()
  external int Flags1;

  @Uint32()
  external int ProcessId;

  @Uint32()
  external int ProcessCreateTime;

  @Uint32()
  external int ProcessUserTime;

  @Uint32()
  external int ProcessKernelTime;
}

/// {@category Struct}
class MINIDUMP_MISC_INFO_2 extends Struct {
  @Uint32()
  external int SizeOfInfo;

  @Uint32()
  external int Flags1;

  @Uint32()
  external int ProcessId;

  @Uint32()
  external int ProcessCreateTime;

  @Uint32()
  external int ProcessUserTime;

  @Uint32()
  external int ProcessKernelTime;

  @Uint32()
  external int ProcessorMaxMhz;

  @Uint32()
  external int ProcessorCurrentMhz;

  @Uint32()
  external int ProcessorMhzLimit;

  @Uint32()
  external int ProcessorMaxIdleState;

  @Uint32()
  external int ProcessorCurrentIdleState;
}

/// {@category Struct}
class MINIDUMP_MISC_INFO_3 extends Struct {
  @Uint32()
  external int SizeOfInfo;

  @Uint32()
  external int Flags1;

  @Uint32()
  external int ProcessId;

  @Uint32()
  external int ProcessCreateTime;

  @Uint32()
  external int ProcessUserTime;

  @Uint32()
  external int ProcessKernelTime;

  @Uint32()
  external int ProcessorMaxMhz;

  @Uint32()
  external int ProcessorCurrentMhz;

  @Uint32()
  external int ProcessorMhzLimit;

  @Uint32()
  external int ProcessorMaxIdleState;

  @Uint32()
  external int ProcessorCurrentIdleState;

  @Uint32()
  external int ProcessIntegrityLevel;

  @Uint32()
  external int ProcessExecuteFlags;

  @Uint32()
  external int ProtectedProcess;

  @Uint32()
  external int TimeZoneId;

  external TIME_ZONE_INFORMATION TimeZone;
}

/// {@category Struct}
class MINIDUMP_MISC_INFO_4 extends Struct {
  @Uint32()
  external int SizeOfInfo;

  @Uint32()
  external int Flags1;

  @Uint32()
  external int ProcessId;

  @Uint32()
  external int ProcessCreateTime;

  @Uint32()
  external int ProcessUserTime;

  @Uint32()
  external int ProcessKernelTime;

  @Uint32()
  external int ProcessorMaxMhz;

  @Uint32()
  external int ProcessorCurrentMhz;

  @Uint32()
  external int ProcessorMhzLimit;

  @Uint32()
  external int ProcessorMaxIdleState;

  @Uint32()
  external int ProcessorCurrentIdleState;

  @Uint32()
  external int ProcessIntegrityLevel;

  @Uint32()
  external int ProcessExecuteFlags;

  @Uint32()
  external int ProtectedProcess;

  @Uint32()
  external int TimeZoneId;

  external TIME_ZONE_INFORMATION TimeZone;

  @Array(260)
  external Array<Uint16> _BuildString;

  String get BuildString {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_BuildString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set BuildString(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _BuildString[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(40)
  external Array<Uint16> _DbgBldStr;

  String get DbgBldStr {
    final charCodes = <int>[];
    for (var i = 0; i < 40; i++) {
      charCodes.add(_DbgBldStr[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DbgBldStr(String value) {
    final stringToStore = value.padRight(40, '\x00');
    for (var i = 0; i < 40; i++) {
      _DbgBldStr[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class MINIDUMP_MISC_INFO_5 extends Struct {
  @Uint32()
  external int SizeOfInfo;

  @Uint32()
  external int Flags1;

  @Uint32()
  external int ProcessId;

  @Uint32()
  external int ProcessCreateTime;

  @Uint32()
  external int ProcessUserTime;

  @Uint32()
  external int ProcessKernelTime;

  @Uint32()
  external int ProcessorMaxMhz;

  @Uint32()
  external int ProcessorCurrentMhz;

  @Uint32()
  external int ProcessorMhzLimit;

  @Uint32()
  external int ProcessorMaxIdleState;

  @Uint32()
  external int ProcessorCurrentIdleState;

  @Uint32()
  external int ProcessIntegrityLevel;

  @Uint32()
  external int ProcessExecuteFlags;

  @Uint32()
  external int ProtectedProcess;

  @Uint32()
  external int TimeZoneId;

  external TIME_ZONE_INFORMATION TimeZone;

  @Array(260)
  external Array<Uint16> _BuildString;

  String get BuildString {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_BuildString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set BuildString(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _BuildString[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(40)
  external Array<Uint16> _DbgBldStr;

  String get DbgBldStr {
    final charCodes = <int>[];
    for (var i = 0; i < 40; i++) {
      charCodes.add(_DbgBldStr[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DbgBldStr(String value) {
    final stringToStore = value.padRight(40, '\x00');
    for (var i = 0; i < 40; i++) {
      _DbgBldStr[i] = stringToStore.codeUnitAt(i);
    }
  }

  external XSTATE_CONFIG_FEATURE_MSC_INFO XStateData;

  @Uint32()
  external int ProcessCookie;
}

/// {@category Struct}
class MINIDUMP_MODULE extends Struct {
  @Uint64()
  external int BaseOfImage;

  @Uint32()
  external int SizeOfImage;

  @Uint32()
  external int CheckSum;

  @Uint32()
  external int TimeDateStamp;

  @Uint32()
  external int ModuleNameRva;

  external VS_FIXEDFILEINFO VersionInfo;

  external MINIDUMP_LOCATION_DESCRIPTOR CvRecord;

  external MINIDUMP_LOCATION_DESCRIPTOR MiscRecord;

  @Uint64()
  external int Reserved0;

  @Uint64()
  external int Reserved1;
}

/// {@category Struct}
class MINIDUMP_MODULE_CALLBACK extends Struct {
  external Pointer<Utf16> FullPath;

  @Uint64()
  external int BaseOfImage;

  @Uint32()
  external int SizeOfImage;

  @Uint32()
  external int CheckSum;

  @Uint32()
  external int TimeDateStamp;

  external VS_FIXEDFILEINFO VersionInfo;

  external Pointer CvRecord;

  @Uint32()
  external int SizeOfCvRecord;

  external Pointer MiscRecord;

  @Uint32()
  external int SizeOfMiscRecord;
}

/// {@category Struct}
class MINIDUMP_MODULE_LIST extends Struct {
  @Uint32()
  external int NumberOfModules;

  @Array(1)
  external Array<MINIDUMP_MODULE> Modules;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_PROCESS_VM_COUNTERS_1 extends Struct {
  @Uint16()
  external int Revision;

  @Uint32()
  external int PageFaultCount;

  @Uint64()
  external int PeakWorkingSetSize;

  @Uint64()
  external int WorkingSetSize;

  @Uint64()
  external int QuotaPeakPagedPoolUsage;

  @Uint64()
  external int QuotaPagedPoolUsage;

  @Uint64()
  external int QuotaPeakNonPagedPoolUsage;

  @Uint64()
  external int QuotaNonPagedPoolUsage;

  @Uint64()
  external int PagefileUsage;

  @Uint64()
  external int PeakPagefileUsage;

  @Uint64()
  external int PrivateUsage;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_PROCESS_VM_COUNTERS_2 extends Struct {
  @Uint16()
  external int Revision;

  @Uint16()
  external int Flags;

  @Uint32()
  external int PageFaultCount;

  @Uint64()
  external int PeakWorkingSetSize;

  @Uint64()
  external int WorkingSetSize;

  @Uint64()
  external int QuotaPeakPagedPoolUsage;

  @Uint64()
  external int QuotaPagedPoolUsage;

  @Uint64()
  external int QuotaPeakNonPagedPoolUsage;

  @Uint64()
  external int QuotaNonPagedPoolUsage;

  @Uint64()
  external int PagefileUsage;

  @Uint64()
  external int PeakPagefileUsage;

  @Uint64()
  external int PeakVirtualSize;

  @Uint64()
  external int VirtualSize;

  @Uint64()
  external int PrivateUsage;

  @Uint64()
  external int PrivateWorkingSetSize;

  @Uint64()
  external int SharedCommitUsage;

  @Uint64()
  external int JobSharedCommitUsage;

  @Uint64()
  external int JobPrivateCommitUsage;

  @Uint64()
  external int JobPeakPrivateCommitUsage;

  @Uint64()
  external int JobPrivateCommitLimit;

  @Uint64()
  external int JobTotalCommitLimit;
}

/// {@category Struct}
class MINIDUMP_READ_MEMORY_FAILURE_CALLBACK extends Struct {
  @Uint64()
  external int Offset;

  @Uint32()
  external int Bytes;

  @Int32()
  external int FailureStatus;
}

/// {@category Struct}
class MINIDUMP_STRING extends Struct {
  @Uint32()
  external int Length;

  @Array(1)
  external Array<Uint16> _Buffer;

  String get Buffer {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_Buffer[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Buffer(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _Buffer[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_SYSTEM_BASIC_INFORMATION extends Struct {
  @Uint32()
  external int TimerResolution;

  @Uint32()
  external int PageSize;

  @Uint32()
  external int NumberOfPhysicalPages;

  @Uint32()
  external int LowestPhysicalPageNumber;

  @Uint32()
  external int HighestPhysicalPageNumber;

  @Uint32()
  external int AllocationGranularity;

  @Uint64()
  external int MinimumUserModeAddress;

  @Uint64()
  external int MaximumUserModeAddress;

  @Uint64()
  external int ActiveProcessorsAffinityMask;

  @Uint32()
  external int NumberOfProcessors;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_SYSTEM_BASIC_PERFORMANCE_INFORMATION extends Struct {
  @Uint64()
  external int AvailablePages;

  @Uint64()
  external int CommittedPages;

  @Uint64()
  external int CommitLimit;

  @Uint64()
  external int PeakCommitment;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_SYSTEM_FILECACHE_INFORMATION extends Struct {
  @Uint64()
  external int CurrentSize;

  @Uint64()
  external int PeakSize;

  @Uint32()
  external int PageFaultCount;

  @Uint64()
  external int MinimumWorkingSet;

  @Uint64()
  external int MaximumWorkingSet;

  @Uint64()
  external int CurrentSizeIncludingTransitionInPages;

  @Uint64()
  external int PeakSizeIncludingTransitionInPages;

  @Uint32()
  external int TransitionRePurposeCount;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class MINIDUMP_SYSTEM_INFO extends Struct {
  @Uint16()
  external int ProcessorArchitecture;

  @Uint16()
  external int ProcessorLevel;

  @Uint16()
  external int ProcessorRevision;

  external _MINIDUMP_SYSTEM_INFO__Anonymous1_e__Union Anonymous1;

  @Uint32()
  external int MajorVersion;

  @Uint32()
  external int MinorVersion;

  @Uint32()
  external int BuildNumber;

  @Uint32()
  external int PlatformId;

  @Uint32()
  external int CSDVersionRva;

  external _MINIDUMP_SYSTEM_INFO__Anonymous2_e__Union Anonymous2;

  external CPU_INFORMATION Cpu;
}

/// {@category Struct}
class _MINIDUMP_SYSTEM_INFO__Anonymous1_e__Union extends Union {
  @Uint16()
  external int Reserved0;

  external _MINIDUMP_SYSTEM_INFO__Anonymous1_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _MINIDUMP_SYSTEM_INFO__Anonymous1_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int NumberOfProcessors;

  @Uint8()
  external int ProductType;
}

extension MINIDUMP_SYSTEM_INFO__Anonymous1_e__Union_Extension
    on MINIDUMP_SYSTEM_INFO {
  int get NumberOfProcessors => this.Anonymous1.Anonymous.NumberOfProcessors;
  set NumberOfProcessors(int value) =>
      this.Anonymous1.Anonymous.NumberOfProcessors = value;

  int get ProductType => this.Anonymous1.Anonymous.ProductType;
  set ProductType(int value) => this.Anonymous1.Anonymous.ProductType = value;
}

extension MINIDUMP_SYSTEM_INFO_Extension on MINIDUMP_SYSTEM_INFO {
  int get Reserved0 => this.Anonymous1.Reserved0;
  set Reserved0(int value) => this.Anonymous1.Reserved0 = value;

  _MINIDUMP_SYSTEM_INFO__Anonymous1_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous1.Anonymous;
  set Anonymous(
          _MINIDUMP_SYSTEM_INFO__Anonymous1_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous1.Anonymous = value;
}

/// {@category Struct}
class _MINIDUMP_SYSTEM_INFO__Anonymous2_e__Union extends Union {
  @Uint32()
  external int Reserved1;

  external _MINIDUMP_SYSTEM_INFO__Anonymous2_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _MINIDUMP_SYSTEM_INFO__Anonymous2_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int SuiteMask;

  @Uint16()
  external int Reserved2;
}

extension MINIDUMP_SYSTEM_INFO__Anonymous2_e__Union_Extension
    on MINIDUMP_SYSTEM_INFO {
  int get SuiteMask => this.Anonymous2.Anonymous.SuiteMask;
  set SuiteMask(int value) => this.Anonymous2.Anonymous.SuiteMask = value;

  int get Reserved2 => this.Anonymous2.Anonymous.Reserved2;
  set Reserved2(int value) => this.Anonymous2.Anonymous.Reserved2 = value;
}

extension MINIDUMP_SYSTEM_INFO_Extension_1 on MINIDUMP_SYSTEM_INFO {
  int get Reserved1 => this.Anonymous2.Reserved1;
  set Reserved1(int value) => this.Anonymous2.Reserved1 = value;

  _MINIDUMP_SYSTEM_INFO__Anonymous2_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous2.Anonymous;
  set Anonymous(
          _MINIDUMP_SYSTEM_INFO__Anonymous2_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous2.Anonymous = value;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_SYSTEM_MEMORY_INFO_1 extends Struct {
  @Uint16()
  external int Revision;

  @Uint16()
  external int Flags;

  external MINIDUMP_SYSTEM_BASIC_INFORMATION BasicInfo;

  external MINIDUMP_SYSTEM_FILECACHE_INFORMATION FileCacheInfo;

  external MINIDUMP_SYSTEM_BASIC_PERFORMANCE_INFORMATION BasicPerfInfo;

  external MINIDUMP_SYSTEM_PERFORMANCE_INFORMATION PerfInfo;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_SYSTEM_PERFORMANCE_INFORMATION extends Struct {
  @Uint64()
  external int IdleProcessTime;

  @Uint64()
  external int IoReadTransferCount;

  @Uint64()
  external int IoWriteTransferCount;

  @Uint64()
  external int IoOtherTransferCount;

  @Uint32()
  external int IoReadOperationCount;

  @Uint32()
  external int IoWriteOperationCount;

  @Uint32()
  external int IoOtherOperationCount;

  @Uint32()
  external int AvailablePages;

  @Uint32()
  external int CommittedPages;

  @Uint32()
  external int CommitLimit;

  @Uint32()
  external int PeakCommitment;

  @Uint32()
  external int PageFaultCount;

  @Uint32()
  external int CopyOnWriteCount;

  @Uint32()
  external int TransitionCount;

  @Uint32()
  external int CacheTransitionCount;

  @Uint32()
  external int DemandZeroCount;

  @Uint32()
  external int PageReadCount;

  @Uint32()
  external int PageReadIoCount;

  @Uint32()
  external int CacheReadCount;

  @Uint32()
  external int CacheIoCount;

  @Uint32()
  external int DirtyPagesWriteCount;

  @Uint32()
  external int DirtyWriteIoCount;

  @Uint32()
  external int MappedPagesWriteCount;

  @Uint32()
  external int MappedWriteIoCount;

  @Uint32()
  external int PagedPoolPages;

  @Uint32()
  external int NonPagedPoolPages;

  @Uint32()
  external int PagedPoolAllocs;

  @Uint32()
  external int PagedPoolFrees;

  @Uint32()
  external int NonPagedPoolAllocs;

  @Uint32()
  external int NonPagedPoolFrees;

  @Uint32()
  external int FreeSystemPtes;

  @Uint32()
  external int ResidentSystemCodePage;

  @Uint32()
  external int TotalSystemDriverPages;

  @Uint32()
  external int TotalSystemCodePages;

  @Uint32()
  external int NonPagedPoolLookasideHits;

  @Uint32()
  external int PagedPoolLookasideHits;

  @Uint32()
  external int AvailablePagedPoolPages;

  @Uint32()
  external int ResidentSystemCachePage;

  @Uint32()
  external int ResidentPagedPoolPage;

  @Uint32()
  external int ResidentSystemDriverPage;

  @Uint32()
  external int CcFastReadNoWait;

  @Uint32()
  external int CcFastReadWait;

  @Uint32()
  external int CcFastReadResourceMiss;

  @Uint32()
  external int CcFastReadNotPossible;

  @Uint32()
  external int CcFastMdlReadNoWait;

  @Uint32()
  external int CcFastMdlReadWait;

  @Uint32()
  external int CcFastMdlReadResourceMiss;

  @Uint32()
  external int CcFastMdlReadNotPossible;

  @Uint32()
  external int CcMapDataNoWait;

  @Uint32()
  external int CcMapDataWait;

  @Uint32()
  external int CcMapDataNoWaitMiss;

  @Uint32()
  external int CcMapDataWaitMiss;

  @Uint32()
  external int CcPinMappedDataCount;

  @Uint32()
  external int CcPinReadNoWait;

  @Uint32()
  external int CcPinReadWait;

  @Uint32()
  external int CcPinReadNoWaitMiss;

  @Uint32()
  external int CcPinReadWaitMiss;

  @Uint32()
  external int CcCopyReadNoWait;

  @Uint32()
  external int CcCopyReadWait;

  @Uint32()
  external int CcCopyReadNoWaitMiss;

  @Uint32()
  external int CcCopyReadWaitMiss;

  @Uint32()
  external int CcMdlReadNoWait;

  @Uint32()
  external int CcMdlReadWait;

  @Uint32()
  external int CcMdlReadNoWaitMiss;

  @Uint32()
  external int CcMdlReadWaitMiss;

  @Uint32()
  external int CcReadAheadIos;

  @Uint32()
  external int CcLazyWriteIos;

  @Uint32()
  external int CcLazyWritePages;

  @Uint32()
  external int CcDataFlushes;

  @Uint32()
  external int CcDataPages;

  @Uint32()
  external int ContextSwitches;

  @Uint32()
  external int FirstLevelTbFills;

  @Uint32()
  external int SecondLevelTbFills;

  @Uint32()
  external int SystemCalls;

  @Uint64()
  external int CcTotalDirtyPages;

  @Uint64()
  external int CcDirtyPageThreshold;

  @Int64()
  external int ResidentAvailablePages;

  @Uint64()
  external int SharedCommittedPages;
}

/// {@category Struct}
class MINIDUMP_THREAD extends Struct {
  @Uint32()
  external int ThreadId;

  @Uint32()
  external int SuspendCount;

  @Uint32()
  external int PriorityClass;

  @Uint32()
  external int Priority;

  @Uint64()
  external int Teb;

  external MINIDUMP_MEMORY_DESCRIPTOR Stack;

  external MINIDUMP_LOCATION_DESCRIPTOR ThreadContext;
}

/// {@category Struct}
class MINIDUMP_THREAD_CALLBACK extends Struct {
  @Uint32()
  external int ThreadId;

  @IntPtr()
  external int ThreadHandle;

  external CONTEXT Context;

  @Uint32()
  external int SizeOfContext;

  @Uint64()
  external int StackBase;

  @Uint64()
  external int StackEnd;
}

/// {@category Struct}
class MINIDUMP_THREAD_EX extends Struct {
  @Uint32()
  external int ThreadId;

  @Uint32()
  external int SuspendCount;

  @Uint32()
  external int PriorityClass;

  @Uint32()
  external int Priority;

  @Uint64()
  external int Teb;

  external MINIDUMP_MEMORY_DESCRIPTOR Stack;

  external MINIDUMP_LOCATION_DESCRIPTOR ThreadContext;

  external MINIDUMP_MEMORY_DESCRIPTOR BackingStore;
}

/// {@category Struct}
class MINIDUMP_THREAD_EX_CALLBACK extends Struct {
  @Uint32()
  external int ThreadId;

  @IntPtr()
  external int ThreadHandle;

  external CONTEXT Context;

  @Uint32()
  external int SizeOfContext;

  @Uint64()
  external int StackBase;

  @Uint64()
  external int StackEnd;

  @Uint64()
  external int BackingStoreBase;

  @Uint64()
  external int BackingStoreEnd;
}

/// {@category Struct}
class MINIDUMP_THREAD_EX_LIST extends Struct {
  @Uint32()
  external int NumberOfThreads;

  @Array(1)
  external Array<MINIDUMP_THREAD_EX> Threads;
}

/// {@category Struct}
class MINIDUMP_THREAD_INFO extends Struct {
  @Uint32()
  external int ThreadId;

  @Uint32()
  external int DumpFlags;

  @Uint32()
  external int DumpError;

  @Uint32()
  external int ExitStatus;

  @Uint64()
  external int CreateTime;

  @Uint64()
  external int ExitTime;

  @Uint64()
  external int KernelTime;

  @Uint64()
  external int UserTime;

  @Uint64()
  external int StartAddress;

  @Uint64()
  external int Affinity;
}

/// {@category Struct}
class MINIDUMP_THREAD_INFO_LIST extends Struct {
  @Uint32()
  external int SizeOfHeader;

  @Uint32()
  external int SizeOfEntry;

  @Uint32()
  external int NumberOfEntries;
}

/// {@category Struct}
class MINIDUMP_THREAD_LIST extends Struct {
  @Uint32()
  external int NumberOfThreads;

  @Array(1)
  external Array<MINIDUMP_THREAD> Threads;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_THREAD_NAME extends Struct {
  @Uint32()
  external int ThreadId;

  @Uint64()
  external int RvaOfThreadName;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_THREAD_NAME_LIST extends Struct {
  @Uint32()
  external int NumberOfThreadNames;

  @Array(1)
  external Array<MINIDUMP_THREAD_NAME> ThreadNames;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_TOKEN_INFO_HEADER extends Struct {
  @Uint32()
  external int TokenSize;

  @Uint32()
  external int TokenId;

  @Uint64()
  external int TokenHandle;
}

/// {@category Struct}
class MINIDUMP_TOKEN_INFO_LIST extends Struct {
  @Uint32()
  external int TokenListSize;

  @Uint32()
  external int TokenListEntries;

  @Uint32()
  external int ListHeaderSize;

  @Uint32()
  external int ElementHeaderSize;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_UNLOADED_MODULE extends Struct {
  @Uint64()
  external int BaseOfImage;

  @Uint32()
  external int SizeOfImage;

  @Uint32()
  external int CheckSum;

  @Uint32()
  external int TimeDateStamp;

  @Uint32()
  external int ModuleNameRva;
}

/// {@category Struct}
class MINIDUMP_UNLOADED_MODULE_LIST extends Struct {
  @Uint32()
  external int SizeOfHeader;

  @Uint32()
  external int SizeOfEntry;

  @Uint32()
  external int NumberOfEntries;
}

/// {@category Struct}
class MINIDUMP_USER_RECORD extends Struct {
  @Uint32()
  external int Type;

  external MINIDUMP_LOCATION_DESCRIPTOR Memory;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_USER_STREAM extends Struct {
  @Uint32()
  external int Type;

  @Uint32()
  external int BufferSize;

  external Pointer Buffer;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_USER_STREAM_INFORMATION extends Struct {
  @Uint32()
  external int UserStreamCount;

  external Pointer<MINIDUMP_USER_STREAM> UserStreamArray;
}

/// {@category Struct}
class MINIDUMP_VM_POST_READ_CALLBACK extends Struct {
  @Uint64()
  external int Offset;

  external Pointer Buffer;

  @Uint32()
  external int Size;

  @Uint32()
  external int Completed;

  @Int32()
  external int Status;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_VM_PRE_READ_CALLBACK extends Struct {
  @Uint64()
  external int Offset;

  external Pointer Buffer;

  @Uint32()
  external int Size;
}

/// {@category Struct}
@Packed(4)
class MINIDUMP_VM_QUERY_CALLBACK extends Struct {
  @Uint64()
  external int Offset;
}

/// {@category Struct}
class MODLOAD_CVMISC extends Struct {
  @Uint32()
  external int oCV;

  @IntPtr()
  external int cCV;

  @Uint32()
  external int oMisc;

  @IntPtr()
  external int cMisc;

  @Uint32()
  external int dtImage;

  @Uint32()
  external int cImage;
}

/// {@category Struct}
class MODLOAD_DATA extends Struct {
  @Uint32()
  external int ssize;

  @Uint32()
  external int ssig;

  external Pointer data;

  @Uint32()
  external int size;

  @Uint32()
  external int flags;
}

/// {@category Struct}
class MODLOAD_PDBGUID_PDBAGE extends Struct {
  external GUID PdbGuid;

  @Uint32()
  external int PdbAge;
}

/// {@category Struct}
class MODULE_TYPE_INFO extends Struct {
  @Uint16()
  external int dataLength;

  @Uint16()
  external int leaf;

  @Array(1)
  external Array<Uint8> data;
}

/// {@category Struct}
class OMAP extends Struct {
  @Uint32()
  external int rva;

  @Uint32()
  external int rvaTo;
}

/// {@category Struct}
class OUTPUT_DEBUG_STRING_INFO extends Struct {
  external Pointer<Utf8> lpDebugStringData;

  @Uint16()
  external int fUnicode;

  @Uint16()
  external int nDebugStringLength;
}

/// {@category Struct}
class PHYSICAL extends Struct {
  @Uint64()
  external int Address;

  @Uint32()
  external int BufLen;

  @Array(1)
  external Array<Uint8> Buf;
}

/// {@category Struct}
class PHYSICAL_MEMORY_DESCRIPTOR32 extends Struct {
  @Uint32()
  external int NumberOfRuns;

  @Uint32()
  external int NumberOfPages;

  @Array(1)
  external Array<PHYSICAL_MEMORY_RUN32> Run;
}

/// {@category Struct}
class PHYSICAL_MEMORY_DESCRIPTOR64 extends Struct {
  @Uint32()
  external int NumberOfRuns;

  @Uint64()
  external int NumberOfPages;

  @Array(1)
  external Array<PHYSICAL_MEMORY_RUN64> Run;
}

/// {@category Struct}
class PHYSICAL_MEMORY_RUN32 extends Struct {
  @Uint32()
  external int BasePage;

  @Uint32()
  external int PageCount;
}

/// {@category Struct}
class PHYSICAL_MEMORY_RUN64 extends Struct {
  @Uint64()
  external int BasePage;

  @Uint64()
  external int PageCount;
}

/// {@category Struct}
class PHYSICAL_TO_VIRTUAL extends Struct {
  @Uint32()
  external int Status;

  @Uint32()
  external int Size;

  @Uint64()
  external int PdeAddress;
}

/// {@category Struct}
class PHYSICAL_WITH_FLAGS extends Struct {
  @Uint64()
  external int Address;

  @Uint32()
  external int BufLen;

  @Uint32()
  external int Flags;

  @Array(1)
  external Array<Uint8> Buf;
}

/// {@category Struct}
class POINTER_SEARCH_PHYSICAL extends Struct {
  @Uint64()
  external int Offset;

  @Uint64()
  external int Length;

  @Uint64()
  external int PointerMin;

  @Uint64()
  external int PointerMax;

  @Uint32()
  external int Flags;

  external Pointer<Uint64> MatchOffsets;

  @Uint32()
  external int MatchOffsetsSize;

  @Uint32()
  external int MatchOffsetsCount;
}

/// {@category Struct}
class PROCESSORINFO extends Struct {
  @Uint16()
  external int Processor;

  @Uint16()
  external int NumberProcessors;
}

/// {@category Struct}
class PROCESS_NAME_ENTRY extends Struct {
  @Uint32()
  external int ProcessId;

  @Uint32()
  external int NameOffset;

  @Uint32()
  external int NameSize;

  @Uint32()
  external int NextEntry;
}

/// {@category Struct}
class PROFILER_HEAP_OBJECT extends Struct {
  @Uint32()
  external int size;

  external _PROFILER_HEAP_OBJECT__Anonymous_e__Union Anonymous;

  @Uint32()
  external int typeNameId;

  @Uint32()
  external int flags;

  @Uint16()
  external int unused;

  @Uint16()
  external int optionalInfoCount;
}

/// {@category Struct}
class _PROFILER_HEAP_OBJECT__Anonymous_e__Union extends Union {
  @IntPtr()
  external int objectId;

  external Pointer externalObjectAddress;
}

extension PROFILER_HEAP_OBJECT_Extension on PROFILER_HEAP_OBJECT {
  int get objectId => this.Anonymous.objectId;
  set objectId(int value) => this.Anonymous.objectId = value;

  Pointer get externalObjectAddress => this.Anonymous.externalObjectAddress;
  set externalObjectAddress(Pointer value) =>
      this.Anonymous.externalObjectAddress = value;
}

/// {@category Struct}
class PROFILER_HEAP_OBJECT_OPTIONAL_INFO extends Struct {
  @Int32()
  external int infoType;

  external _PROFILER_HEAP_OBJECT_OPTIONAL_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PROFILER_HEAP_OBJECT_OPTIONAL_INFO__Anonymous_e__Union extends Union {
  @IntPtr()
  external int prototype;

  external Pointer<Utf16> functionName;

  @Uint32()
  external int elementAttributesSize;

  @Uint32()
  external int elementTextChildrenSize;

  external Pointer<PROFILER_HEAP_OBJECT_SCOPE_LIST> scopeList;

  external Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP> internalProperty;

  external Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> namePropertyList;

  external Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> indexPropertyList;

  external Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> relationshipList;

  external Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> eventList;

  external Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST>
      weakMapCollectionList;

  external Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> mapCollectionList;

  external Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> setCollectionList;
}

extension PROFILER_HEAP_OBJECT_OPTIONAL_INFO_Extension
    on PROFILER_HEAP_OBJECT_OPTIONAL_INFO {
  int get prototype => this.Anonymous.prototype;
  set prototype(int value) => this.Anonymous.prototype = value;

  Pointer<Utf16> get functionName => this.Anonymous.functionName;
  set functionName(Pointer<Utf16> value) => this.Anonymous.functionName = value;

  int get elementAttributesSize => this.Anonymous.elementAttributesSize;
  set elementAttributesSize(int value) =>
      this.Anonymous.elementAttributesSize = value;

  int get elementTextChildrenSize => this.Anonymous.elementTextChildrenSize;
  set elementTextChildrenSize(int value) =>
      this.Anonymous.elementTextChildrenSize = value;

  Pointer<PROFILER_HEAP_OBJECT_SCOPE_LIST> get scopeList =>
      this.Anonymous.scopeList;
  set scopeList(Pointer<PROFILER_HEAP_OBJECT_SCOPE_LIST> value) =>
      this.Anonymous.scopeList = value;

  Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP> get internalProperty =>
      this.Anonymous.internalProperty;
  set internalProperty(Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP> value) =>
      this.Anonymous.internalProperty = value;

  Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> get namePropertyList =>
      this.Anonymous.namePropertyList;
  set namePropertyList(Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> value) =>
      this.Anonymous.namePropertyList = value;

  Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> get indexPropertyList =>
      this.Anonymous.indexPropertyList;
  set indexPropertyList(
          Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> value) =>
      this.Anonymous.indexPropertyList = value;

  Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> get relationshipList =>
      this.Anonymous.relationshipList;
  set relationshipList(Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> value) =>
      this.Anonymous.relationshipList = value;

  Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> get eventList =>
      this.Anonymous.eventList;
  set eventList(Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> value) =>
      this.Anonymous.eventList = value;

  Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> get weakMapCollectionList =>
      this.Anonymous.weakMapCollectionList;
  set weakMapCollectionList(
          Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> value) =>
      this.Anonymous.weakMapCollectionList = value;

  Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> get mapCollectionList =>
      this.Anonymous.mapCollectionList;
  set mapCollectionList(
          Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> value) =>
      this.Anonymous.mapCollectionList = value;

  Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> get setCollectionList =>
      this.Anonymous.setCollectionList;
  set setCollectionList(
          Pointer<PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST> value) =>
      this.Anonymous.setCollectionList = value;
}

/// {@category Struct}
class PROFILER_HEAP_OBJECT_RELATIONSHIP extends Struct {
  @Uint32()
  external int relationshipId;

  @Int32()
  external int relationshipInfo;

  external _PROFILER_HEAP_OBJECT_RELATIONSHIP__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PROFILER_HEAP_OBJECT_RELATIONSHIP__Anonymous_e__Union extends Union {
  @Double()
  external double numberValue;

  external Pointer<Utf16> stringValue;

  external Pointer<Utf16> bstrValue;

  @IntPtr()
  external int objectId;

  external Pointer externalObjectAddress;

  external Pointer<PROFILER_PROPERTY_TYPE_SUBSTRING_INFO> subString;
}

extension PROFILER_HEAP_OBJECT_RELATIONSHIP_Extension
    on PROFILER_HEAP_OBJECT_RELATIONSHIP {
  double get numberValue => this.Anonymous.numberValue;
  set numberValue(double value) => this.Anonymous.numberValue = value;

  Pointer<Utf16> get stringValue => this.Anonymous.stringValue;
  set stringValue(Pointer<Utf16> value) => this.Anonymous.stringValue = value;

  Pointer<Utf16> get bstrValue => this.Anonymous.bstrValue;
  set bstrValue(Pointer<Utf16> value) => this.Anonymous.bstrValue = value;

  int get objectId => this.Anonymous.objectId;
  set objectId(int value) => this.Anonymous.objectId = value;

  Pointer get externalObjectAddress => this.Anonymous.externalObjectAddress;
  set externalObjectAddress(Pointer value) =>
      this.Anonymous.externalObjectAddress = value;

  Pointer<PROFILER_PROPERTY_TYPE_SUBSTRING_INFO> get subString =>
      this.Anonymous.subString;
  set subString(Pointer<PROFILER_PROPERTY_TYPE_SUBSTRING_INFO> value) =>
      this.Anonymous.subString = value;
}

/// {@category Struct}
class PROFILER_HEAP_OBJECT_RELATIONSHIP_LIST extends Struct {
  @Uint32()
  external int count;

  @Array(1)
  external Array<PROFILER_HEAP_OBJECT_RELATIONSHIP> elements;
}

/// {@category Struct}
class PROFILER_HEAP_OBJECT_SCOPE_LIST extends Struct {
  @Uint32()
  external int count;

  @Array(1)
  external Array<IntPtr> scopes;
}

/// {@category Struct}
class PROFILER_HEAP_SUMMARY extends Struct {
  @Int32()
  external int version;

  @Uint32()
  external int totalHeapSize;
}

/// {@category Struct}
class PROFILER_PROPERTY_TYPE_SUBSTRING_INFO extends Struct {
  @Uint32()
  external int length;

  external Pointer<Utf16> value;
}

/// {@category Struct}
class READCONTROLSPACE extends Struct {
  @Uint16()
  external int Processor;

  @Uint32()
  external int Address;

  @Uint32()
  external int BufLen;

  @Array(1)
  external Array<Uint8> Buf;
}

/// {@category Struct}
class READCONTROLSPACE32 extends Struct {
  @Uint16()
  external int Processor;

  @Uint32()
  external int Address;

  @Uint32()
  external int BufLen;

  @Array(1)
  external Array<Uint8> Buf;
}

/// {@category Struct}
class READCONTROLSPACE64 extends Struct {
  @Uint16()
  external int Processor;

  @Uint64()
  external int Address;

  @Uint32()
  external int BufLen;

  @Array(1)
  external Array<Uint8> Buf;
}

/// {@category Struct}
class READ_WRITE_MSR extends Struct {
  @Uint32()
  external int Msr;

  @Int64()
  external int Value;
}

/// {@category Struct}
class RIP_INFO extends Struct {
  @Uint32()
  external int dwError;

  @Uint32()
  external int dwType;
}

/// {@category Struct}
class SEARCHMEMORY extends Struct {
  @Uint64()
  external int SearchAddress;

  @Uint64()
  external int SearchLength;

  @Uint64()
  external int FoundAddress;

  @Uint32()
  external int PatternLength;

  external Pointer Pattern;
}

/// {@category Struct}
class SOURCEFILE extends Struct {
  @Uint64()
  external int ModBase;

  external Pointer<Utf16> FileName;
}

/// {@category Struct}
class SRCCODEINFO extends Struct {
  @Uint32()
  external int SizeOfStruct;

  external Pointer Key;

  @Uint64()
  external int ModBase;

  @Array(261)
  external Array<Uint16> _Obj;

  String get Obj {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_Obj[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Obj(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _Obj[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(261)
  external Array<Uint16> _FileName;

  String get FileName {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_FileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileName(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _FileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int LineNumber;

  @Uint64()
  external int Address;
}

/// {@category Struct}
class STACKFRAME64 extends Struct {
  external ADDRESS64 AddrPC;

  external ADDRESS64 AddrReturn;

  external ADDRESS64 AddrFrame;

  external ADDRESS64 AddrStack;

  external ADDRESS64 AddrBStore;

  external Pointer FuncTableEntry;

  @Array(4)
  external Array<Uint64> Params;

  @Int32()
  external int Far;

  @Int32()
  external int Virtual;

  @Array(3)
  external Array<Uint64> Reserved;

  external KDHELP64 KdHelp;
}

/// {@category Struct}
class STACKFRAME_EX extends Struct {
  external ADDRESS64 AddrPC;

  external ADDRESS64 AddrReturn;

  external ADDRESS64 AddrFrame;

  external ADDRESS64 AddrStack;

  external ADDRESS64 AddrBStore;

  external Pointer FuncTableEntry;

  @Array(4)
  external Array<Uint64> Params;

  @Int32()
  external int Far;

  @Int32()
  external int Virtual;

  @Array(3)
  external Array<Uint64> Reserved;

  external KDHELP64 KdHelp;

  @Uint32()
  external int StackFrameSize;

  @Uint32()
  external int InlineFrameContext;
}

/// {@category Struct}
class STACK_SRC_INFO extends Struct {
  external Pointer<Utf16> ImagePath;

  external Pointer<Utf16> ModuleName;

  external Pointer<Utf16> Function;

  @Uint32()
  external int Displacement;

  @Uint32()
  external int Row;

  @Uint32()
  external int Column;
}

/// {@category Struct}
class STACK_SYM_FRAME_INFO extends Struct {
  external DEBUG_STACK_FRAME_EX StackFrameEx;

  external STACK_SRC_INFO SrcInfo;
}

/// {@category Struct}
class SYMBOL_INFO extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint32()
  external int TypeIndex;

  @Array(2)
  external Array<Uint64> Reserved;

  @Uint32()
  external int Index;

  @Uint32()
  external int Size;

  @Uint64()
  external int ModBase;

  @Uint32()
  external int Flags;

  @Uint64()
  external int Value;

  @Uint64()
  external int Address;

  @Uint32()
  external int Register;

  @Uint32()
  external int Scope;

  @Uint32()
  external int Tag;

  @Uint32()
  external int NameLen;

  @Uint32()
  external int MaxNameLen;

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
class SYMBOL_INFO_EX extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint32()
  external int TypeOfInfo;

  @Uint64()
  external int Offset;

  @Uint32()
  external int Line;

  @Uint32()
  external int Displacement;

  @Array(4)
  external Array<Uint32> Reserved;
}

/// {@category Struct}
class SYMBOL_INFO_PACKAGE extends Struct {
  external SYMBOL_INFO si;

  @Array(2001)
  external Array<Uint16> _name;

  String get name {
    final charCodes = <int>[];
    for (var i = 0; i < 2001; i++) {
      charCodes.add(_name[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set name(String value) {
    final stringToStore = value.padRight(2001, '\x00');
    for (var i = 0; i < 2001; i++) {
      _name[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SYMSRV_EXTENDED_OUTPUT_DATA extends Struct {
  @Uint32()
  external int sizeOfStruct;

  @Uint32()
  external int version;

  @Array(261)
  external Array<Uint16> _filePtrMsg;

  String get filePtrMsg {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_filePtrMsg[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set filePtrMsg(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _filePtrMsg[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SYMSRV_INDEX_INFO extends Struct {
  @Uint32()
  external int sizeofstruct;

  @Array(261)
  external Array<Uint16> _file;

  String get file {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_file[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set file(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _file[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int32()
  external int stripped;

  @Uint32()
  external int timestamp;

  @Uint32()
  external int size;

  @Array(261)
  external Array<Uint16> _dbgfile;

  String get dbgfile {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_dbgfile[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set dbgfile(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _dbgfile[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(261)
  external Array<Uint16> _pdbfile;

  String get pdbfile {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_pdbfile[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set pdbfile(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _pdbfile[i] = stringToStore.codeUnitAt(i);
    }
  }

  external GUID guid;

  @Uint32()
  external int sig;

  @Uint32()
  external int age;
}

/// {@category Struct}
class SYM_DUMP_PARAM extends Struct {
  @Uint32()
  external int size;

  external Pointer<Uint8> sName;

  @Uint32()
  external int Options;

  @Uint64()
  external int addr;

  external Pointer<FIELD_INFO> listLink;

  external _SYM_DUMP_PARAM__Anonymous_e__Union Anonymous;

  external Pointer<NativeFunction<PSYM_DUMP_FIELD_CALLBACK>> CallbackRoutine;

  @Uint32()
  external int nFields;

  external Pointer<FIELD_INFO> Fields;

  @Uint64()
  external int ModBase;

  @Uint32()
  external int TypeId;

  @Uint32()
  external int TypeSize;

  @Uint32()
  external int BufferSize;

  @Uint32()
  external int bitfield;
}

/// {@category Struct}
class _SYM_DUMP_PARAM__Anonymous_e__Union extends Union {
  external Pointer Context;

  external Pointer pBuffer;
}

extension SYM_DUMP_PARAM_Extension on SYM_DUMP_PARAM {
  Pointer get Context => this.Anonymous.Context;
  set Context(Pointer value) => this.Anonymous.Context = value;

  Pointer get pBuffer => this.Anonymous.pBuffer;
  set pBuffer(Pointer value) => this.Anonymous.pBuffer = value;
}

/// {@category Struct}
class ScriptDebugEventInformation extends Struct {
  @Int32()
  external int DebugEvent;

  external ScriptDebugPosition EventPosition;

  external ScriptDebugPosition EventSpanEnd;

  external _ScriptDebugEventInformation__u_e__Union u;
}

/// {@category Struct}
class _ScriptDebugEventInformation__u_e__Union extends Union {
  external _ScriptDebugEventInformation__u_e__Union__ExceptionInformation_e__Struct
      ExceptionInformation;

  external _ScriptDebugEventInformation__u_e__Union__BreakpointInformation_e__Struct
      BreakpointInformation;
}

/// {@category Struct}
class _ScriptDebugEventInformation__u_e__Union__ExceptionInformation_e__Struct
    extends Struct {
  @Bool()
  external bool IsUncaught;
}

extension ScriptDebugEventInformation__u_e__Union_Extension
    on ScriptDebugEventInformation {
  bool get IsUncaught => this.u.ExceptionInformation.IsUncaught;
  set IsUncaught(bool value) => this.u.ExceptionInformation.IsUncaught = value;
}

/// {@category Struct}
class _ScriptDebugEventInformation__u_e__Union__BreakpointInformation_e__Struct
    extends Struct {
  @Uint64()
  external int BreakpointId;
}

extension ScriptDebugEventInformation__u_e__Union_Extension_1
    on ScriptDebugEventInformation {
  int get BreakpointId => this.u.BreakpointInformation.BreakpointId;
  set BreakpointId(int value) =>
      this.u.BreakpointInformation.BreakpointId = value;
}

extension ScriptDebugEventInformation_Extension on ScriptDebugEventInformation {
  _ScriptDebugEventInformation__u_e__Union__ExceptionInformation_e__Struct
      get ExceptionInformation => this.u.ExceptionInformation;
  set ExceptionInformation(
          _ScriptDebugEventInformation__u_e__Union__ExceptionInformation_e__Struct
              value) =>
      this.u.ExceptionInformation = value;

  _ScriptDebugEventInformation__u_e__Union__BreakpointInformation_e__Struct
      get BreakpointInformation => this.u.BreakpointInformation;
  set BreakpointInformation(
          _ScriptDebugEventInformation__u_e__Union__BreakpointInformation_e__Struct
              value) =>
      this.u.BreakpointInformation = value;
}

/// {@category Struct}
class ScriptDebugPosition extends Struct {
  @Uint32()
  external int Line;

  @Uint32()
  external int Column;
}

/// {@category Struct}
class TEXT_DOCUMENT_ARRAY extends Struct {
  @Uint32()
  external int dwCount;

  external Pointer<Pointer<COMObject>> Members;
}

/// {@category Struct}
class TI_FINDCHILDREN_PARAMS extends Struct {
  @Uint32()
  external int Count;

  @Uint32()
  external int Start;

  @Array(1)
  external Array<Uint32> ChildId;
}

/// {@category Struct}
class TRANSLATE_VIRTUAL_TO_PHYSICAL extends Struct {
  @Uint64()
  external int Virtual;

  @Uint64()
  external int Physical;
}

/// {@category Struct}
class UNLOAD_DLL_DEBUG_INFO extends Struct {
  external Pointer lpBaseOfDll;
}

/// {@category Struct}
class UNWIND_HISTORY_TABLE extends Struct {
  @Uint32()
  external int Count;

  @Uint8()
  external int LocalHint;

  @Uint8()
  external int GlobalHint;

  @Uint8()
  external int Search;

  @Uint8()
  external int Once;

  @IntPtr()
  external int LowAddress;

  @IntPtr()
  external int HighAddress;

  @Array(12)
  external Array<UNWIND_HISTORY_TABLE_ENTRY> Entry;
}

/// {@category Struct}
class UNWIND_HISTORY_TABLE_ENTRY extends Struct {
  @IntPtr()
  external int ImageBase;

  external Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY> FunctionEntry;
}

/// {@category Struct}
class VIRTUAL_TO_PHYSICAL extends Struct {
  @Uint32()
  external int Status;

  @Uint32()
  external int Size;

  @Uint64()
  external int PdeAddress;

  @Uint64()
  external int Virtual;

  @Uint64()
  external int Physical;
}

/// {@category Struct}
class WAITCHAIN_NODE_INFO extends Struct {
  @Int32()
  external int ObjectType;

  @Int32()
  external int ObjectStatus;

  external _WAITCHAIN_NODE_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _WAITCHAIN_NODE_INFO__Anonymous_e__Union extends Union {
  external _WAITCHAIN_NODE_INFO__Anonymous_e__Union__LockObject_e__Struct
      LockObject;

  external _WAITCHAIN_NODE_INFO__Anonymous_e__Union__ThreadObject_e__Struct
      ThreadObject;
}

/// {@category Struct}
class _WAITCHAIN_NODE_INFO__Anonymous_e__Union__LockObject_e__Struct
    extends Struct {
  @Array(128)
  external Array<Uint16> _ObjectName;

  String get ObjectName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_ObjectName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ObjectName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _ObjectName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int64()
  external int Timeout;

  @Int32()
  external int Alertable;
}

extension WAITCHAIN_NODE_INFO__Anonymous_e__Union_Extension
    on WAITCHAIN_NODE_INFO {
  String get ObjectName => this.Anonymous.LockObject.ObjectName;
  set ObjectName(String value) => this.Anonymous.LockObject.ObjectName = value;

  int get Timeout => this.Anonymous.LockObject.Timeout;
  set Timeout(int value) => this.Anonymous.LockObject.Timeout = value;

  int get Alertable => this.Anonymous.LockObject.Alertable;
  set Alertable(int value) => this.Anonymous.LockObject.Alertable = value;
}

/// {@category Struct}
class _WAITCHAIN_NODE_INFO__Anonymous_e__Union__ThreadObject_e__Struct
    extends Struct {
  @Uint32()
  external int ProcessId;

  @Uint32()
  external int ThreadId;

  @Uint32()
  external int WaitTime;

  @Uint32()
  external int ContextSwitches;
}

extension WAITCHAIN_NODE_INFO__Anonymous_e__Union_Extension_1
    on WAITCHAIN_NODE_INFO {
  int get ProcessId => this.Anonymous.ThreadObject.ProcessId;
  set ProcessId(int value) => this.Anonymous.ThreadObject.ProcessId = value;

  int get ThreadId => this.Anonymous.ThreadObject.ThreadId;
  set ThreadId(int value) => this.Anonymous.ThreadObject.ThreadId = value;

  int get WaitTime => this.Anonymous.ThreadObject.WaitTime;
  set WaitTime(int value) => this.Anonymous.ThreadObject.WaitTime = value;

  int get ContextSwitches => this.Anonymous.ThreadObject.ContextSwitches;
  set ContextSwitches(int value) =>
      this.Anonymous.ThreadObject.ContextSwitches = value;
}

extension WAITCHAIN_NODE_INFO_Extension on WAITCHAIN_NODE_INFO {
  _WAITCHAIN_NODE_INFO__Anonymous_e__Union__LockObject_e__Struct
      get LockObject => this.Anonymous.LockObject;
  set LockObject(
          _WAITCHAIN_NODE_INFO__Anonymous_e__Union__LockObject_e__Struct
              value) =>
      this.Anonymous.LockObject = value;

  _WAITCHAIN_NODE_INFO__Anonymous_e__Union__ThreadObject_e__Struct
      get ThreadObject => this.Anonymous.ThreadObject;
  set ThreadObject(
          _WAITCHAIN_NODE_INFO__Anonymous_e__Union__ThreadObject_e__Struct
              value) =>
      this.Anonymous.ThreadObject = value;
}

/// {@category Struct}
class WDBGEXTS_CLR_DATA_INTERFACE extends Struct {
  external Pointer<GUID> Iid;

  external Pointer Iface;
}

/// {@category Struct}
class WDBGEXTS_DISASSEMBLE_BUFFER extends Struct {
  @Uint64()
  external int InOffset;

  @Uint64()
  external int OutOffset;

  @Uint32()
  external int AddrFlags;

  @Uint32()
  external int FormatFlags;

  @Uint32()
  external int DataBufferBytes;

  @Uint32()
  external int DisasmBufferChars;

  external Pointer DataBuffer;

  external Pointer<Utf16> DisasmBuffer;

  @Array(3)
  external Array<Uint64> Reserved0;
}

/// {@category Struct}
class WDBGEXTS_MODULE_IN_RANGE extends Struct {
  @Uint64()
  external int Start;

  @Uint64()
  external int End;

  @Uint64()
  external int FoundModBase;

  @Uint32()
  external int FoundModSize;
}

/// {@category Struct}
class WDBGEXTS_QUERY_INTERFACE extends Struct {
  external Pointer<GUID> Iid;

  external Pointer Iface;
}

/// {@category Struct}
class WDBGEXTS_THREAD_OS_INFO extends Struct {
  @Uint32()
  external int ThreadId;

  @Uint32()
  external int ExitStatus;

  @Uint32()
  external int PriorityClass;

  @Uint32()
  external int Priority;

  @Uint64()
  external int CreateTime;

  @Uint64()
  external int ExitTime;

  @Uint64()
  external int KernelTime;

  @Uint64()
  external int UserTime;

  @Uint64()
  external int StartOffset;

  @Uint64()
  external int Affinity;
}

/// {@category Struct}
class WHEA_AER_BRIDGE_DESCRIPTOR extends Struct {
  @Uint16()
  external int Type;

  @Uint8()
  external int Enabled;

  @Uint8()
  external int Reserved;

  @Uint32()
  external int BusNumber;

  external WHEA_PCI_SLOT_NUMBER Slot;

  @Uint16()
  external int DeviceControl;

  external AER_BRIDGE_DESCRIPTOR_FLAGS Flags;

  @Uint32()
  external int UncorrectableErrorMask;

  @Uint32()
  external int UncorrectableErrorSeverity;

  @Uint32()
  external int CorrectableErrorMask;

  @Uint32()
  external int AdvancedCapsAndControl;

  @Uint32()
  external int SecondaryUncorrectableErrorMask;

  @Uint32()
  external int SecondaryUncorrectableErrorSev;

  @Uint32()
  external int SecondaryCapsAndControl;
}

/// {@category Struct}
class WHEA_AER_ENDPOINT_DESCRIPTOR extends Struct {
  @Uint16()
  external int Type;

  @Uint8()
  external int Enabled;

  @Uint8()
  external int Reserved;

  @Uint32()
  external int BusNumber;

  external WHEA_PCI_SLOT_NUMBER Slot;

  @Uint16()
  external int DeviceControl;

  external AER_ENDPOINT_DESCRIPTOR_FLAGS Flags;

  @Uint32()
  external int UncorrectableErrorMask;

  @Uint32()
  external int UncorrectableErrorSeverity;

  @Uint32()
  external int CorrectableErrorMask;

  @Uint32()
  external int AdvancedCapsAndControl;
}

/// {@category Struct}
class WHEA_AER_ROOTPORT_DESCRIPTOR extends Struct {
  @Uint16()
  external int Type;

  @Uint8()
  external int Enabled;

  @Uint8()
  external int Reserved;

  @Uint32()
  external int BusNumber;

  external WHEA_PCI_SLOT_NUMBER Slot;

  @Uint16()
  external int DeviceControl;

  external AER_ROOTPORT_DESCRIPTOR_FLAGS Flags;

  @Uint32()
  external int UncorrectableErrorMask;

  @Uint32()
  external int UncorrectableErrorSeverity;

  @Uint32()
  external int CorrectableErrorMask;

  @Uint32()
  external int AdvancedCapsAndControl;

  @Uint32()
  external int RootErrorCommand;
}

/// {@category Struct}
class WHEA_DEVICE_DRIVER_DESCRIPTOR extends Struct {
  @Uint16()
  external int Type;

  @Uint8()
  external int Enabled;

  @Uint8()
  external int Reserved;

  external GUID SourceGuid;

  @Uint16()
  external int LogTag;

  @Uint16()
  external int Reserved2;

  @Uint32()
  external int PacketLength;

  @Uint32()
  external int PacketCount;

  external Pointer<Uint8> PacketBuffer;

  external WHEA_ERROR_SOURCE_CONFIGURATION_DD Config;

  external GUID CreatorId;

  external GUID PartitionId;

  @Uint32()
  external int MaxSectionDataLength;

  @Uint32()
  external int MaxSectionsPerRecord;

  external Pointer<Uint8> PacketStateBuffer;

  @Int32()
  external int OpenHandles;
}

/// {@category Struct}
@Packed(1)
class WHEA_DRIVER_BUFFER_SET extends Struct {
  @Uint32()
  external int Version;

  external Pointer<Uint8> Data;

  @Uint32()
  external int DataSize;

  external Pointer<GUID> SectionTypeGuid;

  external Pointer<Uint8> SectionFriendlyName;

  external Pointer<Uint8> Flags;
}

/// {@category Struct}
class WHEA_ERROR_SOURCE_CONFIGURATION_DD extends Struct {
  external Pointer<NativeFunction<WHEA_ERROR_SOURCE_INITIALIZE_DEVICE_DRIVER>>
      Initialize;

  external Pointer<NativeFunction<WHEA_ERROR_SOURCE_UNINITIALIZE_DEVICE_DRIVER>>
      Uninitialize;

  external Pointer<NativeFunction<WHEA_ERROR_SOURCE_CORRECT_DEVICE_DRIVER>>
      Correct;
}

/// {@category Struct}
class WHEA_ERROR_SOURCE_CONFIGURATION_DEVICE_DRIVER extends Struct {
  @Uint32()
  external int Version;

  external GUID SourceGuid;

  @Uint16()
  external int LogTag;

  @Array(6)
  external Array<Uint8> Reserved;

  external Pointer<NativeFunction<WHEA_ERROR_SOURCE_INITIALIZE_DEVICE_DRIVER>>
      Initialize;

  external Pointer<NativeFunction<WHEA_ERROR_SOURCE_UNINITIALIZE_DEVICE_DRIVER>>
      Uninitialize;

  @Uint32()
  external int MaxSectionDataLength;

  @Uint32()
  external int MaxSectionsPerReport;

  external GUID CreatorId;

  external GUID PartitionId;
}

/// {@category Struct}
class WHEA_ERROR_SOURCE_CONFIGURATION_DEVICE_DRIVER_V1 extends Struct {
  @Uint32()
  external int Version;

  external GUID SourceGuid;

  @Uint16()
  external int LogTag;

  @Array(6)
  external Array<Uint8> Reserved;

  external Pointer<NativeFunction<WHEA_ERROR_SOURCE_INITIALIZE_DEVICE_DRIVER>>
      Initialize;

  external Pointer<NativeFunction<WHEA_ERROR_SOURCE_UNINITIALIZE_DEVICE_DRIVER>>
      Uninitialize;
}

/// {@category Struct}
class WHEA_ERROR_SOURCE_DESCRIPTOR extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Version;

  @Int32()
  external int Type;

  @Int32()
  external int State;

  @Uint32()
  external int MaxRawDataLength;

  @Uint32()
  external int NumRecordsToPreallocate;

  @Uint32()
  external int MaxSectionsPerRecord;

  @Uint32()
  external int ErrorSourceId;

  @Uint32()
  external int PlatformErrorSourceId;

  @Uint32()
  external int Flags;

  external _WHEA_ERROR_SOURCE_DESCRIPTOR__Info_e__Union Info;
}

/// {@category Struct}
class _WHEA_ERROR_SOURCE_DESCRIPTOR__Info_e__Union extends Union {
  external WHEA_XPF_MCE_DESCRIPTOR XpfMceDescriptor;

  external WHEA_XPF_CMC_DESCRIPTOR XpfCmcDescriptor;

  external WHEA_XPF_NMI_DESCRIPTOR XpfNmiDescriptor;

  external WHEA_IPF_MCA_DESCRIPTOR IpfMcaDescriptor;

  external WHEA_IPF_CMC_DESCRIPTOR IpfCmcDescriptor;

  external WHEA_IPF_CPE_DESCRIPTOR IpfCpeDescriptor;

  external WHEA_AER_ROOTPORT_DESCRIPTOR AerRootportDescriptor;

  external WHEA_AER_ENDPOINT_DESCRIPTOR AerEndpointDescriptor;

  external WHEA_AER_BRIDGE_DESCRIPTOR AerBridgeDescriptor;

  external WHEA_GENERIC_ERROR_DESCRIPTOR GenErrDescriptor;

  external WHEA_GENERIC_ERROR_DESCRIPTOR_V2 GenErrDescriptorV2;

  external WHEA_DEVICE_DRIVER_DESCRIPTOR DeviceDriverDescriptor;
}

extension WHEA_ERROR_SOURCE_DESCRIPTOR_Extension
    on WHEA_ERROR_SOURCE_DESCRIPTOR {
  WHEA_XPF_MCE_DESCRIPTOR get XpfMceDescriptor => this.Info.XpfMceDescriptor;
  set XpfMceDescriptor(WHEA_XPF_MCE_DESCRIPTOR value) =>
      this.Info.XpfMceDescriptor = value;

  WHEA_XPF_CMC_DESCRIPTOR get XpfCmcDescriptor => this.Info.XpfCmcDescriptor;
  set XpfCmcDescriptor(WHEA_XPF_CMC_DESCRIPTOR value) =>
      this.Info.XpfCmcDescriptor = value;

  WHEA_XPF_NMI_DESCRIPTOR get XpfNmiDescriptor => this.Info.XpfNmiDescriptor;
  set XpfNmiDescriptor(WHEA_XPF_NMI_DESCRIPTOR value) =>
      this.Info.XpfNmiDescriptor = value;

  WHEA_IPF_MCA_DESCRIPTOR get IpfMcaDescriptor => this.Info.IpfMcaDescriptor;
  set IpfMcaDescriptor(WHEA_IPF_MCA_DESCRIPTOR value) =>
      this.Info.IpfMcaDescriptor = value;

  WHEA_IPF_CMC_DESCRIPTOR get IpfCmcDescriptor => this.Info.IpfCmcDescriptor;
  set IpfCmcDescriptor(WHEA_IPF_CMC_DESCRIPTOR value) =>
      this.Info.IpfCmcDescriptor = value;

  WHEA_IPF_CPE_DESCRIPTOR get IpfCpeDescriptor => this.Info.IpfCpeDescriptor;
  set IpfCpeDescriptor(WHEA_IPF_CPE_DESCRIPTOR value) =>
      this.Info.IpfCpeDescriptor = value;

  WHEA_AER_ROOTPORT_DESCRIPTOR get AerRootportDescriptor =>
      this.Info.AerRootportDescriptor;
  set AerRootportDescriptor(WHEA_AER_ROOTPORT_DESCRIPTOR value) =>
      this.Info.AerRootportDescriptor = value;

  WHEA_AER_ENDPOINT_DESCRIPTOR get AerEndpointDescriptor =>
      this.Info.AerEndpointDescriptor;
  set AerEndpointDescriptor(WHEA_AER_ENDPOINT_DESCRIPTOR value) =>
      this.Info.AerEndpointDescriptor = value;

  WHEA_AER_BRIDGE_DESCRIPTOR get AerBridgeDescriptor =>
      this.Info.AerBridgeDescriptor;
  set AerBridgeDescriptor(WHEA_AER_BRIDGE_DESCRIPTOR value) =>
      this.Info.AerBridgeDescriptor = value;

  WHEA_GENERIC_ERROR_DESCRIPTOR get GenErrDescriptor =>
      this.Info.GenErrDescriptor;
  set GenErrDescriptor(WHEA_GENERIC_ERROR_DESCRIPTOR value) =>
      this.Info.GenErrDescriptor = value;

  WHEA_GENERIC_ERROR_DESCRIPTOR_V2 get GenErrDescriptorV2 =>
      this.Info.GenErrDescriptorV2;
  set GenErrDescriptorV2(WHEA_GENERIC_ERROR_DESCRIPTOR_V2 value) =>
      this.Info.GenErrDescriptorV2 = value;

  WHEA_DEVICE_DRIVER_DESCRIPTOR get DeviceDriverDescriptor =>
      this.Info.DeviceDriverDescriptor;
  set DeviceDriverDescriptor(WHEA_DEVICE_DRIVER_DESCRIPTOR value) =>
      this.Info.DeviceDriverDescriptor = value;
}

/// {@category Struct}
class WHEA_GENERIC_ERROR_DESCRIPTOR extends Struct {
  @Uint16()
  external int Type;

  @Uint8()
  external int Reserved;

  @Uint8()
  external int Enabled;

  @Uint32()
  external int ErrStatusBlockLength;

  @Uint32()
  external int RelatedErrorSourceId;

  @Uint8()
  external int ErrStatusAddressSpaceID;

  @Uint8()
  external int ErrStatusAddressBitWidth;

  @Uint8()
  external int ErrStatusAddressBitOffset;

  @Uint8()
  external int ErrStatusAddressAccessSize;

  @Int64()
  external int ErrStatusAddress;

  external WHEA_NOTIFICATION_DESCRIPTOR Notify;
}

/// {@category Struct}
class WHEA_GENERIC_ERROR_DESCRIPTOR_V2 extends Struct {
  @Uint16()
  external int Type;

  @Uint8()
  external int Reserved;

  @Uint8()
  external int Enabled;

  @Uint32()
  external int ErrStatusBlockLength;

  @Uint32()
  external int RelatedErrorSourceId;

  @Uint8()
  external int ErrStatusAddressSpaceID;

  @Uint8()
  external int ErrStatusAddressBitWidth;

  @Uint8()
  external int ErrStatusAddressBitOffset;

  @Uint8()
  external int ErrStatusAddressAccessSize;

  @Int64()
  external int ErrStatusAddress;

  external WHEA_NOTIFICATION_DESCRIPTOR Notify;

  @Uint8()
  external int ReadAckAddressSpaceID;

  @Uint8()
  external int ReadAckAddressBitWidth;

  @Uint8()
  external int ReadAckAddressBitOffset;

  @Uint8()
  external int ReadAckAddressAccessSize;

  @Int64()
  external int ReadAckAddress;

  @Uint64()
  external int ReadAckPreserveMask;

  @Uint64()
  external int ReadAckWriteMask;
}

/// {@category Struct}
@Packed(1)
class WHEA_IPF_CMC_DESCRIPTOR extends Struct {
  @Uint16()
  external int Type;

  @Uint8()
  external int Enabled;

  @Uint8()
  external int Reserved;
}

/// {@category Struct}
@Packed(1)
class WHEA_IPF_CPE_DESCRIPTOR extends Struct {
  @Uint16()
  external int Type;

  @Uint8()
  external int Enabled;

  @Uint8()
  external int Reserved;
}

/// {@category Struct}
@Packed(1)
class WHEA_IPF_MCA_DESCRIPTOR extends Struct {
  @Uint16()
  external int Type;

  @Uint8()
  external int Enabled;

  @Uint8()
  external int Reserved;
}

/// {@category Struct}
class WHEA_NOTIFICATION_DESCRIPTOR extends Struct {
  @Uint8()
  external int Type;

  @Uint8()
  external int Length;

  external WHEA_NOTIFICATION_FLAGS Flags;

  external _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union u;
}

/// {@category Struct}
class _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union extends Union {
  external _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Polled_e__Struct Polled;

  external _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Interrupt_e__Struct
      Interrupt;

  external _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__LocalInterrupt_e__Struct
      LocalInterrupt;

  external _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Sci_e__Struct Sci;

  external _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Nmi_e__Struct Nmi;

  external _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Sea_e__Struct Sea;

  external _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Sei_e__Struct Sei;

  external _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Gsiv_e__Struct Gsiv;
}

/// {@category Struct}
@Packed(1)
class _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Polled_e__Struct
    extends Struct {
  @Uint32()
  external int PollInterval;
}

extension WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union_Extension
    on WHEA_NOTIFICATION_DESCRIPTOR {
  int get PollInterval => this.u.Polled.PollInterval;
  set PollInterval(int value) => this.u.Polled.PollInterval = value;
}

/// {@category Struct}
@Packed(1)
class _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Interrupt_e__Struct
    extends Struct {
  @Uint32()
  external int PollInterval;

  @Uint32()
  external int Vector;

  @Uint32()
  external int SwitchToPollingThreshold;

  @Uint32()
  external int SwitchToPollingWindow;

  @Uint32()
  external int ErrorThreshold;

  @Uint32()
  external int ErrorThresholdWindow;
}

extension WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union_Extension_1
    on WHEA_NOTIFICATION_DESCRIPTOR {
  int get PollInterval => this.u.Interrupt.PollInterval;
  set PollInterval(int value) => this.u.Interrupt.PollInterval = value;

  int get Vector => this.u.Interrupt.Vector;
  set Vector(int value) => this.u.Interrupt.Vector = value;

  int get SwitchToPollingThreshold => this.u.Interrupt.SwitchToPollingThreshold;
  set SwitchToPollingThreshold(int value) =>
      this.u.Interrupt.SwitchToPollingThreshold = value;

  int get SwitchToPollingWindow => this.u.Interrupt.SwitchToPollingWindow;
  set SwitchToPollingWindow(int value) =>
      this.u.Interrupt.SwitchToPollingWindow = value;

  int get ErrorThreshold => this.u.Interrupt.ErrorThreshold;
  set ErrorThreshold(int value) => this.u.Interrupt.ErrorThreshold = value;

  int get ErrorThresholdWindow => this.u.Interrupt.ErrorThresholdWindow;
  set ErrorThresholdWindow(int value) =>
      this.u.Interrupt.ErrorThresholdWindow = value;
}

/// {@category Struct}
@Packed(1)
class _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__LocalInterrupt_e__Struct
    extends Struct {
  @Uint32()
  external int PollInterval;

  @Uint32()
  external int Vector;

  @Uint32()
  external int SwitchToPollingThreshold;

  @Uint32()
  external int SwitchToPollingWindow;

  @Uint32()
  external int ErrorThreshold;

  @Uint32()
  external int ErrorThresholdWindow;
}

extension WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union_Extension_2
    on WHEA_NOTIFICATION_DESCRIPTOR {
  int get PollInterval => this.u.LocalInterrupt.PollInterval;
  set PollInterval(int value) => this.u.LocalInterrupt.PollInterval = value;

  int get Vector => this.u.LocalInterrupt.Vector;
  set Vector(int value) => this.u.LocalInterrupt.Vector = value;

  int get SwitchToPollingThreshold =>
      this.u.LocalInterrupt.SwitchToPollingThreshold;
  set SwitchToPollingThreshold(int value) =>
      this.u.LocalInterrupt.SwitchToPollingThreshold = value;

  int get SwitchToPollingWindow => this.u.LocalInterrupt.SwitchToPollingWindow;
  set SwitchToPollingWindow(int value) =>
      this.u.LocalInterrupt.SwitchToPollingWindow = value;

  int get ErrorThreshold => this.u.LocalInterrupt.ErrorThreshold;
  set ErrorThreshold(int value) => this.u.LocalInterrupt.ErrorThreshold = value;

  int get ErrorThresholdWindow => this.u.LocalInterrupt.ErrorThresholdWindow;
  set ErrorThresholdWindow(int value) =>
      this.u.LocalInterrupt.ErrorThresholdWindow = value;
}

/// {@category Struct}
@Packed(1)
class _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Sci_e__Struct extends Struct {
  @Uint32()
  external int PollInterval;

  @Uint32()
  external int Vector;

  @Uint32()
  external int SwitchToPollingThreshold;

  @Uint32()
  external int SwitchToPollingWindow;

  @Uint32()
  external int ErrorThreshold;

  @Uint32()
  external int ErrorThresholdWindow;
}

extension WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union_Extension_3
    on WHEA_NOTIFICATION_DESCRIPTOR {
  int get PollInterval => this.u.Sci.PollInterval;
  set PollInterval(int value) => this.u.Sci.PollInterval = value;

  int get Vector => this.u.Sci.Vector;
  set Vector(int value) => this.u.Sci.Vector = value;

  int get SwitchToPollingThreshold => this.u.Sci.SwitchToPollingThreshold;
  set SwitchToPollingThreshold(int value) =>
      this.u.Sci.SwitchToPollingThreshold = value;

  int get SwitchToPollingWindow => this.u.Sci.SwitchToPollingWindow;
  set SwitchToPollingWindow(int value) =>
      this.u.Sci.SwitchToPollingWindow = value;

  int get ErrorThreshold => this.u.Sci.ErrorThreshold;
  set ErrorThreshold(int value) => this.u.Sci.ErrorThreshold = value;

  int get ErrorThresholdWindow => this.u.Sci.ErrorThresholdWindow;
  set ErrorThresholdWindow(int value) =>
      this.u.Sci.ErrorThresholdWindow = value;
}

/// {@category Struct}
@Packed(1)
class _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Nmi_e__Struct extends Struct {
  @Uint32()
  external int PollInterval;

  @Uint32()
  external int Vector;

  @Uint32()
  external int SwitchToPollingThreshold;

  @Uint32()
  external int SwitchToPollingWindow;

  @Uint32()
  external int ErrorThreshold;

  @Uint32()
  external int ErrorThresholdWindow;
}

extension WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union_Extension_4
    on WHEA_NOTIFICATION_DESCRIPTOR {
  int get PollInterval => this.u.Nmi.PollInterval;
  set PollInterval(int value) => this.u.Nmi.PollInterval = value;

  int get Vector => this.u.Nmi.Vector;
  set Vector(int value) => this.u.Nmi.Vector = value;

  int get SwitchToPollingThreshold => this.u.Nmi.SwitchToPollingThreshold;
  set SwitchToPollingThreshold(int value) =>
      this.u.Nmi.SwitchToPollingThreshold = value;

  int get SwitchToPollingWindow => this.u.Nmi.SwitchToPollingWindow;
  set SwitchToPollingWindow(int value) =>
      this.u.Nmi.SwitchToPollingWindow = value;

  int get ErrorThreshold => this.u.Nmi.ErrorThreshold;
  set ErrorThreshold(int value) => this.u.Nmi.ErrorThreshold = value;

  int get ErrorThresholdWindow => this.u.Nmi.ErrorThresholdWindow;
  set ErrorThresholdWindow(int value) =>
      this.u.Nmi.ErrorThresholdWindow = value;
}

/// {@category Struct}
@Packed(1)
class _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Sea_e__Struct extends Struct {
  @Uint32()
  external int PollInterval;

  @Uint32()
  external int Vector;

  @Uint32()
  external int SwitchToPollingThreshold;

  @Uint32()
  external int SwitchToPollingWindow;

  @Uint32()
  external int ErrorThreshold;

  @Uint32()
  external int ErrorThresholdWindow;
}

extension WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union_Extension_5
    on WHEA_NOTIFICATION_DESCRIPTOR {
  int get PollInterval => this.u.Sea.PollInterval;
  set PollInterval(int value) => this.u.Sea.PollInterval = value;

  int get Vector => this.u.Sea.Vector;
  set Vector(int value) => this.u.Sea.Vector = value;

  int get SwitchToPollingThreshold => this.u.Sea.SwitchToPollingThreshold;
  set SwitchToPollingThreshold(int value) =>
      this.u.Sea.SwitchToPollingThreshold = value;

  int get SwitchToPollingWindow => this.u.Sea.SwitchToPollingWindow;
  set SwitchToPollingWindow(int value) =>
      this.u.Sea.SwitchToPollingWindow = value;

  int get ErrorThreshold => this.u.Sea.ErrorThreshold;
  set ErrorThreshold(int value) => this.u.Sea.ErrorThreshold = value;

  int get ErrorThresholdWindow => this.u.Sea.ErrorThresholdWindow;
  set ErrorThresholdWindow(int value) =>
      this.u.Sea.ErrorThresholdWindow = value;
}

/// {@category Struct}
@Packed(1)
class _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Sei_e__Struct extends Struct {
  @Uint32()
  external int PollInterval;

  @Uint32()
  external int Vector;

  @Uint32()
  external int SwitchToPollingThreshold;

  @Uint32()
  external int SwitchToPollingWindow;

  @Uint32()
  external int ErrorThreshold;

  @Uint32()
  external int ErrorThresholdWindow;
}

extension WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union_Extension_6
    on WHEA_NOTIFICATION_DESCRIPTOR {
  int get PollInterval => this.u.Sei.PollInterval;
  set PollInterval(int value) => this.u.Sei.PollInterval = value;

  int get Vector => this.u.Sei.Vector;
  set Vector(int value) => this.u.Sei.Vector = value;

  int get SwitchToPollingThreshold => this.u.Sei.SwitchToPollingThreshold;
  set SwitchToPollingThreshold(int value) =>
      this.u.Sei.SwitchToPollingThreshold = value;

  int get SwitchToPollingWindow => this.u.Sei.SwitchToPollingWindow;
  set SwitchToPollingWindow(int value) =>
      this.u.Sei.SwitchToPollingWindow = value;

  int get ErrorThreshold => this.u.Sei.ErrorThreshold;
  set ErrorThreshold(int value) => this.u.Sei.ErrorThreshold = value;

  int get ErrorThresholdWindow => this.u.Sei.ErrorThresholdWindow;
  set ErrorThresholdWindow(int value) =>
      this.u.Sei.ErrorThresholdWindow = value;
}

/// {@category Struct}
@Packed(1)
class _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Gsiv_e__Struct extends Struct {
  @Uint32()
  external int PollInterval;

  @Uint32()
  external int Vector;

  @Uint32()
  external int SwitchToPollingThreshold;

  @Uint32()
  external int SwitchToPollingWindow;

  @Uint32()
  external int ErrorThreshold;

  @Uint32()
  external int ErrorThresholdWindow;
}

extension WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union_Extension_7
    on WHEA_NOTIFICATION_DESCRIPTOR {
  int get PollInterval => this.u.Gsiv.PollInterval;
  set PollInterval(int value) => this.u.Gsiv.PollInterval = value;

  int get Vector => this.u.Gsiv.Vector;
  set Vector(int value) => this.u.Gsiv.Vector = value;

  int get SwitchToPollingThreshold => this.u.Gsiv.SwitchToPollingThreshold;
  set SwitchToPollingThreshold(int value) =>
      this.u.Gsiv.SwitchToPollingThreshold = value;

  int get SwitchToPollingWindow => this.u.Gsiv.SwitchToPollingWindow;
  set SwitchToPollingWindow(int value) =>
      this.u.Gsiv.SwitchToPollingWindow = value;

  int get ErrorThreshold => this.u.Gsiv.ErrorThreshold;
  set ErrorThreshold(int value) => this.u.Gsiv.ErrorThreshold = value;

  int get ErrorThresholdWindow => this.u.Gsiv.ErrorThresholdWindow;
  set ErrorThresholdWindow(int value) =>
      this.u.Gsiv.ErrorThresholdWindow = value;
}

extension WHEA_NOTIFICATION_DESCRIPTOR_Extension
    on WHEA_NOTIFICATION_DESCRIPTOR {
  _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Polled_e__Struct get Polled =>
      this.u.Polled;
  set Polled(
          _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Polled_e__Struct value) =>
      this.u.Polled = value;

  _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Interrupt_e__Struct
      get Interrupt => this.u.Interrupt;
  set Interrupt(
          _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Interrupt_e__Struct
              value) =>
      this.u.Interrupt = value;

  _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__LocalInterrupt_e__Struct
      get LocalInterrupt => this.u.LocalInterrupt;
  set LocalInterrupt(
          _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__LocalInterrupt_e__Struct
              value) =>
      this.u.LocalInterrupt = value;

  _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Sci_e__Struct get Sci =>
      this.u.Sci;
  set Sci(_WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Sci_e__Struct value) =>
      this.u.Sci = value;

  _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Nmi_e__Struct get Nmi =>
      this.u.Nmi;
  set Nmi(_WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Nmi_e__Struct value) =>
      this.u.Nmi = value;

  _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Sea_e__Struct get Sea =>
      this.u.Sea;
  set Sea(_WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Sea_e__Struct value) =>
      this.u.Sea = value;

  _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Sei_e__Struct get Sei =>
      this.u.Sei;
  set Sei(_WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Sei_e__Struct value) =>
      this.u.Sei = value;

  _WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Gsiv_e__Struct get Gsiv =>
      this.u.Gsiv;
  set Gsiv(_WHEA_NOTIFICATION_DESCRIPTOR__u_e__Union__Gsiv_e__Struct value) =>
      this.u.Gsiv = value;
}

/// {@category Struct}
@Packed(1)
class WHEA_NOTIFICATION_FLAGS extends Union {
  external _WHEA_NOTIFICATION_FLAGS__Anonymous_e__Struct Anonymous;

  @Uint16()
  external int AsUSHORT;
}

/// {@category Struct}
@Packed(1)
class _WHEA_NOTIFICATION_FLAGS__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension WHEA_NOTIFICATION_FLAGS_Extension on WHEA_NOTIFICATION_FLAGS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
@Packed(1)
class WHEA_PCI_SLOT_NUMBER extends Struct {
  external _WHEA_PCI_SLOT_NUMBER__u_e__Union u;
}

/// {@category Struct}
@Packed(1)
class _WHEA_PCI_SLOT_NUMBER__u_e__Union extends Union {
  external _WHEA_PCI_SLOT_NUMBER__u_e__Union__bits_e__Struct bits;

  @Uint32()
  external int AsULONG;
}

/// {@category Struct}
@Packed(1)
class _WHEA_PCI_SLOT_NUMBER__u_e__Union__bits_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension WHEA_PCI_SLOT_NUMBER__u_e__Union_Extension on WHEA_PCI_SLOT_NUMBER {
  int get bitfield => this.u.bits.bitfield;
  set bitfield(int value) => this.u.bits.bitfield = value;
}

extension WHEA_PCI_SLOT_NUMBER_Extension on WHEA_PCI_SLOT_NUMBER {
  _WHEA_PCI_SLOT_NUMBER__u_e__Union__bits_e__Struct get bits => this.u.bits;
  set bits(_WHEA_PCI_SLOT_NUMBER__u_e__Union__bits_e__Struct value) =>
      this.u.bits = value;

  int get AsULONG => this.u.AsULONG;
  set AsULONG(int value) => this.u.AsULONG = value;
}

/// {@category Struct}
class WHEA_XPF_CMC_DESCRIPTOR extends Struct {
  @Uint16()
  external int Type;

  @Uint8()
  external int Enabled;

  @Uint8()
  external int NumberOfBanks;

  @Uint32()
  external int Reserved;

  external WHEA_NOTIFICATION_DESCRIPTOR Notify;

  @Array(32)
  external Array<WHEA_XPF_MC_BANK_DESCRIPTOR> Banks;
}

/// {@category Struct}
class WHEA_XPF_MCE_DESCRIPTOR extends Struct {
  @Uint16()
  external int Type;

  @Uint8()
  external int Enabled;

  @Uint8()
  external int NumberOfBanks;

  external XPF_MCE_FLAGS Flags;

  @Uint64()
  external int MCG_Capability;

  @Uint64()
  external int MCG_GlobalControl;

  @Array(32)
  external Array<WHEA_XPF_MC_BANK_DESCRIPTOR> Banks;
}

/// {@category Struct}
class WHEA_XPF_MC_BANK_DESCRIPTOR extends Struct {
  @Uint8()
  external int BankNumber;

  @Uint8()
  external int ClearOnInitialization;

  @Uint8()
  external int StatusDataFormat;

  external XPF_MC_BANK_FLAGS Flags;

  @Uint32()
  external int ControlMsr;

  @Uint32()
  external int StatusMsr;

  @Uint32()
  external int AddressMsr;

  @Uint32()
  external int MiscMsr;

  @Uint64()
  external int ControlData;
}

/// {@category Struct}
class WHEA_XPF_NMI_DESCRIPTOR extends Struct {
  @Uint16()
  external int Type;

  @Uint8()
  external int Enabled;
}

/// {@category Struct}
class WINDBG_EXTENSION_APIS extends Struct {
  @Uint32()
  external int nSize;

  external Pointer<NativeFunction<PWINDBG_OUTPUT_ROUTINE>> lpOutputRoutine;

  external Pointer<NativeFunction<PWINDBG_GET_EXPRESSION>>
      lpGetExpressionRoutine;

  external Pointer<NativeFunction<PWINDBG_GET_SYMBOL>> lpGetSymbolRoutine;

  external Pointer<NativeFunction<PWINDBG_DISASM>> lpDisasmRoutine;

  external Pointer<NativeFunction<PWINDBG_CHECK_CONTROL_C>>
      lpCheckControlCRoutine;

  external Pointer<NativeFunction<PWINDBG_READ_PROCESS_MEMORY_ROUTINE>>
      lpReadProcessMemoryRoutine;

  external Pointer<NativeFunction<PWINDBG_WRITE_PROCESS_MEMORY_ROUTINE>>
      lpWriteProcessMemoryRoutine;

  external Pointer<NativeFunction<PWINDBG_GET_THREAD_CONTEXT_ROUTINE>>
      lpGetThreadContextRoutine;

  external Pointer<NativeFunction<PWINDBG_SET_THREAD_CONTEXT_ROUTINE>>
      lpSetThreadContextRoutine;

  external Pointer<NativeFunction<PWINDBG_IOCTL_ROUTINE>> lpIoctlRoutine;

  external Pointer<NativeFunction<PWINDBG_STACKTRACE_ROUTINE>>
      lpStackTraceRoutine;
}

/// {@category Struct}
class WINDBG_EXTENSION_APIS32 extends Struct {
  @Uint32()
  external int nSize;

  external Pointer<NativeFunction<PWINDBG_OUTPUT_ROUTINE>> lpOutputRoutine;

  external Pointer<NativeFunction<PWINDBG_GET_EXPRESSION32>>
      lpGetExpressionRoutine;

  external Pointer<NativeFunction<PWINDBG_GET_SYMBOL32>> lpGetSymbolRoutine;

  external Pointer<NativeFunction<PWINDBG_DISASM32>> lpDisasmRoutine;

  external Pointer<NativeFunction<PWINDBG_CHECK_CONTROL_C>>
      lpCheckControlCRoutine;

  external Pointer<NativeFunction<PWINDBG_READ_PROCESS_MEMORY_ROUTINE32>>
      lpReadProcessMemoryRoutine;

  external Pointer<NativeFunction<PWINDBG_WRITE_PROCESS_MEMORY_ROUTINE32>>
      lpWriteProcessMemoryRoutine;

  external Pointer<NativeFunction<PWINDBG_GET_THREAD_CONTEXT_ROUTINE>>
      lpGetThreadContextRoutine;

  external Pointer<NativeFunction<PWINDBG_SET_THREAD_CONTEXT_ROUTINE>>
      lpSetThreadContextRoutine;

  external Pointer<NativeFunction<PWINDBG_IOCTL_ROUTINE>> lpIoctlRoutine;

  external Pointer<NativeFunction<PWINDBG_STACKTRACE_ROUTINE32>>
      lpStackTraceRoutine;
}

/// {@category Struct}
class WINDBG_EXTENSION_APIS64 extends Struct {
  @Uint32()
  external int nSize;

  external Pointer<NativeFunction<PWINDBG_OUTPUT_ROUTINE>> lpOutputRoutine;

  external Pointer<NativeFunction<PWINDBG_GET_EXPRESSION64>>
      lpGetExpressionRoutine;

  external Pointer<NativeFunction<PWINDBG_GET_SYMBOL64>> lpGetSymbolRoutine;

  external Pointer<NativeFunction<PWINDBG_DISASM64>> lpDisasmRoutine;

  external Pointer<NativeFunction<PWINDBG_CHECK_CONTROL_C>>
      lpCheckControlCRoutine;

  external Pointer<NativeFunction<PWINDBG_READ_PROCESS_MEMORY_ROUTINE64>>
      lpReadProcessMemoryRoutine;

  external Pointer<NativeFunction<PWINDBG_WRITE_PROCESS_MEMORY_ROUTINE64>>
      lpWriteProcessMemoryRoutine;

  external Pointer<NativeFunction<PWINDBG_GET_THREAD_CONTEXT_ROUTINE>>
      lpGetThreadContextRoutine;

  external Pointer<NativeFunction<PWINDBG_SET_THREAD_CONTEXT_ROUTINE>>
      lpSetThreadContextRoutine;

  external Pointer<NativeFunction<PWINDBG_IOCTL_ROUTINE>> lpIoctlRoutine;

  external Pointer<NativeFunction<PWINDBG_STACKTRACE_ROUTINE64>>
      lpStackTraceRoutine;
}

/// {@category Struct}
class WINDBG_OLDKD_EXTENSION_APIS extends Struct {
  @Uint32()
  external int nSize;

  external Pointer<NativeFunction<PWINDBG_OUTPUT_ROUTINE>> lpOutputRoutine;

  external Pointer<NativeFunction<PWINDBG_GET_EXPRESSION32>>
      lpGetExpressionRoutine;

  external Pointer<NativeFunction<PWINDBG_GET_SYMBOL32>> lpGetSymbolRoutine;

  external Pointer<NativeFunction<PWINDBG_DISASM32>> lpDisasmRoutine;

  external Pointer<NativeFunction<PWINDBG_CHECK_CONTROL_C>>
      lpCheckControlCRoutine;

  external Pointer<NativeFunction<PWINDBG_READ_PROCESS_MEMORY_ROUTINE32>>
      lpReadVirtualMemRoutine;

  external Pointer<NativeFunction<PWINDBG_WRITE_PROCESS_MEMORY_ROUTINE32>>
      lpWriteVirtualMemRoutine;

  external Pointer<NativeFunction<PWINDBG_OLDKD_READ_PHYSICAL_MEMORY>>
      lpReadPhysicalMemRoutine;

  external Pointer<NativeFunction<PWINDBG_OLDKD_WRITE_PHYSICAL_MEMORY>>
      lpWritePhysicalMemRoutine;
}

/// {@category Struct}
class WINDBG_OLD_EXTENSION_APIS extends Struct {
  @Uint32()
  external int nSize;

  external Pointer<NativeFunction<PWINDBG_OUTPUT_ROUTINE>> lpOutputRoutine;

  external Pointer<NativeFunction<PWINDBG_GET_EXPRESSION>>
      lpGetExpressionRoutine;

  external Pointer<NativeFunction<PWINDBG_GET_SYMBOL>> lpGetSymbolRoutine;

  external Pointer<NativeFunction<PWINDBG_DISASM>> lpDisasmRoutine;

  external Pointer<NativeFunction<PWINDBG_CHECK_CONTROL_C>>
      lpCheckControlCRoutine;
}

/// {@category Struct}
class WOW64_CONTEXT extends Struct {
  @Uint32()
  external int ContextFlags;

  @Uint32()
  external int Dr0;

  @Uint32()
  external int Dr1;

  @Uint32()
  external int Dr2;

  @Uint32()
  external int Dr3;

  @Uint32()
  external int Dr6;

  @Uint32()
  external int Dr7;

  external WOW64_FLOATING_SAVE_AREA FloatSave;

  @Uint32()
  external int SegGs;

  @Uint32()
  external int SegFs;

  @Uint32()
  external int SegEs;

  @Uint32()
  external int SegDs;

  @Uint32()
  external int Edi;

  @Uint32()
  external int Esi;

  @Uint32()
  external int Ebx;

  @Uint32()
  external int Edx;

  @Uint32()
  external int Ecx;

  @Uint32()
  external int Eax;

  @Uint32()
  external int Ebp;

  @Uint32()
  external int Eip;

  @Uint32()
  external int SegCs;

  @Uint32()
  external int EFlags;

  @Uint32()
  external int Esp;

  @Uint32()
  external int SegSs;

  @Array(512)
  external Array<Uint8> ExtendedRegisters;
}

/// {@category Struct}
class WOW64_DESCRIPTOR_TABLE_ENTRY extends Struct {
  @Uint32()
  external int Selector;

  external WOW64_LDT_ENTRY Descriptor;
}

/// {@category Struct}
class WOW64_FLOATING_SAVE_AREA extends Struct {
  @Uint32()
  external int ControlWord;

  @Uint32()
  external int StatusWord;

  @Uint32()
  external int TagWord;

  @Uint32()
  external int ErrorOffset;

  @Uint32()
  external int ErrorSelector;

  @Uint32()
  external int DataOffset;

  @Uint32()
  external int DataSelector;

  @Array(80)
  external Array<Uint8> RegisterArea;

  @Uint32()
  external int Cr0NpxState;
}

/// {@category Struct}
class WOW64_LDT_ENTRY extends Struct {
  @Uint16()
  external int LimitLow;

  @Uint16()
  external int BaseLow;

  external _WOW64_LDT_ENTRY__HighWord_e__Union HighWord;
}

/// {@category Struct}
class _WOW64_LDT_ENTRY__HighWord_e__Union extends Union {
  external _WOW64_LDT_ENTRY__HighWord_e__Union__Bytes_e__Struct Bytes;

  external _WOW64_LDT_ENTRY__HighWord_e__Union__Bits_e__Struct Bits;
}

/// {@category Struct}
class _WOW64_LDT_ENTRY__HighWord_e__Union__Bytes_e__Struct extends Struct {
  @Uint8()
  external int BaseMid;

  @Uint8()
  external int Flags1;

  @Uint8()
  external int Flags2;

  @Uint8()
  external int BaseHi;
}

extension WOW64_LDT_ENTRY__HighWord_e__Union_Extension on WOW64_LDT_ENTRY {
  int get BaseMid => this.HighWord.Bytes.BaseMid;
  set BaseMid(int value) => this.HighWord.Bytes.BaseMid = value;

  int get Flags1 => this.HighWord.Bytes.Flags1;
  set Flags1(int value) => this.HighWord.Bytes.Flags1 = value;

  int get Flags2 => this.HighWord.Bytes.Flags2;
  set Flags2(int value) => this.HighWord.Bytes.Flags2 = value;

  int get BaseHi => this.HighWord.Bytes.BaseHi;
  set BaseHi(int value) => this.HighWord.Bytes.BaseHi = value;
}

/// {@category Struct}
class _WOW64_LDT_ENTRY__HighWord_e__Union__Bits_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension WOW64_LDT_ENTRY__HighWord_e__Union_Extension_1 on WOW64_LDT_ENTRY {
  int get bitfield => this.HighWord.Bits.bitfield;
  set bitfield(int value) => this.HighWord.Bits.bitfield = value;
}

extension WOW64_LDT_ENTRY_Extension on WOW64_LDT_ENTRY {
  _WOW64_LDT_ENTRY__HighWord_e__Union__Bytes_e__Struct get Bytes =>
      this.HighWord.Bytes;
  set Bytes(_WOW64_LDT_ENTRY__HighWord_e__Union__Bytes_e__Struct value) =>
      this.HighWord.Bytes = value;

  _WOW64_LDT_ENTRY__HighWord_e__Union__Bits_e__Struct get Bits =>
      this.HighWord.Bits;
  set Bits(_WOW64_LDT_ENTRY__HighWord_e__Union__Bits_e__Struct value) =>
      this.HighWord.Bits = value;
}

/// {@category Struct}
@Packed(1)
class XPF_MCE_FLAGS extends Union {
  external _XPF_MCE_FLAGS__Anonymous_e__Struct Anonymous;

  @Uint32()
  external int AsULONG;
}

/// {@category Struct}
@Packed(1)
class _XPF_MCE_FLAGS__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension XPF_MCE_FLAGS_Extension on XPF_MCE_FLAGS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class XPF_MC_BANK_FLAGS extends Union {
  external _XPF_MC_BANK_FLAGS__Anonymous_e__Struct Anonymous;

  @Uint8()
  external int AsUCHAR;
}

/// {@category Struct}
class _XPF_MC_BANK_FLAGS__Anonymous_e__Struct extends Struct {
  @Uint8()
  external int bitfield;
}

extension XPF_MC_BANK_FLAGS_Extension on XPF_MC_BANK_FLAGS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class XSAVE_AREA extends Struct {
  external XSAVE_FORMAT LegacyState;

  external XSAVE_AREA_HEADER Header;
}

/// {@category Struct}
class XSAVE_AREA_HEADER extends Struct {
  @Uint64()
  external int Mask;

  @Uint64()
  external int CompactionMask;

  @Array(6)
  external Array<Uint64> Reserved2;
}

/// {@category Struct}
class XSAVE_FORMAT extends Struct {
  @Uint16()
  external int ControlWord;

  @Uint16()
  external int StatusWord;

  @Uint8()
  external int TagWord;

  @Uint8()
  external int Reserved1;

  @Uint16()
  external int ErrorOpcode;

  @Uint32()
  external int ErrorOffset;

  @Uint16()
  external int ErrorSelector;

  @Uint16()
  external int Reserved2;

  @Uint32()
  external int DataOffset;

  @Uint16()
  external int DataSelector;

  @Uint16()
  external int Reserved3;

  @Uint32()
  external int MxCsr;

  @Uint32()
  external int MxCsr_Mask;

  @Array(8)
  external Array<M128A> FloatRegisters;

  @Array(16)
  external Array<M128A> XmmRegisters;

  @Array(96)
  external Array<Uint8> Reserved4;
}

/// {@category Struct}
class XSTATE_CONFIGURATION extends Struct {
  @Uint64()
  external int EnabledFeatures;

  @Uint64()
  external int EnabledVolatileFeatures;

  @Uint32()
  external int Size;

  external _XSTATE_CONFIGURATION__Anonymous_e__Union Anonymous;

  @Array(64)
  external Array<XSTATE_FEATURE> Features;

  @Uint64()
  external int EnabledSupervisorFeatures;

  @Uint64()
  external int AlignedFeatures;

  @Uint32()
  external int AllFeatureSize;

  @Array(64)
  external Array<Uint32> AllFeatures;

  @Uint64()
  external int EnabledUserVisibleSupervisorFeatures;

  @Uint64()
  external int ExtendedFeatureDisableFeatures;

  @Uint32()
  external int AllNonLargeFeatureSize;

  @Uint32()
  external int Spare;
}

/// {@category Struct}
class _XSTATE_CONFIGURATION__Anonymous_e__Union extends Union {
  @Uint32()
  external int ControlFlags;

  external _XSTATE_CONFIGURATION__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _XSTATE_CONFIGURATION__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension XSTATE_CONFIGURATION__Anonymous_e__Union_Extension
    on XSTATE_CONFIGURATION {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension XSTATE_CONFIGURATION_Extension on XSTATE_CONFIGURATION {
  int get ControlFlags => this.Anonymous.ControlFlags;
  set ControlFlags(int value) => this.Anonymous.ControlFlags = value;

  _XSTATE_CONFIGURATION__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _XSTATE_CONFIGURATION__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class XSTATE_CONFIG_FEATURE_MSC_INFO extends Struct {
  @Uint32()
  external int SizeOfInfo;

  @Uint32()
  external int ContextSize;

  @Uint64()
  external int EnabledFeatures;

  @Array(64)
  external Array<XSTATE_FEATURE> Features;
}

/// {@category Struct}
class XSTATE_CONTEXT extends Struct {
  @Uint64()
  external int Mask;

  @Uint32()
  external int Length;

  @Uint32()
  external int Reserved1;

  external Pointer<XSAVE_AREA> Area;

  external Pointer Buffer;
}

/// {@category Struct}
class XSTATE_FEATURE extends Struct {
  @Uint32()
  external int Offset;

  @Uint32()
  external int Size;
}

/// {@category Struct}
class GETSETBUSDATA extends Struct {
  @Uint32()
  external int BusDataType;

  @Uint32()
  external int BusNumber;

  @Uint32()
  external int SlotNumber;

  external Pointer Buffer;

  @Uint32()
  external int Offset;

  @Uint32()
  external int Length;
}

/// {@category Struct}
class IMAGEHLP_JIT_SYMBOL_MAP extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint64()
  external int Address;

  @Uint64()
  external int BaseOfImage;
}

/// {@category Struct}
class MIDL___MIDL_itf_jscript9diag_0000_0007_0001 extends Struct {
  @Uint64()
  external int InstructionOffset;

  @Uint64()
  external int ReturnOffset;

  @Uint64()
  external int FrameOffset;

  @Uint64()
  external int StackOffset;
}
