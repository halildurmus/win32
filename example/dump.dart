// Retrieves the exported symbols from kernel32

import 'dart:ffi';
import 'dart:io' show exit;

import 'package:ffi/ffi.dart';
import 'package:win32/src/dbghelp.dart';
import 'package:win32/win32.dart';

int enumSymbolProc(
    Pointer<SYMBOL_INFO> pSymInfo, int symbolSize, Pointer UserContext) {
  print('${pSymInfo.ref.Address.toHexString(32)} $symbolSize '
      '${pSymInfo.cast<Uint8>().elementAt(84).cast<Utf16>().toDartString()}');

  return TRUE;
}

void main() {
  final hProcess = GetCurrentProcess();

  final status = SymInitialize(hProcess, nullptr, FALSE);
  if (status == FALSE) {
    print('SymInitialize failed.');
    exit(1);
  }

  final module = r'c:\windows\system32\kernel32.dll'.toNativeUtf16();
  final mask = '*'.toNativeUtf16();

  final baseOfDll =
      SymLoadModuleEx(hProcess, 0, module, nullptr, 0, 0, nullptr, 0);

  if (baseOfDll == 0) {
    print('SymLoadModuleEx failed.');

    SymCleanup(hProcess);
    exit(1);
  }

  if (SymEnumSymbols(
          hProcess,
          baseOfDll,
          mask,
          Pointer.fromFunction<SymEnumSymbolsProc>(enumSymbolProc, 0),
          nullptr) ==
      FALSE) {
    print('SymEnumSymbols failed.');
  }

  SymCleanup(hProcess);
  free(module);
  free(mask);
}
