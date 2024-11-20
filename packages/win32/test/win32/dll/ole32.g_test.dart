// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import,
// ignore_for_file: unused_local_variable

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('ole32.dll', () {
    test('CLSIDFromProgID can be instantiated', () {
      check(_CLSIDFromProgID).isA<Function>();
    });
    test('CLSIDFromProgIDEx can be instantiated', () {
      check(_CLSIDFromProgIDEx).isA<Function>();
    });
    test('CLSIDFromString can be instantiated', () {
      check(_CLSIDFromString).isA<Function>();
    });
    test('CoAddRefServerProcess can be instantiated', () {
      check(_CoAddRefServerProcess).isA<Function>();
    });
    test('CoCreateGuid can be instantiated', () {
      check(_CoCreateGuid).isA<Function>();
    });
    test('CoCreateInstance can be instantiated', () {
      check(_CoCreateInstance).isA<Function>();
    });
    test('CoDecrementMTAUsage can be instantiated', () {
      check(_CoDecrementMTAUsage).isA<Function>();
    });
    test('CoGetApartmentType can be instantiated', () {
      check(_CoGetApartmentType).isA<Function>();
    });
    test('CoGetClassObject can be instantiated', () {
      check(_CoGetClassObject).isA<Function>();
    });
    test('CoGetCurrentProcess can be instantiated', () {
      check(_CoGetCurrentProcess).isA<Function>();
    });
    test('CoGetMalloc can be instantiated', () {
      check(_CoGetMalloc).isA<Function>();
    });
    test('CoIncrementMTAUsage can be instantiated', () {
      check(_CoIncrementMTAUsage).isA<Function>();
    });
    test('CoInitializeEx can be instantiated', () {
      check(_CoInitializeEx).isA<Function>();
    });
    test('CoInitializeSecurity can be instantiated', () {
      check(_CoInitializeSecurity).isA<Function>();
    });
    test('CoSetProxyBlanket can be instantiated', () {
      check(_CoSetProxyBlanket).isA<Function>();
    });
    test('CoTaskMemAlloc can be instantiated', () {
      check(_CoTaskMemAlloc).isA<Function>();
    });
    test('CoTaskMemFree can be instantiated', () {
      check(_CoTaskMemFree).isA<Function>();
    });
    test('CoTaskMemRealloc can be instantiated', () {
      check(_CoTaskMemRealloc).isA<Function>();
    });
    test('CoUninitialize can be instantiated', () {
      check(_CoUninitialize).isA<Function>();
    });
    test('CoWaitForMultipleHandles can be instantiated', () {
      check(_CoWaitForMultipleHandles).isA<Function>();
    });
    test(
      'CoWaitForMultipleObjects can be instantiated',
      skip: 10586 > windowsBuildNumber,
      () {
        check(_CoWaitForMultipleObjects).isA<Function>();
      },
    );
    test('CreateStreamOnHGlobal can be instantiated', () {
      check(_CreateStreamOnHGlobal).isA<Function>();
    });
    test('GetClassFile can be instantiated', () {
      check(_GetClassFile).isA<Function>();
    });
    test('GetHGlobalFromStream can be instantiated', () {
      check(_GetHGlobalFromStream).isA<Function>();
    });
    test('IIDFromString can be instantiated', () {
      check(_IIDFromString).isA<Function>();
    });
    test('OleInitialize can be instantiated', () {
      check(_OleInitialize).isA<Function>();
    });
    test('OleUninitialize can be instantiated', () {
      check(_OleUninitialize).isA<Function>();
    });
    test('ProgIDFromCLSID can be instantiated', () {
      check(_ProgIDFromCLSID).isA<Function>();
    });
    test('PropVariantClear can be instantiated', () {
      check(_PropVariantClear).isA<Function>();
    });
    test('PropVariantCopy can be instantiated', () {
      check(_PropVariantCopy).isA<Function>();
    });
    test('StringFromCLSID can be instantiated', () {
      check(_StringFromCLSID).isA<Function>();
    });
    test('StringFromGUID2 can be instantiated', () {
      check(_StringFromGUID2).isA<Function>();
    });
    test('StringFromIID can be instantiated', () {
      check(_StringFromIID).isA<Function>();
    });
  });
}

@Native<Int32 Function(PCWSTR, Pointer<GUID>)>(symbol: 'CLSIDFromProgID')
external int _CLSIDFromProgID(PCWSTR lpszProgID, Pointer<GUID> lpclsid);

@Native<Int32 Function(PCWSTR, Pointer<GUID>)>(symbol: 'CLSIDFromProgIDEx')
external int _CLSIDFromProgIDEx(PCWSTR lpszProgID, Pointer<GUID> lpclsid);

@Native<Int32 Function(PCWSTR, Pointer<GUID>)>(symbol: 'CLSIDFromString')
external int _CLSIDFromString(PCWSTR lpsz, Pointer<GUID> pclsid);

@Native<Uint32 Function()>(symbol: 'CoAddRefServerProcess')
external int _CoAddRefServerProcess();

@Native<Int32 Function(Pointer<GUID>)>(symbol: 'CoCreateGuid')
external int _CoCreateGuid(Pointer<GUID> pguid);

@Native<
  Int32 Function(
    Pointer<GUID>,
    VTablePointer,
    Uint32,
    Pointer<GUID>,
    Pointer<Pointer>,
  )
>(symbol: 'CoCreateInstance')
external int _CoCreateInstance(
  Pointer<GUID> rclsid,
  VTablePointer pUnkOuter,
  int dwClsContext,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
);

@Native<Int32 Function(CO_MTA_USAGE_COOKIE)>(symbol: 'CoDecrementMTAUsage')
external int _CoDecrementMTAUsage(int cookie);

@Native<Int32 Function(Pointer<Int32>, Pointer<Int32>)>(
  symbol: 'CoGetApartmentType',
)
external int _CoGetApartmentType(
  Pointer<Int32> pAptType,
  Pointer<Int32> pAptQualifier,
);

@Native<
  Int32 Function(
    Pointer<GUID>,
    Uint32,
    Pointer,
    Pointer<GUID>,
    Pointer<Pointer>,
  )
>(symbol: 'CoGetClassObject')
external int _CoGetClassObject(
  Pointer<GUID> rclsid,
  int dwClsContext,
  Pointer pvReserved,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
);

@Native<Uint32 Function()>(symbol: 'CoGetCurrentProcess')
external int _CoGetCurrentProcess();

@Native<Int32 Function(Uint32, Pointer<VTablePointer>)>(symbol: 'CoGetMalloc')
external int _CoGetMalloc(int dwMemContext, Pointer<VTablePointer> ppMalloc);

@Native<Int32 Function(Pointer<CO_MTA_USAGE_COOKIE>)>(
  symbol: 'CoIncrementMTAUsage',
)
external int _CoIncrementMTAUsage(Pointer<CO_MTA_USAGE_COOKIE> pCookie);

@Native<Int32 Function(Pointer, Uint32)>(symbol: 'CoInitializeEx')
external int _CoInitializeEx(Pointer pvReserved, int dwCoInit);

@Native<
  Int32 Function(
    PSECURITY_DESCRIPTOR,
    Int32,
    Pointer<SOLE_AUTHENTICATION_SERVICE>,
    Pointer,
    Uint32,
    Uint32,
    Pointer,
    Uint32,
    Pointer,
  )
>(symbol: 'CoInitializeSecurity')
external int _CoInitializeSecurity(
  int pSecDesc,
  int cAuthSvc,
  Pointer<SOLE_AUTHENTICATION_SERVICE> asAuthSvc,
  Pointer pReserved1,
  int dwAuthnLevel,
  int dwImpLevel,
  Pointer pAuthList,
  int dwCapabilities,
  Pointer pReserved3,
);

@Native<
  Int32 Function(
    VTablePointer,
    Uint32,
    Uint32,
    PCWSTR,
    Uint32,
    Uint32,
    Pointer,
    Uint32,
  )
>(symbol: 'CoSetProxyBlanket')
external int _CoSetProxyBlanket(
  VTablePointer pProxy,
  int dwAuthnSvc,
  int dwAuthzSvc,
  PCWSTR pServerPrincName,
  int dwAuthnLevel,
  int dwImpLevel,
  Pointer pAuthInfo,
  int dwCapabilities,
);

@Native<Pointer Function(IntPtr)>(symbol: 'CoTaskMemAlloc')
external Pointer _CoTaskMemAlloc(int cb);

@Native<Void Function(Pointer)>(symbol: 'CoTaskMemFree')
external void _CoTaskMemFree(Pointer pv);

@Native<Pointer Function(Pointer, IntPtr)>(symbol: 'CoTaskMemRealloc')
external Pointer _CoTaskMemRealloc(Pointer pv, int cb);

@Native<Void Function()>(symbol: 'CoUninitialize')
external void _CoUninitialize();

@Native<
  Int32 Function(Uint32, Uint32, Uint32, Pointer<HANDLE>, Pointer<Uint32>)
>(symbol: 'CoWaitForMultipleHandles')
external int _CoWaitForMultipleHandles(
  int dwFlags,
  int dwTimeout,
  int cHandles,
  Pointer<HANDLE> pHandles,
  Pointer<Uint32> lpdwindex,
);

@Native<
  Int32 Function(Uint32, Uint32, Uint32, Pointer<HANDLE>, Pointer<Uint32>)
>(symbol: 'CoWaitForMultipleObjects')
external int _CoWaitForMultipleObjects(
  int dwFlags,
  int dwTimeout,
  int cHandles,
  Pointer<HANDLE> pHandles,
  Pointer<Uint32> lpdwindex,
);

@Native<Int32 Function(HGLOBAL, BOOL, Pointer<VTablePointer>)>(
  symbol: 'CreateStreamOnHGlobal',
)
external int _CreateStreamOnHGlobal(
  int hGlobal,
  int fDeleteOnRelease,
  Pointer<VTablePointer> ppstm,
);

@Native<Int32 Function(PCWSTR, Pointer<GUID>)>(symbol: 'GetClassFile')
external int _GetClassFile(PCWSTR szFilename, Pointer<GUID> pclsid);

@Native<Int32 Function(VTablePointer, Pointer<HGLOBAL>)>(
  symbol: 'GetHGlobalFromStream',
)
external int _GetHGlobalFromStream(
  VTablePointer pstm,
  Pointer<HGLOBAL> phglobal,
);

@Native<Int32 Function(PCWSTR, Pointer<GUID>)>(symbol: 'IIDFromString')
external int _IIDFromString(PCWSTR lpsz, Pointer<GUID> lpiid);

@Native<Int32 Function(Pointer)>(symbol: 'OleInitialize')
external int _OleInitialize(Pointer pvReserved);

@Native<Void Function()>(symbol: 'OleUninitialize')
external void _OleUninitialize();

@Native<Int32 Function(Pointer<GUID>, Pointer<PWSTR>)>(
  symbol: 'ProgIDFromCLSID',
)
external int _ProgIDFromCLSID(Pointer<GUID> clsid, Pointer<PWSTR> lplpszProgID);

@Native<Int32 Function(Pointer<PROPVARIANT>)>(symbol: 'PropVariantClear')
external int _PropVariantClear(Pointer<PROPVARIANT> pvar);

@Native<Int32 Function(Pointer<PROPVARIANT>, Pointer<PROPVARIANT>)>(
  symbol: 'PropVariantCopy',
)
external int _PropVariantCopy(
  Pointer<PROPVARIANT> pvarDest,
  Pointer<PROPVARIANT> pvarSrc,
);

@Native<Int32 Function(Pointer<GUID>, Pointer<PWSTR>)>(
  symbol: 'StringFromCLSID',
)
external int _StringFromCLSID(Pointer<GUID> rclsid, Pointer<PWSTR> lplpsz);

@Native<Int32 Function(Pointer<GUID>, PWSTR, Int32)>(symbol: 'StringFromGUID2')
external int _StringFromGUID2(Pointer<GUID> rguid, PWSTR lpsz, int cchMax);

@Native<Int32 Function(Pointer<GUID>, Pointer<PWSTR>)>(symbol: 'StringFromIID')
external int _StringFromIID(Pointer<GUID> rclsid, Pointer<PWSTR> lplpsz);
