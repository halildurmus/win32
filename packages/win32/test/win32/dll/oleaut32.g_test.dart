// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: specify_nonobvious_property_types, unused_import

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

final _oleaut32 = DynamicLibrary.open('oleaut32.dll');

final _DosDateTimeToVariantTime = _oleaut32
    .lookupFunction<
      Int32 Function(Uint16, Uint16, Pointer<Double>),
      int Function(int, int, Pointer<Double>)
    >('DosDateTimeToVariantTime');

final _GetActiveObject = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<GUID>, Pointer, Pointer<VTablePointer>),
      int Function(Pointer<GUID>, Pointer, Pointer<VTablePointer>)
    >('GetActiveObject');

final _SafeArrayAccessData = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<Pointer>),
      int Function(Pointer<SAFEARRAY>, Pointer<Pointer>)
    >('SafeArrayAccessData');

final _SafeArrayAddRef = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<Pointer>),
      int Function(Pointer<SAFEARRAY>, Pointer<Pointer>)
    >('SafeArrayAddRef');

final _SafeArrayAllocData = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayAllocData');

final _SafeArrayAllocDescriptor = _oleaut32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Pointer<SAFEARRAY>>),
      int Function(int, Pointer<Pointer<SAFEARRAY>>)
    >('SafeArrayAllocDescriptor');

final _SafeArrayAllocDescriptorEx = _oleaut32
    .lookupFunction<
      Int32 Function(Uint16, Uint32, Pointer<Pointer<SAFEARRAY>>),
      int Function(int, int, Pointer<Pointer<SAFEARRAY>>)
    >('SafeArrayAllocDescriptorEx');

final _SafeArrayCopy = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<Pointer<SAFEARRAY>>),
      int Function(Pointer<SAFEARRAY>, Pointer<Pointer<SAFEARRAY>>)
    >('SafeArrayCopy');

final _SafeArrayCopyData = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>, Pointer<SAFEARRAY>)
    >('SafeArrayCopyData');

final _SafeArrayCreate = _oleaut32
    .lookupFunction<
      Pointer<SAFEARRAY> Function(Uint16, Uint32, Pointer<SAFEARRAYBOUND>),
      Pointer<SAFEARRAY> Function(int, int, Pointer<SAFEARRAYBOUND>)
    >('SafeArrayCreate');

final _SafeArrayCreateEx = _oleaut32
    .lookupFunction<
      Pointer<SAFEARRAY> Function(
        Uint16,
        Uint32,
        Pointer<SAFEARRAYBOUND>,
        Pointer,
      ),
      Pointer<SAFEARRAY> Function(int, int, Pointer<SAFEARRAYBOUND>, Pointer)
    >('SafeArrayCreateEx');

final _SafeArrayCreateVector = _oleaut32
    .lookupFunction<
      Pointer<SAFEARRAY> Function(Uint16, Int32, Uint32),
      Pointer<SAFEARRAY> Function(int, int, int)
    >('SafeArrayCreateVector');

final _SafeArrayCreateVectorEx = _oleaut32
    .lookupFunction<
      Pointer<SAFEARRAY> Function(Uint16, Int32, Uint32, Pointer),
      Pointer<SAFEARRAY> Function(int, int, int, Pointer)
    >('SafeArrayCreateVectorEx');

final _SafeArrayDestroy = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayDestroy');

final _SafeArrayDestroyData = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayDestroyData');

final _SafeArrayDestroyDescriptor = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayDestroyDescriptor');

final _SafeArrayGetDim = _oleaut32
    .lookupFunction<
      Uint32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayGetDim');

final _SafeArrayGetElement = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer),
      int Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer)
    >('SafeArrayGetElement');

final _SafeArrayGetElemsize = _oleaut32
    .lookupFunction<
      Uint32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayGetElemsize');

final _SafeArrayGetIID = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<GUID>),
      int Function(Pointer<SAFEARRAY>, Pointer<GUID>)
    >('SafeArrayGetIID');

final _SafeArrayGetLBound = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Uint32, Pointer<Int32>),
      int Function(Pointer<SAFEARRAY>, int, Pointer<Int32>)
    >('SafeArrayGetLBound');

final _SafeArrayGetRecordInfo = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<VTablePointer>),
      int Function(Pointer<SAFEARRAY>, Pointer<VTablePointer>)
    >('SafeArrayGetRecordInfo');

final _SafeArrayGetUBound = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Uint32, Pointer<Int32>),
      int Function(Pointer<SAFEARRAY>, int, Pointer<Int32>)
    >('SafeArrayGetUBound');

final _SafeArrayGetVartype = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<Uint16>),
      int Function(Pointer<SAFEARRAY>, Pointer<Uint16>)
    >('SafeArrayGetVartype');

final _SafeArrayLock = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayLock');

final _SafeArrayPtrOfIndex = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer<Pointer>),
      int Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer<Pointer>)
    >('SafeArrayPtrOfIndex');

final _SafeArrayPutElement = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer),
      int Function(Pointer<SAFEARRAY>, Pointer<Int32>, Pointer)
    >('SafeArrayPutElement');

final _SafeArrayRedim = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<SAFEARRAYBOUND>),
      int Function(Pointer<SAFEARRAY>, Pointer<SAFEARRAYBOUND>)
    >('SafeArrayRedim');

final _SafeArrayReleaseData = _oleaut32
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>(
      'SafeArrayReleaseData',
    );

final _SafeArrayReleaseDescriptor = _oleaut32
    .lookupFunction<
      Void Function(Pointer<SAFEARRAY>),
      void Function(Pointer<SAFEARRAY>)
    >('SafeArrayReleaseDescriptor');

final _SafeArraySetIID = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, Pointer<GUID>),
      int Function(Pointer<SAFEARRAY>, Pointer<GUID>)
    >('SafeArraySetIID');

final _SafeArraySetRecordInfo = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>, VTablePointer),
      int Function(Pointer<SAFEARRAY>, VTablePointer)
    >('SafeArraySetRecordInfo');

final _SafeArrayUnaccessData = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayUnaccessData');

final _SafeArrayUnlock = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<SAFEARRAY>),
      int Function(Pointer<SAFEARRAY>)
    >('SafeArrayUnlock');

final _SysAllocString = _oleaut32
    .lookupFunction<
      Pointer<Utf16> Function(Pointer<Utf16>),
      Pointer<Utf16> Function(Pointer<Utf16>)
    >('SysAllocString');

final _SysAllocStringByteLen = _oleaut32
    .lookupFunction<
      Pointer<Utf16> Function(Pointer<Utf8>, Uint32),
      Pointer<Utf16> Function(Pointer<Utf8>, int)
    >('SysAllocStringByteLen');

final _SysAllocStringLen = _oleaut32
    .lookupFunction<
      Pointer<Utf16> Function(Pointer<Utf16>, Uint32),
      Pointer<Utf16> Function(Pointer<Utf16>, int)
    >('SysAllocStringLen');

final _SysFreeString = _oleaut32
    .lookupFunction<
      Void Function(Pointer<Utf16>),
      void Function(Pointer<Utf16>)
    >('SysFreeString');

final _SysReAllocString = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<Pointer<Utf16>>, Pointer<Utf16>),
      int Function(Pointer<Pointer<Utf16>>, Pointer<Utf16>)
    >('SysReAllocString');

final _SysReAllocStringLen = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<Pointer<Utf16>>, Pointer<Utf16>, Uint32),
      int Function(Pointer<Pointer<Utf16>>, Pointer<Utf16>, int)
    >('SysReAllocStringLen');

final _SysReleaseString = _oleaut32
    .lookupFunction<
      Void Function(Pointer<Utf16>),
      void Function(Pointer<Utf16>)
    >('SysReleaseString');

final _SysStringByteLen = _oleaut32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('SysStringByteLen');

final _SysStringLen = _oleaut32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('SysStringLen');

final _VarBstrCat = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Pointer<Pointer<Utf16>>),
      int Function(Pointer<Utf16>, Pointer<Utf16>, Pointer<Pointer<Utf16>>)
    >('VarBstrCat');

final _VarBstrCmp = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, int)
    >('VarBstrCmp');

final _VariantChangeType = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<VARIANT>, Pointer<VARIANT>, Uint16, Uint16),
      int Function(Pointer<VARIANT>, Pointer<VARIANT>, int, int)
    >('VariantChangeType');

final _VariantClear = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<VARIANT>),
      int Function(Pointer<VARIANT>)
    >('VariantClear');

final _VariantCopy = _oleaut32
    .lookupFunction<
      Int32 Function(Pointer<VARIANT>, Pointer<VARIANT>),
      int Function(Pointer<VARIANT>, Pointer<VARIANT>)
    >('VariantCopy');

final _VariantInit = _oleaut32
    .lookupFunction<
      Void Function(Pointer<VARIANT>),
      void Function(Pointer<VARIANT>)
    >('VariantInit');

final _VariantTimeToDosDateTime = _oleaut32
    .lookupFunction<
      Int32 Function(Double, Pointer<Uint16>, Pointer<Uint16>),
      int Function(double, Pointer<Uint16>, Pointer<Uint16>)
    >('VariantTimeToDosDateTime');

final _VariantTimeToSystemTime = _oleaut32
    .lookupFunction<
      Int32 Function(Double, Pointer<SYSTEMTIME>),
      int Function(double, Pointer<SYSTEMTIME>)
    >('VariantTimeToSystemTime');
