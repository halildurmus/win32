// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../networking/winsock/structs.g.dart';
import '../../networkmanagement/qos/structs.g.dart';
import '../../specialTypes.dart'; // -----------------------------------------------------------------------

// qwave.dll
// -----------------------------------------------------------------------
final _qwave = DynamicLibrary.open('qwave.dll');

int QOSAddSocketToFlow(
  int QOSHandle,
  int Socket,
  Pointer<SOCKADDR> DestAddr,
  int TrafficType,
  int Flags,
  Pointer<Uint32> FlowId,
) =>
    _QOSAddSocketToFlow(
      QOSHandle,
      Socket,
      DestAddr,
      TrafficType,
      Flags,
      FlowId,
    );

late final _QOSAddSocketToFlow = _qwave.lookupFunction<
    Int32 Function(
  IntPtr QOSHandle,
  IntPtr Socket,
  Pointer<SOCKADDR> DestAddr,
  Int32 TrafficType,
  Uint32 Flags,
  Pointer<Uint32> FlowId,
),
    int Function(
  int QOSHandle,
  int Socket,
  Pointer<SOCKADDR> DestAddr,
  int TrafficType,
  int Flags,
  Pointer<Uint32> FlowId,
)>('QOSAddSocketToFlow');

int QOSCancel(
  int QOSHandle,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _QOSCancel(
      QOSHandle,
      Overlapped,
    );

late final _QOSCancel = _qwave.lookupFunction<
    Int32 Function(
  IntPtr QOSHandle,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int QOSHandle,
  Pointer<OVERLAPPED> Overlapped,
)>('QOSCancel');

int QOSCloseHandle(
  int QOSHandle,
) =>
    _QOSCloseHandle(
      QOSHandle,
    );

late final _QOSCloseHandle = _qwave.lookupFunction<
    Int32 Function(
  IntPtr QOSHandle,
),
    int Function(
  int QOSHandle,
)>('QOSCloseHandle');

int QOSCreateHandle(
  Pointer<QOS_VERSION> Version,
  Pointer<IntPtr> QOSHandle,
) =>
    _QOSCreateHandle(
      Version,
      QOSHandle,
    );

late final _QOSCreateHandle = _qwave.lookupFunction<
    Int32 Function(
  Pointer<QOS_VERSION> Version,
  Pointer<IntPtr> QOSHandle,
),
    int Function(
  Pointer<QOS_VERSION> Version,
  Pointer<IntPtr> QOSHandle,
)>('QOSCreateHandle');

int QOSEnumerateFlows(
  int QOSHandle,
  Pointer<Uint32> Size,
  Pointer Buffer,
) =>
    _QOSEnumerateFlows(
      QOSHandle,
      Size,
      Buffer,
    );

late final _QOSEnumerateFlows = _qwave.lookupFunction<
    Int32 Function(
  IntPtr QOSHandle,
  Pointer<Uint32> Size,
  Pointer Buffer,
),
    int Function(
  int QOSHandle,
  Pointer<Uint32> Size,
  Pointer Buffer,
)>('QOSEnumerateFlows');

int QOSNotifyFlow(
  int QOSHandle,
  int FlowId,
  int Operation,
  Pointer<Uint32> Size,
  Pointer Buffer,
  int Flags,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _QOSNotifyFlow(
      QOSHandle,
      FlowId,
      Operation,
      Size,
      Buffer,
      Flags,
      Overlapped,
    );

late final _QOSNotifyFlow = _qwave.lookupFunction<
    Int32 Function(
  IntPtr QOSHandle,
  Uint32 FlowId,
  Int32 Operation,
  Pointer<Uint32> Size,
  Pointer Buffer,
  Uint32 Flags,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int QOSHandle,
  int FlowId,
  int Operation,
  Pointer<Uint32> Size,
  Pointer Buffer,
  int Flags,
  Pointer<OVERLAPPED> Overlapped,
)>('QOSNotifyFlow');

int QOSQueryFlow(
  int QOSHandle,
  int FlowId,
  int Operation,
  Pointer<Uint32> Size,
  Pointer Buffer,
  int Flags,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _QOSQueryFlow(
      QOSHandle,
      FlowId,
      Operation,
      Size,
      Buffer,
      Flags,
      Overlapped,
    );

late final _QOSQueryFlow = _qwave.lookupFunction<
    Int32 Function(
  IntPtr QOSHandle,
  Uint32 FlowId,
  Int32 Operation,
  Pointer<Uint32> Size,
  Pointer Buffer,
  Uint32 Flags,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int QOSHandle,
  int FlowId,
  int Operation,
  Pointer<Uint32> Size,
  Pointer Buffer,
  int Flags,
  Pointer<OVERLAPPED> Overlapped,
)>('QOSQueryFlow');

int QOSRemoveSocketFromFlow(
  int QOSHandle,
  int Socket,
  int FlowId,
  int Flags,
) =>
    _QOSRemoveSocketFromFlow(
      QOSHandle,
      Socket,
      FlowId,
      Flags,
    );

late final _QOSRemoveSocketFromFlow = _qwave.lookupFunction<
    Int32 Function(
  IntPtr QOSHandle,
  IntPtr Socket,
  Uint32 FlowId,
  Uint32 Flags,
),
    int Function(
  int QOSHandle,
  int Socket,
  int FlowId,
  int Flags,
)>('QOSRemoveSocketFromFlow');

int QOSSetFlow(
  int QOSHandle,
  int FlowId,
  int Operation,
  int Size,
  Pointer Buffer,
  int Flags,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _QOSSetFlow(
      QOSHandle,
      FlowId,
      Operation,
      Size,
      Buffer,
      Flags,
      Overlapped,
    );

late final _QOSSetFlow = _qwave.lookupFunction<
    Int32 Function(
  IntPtr QOSHandle,
  Uint32 FlowId,
  Int32 Operation,
  Uint32 Size,
  Pointer Buffer,
  Uint32 Flags,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int QOSHandle,
  int FlowId,
  int Operation,
  int Size,
  Pointer Buffer,
  int Flags,
  Pointer<OVERLAPPED> Overlapped,
)>('QOSSetFlow');

int QOSStartTrackingClient(
  int QOSHandle,
  Pointer<SOCKADDR> DestAddr,
  int Flags,
) =>
    _QOSStartTrackingClient(
      QOSHandle,
      DestAddr,
      Flags,
    );

late final _QOSStartTrackingClient = _qwave.lookupFunction<
    Int32 Function(
  IntPtr QOSHandle,
  Pointer<SOCKADDR> DestAddr,
  Uint32 Flags,
),
    int Function(
  int QOSHandle,
  Pointer<SOCKADDR> DestAddr,
  int Flags,
)>('QOSStartTrackingClient');

int QOSStopTrackingClient(
  int QOSHandle,
  Pointer<SOCKADDR> DestAddr,
  int Flags,
) =>
    _QOSStopTrackingClient(
      QOSHandle,
      DestAddr,
      Flags,
    );

late final _QOSStopTrackingClient = _qwave.lookupFunction<
    Int32 Function(
  IntPtr QOSHandle,
  Pointer<SOCKADDR> DestAddr,
  Uint32 Flags,
),
    int Function(
  int QOSHandle,
  Pointer<SOCKADDR> DestAddr,
  int Flags,
)>('QOSStopTrackingClient');

// -----------------------------------------------------------------------
// traffic.dll
// -----------------------------------------------------------------------
final _traffic = DynamicLibrary.open('traffic.dll');

int TcAddFilter(
  int FlowHandle,
  Pointer<TC_GEN_FILTER> pGenericFilter,
  Pointer<IntPtr> pFilterHandle,
) =>
    _TcAddFilter(
      FlowHandle,
      pGenericFilter,
      pFilterHandle,
    );

late final _TcAddFilter = _traffic.lookupFunction<
    Uint32 Function(
  IntPtr FlowHandle,
  Pointer<TC_GEN_FILTER> pGenericFilter,
  Pointer<IntPtr> pFilterHandle,
),
    int Function(
  int FlowHandle,
  Pointer<TC_GEN_FILTER> pGenericFilter,
  Pointer<IntPtr> pFilterHandle,
)>('TcAddFilter');

int TcAddFlow(
  int IfcHandle,
  int ClFlowCtx,
  int Flags,
  Pointer<TC_GEN_FLO> pGenericFlow,
  Pointer<IntPtr> pFlowHandle,
) =>
    _TcAddFlow(
      IfcHandle,
      ClFlowCtx,
      Flags,
      pGenericFlow,
      pFlowHandle,
    );

late final _TcAddFlow = _traffic.lookupFunction<
    Uint32 Function(
  IntPtr IfcHandle,
  IntPtr ClFlowCtx,
  Uint32 Flags,
  Pointer<TC_GEN_FLO> pGenericFlow,
  Pointer<IntPtr> pFlowHandle,
),
    int Function(
  int IfcHandle,
  int ClFlowCtx,
  int Flags,
  Pointer<TC_GEN_FLO> pGenericFlow,
  Pointer<IntPtr> pFlowHandle,
)>('TcAddFlow');

int TcCloseInterface(
  int IfcHandle,
) =>
    _TcCloseInterface(
      IfcHandle,
    );

late final _TcCloseInterface = _traffic.lookupFunction<
    Uint32 Function(
  IntPtr IfcHandle,
),
    int Function(
  int IfcHandle,
)>('TcCloseInterface');

int TcDeleteFilter(
  int FilterHandle,
) =>
    _TcDeleteFilter(
      FilterHandle,
    );

late final _TcDeleteFilter = _traffic.lookupFunction<
    Uint32 Function(
  IntPtr FilterHandle,
),
    int Function(
  int FilterHandle,
)>('TcDeleteFilter');

int TcDeleteFlow(
  int FlowHandle,
) =>
    _TcDeleteFlow(
      FlowHandle,
    );

late final _TcDeleteFlow = _traffic.lookupFunction<
    Uint32 Function(
  IntPtr FlowHandle,
),
    int Function(
  int FlowHandle,
)>('TcDeleteFlow');

int TcDeregisterClient(
  int ClientHandle,
) =>
    _TcDeregisterClient(
      ClientHandle,
    );

late final _TcDeregisterClient = _traffic.lookupFunction<
    Uint32 Function(
  IntPtr ClientHandle,
),
    int Function(
  int ClientHandle,
)>('TcDeregisterClient');

int TcEnumerateFlows(
  int IfcHandle,
  Pointer<IntPtr> pEnumHandle,
  Pointer<Uint32> pFlowCount,
  Pointer<Uint32> pBufSize,
  Pointer<ENUMERATION_BUFFER> Buffer,
) =>
    _TcEnumerateFlows(
      IfcHandle,
      pEnumHandle,
      pFlowCount,
      pBufSize,
      Buffer,
    );

late final _TcEnumerateFlows = _traffic.lookupFunction<
    Uint32 Function(
  IntPtr IfcHandle,
  Pointer<IntPtr> pEnumHandle,
  Pointer<Uint32> pFlowCount,
  Pointer<Uint32> pBufSize,
  Pointer<ENUMERATION_BUFFER> Buffer,
),
    int Function(
  int IfcHandle,
  Pointer<IntPtr> pEnumHandle,
  Pointer<Uint32> pFlowCount,
  Pointer<Uint32> pBufSize,
  Pointer<ENUMERATION_BUFFER> Buffer,
)>('TcEnumerateFlows');

int TcEnumerateInterfaces(
  int ClientHandle,
  Pointer<Uint32> pBufferSize,
  Pointer<TC_IFC_DESCRIPTOR> InterfaceBuffer,
) =>
    _TcEnumerateInterfaces(
      ClientHandle,
      pBufferSize,
      InterfaceBuffer,
    );

late final _TcEnumerateInterfaces = _traffic.lookupFunction<
    Uint32 Function(
  IntPtr ClientHandle,
  Pointer<Uint32> pBufferSize,
  Pointer<TC_IFC_DESCRIPTOR> InterfaceBuffer,
),
    int Function(
  int ClientHandle,
  Pointer<Uint32> pBufferSize,
  Pointer<TC_IFC_DESCRIPTOR> InterfaceBuffer,
)>('TcEnumerateInterfaces');

int TcGetFlowName(
  int FlowHandle,
  int StrSize,
  Pointer<Utf16> pFlowName,
) =>
    _TcGetFlowName(
      FlowHandle,
      StrSize,
      pFlowName,
    );

late final _TcGetFlowName = _traffic.lookupFunction<
    Uint32 Function(
  IntPtr FlowHandle,
  Uint32 StrSize,
  Pointer<Utf16> pFlowName,
),
    int Function(
  int FlowHandle,
  int StrSize,
  Pointer<Utf16> pFlowName,
)>('TcGetFlowNameW');

int TcModifyFlow(
  int FlowHandle,
  Pointer<TC_GEN_FLO> pGenericFlow,
) =>
    _TcModifyFlow(
      FlowHandle,
      pGenericFlow,
    );

late final _TcModifyFlow = _traffic.lookupFunction<
    Uint32 Function(
  IntPtr FlowHandle,
  Pointer<TC_GEN_FLO> pGenericFlow,
),
    int Function(
  int FlowHandle,
  Pointer<TC_GEN_FLO> pGenericFlow,
)>('TcModifyFlow');

int TcOpenInterface(
  Pointer<Utf16> pInterfaceName,
  int ClientHandle,
  int ClIfcCtx,
  Pointer<IntPtr> pIfcHandle,
) =>
    _TcOpenInterface(
      pInterfaceName,
      ClientHandle,
      ClIfcCtx,
      pIfcHandle,
    );

late final _TcOpenInterface = _traffic.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pInterfaceName,
  IntPtr ClientHandle,
  IntPtr ClIfcCtx,
  Pointer<IntPtr> pIfcHandle,
),
    int Function(
  Pointer<Utf16> pInterfaceName,
  int ClientHandle,
  int ClIfcCtx,
  Pointer<IntPtr> pIfcHandle,
)>('TcOpenInterfaceW');

int TcQueryFlow(
  Pointer<Utf16> pFlowName,
  Pointer<GUID> pGuidParam,
  Pointer<Uint32> pBufferSize,
  Pointer Buffer,
) =>
    _TcQueryFlow(
      pFlowName,
      pGuidParam,
      pBufferSize,
      Buffer,
    );

late final _TcQueryFlow = _traffic.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pFlowName,
  Pointer<GUID> pGuidParam,
  Pointer<Uint32> pBufferSize,
  Pointer Buffer,
),
    int Function(
  Pointer<Utf16> pFlowName,
  Pointer<GUID> pGuidParam,
  Pointer<Uint32> pBufferSize,
  Pointer Buffer,
)>('TcQueryFlowW');

int TcQueryInterface(
  int IfcHandle,
  Pointer<GUID> pGuidParam,
  int NotifyChange,
  Pointer<Uint32> pBufferSize,
  Pointer Buffer,
) =>
    _TcQueryInterface(
      IfcHandle,
      pGuidParam,
      NotifyChange,
      pBufferSize,
      Buffer,
    );

late final _TcQueryInterface = _traffic.lookupFunction<
    Uint32 Function(
  IntPtr IfcHandle,
  Pointer<GUID> pGuidParam,
  Uint8 NotifyChange,
  Pointer<Uint32> pBufferSize,
  Pointer Buffer,
),
    int Function(
  int IfcHandle,
  Pointer<GUID> pGuidParam,
  int NotifyChange,
  Pointer<Uint32> pBufferSize,
  Pointer Buffer,
)>('TcQueryInterface');

int TcRegisterClient(
  int TciVersion,
  int ClRegCtx,
  Pointer<TCI_CLIENT_FUNC_LIST> ClientHandlerList,
  Pointer<IntPtr> pClientHandle,
) =>
    _TcRegisterClient(
      TciVersion,
      ClRegCtx,
      ClientHandlerList,
      pClientHandle,
    );

late final _TcRegisterClient = _traffic.lookupFunction<
    Uint32 Function(
  Uint32 TciVersion,
  IntPtr ClRegCtx,
  Pointer<TCI_CLIENT_FUNC_LIST> ClientHandlerList,
  Pointer<IntPtr> pClientHandle,
),
    int Function(
  int TciVersion,
  int ClRegCtx,
  Pointer<TCI_CLIENT_FUNC_LIST> ClientHandlerList,
  Pointer<IntPtr> pClientHandle,
)>('TcRegisterClient');

int TcSetFlow(
  Pointer<Utf16> pFlowName,
  Pointer<GUID> pGuidParam,
  int BufferSize,
  Pointer Buffer,
) =>
    _TcSetFlow(
      pFlowName,
      pGuidParam,
      BufferSize,
      Buffer,
    );

late final _TcSetFlow = _traffic.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pFlowName,
  Pointer<GUID> pGuidParam,
  Uint32 BufferSize,
  Pointer Buffer,
),
    int Function(
  Pointer<Utf16> pFlowName,
  Pointer<GUID> pGuidParam,
  int BufferSize,
  Pointer Buffer,
)>('TcSetFlowW');

int TcSetInterface(
  int IfcHandle,
  Pointer<GUID> pGuidParam,
  int BufferSize,
  Pointer Buffer,
) =>
    _TcSetInterface(
      IfcHandle,
      pGuidParam,
      BufferSize,
      Buffer,
    );

late final _TcSetInterface = _traffic.lookupFunction<
    Uint32 Function(
  IntPtr IfcHandle,
  Pointer<GUID> pGuidParam,
  Uint32 BufferSize,
  Pointer Buffer,
),
    int Function(
  int IfcHandle,
  Pointer<GUID> pGuidParam,
  int BufferSize,
  Pointer Buffer,
)>('TcSetInterface');
