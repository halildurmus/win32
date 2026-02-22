// Enumerates all processes and modules loaded within the process.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void printModules(int processID, Arena arena) {
  // Print the process identifier.
  print('\nProcess ID: $processID');

  // Get a handle to the process.
  final hProcess = OpenProcess(
    PROCESS_QUERY_INFORMATION | PROCESS_VM_READ,
    false,
    processID,
  ).value;
  if (hProcess.isNull) return;

  // Get a list of all the modules in this process.
  final hMods = arena<Pointer>(1024);
  final cbNeeded = arena<DWORD>();

  if (EnumProcessModules(
    hProcess,
    hMods,
    sizeOf<Pointer>() * 1024,
    cbNeeded,
  ).value) {
    for (var i = 0; i < (cbNeeded.value ~/ sizeOf<Pointer>()); i++) {
      final szModName = arena.pwstrBuffer(MAX_PATH);

      // Get the full path to the module's file.
      final hModule = HMODULE((hMods + i).value);

      if (GetModuleFileNameEx(hProcess, hModule, szModName, MAX_PATH).value !=
          0) {
        final hexModuleValue = hModule.address
            .toRadixString(16)
            .padLeft(sizeOf<Pointer>(), '0')
            .toUpperCase();

        // Print the module name and handle value.
        print('\t${szModName.toDartString()} (0x$hexModuleValue)');
      }
    }
  }

  // Release the handle to the process.
  hProcess.close();
}

void main() {
  using((arena) {
    final aProcesses = arena<DWORD>(1024);
    final cbNeeded = arena<DWORD>();

    // Get the list of process identifiers.
    final Win32Result(:value, :error) = EnumProcesses(
      aProcesses,
      sizeOf<DWORD>() * 1024,
      cbNeeded,
    );
    if (!value) {
      print('EnumProcesses failed.');
      throw WindowsException(error.toHRESULT());
    }

    // Calculate how many process identifiers were returned.
    final cProcesses = cbNeeded.value ~/ sizeOf<DWORD>();

    // Print the names of the modules for each process.
    for (var i = 0; i < cProcesses; i++) {
      printModules(aProcesses[i], arena);
    }
  });
}
