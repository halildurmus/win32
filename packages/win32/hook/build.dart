import 'dart:io';

import 'package:code_assets/code_assets.dart';
import 'package:hooks/hooks.dart';
import 'package:logging/logging.dart';
import 'package:native_toolchain_c/native_toolchain_c.dart';

import '_internal.g.dart';

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
    ..level = Level.INFO
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

      if (record.level >= Level.WARNING) {
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
      linkMode: DynamicLoadingSystem(Uri.file(library)),
    );

    output.assets.code.addAll(dynamicLibraries.map(createCodeAsset));

    await cbuilder.run(
      input: input,
      output: output,
      logger: createDefaultLogger(),
    );
  });
}
