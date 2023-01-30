import 'dart:io';
import 'package:generator/generator.dart';

const header = '''
/**
 * Copyright (c) 2020 the Dart project authors. All rights reserved.
 * Use of this source code is governed by a BSD-style
 * license that can be found in the LICENSE file.
 */

// struct_sizes.cpp

// Development utility to confirm the width of various Win32 structs.

// This code is not used by the package itself, but is just a helper to inspect
// widths across x86 and x64 architectures. The results are pasted into
// tool\\generator\\lib\\src\\inputs\\struct_sizes.dart as input to the test harness.

// Compile with something like the following (replace xxxxx with Windows SDK
// build installed):
//   cl /I "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.xxxxx.0\\winrt" \\
//     tool\\struct_sizes\\struct_sizes.cpp

#include <stdlib.h>
#include <stdio.h>

// winsock2.h should be before windows.h, since otherwise the older winsock.h
// will be brought in by windows.h
#include <winsock2.h>
#include <windows.h>

#include <AppxPackaging.h>
#include <bluetoothapis.h>
#include <bluetoothleapis.h>
#include <DbgHelp.h>
#include <dwmapi.h>
#include <iphlpapi.h>
#include <magnification.h>
#include <mmreg.h>
#include <netlistmgr.h>
#include <psapi.h>
#include <physicalmonitorenumerationapi.h>
#include <sapi53.h>
#include <SetupAPI.h>
#include <ShellScalingApi.h>
#include <ShlObj_core.h>
#include <Shlwapi.h>
#include <wincred.h>
#include <wlanapi.h>
#include <ws2bth.h>
#include <Xinput.h>

void main()
{
    // Manually generated structs
    printf("  'GUID': %zu,\\n", sizeof(GUID));
    printf("  'PROPVARIANT': %zu,\\n", sizeof(PROPVARIANT));
    printf("  'VARIANT': %zu,\\n", sizeof(VARIANT));

    // Automatically generated structs
''';

const footer = '''
}
''';

void generateStructSizeAnalyzer() {
  final buffer = StringBuffer()..write(header);
  final structsToGenerate = loadMap('win32_structs.json');

  final structNames = structsToGenerate.keys.map(lastComponent);
  final sortedStructNames = structNames.toList()..sort();

  for (final struct in sortedStructNames) {
    final cStructName = lastComponent(struct);
    final dartStructName = stripAnsiUnicodeSuffix(cStructName);

    buffer.write(
        '    printf("  \'$dartStructName\': %zu,\\n", sizeof($cStructName));\n');
  }

  buffer.write(footer);

  File('../struct_sizes/struct_sizes.cpp').writeAsStringSync(buffer.toString());
}
