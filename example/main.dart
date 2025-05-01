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
  final metadataLoader = WindowsMetadataLoader();
  final index = await metadataLoader.loadMultipleMetadata(
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
  print(index.readers);
}
