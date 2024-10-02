// Retrieves the exported symbols from kernel32

import 'dart:ffi';
import 'dart:io' show exit;

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

extension SymbolInfoHelper on Pointer<SYMBOL_INFO> {
  int get virtAddress => ref.Address;
  String get name => (cast<Uint8>() + 84).cast<Utf16>().toDartString();
}

final _exportedSymbols = <String, int>{};

/// Callback called once for each enumerated symbol by SymEnumSymbols.
int _enumSymbolProc(Pointer<SYMBOL_INFO> pSymInfo, int size, Pointer ctx) {
  // Only include symbols from the export table
  if (pSymInfo.ref.Flags & SYMBOL_INFO_FLAGS.SYMFLAG_EXPORT ==
      SYMBOL_INFO_FLAGS.SYMFLAG_EXPORT) {
    _exportedSymbols[pSymInfo.name] = pSymInfo.virtAddress;
  }

  return TRUE; // Keep enumerating.
}

Map<String, int> getExports(int hProcess, String module) {
  final status = SymInitialize(hProcess, nullptr, FALSE);
  if (status == FALSE) {
    print('SymInitialize failed.');
    exit(1);
  }

  final modulePtr = module.toNativeUtf16();

  final baseOfDll =
      SymLoadModuleEx(hProcess, NULL, modulePtr, nullptr, 0, 0, nullptr, 0);

  if (baseOfDll == 0) {
    print('SymLoadModuleEx failed.');

    SymCleanup(hProcess);
    exit(1);
  }

  final mask = '*'.toNativeUtf16();

  final callback = NativeCallable<PSYM_ENUMERATESYMBOLS_CALLBACK>.isolateLocal(
    _enumSymbolProc,
    exceptionalReturn: 0,
  );

  if (SymEnumSymbols(
          hProcess, baseOfDll, mask, callback.nativeFunction, nullptr) ==
      FALSE) {
    print('SymEnumSymbols failed.');
  }

  callback.close();
  SymCleanup(hProcess);
  free(modulePtr);
  free(mask);

  return _exportedSymbols;
}

/// Test which processor architecture Windows is running
bool isWindowsOnArm(int hProcess) {
  final pProcessMachine = calloc<USHORT>();
  final pNativeMachine = calloc<USHORT>();

  try {
    IsWow64Process2(hProcess, pProcessMachine, pNativeMachine);
    return pNativeMachine.value == IMAGE_FILE_MACHINE.IMAGE_FILE_MACHINE_ARM64;
  } finally {
    free(pProcessMachine);
    free(pNativeMachine);
  }
}

void main() {
  final hProcess = GetCurrentProcess();

  final kernel32 = isWindowsOnArm(hProcess)
      ? r'c:\windows\SysArm32\kernel32.dll'
      : r'c:\windows\system32\kernel32.dll';

  getExports(hProcess, kernel32)
      .forEach((name, address) => print('[${address.toHexString(32)}] $name'));
}
