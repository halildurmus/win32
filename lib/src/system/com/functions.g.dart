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
import '../../system/com/IMoniker.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IUnknown.dart';
import '../../system/com/structs.g.dart';
import '../../system/com/IMalloc.dart';
import '../../security/structs.g.dart';
import '../../system/com/IBindCtx.dart';
import '../../system/com/IActivationFilter.dart';
import '../../system/com/IChannelHook.dart';
import '../../system/com/IInitializeSpy.dart';
import '../../system/com/IMallocSpy.dart';
import '../../system/com/ISurrogate.dart';
import '../../system/com/IDataAdviseHolder.dart';
import '../../system/com/IBindStatusCallback.dart';
import '../../system/com/IRunningObjectTable.dart';
import '../../system/com/IUri.dart';
import '../../system/com/IUriBuilder.dart';
import '../../system/com/IErrorInfo.dart'; // -----------------------------------------------------------------------

// ole32.dll
// -----------------------------------------------------------------------
final _ole32 = DynamicLibrary.open('ole32.dll');

int BindMoniker(
  Pointer<COMObject> pmk,
  int grfOpt,
  Pointer<GUID> iidResult,
  Pointer<Pointer> ppvResult,
) =>
    _BindMoniker(
      pmk,
      grfOpt,
      iidResult,
      ppvResult,
    );

late final _BindMoniker = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pmk,
  Uint32 grfOpt,
  Pointer<GUID> iidResult,
  Pointer<Pointer> ppvResult,
),
    int Function(
  Pointer<COMObject> pmk,
  int grfOpt,
  Pointer<GUID> iidResult,
  Pointer<Pointer> ppvResult,
)>('BindMoniker');

int CLSIDFromProgID(
  Pointer<Utf16> lpszProgID,
  Pointer<GUID> lpclsid,
) =>
    _CLSIDFromProgID(
      lpszProgID,
      lpclsid,
    );

late final _CLSIDFromProgID = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszProgID,
  Pointer<GUID> lpclsid,
),
    int Function(
  Pointer<Utf16> lpszProgID,
  Pointer<GUID> lpclsid,
)>('CLSIDFromProgID');

int CLSIDFromProgIDEx(
  Pointer<Utf16> lpszProgID,
  Pointer<GUID> lpclsid,
) =>
    _CLSIDFromProgIDEx(
      lpszProgID,
      lpclsid,
    );

late final _CLSIDFromProgIDEx = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszProgID,
  Pointer<GUID> lpclsid,
),
    int Function(
  Pointer<Utf16> lpszProgID,
  Pointer<GUID> lpclsid,
)>('CLSIDFromProgIDEx');

int CLSIDFromString(
  Pointer<Utf16> lpsz,
  Pointer<GUID> pclsid,
) =>
    _CLSIDFromString(
      lpsz,
      pclsid,
    );

late final _CLSIDFromString = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpsz,
  Pointer<GUID> pclsid,
),
    int Function(
  Pointer<Utf16> lpsz,
  Pointer<GUID> pclsid,
)>('CLSIDFromString');

int CoAddRefServerProcess() => _CoAddRefServerProcess();

late final _CoAddRefServerProcess = _ole32
    .lookupFunction<Uint32 Function(), int Function()>('CoAddRefServerProcess');

int CoAllowSetForegroundWindow(
  Pointer<COMObject> pUnk,
  Pointer lpvReserved,
) =>
    _CoAllowSetForegroundWindow(
      pUnk,
      lpvReserved,
    );

late final _CoAllowSetForegroundWindow = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnk,
  Pointer lpvReserved,
),
    int Function(
  Pointer<COMObject> pUnk,
  Pointer lpvReserved,
)>('CoAllowSetForegroundWindow');

int CoAllowUnmarshalerCLSID(
  Pointer<GUID> clsid,
) =>
    _CoAllowUnmarshalerCLSID(
      clsid,
    );

late final _CoAllowUnmarshalerCLSID = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> clsid,
),
    int Function(
  Pointer<GUID> clsid,
)>('CoAllowUnmarshalerCLSID');

int CoBuildVersion() => _CoBuildVersion();

late final _CoBuildVersion =
    _ole32.lookupFunction<Uint32 Function(), int Function()>('CoBuildVersion');

int CoCancelCall(
  int dwThreadId,
  int ulTimeout,
) =>
    _CoCancelCall(
      dwThreadId,
      ulTimeout,
    );

late final _CoCancelCall = _ole32.lookupFunction<
    Int32 Function(
  Uint32 dwThreadId,
  Uint32 ulTimeout,
),
    int Function(
  int dwThreadId,
  int ulTimeout,
)>('CoCancelCall');

int CoCopyProxy(
  Pointer<COMObject> pProxy,
  Pointer<Pointer<COMObject>> ppCopy,
) =>
    _CoCopyProxy(
      pProxy,
      ppCopy,
    );

late final _CoCopyProxy = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pProxy,
  Pointer<Pointer<COMObject>> ppCopy,
),
    int Function(
  Pointer<COMObject> pProxy,
  Pointer<Pointer<COMObject>> ppCopy,
)>('CoCopyProxy');

int CoCreateFreeThreadedMarshaler(
  Pointer<COMObject> punkOuter,
  Pointer<Pointer<COMObject>> ppunkMarshal,
) =>
    _CoCreateFreeThreadedMarshaler(
      punkOuter,
      ppunkMarshal,
    );

late final _CoCreateFreeThreadedMarshaler = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punkOuter,
  Pointer<Pointer<COMObject>> ppunkMarshal,
),
    int Function(
  Pointer<COMObject> punkOuter,
  Pointer<Pointer<COMObject>> ppunkMarshal,
)>('CoCreateFreeThreadedMarshaler');

int CoCreateGuid(
  Pointer<GUID> pguid,
) =>
    _CoCreateGuid(
      pguid,
    );

late final _CoCreateGuid = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> pguid,
),
    int Function(
  Pointer<GUID> pguid,
)>('CoCreateGuid');

int CoCreateInstance(
  Pointer<GUID> rclsid,
  Pointer<COMObject> pUnkOuter,
  int dwClsContext,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _CoCreateInstance(
      rclsid,
      pUnkOuter,
      dwClsContext,
      riid,
      ppv,
    );

late final _CoCreateInstance = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> rclsid,
  Pointer<COMObject> pUnkOuter,
  Uint32 dwClsContext,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<GUID> rclsid,
  Pointer<COMObject> pUnkOuter,
  int dwClsContext,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('CoCreateInstance');

int CoCreateInstanceEx(
  Pointer<GUID> Clsid,
  Pointer<COMObject> punkOuter,
  int dwClsCtx,
  Pointer<COSERVERINFO> pServerInfo,
  int dwCount,
  Pointer<MULTI_QI> pResults,
) =>
    _CoCreateInstanceEx(
      Clsid,
      punkOuter,
      dwClsCtx,
      pServerInfo,
      dwCount,
      pResults,
    );

late final _CoCreateInstanceEx = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> Clsid,
  Pointer<COMObject> punkOuter,
  Uint32 dwClsCtx,
  Pointer<COSERVERINFO> pServerInfo,
  Uint32 dwCount,
  Pointer<MULTI_QI> pResults,
),
    int Function(
  Pointer<GUID> Clsid,
  Pointer<COMObject> punkOuter,
  int dwClsCtx,
  Pointer<COSERVERINFO> pServerInfo,
  int dwCount,
  Pointer<MULTI_QI> pResults,
)>('CoCreateInstanceEx');

int CoCreateInstanceFromApp(
  Pointer<GUID> Clsid,
  Pointer<COMObject> punkOuter,
  int dwClsCtx,
  Pointer reserved,
  int dwCount,
  Pointer<MULTI_QI> pResults,
) =>
    _CoCreateInstanceFromApp(
      Clsid,
      punkOuter,
      dwClsCtx,
      reserved,
      dwCount,
      pResults,
    );

late final _CoCreateInstanceFromApp = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> Clsid,
  Pointer<COMObject> punkOuter,
  Uint32 dwClsCtx,
  Pointer reserved,
  Uint32 dwCount,
  Pointer<MULTI_QI> pResults,
),
    int Function(
  Pointer<GUID> Clsid,
  Pointer<COMObject> punkOuter,
  int dwClsCtx,
  Pointer reserved,
  int dwCount,
  Pointer<MULTI_QI> pResults,
)>('CoCreateInstanceFromApp');

int CoDecrementMTAUsage(
  int Cookie,
) =>
    _CoDecrementMTAUsage(
      Cookie,
    );

late final _CoDecrementMTAUsage = _ole32.lookupFunction<
    Int32 Function(
  IntPtr Cookie,
),
    int Function(
  int Cookie,
)>('CoDecrementMTAUsage');

int CoDisableCallCancellation(
  Pointer pReserved,
) =>
    _CoDisableCallCancellation(
      pReserved,
    );

late final _CoDisableCallCancellation = _ole32.lookupFunction<
    Int32 Function(
  Pointer pReserved,
),
    int Function(
  Pointer pReserved,
)>('CoDisableCallCancellation');

int CoDisconnectContext(
  int dwTimeout,
) =>
    _CoDisconnectContext(
      dwTimeout,
    );

late final _CoDisconnectContext = _ole32.lookupFunction<
    Int32 Function(
  Uint32 dwTimeout,
),
    int Function(
  int dwTimeout,
)>('CoDisconnectContext');

int CoDisconnectObject(
  Pointer<COMObject> pUnk,
  int dwReserved,
) =>
    _CoDisconnectObject(
      pUnk,
      dwReserved,
    );

late final _CoDisconnectObject = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnk,
  Uint32 dwReserved,
),
    int Function(
  Pointer<COMObject> pUnk,
  int dwReserved,
)>('CoDisconnectObject');

int CoDosDateTimeToFileTime(
  int nDosDate,
  int nDosTime,
  Pointer<FILETIME> lpFileTime,
) =>
    _CoDosDateTimeToFileTime(
      nDosDate,
      nDosTime,
      lpFileTime,
    );

late final _CoDosDateTimeToFileTime = _ole32.lookupFunction<
    Int32 Function(
  Uint16 nDosDate,
  Uint16 nDosTime,
  Pointer<FILETIME> lpFileTime,
),
    int Function(
  int nDosDate,
  int nDosTime,
  Pointer<FILETIME> lpFileTime,
)>('CoDosDateTimeToFileTime');

int CoEnableCallCancellation(
  Pointer pReserved,
) =>
    _CoEnableCallCancellation(
      pReserved,
    );

late final _CoEnableCallCancellation = _ole32.lookupFunction<
    Int32 Function(
  Pointer pReserved,
),
    int Function(
  Pointer pReserved,
)>('CoEnableCallCancellation');

int CoFileTimeNow(
  Pointer<FILETIME> lpFileTime,
) =>
    _CoFileTimeNow(
      lpFileTime,
    );

late final _CoFileTimeNow = _ole32.lookupFunction<
    Int32 Function(
  Pointer<FILETIME> lpFileTime,
),
    int Function(
  Pointer<FILETIME> lpFileTime,
)>('CoFileTimeNow');

int CoFileTimeToDosDateTime(
  Pointer<FILETIME> lpFileTime,
  Pointer<Uint16> lpDosDate,
  Pointer<Uint16> lpDosTime,
) =>
    _CoFileTimeToDosDateTime(
      lpFileTime,
      lpDosDate,
      lpDosTime,
    );

late final _CoFileTimeToDosDateTime = _ole32.lookupFunction<
    Int32 Function(
  Pointer<FILETIME> lpFileTime,
  Pointer<Uint16> lpDosDate,
  Pointer<Uint16> lpDosTime,
),
    int Function(
  Pointer<FILETIME> lpFileTime,
  Pointer<Uint16> lpDosDate,
  Pointer<Uint16> lpDosTime,
)>('CoFileTimeToDosDateTime');

void CoFreeAllLibraries() => _CoFreeAllLibraries();

late final _CoFreeAllLibraries = _ole32
    .lookupFunction<Void Function(), void Function()>('CoFreeAllLibraries');

void CoFreeLibrary(
  int hInst,
) =>
    _CoFreeLibrary(
      hInst,
    );

late final _CoFreeLibrary = _ole32.lookupFunction<
    Void Function(
  IntPtr hInst,
),
    void Function(
  int hInst,
)>('CoFreeLibrary');

void CoFreeUnusedLibraries() => _CoFreeUnusedLibraries();

late final _CoFreeUnusedLibraries = _ole32
    .lookupFunction<Void Function(), void Function()>('CoFreeUnusedLibraries');

void CoFreeUnusedLibrariesEx(
  int dwUnloadDelay,
  int dwReserved,
) =>
    _CoFreeUnusedLibrariesEx(
      dwUnloadDelay,
      dwReserved,
    );

late final _CoFreeUnusedLibrariesEx = _ole32.lookupFunction<
    Void Function(
  Uint32 dwUnloadDelay,
  Uint32 dwReserved,
),
    void Function(
  int dwUnloadDelay,
  int dwReserved,
)>('CoFreeUnusedLibrariesEx');

int CoGetApartmentType(
  Pointer<Int32> pAptType,
  Pointer<Int32> pAptQualifier,
) =>
    _CoGetApartmentType(
      pAptType,
      pAptQualifier,
    );

late final _CoGetApartmentType = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Int32> pAptType,
  Pointer<Int32> pAptQualifier,
),
    int Function(
  Pointer<Int32> pAptType,
  Pointer<Int32> pAptQualifier,
)>('CoGetApartmentType');

int CoGetCallContext(
  Pointer<GUID> riid,
  Pointer<Pointer> ppInterface,
) =>
    _CoGetCallContext(
      riid,
      ppInterface,
    );

late final _CoGetCallContext = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppInterface,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppInterface,
)>('CoGetCallContext');

int CoGetCallerTID(
  Pointer<Uint32> lpdwTID,
) =>
    _CoGetCallerTID(
      lpdwTID,
    );

late final _CoGetCallerTID = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lpdwTID,
),
    int Function(
  Pointer<Uint32> lpdwTID,
)>('CoGetCallerTID');

int CoGetCancelObject(
  int dwThreadId,
  Pointer<GUID> iid,
  Pointer<Pointer> ppUnk,
) =>
    _CoGetCancelObject(
      dwThreadId,
      iid,
      ppUnk,
    );

late final _CoGetCancelObject = _ole32.lookupFunction<
    Int32 Function(
  Uint32 dwThreadId,
  Pointer<GUID> iid,
  Pointer<Pointer> ppUnk,
),
    int Function(
  int dwThreadId,
  Pointer<GUID> iid,
  Pointer<Pointer> ppUnk,
)>('CoGetCancelObject');

int CoGetClassObject(
  Pointer<GUID> rclsid,
  int dwClsContext,
  Pointer pvReserved,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _CoGetClassObject(
      rclsid,
      dwClsContext,
      pvReserved,
      riid,
      ppv,
    );

late final _CoGetClassObject = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> rclsid,
  Uint32 dwClsContext,
  Pointer pvReserved,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<GUID> rclsid,
  int dwClsContext,
  Pointer pvReserved,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('CoGetClassObject');

int CoGetContextToken(
  Pointer<IntPtr> pToken,
) =>
    _CoGetContextToken(
      pToken,
    );

late final _CoGetContextToken = _ole32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> pToken,
),
    int Function(
  Pointer<IntPtr> pToken,
)>('CoGetContextToken');

int CoGetCurrentLogicalThreadId(
  Pointer<GUID> pguid,
) =>
    _CoGetCurrentLogicalThreadId(
      pguid,
    );

late final _CoGetCurrentLogicalThreadId = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> pguid,
),
    int Function(
  Pointer<GUID> pguid,
)>('CoGetCurrentLogicalThreadId');

int CoGetCurrentProcess() => _CoGetCurrentProcess();

late final _CoGetCurrentProcess = _ole32
    .lookupFunction<Uint32 Function(), int Function()>('CoGetCurrentProcess');

int CoGetMalloc(
  int dwMemContext,
  Pointer<Pointer<COMObject>> ppMalloc,
) =>
    _CoGetMalloc(
      dwMemContext,
      ppMalloc,
    );

late final _CoGetMalloc = _ole32.lookupFunction<
    Int32 Function(
  Uint32 dwMemContext,
  Pointer<Pointer<COMObject>> ppMalloc,
),
    int Function(
  int dwMemContext,
  Pointer<Pointer<COMObject>> ppMalloc,
)>('CoGetMalloc');

int CoGetObject(
  Pointer<Utf16> pszName,
  Pointer<BIND_OPTS> pBindOptions,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _CoGetObject(
      pszName,
      pBindOptions,
      riid,
      ppv,
    );

late final _CoGetObject = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszName,
  Pointer<BIND_OPTS> pBindOptions,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<Utf16> pszName,
  Pointer<BIND_OPTS> pBindOptions,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('CoGetObject');

int CoGetObjectContext(
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _CoGetObjectContext(
      riid,
      ppv,
    );

late final _CoGetObjectContext = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('CoGetObjectContext');

int CoGetPSClsid(
  Pointer<GUID> riid,
  Pointer<GUID> pClsid,
) =>
    _CoGetPSClsid(
      riid,
      pClsid,
    );

late final _CoGetPSClsid = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<GUID> pClsid,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<GUID> pClsid,
)>('CoGetPSClsid');

int CoGetSystemSecurityPermissions(
  int comSDType,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSD,
) =>
    _CoGetSystemSecurityPermissions(
      comSDType,
      ppSD,
    );

late final _CoGetSystemSecurityPermissions = _ole32.lookupFunction<
    Int32 Function(
  Int32 comSDType,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSD,
),
    int Function(
  int comSDType,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSD,
)>('CoGetSystemSecurityPermissions');

int CoGetTreatAsClass(
  Pointer<GUID> clsidOld,
  Pointer<GUID> pClsidNew,
) =>
    _CoGetTreatAsClass(
      clsidOld,
      pClsidNew,
    );

late final _CoGetTreatAsClass = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> clsidOld,
  Pointer<GUID> pClsidNew,
),
    int Function(
  Pointer<GUID> clsidOld,
  Pointer<GUID> pClsidNew,
)>('CoGetTreatAsClass');

int CoImpersonateClient() => _CoImpersonateClient();

late final _CoImpersonateClient = _ole32
    .lookupFunction<Int32 Function(), int Function()>('CoImpersonateClient');

int CoIncrementMTAUsage(
  Pointer<IntPtr> pCookie,
) =>
    _CoIncrementMTAUsage(
      pCookie,
    );

late final _CoIncrementMTAUsage = _ole32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> pCookie,
),
    int Function(
  Pointer<IntPtr> pCookie,
)>('CoIncrementMTAUsage');

int CoInitialize(
  Pointer pvReserved,
) =>
    _CoInitialize(
      pvReserved,
    );

late final _CoInitialize = _ole32.lookupFunction<
    Int32 Function(
  Pointer pvReserved,
),
    int Function(
  Pointer pvReserved,
)>('CoInitialize');

int CoInitializeEx(
  Pointer pvReserved,
  int dwCoInit,
) =>
    _CoInitializeEx(
      pvReserved,
      dwCoInit,
    );

late final _CoInitializeEx = _ole32.lookupFunction<
    Int32 Function(
  Pointer pvReserved,
  Uint32 dwCoInit,
),
    int Function(
  Pointer pvReserved,
  int dwCoInit,
)>('CoInitializeEx');

int CoInitializeSecurity(
  Pointer<SECURITY_DESCRIPTOR> pSecDesc,
  int cAuthSvc,
  Pointer<SOLE_AUTHENTICATION_SERVICE> asAuthSvc,
  Pointer pReserved1,
  int dwAuthnLevel,
  int dwImpLevel,
  Pointer pAuthList,
  int dwCapabilities,
  Pointer pReserved3,
) =>
    _CoInitializeSecurity(
      pSecDesc,
      cAuthSvc,
      asAuthSvc,
      pReserved1,
      dwAuthnLevel,
      dwImpLevel,
      pAuthList,
      dwCapabilities,
      pReserved3,
    );

late final _CoInitializeSecurity = _ole32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecDesc,
  Int32 cAuthSvc,
  Pointer<SOLE_AUTHENTICATION_SERVICE> asAuthSvc,
  Pointer pReserved1,
  Uint32 dwAuthnLevel,
  Uint32 dwImpLevel,
  Pointer pAuthList,
  Int32 dwCapabilities,
  Pointer pReserved3,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecDesc,
  int cAuthSvc,
  Pointer<SOLE_AUTHENTICATION_SERVICE> asAuthSvc,
  Pointer pReserved1,
  int dwAuthnLevel,
  int dwImpLevel,
  Pointer pAuthList,
  int dwCapabilities,
  Pointer pReserved3,
)>('CoInitializeSecurity');

int CoInstall(
  Pointer<COMObject> pbc,
  int dwFlags,
  Pointer<uCLSSPEC> pClassSpec,
  Pointer<QUERYCONTEXT> pQuery,
  Pointer<Utf16> pszCodeBase,
) =>
    _CoInstall(
      pbc,
      dwFlags,
      pClassSpec,
      pQuery,
      pszCodeBase,
    );

late final _CoInstall = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pbc,
  Uint32 dwFlags,
  Pointer<uCLSSPEC> pClassSpec,
  Pointer<QUERYCONTEXT> pQuery,
  Pointer<Utf16> pszCodeBase,
),
    int Function(
  Pointer<COMObject> pbc,
  int dwFlags,
  Pointer<uCLSSPEC> pClassSpec,
  Pointer<QUERYCONTEXT> pQuery,
  Pointer<Utf16> pszCodeBase,
)>('CoInstall');

int CoInvalidateRemoteMachineBindings(
  Pointer<Utf16> pszMachineName,
) =>
    _CoInvalidateRemoteMachineBindings(
      pszMachineName,
    );

late final _CoInvalidateRemoteMachineBindings = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszMachineName,
),
    int Function(
  Pointer<Utf16> pszMachineName,
)>('CoInvalidateRemoteMachineBindings');

int CoIsHandlerConnected(
  Pointer<COMObject> pUnk,
) =>
    _CoIsHandlerConnected(
      pUnk,
    );

late final _CoIsHandlerConnected = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnk,
),
    int Function(
  Pointer<COMObject> pUnk,
)>('CoIsHandlerConnected');

int CoIsOle1Class(
  Pointer<GUID> rclsid,
) =>
    _CoIsOle1Class(
      rclsid,
    );

late final _CoIsOle1Class = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> rclsid,
),
    int Function(
  Pointer<GUID> rclsid,
)>('CoIsOle1Class');

int CoLoadLibrary(
  Pointer<Utf16> lpszLibName,
  int bAutoFree,
) =>
    _CoLoadLibrary(
      lpszLibName,
      bAutoFree,
    );

late final _CoLoadLibrary = _ole32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpszLibName,
  Int32 bAutoFree,
),
    int Function(
  Pointer<Utf16> lpszLibName,
  int bAutoFree,
)>('CoLoadLibrary');

int CoLockObjectExternal(
  Pointer<COMObject> pUnk,
  int fLock,
  int fLastUnlockReleases,
) =>
    _CoLockObjectExternal(
      pUnk,
      fLock,
      fLastUnlockReleases,
    );

late final _CoLockObjectExternal = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnk,
  Int32 fLock,
  Int32 fLastUnlockReleases,
),
    int Function(
  Pointer<COMObject> pUnk,
  int fLock,
  int fLastUnlockReleases,
)>('CoLockObjectExternal');

int CoQueryAuthenticationServices(
  Pointer<Uint32> pcAuthSvc,
  Pointer<Pointer<SOLE_AUTHENTICATION_SERVICE>> asAuthSvc,
) =>
    _CoQueryAuthenticationServices(
      pcAuthSvc,
      asAuthSvc,
    );

late final _CoQueryAuthenticationServices = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pcAuthSvc,
  Pointer<Pointer<SOLE_AUTHENTICATION_SERVICE>> asAuthSvc,
),
    int Function(
  Pointer<Uint32> pcAuthSvc,
  Pointer<Pointer<SOLE_AUTHENTICATION_SERVICE>> asAuthSvc,
)>('CoQueryAuthenticationServices');

int CoQueryClientBlanket(
  Pointer<Uint32> pAuthnSvc,
  Pointer<Uint32> pAuthzSvc,
  Pointer<Pointer<Utf16>> pServerPrincName,
  Pointer<Uint32> pAuthnLevel,
  Pointer<Uint32> pImpLevel,
  Pointer<Pointer> pPrivs,
  Pointer<Uint32> pCapabilities,
) =>
    _CoQueryClientBlanket(
      pAuthnSvc,
      pAuthzSvc,
      pServerPrincName,
      pAuthnLevel,
      pImpLevel,
      pPrivs,
      pCapabilities,
    );

late final _CoQueryClientBlanket = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pAuthnSvc,
  Pointer<Uint32> pAuthzSvc,
  Pointer<Pointer<Utf16>> pServerPrincName,
  Pointer<Uint32> pAuthnLevel,
  Pointer<Uint32> pImpLevel,
  Pointer<Pointer> pPrivs,
  Pointer<Uint32> pCapabilities,
),
    int Function(
  Pointer<Uint32> pAuthnSvc,
  Pointer<Uint32> pAuthzSvc,
  Pointer<Pointer<Utf16>> pServerPrincName,
  Pointer<Uint32> pAuthnLevel,
  Pointer<Uint32> pImpLevel,
  Pointer<Pointer> pPrivs,
  Pointer<Uint32> pCapabilities,
)>('CoQueryClientBlanket');

int CoQueryProxyBlanket(
  Pointer<COMObject> pProxy,
  Pointer<Uint32> pwAuthnSvc,
  Pointer<Uint32> pAuthzSvc,
  Pointer<Pointer<Utf16>> pServerPrincName,
  Pointer<Uint32> pAuthnLevel,
  Pointer<Uint32> pImpLevel,
  Pointer<Pointer> pAuthInfo,
  Pointer<Uint32> pCapabilites,
) =>
    _CoQueryProxyBlanket(
      pProxy,
      pwAuthnSvc,
      pAuthzSvc,
      pServerPrincName,
      pAuthnLevel,
      pImpLevel,
      pAuthInfo,
      pCapabilites,
    );

late final _CoQueryProxyBlanket = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pProxy,
  Pointer<Uint32> pwAuthnSvc,
  Pointer<Uint32> pAuthzSvc,
  Pointer<Pointer<Utf16>> pServerPrincName,
  Pointer<Uint32> pAuthnLevel,
  Pointer<Uint32> pImpLevel,
  Pointer<Pointer> pAuthInfo,
  Pointer<Uint32> pCapabilites,
),
    int Function(
  Pointer<COMObject> pProxy,
  Pointer<Uint32> pwAuthnSvc,
  Pointer<Uint32> pAuthzSvc,
  Pointer<Pointer<Utf16>> pServerPrincName,
  Pointer<Uint32> pAuthnLevel,
  Pointer<Uint32> pImpLevel,
  Pointer<Pointer> pAuthInfo,
  Pointer<Uint32> pCapabilites,
)>('CoQueryProxyBlanket');

int CoRegisterActivationFilter(
  Pointer<COMObject> pActivationFilter,
) =>
    _CoRegisterActivationFilter(
      pActivationFilter,
    );

late final _CoRegisterActivationFilter = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pActivationFilter,
),
    int Function(
  Pointer<COMObject> pActivationFilter,
)>('CoRegisterActivationFilter');

int CoRegisterChannelHook(
  Pointer<GUID> ExtensionUuid,
  Pointer<COMObject> pChannelHook,
) =>
    _CoRegisterChannelHook(
      ExtensionUuid,
      pChannelHook,
    );

late final _CoRegisterChannelHook = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> ExtensionUuid,
  Pointer<COMObject> pChannelHook,
),
    int Function(
  Pointer<GUID> ExtensionUuid,
  Pointer<COMObject> pChannelHook,
)>('CoRegisterChannelHook');

int CoRegisterClassObject(
  Pointer<GUID> rclsid,
  Pointer<COMObject> pUnk,
  int dwClsContext,
  int flags,
  Pointer<Uint32> lpdwRegister,
) =>
    _CoRegisterClassObject(
      rclsid,
      pUnk,
      dwClsContext,
      flags,
      lpdwRegister,
    );

late final _CoRegisterClassObject = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> rclsid,
  Pointer<COMObject> pUnk,
  Uint32 dwClsContext,
  Uint32 flags,
  Pointer<Uint32> lpdwRegister,
),
    int Function(
  Pointer<GUID> rclsid,
  Pointer<COMObject> pUnk,
  int dwClsContext,
  int flags,
  Pointer<Uint32> lpdwRegister,
)>('CoRegisterClassObject');

int CoRegisterDeviceCatalog(
  Pointer<Utf16> deviceInstanceId,
  Pointer<IntPtr> cookie,
) =>
    _CoRegisterDeviceCatalog(
      deviceInstanceId,
      cookie,
    );

late final _CoRegisterDeviceCatalog = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> deviceInstanceId,
  Pointer<IntPtr> cookie,
),
    int Function(
  Pointer<Utf16> deviceInstanceId,
  Pointer<IntPtr> cookie,
)>('CoRegisterDeviceCatalog');

int CoRegisterInitializeSpy(
  Pointer<COMObject> pSpy,
  Pointer<Uint64> puliCookie,
) =>
    _CoRegisterInitializeSpy(
      pSpy,
      puliCookie,
    );

late final _CoRegisterInitializeSpy = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pSpy,
  Pointer<Uint64> puliCookie,
),
    int Function(
  Pointer<COMObject> pSpy,
  Pointer<Uint64> puliCookie,
)>('CoRegisterInitializeSpy');

int CoRegisterMallocSpy(
  Pointer<COMObject> pMallocSpy,
) =>
    _CoRegisterMallocSpy(
      pMallocSpy,
    );

late final _CoRegisterMallocSpy = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMallocSpy,
),
    int Function(
  Pointer<COMObject> pMallocSpy,
)>('CoRegisterMallocSpy');

int CoRegisterPSClsid(
  Pointer<GUID> riid,
  Pointer<GUID> rclsid,
) =>
    _CoRegisterPSClsid(
      riid,
      rclsid,
    );

late final _CoRegisterPSClsid = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<GUID> rclsid,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<GUID> rclsid,
)>('CoRegisterPSClsid');

int CoRegisterSurrogate(
  Pointer<COMObject> pSurrogate,
) =>
    _CoRegisterSurrogate(
      pSurrogate,
    );

late final _CoRegisterSurrogate = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pSurrogate,
),
    int Function(
  Pointer<COMObject> pSurrogate,
)>('CoRegisterSurrogate');

int CoReleaseServerProcess() => _CoReleaseServerProcess();

late final _CoReleaseServerProcess =
    _ole32.lookupFunction<Uint32 Function(), int Function()>(
        'CoReleaseServerProcess');

int CoResumeClassObjects() => _CoResumeClassObjects();

late final _CoResumeClassObjects = _ole32
    .lookupFunction<Int32 Function(), int Function()>('CoResumeClassObjects');

int CoRevertToSelf() => _CoRevertToSelf();

late final _CoRevertToSelf =
    _ole32.lookupFunction<Int32 Function(), int Function()>('CoRevertToSelf');

int CoRevokeClassObject(
  int dwRegister,
) =>
    _CoRevokeClassObject(
      dwRegister,
    );

late final _CoRevokeClassObject = _ole32.lookupFunction<
    Int32 Function(
  Uint32 dwRegister,
),
    int Function(
  int dwRegister,
)>('CoRevokeClassObject');

int CoRevokeDeviceCatalog(
  int cookie,
) =>
    _CoRevokeDeviceCatalog(
      cookie,
    );

late final _CoRevokeDeviceCatalog = _ole32.lookupFunction<
    Int32 Function(
  IntPtr cookie,
),
    int Function(
  int cookie,
)>('CoRevokeDeviceCatalog');

int CoRevokeInitializeSpy(
  int uliCookie,
) =>
    _CoRevokeInitializeSpy(
      uliCookie,
    );

late final _CoRevokeInitializeSpy = _ole32.lookupFunction<
    Int32 Function(
  Uint64 uliCookie,
),
    int Function(
  int uliCookie,
)>('CoRevokeInitializeSpy');

int CoRevokeMallocSpy() => _CoRevokeMallocSpy();

late final _CoRevokeMallocSpy = _ole32
    .lookupFunction<Int32 Function(), int Function()>('CoRevokeMallocSpy');

int CoSetCancelObject(
  Pointer<COMObject> pUnk,
) =>
    _CoSetCancelObject(
      pUnk,
    );

late final _CoSetCancelObject = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnk,
),
    int Function(
  Pointer<COMObject> pUnk,
)>('CoSetCancelObject');

int CoSetProxyBlanket(
  Pointer<COMObject> pProxy,
  int dwAuthnSvc,
  int dwAuthzSvc,
  Pointer<Utf16> pServerPrincName,
  int dwAuthnLevel,
  int dwImpLevel,
  Pointer pAuthInfo,
  int dwCapabilities,
) =>
    _CoSetProxyBlanket(
      pProxy,
      dwAuthnSvc,
      dwAuthzSvc,
      pServerPrincName,
      dwAuthnLevel,
      dwImpLevel,
      pAuthInfo,
      dwCapabilities,
    );

late final _CoSetProxyBlanket = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pProxy,
  Uint32 dwAuthnSvc,
  Uint32 dwAuthzSvc,
  Pointer<Utf16> pServerPrincName,
  Uint32 dwAuthnLevel,
  Uint32 dwImpLevel,
  Pointer pAuthInfo,
  Int32 dwCapabilities,
),
    int Function(
  Pointer<COMObject> pProxy,
  int dwAuthnSvc,
  int dwAuthzSvc,
  Pointer<Utf16> pServerPrincName,
  int dwAuthnLevel,
  int dwImpLevel,
  Pointer pAuthInfo,
  int dwCapabilities,
)>('CoSetProxyBlanket');

int CoSuspendClassObjects() => _CoSuspendClassObjects();

late final _CoSuspendClassObjects = _ole32
    .lookupFunction<Int32 Function(), int Function()>('CoSuspendClassObjects');

int CoSwitchCallContext(
  Pointer<COMObject> pNewObject,
  Pointer<Pointer<COMObject>> ppOldObject,
) =>
    _CoSwitchCallContext(
      pNewObject,
      ppOldObject,
    );

late final _CoSwitchCallContext = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pNewObject,
  Pointer<Pointer<COMObject>> ppOldObject,
),
    int Function(
  Pointer<COMObject> pNewObject,
  Pointer<Pointer<COMObject>> ppOldObject,
)>('CoSwitchCallContext');

Pointer CoTaskMemAlloc(
  int cb,
) =>
    _CoTaskMemAlloc(
      cb,
    );

late final _CoTaskMemAlloc = _ole32.lookupFunction<
    Pointer Function(
  IntPtr cb,
),
    Pointer Function(
  int cb,
)>('CoTaskMemAlloc');

void CoTaskMemFree(
  Pointer pv,
) =>
    _CoTaskMemFree(
      pv,
    );

late final _CoTaskMemFree = _ole32.lookupFunction<
    Void Function(
  Pointer pv,
),
    void Function(
  Pointer pv,
)>('CoTaskMemFree');

Pointer CoTaskMemRealloc(
  Pointer pv,
  int cb,
) =>
    _CoTaskMemRealloc(
      pv,
      cb,
    );

late final _CoTaskMemRealloc = _ole32.lookupFunction<
    Pointer Function(
  Pointer pv,
  IntPtr cb,
),
    Pointer Function(
  Pointer pv,
  int cb,
)>('CoTaskMemRealloc');

int CoTestCancel() => _CoTestCancel();

late final _CoTestCancel =
    _ole32.lookupFunction<Int32 Function(), int Function()>('CoTestCancel');

int CoTreatAsClass(
  Pointer<GUID> clsidOld,
  Pointer<GUID> clsidNew,
) =>
    _CoTreatAsClass(
      clsidOld,
      clsidNew,
    );

late final _CoTreatAsClass = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> clsidOld,
  Pointer<GUID> clsidNew,
),
    int Function(
  Pointer<GUID> clsidOld,
  Pointer<GUID> clsidNew,
)>('CoTreatAsClass');

void CoUninitialize() => _CoUninitialize();

late final _CoUninitialize =
    _ole32.lookupFunction<Void Function(), void Function()>('CoUninitialize');

int CoWaitForMultipleHandles(
  int dwFlags,
  int dwTimeout,
  int cHandles,
  Pointer<IntPtr> pHandles,
  Pointer<Uint32> lpdwindex,
) =>
    _CoWaitForMultipleHandles(
      dwFlags,
      dwTimeout,
      cHandles,
      pHandles,
      lpdwindex,
    );

late final _CoWaitForMultipleHandles = _ole32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Uint32 dwTimeout,
  Uint32 cHandles,
  Pointer<IntPtr> pHandles,
  Pointer<Uint32> lpdwindex,
),
    int Function(
  int dwFlags,
  int dwTimeout,
  int cHandles,
  Pointer<IntPtr> pHandles,
  Pointer<Uint32> lpdwindex,
)>('CoWaitForMultipleHandles');

int CoWaitForMultipleObjects(
  int dwFlags,
  int dwTimeout,
  int cHandles,
  Pointer<IntPtr> pHandles,
  Pointer<Uint32> lpdwindex,
) =>
    _CoWaitForMultipleObjects(
      dwFlags,
      dwTimeout,
      cHandles,
      pHandles,
      lpdwindex,
    );

late final _CoWaitForMultipleObjects = _ole32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Uint32 dwTimeout,
  Uint32 cHandles,
  Pointer<IntPtr> pHandles,
  Pointer<Uint32> lpdwindex,
),
    int Function(
  int dwFlags,
  int dwTimeout,
  int cHandles,
  Pointer<IntPtr> pHandles,
  Pointer<Uint32> lpdwindex,
)>('CoWaitForMultipleObjects');

int CreateAntiMoniker(
  Pointer<Pointer<COMObject>> ppmk,
) =>
    _CreateAntiMoniker(
      ppmk,
    );

late final _CreateAntiMoniker = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppmk,
),
    int Function(
  Pointer<Pointer<COMObject>> ppmk,
)>('CreateAntiMoniker');

int CreateBindCtx(
  int reserved,
  Pointer<Pointer<COMObject>> ppbc,
) =>
    _CreateBindCtx(
      reserved,
      ppbc,
    );

late final _CreateBindCtx = _ole32.lookupFunction<
    Int32 Function(
  Uint32 reserved,
  Pointer<Pointer<COMObject>> ppbc,
),
    int Function(
  int reserved,
  Pointer<Pointer<COMObject>> ppbc,
)>('CreateBindCtx');

int CreateClassMoniker(
  Pointer<GUID> rclsid,
  Pointer<Pointer<COMObject>> ppmk,
) =>
    _CreateClassMoniker(
      rclsid,
      ppmk,
    );

late final _CreateClassMoniker = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> rclsid,
  Pointer<Pointer<COMObject>> ppmk,
),
    int Function(
  Pointer<GUID> rclsid,
  Pointer<Pointer<COMObject>> ppmk,
)>('CreateClassMoniker');

int CreateDataAdviseHolder(
  Pointer<Pointer<COMObject>> ppDAHolder,
) =>
    _CreateDataAdviseHolder(
      ppDAHolder,
    );

late final _CreateDataAdviseHolder = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppDAHolder,
),
    int Function(
  Pointer<Pointer<COMObject>> ppDAHolder,
)>('CreateDataAdviseHolder');

int CreateDataCache(
  Pointer<COMObject> pUnkOuter,
  Pointer<GUID> rclsid,
  Pointer<GUID> iid,
  Pointer<Pointer> ppv,
) =>
    _CreateDataCache(
      pUnkOuter,
      rclsid,
      iid,
      ppv,
    );

late final _CreateDataCache = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnkOuter,
  Pointer<GUID> rclsid,
  Pointer<GUID> iid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> pUnkOuter,
  Pointer<GUID> rclsid,
  Pointer<GUID> iid,
  Pointer<Pointer> ppv,
)>('CreateDataCache');

int CreateFileMoniker(
  Pointer<Utf16> lpszPathName,
  Pointer<Pointer<COMObject>> ppmk,
) =>
    _CreateFileMoniker(
      lpszPathName,
      ppmk,
    );

late final _CreateFileMoniker = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszPathName,
  Pointer<Pointer<COMObject>> ppmk,
),
    int Function(
  Pointer<Utf16> lpszPathName,
  Pointer<Pointer<COMObject>> ppmk,
)>('CreateFileMoniker');

int CreateGenericComposite(
  Pointer<COMObject> pmkFirst,
  Pointer<COMObject> pmkRest,
  Pointer<Pointer<COMObject>> ppmkComposite,
) =>
    _CreateGenericComposite(
      pmkFirst,
      pmkRest,
      ppmkComposite,
    );

late final _CreateGenericComposite = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pmkFirst,
  Pointer<COMObject> pmkRest,
  Pointer<Pointer<COMObject>> ppmkComposite,
),
    int Function(
  Pointer<COMObject> pmkFirst,
  Pointer<COMObject> pmkRest,
  Pointer<Pointer<COMObject>> ppmkComposite,
)>('CreateGenericComposite');

int CreateItemMoniker(
  Pointer<Utf16> lpszDelim,
  Pointer<Utf16> lpszItem,
  Pointer<Pointer<COMObject>> ppmk,
) =>
    _CreateItemMoniker(
      lpszDelim,
      lpszItem,
      ppmk,
    );

late final _CreateItemMoniker = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszDelim,
  Pointer<Utf16> lpszItem,
  Pointer<Pointer<COMObject>> ppmk,
),
    int Function(
  Pointer<Utf16> lpszDelim,
  Pointer<Utf16> lpszItem,
  Pointer<Pointer<COMObject>> ppmk,
)>('CreateItemMoniker');

int CreateObjrefMoniker(
  Pointer<COMObject> punk,
  Pointer<Pointer<COMObject>> ppmk,
) =>
    _CreateObjrefMoniker(
      punk,
      ppmk,
    );

late final _CreateObjrefMoniker = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punk,
  Pointer<Pointer<COMObject>> ppmk,
),
    int Function(
  Pointer<COMObject> punk,
  Pointer<Pointer<COMObject>> ppmk,
)>('CreateObjrefMoniker');

int CreatePointerMoniker(
  Pointer<COMObject> punk,
  Pointer<Pointer<COMObject>> ppmk,
) =>
    _CreatePointerMoniker(
      punk,
      ppmk,
    );

late final _CreatePointerMoniker = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punk,
  Pointer<Pointer<COMObject>> ppmk,
),
    int Function(
  Pointer<COMObject> punk,
  Pointer<Pointer<COMObject>> ppmk,
)>('CreatePointerMoniker');

int CreateStdProgressIndicator(
  int hwndParent,
  Pointer<Utf16> pszTitle,
  Pointer<COMObject> pIbscCaller,
  Pointer<Pointer<COMObject>> ppIbsc,
) =>
    _CreateStdProgressIndicator(
      hwndParent,
      pszTitle,
      pIbscCaller,
      ppIbsc,
    );

late final _CreateStdProgressIndicator = _ole32.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
  Pointer<Utf16> pszTitle,
  Pointer<COMObject> pIbscCaller,
  Pointer<Pointer<COMObject>> ppIbsc,
),
    int Function(
  int hwndParent,
  Pointer<Utf16> pszTitle,
  Pointer<COMObject> pIbscCaller,
  Pointer<Pointer<COMObject>> ppIbsc,
)>('CreateStdProgressIndicator');

int DcomChannelSetHResult(
  Pointer pvReserved,
  Pointer<Uint32> pulReserved,
  int appsHR,
) =>
    _DcomChannelSetHResult(
      pvReserved,
      pulReserved,
      appsHR,
    );

late final _DcomChannelSetHResult = _ole32.lookupFunction<
    Int32 Function(
  Pointer pvReserved,
  Pointer<Uint32> pulReserved,
  Int32 appsHR,
),
    int Function(
  Pointer pvReserved,
  Pointer<Uint32> pulReserved,
  int appsHR,
)>('DcomChannelSetHResult');

int GetClassFile(
  Pointer<Utf16> szFilename,
  Pointer<GUID> pclsid,
) =>
    _GetClassFile(
      szFilename,
      pclsid,
    );

late final _GetClassFile = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szFilename,
  Pointer<GUID> pclsid,
),
    int Function(
  Pointer<Utf16> szFilename,
  Pointer<GUID> pclsid,
)>('GetClassFile');

int GetRunningObjectTable(
  int reserved,
  Pointer<Pointer<COMObject>> pprot,
) =>
    _GetRunningObjectTable(
      reserved,
      pprot,
    );

late final _GetRunningObjectTable = _ole32.lookupFunction<
    Int32 Function(
  Uint32 reserved,
  Pointer<Pointer<COMObject>> pprot,
),
    int Function(
  int reserved,
  Pointer<Pointer<COMObject>> pprot,
)>('GetRunningObjectTable');

int IIDFromString(
  Pointer<Utf16> lpsz,
  Pointer<GUID> lpiid,
) =>
    _IIDFromString(
      lpsz,
      lpiid,
    );

late final _IIDFromString = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpsz,
  Pointer<GUID> lpiid,
),
    int Function(
  Pointer<Utf16> lpsz,
  Pointer<GUID> lpiid,
)>('IIDFromString');

int MkParseDisplayName(
  Pointer<COMObject> pbc,
  Pointer<Utf16> szUserName,
  Pointer<Uint32> pchEaten,
  Pointer<Pointer<COMObject>> ppmk,
) =>
    _MkParseDisplayName(
      pbc,
      szUserName,
      pchEaten,
      ppmk,
    );

late final _MkParseDisplayName = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pbc,
  Pointer<Utf16> szUserName,
  Pointer<Uint32> pchEaten,
  Pointer<Pointer<COMObject>> ppmk,
),
    int Function(
  Pointer<COMObject> pbc,
  Pointer<Utf16> szUserName,
  Pointer<Uint32> pchEaten,
  Pointer<Pointer<COMObject>> ppmk,
)>('MkParseDisplayName');

int MonikerCommonPrefixWith(
  Pointer<COMObject> pmkThis,
  Pointer<COMObject> pmkOther,
  Pointer<Pointer<COMObject>> ppmkCommon,
) =>
    _MonikerCommonPrefixWith(
      pmkThis,
      pmkOther,
      ppmkCommon,
    );

late final _MonikerCommonPrefixWith = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pmkThis,
  Pointer<COMObject> pmkOther,
  Pointer<Pointer<COMObject>> ppmkCommon,
),
    int Function(
  Pointer<COMObject> pmkThis,
  Pointer<COMObject> pmkOther,
  Pointer<Pointer<COMObject>> ppmkCommon,
)>('MonikerCommonPrefixWith');

int MonikerRelativePathTo(
  Pointer<COMObject> pmkSrc,
  Pointer<COMObject> pmkDest,
  Pointer<Pointer<COMObject>> ppmkRelPath,
  int dwReserved,
) =>
    _MonikerRelativePathTo(
      pmkSrc,
      pmkDest,
      ppmkRelPath,
      dwReserved,
    );

late final _MonikerRelativePathTo = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pmkSrc,
  Pointer<COMObject> pmkDest,
  Pointer<Pointer<COMObject>> ppmkRelPath,
  Int32 dwReserved,
),
    int Function(
  Pointer<COMObject> pmkSrc,
  Pointer<COMObject> pmkDest,
  Pointer<Pointer<COMObject>> ppmkRelPath,
  int dwReserved,
)>('MonikerRelativePathTo');

int ProgIDFromCLSID(
  Pointer<GUID> clsid,
  Pointer<Pointer<Utf16>> lplpszProgID,
) =>
    _ProgIDFromCLSID(
      clsid,
      lplpszProgID,
    );

late final _ProgIDFromCLSID = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> clsid,
  Pointer<Pointer<Utf16>> lplpszProgID,
),
    int Function(
  Pointer<GUID> clsid,
  Pointer<Pointer<Utf16>> lplpszProgID,
)>('ProgIDFromCLSID');

int StringFromCLSID(
  Pointer<GUID> rclsid,
  Pointer<Pointer<Utf16>> lplpsz,
) =>
    _StringFromCLSID(
      rclsid,
      lplpsz,
    );

late final _StringFromCLSID = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> rclsid,
  Pointer<Pointer<Utf16>> lplpsz,
),
    int Function(
  Pointer<GUID> rclsid,
  Pointer<Pointer<Utf16>> lplpsz,
)>('StringFromCLSID');

int StringFromGUID2(
  Pointer<GUID> rguid,
  Pointer<Utf16> lpsz,
  int cchMax,
) =>
    _StringFromGUID2(
      rguid,
      lpsz,
      cchMax,
    );

late final _StringFromGUID2 = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> rguid,
  Pointer<Utf16> lpsz,
  Int32 cchMax,
),
    int Function(
  Pointer<GUID> rguid,
  Pointer<Utf16> lpsz,
  int cchMax,
)>('StringFromGUID2');

int StringFromIID(
  Pointer<GUID> rclsid,
  Pointer<Pointer<Utf16>> lplpsz,
) =>
    _StringFromIID(
      rclsid,
      lplpsz,
    );

late final _StringFromIID = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> rclsid,
  Pointer<Pointer<Utf16>> lplpsz,
),
    int Function(
  Pointer<GUID> rclsid,
  Pointer<Pointer<Utf16>> lplpsz,
)>('StringFromIID');

// -----------------------------------------------------------------------
// urlmon.dll
// -----------------------------------------------------------------------
final _urlmon = DynamicLibrary.open('urlmon.dll');

int CreateIUriBuilder(
  Pointer<COMObject> pIUri,
  int dwFlags,
  int dwReserved,
  Pointer<Pointer<COMObject>> ppIUriBuilder,
) =>
    _CreateIUriBuilder(
      pIUri,
      dwFlags,
      dwReserved,
      ppIUriBuilder,
    );

late final _CreateIUriBuilder = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pIUri,
  Uint32 dwFlags,
  IntPtr dwReserved,
  Pointer<Pointer<COMObject>> ppIUriBuilder,
),
    int Function(
  Pointer<COMObject> pIUri,
  int dwFlags,
  int dwReserved,
  Pointer<Pointer<COMObject>> ppIUriBuilder,
)>('CreateIUriBuilder');

int CreateUri(
  Pointer<Utf16> pwzURI,
  int dwFlags,
  int dwReserved,
  Pointer<Pointer<COMObject>> ppURI,
) =>
    _CreateUri(
      pwzURI,
      dwFlags,
      dwReserved,
      ppURI,
    );

late final _CreateUri = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzURI,
  Uint32 dwFlags,
  IntPtr dwReserved,
  Pointer<Pointer<COMObject>> ppURI,
),
    int Function(
  Pointer<Utf16> pwzURI,
  int dwFlags,
  int dwReserved,
  Pointer<Pointer<COMObject>> ppURI,
)>('CreateUri');

int CreateUriFromMultiByteString(
  Pointer<Utf8> pszANSIInputUri,
  int dwEncodingFlags,
  int dwCodePage,
  int dwCreateFlags,
  int dwReserved,
  Pointer<Pointer<COMObject>> ppUri,
) =>
    _CreateUriFromMultiByteString(
      pszANSIInputUri,
      dwEncodingFlags,
      dwCodePage,
      dwCreateFlags,
      dwReserved,
      ppUri,
    );

late final _CreateUriFromMultiByteString = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Utf8> pszANSIInputUri,
  Uint32 dwEncodingFlags,
  Uint32 dwCodePage,
  Uint32 dwCreateFlags,
  IntPtr dwReserved,
  Pointer<Pointer<COMObject>> ppUri,
),
    int Function(
  Pointer<Utf8> pszANSIInputUri,
  int dwEncodingFlags,
  int dwCodePage,
  int dwCreateFlags,
  int dwReserved,
  Pointer<Pointer<COMObject>> ppUri,
)>('CreateUriFromMultiByteString');

int CreateUriWithFragment(
  Pointer<Utf16> pwzURI,
  Pointer<Utf16> pwzFragment,
  int dwFlags,
  int dwReserved,
  Pointer<Pointer<COMObject>> ppURI,
) =>
    _CreateUriWithFragment(
      pwzURI,
      pwzFragment,
      dwFlags,
      dwReserved,
      ppURI,
    );

late final _CreateUriWithFragment = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzURI,
  Pointer<Utf16> pwzFragment,
  Uint32 dwFlags,
  IntPtr dwReserved,
  Pointer<Pointer<COMObject>> ppURI,
),
    int Function(
  Pointer<Utf16> pwzURI,
  Pointer<Utf16> pwzFragment,
  int dwFlags,
  int dwReserved,
  Pointer<Pointer<COMObject>> ppURI,
)>('CreateUriWithFragment');

// -----------------------------------------------------------------------
// oleaut32.dll
// -----------------------------------------------------------------------
final _oleaut32 = DynamicLibrary.open('oleaut32.dll');

int GetErrorInfo(
  int dwReserved,
  Pointer<Pointer<COMObject>> pperrinfo,
) =>
    _GetErrorInfo(
      dwReserved,
      pperrinfo,
    );

late final _GetErrorInfo = _oleaut32.lookupFunction<
    Int32 Function(
  Uint32 dwReserved,
  Pointer<Pointer<COMObject>> pperrinfo,
),
    int Function(
  int dwReserved,
  Pointer<Pointer<COMObject>> pperrinfo,
)>('GetErrorInfo');

int SetErrorInfo(
  int dwReserved,
  Pointer<COMObject> perrinfo,
) =>
    _SetErrorInfo(
      dwReserved,
      perrinfo,
    );

late final _SetErrorInfo = _oleaut32.lookupFunction<
    Int32 Function(
  Uint32 dwReserved,
  Pointer<COMObject> perrinfo,
),
    int Function(
  int dwReserved,
  Pointer<COMObject> perrinfo,
)>('SetErrorInfo');
