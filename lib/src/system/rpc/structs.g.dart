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
import '../../system/rpc/structs.g.dart';
import '../../system/rpc/callbacks.g.dart';
import '../../system/com/IRpcChannelBuffer.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/com/structs.g.dart';

/// {@category Struct}
class ARRAY_INFO extends Struct {
  @Int32()
  external int Dimension;

  external Pointer<Uint32> BufferConformanceMark;

  external Pointer<Uint32> BufferVarianceMark;

  external Pointer<Uint32> MaxCountArray;

  external Pointer<Uint32> OffsetArray;

  external Pointer<Uint32> ActualCountArray;
}

/// {@category Struct}
class BinaryParam extends Struct {
  external Pointer Buffer;

  @Int16()
  external int Size;
}

/// {@category Struct}
class CLIENT_CALL_RETURN extends Union {
  external Pointer $Pointer;

  @IntPtr()
  external int Simple;
}

/// {@category Struct}
class COMM_FAULT_OFFSETS extends Struct {
  @Int16()
  external int CommOffset;

  @Int16()
  external int FaultOffset;
}

/// {@category Struct}
class FULL_PTR_XLAT_TABLES extends Struct {
  external Pointer RefIdToPointer;

  external Pointer PointerToRefId;

  @Uint32()
  external int NextRefId;

  @Int32()
  external int XlatSide;
}

/// {@category Struct}
class GENERIC_BINDING_INFO extends Struct {
  external Pointer pObj;

  @Uint32()
  external int Size;

  external Pointer<NativeFunction<GENERIC_BINDING_ROUTINE>> pfnBind;

  external Pointer<NativeFunction<GENERIC_UNBIND_ROUTINE>> pfnUnbind;
}

/// {@category Struct}
class GENERIC_BINDING_ROUTINE_PAIR extends Struct {
  external Pointer<NativeFunction<GENERIC_BINDING_ROUTINE>> pfnBind;

  external Pointer<NativeFunction<GENERIC_UNBIND_ROUTINE>> pfnUnbind;
}

/// {@category Struct}
class I_RpcProxyCallbackInterface extends Struct {
  external Pointer<NativeFunction<I_RpcProxyIsValidMachineFn>> IsValidMachineFn;

  external Pointer<NativeFunction<I_RpcProxyGetClientAddressFn>>
      GetClientAddressFn;

  external Pointer<NativeFunction<I_RpcProxyGetConnectionTimeoutFn>>
      GetConnectionTimeoutFn;

  external Pointer<NativeFunction<I_RpcPerformCalloutFn>> PerformCalloutFn;

  external Pointer<NativeFunction<I_RpcFreeCalloutStateFn>> FreeCalloutStateFn;

  external Pointer<NativeFunction<I_RpcProxyGetClientSessionAndResourceUUID>>
      GetClientSessionAndResourceUUIDFn;

  external Pointer<NativeFunction<I_RpcProxyFilterIfFn>> ProxyFilterIfFn;

  external Pointer<NativeFunction<I_RpcProxyUpdatePerfCounterFn>>
      RpcProxyUpdatePerfCounterFn;

  external Pointer<NativeFunction<I_RpcProxyUpdatePerfCounterBackendServerFn>>
      RpcProxyUpdatePerfCounterBackendServerFn;
}

/// {@category Struct}
class MALLOC_FREE_STRUCT extends Struct {
  @IntPtr()
  external int pfnAllocate;

  @IntPtr()
  external int pfnFree;
}

/// {@category Struct}
class MIDL_FORMAT_STRING extends Struct {
  @Int16()
  external int Pad;

  @Array(1)
  external Array<Uint8> Format;
}

/// {@category Struct}
class MIDL_INTERCEPTION_INFO extends Struct {
  @Uint32()
  external int Version;

  external Pointer<Uint8> ProcString;

  external Pointer<Uint16> ProcFormatOffsetTable;

  @Uint32()
  external int ProcCount;

  external Pointer<Uint8> TypeString;
}

/// {@category Struct}
class MIDL_INTERFACE_METHOD_PROPERTIES extends Struct {
  @Uint16()
  external int MethodCount;

  external Pointer<Pointer<MIDL_METHOD_PROPERTY_MAP>> MethodProperties;
}

/// {@category Struct}
class MIDL_METHOD_PROPERTY extends Struct {
  @Uint32()
  external int Id;

  @IntPtr()
  external int Value;
}

/// {@category Struct}
class MIDL_METHOD_PROPERTY_MAP extends Struct {
  @Uint32()
  external int Count;

  external Pointer<MIDL_METHOD_PROPERTY> Properties;
}

/// {@category Struct}
class MIDL_SERVER_INFO extends Struct {
  external Pointer<MIDL_STUB_DESC> pStubDesc;

  external Pointer<Pointer<NativeFunction<SERVER_ROUTINE>>> DispatchTable;

  external Pointer<Uint8> ProcString;

  external Pointer<Uint16> FmtStringOffset;

  external Pointer<Pointer<NativeFunction<STUB_THUNK>>> ThunkTable;

  external Pointer<RPC_SYNTAX_IDENTIFIER> pTransferSyntax;

  @IntPtr()
  external int nCount;

  external Pointer<MIDL_SYNTAX_INFO> pSyntaxInfo;
}

/// {@category Struct}
class MIDL_STUBLESS_PROXY_INFO extends Struct {
  external Pointer<MIDL_STUB_DESC> pStubDesc;

  external Pointer<Uint8> ProcFormatString;

  external Pointer<Uint16> FormatStringOffset;

  external Pointer<RPC_SYNTAX_IDENTIFIER> pTransferSyntax;

  @IntPtr()
  external int nCount;

  external Pointer<MIDL_SYNTAX_INFO> pSyntaxInfo;
}

/// {@category Struct}
class MIDL_STUB_DESC extends Struct {
  external Pointer RpcInterfaceInformation;

  @IntPtr()
  external int pfnAllocate;

  @IntPtr()
  external int pfnFree;

  external _MIDL_STUB_DESC__IMPLICIT_HANDLE_INFO_e__Union IMPLICIT_HANDLE_INFO;

  external Pointer<Pointer<NativeFunction<NDR_RUNDOWN>>> apfnNdrRundownRoutines;

  external Pointer<GENERIC_BINDING_ROUTINE_PAIR> aGenericBindingRoutinePairs;

  external Pointer<Pointer<NativeFunction<EXPR_EVAL>>> apfnExprEval;

  external Pointer<XMIT_ROUTINE_QUINTUPLE> aXmitQuintuple;

  external Pointer<Uint8> pFormatTypes;

  @Int32()
  external int fCheckBounds;

  @Uint32()
  external int Version;

  external Pointer<MALLOC_FREE_STRUCT> pMallocFreeStruct;

  @Int32()
  external int MIDLVersion;

  external Pointer<COMM_FAULT_OFFSETS> CommFaultOffsets;

  external Pointer<USER_MARSHAL_ROUTINE_QUADRUPLE> aUserMarshalQuadruple;

  external Pointer<Pointer<NativeFunction<NDR_NOTIFY_ROUTINE>>>
      NotifyRoutineTable;

  @IntPtr()
  external int mFlags;

  external Pointer<NDR_CS_ROUTINES> CsRoutineTables;

  external Pointer ProxyServerInfo;

  external Pointer<NDR_EXPR_DESC> pExprInfo;
}

/// {@category Struct}
class _MIDL_STUB_DESC__IMPLICIT_HANDLE_INFO_e__Union extends Union {
  external Pointer<Pointer> pAutoHandle;

  external Pointer<Pointer> pPrimitiveHandle;

  external Pointer<GENERIC_BINDING_INFO> pGenericBindingInfo;
}

extension MIDL_STUB_DESC_Extension on MIDL_STUB_DESC {
  Pointer<Pointer> get pAutoHandle => this.IMPLICIT_HANDLE_INFO.pAutoHandle;
  set pAutoHandle(Pointer<Pointer> value) =>
      this.IMPLICIT_HANDLE_INFO.pAutoHandle = value;

  Pointer<Pointer> get pPrimitiveHandle =>
      this.IMPLICIT_HANDLE_INFO.pPrimitiveHandle;
  set pPrimitiveHandle(Pointer<Pointer> value) =>
      this.IMPLICIT_HANDLE_INFO.pPrimitiveHandle = value;

  Pointer<GENERIC_BINDING_INFO> get pGenericBindingInfo =>
      this.IMPLICIT_HANDLE_INFO.pGenericBindingInfo;
  set pGenericBindingInfo(Pointer<GENERIC_BINDING_INFO> value) =>
      this.IMPLICIT_HANDLE_INFO.pGenericBindingInfo = value;
}

/// {@category Struct}
class MIDL_STUB_MESSAGE extends Struct {
  external Pointer<RPC_MESSAGE> RpcMsg;

  external Pointer<Uint8> Buffer;

  external Pointer<Uint8> BufferStart;

  external Pointer<Uint8> BufferEnd;

  external Pointer<Uint8> BufferMark;

  @Uint32()
  external int BufferLength;

  @Uint32()
  external int MemorySize;

  external Pointer<Uint8> Memory;

  @Uint8()
  external int IsClient;

  @Uint8()
  external int Pad;

  @Uint16()
  external int uFlags2;

  @Int32()
  external int ReuseBuffer;

  external Pointer<NDR_ALLOC_ALL_NODES_CONTEXT> pAllocAllNodesContext;

  external Pointer<NDR_POINTER_QUEUE_STATE> pPointerQueueState;

  @Int32()
  external int IgnoreEmbeddedPointers;

  external Pointer<Uint8> PointerBufferMark;

  @Uint8()
  external int CorrDespIncrement;

  @Uint8()
  external int uFlags;

  @Uint16()
  external int UniquePtrCount;

  @IntPtr()
  external int MaxCount;

  @Uint32()
  external int Offset;

  @Uint32()
  external int ActualCount;

  @IntPtr()
  external int pfnAllocate;

  @IntPtr()
  external int pfnFree;

  external Pointer<Uint8> StackTop;

  external Pointer<Uint8> pPresentedType;

  external Pointer<Uint8> pTransmitType;

  external Pointer SavedHandle;

  external Pointer<MIDL_STUB_DESC> StubDesc;

  external Pointer<FULL_PTR_XLAT_TABLES> FullPtrXlatTables;

  @Uint32()
  external int FullPtrRefId;

  @Uint32()
  external int PointerLength;

  @Int32()
  external int bitfield;

  @Uint32()
  external int dwDestContext;

  external Pointer pvDestContext;

  external Pointer<Pointer<NDR_SCONTEXT_1>> SavedContextHandles;

  @Int32()
  external int ParamNumber;

  external Pointer<COMObject> pRpcChannelBuffer;

  external Pointer<ARRAY_INFO> pArrayInfo;

  external Pointer<Uint32> SizePtrCountArray;

  external Pointer<Uint32> SizePtrOffsetArray;

  external Pointer<Uint32> SizePtrLengthArray;

  external Pointer pArgQueue;

  @Uint32()
  external int dwStubPhase;

  external Pointer LowStackMark;

  external Pointer<NDR_ASYNC_MESSAGE> pAsyncMsg;

  external Pointer<NDR_CORRELATION_INFO> pCorrInfo;

  external Pointer<Uint8> pCorrMemory;

  external Pointer pMemoryList;

  @IntPtr()
  external int pCSInfo;

  external Pointer<Uint8> ConformanceMark;

  external Pointer<Uint8> VarianceMark;

  @IntPtr()
  external int Unused;

  external Pointer<NDR_PROC_CONTEXT> pContext;

  external Pointer ContextHandleHash;

  external Pointer pUserMarshalList;

  @IntPtr()
  external int Reserved51_3;

  @IntPtr()
  external int Reserved51_4;

  @IntPtr()
  external int Reserved51_5;
}

/// {@category Struct}
class MIDL_SYNTAX_INFO extends Struct {
  external RPC_SYNTAX_IDENTIFIER TransferSyntax;

  external Pointer<RPC_DISPATCH_TABLE> DispatchTable;

  external Pointer<Uint8> ProcString;

  external Pointer<Uint16> FmtStringOffset;

  external Pointer<Uint8> TypeString;

  external Pointer aUserMarshalQuadruple;

  external Pointer<MIDL_INTERFACE_METHOD_PROPERTIES> pMethodProperties;

  @IntPtr()
  external int pReserved2;
}

/// {@category Struct}
class MIDL_TYPE_PICKLING_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Array(3)
  external Array<IntPtr> Reserved;
}

/// {@category Struct}
class MIDL_WINRT_TYPE_SERIALIZATION_INFO extends Struct {
  @Uint32()
  external int Version;

  external Pointer<Uint8> TypeFormatString;

  @Uint16()
  external int FormatStringSize;

  @Uint16()
  external int TypeOffset;

  external Pointer<MIDL_STUB_DESC> StubDesc;
}

/// {@category Struct}
class NDR64_ARRAY_ELEMENT_INFO extends Struct {
  @Uint32()
  external int ElementMemSize;

  external Pointer Element;
}

/// {@category Struct}
class NDR64_ARRAY_FLAGS extends Struct {
  @Uint8()
  external int bitfield;
}

/// {@category Struct}
class NDR64_BINDINGS extends Union {
  external NDR64_BIND_PRIMITIVE Primitive;

  external NDR64_BIND_GENERIC Generic;

  external NDR64_BIND_CONTEXT Context;
}

/// {@category Struct}
class NDR64_BIND_AND_NOTIFY_EXTENSION extends Struct {
  external NDR64_BIND_CONTEXT Binding;

  @Uint16()
  external int NotifyIndex;
}

/// {@category Struct}
class NDR64_BIND_CONTEXT extends Struct {
  @Uint8()
  external int HandleType;

  @Uint8()
  external int Flags;

  @Uint16()
  external int StackOffset;

  @Uint8()
  external int RoutineIndex;

  @Uint8()
  external int Ordinal;
}

/// {@category Struct}
class NDR64_BIND_GENERIC extends Struct {
  @Uint8()
  external int HandleType;

  @Uint8()
  external int Flags;

  @Uint16()
  external int StackOffset;

  @Uint8()
  external int RoutineIndex;

  @Uint8()
  external int Size;
}

/// {@category Struct}
class NDR64_BIND_PRIMITIVE extends Struct {
  @Uint8()
  external int HandleType;

  @Uint8()
  external int Flags;

  @Uint16()
  external int StackOffset;

  @Uint16()
  external int Reserved;
}

/// {@category Struct}
class NDR64_BOGUS_ARRAY_HEADER_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Alignment;

  external NDR64_ARRAY_FLAGS Flags;

  @Uint8()
  external int NumberDims;

  @Uint32()
  external int NumberElements;

  external Pointer Element;
}

/// {@category Struct}
class NDR64_BOGUS_STRUCTURE_HEADER_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Alignment;

  external NDR64_STRUCTURE_FLAGS Flags;

  @Uint8()
  external int Reserve;

  @Uint32()
  external int MemorySize;

  external Pointer OriginalMemberLayout;

  external Pointer OriginalPointerLayout;

  external Pointer PointerLayout;
}

/// {@category Struct}
class NDR64_BUFFER_ALIGN_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Alignment;

  @Uint16()
  external int Reserved;

  @Uint32()
  external int Reserved2;
}

/// {@category Struct}
class NDR64_CONFORMANT_STRING_FORMAT extends Struct {
  external NDR64_STRING_HEADER_FORMAT Header;
}

/// {@category Struct}
class NDR64_CONF_ARRAY_HEADER_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Alignment;

  external NDR64_ARRAY_FLAGS Flags;

  @Uint8()
  external int Reserved;

  @Uint32()
  external int ElementSize;

  external Pointer ConfDescriptor;
}

/// {@category Struct}
class NDR64_CONF_BOGUS_STRUCTURE_HEADER_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Alignment;

  external NDR64_STRUCTURE_FLAGS Flags;

  @Uint8()
  external int Dimensions;

  @Uint32()
  external int MemorySize;

  external Pointer OriginalMemberLayout;

  external Pointer OriginalPointerLayout;

  external Pointer PointerLayout;

  external Pointer ConfArrayDescription;
}

/// {@category Struct}
class NDR64_CONF_STRUCTURE_HEADER_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Alignment;

  external NDR64_STRUCTURE_FLAGS Flags;

  @Uint8()
  external int Reserve;

  @Uint32()
  external int MemorySize;

  external Pointer ArrayDescription;
}

/// {@category Struct}
class NDR64_CONF_VAR_ARRAY_HEADER_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Alignment;

  external NDR64_ARRAY_FLAGS Flags;

  @Uint8()
  external int Reserved;

  @Uint32()
  external int ElementSize;

  external Pointer ConfDescriptor;

  external Pointer VarDescriptor;
}

/// {@category Struct}
class NDR64_CONF_VAR_BOGUS_ARRAY_HEADER_FORMAT extends Struct {
  external NDR64_BOGUS_ARRAY_HEADER_FORMAT FixedArrayFormat;

  external Pointer ConfDescription;

  external Pointer VarDescription;

  external Pointer OffsetDescription;
}

/// {@category Struct}
class NDR64_CONSTANT_IID_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Flags;

  @Uint16()
  external int Reserved;

  external GUID Guid;
}

/// {@category Struct}
class NDR64_CONTEXT_HANDLE_FLAGS extends Struct {
  @Uint8()
  external int bitfield;
}

/// {@category Struct}
class NDR64_CONTEXT_HANDLE_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int ContextFlags;

  @Uint8()
  external int RundownRoutineIndex;

  @Uint8()
  external int Ordinal;
}

/// {@category Struct}
class NDR64_EMBEDDED_COMPLEX_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Reserve1;

  @Uint16()
  external int Reserve2;

  external Pointer Type;
}

/// {@category Struct}
class NDR64_ENCAPSULATED_UNION extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Alignment;

  @Uint8()
  external int Flags;

  @Uint8()
  external int SwitchType;

  @Uint32()
  external int MemoryOffset;

  @Uint32()
  external int MemorySize;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class NDR64_EXPR_CONST32 extends Struct {
  @Uint8()
  external int ExprType;

  @Uint8()
  external int Reserved;

  @Uint16()
  external int Reserved1;

  @Uint32()
  external int ConstValue;
}

/// {@category Struct}
class NDR64_EXPR_CONST64 extends Struct {
  @Uint8()
  external int ExprType;

  @Uint8()
  external int Reserved;

  @Uint16()
  external int Reserved1;

  @Int64()
  external int ConstValue;
}

/// {@category Struct}
class NDR64_EXPR_NOOP extends Struct {
  @Uint8()
  external int ExprType;

  @Uint8()
  external int Size;

  @Uint16()
  external int Reserved;
}

/// {@category Struct}
class NDR64_EXPR_OPERATOR extends Struct {
  @Uint8()
  external int ExprType;

  @Uint8()
  external int Operator;

  @Uint8()
  external int CastType;

  @Uint8()
  external int Reserved;
}

/// {@category Struct}
class NDR64_EXPR_VAR extends Struct {
  @Uint8()
  external int ExprType;

  @Uint8()
  external int VarType;

  @Uint16()
  external int Reserved;

  @Uint32()
  external int Offset;
}

/// {@category Struct}
class NDR64_FIXED_REPEAT_FORMAT extends Struct {
  external NDR64_REPEAT_FORMAT RepeatFormat;

  @Uint32()
  external int Iterations;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class NDR64_FIX_ARRAY_HEADER_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Alignment;

  external NDR64_ARRAY_FLAGS Flags;

  @Uint8()
  external int Reserved;

  @Uint32()
  external int TotalSize;
}

/// {@category Struct}
class NDR64_IID_FLAGS extends Struct {
  @Uint8()
  external int bitfield;
}

/// {@category Struct}
class NDR64_IID_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Flags;

  @Uint16()
  external int Reserved;

  external Pointer IIDDescriptor;
}

/// {@category Struct}
class NDR64_MEMPAD_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Reserve1;

  @Uint16()
  external int MemPad;

  @Uint32()
  external int Reserved2;
}

/// {@category Struct}
class NDR64_NON_CONFORMANT_STRING_FORMAT extends Struct {
  external NDR64_STRING_HEADER_FORMAT Header;

  @Uint32()
  external int TotalSize;
}

/// {@category Struct}
class NDR64_NON_ENCAPSULATED_UNION extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Alignment;

  @Uint8()
  external int Flags;

  @Uint8()
  external int SwitchType;

  @Uint32()
  external int MemorySize;

  external Pointer Switch;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class NDR64_NO_REPEAT_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Flags;

  @Uint16()
  external int Reserved1;

  @Uint32()
  external int Reserved2;
}

/// {@category Struct}
class NDR64_PARAM_FLAGS extends Struct {
  @Uint16()
  external int bitfield;
}

/// {@category Struct}
class NDR64_PARAM_FORMAT extends Struct {
  external Pointer Type;

  external NDR64_PARAM_FLAGS Attributes;

  @Uint16()
  external int Reserved;

  @Uint32()
  external int StackOffset;
}

/// {@category Struct}
class NDR64_PIPE_FLAGS extends Struct {
  @Uint8()
  external int bitfield;
}

/// {@category Struct}
class NDR64_PIPE_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Flags;

  @Uint8()
  external int Alignment;

  @Uint8()
  external int Reserved;

  external Pointer Type;

  @Uint32()
  external int MemorySize;

  @Uint32()
  external int BufferSize;
}

/// {@category Struct}
class NDR64_POINTER_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Flags;

  @Uint16()
  external int Reserved;

  external Pointer Pointee;
}

/// {@category Struct}
class NDR64_POINTER_INSTANCE_HEADER_FORMAT extends Struct {
  @Uint32()
  external int Offset;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class NDR64_POINTER_REPEAT_FLAGS extends Struct {
  @Uint8()
  external int bitfield;
}

/// {@category Struct}
class NDR64_PROC_FLAGS extends Struct {
  @Uint32()
  external int bitfield;
}

/// {@category Struct}
class NDR64_PROC_FORMAT extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int StackSize;

  @Uint32()
  external int ConstantClientBufferSize;

  @Uint32()
  external int ConstantServerBufferSize;

  @Uint16()
  external int RpcFlags;

  @Uint16()
  external int FloatDoubleMask;

  @Uint16()
  external int NumberOfParams;

  @Uint16()
  external int ExtensionSize;
}

/// {@category Struct}
class NDR64_RANGED_STRING_FORMAT extends Struct {
  external NDR64_STRING_HEADER_FORMAT Header;

  @Uint32()
  external int Reserved;

  @Uint64()
  external int Min;

  @Uint64()
  external int Max;
}

/// {@category Struct}
class NDR64_RANGE_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int RangeType;

  @Uint16()
  external int Reserved;

  @Int64()
  external int MinValue;

  @Int64()
  external int MaxValue;
}

/// {@category Struct}
class NDR64_RANGE_PIPE_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Flags;

  @Uint8()
  external int Alignment;

  @Uint8()
  external int Reserved;

  external Pointer Type;

  @Uint32()
  external int MemorySize;

  @Uint32()
  external int BufferSize;

  @Uint32()
  external int MinValue;

  @Uint32()
  external int MaxValue;
}

/// {@category Struct}
class NDR64_REPEAT_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  external NDR64_POINTER_REPEAT_FLAGS Flags;

  @Uint16()
  external int Reserved;

  @Uint32()
  external int Increment;

  @Uint32()
  external int OffsetToArray;

  @Uint32()
  external int NumberOfPointers;
}

/// {@category Struct}
class NDR64_RPC_FLAGS extends Struct {
  @Uint16()
  external int bitfield;
}

/// {@category Struct}
class NDR64_SIMPLE_MEMBER_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Reserved1;

  @Uint16()
  external int Reserved2;

  @Uint32()
  external int Reserved3;
}

/// {@category Struct}
class NDR64_SIMPLE_REGION_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Alignment;

  @Uint16()
  external int RegionSize;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class NDR64_SIZED_CONFORMANT_STRING_FORMAT extends Struct {
  external NDR64_STRING_HEADER_FORMAT Header;

  external Pointer SizeDescription;
}

/// {@category Struct}
class NDR64_STRING_FLAGS extends Struct {
  @Uint8()
  external int bitfield;
}

/// {@category Struct}
class NDR64_STRING_HEADER_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  external NDR64_STRING_FLAGS Flags;

  @Uint16()
  external int ElementSize;
}

/// {@category Struct}
class NDR64_STRUCTURE_FLAGS extends Struct {
  @Uint8()
  external int bitfield;
}

/// {@category Struct}
class NDR64_STRUCTURE_HEADER_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Alignment;

  external NDR64_STRUCTURE_FLAGS Flags;

  @Uint8()
  external int Reserve;

  @Uint32()
  external int MemorySize;
}

/// {@category Struct}
class NDR64_SYSTEM_HANDLE_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int HandleType;

  @Uint32()
  external int DesiredAccess;
}

/// {@category Struct}
class NDR64_TRANSMIT_AS_FLAGS extends Struct {
  @Uint8()
  external int bitfield;
}

/// {@category Struct}
class NDR64_TRANSMIT_AS_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Flags;

  @Uint16()
  external int RoutineIndex;

  @Uint16()
  external int TransmittedTypeWireAlignment;

  @Uint16()
  external int MemoryAlignment;

  @Uint32()
  external int PresentedTypeMemorySize;

  @Uint32()
  external int TransmittedTypeBufferSize;

  external Pointer TransmittedType;
}

/// {@category Struct}
class NDR64_TYPE_STRICT_CONTEXT_HANDLE extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int RealFormatCode;

  @Uint16()
  external int Reserved;

  external Pointer Type;

  @Uint32()
  external int CtxtFlags;

  @Uint32()
  external int CtxtID;
}

/// {@category Struct}
class NDR64_UNION_ARM extends Struct {
  @Int64()
  external int CaseValue;

  external Pointer Type;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class NDR64_UNION_ARM_SELECTOR extends Struct {
  @Uint8()
  external int Reserved1;

  @Uint8()
  external int Alignment;

  @Uint16()
  external int Reserved2;

  @Uint32()
  external int Arms;
}

/// {@category Struct}
class NDR64_USER_MARSHAL_FLAGS extends Struct {
  @Uint8()
  external int bitfield;
}

/// {@category Struct}
class NDR64_USER_MARSHAL_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Flags;

  @Uint16()
  external int RoutineIndex;

  @Uint16()
  external int TransmittedTypeWireAlignment;

  @Uint16()
  external int MemoryAlignment;

  @Uint32()
  external int UserTypeMemorySize;

  @Uint32()
  external int TransmittedTypeBufferSize;

  external Pointer TransmittedType;
}

/// {@category Struct}
class NDR64_VAR_ARRAY_HEADER_FORMAT extends Struct {
  @Uint8()
  external int FormatCode;

  @Uint8()
  external int Alignment;

  external NDR64_ARRAY_FLAGS Flags;

  @Uint8()
  external int Reserved;

  @Uint32()
  external int TotalSize;

  @Uint32()
  external int ElementSize;

  external Pointer VarDescriptor;
}

/// {@category Struct}
class NDR_ALLOC_ALL_NODES_CONTEXT extends Opaque {}

/// {@category Struct}
class NDR_CS_ROUTINES extends Struct {
  external Pointer<NDR_CS_SIZE_CONVERT_ROUTINES> pSizeConvertRoutines;

  external Pointer<Pointer<NativeFunction<CS_TAG_GETTING_ROUTINE>>>
      pTagGettingRoutines;
}

/// {@category Struct}
class NDR_CS_SIZE_CONVERT_ROUTINES extends Struct {
  external Pointer<NativeFunction<CS_TYPE_NET_SIZE_ROUTINE>> pfnNetSize;

  external Pointer<NativeFunction<CS_TYPE_TO_NETCS_ROUTINE>> pfnToNetCs;

  external Pointer<NativeFunction<CS_TYPE_LOCAL_SIZE_ROUTINE>> pfnLocalSize;

  external Pointer<NativeFunction<CS_TYPE_FROM_NETCS_ROUTINE>> pfnFromNetCs;
}

/// {@category Struct}
class NDR_EXPR_DESC extends Struct {
  external Pointer<Uint16> pOffset;

  external Pointer<Uint8> pFormatExpr;
}

/// {@category Struct}
class NDR_POINTER_QUEUE_STATE extends Opaque {}

/// {@category Struct}
class NDR_SCONTEXT_1 extends Struct {
  @Array(2)
  external Array<Pointer> pad;

  external Pointer userContext;
}

/// {@category Struct}
class NDR_USER_MARSHAL_INFO extends Struct {
  @Uint32()
  external int InformationLevel;

  external _NDR_USER_MARSHAL_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _NDR_USER_MARSHAL_INFO__Anonymous_e__Union extends Union {
  external NDR_USER_MARSHAL_INFO_LEVEL1 Level1;
}

extension NDR_USER_MARSHAL_INFO_Extension on NDR_USER_MARSHAL_INFO {
  NDR_USER_MARSHAL_INFO_LEVEL1 get Level1 => this.Anonymous.Level1;
  set Level1(NDR_USER_MARSHAL_INFO_LEVEL1 value) =>
      this.Anonymous.Level1 = value;
}

/// {@category Struct}
class NDR_USER_MARSHAL_INFO_LEVEL1 extends Struct {
  external Pointer Buffer;

  @Uint32()
  external int BufferSize;

  @IntPtr()
  external int pfnAllocate;

  @IntPtr()
  external int pfnFree;

  external Pointer<COMObject> pRpcChannelBuffer;

  @Array(5)
  external Array<IntPtr> Reserved;
}

/// {@category Struct}
class RDR_CALLOUT_STATE extends Struct {
  @Int32()
  external int LastError;

  external Pointer LastEEInfo;

  @Int32()
  external int LastCalledStage;

  external Pointer<Uint16> ServerName;

  external Pointer<Uint16> ServerPort;

  external Pointer<Uint16> RemoteUser;

  external Pointer<Uint16> AuthType;

  @Uint8()
  external int ResourceTypePresent;

  @Uint8()
  external int SessionIdPresent;

  @Uint8()
  external int InterfacePresent;

  external GUID ResourceType;

  external GUID SessionId;

  external RPC_SYNTAX_IDENTIFIER Interface;

  external Pointer CertContext;
}

/// {@category Struct}
class RPC_ASYNC_NOTIFICATION_INFO extends Union {
  external _RPC_ASYNC_NOTIFICATION_INFO__APC_e__Struct APC;

  external _RPC_ASYNC_NOTIFICATION_INFO__IOC_e__Struct IOC;

  external _RPC_ASYNC_NOTIFICATION_INFO__IntPtr_e__Struct $IntPtr;

  @IntPtr()
  external int hEvent;

  external Pointer<NativeFunction<PFN_RPCNOTIFICATION_ROUTINE>>
      NotificationRoutine;
}

/// {@category Struct}
class _RPC_ASYNC_NOTIFICATION_INFO__APC_e__Struct extends Struct {
  external Pointer<NativeFunction<PFN_RPCNOTIFICATION_ROUTINE>>
      NotificationRoutine;

  @IntPtr()
  external int hThread;
}

extension RPC_ASYNC_NOTIFICATION_INFO_Extension on RPC_ASYNC_NOTIFICATION_INFO {
  Pointer<NativeFunction<PFN_RPCNOTIFICATION_ROUTINE>>
      get NotificationRoutine => this.APC.NotificationRoutine;
  set NotificationRoutine(
          Pointer<NativeFunction<PFN_RPCNOTIFICATION_ROUTINE>> value) =>
      this.APC.NotificationRoutine = value;

  int get hThread => this.APC.hThread;
  set hThread(int value) => this.APC.hThread = value;
}

/// {@category Struct}
class _RPC_ASYNC_NOTIFICATION_INFO__IOC_e__Struct extends Struct {
  @IntPtr()
  external int hIOPort;

  @Uint32()
  external int dwNumberOfBytesTransferred;

  @IntPtr()
  external int dwCompletionKey;

  external Pointer<OVERLAPPED> lpOverlapped;
}

extension RPC_ASYNC_NOTIFICATION_INFO_Extension_1
    on RPC_ASYNC_NOTIFICATION_INFO {
  int get hIOPort => this.IOC.hIOPort;
  set hIOPort(int value) => this.IOC.hIOPort = value;

  int get dwNumberOfBytesTransferred => this.IOC.dwNumberOfBytesTransferred;
  set dwNumberOfBytesTransferred(int value) =>
      this.IOC.dwNumberOfBytesTransferred = value;

  int get dwCompletionKey => this.IOC.dwCompletionKey;
  set dwCompletionKey(int value) => this.IOC.dwCompletionKey = value;

  Pointer<OVERLAPPED> get lpOverlapped => this.IOC.lpOverlapped;
  set lpOverlapped(Pointer<OVERLAPPED> value) => this.IOC.lpOverlapped = value;
}

/// {@category Struct}
class _RPC_ASYNC_NOTIFICATION_INFO__IntPtr_e__Struct extends Struct {
  @IntPtr()
  external int hWnd;

  @Uint32()
  external int Msg;
}

extension RPC_ASYNC_NOTIFICATION_INFO_Extension_2
    on RPC_ASYNC_NOTIFICATION_INFO {
  int get hWnd => this.$IntPtr.hWnd;
  set hWnd(int value) => this.$IntPtr.hWnd = value;

  int get Msg => this.$IntPtr.Msg;
  set Msg(int value) => this.$IntPtr.Msg = value;
}

/// {@category Struct}
class RPC_ASYNC_STATE extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Signature;

  @Int32()
  external int Lock;

  @Uint32()
  external int Flags;

  external Pointer StubInfo;

  external Pointer UserInfo;

  external Pointer RuntimeInfo;

  @Int32()
  external int Event;

  @Int32()
  external int NotificationType;

  external RPC_ASYNC_NOTIFICATION_INFO u;

  @Array(4)
  external Array<IntPtr> Reserved;
}

/// {@category Struct}
class RPC_BINDING_HANDLE_OPTIONS_V1 extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ComTimeout;

  @Uint32()
  external int CallTimeout;
}

/// {@category Struct}
class RPC_BINDING_HANDLE_SECURITY_V1_ extends Struct {
  @Uint32()
  external int Version;

  external Pointer<Uint16> ServerPrincName;

  @Uint32()
  external int AuthnLevel;

  @Uint32()
  external int AuthnSvc;

  external Pointer<SEC_WINNT_AUTH_IDENTITY_> AuthIdentity;

  external Pointer<RPC_SECURITY_QOS> SecurityQos;
}

/// {@category Struct}
class RPC_BINDING_HANDLE_TEMPLATE_V1_ extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ProtocolSequence;

  external Pointer<Uint16> NetworkAddress;

  external Pointer<Uint16> StringEndpoint;

  external _RPC_BINDING_HANDLE_TEMPLATE_V1_W__u1_e__Union u1;

  external GUID ObjectUuid;
}

/// {@category Struct}
class _RPC_BINDING_HANDLE_TEMPLATE_V1_W__u1_e__Union extends Union {
  external Pointer<Uint16> Reserved;
}

extension RPC_BINDING_HANDLE_TEMPLATE_V1_W_Extension
    on RPC_BINDING_HANDLE_TEMPLATE_V1_ {
  Pointer<Uint16> get Reserved => this.u1.Reserved;
  set Reserved(Pointer<Uint16> value) => this.u1.Reserved = value;
}

/// {@category Struct}
class RPC_BINDING_VECTOR extends Struct {
  @Uint32()
  external int Count;

  @Array(1)
  external Array<Pointer> BindingH;
}

/// {@category Struct}
class RPC_CALL_ATTRIBUTES_V1_ extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ServerPrincipalNameBufferLength;

  external Pointer<Uint16> ServerPrincipalName;

  @Uint32()
  external int ClientPrincipalNameBufferLength;

  external Pointer<Uint16> ClientPrincipalName;

  @Uint32()
  external int AuthenticationLevel;

  @Uint32()
  external int AuthenticationService;

  @Int32()
  external int NullSession;
}

/// {@category Struct}
class RPC_CALL_ATTRIBUTES_V2_ extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ServerPrincipalNameBufferLength;

  external Pointer<Uint16> ServerPrincipalName;

  @Uint32()
  external int ClientPrincipalNameBufferLength;

  external Pointer<Uint16> ClientPrincipalName;

  @Uint32()
  external int AuthenticationLevel;

  @Uint32()
  external int AuthenticationService;

  @Int32()
  external int NullSession;

  @Int32()
  external int KernelModeCaller;

  @Uint32()
  external int ProtocolSequence;

  @Int32()
  external int IsClientLocal;

  @IntPtr()
  external int ClientPID;

  @Uint32()
  external int CallStatus;

  @Int32()
  external int CallType;

  external Pointer<RPC_CALL_LOCAL_ADDRESS_V1> CallLocalAddress;

  @Uint16()
  external int OpNum;

  external GUID InterfaceUuid;
}

/// {@category Struct}
class RPC_CALL_ATTRIBUTES_V3_ extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ServerPrincipalNameBufferLength;

  external Pointer<Uint16> ServerPrincipalName;

  @Uint32()
  external int ClientPrincipalNameBufferLength;

  external Pointer<Uint16> ClientPrincipalName;

  @Uint32()
  external int AuthenticationLevel;

  @Uint32()
  external int AuthenticationService;

  @Int32()
  external int NullSession;

  @Int32()
  external int KernelModeCaller;

  @Uint32()
  external int ProtocolSequence;

  @Int32()
  external int IsClientLocal;

  @IntPtr()
  external int ClientPID;

  @Uint32()
  external int CallStatus;

  @Int32()
  external int CallType;

  external Pointer<RPC_CALL_LOCAL_ADDRESS_V1> CallLocalAddress;

  @Uint16()
  external int OpNum;

  external GUID InterfaceUuid;

  @Uint32()
  external int ClientIdentifierBufferLength;

  external Pointer<Uint8> ClientIdentifier;
}

/// {@category Struct}
class RPC_CALL_LOCAL_ADDRESS_V1 extends Struct {
  @Uint32()
  external int Version;

  external Pointer Buffer;

  @Uint32()
  external int BufferSize;

  @Int32()
  external int AddressFormat;
}

/// {@category Struct}
class RPC_CLIENT_INFORMATION1 extends Struct {
  external Pointer<Uint8> UserName;

  external Pointer<Uint8> ComputerName;

  @Uint16()
  external int Privilege;

  @Uint32()
  external int AuthFlags;
}

/// {@category Struct}
class RPC_CLIENT_INTERFACE extends Struct {
  @Uint32()
  external int Length;

  external RPC_SYNTAX_IDENTIFIER InterfaceId;

  external RPC_SYNTAX_IDENTIFIER TransferSyntax;

  external Pointer<RPC_DISPATCH_TABLE> DispatchTable;

  @Uint32()
  external int RpcProtseqEndpointCount;

  external Pointer<RPC_PROTSEQ_ENDPOINT> RpcProtseqEndpoint;

  @IntPtr()
  external int Reserved;

  external Pointer InterpreterInfo;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class RPC_C_OPT_COOKIE_AUTH_DESCRIPTOR extends Struct {
  @Uint32()
  external int BufferSize;

  external Pointer<Utf8> Buffer;
}

/// {@category Struct}
class RPC_DISPATCH_TABLE extends Struct {
  @Uint32()
  external int DispatchTableCount;

  external Pointer<NativeFunction<RPC_DISPATCH_FUNCTION>> DispatchTable;

  @IntPtr()
  external int Reserved;
}

/// {@category Struct}
class RPC_EE_INFO_PARAM extends Struct {
  @Int32()
  external int ParameterType;

  external _RPC_EE_INFO_PARAM__u_e__Union u;
}

/// {@category Struct}
class _RPC_EE_INFO_PARAM__u_e__Union extends Union {
  external Pointer<Utf8> AnsiString;

  external Pointer<Utf16> UnicodeString;

  @Int32()
  external int LVal;

  @Int16()
  external int SVal;

  @Uint64()
  external int PVal;

  external BinaryParam BVal;
}

extension RPC_EE_INFO_PARAM_Extension on RPC_EE_INFO_PARAM {
  Pointer<Utf8> get AnsiString => this.u.AnsiString;
  set AnsiString(Pointer<Utf8> value) => this.u.AnsiString = value;

  Pointer<Utf16> get UnicodeString => this.u.UnicodeString;
  set UnicodeString(Pointer<Utf16> value) => this.u.UnicodeString = value;

  int get LVal => this.u.LVal;
  set LVal(int value) => this.u.LVal = value;

  int get SVal => this.u.SVal;
  set SVal(int value) => this.u.SVal = value;

  int get PVal => this.u.PVal;
  set PVal(int value) => this.u.PVal = value;

  BinaryParam get BVal => this.u.BVal;
  set BVal(BinaryParam value) => this.u.BVal = value;
}

/// {@category Struct}
class RPC_ENDPOINT_TEMPLATE extends Struct {
  @Uint32()
  external int Version;

  external Pointer<Uint16> ProtSeq;

  external Pointer<Uint16> Endpoint;

  external Pointer SecurityDescriptor;

  @Uint32()
  external int Backlog;
}

/// {@category Struct}
class RPC_ERROR_ENUM_HANDLE extends Struct {
  @Uint32()
  external int Signature;

  external Pointer CurrentPos;

  external Pointer Head;
}

/// {@category Struct}
class RPC_EXTENDED_ERROR_INFO extends Struct {
  @Uint32()
  external int Version;

  external Pointer<Utf16> ComputerName;

  @Uint32()
  external int ProcessID;

  external _RPC_EXTENDED_ERROR_INFO__u_e__Union u;

  @Uint32()
  external int GeneratingComponent;

  @Uint32()
  external int Status;

  @Uint16()
  external int DetectionLocation;

  @Uint16()
  external int Flags;

  @Int32()
  external int NumberOfParameters;

  @Array(4)
  external Array<RPC_EE_INFO_PARAM> Parameters;
}

/// {@category Struct}
class _RPC_EXTENDED_ERROR_INFO__u_e__Union extends Union {
  external SYSTEMTIME SystemTime;

  external FILETIME FileTime;
}

extension RPC_EXTENDED_ERROR_INFO_Extension on RPC_EXTENDED_ERROR_INFO {
  SYSTEMTIME get SystemTime => this.u.SystemTime;
  set SystemTime(SYSTEMTIME value) => this.u.SystemTime = value;

  FILETIME get FileTime => this.u.FileTime;
  set FileTime(FILETIME value) => this.u.FileTime = value;
}

/// {@category Struct}
class RPC_HTTP_TRANSPORT_CREDENTIALS_V2_ extends Struct {
  external Pointer<SEC_WINNT_AUTH_IDENTITY_> TransportCredentials;

  @Uint32()
  external int Flags;

  @Uint32()
  external int AuthenticationTarget;

  @Uint32()
  external int NumberOfAuthnSchemes;

  external Pointer<Uint32> AuthnSchemes;

  external Pointer<Uint16> ServerCertificateSubject;

  external Pointer<SEC_WINNT_AUTH_IDENTITY_> ProxyCredentials;

  @Uint32()
  external int NumberOfProxyAuthnSchemes;

  external Pointer<Uint32> ProxyAuthnSchemes;
}

/// {@category Struct}
class RPC_HTTP_TRANSPORT_CREDENTIALS_V3_ extends Struct {
  external Pointer TransportCredentials;

  @Uint32()
  external int Flags;

  @Uint32()
  external int AuthenticationTarget;

  @Uint32()
  external int NumberOfAuthnSchemes;

  external Pointer<Uint32> AuthnSchemes;

  external Pointer<Uint16> ServerCertificateSubject;

  external Pointer ProxyCredentials;

  @Uint32()
  external int NumberOfProxyAuthnSchemes;

  external Pointer<Uint32> ProxyAuthnSchemes;
}

/// {@category Struct}
class RPC_HTTP_TRANSPORT_CREDENTIALS_ extends Struct {
  external Pointer<SEC_WINNT_AUTH_IDENTITY_> TransportCredentials;

  @Uint32()
  external int Flags;

  @Uint32()
  external int AuthenticationTarget;

  @Uint32()
  external int NumberOfAuthnSchemes;

  external Pointer<Uint32> AuthnSchemes;

  external Pointer<Uint16> ServerCertificateSubject;
}

/// {@category Struct}
class RPC_IF_ID extends Struct {
  external GUID Uuid;

  @Uint16()
  external int VersMajor;

  @Uint16()
  external int VersMinor;
}

/// {@category Struct}
class RPC_IF_ID_VECTOR extends Struct {
  @Uint32()
  external int Count;

  @Array(1)
  external Array<Pointer<RPC_IF_ID>> IfId;
}

/// {@category Struct}
class RPC_IMPORT_CONTEXT_P extends Struct {
  external Pointer LookupContext;

  external Pointer ProposedHandle;

  external Pointer<RPC_BINDING_VECTOR> Bindings;
}

/// {@category Struct}
class RPC_INTERFACE_TEMPLATE extends Struct {
  @Uint32()
  external int Version;

  external Pointer IfSpec;

  external Pointer<GUID> MgrTypeUuid;

  external Pointer MgrEpv;

  @Uint32()
  external int Flags;

  @Uint32()
  external int MaxCalls;

  @Uint32()
  external int MaxRpcSize;

  external Pointer<NativeFunction<RPC_IF_CALLBACK_FN>> IfCallback;

  external Pointer<UUID_VECTOR> UuidVector;

  external Pointer<Uint16> Annotation;

  external Pointer SecurityDescriptor;
}

/// {@category Struct}
class RPC_MESSAGE extends Struct {
  external Pointer $Handle;

  @Uint32()
  external int DataRepresentation;

  external Pointer Buffer;

  @Uint32()
  external int BufferLength;

  @Uint32()
  external int ProcNum;

  external Pointer<RPC_SYNTAX_IDENTIFIER> TransferSyntax;

  external Pointer RpcInterfaceInformation;

  external Pointer ReservedForRuntime;

  external Pointer ManagerEpv;

  external Pointer ImportContext;

  @Uint32()
  external int RpcFlags;
}

/// {@category Struct}
class RPC_POLICY extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int EndpointFlags;

  @Uint32()
  external int NICFlags;
}

/// {@category Struct}
class RPC_PROTSEQ_ENDPOINT extends Struct {
  external Pointer<Uint8> RpcProtocolSequence;

  external Pointer<Uint8> Endpoint;
}

/// {@category Struct}
class RPC_PROTSEQ_VECTOR extends Struct {
  @Uint32()
  external int Count;

  @Array(1)
  external Array<Pointer<Uint16>> Protseq;
}

/// {@category Struct}
class RPC_SECURITY_QOS extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Capabilities;

  @Uint32()
  external int IdentityTracking;

  @Uint32()
  external int ImpersonationType;
}

/// {@category Struct}
class RPC_SECURITY_QOS_V2_ extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Capabilities;

  @Uint32()
  external int IdentityTracking;

  @Uint32()
  external int ImpersonationType;

  @Uint32()
  external int AdditionalSecurityInfoType;

  external _RPC_SECURITY_QOS_V2_W__u_e__Union u;
}

/// {@category Struct}
class _RPC_SECURITY_QOS_V2_W__u_e__Union extends Union {
  external Pointer<RPC_HTTP_TRANSPORT_CREDENTIALS_> HttpCredentials;
}

extension RPC_SECURITY_QOS_V2_W_Extension on RPC_SECURITY_QOS_V2_ {
  Pointer<RPC_HTTP_TRANSPORT_CREDENTIALS_> get HttpCredentials =>
      this.u.HttpCredentials;
  set HttpCredentials(Pointer<RPC_HTTP_TRANSPORT_CREDENTIALS_> value) =>
      this.u.HttpCredentials = value;
}

/// {@category Struct}
class RPC_SECURITY_QOS_V3_ extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Capabilities;

  @Uint32()
  external int IdentityTracking;

  @Uint32()
  external int ImpersonationType;

  @Uint32()
  external int AdditionalSecurityInfoType;

  external _RPC_SECURITY_QOS_V3_W__u_e__Union u;

  external Pointer Sid;
}

/// {@category Struct}
class _RPC_SECURITY_QOS_V3_W__u_e__Union extends Union {
  external Pointer<RPC_HTTP_TRANSPORT_CREDENTIALS_> HttpCredentials;
}

extension RPC_SECURITY_QOS_V3_W_Extension on RPC_SECURITY_QOS_V3_ {
  Pointer<RPC_HTTP_TRANSPORT_CREDENTIALS_> get HttpCredentials =>
      this.u.HttpCredentials;
  set HttpCredentials(Pointer<RPC_HTTP_TRANSPORT_CREDENTIALS_> value) =>
      this.u.HttpCredentials = value;
}

/// {@category Struct}
class RPC_SECURITY_QOS_V4_ extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Capabilities;

  @Uint32()
  external int IdentityTracking;

  @Uint32()
  external int ImpersonationType;

  @Uint32()
  external int AdditionalSecurityInfoType;

  external _RPC_SECURITY_QOS_V4_W__u_e__Union u;

  external Pointer Sid;

  @Uint32()
  external int EffectiveOnly;
}

/// {@category Struct}
class _RPC_SECURITY_QOS_V4_W__u_e__Union extends Union {
  external Pointer<RPC_HTTP_TRANSPORT_CREDENTIALS_> HttpCredentials;
}

extension RPC_SECURITY_QOS_V4_W_Extension on RPC_SECURITY_QOS_V4_ {
  Pointer<RPC_HTTP_TRANSPORT_CREDENTIALS_> get HttpCredentials =>
      this.u.HttpCredentials;
  set HttpCredentials(Pointer<RPC_HTTP_TRANSPORT_CREDENTIALS_> value) =>
      this.u.HttpCredentials = value;
}

/// {@category Struct}
class RPC_SECURITY_QOS_V5_ extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Capabilities;

  @Uint32()
  external int IdentityTracking;

  @Uint32()
  external int ImpersonationType;

  @Uint32()
  external int AdditionalSecurityInfoType;

  external _RPC_SECURITY_QOS_V5_W__u_e__Union u;

  external Pointer Sid;

  @Uint32()
  external int EffectiveOnly;

  external Pointer ServerSecurityDescriptor;
}

/// {@category Struct}
class _RPC_SECURITY_QOS_V5_W__u_e__Union extends Union {
  external Pointer<RPC_HTTP_TRANSPORT_CREDENTIALS_> HttpCredentials;
}

extension RPC_SECURITY_QOS_V5_W_Extension on RPC_SECURITY_QOS_V5_ {
  Pointer<RPC_HTTP_TRANSPORT_CREDENTIALS_> get HttpCredentials =>
      this.u.HttpCredentials;
  set HttpCredentials(Pointer<RPC_HTTP_TRANSPORT_CREDENTIALS_> value) =>
      this.u.HttpCredentials = value;
}

/// {@category Struct}
class RPC_SEC_CONTEXT_KEY_INFO extends Struct {
  @Uint32()
  external int EncryptAlgorithm;

  @Uint32()
  external int KeySize;

  @Uint32()
  external int SignatureAlgorithm;
}

/// {@category Struct}
class RPC_SERVER_INTERFACE extends Struct {
  @Uint32()
  external int Length;

  external RPC_SYNTAX_IDENTIFIER InterfaceId;

  external RPC_SYNTAX_IDENTIFIER TransferSyntax;

  external Pointer<RPC_DISPATCH_TABLE> DispatchTable;

  @Uint32()
  external int RpcProtseqEndpointCount;

  external Pointer<RPC_PROTSEQ_ENDPOINT> RpcProtseqEndpoint;

  external Pointer DefaultManagerEpv;

  external Pointer InterpreterInfo;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class RPC_STATS_VECTOR extends Struct {
  @Uint32()
  external int Count;

  @Array(1)
  external Array<Uint32> Stats;
}

/// {@category Struct}
class RPC_SYNTAX_IDENTIFIER extends Struct {
  external GUID SyntaxGUID;

  external RPC_VERSION SyntaxVersion;
}

/// {@category Struct}
class RPC_TRANSFER_SYNTAX extends Struct {
  external GUID Uuid;

  @Uint16()
  external int VersMajor;

  @Uint16()
  external int VersMinor;
}

/// {@category Struct}
class RPC_VERSION extends Struct {
  @Uint16()
  external int MajorVersion;

  @Uint16()
  external int MinorVersion;
}

/// {@category Struct}
class SCONTEXT_QUEUE extends Struct {
  @Uint32()
  external int NumberOfObjects;

  external Pointer<Pointer<NDR_SCONTEXT_1>> ArrayOfObjects;
}

/// {@category Struct}
class SEC_WINNT_AUTH_IDENTITY_ extends Struct {
  external Pointer<Uint16> User;

  @Uint32()
  external int UserLength;

  external Pointer<Uint16> Domain;

  @Uint32()
  external int DomainLength;

  external Pointer<Uint16> Password;

  @Uint32()
  external int PasswordLength;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class USER_MARSHAL_CB extends Struct {
  @Uint32()
  external int Flags;

  external Pointer<MIDL_STUB_MESSAGE> pStubMsg;

  external Pointer<Uint8> pReserve;

  @Uint32()
  external int Signature;

  @Int32()
  external int CBType;

  external Pointer<Uint8> pFormat;

  external Pointer<Uint8> pTypeFormat;
}

/// {@category Struct}
class USER_MARSHAL_ROUTINE_QUADRUPLE extends Struct {
  external Pointer<NativeFunction<USER_MARSHAL_SIZING_ROUTINE>> pfnBufferSize;

  external Pointer<NativeFunction<USER_MARSHAL_MARSHALLING_ROUTINE>>
      pfnMarshall;

  external Pointer<NativeFunction<USER_MARSHAL_UNMARSHALLING_ROUTINE>>
      pfnUnmarshall;

  external Pointer<NativeFunction<USER_MARSHAL_FREEING_ROUTINE>> pfnFree;
}

/// {@category Struct}
class UUID_VECTOR extends Struct {
  @Uint32()
  external int Count;

  @Array(1)
  external Array<Pointer<GUID>> Uuid;
}

/// {@category Struct}
class XMIT_ROUTINE_QUINTUPLE extends Struct {
  external Pointer<NativeFunction<XMIT_HELPER_ROUTINE>> pfnTranslateToXmit;

  external Pointer<NativeFunction<XMIT_HELPER_ROUTINE>> pfnTranslateFromXmit;

  external Pointer<NativeFunction<XMIT_HELPER_ROUTINE>> pfnFreeXmit;

  external Pointer<NativeFunction<XMIT_HELPER_ROUTINE>> pfnFreeInst;
}

/// {@category Struct}
class NDR_ASYNC_MESSAGE extends Opaque {}

/// {@category Struct}
class NDR_CORRELATION_INFO extends Opaque {}

/// {@category Struct}
class NDR_PROC_CONTEXT extends Opaque {}

/// {@category Struct}
class NDR_SCONTEXT extends Struct {
  @Array(2)
  external Array<Pointer> pad;

  external Pointer userContext;
}
