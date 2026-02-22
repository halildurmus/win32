// Retrieves the exported symbols from kernel32.

import 'dart:ffi';
import 'dart:io' show exit;

import 'package:ffi/ffi.dart';
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

Map<String, int> getExports(HANDLE hProcess, String module) {
  if (!SymInitialize(hProcess, null, false).value) {
    print('SymInitialize failed.');
    exit(1);
  }

  final imageName = module.toPcwstr();
  final baseOfDll = SymLoadModuleEx(
    hProcess,
    null,
    imageName,
    null,
    0,
    0,
    null,
    null,
  ).value;
  free(imageName);

  if (baseOfDll == 0) {
    print('SymLoadModuleEx failed.');
    SymCleanup(hProcess);
    exit(1);
  }

  final callback = NativeCallable<PSYM_ENUMERATESYMBOLS_CALLBACK>.isolateLocal(
    _enumSymbolProc,
    exceptionalReturn: 0,
  );

  final mask = '*'.toPcwstr();
  if (!SymEnumSymbols(
    hProcess,
    baseOfDll,
    mask,
    callback.nativeFunction,
    null,
  ).value) {
    print('SymEnumSymbols failed.');
  }

  free(mask);
  callback.close();
  SymCleanup(hProcess);

  return _exportedSymbols;
}

/// Test which processor architecture Windows is running
bool isWindowsOnArm(HANDLE hProcess) => using((arena) {
  final pProcessMachine = arena<USHORT>();
  final pNativeMachine = arena<USHORT>();
  IsWow64Process2(hProcess, pProcessMachine, pNativeMachine);
  return pNativeMachine.value == IMAGE_FILE_MACHINE_ARM64;
});

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
