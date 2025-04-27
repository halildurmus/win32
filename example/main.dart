import 'package:logging/logging.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

void main() async {
  print('Loading Windows metadata...');
  Logger.root.level = Level.ALL;
  winmdLogger.onRecord.listen((record) {
    print('${record.level.name}: ${record.message}');
  });
  final stopwatch = Stopwatch()..start();
  final index = await WindowsMetadataLoader.loadMultipleMetadata(
    packages: [
      WindowsMetadataPackage.wdk,
      WindowsMetadataPackage.win32,
      WindowsMetadataPackage.winrt,
    ],
    versions: const WindowsMetadataVersions(
      wdk: '0.13.25-experimental',
      win32: '63.0.31-preview',
      winrt: '10.0.26100.1742',
    ),
  );
  print('Loaded Windows metadata in ${stopwatch.elapsedMilliseconds}ms');

  final td = index.getSingleType('Windows.Win32.UI.Shell', 'IFileDialog2');
  print('category: ${td.category}');
  print('extend: ${td.extends$}');
  print('methods: ${td.methods}');
  print('interface impl: ${td.interfaceImpls}');
  print('attribute: ${{td.attributes}}');

  for (final ref in index.assemblyRefs) {
    print(ref);
  }

  for (final module in index.modules) {
    print(module);
  }
}
