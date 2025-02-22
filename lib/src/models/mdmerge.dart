import 'dart:io';

import 'package:win32_registry/win32_registry.dart';

import 'exception.dart';

/// A utility class for merging WinRT metadata (`.winmd`) files using the
/// `mdmerge.exe` executable.
///
/// See https://learn.microsoft.com/windows/win32/midl/mdmerge-and-metadata-files
abstract final class MdMerge {
  /// Path to the `mdmerge.exe` executable.
  static final executablePath = _resolveExecutablePath();

  /// Retrieves the path to the `mdmerge.exe` executable.
  ///
  /// Attempts to locate the `mdmerge.exe` executable by inspecting the Windows
  /// SDK installation registry keys and determining the appropriate
  /// architecture.
  ///
  /// Throws a [WinmdException] if the necessary SDK information is not found.
  static String _resolveExecutablePath() {
    const registryPath =
        r'SOFTWARE\WOW6432Node\Microsoft\Microsoft SDKs\Windows\v10.0';
    final key = Registry.openPath(
      RegistryHive.localMachine,
      path: registryPath,
    );
    try {
      final installationFolder = key.getStringValue('InstallationFolder');
      final productVersion = key.getStringValue('ProductVersion');
      if (installationFolder == null || productVersion == null) {
        throw const WinmdException(
          'Failed to retrieve Windows SDK installation information.',
        );
      }

      // Determine processor architecture.
      final arch = switch (Platform.environment['PROCESSOR_ARCHITECTURE']) {
        'ARM64' => 'arm64',
        _ => 'x64',
      };

      final mdmergeExePath =
          '$installationFolder\\bin\\$productVersion.0\\$arch\\mdmerge.exe';
      if (!File(mdmergeExePath).existsSync()) {
        throw WinmdException('mdmerge.exe not found at $mdmergeExePath');
      }
      return mdmergeExePath;
    } finally {
      key.close();
    }
  }

  /// Merges multiple WinRT metadata (`.winmd`) files located in [metadataPath]
  /// into a single file at [outputPath].
  ///
  /// This method synchronously runs the mdmerge process and validates its exit
  /// code. If mdmerge fails, it throws a [WinmdException] with the process
  /// output.
  static void mergeMetadata(String metadataPath, String outputPath) {
    const namespaceDepth = 1;
    final result = Process.runSync(executablePath, [
      '-o',
      outputPath,
      '-i',
      '.',
      '-n',
      '$namespaceDepth',
    ], workingDirectory: metadataPath);
    if (result.exitCode != 0) {
      throw WinmdException(
        'mdmerge failed with exit code ${result.exitCode}. '
        'Stdout: ${result.stdout}\nStderr: ${result.stderr}',
      );
    }
  }
}
