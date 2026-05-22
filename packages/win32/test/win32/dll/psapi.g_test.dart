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
  group('psapi.dll', () {
    test('EmptyWorkingSet can be instantiated', () {
      check(_EmptyWorkingSet).isA<Function>();
    });
    test('EnumDeviceDrivers can be instantiated', () {
      check(_EnumDeviceDrivers).isA<Function>();
    });
    test('EnumPageFiles can be instantiated', () {
      check(_EnumPageFiles).isA<Function>();
    });
    test('EnumProcesses can be instantiated', () {
      check(_EnumProcesses).isA<Function>();
    });
    test('EnumProcessModules can be instantiated', () {
      check(_EnumProcessModules).isA<Function>();
    });
    test('EnumProcessModulesEx can be instantiated', () {
      check(_EnumProcessModulesEx).isA<Function>();
    });
    test('GetDeviceDriverBaseName can be instantiated', () {
      check(_GetDeviceDriverBaseName).isA<Function>();
    });
    test('GetDeviceDriverFileName can be instantiated', () {
      check(_GetDeviceDriverFileName).isA<Function>();
    });
    test('GetMappedFileName can be instantiated', () {
      check(_GetMappedFileName).isA<Function>();
    });
    test('GetModuleBaseName can be instantiated', () {
      check(_GetModuleBaseName).isA<Function>();
    });
    test('GetModuleFileNameEx can be instantiated', () {
      check(_GetModuleFileNameEx).isA<Function>();
    });
    test('GetModuleInformation can be instantiated', () {
      check(_GetModuleInformation).isA<Function>();
    });
    test('GetPerformanceInfo can be instantiated', () {
      check(_GetPerformanceInfo).isA<Function>();
    });
    test('GetProcessImageFileName can be instantiated', () {
      check(_GetProcessImageFileName).isA<Function>();
    });
    test('GetProcessMemoryInfo can be instantiated', () {
      check(_GetProcessMemoryInfo).isA<Function>();
    });
  });
}

final _psapi = DynamicLibrary.open('psapi.dll');

final _EmptyWorkingSet = _psapi
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'EmptyWorkingSet',
    );

final _EnumDeviceDrivers = _psapi
    .lookupFunction<
      Int32 Function(Pointer<Pointer>, Uint32, Pointer<Uint32>),
      int Function(Pointer<Pointer>, int, Pointer<Uint32>)
    >('EnumDeviceDrivers');

final _EnumPageFiles = _psapi
    .lookupFunction<
      Int32 Function(
        Pointer<NativeFunction<PENUM_PAGE_FILE_CALLBACK>>,
        Pointer,
      ),
      int Function(Pointer<NativeFunction<PENUM_PAGE_FILE_CALLBACK>>, Pointer)
    >('EnumPageFilesW');

final _EnumProcesses = _psapi
    .lookupFunction<
      Int32 Function(Pointer<Uint32>, Uint32, Pointer<Uint32>),
      int Function(Pointer<Uint32>, int, Pointer<Uint32>)
    >('EnumProcesses');

final _EnumProcessModules = _psapi
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Pointer>, Uint32, Pointer<Uint32>),
      int Function(Pointer, Pointer<Pointer>, int, Pointer<Uint32>)
    >('EnumProcessModules');

final _EnumProcessModulesEx = _psapi
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Pointer>,
        Uint32,
        Pointer<Uint32>,
        Uint32,
      ),
      int Function(Pointer, Pointer<Pointer>, int, Pointer<Uint32>, int)
    >('EnumProcessModulesEx');

final _GetDeviceDriverBaseName = _psapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('GetDeviceDriverBaseNameW');

final _GetDeviceDriverFileName = _psapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('GetDeviceDriverFileNameW');

final _GetMappedFileName = _psapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer, Pointer<Utf16>, int)
    >('GetMappedFileNameW');

final _GetModuleBaseName = _psapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer, Pointer<Utf16>, int)
    >('GetModuleBaseNameW');

final _GetModuleFileNameEx = _psapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer, Pointer<Utf16>, int)
    >('GetModuleFileNameExW');

final _GetModuleInformation = _psapi
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<MODULEINFO>, Uint32),
      int Function(Pointer, Pointer, Pointer<MODULEINFO>, int)
    >('GetModuleInformation');

final _GetPerformanceInfo = _psapi
    .lookupFunction<
      Int32 Function(Pointer<PERFORMANCE_INFORMATION>, Uint32),
      int Function(Pointer<PERFORMANCE_INFORMATION>, int)
    >('GetPerformanceInfo');

final _GetProcessImageFileName = _psapi
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('GetProcessImageFileNameW');

final _GetProcessMemoryInfo = _psapi
    .lookupFunction<
      Int32 Function(Pointer, Pointer<PROCESS_MEMORY_COUNTERS>, Uint32),
      int Function(Pointer, Pointer<PROCESS_MEMORY_COUNTERS>, int)
    >('GetProcessMemoryInfo');
