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

final _ole32 = DynamicLibrary.open('ole32.dll');

final _CLSIDFromProgID = _ole32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<GUID>),
      int Function(Pointer<Utf16>, Pointer<GUID>)
    >('CLSIDFromProgID');

final _CLSIDFromProgIDEx = _ole32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<GUID>),
      int Function(Pointer<Utf16>, Pointer<GUID>)
    >('CLSIDFromProgIDEx');

final _CLSIDFromString = _ole32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<GUID>),
      int Function(Pointer<Utf16>, Pointer<GUID>)
    >('CLSIDFromString');

final _CoAddRefServerProcess = _ole32
    .lookupFunction<Uint32 Function(), int Function()>('CoAddRefServerProcess');

final _CoCreateGuid = _ole32
    .lookupFunction<Int32 Function(Pointer<GUID>), int Function(Pointer<GUID>)>(
      'CoCreateGuid',
    );

final _CoCreateInstance = _ole32
    .lookupFunction<
      Int32 Function(
        Pointer<GUID>,
        VTablePointer,
        Uint32,
        Pointer<GUID>,
        Pointer<Pointer>,
      ),
      int Function(
        Pointer<GUID>,
        VTablePointer,
        int,
        Pointer<GUID>,
        Pointer<Pointer>,
      )
    >('CoCreateInstance');

final _CoDecrementMTAUsage = _ole32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CoDecrementMTAUsage',
    );

final _CoGetApartmentType = _ole32
    .lookupFunction<
      Int32 Function(Pointer<Int32>, Pointer<Int32>),
      int Function(Pointer<Int32>, Pointer<Int32>)
    >('CoGetApartmentType');

final _CoGetClassObject = _ole32
    .lookupFunction<
      Int32 Function(
        Pointer<GUID>,
        Uint32,
        Pointer,
        Pointer<GUID>,
        Pointer<Pointer>,
      ),
      int Function(Pointer<GUID>, int, Pointer, Pointer<GUID>, Pointer<Pointer>)
    >('CoGetClassObject');

final _CoGetCurrentProcess = _ole32
    .lookupFunction<Uint32 Function(), int Function()>('CoGetCurrentProcess');

final _CoGetMalloc = _ole32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<VTablePointer>),
      int Function(int, Pointer<VTablePointer>)
    >('CoGetMalloc');

final _CoIncrementMTAUsage = _ole32
    .lookupFunction<
      Int32 Function(Pointer<Pointer>),
      int Function(Pointer<Pointer>)
    >('CoIncrementMTAUsage');

final _CoInitializeEx = _ole32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('CoInitializeEx');

final _CoInitializeSecurity = _ole32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Pointer<SOLE_AUTHENTICATION_SERVICE>,
        Pointer,
        Uint32,
        Uint32,
        Pointer,
        Uint32,
        Pointer,
      ),
      int Function(
        Pointer,
        int,
        Pointer<SOLE_AUTHENTICATION_SERVICE>,
        Pointer,
        int,
        int,
        Pointer,
        int,
        Pointer,
      )
    >('CoInitializeSecurity');

final _CoSetProxyBlanket = _ole32
    .lookupFunction<
      Int32 Function(
        VTablePointer,
        Uint32,
        Uint32,
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer,
        Uint32,
      ),
      int Function(
        VTablePointer,
        int,
        int,
        Pointer<Utf16>,
        int,
        int,
        Pointer,
        int,
      )
    >('CoSetProxyBlanket');

final _CoTaskMemAlloc = _ole32
    .lookupFunction<Pointer Function(IntPtr), Pointer Function(int)>(
      'CoTaskMemAlloc',
    );

final _CoTaskMemFree = _ole32
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>(
      'CoTaskMemFree',
    );

final _CoTaskMemRealloc = _ole32
    .lookupFunction<
      Pointer Function(Pointer, IntPtr),
      Pointer Function(Pointer, int)
    >('CoTaskMemRealloc');

final _CoUninitialize = _ole32.lookupFunction<Void Function(), void Function()>(
  'CoUninitialize',
);

final _CoWaitForMultipleHandles = _ole32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, Uint32, Pointer<Pointer>, Pointer<Uint32>),
      int Function(int, int, int, Pointer<Pointer>, Pointer<Uint32>)
    >('CoWaitForMultipleHandles');

final _CoWaitForMultipleObjects = _ole32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, Uint32, Pointer<Pointer>, Pointer<Uint32>),
      int Function(int, int, int, Pointer<Pointer>, Pointer<Uint32>)
    >('CoWaitForMultipleObjects');

final _CreateStreamOnHGlobal = _ole32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer<VTablePointer>),
      int Function(Pointer, int, Pointer<VTablePointer>)
    >('CreateStreamOnHGlobal');

final _GetClassFile = _ole32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<GUID>),
      int Function(Pointer<Utf16>, Pointer<GUID>)
    >('GetClassFile');

final _GetHGlobalFromStream = _ole32
    .lookupFunction<
      Int32 Function(VTablePointer, Pointer<Pointer>),
      int Function(VTablePointer, Pointer<Pointer>)
    >('GetHGlobalFromStream');

final _IIDFromString = _ole32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<GUID>),
      int Function(Pointer<Utf16>, Pointer<GUID>)
    >('IIDFromString');

final _OleInitialize = _ole32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'OleInitialize',
    );

final _OleUninitialize = _ole32
    .lookupFunction<Void Function(), void Function()>('OleUninitialize');

final _ProgIDFromCLSID = _ole32
    .lookupFunction<
      Int32 Function(Pointer<GUID>, Pointer<Pointer<Utf16>>),
      int Function(Pointer<GUID>, Pointer<Pointer<Utf16>>)
    >('ProgIDFromCLSID');

final _PropVariantClear = _ole32
    .lookupFunction<
      Int32 Function(Pointer<PROPVARIANT>),
      int Function(Pointer<PROPVARIANT>)
    >('PropVariantClear');

final _PropVariantCopy = _ole32
    .lookupFunction<
      Int32 Function(Pointer<PROPVARIANT>, Pointer<PROPVARIANT>),
      int Function(Pointer<PROPVARIANT>, Pointer<PROPVARIANT>)
    >('PropVariantCopy');

final _StringFromCLSID = _ole32
    .lookupFunction<
      Int32 Function(Pointer<GUID>, Pointer<Pointer<Utf16>>),
      int Function(Pointer<GUID>, Pointer<Pointer<Utf16>>)
    >('StringFromCLSID');

final _StringFromGUID2 = _ole32
    .lookupFunction<
      Int32 Function(Pointer<GUID>, Pointer<Utf16>, Int32),
      int Function(Pointer<GUID>, Pointer<Utf16>, int)
    >('StringFromGUID2');

final _StringFromIID = _ole32
    .lookupFunction<
      Int32 Function(Pointer<GUID>, Pointer<Pointer<Utf16>>),
      int Function(Pointer<GUID>, Pointer<Pointer<Utf16>>)
    >('StringFromIID');
