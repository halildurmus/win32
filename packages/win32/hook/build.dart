import 'package:code_assets/code_assets.dart';
import 'package:hooks/hooks.dart';
import 'package:logging/logging.dart';
import 'package:native_toolchain_c/native_toolchain_c.dart';

void main(List<String> args) async {
  await build(args, (input, output) async {
    final packageName = input.packageName;

    var buildMode = BuildMode.release;
    if (input.userDefines['debug'] case final _?) {
      buildMode = BuildMode.debug;
    }

    final defines = <String, String?>{};
    if (input.userDefines['trace'] case final _?) {
      defines['TRACE'] = null;
    }

    final cbuilder = CBuilder.library(
      name: packageName,
      assetName: '$packageName.dart',
      sources: const [
        'src/win32.c',
        'src/advapi32.g.c',
        'src/bluetoothapis.g.c',
        'src/bthprops.g.c',
        'src/crypt32.g.c',
        'src/dbghelp.g.c',
        'src/dxva2.g.c',
        'src/gdi32.g.c',
        'src/kernel32.g.c',
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
      ],
      libraries: const [
        'Advapi32',
        'Bthprops',
        'Crypt32',
        'Dbghelp',
        'Dxva2',
        'Gdi32',
        'Kernel32',
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
      ],
      buildMode: buildMode,
      defines: defines,
    );
    await cbuilder.run(
      input: input,
      output: output,
      logger: Logger('')
        ..level = Level.ALL
        ..onRecord.listen((record) => print(record.message)),
    );

    String normalizeDynamicLibraryName(String library) =>
        library.replaceAll('-', '_').split('.').first;

    CodeAsset createCodeAsset(String library) => CodeAsset(
      package: packageName,
      name: 'src/win32/${normalizeDynamicLibraryName(library)}.g.dart',
      linkMode: DynamicLoadingSystem(Uri.file(library)),
    );

    // Add the libraries that are not loaded automatically into the process as
    // code assets.
    output.assets.code.addAll(libraries.map(createCodeAsset));
  });
}

const libraries = {
  'api-ms-win-core-apiquery-l2-1-0.dll',
  'api-ms-win-core-comm-l1-1-1.dll',
  'api-ms-win-core-comm-l1-1-2.dll',
  'api-ms-win-core-handle-l1-1-0.dll',
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
  'bthprops.dll',
  'comctl32.dll',
  'comdlg32.dll',
  'dwmapi.dll',
  'magnification.dll',
  'netapi32.dll',
  'powrprof.dll',
  'propsys.dll',
  'rometadata.dll',
  'scarddlg.dll',
  'setupapi.dll',
  'uxtheme.dll',
  'version.dll',
  'wevtapi.dll',
  'winmm.dll',
  'winscard.dll',
  'winspool.drv',
  'wlanapi.dll',
  'wtsapi32.dll',
  'xinput1_4.dll',
};
