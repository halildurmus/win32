// modules.dart

// Enumerates all processes and modules loaded within the process

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';

import 'package:win32/win32.dart';

int printModules(int processID) {
  // Print the process identifier.
  print('\nProcess ID: $processID');

  // Get a handle to the process.
  final hProcess = OpenProcess(
      PROCESS_QUERY_INFORMATION | PROCESS_VM_READ, FALSE, processID);

  if (hProcess == 0) {
    return 1;
  }

  // Get a list of all the modules in this process.
  final hMods = allocate<IntPtr>(count: 1024);
  final cbNeeded = allocate<Uint32>();

  if (EnumProcessModules(
          hProcess, hMods, sizeOf<IntPtr>() * 1024, cbNeeded.cast()) ==
      1) {
    for (var i = 0; i < ((cbNeeded.value / sizeOf<IntPtr>()).floor()); i++) {
      final szModName = allocate<Uint16>(count: MAX_PATH).cast<Utf16>();

      // Get the full path to the module's file.
      final hModule = hMods.elementAt(i).value;
      final moduleValue =
          '0x${hModule.toRadixString(16).padLeft(sizeOf<IntPtr>(), '0').toUpperCase()}';

      if (GetModuleFileNameEx(hProcess, hModule, szModName, MAX_PATH) != 0) {
        // Print the module name and handle value.
        print('\t${szModName.unpackString(MAX_PATH)} ($moduleValue)');
      }
      free(szModName);
    }
  }

  free(hMods);
  free(cbNeeded);

  // Release the handle to the process.
  CloseHandle(hProcess);

  return 0;
}

void main() {
  final aProcesses = allocate<Uint32>(count: 1024);
  final cbNeeded = allocate<Uint32>();

  // Get the list of process identifiers.
  if (EnumProcesses(aProcesses, sizeOf<Uint32>() * 1024, cbNeeded.cast()) ==
      0) {
    print('EnumProcesses failed.');
    exit(1);
  }

  // Calculate how many process identifiers were returned.
  final cProcesses = (cbNeeded.value / sizeOf<Uint32>()).floor();

  // Print the names of the modules for each process.
  for (var i = 0; i < cProcesses; i++) {
    printModules(aProcesses[i]);
  }
}
