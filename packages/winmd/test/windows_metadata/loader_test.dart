import 'dart:io';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';

import '../versions.dart';

void main() {
  group('WindowsMetadataLoader', () {
    test('can load WDK metadata', () async {
      final metadataLoader = WindowsMetadataLoader();
      final index = await metadataLoader.loadWdkMetadata(
        version: wdkMetadataVersion,
      );
      check(index.readers.length).equals(1);
      check(index.readers[0].moduleName).equals('Windows.Wdk.winmd');
      check(
        index.readers[0].moduleMvid.toString(),
      ).equals('01c38a1a-59ad-43a6-b86a-a869fb5c2902');
    });

    test('can load Win32 metadata', () async {
      final metadataLoader = WindowsMetadataLoader();
      final index = await metadataLoader.loadWin32Metadata(
        version: win32MetadataVersion,
      );
      check(index.readers.length).equals(1);
      check(index.readers[0].moduleName).equals('Windows.Win32.winmd');
      check(
        index.readers[0].moduleMvid.toString(),
      ).equals('4a520299-e458-4675-befb-318972b60e6a');
    });

    test('can load WinRT metadata', () async {
      final metadataLoader = WindowsMetadataLoader();
      final index = await metadataLoader.loadWinrtMetadata(
        version: winrtMetadataVersion,
      );
      check(index.readers.length).equals(1);
      check(index.readers[0].moduleName).equals('Windows.winmd');
      check(index.readers[0].moduleMvid.toString().length).equals(36);
    });

    test('can load all metadata together', () async {
      final metadataLoader = WindowsMetadataLoader();
      final index = await metadataLoader.loadAllMetadata(
        versions: const WindowsMetadataVersions(
          wdk: wdkMetadataVersion,
          win32: win32MetadataVersion,
          winrt: winrtMetadataVersion,
        ),
      );
      check(index.readers.length).equals(3);
      check(index.readers[0].moduleName).equals('Windows.Wdk.winmd');
      check(index.readers[1].moduleName).equals('Windows.Win32.winmd');
      check(index.readers[2].moduleName).equals('Windows.winmd');
    });

    test('can load multiple metadata selectively', () async {
      final metadataLoader = WindowsMetadataLoader();
      final index = await metadataLoader.loadMultipleMetadata(
        packages: [WindowsMetadataPackage.wdk, WindowsMetadataPackage.win32],
        versions: const WindowsMetadataVersions(
          wdk: wdkMetadataVersion,
          win32: win32MetadataVersion,
        ),
      );
      check(index.readers.length).equals(2);
      check(index.readers[0].moduleName).equals('Windows.Wdk.winmd');
      check(index.readers[1].moduleName).equals('Windows.Win32.winmd');
    });

    test('loadMultipleMetadata throws if no packages are provided', () async {
      final metadataLoader = WindowsMetadataLoader();
      await check(
        metadataLoader.loadMultipleMetadata(packages: []),
      ).throws<ArgumentError>();
    });

    test(
      'loads Win32 metadata at the specified version into custom storage',
      () async {
        final tempDir = Directory.systemTemp.createTempSync(
          'winmd_loader_test',
        );
        final localStorageManager = LocalStorageManager(
          storagePath: tempDir.path,
        );
        final metadataLoader = WindowsMetadataLoader(
          localStorageManager: localStorageManager,
        );
        try {
          await metadataLoader.loadWin32Metadata(version: win32MetadataVersion);
          check(
            localStorageManager.findPackageDirectory(
              WindowsMetadataPackage.win32,
              win32MetadataVersion,
            ),
          ).isNotNull().endsWith(
            'microsoft.windows.sdk.win32metadata@$win32MetadataVersion',
          );
        } finally {
          localStorageManager.clear();
          tempDir.deleteSync();
        }
      },
    );

    test('respects explicit versions for each package', () async {
      final tempDir = Directory.systemTemp.createTempSync('winmd_loader_test');
      final localStorageManager = LocalStorageManager(
        storagePath: tempDir.path,
      );
      final metadataLoader = WindowsMetadataLoader(
        localStorageManager: localStorageManager,
      );
      const versions = WindowsMetadataVersions(
        wdk: wdkMetadataVersion,
        win32: win32MetadataVersion,
        winrt: winrtMetadataVersion,
      );
      try {
        await metadataLoader.loadAllMetadata(versions: versions);
        check(
          localStorageManager.findPackageDirectory(
            WindowsMetadataPackage.wdk,
            wdkMetadataVersion,
          ),
        ).isNotNull().endsWith(
          'microsoft.windows.wdk.win32metadata@$wdkMetadataVersion',
        );
        check(
          localStorageManager.findPackageDirectory(
            WindowsMetadataPackage.win32,
            win32MetadataVersion,
          ),
        ).isNotNull().endsWith(
          'microsoft.windows.sdk.win32metadata@$win32MetadataVersion',
        );
        check(
          localStorageManager.findPackageDirectory(
            WindowsMetadataPackage.winrt,
            winrtMetadataVersion,
          ),
        ).isNotNull().endsWith(
          'microsoft.windows.sdk.contracts@$winrtMetadataVersion',
        );
      } finally {
        localStorageManager.clear();
        tempDir.deleteSync();
      }
    });
  });
}
