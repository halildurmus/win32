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

class WHV_PARTITION_HANDLE extends Struct {
  @IntPtr()
  external int Value;
}

class WHV_CAPABILITY_FEATURES extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint64()
  external int AsUINT64;
}

class WHV_EXTENDED_VM_EXITS extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint64()
  external int AsUINT64;
}

class WHV_PROCESSOR_FEATURES extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint64()
  external int AsUINT64;
}

class WHV_PROCESSOR_FEATURES1 extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint64()
  external int AsUINT64;
}

class WHV_PROCESSOR_FEATURES_BANKS extends Struct {
  @Uint32()
  external int BanksCount;
  @Uint32()
  external int Reserved0;
  @Uint32()
  external int Anonymous;
}

class WHV_PROCESSOR_XSAVE_FEATURES extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint64()
  external int AsUINT64;
}

class WHV_X64_MSR_EXIT_BITMAP extends Struct {
  @Uint64()
  external int AsUINT64;
  @Uint32()
  external int Anonymous;
}

class WHV_CAPABILITY extends Struct {
  @Int32()
  external int HypervisorPresent;
  external WHV_CAPABILITY_FEATURES Features;
  external WHV_EXTENDED_VM_EXITS ExtendedVmExits;
  @Uint32()
  external int ProcessorVendor;
  external WHV_PROCESSOR_FEATURES ProcessorFeatures;
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
}

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

class WHV_PARTITION_PROPERTY extends Struct {
  external WHV_EXTENDED_VM_EXITS ExtendedVmExits;
  external WHV_PROCESSOR_FEATURES ProcessorFeatures;
  external WHV_PROCESSOR_XSAVE_FEATURES ProcessorXsaveFeatures;
  @Uint8()
  external int ProcessorClFlushSize;
  @Uint32()
  external int ProcessorCount;
  @Array(1)
  external Array<Uint32> CpuidExitList;
  @Array(1)
  external Array<WHV_X64_CPUID_RESULT> CpuidResultList;
  @Uint64()
  external int ExceptionExitBitmap;
  @Uint32()
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
}

class WHV_TRANSLATE_GVA_RESULT extends Struct {
  @Uint32()
  external int ResultCode;
  @Uint32()
  external int Reserved;
}

class WHV_UINT128 extends Struct {
  @Uint32()
  external int Anonymous;
  @Array(4)
  external Array<Uint32> Dword;
}

class WHV_X64_FP_REGISTER extends Struct {
  @Uint32()
  external int Anonymous;
  external WHV_UINT128 AsUINT128;
}

class WHV_X64_FP_CONTROL_STATUS_REGISTER extends Struct {
  @Uint32()
  external int Anonymous;
  external WHV_UINT128 AsUINT128;
}

class WHV_X64_XMM_CONTROL_STATUS_REGISTER extends Struct {
  @Uint32()
  external int Anonymous;
  external WHV_UINT128 AsUINT128;
}

class WHV_X64_SEGMENT_REGISTER extends Struct {
  @Uint64()
  external int Base;
  @Uint32()
  external int Limit;
  @Uint16()
  external int Selector;
  @Uint32()
  external int Anonymous;
}

class WHV_X64_TABLE_REGISTER extends Struct {
  @Array(3)
  external Array<Uint16> Pad;
  @Uint16()
  external int Limit;
  @Uint64()
  external int Base;
}

class WHV_X64_INTERRUPT_STATE_REGISTER extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint64()
  external int AsUINT64;
}

class WHV_X64_PENDING_INTERRUPTION_REGISTER extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint64()
  external int AsUINT64;
}

class WHV_X64_DELIVERABILITY_NOTIFICATIONS_REGISTER extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint64()
  external int AsUINT64;
}

class WHV_X64_PENDING_EXCEPTION_EVENT extends Struct {
  @Uint32()
  external int Anonymous;
  external WHV_UINT128 AsUINT128;
}

class WHV_X64_PENDING_EXT_INT_EVENT extends Struct {
  @Uint32()
  external int Anonymous;
  external WHV_UINT128 AsUINT128;
}

class WHV_INTERNAL_ACTIVITY_REGISTER extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint64()
  external int AsUINT64;
}

class WHV_X64_PENDING_DEBUG_EXCEPTION extends Struct {
  @Uint64()
  external int AsUINT64;
  @Uint32()
  external int Anonymous;
}

class WHV_REGISTER_VALUE extends Struct {
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

class WHV_X64_VP_EXECUTION_STATE extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint16()
  external int AsUINT16;
}

class WHV_VP_EXIT_CONTEXT extends Struct {
  external WHV_X64_VP_EXECUTION_STATE ExecutionState;
  @Uint8()
  external int _bitfield;
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

class WHV_MEMORY_ACCESS_INFO extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int AsUINT32;
}

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

class WHV_X64_IO_PORT_ACCESS_INFO extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int AsUINT32;
}

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

class WHV_X64_MSR_ACCESS_INFO extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int AsUINT32;
}

class WHV_X64_MSR_ACCESS_CONTEXT extends Struct {
  external WHV_X64_MSR_ACCESS_INFO AccessInfo;
  @Uint32()
  external int MsrNumber;
  @Uint64()
  external int Rax;
  @Uint64()
  external int Rdx;
}

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

class WHV_VP_EXCEPTION_INFO extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int AsUINT32;
}

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

class WHV_X64_UNSUPPORTED_FEATURE_CONTEXT extends Struct {
  @Uint32()
  external int FeatureCode;
  @Uint32()
  external int Reserved;
  @Uint64()
  external int FeatureParameter;
}

class WHV_RUN_VP_CANCELED_CONTEXT extends Struct {
  @Uint32()
  external int CancelReason;
}

class WHV_X64_INTERRUPTION_DELIVERABLE_CONTEXT extends Struct {
  @Uint32()
  external int DeliverableType;
}

class WHV_X64_APIC_EOI_CONTEXT extends Struct {
  @Uint32()
  external int InterruptVector;
}

class WHV_X64_RDTSC_INFO extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint64()
  external int AsUINT64;
}

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

class WHV_X64_APIC_SMI_CONTEXT extends Struct {
  @Uint64()
  external int ApicIcr;
}

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

class WHV_X64_APIC_INIT_SIPI_CONTEXT extends Struct {
  @Uint64()
  external int ApicIcr;
}

class WHV_RUN_VP_EXIT_CONTEXT extends Struct {
  @Uint32()
  external int ExitReason;
  @Uint32()
  external int Reserved;
  external WHV_VP_EXIT_CONTEXT VpContext;
  @Uint32()
  external int Anonymous;
}

class WHV_INTERRUPT_CONTROL extends Struct {
  @Uint64()
  external int _bitfield;
  @Uint32()
  external int Destination;
  @Uint32()
  external int Vector;
}

class WHV_DOORBELL_MATCH_DATA extends Struct {
  @Uint64()
  external int GuestAddress;
  @Uint64()
  external int Value;
  @Uint32()
  external int Length;
  @Uint32()
  external int _bitfield;
}

class WHV_PARTITION_MEMORY_COUNTERS extends Struct {
  @Uint64()
  external int Mapped4KPageCount;
  @Uint64()
  external int Mapped2MPageCount;
  @Uint64()
  external int Mapped1GPageCount;
}

class WHV_PROCESSOR_RUNTIME_COUNTERS extends Struct {
  @Uint64()
  external int TotalRuntime100ns;
  @Uint64()
  external int HypervisorRuntime100ns;
}

class WHV_PROCESSOR_INTERCEPT_COUNTER extends Struct {
  @Uint64()
  external int Count;
  @Uint64()
  external int Time100ns;
}

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
}

class WHV_PROCESSOR_EVENT_COUNTERS extends Struct {
  @Uint64()
  external int PageFaultCount;
  @Uint64()
  external int ExceptionCount;
  @Uint64()
  external int InterruptCount;
}

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

class WHV_EMULATOR_STATUS extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int AsUINT32;
}

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

class WHV_EMULATOR_CALLBACKS extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Reserved;
  external WHV_EMULATOR_IO_PORT_CALLBACK WHvEmulatorIoPortCallback;
  external WHV_EMULATOR_MEMORY_CALLBACK WHvEmulatorMemoryCallback;
  external WHV_EMULATOR_GET_VIRTUAL_PROCESSOR_REGISTERS_CALLBACK
      WHvEmulatorGetVirtualProcessorRegisters;
  external WHV_EMULATOR_SET_VIRTUAL_PROCESSOR_REGISTERS_CALLBACK
      WHvEmulatorSetVirtualProcessorRegisters;
  external WHV_EMULATOR_TRANSLATE_GVA_PAGE_CALLBACK WHvEmulatorTranslateGvaPage;
}
