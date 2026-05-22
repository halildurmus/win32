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
  group('setupapi.dll', () {
    test('SetupDiDestroyDeviceInfoList can be instantiated', () {
      check(_SetupDiDestroyDeviceInfoList).isA<Function>();
    });
    test('SetupDiEnumDeviceInfo can be instantiated', () {
      check(_SetupDiEnumDeviceInfo).isA<Function>();
    });
    test('SetupDiEnumDeviceInterfaces can be instantiated', () {
      check(_SetupDiEnumDeviceInterfaces).isA<Function>();
    });
    test('SetupDiGetClassDevs can be instantiated', () {
      check(_SetupDiGetClassDevs).isA<Function>();
    });
    test('SetupDiGetDeviceInstanceId can be instantiated', () {
      check(_SetupDiGetDeviceInstanceId).isA<Function>();
    });
    test('SetupDiGetDeviceInterfaceDetail can be instantiated', () {
      check(_SetupDiGetDeviceInterfaceDetail).isA<Function>();
    });
    test('SetupDiGetDeviceRegistryProperty can be instantiated', () {
      check(_SetupDiGetDeviceRegistryProperty).isA<Function>();
    });
    test('SetupDiOpenDevRegKey can be instantiated', () {
      check(_SetupDiOpenDevRegKey).isA<Function>();
    });
  });
}

final _setupapi = DynamicLibrary.open('setupapi.dll');

final _SetupDiDestroyDeviceInfoList = _setupapi
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>(
      'SetupDiDestroyDeviceInfoList',
    );

final _SetupDiEnumDeviceInfo = _setupapi
    .lookupFunction<
      Int32 Function(IntPtr, Uint32, Pointer<SP_DEVINFO_DATA>),
      int Function(int, int, Pointer<SP_DEVINFO_DATA>)
    >('SetupDiEnumDeviceInfo');

final _SetupDiEnumDeviceInterfaces = _setupapi
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<SP_DEVINFO_DATA>,
        Pointer<GUID>,
        Uint32,
        Pointer<SP_DEVICE_INTERFACE_DATA>,
      ),
      int Function(
        int,
        Pointer<SP_DEVINFO_DATA>,
        Pointer<GUID>,
        int,
        Pointer<SP_DEVICE_INTERFACE_DATA>,
      )
    >('SetupDiEnumDeviceInterfaces');

final _SetupDiGetClassDevs = _setupapi
    .lookupFunction<
      IntPtr Function(Pointer<GUID>, Pointer<Utf16>, Pointer, Uint32),
      int Function(Pointer<GUID>, Pointer<Utf16>, Pointer, int)
    >('SetupDiGetClassDevsW');

final _SetupDiGetDeviceInstanceId = _setupapi
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<SP_DEVINFO_DATA>,
        Pointer<Utf16>,
        Uint32,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        Pointer<SP_DEVINFO_DATA>,
        Pointer<Utf16>,
        int,
        Pointer<Uint32>,
      )
    >('SetupDiGetDeviceInstanceIdW');

final _SetupDiGetDeviceInterfaceDetail = _setupapi
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<SP_DEVICE_INTERFACE_DATA>,
        Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA>,
        Uint32,
        Pointer<Uint32>,
        Pointer<SP_DEVINFO_DATA>,
      ),
      int Function(
        int,
        Pointer<SP_DEVICE_INTERFACE_DATA>,
        Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA>,
        int,
        Pointer<Uint32>,
        Pointer<SP_DEVINFO_DATA>,
      )
    >('SetupDiGetDeviceInterfaceDetailW');

final _SetupDiGetDeviceRegistryProperty = _setupapi
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<SP_DEVINFO_DATA>,
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint8>,
        Uint32,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        Pointer<SP_DEVINFO_DATA>,
        int,
        Pointer<Uint32>,
        Pointer<Uint8>,
        int,
        Pointer<Uint32>,
      )
    >('SetupDiGetDeviceRegistryPropertyW');

final _SetupDiOpenDevRegKey = _setupapi
    .lookupFunction<
      Pointer Function(
        IntPtr,
        Pointer<SP_DEVINFO_DATA>,
        Uint32,
        Uint32,
        Uint32,
        Uint32,
      ),
      Pointer Function(int, Pointer<SP_DEVINFO_DATA>, int, int, int, int)
    >('SetupDiOpenDevRegKey');
