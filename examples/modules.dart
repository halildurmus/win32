// Enumerates all processes and modules loaded within the process.

import 'dart:ffi';
import 'dart:io';

import 'package:win32/win32.dart';

void printModules(int processID) {
  // Print the process identifier.
  print('\nProcess ID: $processID');

  // Get a handle to the process.
  final hProcess = OpenProcess(
    PROCESS_QUERY_INFORMATION | PROCESS_VM_READ,
    false,
    processID,
  );

  if (hProcess == NULL) return;

  // Get a list of all the modules in this process.
  final hMods = loggingCalloc<HMODULE>(1024);
  final cbNeeded = loggingCalloc<DWORD>();

  if (EnumProcessModules(hProcess, hMods, sizeOf<HMODULE>() * 1024, cbNeeded)) {
    for (var i = 0; i < (cbNeeded.value ~/ sizeOf<HMODULE>()); i++) {
      final szModName = Pwstr.allocate(MAX_PATH);

      // Get the full path to the module's file.
      final hModule = (hMods + i).value;

      if (GetModuleFileNameEx(hProcess, hModule, szModName.ptr, MAX_PATH) !=
          0) {
        final hexModuleValue = hModule
            .toRadixString(16)
            .padLeft(sizeOf<HMODULE>(), '0')
            .toUpperCase();

        // Print the module name and handle value.
        print('\t${szModName.toDartString()} (0x$hexModuleValue)');
      }
    }
  }

  free(hMods);
  free(cbNeeded);

  // Release the handle to the process.
  CloseHandle(hProcess);
}

void main() {
  final aProcesses = loggingCalloc<DWORD>(1024);
  final cbNeeded = loggingCalloc<DWORD>();

  // Get the list of process identifiers.
  if (!EnumProcesses(aProcesses, sizeOf<DWORD>() * 1024, cbNeeded)) {
    print('EnumProcesses failed.');
    exit(1);
  }

  // Calculate how many process identifiers were returned.
  final cProcesses = cbNeeded.value ~/ sizeOf<DWORD>();

  // Print the names of the modules for each process.
  for (var i = 0; i < cProcesses; i++) {
    printModules(aProcesses[i]);
  }

  free(aProcesses);
  free(cbNeeded);
}
