import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:archive/archive_io.dart';
import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:path/path.dart' as p;
import 'package:test/scaffolding.dart';

void main() {
  group('LocalStorageManager', () {
    late Directory tempDir;
    late LocalStorageManager storageManager;

    setUp(() {
      tempDir = Directory.systemTemp.createTempSync(
        'generator_local_storage_manager_test',
      );
      storageManager = LocalStorageManager(storagePath: tempDir.path);
    });

    tearDown(() {
      storageManager.clear();
      tempDir.deleteSync();
    });

    test(
      'getOrDownloadPackage downloads and extracts package if missing',
      () async {
        var downloadCalled = false;

        // First call: since no package exists yet, the download function should
        // be called.
        final packagePath = await storageManager.getPackageDirectory(
          dummyPackage,
          version,
          () async {
            downloadCalled = true;
            return createDummyZip();
          },
        );

        // Verify that the package directory and the MessagePack file were
        // created.
        final packageDir = Directory(packagePath);
        check(packageDir.existsSync()).isTrue();
        final msgpackFile = File(p.join(packagePath, 'apidocs.msgpack'));
        check(msgpackFile.existsSync()).isTrue();
        check(downloadCalled).isTrue();

        // Second call: the file now exists, so the download function should not
        // be invoked.
        downloadCalled = false;
        final packagePath2 = await storageManager.getPackageDirectory(
          dummyPackage,
          version,
          () async {
            downloadCalled = true;
            return createDummyZip();
          },
        );
        check(packagePath2).equals(packagePath);
        check(downloadCalled).isFalse();
      },
    );

    test('packagePaths returns valid package directories', () async {
      // Initially, there should be no package directories.
      check(storageManager.storedPackageDirectories).isEmpty();

      // Download (and extract) the package.
      await storageManager.getPackageDirectory(
        dummyPackage,
        version,
        () async => createDummyZip(),
      );

      // Now, storedPackageDirectories should contain one valid entry.
      final paths = storageManager.storedPackageDirectories;
      check(paths.length).equals(1);
      check(paths.first).contains('microsoft.windows.sdk.win32docs@1.0.0');
    });

    test('clear deletes all package directories', () async {
      // Download (and extract) the package.
      await storageManager.getPackageDirectory(
        dummyPackage,
        version,
        () async => createDummyZip(),
      );

      // Verify that the package directory exists.
      check(storageManager.storedPackageDirectories.isNotEmpty).isTrue();

      // Clear the local storage.
      storageManager.clear();

      // After clearing, there should be no package directories.
      check(storageManager.storedPackageDirectories).isEmpty();
    });
  });
}

const NuGetPackage dummyPackage = NuGetPackage.win32Docs;
const version = '1.0.0';

/// A helper to create a dummy ZIP archive containing an "apidocs.msgpack" file.
Uint8List createDummyZip() {
  final archive = Archive();
  final msgpackContent = [0x01, 0x02, 0x03, 0x04]; // Dummy content.
  archive.addFile(
    ArchiveFile('apidocs.msgpack', msgpackContent.length, msgpackContent),
  );
  return Uint8List.fromList(ZipEncoder().encode(archive));
}
