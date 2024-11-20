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
import 'package:win32/src/_internal/setupapi.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('setupapi.dll', () {
    test('SetupDiDestroyDeviceInfoList can be instantiated', () {
      check(SetupDiDestroyDeviceInfoList_Wrapper).isA<Function>();
    });
    test('SetupDiEnumDeviceInfo can be instantiated', () {
      check(SetupDiEnumDeviceInfo_Wrapper).isA<Function>();
    });
    test('SetupDiEnumDeviceInterfaces can be instantiated', () {
      check(SetupDiEnumDeviceInterfaces_Wrapper).isA<Function>();
    });
    test('SetupDiGetClassDevs can be instantiated', () {
      check(SetupDiGetClassDevsW_Wrapper).isA<Function>();
    });
    test('SetupDiGetDeviceInstanceId can be instantiated', () {
      check(SetupDiGetDeviceInstanceIdW_Wrapper).isA<Function>();
    });
    test('SetupDiGetDeviceInterfaceDetail can be instantiated', () {
      check(SetupDiGetDeviceInterfaceDetailW_Wrapper).isA<Function>();
    });
    test('SetupDiGetDeviceRegistryProperty can be instantiated', () {
      check(SetupDiGetDeviceRegistryPropertyW_Wrapper).isA<Function>();
    });
    test('SetupDiOpenDevRegKey can be instantiated', () {
      check(SetupDiOpenDevRegKey_Wrapper).isA<Function>();
    });
  });
}
