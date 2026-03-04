import 'dart:io' as io;

import 'package:checks/checks.dart';
import 'package:nuget/nuget.dart';
import 'package:path/path.dart' as p;
import 'package:test/scaffolding.dart';
import 'package:winmd/mdmerge.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import 'versions.dart';

void main() {
  group('mdmerge', () {
    late io.Directory packageTempDir;
    late String winrtMetadataDir;

    setUpAll(() async {
      packageTempDir = io.Directory.systemTemp.createTempSync(
        'winmd_mdmerge_pkg_',
      );
      final localStorageManager = LocalStorageManager(
        storagePath: packageTempDir.path,
      );
      final nugetClient = NuGetClient();
      try {
        const package = WindowsMetadataPackage.winrt;
        final packageDir = await localStorageManager.getPackageDirectory(
          package,
          winrtMetadataVersion,
          () => nugetClient.downloadPackageContent(
            package.packageId,
            version: winrtMetadataVersion,
          ),
        );
        winrtMetadataDir = p.join(packageDir, 'ref', 'netstandard2.0');
      } finally {
        nugetClient.close();
      }
    });

    tearDownAll(() {
      packageTempDir.deleteSync(recursive: true);
    });

    late io.Directory tempDir;

    setUp(() {
      tempDir = io.Directory.systemTemp.createTempSync('winmd_mdmerge_');
    });

    tearDown(() {
      tempDir.deleteSync(recursive: true);
    });

    test('merges a single .winmd file', () {
      final singleFile = io.Directory(winrtMetadataDir)
          .listSync()
          .whereType<io.File>()
          .firstWhere((f) => f.path.endsWith('.winmd'));
      final outputPath = p.join(tempDir.path, 'merged.winmd');
      mdmerge(inputPaths: [singleFile.path], outputPath: outputPath);

      final outputFile = io.File(outputPath);
      check(outputFile.existsSync()).isTrue();
      check(outputFile.lengthSync()).isGreaterThan(0);

      // Verify the output is a valid metadata file.
      final reader = MetadataReader.read(outputFile.readAsBytesSync());
      check(reader.moduleName).isNotEmpty();
    });

    test('merges a directory of .winmd files', () {
      final outputPath = p.join(tempDir.path, 'merged.winmd');
      mdmerge(inputPaths: [winrtMetadataDir], outputPath: outputPath);

      final outputFile = io.File(outputPath);
      check(outputFile.existsSync()).isTrue();
      final reader = MetadataReader.read(outputFile.readAsBytesSync());
      check(reader.moduleName).isNotEmpty();
    });

    test('throws on empty inputPaths', () {
      check(
        () => mdmerge(
          inputPaths: [],
          outputPath: p.join(tempDir.path, 'out.winmd'),
        ),
      ).throws<ArgumentError>();
    });

    test('throws on nonexistent file path', () {
      check(
        () => mdmerge(
          inputPaths: [p.join(tempDir.path, 'nonexistent.winmd')],
          outputPath: p.join(tempDir.path, 'out.winmd'),
        ),
      ).throws<io.FileSystemException>();
    });

    test('throws on empty directory', () {
      final emptyDir = io.Directory(p.join(tempDir.path, 'empty'))
        ..createSync();
      check(
        () => mdmerge(
          inputPaths: [emptyDir.path],
          outputPath: p.join(tempDir.path, 'out.winmd'),
        ),
      ).throws<io.FileSystemException>();
    });

    test('throws on invalid path (neither file nor directory)', () {
      check(
        () => mdmerge(
          inputPaths: [p.join(tempDir.path, 'no-such-path')],
          outputPath: p.join(tempDir.path, 'out.winmd'),
        ),
      ).throws<io.FileSystemException>();
    });
  });
}
