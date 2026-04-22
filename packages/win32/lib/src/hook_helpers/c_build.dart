import 'package:code_assets/code_assets.dart';
import 'package:hooks/hooks.dart';
import 'package:native_toolchain_c/native_toolchain_c.dart';

import 'logger.dart';
import 'resources.g.dart';

/// Builds the C code for the `package:win32`.
Future<void> runBuild(BuildInput input, BuildOutputBuilder output) async {
  final CodeConfig(:targetOS, :targetArchitecture) = input.config.code;
  final name = createTargetName(targetOS, targetArchitecture);
  final cbuilder = CBuilder.library(
    name: name,
    assetName: 'win32.dart',
    sources: sources,
    libraries: _importLibraries,
    flags: const ['/nologo'],
  );
  await cbuilder.run(
    input: input,
    output: output,
    logger: createDefaultLogger(),
  );
}

/// Adds dynamic libraries as code assets to the build output.
void addDynamicLibrariesAsCodeAssets(BuildOutputBuilder output) {
  for (final library in dynamicLibraries) {
    final assetName = 'src/win32/${_normalizeLibraryName(library)}.g.dart';
    output.assets.code.add(
      .new(
        package: 'win32',
        name: assetName,
        linkMode: DynamicLoadingSystem(.file(library)),
      ),
    );
  }
}

/// Creates a target name based on the OS and architecture.
///
/// For example, `win32_windows_arm64` or `win32_windows_x64`.
String createTargetName(OS targetOS, Architecture targetArchitecture) =>
    'win32_${targetOS.name}_${targetArchitecture.name}';

const _importLibraries = [
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

String _normalizeLibraryName(String library) =>
    library.split('.').first.replaceAll('-', '_');
