import 'dart:io';

import 'package:code_assets/code_assets.dart';
import 'package:hooks/hooks.dart';
import 'package:logging/logging.dart';
import 'package:native_toolchain_c/native_toolchain_c.dart';

const win32ImportLibraries = [
  'Advapi32',
  'Bthprops',
  'Crypt32',
  'Dbghelp',
  'Dxva2',
  'Gdi32',
  'Kernel32',
  'KtmW32',
  'Magnification',
  'ole32',
  'OleAut32',
  'Psapi',
  'runtimeobject',
  'Setupapi',
  'Shell32',
  'User32',
  'Version',
  'Wevtapi',
  'Winscard',
  'Winspool',
  'Wlanapi',
  'Ws2_32',
  'Wtsapi32',
];

Logger createDefaultLogger() {
  final logger = Logger.detached('CBuilder')
    ..level = .INFO
    ..onRecord.listen((record) {
      if (record.message.contains(
        'Microsoft (R) C/C++ Optimizing Compiler Version',
      )) {
        // Skip logging compiler version info.
        return;
      }

      if (record.message.contains('Copyright (C) Microsoft Corporation.')) {
        // Skip logging copyright info.
        return;
      }

      if (record.level >= .WARNING) {
        stderr.writeln(record.message);
      } else {
        stdout.writeln(record.message);
      }
      if (record.error != null) {
        stderr.writeln(record.error);
      }
      if (record.stackTrace != null) {
        stderr.writeln(record.stackTrace);
      }
    });
  return logger;
}

void main(List<String> args) async {
  await build(args, (input, output) async {
    if (!input.config.buildCodeAssets) return;
    if (input.config.code.targetOS != OS.windows) return;

    final packageName = input.packageName;
    final cbuilder = CBuilder.library(
      name: packageName,
      assetName: '$packageName.dart',
      sources: sources,
      libraries: win32ImportLibraries,
      flags: const ['/nologo'],
    );

    String normalizeDynamicLibraryName(String library) =>
        library.replaceAll('-', '_').split('.').first;

    CodeAsset createCodeAsset(String library) => CodeAsset(
      package: packageName,
      name: 'src/win32/${normalizeDynamicLibraryName(library)}.g.dart',
      linkMode: DynamicLoadingSystem(.file(library)),
    );

    output.assets.code.addAll(dynamicLibraries.map(createCodeAsset));

    await cbuilder.run(
      input: input,
      output: output,
      logger: createDefaultLogger(),
    );
  });
}

const dynamicLibraries = {
  'advapi32.dll',
  'api-ms-win-core-apiquery-l2-1-0.dll',
  'api-ms-win-core-comm-l1-1-1.dll',
  'api-ms-win-core-comm-l1-1-2.dll',
  'api-ms-win-core-handle-l1-1-0.dll',
  'api-ms-win-core-path-l1-1-0.dll',
  'api-ms-win-core-sysinfo-l1-2-3.dll',
  'api-ms-win-core-winrt-error-l1-1-0.dll',
  'api-ms-win-core-winrt-l1-1-0.dll',
  'api-ms-win-core-winrt-string-l1-1-0.dll',
  'api-ms-win-ro-typeresolution-l1-1-0.dll',
  'api-ms-win-ro-typeresolution-l1-1-1.dll',
  'api-ms-win-service-core-l1-1-3.dll',
  'api-ms-win-service-core-l1-1-4.dll',
  'api-ms-win-service-core-l1-1-5.dll',
  'api-ms-win-shcore-scaling-l1-1-1.dll',
  'api-ms-win-wsl-api-l1-1-0.dll',
  'bluetoothapis.dll',
  'bthprops.cpl',
  'comctl32.dll',
  'comdlg32.dll',
  'crypt32.dll',
  'dbghelp.dll',
  'dwmapi.dll',
  'dxva2.dll',
  'gdi32.dll',
  'iphlpapi.dll',
  'kernel32.dll',
  'ktmw32.dll',
  'magnification.dll',
  'netapi32.dll',
  'ntdll.dll',
  'ole32.dll',
  'oleaut32.dll',
  'powrprof.dll',
  'propsys.dll',
  'psapi.dll',
  'rometadata.dll',
  'scarddlg.dll',
  'setupapi.dll',
  'shell32.dll',
  'shlwapi.dll',
  'user32.dll',
  'uxtheme.dll',
  'version.dll',
  'wevtapi.dll',
  'winmm.dll',
  'winscard.dll',
  'winspool.drv',
  'wlanapi.dll',
  'ws2_32.dll',
  'wtsapi32.dll',
  'xinput1_4.dll',
};

const sources = [
  'src/advapi32.g.c',
  'src/bluetoothapis.g.c',
  'src/bthprops.g.c',
  'src/crypt32.g.c',
  'src/dbghelp.g.c',
  'src/dxva2.g.c',
  'src/gdi32.g.c',
  'src/kernel32.g.c',
  'src/ktmw32.g.c',
  'src/magnification.g.c',
  'src/psapi.g.c',
  'src/setupapi.g.c',
  'src/shell32.g.c',
  'src/user32.g.c',
  'src/version.g.c',
  'src/wevtapi.g.c',
  'src/winscard.g.c',
  'src/winspool.g.c',
  'src/wlanapi.g.c',
  'src/ws2_32.g.c',
  'src/wtsapi32.g.c',
];
