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
  group('dbghelp.dll', () {
    test('SymCleanup can be instantiated', () {
      check(_SymCleanup).isA<Function>();
    });
    test('SymEnumSymbols can be instantiated', () {
      check(_SymEnumSymbols).isA<Function>();
    });
    test('SymFromAddr can be instantiated', () {
      check(_SymFromAddr).isA<Function>();
    });
    test('SymFromToken can be instantiated', () {
      check(_SymFromToken).isA<Function>();
    });
    test(
      'SymGetExtendedOption can be instantiated',
      skip: 17134 > windowsBuildNumber,
      () {
        check(_SymGetExtendedOption).isA<Function>();
      },
    );
    test('SymInitialize can be instantiated', () {
      check(_SymInitialize).isA<Function>();
    });
    test('SymLoadModuleEx can be instantiated', () {
      check(_SymLoadModuleEx).isA<Function>();
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
      check(_SymSetParentWindow).isA<Function>();
    });
    test('SymSetScopeFromAddr can be instantiated', () {
      check(_SymSetScopeFromAddr).isA<Function>();
    });
    test('SymSetScopeFromIndex can be instantiated', () {
      check(_SymSetScopeFromIndex).isA<Function>();
    });
    test('SymSetScopeFromInlineContext can be instantiated', () {
      check(_SymSetScopeFromInlineContext).isA<Function>();
    });
    test('SymSetSearchPath can be instantiated', () {
      check(_SymSetSearchPath).isA<Function>();
    });
    test('SymUnloadModule can be instantiated', () {
      check(_SymUnloadModule).isA<Function>();
    });
    test('SymUnloadModule64 can be instantiated', () {
      check(_SymUnloadModule64).isA<Function>();
    });
    test('UnDecorateSymbolName can be instantiated', () {
      check(_UnDecorateSymbolName).isA<Function>();
    });
  });
}

final _dbghelp = DynamicLibrary.open('dbghelp.dll');

final _SymCleanup = _dbghelp
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'SymCleanup',
    );

final _SymEnumSymbols = _dbghelp
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint64,
        Pointer<Utf16>,
        Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>>,
        Pointer,
      ),
      int Function(
        Pointer,
        int,
        Pointer<Utf16>,
        Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>>,
        Pointer,
      )
    >('SymEnumSymbolsW');

final _SymFromAddr = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Uint64, Pointer<Uint64>, Pointer<SYMBOL_INFO>),
      int Function(Pointer, int, Pointer<Uint64>, Pointer<SYMBOL_INFO>)
    >('SymFromAddrW');

final _SymFromToken = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Uint64, Uint32, Pointer<SYMBOL_INFO>),
      int Function(Pointer, int, int, Pointer<SYMBOL_INFO>)
    >('SymFromTokenW');

final _SymGetExtendedOption = _dbghelp
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'SymGetExtendedOption',
    );

final _SymInitialize = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Int32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('SymInitializeW');

final _SymLoadModuleEx = _dbghelp
    .lookupFunction<
      Uint64 Function(
        Pointer,
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Uint64,
        Uint32,
        Pointer<MODLOAD_DATA>,
        Uint32,
      ),
      int Function(
        Pointer,
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
        int,
        Pointer<MODLOAD_DATA>,
        int,
      )
    >('SymLoadModuleExW');

final _SymSetExtendedOption = _dbghelp
    .lookupFunction<Int32 Function(Int32, Int32), int Function(int, int)>(
      'SymSetExtendedOption',
    );

final _SymSetOptions = _dbghelp
    .lookupFunction<Uint32 Function(Uint32), int Function(int)>(
      'SymSetOptions',
    );

final _SymSetParentWindow = _dbghelp
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'SymSetParentWindow',
    );

final _SymSetScopeFromAddr = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Uint64),
      int Function(Pointer, int)
    >('SymSetScopeFromAddr');

final _SymSetScopeFromIndex = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Uint64, Uint32),
      int Function(Pointer, int, int)
    >('SymSetScopeFromIndex');

final _SymSetScopeFromInlineContext = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Uint64, Uint32),
      int Function(Pointer, int, int)
    >('SymSetScopeFromInlineContext');

final _SymSetSearchPath = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('SymSetSearchPathW');

final _SymUnloadModule = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SymUnloadModule');

final _SymUnloadModule64 = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Uint64),
      int Function(Pointer, int)
    >('SymUnloadModule64');

final _UnDecorateSymbolName = _dbghelp
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, int)
    >('UnDecorateSymbolNameW');
