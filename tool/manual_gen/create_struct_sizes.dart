import 'dart:io';
import 'win32api.dart';

const header = '''
/**
 * Copyright (c) 2020 the Dart project authors. All rights reserved.
 * Use of this source code is governed by a BSD-style
 * license that can be found in the LICENSE file.
 */

// struct_sizes.cpp

// Development utility to confirm the width of various Win32 structs.

// This code not used by the package itself, but is just a helper to inspect
// widths across x86 and x64 architectures. The results are pasted into
// win32\\struct_sizes.dart as input to the test harness.

// Compile with cl struct_sizes.cpp /Fe:structs64.exe

#include <stdlib.h>
#include <windows.h>
#include <stdio.h>
#include <ShlObj_core.h>
#include <netlistmgr.h>
#include <bluetoothapis.h>
#include <wincred.h>
#include <Shlwapi.h>
#include <physicalmonitorenumerationapi.h>
#include <CorHdr.h>
#include <DbgHelp.h>
#include <ShellScalingApi.h>
#include <AppxPackaging.h>

void main()
{
    printf("  const structSizeXX = {\\n");

    // Manually generated structs
    printf("  'BLUETOOTH_ADDRESS': %zu,\\n", sizeof(BLUETOOTH_ADDRESS));
    printf("  'BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS': %zu,\\n", sizeof(BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS));
    printf("  'BLUETOOTH_PIN_INFO': %zu,\\n", sizeof(BLUETOOTH_PIN_INFO));
    printf("  'CHAR_INFO': %zu,\\n", sizeof(CHAR_INFO));
    printf("  'COR_FIELD_OFFSET': %zu,\\n", sizeof(COR_FIELD_OFFSET));
    printf("  'DEVMODE': %zu,\\n", sizeof(DEVMODEW));
    printf("  'GUID': %zu,\\n", sizeof(GUID));
    printf("  'INPUT': %zu,\\n", sizeof(INPUT));
    printf("  'MMTIME': %zu,\\n", sizeof(MMTIME));
    printf("  'NOTIFYICONDATA': %zu,\\n", sizeof(NOTIFYICONDATAW));
    printf("  'OVERLAPPED': %zu,\\n", sizeof(OVERLAPPED));
    printf("  'PROCESS_HEAP_ENTRY': %zu,\\n", sizeof(PROCESS_HEAP_ENTRY));
    printf("  'PROPVARIANT': %zu,\\n", sizeof(PROPVARIANT));
    printf("  'SHELLEXECUTEINFO': %zu,\\n", sizeof(SHELLEXECUTEINFO));
    printf("  'STARTUPINFOEX': %zu,\\n", sizeof(STARTUPINFOEX));
    printf("  'SYSTEM_INFO': %zu,\\n", sizeof(SYSTEM_INFO));
    printf("  'TASKDIALOGCONFIG': %zu,\\n", sizeof(TASKDIALOGCONFIG));
    printf("  'TYPEDESC': %zu,\\n", sizeof(TYPEDESC));
    printf("  'VARIANT': %zu,\\n", sizeof(VARIANT));

    // Automatically generated structs
''';

const footer = '''
    printf("};\\n");
}
''';

void main() {
  final win32 = Win32API(
      apiFile: 'tool/manual_gen/win32api.json',
      structFile: 'tool/manual_gen/win32struct.json');

  // Creates pairs like {LOGFONT: LOGFONTW}
  final structs =
      win32.structs.map((k, v) => MapEntry(k, v.namespace.split('.').last));

  final writer = File('tool/struct_sizes.cpp').openSync(mode: FileMode.write);
  writer.writeStringSync(header);

  for (final struct in structs.keys) {
    writer.writeStringSync(
        '    printf("  \'$struct\': %zu,\\n", sizeof(${structs[struct]}));\n');
  }

  writer.writeStringSync(footer);
}
