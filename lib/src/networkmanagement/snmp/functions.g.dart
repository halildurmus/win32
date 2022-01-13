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
import '../../networkmanagement/snmp/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/snmp/callbacks.g.dart'; // -----------------------------------------------------------------------

// snmpapi.dll
// -----------------------------------------------------------------------
final _snmpapi = DynamicLibrary.open('snmpapi.dll');

int SnmpSvcGetUptime() => _SnmpSvcGetUptime();

late final _SnmpSvcGetUptime = _snmpapi
    .lookupFunction<Uint32 Function(), int Function()>('SnmpSvcGetUptime');

void SnmpSvcSetLogLevel(
  int nLogLevel,
) =>
    _SnmpSvcSetLogLevel(
      nLogLevel,
    );

late final _SnmpSvcSetLogLevel = _snmpapi.lookupFunction<
    Void Function(
  Uint32 nLogLevel,
),
    void Function(
  int nLogLevel,
)>('SnmpSvcSetLogLevel');

void SnmpSvcSetLogType(
  int nLogType,
) =>
    _SnmpSvcSetLogType(
      nLogType,
    );

late final _SnmpSvcSetLogType = _snmpapi.lookupFunction<
    Void Function(
  Uint32 nLogType,
),
    void Function(
  int nLogType,
)>('SnmpSvcSetLogType');

int SnmpUtilAsnAnyCpy(
  Pointer<AsnAny> pAnyDst,
  Pointer<AsnAny> pAnySrc,
) =>
    _SnmpUtilAsnAnyCpy(
      pAnyDst,
      pAnySrc,
    );

late final _SnmpUtilAsnAnyCpy = _snmpapi.lookupFunction<
    Int32 Function(
  Pointer<AsnAny> pAnyDst,
  Pointer<AsnAny> pAnySrc,
),
    int Function(
  Pointer<AsnAny> pAnyDst,
  Pointer<AsnAny> pAnySrc,
)>('SnmpUtilAsnAnyCpy');

void SnmpUtilAsnAnyFree(
  Pointer<AsnAny> pAny,
) =>
    _SnmpUtilAsnAnyFree(
      pAny,
    );

late final _SnmpUtilAsnAnyFree = _snmpapi.lookupFunction<
    Void Function(
  Pointer<AsnAny> pAny,
),
    void Function(
  Pointer<AsnAny> pAny,
)>('SnmpUtilAsnAnyFree');

void SnmpUtilDbgPrint(
  int nLogLevel,
  Pointer<Utf8> szFormat,
) =>
    _SnmpUtilDbgPrint(
      nLogLevel,
      szFormat,
    );

late final _SnmpUtilDbgPrint = _snmpapi.lookupFunction<
    Void Function(
  Uint32 nLogLevel,
  Pointer<Utf8> szFormat,
),
    void Function(
  int nLogLevel,
  Pointer<Utf8> szFormat,
)>('SnmpUtilDbgPrint');

Pointer SnmpUtilMemAlloc(
  int nBytes,
) =>
    _SnmpUtilMemAlloc(
      nBytes,
    );

late final _SnmpUtilMemAlloc = _snmpapi.lookupFunction<
    Pointer Function(
  Uint32 nBytes,
),
    Pointer Function(
  int nBytes,
)>('SnmpUtilMemAlloc');

void SnmpUtilMemFree(
  Pointer pMem,
) =>
    _SnmpUtilMemFree(
      pMem,
    );

late final _SnmpUtilMemFree = _snmpapi.lookupFunction<
    Void Function(
  Pointer pMem,
),
    void Function(
  Pointer pMem,
)>('SnmpUtilMemFree');

Pointer SnmpUtilMemReAlloc(
  Pointer pMem,
  int nBytes,
) =>
    _SnmpUtilMemReAlloc(
      pMem,
      nBytes,
    );

late final _SnmpUtilMemReAlloc = _snmpapi.lookupFunction<
    Pointer Function(
  Pointer pMem,
  Uint32 nBytes,
),
    Pointer Function(
  Pointer pMem,
  int nBytes,
)>('SnmpUtilMemReAlloc');

int SnmpUtilOctetsCmp(
  Pointer<AsnOctetString> pOctets1,
  Pointer<AsnOctetString> pOctets2,
) =>
    _SnmpUtilOctetsCmp(
      pOctets1,
      pOctets2,
    );

late final _SnmpUtilOctetsCmp = _snmpapi.lookupFunction<
    Int32 Function(
  Pointer<AsnOctetString> pOctets1,
  Pointer<AsnOctetString> pOctets2,
),
    int Function(
  Pointer<AsnOctetString> pOctets1,
  Pointer<AsnOctetString> pOctets2,
)>('SnmpUtilOctetsCmp');

int SnmpUtilOctetsCpy(
  Pointer<AsnOctetString> pOctetsDst,
  Pointer<AsnOctetString> pOctetsSrc,
) =>
    _SnmpUtilOctetsCpy(
      pOctetsDst,
      pOctetsSrc,
    );

late final _SnmpUtilOctetsCpy = _snmpapi.lookupFunction<
    Int32 Function(
  Pointer<AsnOctetString> pOctetsDst,
  Pointer<AsnOctetString> pOctetsSrc,
),
    int Function(
  Pointer<AsnOctetString> pOctetsDst,
  Pointer<AsnOctetString> pOctetsSrc,
)>('SnmpUtilOctetsCpy');

void SnmpUtilOctetsFree(
  Pointer<AsnOctetString> pOctets,
) =>
    _SnmpUtilOctetsFree(
      pOctets,
    );

late final _SnmpUtilOctetsFree = _snmpapi.lookupFunction<
    Void Function(
  Pointer<AsnOctetString> pOctets,
),
    void Function(
  Pointer<AsnOctetString> pOctets,
)>('SnmpUtilOctetsFree');

int SnmpUtilOctetsNCmp(
  Pointer<AsnOctetString> pOctets1,
  Pointer<AsnOctetString> pOctets2,
  int nChars,
) =>
    _SnmpUtilOctetsNCmp(
      pOctets1,
      pOctets2,
      nChars,
    );

late final _SnmpUtilOctetsNCmp = _snmpapi.lookupFunction<
    Int32 Function(
  Pointer<AsnOctetString> pOctets1,
  Pointer<AsnOctetString> pOctets2,
  Uint32 nChars,
),
    int Function(
  Pointer<AsnOctetString> pOctets1,
  Pointer<AsnOctetString> pOctets2,
  int nChars,
)>('SnmpUtilOctetsNCmp');

int SnmpUtilOidAppend(
  Pointer<AsnObjectIdentifier> pOidDst,
  Pointer<AsnObjectIdentifier> pOidSrc,
) =>
    _SnmpUtilOidAppend(
      pOidDst,
      pOidSrc,
    );

late final _SnmpUtilOidAppend = _snmpapi.lookupFunction<
    Int32 Function(
  Pointer<AsnObjectIdentifier> pOidDst,
  Pointer<AsnObjectIdentifier> pOidSrc,
),
    int Function(
  Pointer<AsnObjectIdentifier> pOidDst,
  Pointer<AsnObjectIdentifier> pOidSrc,
)>('SnmpUtilOidAppend');

int SnmpUtilOidCmp(
  Pointer<AsnObjectIdentifier> pOid1,
  Pointer<AsnObjectIdentifier> pOid2,
) =>
    _SnmpUtilOidCmp(
      pOid1,
      pOid2,
    );

late final _SnmpUtilOidCmp = _snmpapi.lookupFunction<
    Int32 Function(
  Pointer<AsnObjectIdentifier> pOid1,
  Pointer<AsnObjectIdentifier> pOid2,
),
    int Function(
  Pointer<AsnObjectIdentifier> pOid1,
  Pointer<AsnObjectIdentifier> pOid2,
)>('SnmpUtilOidCmp');

int SnmpUtilOidCpy(
  Pointer<AsnObjectIdentifier> pOidDst,
  Pointer<AsnObjectIdentifier> pOidSrc,
) =>
    _SnmpUtilOidCpy(
      pOidDst,
      pOidSrc,
    );

late final _SnmpUtilOidCpy = _snmpapi.lookupFunction<
    Int32 Function(
  Pointer<AsnObjectIdentifier> pOidDst,
  Pointer<AsnObjectIdentifier> pOidSrc,
),
    int Function(
  Pointer<AsnObjectIdentifier> pOidDst,
  Pointer<AsnObjectIdentifier> pOidSrc,
)>('SnmpUtilOidCpy');

void SnmpUtilOidFree(
  Pointer<AsnObjectIdentifier> pOid,
) =>
    _SnmpUtilOidFree(
      pOid,
    );

late final _SnmpUtilOidFree = _snmpapi.lookupFunction<
    Void Function(
  Pointer<AsnObjectIdentifier> pOid,
),
    void Function(
  Pointer<AsnObjectIdentifier> pOid,
)>('SnmpUtilOidFree');

int SnmpUtilOidNCmp(
  Pointer<AsnObjectIdentifier> pOid1,
  Pointer<AsnObjectIdentifier> pOid2,
  int nSubIds,
) =>
    _SnmpUtilOidNCmp(
      pOid1,
      pOid2,
      nSubIds,
    );

late final _SnmpUtilOidNCmp = _snmpapi.lookupFunction<
    Int32 Function(
  Pointer<AsnObjectIdentifier> pOid1,
  Pointer<AsnObjectIdentifier> pOid2,
  Uint32 nSubIds,
),
    int Function(
  Pointer<AsnObjectIdentifier> pOid1,
  Pointer<AsnObjectIdentifier> pOid2,
  int nSubIds,
)>('SnmpUtilOidNCmp');

void SnmpUtilPrintAsnAny(
  Pointer<AsnAny> pAny,
) =>
    _SnmpUtilPrintAsnAny(
      pAny,
    );

late final _SnmpUtilPrintAsnAny = _snmpapi.lookupFunction<
    Void Function(
  Pointer<AsnAny> pAny,
),
    void Function(
  Pointer<AsnAny> pAny,
)>('SnmpUtilPrintAsnAny');

void SnmpUtilPrintOid(
  Pointer<AsnObjectIdentifier> Oid,
) =>
    _SnmpUtilPrintOid(
      Oid,
    );

late final _SnmpUtilPrintOid = _snmpapi.lookupFunction<
    Void Function(
  Pointer<AsnObjectIdentifier> Oid,
),
    void Function(
  Pointer<AsnObjectIdentifier> Oid,
)>('SnmpUtilPrintOid');

int SnmpUtilVarBindCpy(
  Pointer<SnmpVarBind> pVbDst,
  Pointer<SnmpVarBind> pVbSrc,
) =>
    _SnmpUtilVarBindCpy(
      pVbDst,
      pVbSrc,
    );

late final _SnmpUtilVarBindCpy = _snmpapi.lookupFunction<
    Int32 Function(
  Pointer<SnmpVarBind> pVbDst,
  Pointer<SnmpVarBind> pVbSrc,
),
    int Function(
  Pointer<SnmpVarBind> pVbDst,
  Pointer<SnmpVarBind> pVbSrc,
)>('SnmpUtilVarBindCpy');

void SnmpUtilVarBindFree(
  Pointer<SnmpVarBind> pVb,
) =>
    _SnmpUtilVarBindFree(
      pVb,
    );

late final _SnmpUtilVarBindFree = _snmpapi.lookupFunction<
    Void Function(
  Pointer<SnmpVarBind> pVb,
),
    void Function(
  Pointer<SnmpVarBind> pVb,
)>('SnmpUtilVarBindFree');

int SnmpUtilVarBindListCpy(
  Pointer<SnmpVarBindList> pVblDst,
  Pointer<SnmpVarBindList> pVblSrc,
) =>
    _SnmpUtilVarBindListCpy(
      pVblDst,
      pVblSrc,
    );

late final _SnmpUtilVarBindListCpy = _snmpapi.lookupFunction<
    Int32 Function(
  Pointer<SnmpVarBindList> pVblDst,
  Pointer<SnmpVarBindList> pVblSrc,
),
    int Function(
  Pointer<SnmpVarBindList> pVblDst,
  Pointer<SnmpVarBindList> pVblSrc,
)>('SnmpUtilVarBindListCpy');

void SnmpUtilVarBindListFree(
  Pointer<SnmpVarBindList> pVbl,
) =>
    _SnmpUtilVarBindListFree(
      pVbl,
    );

late final _SnmpUtilVarBindListFree = _snmpapi.lookupFunction<
    Void Function(
  Pointer<SnmpVarBindList> pVbl,
),
    void Function(
  Pointer<SnmpVarBindList> pVbl,
)>('SnmpUtilVarBindListFree');

// -----------------------------------------------------------------------
// mgmtapi.dll
// -----------------------------------------------------------------------
final _mgmtapi = DynamicLibrary.open('mgmtapi.dll');

int SnmpMgrClose(
  Pointer session,
) =>
    _SnmpMgrClose(
      session,
    );

late final _SnmpMgrClose = _mgmtapi.lookupFunction<
    Int32 Function(
  Pointer session,
),
    int Function(
  Pointer session,
)>('SnmpMgrClose');

int SnmpMgrCtl(
  Pointer session,
  int dwCtlCode,
  Pointer lpvInBuffer,
  int cbInBuffer,
  Pointer lpvOUTBuffer,
  int cbOUTBuffer,
  Pointer<Uint32> lpcbBytesReturned,
) =>
    _SnmpMgrCtl(
      session,
      dwCtlCode,
      lpvInBuffer,
      cbInBuffer,
      lpvOUTBuffer,
      cbOUTBuffer,
      lpcbBytesReturned,
    );

late final _SnmpMgrCtl = _mgmtapi.lookupFunction<
    Int32 Function(
  Pointer session,
  Uint32 dwCtlCode,
  Pointer lpvInBuffer,
  Uint32 cbInBuffer,
  Pointer lpvOUTBuffer,
  Uint32 cbOUTBuffer,
  Pointer<Uint32> lpcbBytesReturned,
),
    int Function(
  Pointer session,
  int dwCtlCode,
  Pointer lpvInBuffer,
  int cbInBuffer,
  Pointer lpvOUTBuffer,
  int cbOUTBuffer,
  Pointer<Uint32> lpcbBytesReturned,
)>('SnmpMgrCtl');

int SnmpMgrGetTrap(
  Pointer<AsnObjectIdentifier> enterprise,
  Pointer<AsnOctetString> IPAddress,
  Pointer<Uint32> genericTrap,
  Pointer<Int32> specificTrap,
  Pointer<Uint32> timeStamp,
  Pointer<SnmpVarBindList> variableBindings,
) =>
    _SnmpMgrGetTrap(
      enterprise,
      IPAddress,
      genericTrap,
      specificTrap,
      timeStamp,
      variableBindings,
    );

late final _SnmpMgrGetTrap = _mgmtapi.lookupFunction<
    Int32 Function(
  Pointer<AsnObjectIdentifier> enterprise,
  Pointer<AsnOctetString> IPAddress,
  Pointer<Uint32> genericTrap,
  Pointer<Int32> specificTrap,
  Pointer<Uint32> timeStamp,
  Pointer<SnmpVarBindList> variableBindings,
),
    int Function(
  Pointer<AsnObjectIdentifier> enterprise,
  Pointer<AsnOctetString> IPAddress,
  Pointer<Uint32> genericTrap,
  Pointer<Int32> specificTrap,
  Pointer<Uint32> timeStamp,
  Pointer<SnmpVarBindList> variableBindings,
)>('SnmpMgrGetTrap');

int SnmpMgrGetTrapEx(
  Pointer<AsnObjectIdentifier> enterprise,
  Pointer<AsnOctetString> agentAddress,
  Pointer<AsnOctetString> sourceAddress,
  Pointer<Uint32> genericTrap,
  Pointer<Int32> specificTrap,
  Pointer<AsnOctetString> community,
  Pointer<Uint32> timeStamp,
  Pointer<SnmpVarBindList> variableBindings,
) =>
    _SnmpMgrGetTrapEx(
      enterprise,
      agentAddress,
      sourceAddress,
      genericTrap,
      specificTrap,
      community,
      timeStamp,
      variableBindings,
    );

late final _SnmpMgrGetTrapEx = _mgmtapi.lookupFunction<
    Int32 Function(
  Pointer<AsnObjectIdentifier> enterprise,
  Pointer<AsnOctetString> agentAddress,
  Pointer<AsnOctetString> sourceAddress,
  Pointer<Uint32> genericTrap,
  Pointer<Int32> specificTrap,
  Pointer<AsnOctetString> community,
  Pointer<Uint32> timeStamp,
  Pointer<SnmpVarBindList> variableBindings,
),
    int Function(
  Pointer<AsnObjectIdentifier> enterprise,
  Pointer<AsnOctetString> agentAddress,
  Pointer<AsnOctetString> sourceAddress,
  Pointer<Uint32> genericTrap,
  Pointer<Int32> specificTrap,
  Pointer<AsnOctetString> community,
  Pointer<Uint32> timeStamp,
  Pointer<SnmpVarBindList> variableBindings,
)>('SnmpMgrGetTrapEx');

int SnmpMgrOidToStr(
  Pointer<AsnObjectIdentifier> oid,
  Pointer<Pointer<Utf8>> string,
) =>
    _SnmpMgrOidToStr(
      oid,
      string,
    );

late final _SnmpMgrOidToStr = _mgmtapi.lookupFunction<
    Int32 Function(
  Pointer<AsnObjectIdentifier> oid,
  Pointer<Pointer<Utf8>> string,
),
    int Function(
  Pointer<AsnObjectIdentifier> oid,
  Pointer<Pointer<Utf8>> string,
)>('SnmpMgrOidToStr');

Pointer SnmpMgrOpen(
  Pointer<Utf8> lpAgentAddress,
  Pointer<Utf8> lpAgentCommunity,
  int nTimeOut,
  int nRetries,
) =>
    _SnmpMgrOpen(
      lpAgentAddress,
      lpAgentCommunity,
      nTimeOut,
      nRetries,
    );

late final _SnmpMgrOpen = _mgmtapi.lookupFunction<
    Pointer Function(
  Pointer<Utf8> lpAgentAddress,
  Pointer<Utf8> lpAgentCommunity,
  Int32 nTimeOut,
  Int32 nRetries,
),
    Pointer Function(
  Pointer<Utf8> lpAgentAddress,
  Pointer<Utf8> lpAgentCommunity,
  int nTimeOut,
  int nRetries,
)>('SnmpMgrOpen');

int SnmpMgrRequest(
  Pointer session,
  int requestType,
  Pointer<SnmpVarBindList> variableBindings,
  Pointer<Uint32> errorStatus,
  Pointer<Int32> errorIndex,
) =>
    _SnmpMgrRequest(
      session,
      requestType,
      variableBindings,
      errorStatus,
      errorIndex,
    );

late final _SnmpMgrRequest = _mgmtapi.lookupFunction<
    Int32 Function(
  Pointer session,
  Uint8 requestType,
  Pointer<SnmpVarBindList> variableBindings,
  Pointer<Uint32> errorStatus,
  Pointer<Int32> errorIndex,
),
    int Function(
  Pointer session,
  int requestType,
  Pointer<SnmpVarBindList> variableBindings,
  Pointer<Uint32> errorStatus,
  Pointer<Int32> errorIndex,
)>('SnmpMgrRequest');

int SnmpMgrStrToOid(
  Pointer<Utf8> string,
  Pointer<AsnObjectIdentifier> oid,
) =>
    _SnmpMgrStrToOid(
      string,
      oid,
    );

late final _SnmpMgrStrToOid = _mgmtapi.lookupFunction<
    Int32 Function(
  Pointer<Utf8> string,
  Pointer<AsnObjectIdentifier> oid,
),
    int Function(
  Pointer<Utf8> string,
  Pointer<AsnObjectIdentifier> oid,
)>('SnmpMgrStrToOid');

int SnmpMgrTrapListen(
  Pointer<IntPtr> phTrapAvailable,
) =>
    _SnmpMgrTrapListen(
      phTrapAvailable,
    );

late final _SnmpMgrTrapListen = _mgmtapi.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> phTrapAvailable,
),
    int Function(
  Pointer<IntPtr> phTrapAvailable,
)>('SnmpMgrTrapListen');

// -----------------------------------------------------------------------
// wsnmp32.dll
// -----------------------------------------------------------------------
final _wsnmp32 = DynamicLibrary.open('wsnmp32.dll');

int SnmpCancelMsg(
  int session,
  int reqId,
) =>
    _SnmpCancelMsg(
      session,
      reqId,
    );

late final _SnmpCancelMsg = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr session,
  Int32 reqId,
),
    int Function(
  int session,
  int reqId,
)>('SnmpCancelMsg');

int SnmpCleanup() => _SnmpCleanup();

late final _SnmpCleanup =
    _wsnmp32.lookupFunction<Uint32 Function(), int Function()>('SnmpCleanup');

int SnmpCleanupEx() => _SnmpCleanupEx();

late final _SnmpCleanupEx =
    _wsnmp32.lookupFunction<Uint32 Function(), int Function()>('SnmpCleanupEx');

int SnmpClose(
  int session,
) =>
    _SnmpClose(
      session,
    );

late final _SnmpClose = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr session,
),
    int Function(
  int session,
)>('SnmpClose');

int SnmpContextToStr(
  int context,
  Pointer<smiOCTETS> string,
) =>
    _SnmpContextToStr(
      context,
      string,
    );

late final _SnmpContextToStr = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr context,
  Pointer<smiOCTETS> string,
),
    int Function(
  int context,
  Pointer<smiOCTETS> string,
)>('SnmpContextToStr');

int SnmpCountVbl(
  int vbl,
) =>
    _SnmpCountVbl(
      vbl,
    );

late final _SnmpCountVbl = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr vbl,
),
    int Function(
  int vbl,
)>('SnmpCountVbl');

int SnmpCreatePdu(
  int session,
  int PDU_type,
  int request_id,
  int error_status,
  int error_index,
  int varbindlist,
) =>
    _SnmpCreatePdu(
      session,
      PDU_type,
      request_id,
      error_status,
      error_index,
      varbindlist,
    );

late final _SnmpCreatePdu = _wsnmp32.lookupFunction<
    IntPtr Function(
  IntPtr session,
  Uint32 PDU_type,
  Int32 request_id,
  Int32 error_status,
  Int32 error_index,
  IntPtr varbindlist,
),
    int Function(
  int session,
  int PDU_type,
  int request_id,
  int error_status,
  int error_index,
  int varbindlist,
)>('SnmpCreatePdu');

int SnmpCreateSession(
  int hWnd,
  int wMsg,
  Pointer<NativeFunction<SNMPAPI_CALLBACK>> fCallBack,
  Pointer lpClientData,
) =>
    _SnmpCreateSession(
      hWnd,
      wMsg,
      fCallBack,
      lpClientData,
    );

late final _SnmpCreateSession = _wsnmp32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Uint32 wMsg,
  Pointer<NativeFunction<SNMPAPI_CALLBACK>> fCallBack,
  Pointer lpClientData,
),
    int Function(
  int hWnd,
  int wMsg,
  Pointer<NativeFunction<SNMPAPI_CALLBACK>> fCallBack,
  Pointer lpClientData,
)>('SnmpCreateSession');

int SnmpCreateVbl(
  int session,
  Pointer<smiOID> name,
  Pointer<smiVALUE> value,
) =>
    _SnmpCreateVbl(
      session,
      name,
      value,
    );

late final _SnmpCreateVbl = _wsnmp32.lookupFunction<
    IntPtr Function(
  IntPtr session,
  Pointer<smiOID> name,
  Pointer<smiVALUE> value,
),
    int Function(
  int session,
  Pointer<smiOID> name,
  Pointer<smiVALUE> value,
)>('SnmpCreateVbl');

int SnmpDecodeMsg(
  int session,
  Pointer<IntPtr> srcEntity,
  Pointer<IntPtr> dstEntity,
  Pointer<IntPtr> context,
  Pointer<IntPtr> pdu,
  Pointer<smiOCTETS> msgBufDesc,
) =>
    _SnmpDecodeMsg(
      session,
      srcEntity,
      dstEntity,
      context,
      pdu,
      msgBufDesc,
    );

late final _SnmpDecodeMsg = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr session,
  Pointer<IntPtr> srcEntity,
  Pointer<IntPtr> dstEntity,
  Pointer<IntPtr> context,
  Pointer<IntPtr> pdu,
  Pointer<smiOCTETS> msgBufDesc,
),
    int Function(
  int session,
  Pointer<IntPtr> srcEntity,
  Pointer<IntPtr> dstEntity,
  Pointer<IntPtr> context,
  Pointer<IntPtr> pdu,
  Pointer<smiOCTETS> msgBufDesc,
)>('SnmpDecodeMsg');

int SnmpDeleteVb(
  int vbl,
  int index,
) =>
    _SnmpDeleteVb(
      vbl,
      index,
    );

late final _SnmpDeleteVb = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr vbl,
  Uint32 index,
),
    int Function(
  int vbl,
  int index,
)>('SnmpDeleteVb');

int SnmpDuplicatePdu(
  int session,
  int PDU,
) =>
    _SnmpDuplicatePdu(
      session,
      PDU,
    );

late final _SnmpDuplicatePdu = _wsnmp32.lookupFunction<
    IntPtr Function(
  IntPtr session,
  IntPtr PDU,
),
    int Function(
  int session,
  int PDU,
)>('SnmpDuplicatePdu');

int SnmpDuplicateVbl(
  int session,
  int vbl,
) =>
    _SnmpDuplicateVbl(
      session,
      vbl,
    );

late final _SnmpDuplicateVbl = _wsnmp32.lookupFunction<
    IntPtr Function(
  IntPtr session,
  IntPtr vbl,
),
    int Function(
  int session,
  int vbl,
)>('SnmpDuplicateVbl');

int SnmpEncodeMsg(
  int session,
  int srcEntity,
  int dstEntity,
  int context,
  int pdu,
  Pointer<smiOCTETS> msgBufDesc,
) =>
    _SnmpEncodeMsg(
      session,
      srcEntity,
      dstEntity,
      context,
      pdu,
      msgBufDesc,
    );

late final _SnmpEncodeMsg = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr session,
  IntPtr srcEntity,
  IntPtr dstEntity,
  IntPtr context,
  IntPtr pdu,
  Pointer<smiOCTETS> msgBufDesc,
),
    int Function(
  int session,
  int srcEntity,
  int dstEntity,
  int context,
  int pdu,
  Pointer<smiOCTETS> msgBufDesc,
)>('SnmpEncodeMsg');

int SnmpEntityToStr(
  int entity,
  int size,
  Pointer<Utf8> string,
) =>
    _SnmpEntityToStr(
      entity,
      size,
      string,
    );

late final _SnmpEntityToStr = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr entity,
  Uint32 size,
  Pointer<Utf8> string,
),
    int Function(
  int entity,
  int size,
  Pointer<Utf8> string,
)>('SnmpEntityToStr');

int SnmpFreeContext(
  int context,
) =>
    _SnmpFreeContext(
      context,
    );

late final _SnmpFreeContext = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr context,
),
    int Function(
  int context,
)>('SnmpFreeContext');

int SnmpFreeDescriptor(
  int syntax,
  Pointer<smiOCTETS> descriptor,
) =>
    _SnmpFreeDescriptor(
      syntax,
      descriptor,
    );

late final _SnmpFreeDescriptor = _wsnmp32.lookupFunction<
    Uint32 Function(
  Uint32 syntax,
  Pointer<smiOCTETS> descriptor,
),
    int Function(
  int syntax,
  Pointer<smiOCTETS> descriptor,
)>('SnmpFreeDescriptor');

int SnmpFreeEntity(
  int entity,
) =>
    _SnmpFreeEntity(
      entity,
    );

late final _SnmpFreeEntity = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr entity,
),
    int Function(
  int entity,
)>('SnmpFreeEntity');

int SnmpFreePdu(
  int PDU,
) =>
    _SnmpFreePdu(
      PDU,
    );

late final _SnmpFreePdu = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr PDU,
),
    int Function(
  int PDU,
)>('SnmpFreePdu');

int SnmpFreeVbl(
  int vbl,
) =>
    _SnmpFreeVbl(
      vbl,
    );

late final _SnmpFreeVbl = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr vbl,
),
    int Function(
  int vbl,
)>('SnmpFreeVbl');

int SnmpGetLastError(
  int session,
) =>
    _SnmpGetLastError(
      session,
    );

late final _SnmpGetLastError = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr session,
),
    int Function(
  int session,
)>('SnmpGetLastError');

int SnmpGetPduData(
  int PDU,
  Pointer<Uint32> PDU_type,
  Pointer<Int32> request_id,
  Pointer<Uint32> error_status,
  Pointer<Int32> error_index,
  Pointer<IntPtr> varbindlist,
) =>
    _SnmpGetPduData(
      PDU,
      PDU_type,
      request_id,
      error_status,
      error_index,
      varbindlist,
    );

late final _SnmpGetPduData = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr PDU,
  Pointer<Uint32> PDU_type,
  Pointer<Int32> request_id,
  Pointer<Uint32> error_status,
  Pointer<Int32> error_index,
  Pointer<IntPtr> varbindlist,
),
    int Function(
  int PDU,
  Pointer<Uint32> PDU_type,
  Pointer<Int32> request_id,
  Pointer<Uint32> error_status,
  Pointer<Int32> error_index,
  Pointer<IntPtr> varbindlist,
)>('SnmpGetPduData');

int SnmpGetRetransmitMode(
  Pointer<Uint32> nRetransmitMode,
) =>
    _SnmpGetRetransmitMode(
      nRetransmitMode,
    );

late final _SnmpGetRetransmitMode = _wsnmp32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> nRetransmitMode,
),
    int Function(
  Pointer<Uint32> nRetransmitMode,
)>('SnmpGetRetransmitMode');

int SnmpGetRetry(
  int hEntity,
  Pointer<Uint32> nPolicyRetry,
  Pointer<Uint32> nActualRetry,
) =>
    _SnmpGetRetry(
      hEntity,
      nPolicyRetry,
      nActualRetry,
    );

late final _SnmpGetRetry = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr hEntity,
  Pointer<Uint32> nPolicyRetry,
  Pointer<Uint32> nActualRetry,
),
    int Function(
  int hEntity,
  Pointer<Uint32> nPolicyRetry,
  Pointer<Uint32> nActualRetry,
)>('SnmpGetRetry');

int SnmpGetTimeout(
  int hEntity,
  Pointer<Uint32> nPolicyTimeout,
  Pointer<Uint32> nActualTimeout,
) =>
    _SnmpGetTimeout(
      hEntity,
      nPolicyTimeout,
      nActualTimeout,
    );

late final _SnmpGetTimeout = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr hEntity,
  Pointer<Uint32> nPolicyTimeout,
  Pointer<Uint32> nActualTimeout,
),
    int Function(
  int hEntity,
  Pointer<Uint32> nPolicyTimeout,
  Pointer<Uint32> nActualTimeout,
)>('SnmpGetTimeout');

int SnmpGetTranslateMode(
  Pointer<Uint32> nTranslateMode,
) =>
    _SnmpGetTranslateMode(
      nTranslateMode,
    );

late final _SnmpGetTranslateMode = _wsnmp32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> nTranslateMode,
),
    int Function(
  Pointer<Uint32> nTranslateMode,
)>('SnmpGetTranslateMode');

int SnmpGetVb(
  int vbl,
  int index,
  Pointer<smiOID> name,
  Pointer<smiVALUE> value,
) =>
    _SnmpGetVb(
      vbl,
      index,
      name,
      value,
    );

late final _SnmpGetVb = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr vbl,
  Uint32 index,
  Pointer<smiOID> name,
  Pointer<smiVALUE> value,
),
    int Function(
  int vbl,
  int index,
  Pointer<smiOID> name,
  Pointer<smiVALUE> value,
)>('SnmpGetVb');

int SnmpGetVendorInfo(
  Pointer<smiVENDORINFO> vendorInfo,
) =>
    _SnmpGetVendorInfo(
      vendorInfo,
    );

late final _SnmpGetVendorInfo = _wsnmp32.lookupFunction<
    Uint32 Function(
  Pointer<smiVENDORINFO> vendorInfo,
),
    int Function(
  Pointer<smiVENDORINFO> vendorInfo,
)>('SnmpGetVendorInfo');

int SnmpListen(
  int hEntity,
  int lStatus,
) =>
    _SnmpListen(
      hEntity,
      lStatus,
    );

late final _SnmpListen = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr hEntity,
  Uint32 lStatus,
),
    int Function(
  int hEntity,
  int lStatus,
)>('SnmpListen');

int SnmpListenEx(
  int hEntity,
  int lStatus,
  int nUseEntityAddr,
) =>
    _SnmpListenEx(
      hEntity,
      lStatus,
      nUseEntityAddr,
    );

late final _SnmpListenEx = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr hEntity,
  Uint32 lStatus,
  Uint32 nUseEntityAddr,
),
    int Function(
  int hEntity,
  int lStatus,
  int nUseEntityAddr,
)>('SnmpListenEx');

int SnmpOidCompare(
  Pointer<smiOID> xOID,
  Pointer<smiOID> yOID,
  int maxlen,
  Pointer<Int32> result,
) =>
    _SnmpOidCompare(
      xOID,
      yOID,
      maxlen,
      result,
    );

late final _SnmpOidCompare = _wsnmp32.lookupFunction<
    Uint32 Function(
  Pointer<smiOID> xOID,
  Pointer<smiOID> yOID,
  Uint32 maxlen,
  Pointer<Int32> result,
),
    int Function(
  Pointer<smiOID> xOID,
  Pointer<smiOID> yOID,
  int maxlen,
  Pointer<Int32> result,
)>('SnmpOidCompare');

int SnmpOidCopy(
  Pointer<smiOID> srcOID,
  Pointer<smiOID> dstOID,
) =>
    _SnmpOidCopy(
      srcOID,
      dstOID,
    );

late final _SnmpOidCopy = _wsnmp32.lookupFunction<
    Uint32 Function(
  Pointer<smiOID> srcOID,
  Pointer<smiOID> dstOID,
),
    int Function(
  Pointer<smiOID> srcOID,
  Pointer<smiOID> dstOID,
)>('SnmpOidCopy');

int SnmpOidToStr(
  Pointer<smiOID> srcOID,
  int size,
  Pointer<Utf8> string,
) =>
    _SnmpOidToStr(
      srcOID,
      size,
      string,
    );

late final _SnmpOidToStr = _wsnmp32.lookupFunction<
    Uint32 Function(
  Pointer<smiOID> srcOID,
  Uint32 size,
  Pointer<Utf8> string,
),
    int Function(
  Pointer<smiOID> srcOID,
  int size,
  Pointer<Utf8> string,
)>('SnmpOidToStr');

int SnmpOpen(
  int hWnd,
  int wMsg,
) =>
    _SnmpOpen(
      hWnd,
      wMsg,
    );

late final _SnmpOpen = _wsnmp32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Uint32 wMsg,
),
    int Function(
  int hWnd,
  int wMsg,
)>('SnmpOpen');

int SnmpRecvMsg(
  int session,
  Pointer<IntPtr> srcEntity,
  Pointer<IntPtr> dstEntity,
  Pointer<IntPtr> context,
  Pointer<IntPtr> PDU,
) =>
    _SnmpRecvMsg(
      session,
      srcEntity,
      dstEntity,
      context,
      PDU,
    );

late final _SnmpRecvMsg = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr session,
  Pointer<IntPtr> srcEntity,
  Pointer<IntPtr> dstEntity,
  Pointer<IntPtr> context,
  Pointer<IntPtr> PDU,
),
    int Function(
  int session,
  Pointer<IntPtr> srcEntity,
  Pointer<IntPtr> dstEntity,
  Pointer<IntPtr> context,
  Pointer<IntPtr> PDU,
)>('SnmpRecvMsg');

int SnmpRegister(
  int session,
  int srcEntity,
  int dstEntity,
  int context,
  Pointer<smiOID> notification,
  int state,
) =>
    _SnmpRegister(
      session,
      srcEntity,
      dstEntity,
      context,
      notification,
      state,
    );

late final _SnmpRegister = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr session,
  IntPtr srcEntity,
  IntPtr dstEntity,
  IntPtr context,
  Pointer<smiOID> notification,
  Uint32 state,
),
    int Function(
  int session,
  int srcEntity,
  int dstEntity,
  int context,
  Pointer<smiOID> notification,
  int state,
)>('SnmpRegister');

int SnmpSendMsg(
  int session,
  int srcEntity,
  int dstEntity,
  int context,
  int PDU,
) =>
    _SnmpSendMsg(
      session,
      srcEntity,
      dstEntity,
      context,
      PDU,
    );

late final _SnmpSendMsg = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr session,
  IntPtr srcEntity,
  IntPtr dstEntity,
  IntPtr context,
  IntPtr PDU,
),
    int Function(
  int session,
  int srcEntity,
  int dstEntity,
  int context,
  int PDU,
)>('SnmpSendMsg');

int SnmpSetPduData(
  int PDU,
  Pointer<Int32> PDU_type,
  Pointer<Int32> request_id,
  Pointer<Int32> non_repeaters,
  Pointer<Int32> max_repetitions,
  Pointer<IntPtr> varbindlist,
) =>
    _SnmpSetPduData(
      PDU,
      PDU_type,
      request_id,
      non_repeaters,
      max_repetitions,
      varbindlist,
    );

late final _SnmpSetPduData = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr PDU,
  Pointer<Int32> PDU_type,
  Pointer<Int32> request_id,
  Pointer<Int32> non_repeaters,
  Pointer<Int32> max_repetitions,
  Pointer<IntPtr> varbindlist,
),
    int Function(
  int PDU,
  Pointer<Int32> PDU_type,
  Pointer<Int32> request_id,
  Pointer<Int32> non_repeaters,
  Pointer<Int32> max_repetitions,
  Pointer<IntPtr> varbindlist,
)>('SnmpSetPduData');

int SnmpSetPort(
  int hEntity,
  int nPort,
) =>
    _SnmpSetPort(
      hEntity,
      nPort,
    );

late final _SnmpSetPort = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr hEntity,
  Uint32 nPort,
),
    int Function(
  int hEntity,
  int nPort,
)>('SnmpSetPort');

int SnmpSetRetransmitMode(
  int nRetransmitMode,
) =>
    _SnmpSetRetransmitMode(
      nRetransmitMode,
    );

late final _SnmpSetRetransmitMode = _wsnmp32.lookupFunction<
    Uint32 Function(
  Uint32 nRetransmitMode,
),
    int Function(
  int nRetransmitMode,
)>('SnmpSetRetransmitMode');

int SnmpSetRetry(
  int hEntity,
  int nPolicyRetry,
) =>
    _SnmpSetRetry(
      hEntity,
      nPolicyRetry,
    );

late final _SnmpSetRetry = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr hEntity,
  Uint32 nPolicyRetry,
),
    int Function(
  int hEntity,
  int nPolicyRetry,
)>('SnmpSetRetry');

int SnmpSetTimeout(
  int hEntity,
  int nPolicyTimeout,
) =>
    _SnmpSetTimeout(
      hEntity,
      nPolicyTimeout,
    );

late final _SnmpSetTimeout = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr hEntity,
  Uint32 nPolicyTimeout,
),
    int Function(
  int hEntity,
  int nPolicyTimeout,
)>('SnmpSetTimeout');

int SnmpSetTranslateMode(
  int nTranslateMode,
) =>
    _SnmpSetTranslateMode(
      nTranslateMode,
    );

late final _SnmpSetTranslateMode = _wsnmp32.lookupFunction<
    Uint32 Function(
  Uint32 nTranslateMode,
),
    int Function(
  int nTranslateMode,
)>('SnmpSetTranslateMode');

int SnmpSetVb(
  int vbl,
  int index,
  Pointer<smiOID> name,
  Pointer<smiVALUE> value,
) =>
    _SnmpSetVb(
      vbl,
      index,
      name,
      value,
    );

late final _SnmpSetVb = _wsnmp32.lookupFunction<
    Uint32 Function(
  IntPtr vbl,
  Uint32 index,
  Pointer<smiOID> name,
  Pointer<smiVALUE> value,
),
    int Function(
  int vbl,
  int index,
  Pointer<smiOID> name,
  Pointer<smiVALUE> value,
)>('SnmpSetVb');

int SnmpStartup(
  Pointer<Uint32> nMajorVersion,
  Pointer<Uint32> nMinorVersion,
  Pointer<Uint32> nLevel,
  Pointer<Uint32> nTranslateMode,
  Pointer<Uint32> nRetransmitMode,
) =>
    _SnmpStartup(
      nMajorVersion,
      nMinorVersion,
      nLevel,
      nTranslateMode,
      nRetransmitMode,
    );

late final _SnmpStartup = _wsnmp32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> nMajorVersion,
  Pointer<Uint32> nMinorVersion,
  Pointer<Uint32> nLevel,
  Pointer<Uint32> nTranslateMode,
  Pointer<Uint32> nRetransmitMode,
),
    int Function(
  Pointer<Uint32> nMajorVersion,
  Pointer<Uint32> nMinorVersion,
  Pointer<Uint32> nLevel,
  Pointer<Uint32> nTranslateMode,
  Pointer<Uint32> nRetransmitMode,
)>('SnmpStartup');

int SnmpStartupEx(
  Pointer<Uint32> nMajorVersion,
  Pointer<Uint32> nMinorVersion,
  Pointer<Uint32> nLevel,
  Pointer<Uint32> nTranslateMode,
  Pointer<Uint32> nRetransmitMode,
) =>
    _SnmpStartupEx(
      nMajorVersion,
      nMinorVersion,
      nLevel,
      nTranslateMode,
      nRetransmitMode,
    );

late final _SnmpStartupEx = _wsnmp32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> nMajorVersion,
  Pointer<Uint32> nMinorVersion,
  Pointer<Uint32> nLevel,
  Pointer<Uint32> nTranslateMode,
  Pointer<Uint32> nRetransmitMode,
),
    int Function(
  Pointer<Uint32> nMajorVersion,
  Pointer<Uint32> nMinorVersion,
  Pointer<Uint32> nLevel,
  Pointer<Uint32> nTranslateMode,
  Pointer<Uint32> nRetransmitMode,
)>('SnmpStartupEx');

int SnmpStrToContext(
  int session,
  Pointer<smiOCTETS> string,
) =>
    _SnmpStrToContext(
      session,
      string,
    );

late final _SnmpStrToContext = _wsnmp32.lookupFunction<
    IntPtr Function(
  IntPtr session,
  Pointer<smiOCTETS> string,
),
    int Function(
  int session,
  Pointer<smiOCTETS> string,
)>('SnmpStrToContext');

int SnmpStrToEntity(
  int session,
  Pointer<Utf8> string,
) =>
    _SnmpStrToEntity(
      session,
      string,
    );

late final _SnmpStrToEntity = _wsnmp32.lookupFunction<
    IntPtr Function(
  IntPtr session,
  Pointer<Utf8> string,
),
    int Function(
  int session,
  Pointer<Utf8> string,
)>('SnmpStrToEntity');

int SnmpStrToOid(
  Pointer<Utf8> string,
  Pointer<smiOID> dstOID,
) =>
    _SnmpStrToOid(
      string,
      dstOID,
    );

late final _SnmpStrToOid = _wsnmp32.lookupFunction<
    Uint32 Function(
  Pointer<Utf8> string,
  Pointer<smiOID> dstOID,
),
    int Function(
  Pointer<Utf8> string,
  Pointer<smiOID> dstOID,
)>('SnmpStrToOid');
