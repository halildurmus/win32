// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
  final hMods = calloc<IntPtr>(1024);
  final cbNeeded = calloc<Uint32>();

  if (EnumProcessModules(hProcess, hMods, sizeOf<IntPtr>() * 1024, cbNeeded) ==
      1) {
    for (var i = 0; i < (cbNeeded.value ~/ sizeOf<IntPtr>()); i++) {
      final szModName = calloc<Uint16>(MAX_PATH).cast<Utf16>();

      // Get the full path to the module's file.
      final hModule = hMods.elementAt(i).value;
      final moduleValue =
          '0x${hModule.toRadixString(16).padLeft(sizeOf<IntPtr>(), '0').toUpperCase()}';

      if (GetModuleFileNameEx(hProcess, hModule, szModName, MAX_PATH) != 0) {
        // Print the module name and handle value.
        print('\t${szModName.toDartString()} ($moduleValue)');
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
  final aProcesses = calloc<Uint32>(1024);
  final cbNeeded = calloc<Uint32>();

  // Get the list of process identifiers.
  if (EnumProcesses(aProcesses, sizeOf<Uint32>() * 1024, cbNeeded) == 0) {
    print('EnumProcesses failed.');
    exit(1);
  }

  // Calculate how many process identifiers were returned.
  final cProcesses = cbNeeded.value ~/ sizeOf<Uint32>();

  // Print the names of the modules for each process.
  for (var i = 0; i < cProcesses; i++) {
    printModules(aProcesses[i]);
  }
}
