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
import 'package:win32/src/_internal/dbghelp.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('dbghelp.dll', () {
    test('SymCleanup can be instantiated', () {
      check(SymCleanup_Wrapper).isA<Function>();
    });
    test('SymEnumSymbols can be instantiated', () {
      check(SymEnumSymbolsW_Wrapper).isA<Function>();
    });
    test('SymFromAddr can be instantiated', () {
      check(SymFromAddrW_Wrapper).isA<Function>();
    });
    test('SymFromToken can be instantiated', () {
      check(SymFromTokenW_Wrapper).isA<Function>();
    });
    test(
      'SymGetExtendedOption can be instantiated',
      skip: 17134 > windowsBuildNumber,
      () {
        check(_SymGetExtendedOption).isA<Function>();
      },
    );
    test('SymInitialize can be instantiated', () {
      check(SymInitializeW_Wrapper).isA<Function>();
    });
    test('SymLoadModuleEx can be instantiated', () {
      check(SymLoadModuleExW_Wrapper).isA<Function>();
    });
    test(
      'SymSetExtendedOption can be instantiated',
      skip: 17134 > windowsBuildNumber,
      () {
        check(_SymSetExtendedOption).isA<Function>();
      },
    );
    test('SymSetOptions can be instantiated', () {
      check(_SymSetOptions).isA<Function>();
    });
    test('SymSetParentWindow can be instantiated', () {
      check(SymSetParentWindow_Wrapper).isA<Function>();
    });
    test('SymSetScopeFromAddr can be instantiated', () {
      check(SymSetScopeFromAddr_Wrapper).isA<Function>();
    });
    test('SymSetScopeFromIndex can be instantiated', () {
      check(SymSetScopeFromIndex_Wrapper).isA<Function>();
    });
    test('SymSetScopeFromInlineContext can be instantiated', () {
      check(SymSetScopeFromInlineContext_Wrapper).isA<Function>();
    });
    test('SymSetSearchPath can be instantiated', () {
      check(SymSetSearchPathW_Wrapper).isA<Function>();
    });
    test('SymUnloadModule can be instantiated', () {
      check(SymUnloadModule_Wrapper).isA<Function>();
    });
    test('SymUnloadModule64 can be instantiated', () {
      check(SymUnloadModule64_Wrapper).isA<Function>();
    });
    test('UnDecorateSymbolName can be instantiated', () {
      check(UnDecorateSymbolNameW_Wrapper).isA<Function>();
    });
  });
}

@Native<BOOL Function(Int32)>(symbol: 'SymGetExtendedOption')
external int _SymGetExtendedOption(int option);

@Native<BOOL Function(Int32, BOOL)>(symbol: 'SymSetExtendedOption')
external int _SymSetExtendedOption(int option, int value);

@Native<Uint32 Function(Uint32)>(symbol: 'SymSetOptions')
external int _SymSetOptions(int symOptions);
