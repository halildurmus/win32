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
  group('oleaut32.dll', () {
    test('DosDateTimeToVariantTime can be instantiated', () {
      check(_DosDateTimeToVariantTime).isA<Function>();
    });
    test('GetActiveObject can be instantiated', () {
      check(_GetActiveObject).isA<Function>();
    });
    test('SafeArrayAccessData can be instantiated', () {
      check(_SafeArrayAccessData).isA<Function>();
    });
    test('SafeArrayAddRef can be instantiated', () {
      check(_SafeArrayAddRef).isA<Function>();
    });
    test('SafeArrayAllocData can be instantiated', () {
      check(_SafeArrayAllocData).isA<Function>();
    });
    test('SafeArrayAllocDescriptor can be instantiated', () {
      check(_SafeArrayAllocDescriptor).isA<Function>();
    });
    test('SafeArrayAllocDescriptorEx can be instantiated', () {
      check(_SafeArrayAllocDescriptorEx).isA<Function>();
    });
    test('SafeArrayCopy can be instantiated', () {
      check(_SafeArrayCopy).isA<Function>();
    });
    test('SafeArrayCopyData can be instantiated', () {
      check(_SafeArrayCopyData).isA<Function>();
    });
    test('SafeArrayCreate can be instantiated', () {
      check(_SafeArrayCreate).isA<Function>();
    });
    test('SafeArrayCreateEx can be instantiated', () {
      check(_SafeArrayCreateEx).isA<Function>();
    });
    test('SafeArrayCreateVector can be instantiated', () {
      check(_SafeArrayCreateVector).isA<Function>();
    });
    test('SafeArrayCreateVectorEx can be instantiated', () {
      check(_SafeArrayCreateVectorEx).isA<Function>();
    });
    test('SafeArrayDestroy can be instantiated', () {
      check(_SafeArrayDestroy).isA<Function>();
    });
    test('SafeArrayDestroyData can be instantiated', () {
      check(_SafeArrayDestroyData).isA<Function>();
    });
    test('SafeArrayDestroyDescriptor can be instantiated', () {
      check(_SafeArrayDestroyDescriptor).isA<Function>();
    });
    test('SafeArrayGetDim can be instantiated', () {
      check(_SafeArrayGetDim).isA<Function>();
    });
    test('SafeArrayGetElement can be instantiated', () {
      check(_SafeArrayGetElement).isA<Function>();
    });
    test('SafeArrayGetElemsize can be instantiated', () {
      check(_SafeArrayGetElemsize).isA<Function>();
    });
    test('SafeArrayGetIID can be instantiated', () {
      check(_SafeArrayGetIID).isA<Function>();
    });
    test('SafeArrayGetLBound can be instantiated', () {
      check(_SafeArrayGetLBound).isA<Function>();
    });
    test('SafeArrayGetRecordInfo can be instantiated', () {
      check(_SafeArrayGetRecordInfo).isA<Function>();
    });
    test('SafeArrayGetUBound can be instantiated', () {
      check(_SafeArrayGetUBound).isA<Function>();
    });
    test('SafeArrayGetVartype can be instantiated', () {
      check(_SafeArrayGetVartype).isA<Function>();
    });
    test('SafeArrayLock can be instantiated', () {
      check(_SafeArrayLock).isA<Function>();
    });
    test('SafeArrayPtrOfIndex can be instantiated', () {
      check(_SafeArrayPtrOfIndex).isA<Function>();
    });
    test('SafeArrayPutElement can be instantiated', () {
      check(_SafeArrayPutElement).isA<Function>();
    });
    test('SafeArrayRedim can be instantiated', () {
      check(_SafeArrayRedim).isA<Function>();
    });
    test('SafeArrayReleaseData can be instantiated', () {
      check(_SafeArrayReleaseData).isA<Function>();
    });
    test('SafeArrayReleaseDescriptor can be instantiated', () {
      check(_SafeArrayReleaseDescriptor).isA<Function>();
    });
    test('SafeArraySetIID can be instantiated', () {
      check(_SafeArraySetIID).isA<Function>();
    });
    test('SafeArraySetRecordInfo can be instantiated', () {
      check(_SafeArraySetRecordInfo).isA<Function>();
    });
    test('SafeArrayUnaccessData can be instantiated', () {
      check(_SafeArrayUnaccessData).isA<Function>();
    });
    test('SafeArrayUnlock can be instantiated', () {
      check(_SafeArrayUnlock).isA<Function>();
    });
    test('SysAllocString can be instantiated', () {
      check(_SysAllocString).isA<Function>();
    });
    test('SysAllocStringByteLen can be instantiated', () {
      check(_SysAllocStringByteLen).isA<Function>();
    });
    test('SysAllocStringLen can be instantiated', () {
      check(_SysAllocStringLen).isA<Function>();
    });
    test('SysFreeString can be instantiated', () {
      check(_SysFreeString).isA<Function>();
    });
    test('SysReAllocString can be instantiated', () {
      check(_SysReAllocString).isA<Function>();
    });
    test('SysReAllocStringLen can be instantiated', () {
      check(_SysReAllocStringLen).isA<Function>();
    });
    test('SysReleaseString can be instantiated', () {
      check(_SysReleaseString).isA<Function>();
    });
    test('SysStringByteLen can be instantiated', () {
      check(_SysStringByteLen).isA<Function>();
    });
    test('SysStringLen can be instantiated', () {
      check(_SysStringLen).isA<Function>();
    });
    test('VarBstrCat can be instantiated', () {
      check(_VarBstrCat).isA<Function>();
    });
    test('VarBstrCmp can be instantiated', () {
      check(_VarBstrCmp).isA<Function>();
    });
    test('VariantChangeType can be instantiated', () {
      check(_VariantChangeType).isA<Function>();
    });
    test('VariantClear can be instantiated', () {
      check(_VariantClear).isA<Function>();
    });
    test('VariantCopy can be instantiated', () {
      check(_VariantCopy).isA<Function>();
    });
    test('VariantInit can be instantiated', () {
      check(_VariantInit).isA<Function>();
    });
    test('VariantTimeToDosDateTime can be instantiated', () {
      check(_VariantTimeToDosDateTime).isA<Function>();
    });
    test('VariantTimeToSystemTime can be instantiated', () {
      check(_VariantTimeToSystemTime).isA<Function>();
    });
  });
}

@Native<Int32 Function(Uint16, Uint16, Pointer<Double>)>(
  symbol: 'DosDateTimeToVariantTime',
)
external int _DosDateTimeToVariantTime(
  int wDosDate,
  int wDosTime,
  Pointer<Double> pvtime,
);

@Native<Int32 Function(Pointer<GUID>, Pointer, Pointer<VTablePointer>)>(
  symbol: 'GetActiveObject',
)
external int _GetActiveObject(
  Pointer<GUID> rclsid,
  Pointer pvReserved,
  Pointer<VTablePointer> ppunk,
);

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<Pointer>)>(
  symbol: 'SafeArrayAccessData',
)
external int _SafeArrayAccessData(
  Pointer<SAFEARRAY> psa,
  Pointer<Pointer> ppvData,
);

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<Pointer>)>(
  symbol: 'SafeArrayAddRef',
)
external int _SafeArrayAddRef(
  Pointer<SAFEARRAY> psa,
  Pointer<Pointer> ppDataToRelease,
);

@Native<Int32 Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayAllocData')
external int _SafeArrayAllocData(Pointer<SAFEARRAY> psa);

@Native<Int32 Function(Uint32, Pointer<Pointer<SAFEARRAY>>)>(
  symbol: 'SafeArrayAllocDescriptor',
)
external int _SafeArrayAllocDescriptor(
  int cDims,
  Pointer<Pointer<SAFEARRAY>> ppsaOut,
);

@Native<Int32 Function(Uint16, Uint32, Pointer<Pointer<SAFEARRAY>>)>(
  symbol: 'SafeArrayAllocDescriptorEx',
)
external int _SafeArrayAllocDescriptorEx(
  int vt,
  int cDims,
  Pointer<Pointer<SAFEARRAY>> ppsaOut,
);

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<Pointer<SAFEARRAY>>)>(
  symbol: 'SafeArrayCopy',
)
external int _SafeArrayCopy(
  Pointer<SAFEARRAY> psa,
  Pointer<Pointer<SAFEARRAY>> ppsaOut,
);

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<SAFEARRAY>)>(
  symbol: 'SafeArrayCopyData',
)
external int _SafeArrayCopyData(
  Pointer<SAFEARRAY> psaSource,
  Pointer<SAFEARRAY> psaTarget,
);

@Native<Pointer<SAFEARRAY> Function(Uint16, Uint32, Pointer<SAFEARRAYBOUND>)>(
  symbol: 'SafeArrayCreate',
)
external Pointer<SAFEARRAY> _SafeArrayCreate(
  int vt,
  int cDims,
  Pointer<SAFEARRAYBOUND> rgsabound,
);

@Native<
  Pointer<SAFEARRAY> Function(Uint16, Uint32, Pointer<SAFEARRAYBOUND>, Pointer)
>(symbol: 'SafeArrayCreateEx')
external Pointer<SAFEARRAY> _SafeArrayCreateEx(
  int vt,
  int cDims,
  Pointer<SAFEARRAYBOUND> rgsabound,
  Pointer pvExtra,
);

@Native<Pointer<SAFEARRAY> Function(Uint16, Int32, Uint32)>(
  symbol: 'SafeArrayCreateVector',
)
external Pointer<SAFEARRAY> _SafeArrayCreateVector(
  int vt,
  int lLbound,
  int cElements,
);

@Native<Pointer<SAFEARRAY> Function(Uint16, Int32, Uint32, Pointer)>(
  symbol: 'SafeArrayCreateVectorEx',
)
external Pointer<SAFEARRAY> _SafeArrayCreateVectorEx(
  int vt,
  int lLbound,
  int cElements,
  Pointer pvExtra,
);

@Native<Int32 Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayDestroy')
external int _SafeArrayDestroy(Pointer<SAFEARRAY> psa);

@Native<Int32 Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayDestroyData')
external int _SafeArrayDestroyData(Pointer<SAFEARRAY> psa);

@Native<Int32 Function(Pointer<SAFEARRAY>)>(
  symbol: 'SafeArrayDestroyDescriptor',
)
external int _SafeArrayDestroyDescriptor(Pointer<SAFEARRAY> psa);

@Native<Uint32 Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayGetDim')
external int _SafeArrayGetDim(Pointer<SAFEARRAY> psa);

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer)>(
  symbol: 'SafeArrayGetElement',
)
external int _SafeArrayGetElement(
  Pointer<SAFEARRAY> psa,
  Pointer<Int32> rgIndices,
  Pointer pv,
);

@Native<Uint32 Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayGetElemsize')
external int _SafeArrayGetElemsize(Pointer<SAFEARRAY> psa);

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<GUID>)>(
  symbol: 'SafeArrayGetIID',
)
external int _SafeArrayGetIID(Pointer<SAFEARRAY> psa, Pointer<GUID> pguid);

@Native<Int32 Function(Pointer<SAFEARRAY>, Uint32, Pointer<Int32>)>(
  symbol: 'SafeArrayGetLBound',
)
external int _SafeArrayGetLBound(
  Pointer<SAFEARRAY> psa,
  int nDim,
  Pointer<Int32> plLbound,
);

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<VTablePointer>)>(
  symbol: 'SafeArrayGetRecordInfo',
)
external int _SafeArrayGetRecordInfo(
  Pointer<SAFEARRAY> psa,
  Pointer<VTablePointer> prinfo,
);

@Native<Int32 Function(Pointer<SAFEARRAY>, Uint32, Pointer<Int32>)>(
  symbol: 'SafeArrayGetUBound',
)
external int _SafeArrayGetUBound(
  Pointer<SAFEARRAY> psa,
  int nDim,
  Pointer<Int32> plUbound,
);

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<Uint16>)>(
  symbol: 'SafeArrayGetVartype',
)
external int _SafeArrayGetVartype(Pointer<SAFEARRAY> psa, Pointer<Uint16> pvt);

@Native<Int32 Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayLock')
external int _SafeArrayLock(Pointer<SAFEARRAY> psa);

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer<Pointer>)>(
  symbol: 'SafeArrayPtrOfIndex',
)
external int _SafeArrayPtrOfIndex(
  Pointer<SAFEARRAY> psa,
  Pointer<Int32> rgIndices,
  Pointer<Pointer> ppvData,
);

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer)>(
  symbol: 'SafeArrayPutElement',
)
external int _SafeArrayPutElement(
  Pointer<SAFEARRAY> psa,
  Pointer<Int32> rgIndices,
  Pointer pv,
);

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<SAFEARRAYBOUND>)>(
  symbol: 'SafeArrayRedim',
)
external int _SafeArrayRedim(
  Pointer<SAFEARRAY> psa,
  Pointer<SAFEARRAYBOUND> psaboundNew,
);

@Native<Void Function(Pointer)>(symbol: 'SafeArrayReleaseData')
external void _SafeArrayReleaseData(Pointer pData);

@Native<Void Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayReleaseDescriptor')
external void _SafeArrayReleaseDescriptor(Pointer<SAFEARRAY> psa);

@Native<Int32 Function(Pointer<SAFEARRAY>, Pointer<GUID>)>(
  symbol: 'SafeArraySetIID',
)
external int _SafeArraySetIID(Pointer<SAFEARRAY> psa, Pointer<GUID> guid);

@Native<Int32 Function(Pointer<SAFEARRAY>, VTablePointer)>(
  symbol: 'SafeArraySetRecordInfo',
)
external int _SafeArraySetRecordInfo(
  Pointer<SAFEARRAY> psa,
  VTablePointer prinfo,
);

@Native<Int32 Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayUnaccessData')
external int _SafeArrayUnaccessData(Pointer<SAFEARRAY> psa);

@Native<Int32 Function(Pointer<SAFEARRAY>)>(symbol: 'SafeArrayUnlock')
external int _SafeArrayUnlock(Pointer<SAFEARRAY> psa);

@Native<BSTR Function(PCWSTR)>(symbol: 'SysAllocString')
external BSTR _SysAllocString(PCWSTR psz);

@Native<BSTR Function(PCSTR, Uint32)>(symbol: 'SysAllocStringByteLen')
external BSTR _SysAllocStringByteLen(PCSTR psz, int len);

@Native<BSTR Function(PCWSTR, Uint32)>(symbol: 'SysAllocStringLen')
external BSTR _SysAllocStringLen(PCWSTR strIn, int ui);

@Native<Void Function(BSTR)>(symbol: 'SysFreeString')
external void _SysFreeString(BSTR bstrString);

@Native<Int32 Function(Pointer<BSTR>, PCWSTR)>(symbol: 'SysReAllocString')
external int _SysReAllocString(Pointer<BSTR> pbstr, PCWSTR psz);

@Native<Int32 Function(Pointer<BSTR>, PCWSTR, Uint32)>(
  symbol: 'SysReAllocStringLen',
)
external int _SysReAllocStringLen(Pointer<BSTR> pbstr, PCWSTR psz, int len);

@Native<Void Function(BSTR)>(symbol: 'SysReleaseString')
external void _SysReleaseString(BSTR bstrString);

@Native<Uint32 Function(BSTR)>(symbol: 'SysStringByteLen')
external int _SysStringByteLen(BSTR bstr);

@Native<Uint32 Function(BSTR)>(symbol: 'SysStringLen')
external int _SysStringLen(BSTR pbstr);

@Native<Int32 Function(BSTR, BSTR, Pointer<BSTR>)>(symbol: 'VarBstrCat')
external int _VarBstrCat(
  BSTR bstrLeft,
  BSTR bstrRight,
  Pointer<BSTR> pbstrResult,
);

@Native<Int32 Function(BSTR, BSTR, Uint32, Uint32)>(symbol: 'VarBstrCmp')
external int _VarBstrCmp(BSTR bstrLeft, BSTR bstrRight, int lcid, int dwFlags);

@Native<Int32 Function(Pointer<VARIANT>, Pointer<VARIANT>, Uint16, Uint16)>(
  symbol: 'VariantChangeType',
)
external int _VariantChangeType(
  Pointer<VARIANT> pvargDest,
  Pointer<VARIANT> pvarSrc,
  int wFlags,
  int vt,
);

@Native<Int32 Function(Pointer<VARIANT>)>(symbol: 'VariantClear')
external int _VariantClear(Pointer<VARIANT> pvarg);

@Native<Int32 Function(Pointer<VARIANT>, Pointer<VARIANT>)>(
  symbol: 'VariantCopy',
)
external int _VariantCopy(
  Pointer<VARIANT> pvargDest,
  Pointer<VARIANT> pvargSrc,
);

@Native<Void Function(Pointer<VARIANT>)>(symbol: 'VariantInit')
external void _VariantInit(Pointer<VARIANT> pvarg);

@Native<Int32 Function(Double, Pointer<Uint16>, Pointer<Uint16>)>(
  symbol: 'VariantTimeToDosDateTime',
)
external int _VariantTimeToDosDateTime(
  double vtime,
  Pointer<Uint16> pwDosDate,
  Pointer<Uint16> pwDosTime,
);

@Native<Int32 Function(Double, Pointer<SYSTEMTIME>)>(
  symbol: 'VariantTimeToSystemTime',
)
external int _VariantTimeToSystemTime(
  double vtime,
  Pointer<SYSTEMTIME> lpSystemTime,
);
