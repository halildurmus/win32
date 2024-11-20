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
import 'package:win32/src/_internal/psapi.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('psapi.dll', () {
    test('EmptyWorkingSet can be instantiated', () {
      check(EmptyWorkingSet_Wrapper).isA<Function>();
    });
    test('EnumDeviceDrivers can be instantiated', () {
      check(EnumDeviceDrivers_Wrapper).isA<Function>();
    });
    test('EnumPageFiles can be instantiated', () {
      check(EnumPageFilesW_Wrapper).isA<Function>();
    });
    test('EnumProcesses can be instantiated', () {
      check(EnumProcesses_Wrapper).isA<Function>();
    });
    test('EnumProcessModules can be instantiated', () {
      check(EnumProcessModules_Wrapper).isA<Function>();
    });
    test('EnumProcessModulesEx can be instantiated', () {
      check(EnumProcessModulesEx_Wrapper).isA<Function>();
    });
    test('GetDeviceDriverBaseName can be instantiated', () {
      check(GetDeviceDriverBaseNameW_Wrapper).isA<Function>();
    });
    test('GetDeviceDriverFileName can be instantiated', () {
      check(GetDeviceDriverFileNameW_Wrapper).isA<Function>();
    });
    test('GetMappedFileName can be instantiated', () {
      check(GetMappedFileNameW_Wrapper).isA<Function>();
    });
    test('GetModuleBaseName can be instantiated', () {
      check(GetModuleBaseNameW_Wrapper).isA<Function>();
    });
    test('GetModuleFileNameEx can be instantiated', () {
      check(GetModuleFileNameExW_Wrapper).isA<Function>();
    });
    test('GetModuleInformation can be instantiated', () {
      check(GetModuleInformation_Wrapper).isA<Function>();
    });
    test('GetPerformanceInfo can be instantiated', () {
      check(GetPerformanceInfo_Wrapper).isA<Function>();
    });
    test('GetProcessImageFileName can be instantiated', () {
      check(GetProcessImageFileNameW_Wrapper).isA<Function>();
    });
  });
}
