import 'dart:io';

import 'package:win32_registry/win32_registry.dart';

import 'exception.dart';

/// A utility class for merging WinRT metadata (`.winmd`) files using the
/// `mdmerge.exe` executable.
///
/// See https://learn.microsoft.com/windows/win32/midl/mdmerge-and-metadata-files
abstract final class MdMerge {
  /// Path to the `mdmerge.exe` executable.
  static final executablePath = _getExecutablePath();

  /// Retrieves the path to the `mdmerge.exe` executable.
  ///
  /// This method attempts to locate the `mdmerge.exe` executable on the local
  /// machine by inspecting the Windows SDK installation registry keys. It
  /// determines the appropriate architecture based on the system's processor
  /// architecture.
  ///
  /// Throws a [WinmdException] if it fails to retrieve the necessary
  /// information about the installed Windows SDK.
  static String _getExecutablePath() {
    const path = r'SOFTWARE\WOW6432Node\Microsoft\Microsoft SDKs\Windows\v10.0';
    final regKey = Registry.openPath(RegistryHive.localMachine, path: path);
    final installationFolder = regKey.getValueAsString('InstallationFolder');
    final productVersion = regKey.getValueAsString('ProductVersion');
    regKey.close();

    if (installationFolder == null || productVersion == null) {
      throw const WinmdException(
          'Failed to get information of the installed Windows SDK.');
    }

    final arch = switch (Platform.environment['PROCESSOR_ARCHITECTURE']) {
      'ARM64' => 'arm64',
      _ => 'x64',
    };

    return '${installationFolder}bin\\$productVersion.0\\$arch\\mdmerge.exe';
  }

  /// Merges multiple metadata (`.winmd`) files in [metadataPath] into a single
  /// file at [outputPath].

  /// Merges multiple WinRT metadata (`.winmd`) files located in [metadataPath]
  /// into a single file at [outputPath].
  static void mergeMetadata(String metadataPath, String outputPath) {
    const namespaceDepth = 1;
    print('Merging WinRT Metadata files into single file...');
    Process.runSync(
      executablePath,
      ['-o', outputPath, '-i', '.', '-n', '$namespaceDepth'],
      workingDirectory: metadataPath,
    );
  }
}
