// Retrieves the exported symbols from kernel32.

import 'dart:ffi';
import 'dart:io' show exit;

import 'package:win32/win32.dart';

final _exportedSymbols = <String, int>{};

/// Callback called once for each enumerated symbol by SymEnumSymbols.
int _enumSymbolProc(Pointer<SYMBOL_INFO> pSymInfo, int size, Pointer ctx) {
  // Only include symbols from the export table
  if (pSymInfo.ref.Flags & SYMFLAG_EXPORT == SYMFLAG_EXPORT) {
    final SYMBOL_INFO(:Address, :Name) = pSymInfo.ref;
    _exportedSymbols[Name] = Address;
  }

  return TRUE; // Keep enumerating.
}

Map<String, int> getExports(int hProcess, String module) {
  if (!SymInitialize(hProcess, null, false)) {
    print('SymInitialize failed.');
    exit(1);
  }

  final imageName = w(module);
  final baseOfDll = SymLoadModuleEx(
    hProcess,
    null,
    imageName.ptr,
    null,
    0,
    0,
    null,
    null,
  );

  if (baseOfDll == 0) {
    print('SymLoadModuleEx failed.');

    SymCleanup(hProcess);
    exit(1);
  }

  final callback = NativeCallable<PSYM_ENUMERATESYMBOLS_CALLBACK>.isolateLocal(
    _enumSymbolProc,
    exceptionalReturn: 0,
  );

  final mask = w('*');
  if (!SymEnumSymbols(
    hProcess,
    baseOfDll,
    mask.ptr,
    callback.nativeFunction,
    null,
  )) {
    print('SymEnumSymbols failed.');
  }

  callback.close();
  SymCleanup(hProcess);

  return _exportedSymbols;
}

/// Test which processor architecture Windows is running
bool isWindowsOnArm(int hProcess) {
  final pProcessMachine = loggingCalloc<USHORT>();
  final pNativeMachine = loggingCalloc<USHORT>();

  try {
    IsWow64Process2(hProcess, pProcessMachine, pNativeMachine);
    return pNativeMachine.value == IMAGE_FILE_MACHINE_ARM64;
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

  getExports(
    hProcess,
    kernel32,
  ).forEach((name, address) => print('[${address.toHexString()}] $name'));
}
