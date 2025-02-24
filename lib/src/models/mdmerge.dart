import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';

import '../win32/win32.dart';
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
    final installationFolder =
        getRegistryValue(HKEY_LOCAL_MACHINE, registryPath, 'InstallationFolder')
            as String?;
    final productVersion =
        getRegistryValue(HKEY_LOCAL_MACHINE, registryPath, 'ProductVersion')
            as String?;
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

/// Returns the Registry value for the given key, subkey, and value name.
Object? getRegistryValue(int key, String subKey, String valueName) {
  final openKeyPtr = calloc<HANDLE>();
  final dataType = calloc<DWORD>();

  // 256 bytes is more than enough, and Windows will throw ERROR_MORE_DATA if
  // not, so there won't be an overrun.
  final data = calloc<BYTE>(256);
  final dataSize = calloc<DWORD>()..value = 256;

  final lpSubKey = subKey.toNativeUtf16();
  final lpValueName = valueName.toNativeUtf16();

  try {
    var result = RegOpenKeyEx(key, lpSubKey, 0, KEY_READ, openKeyPtr);
    while (result != ERROR_SUCCESS) {
      Sleep(1000);
      result = RegOpenKeyEx(key, lpSubKey, 0, KEY_READ, openKeyPtr);
    }

    if (result == ERROR_SUCCESS) {
      result = RegQueryValueEx(
        openKeyPtr.value,
        lpValueName,
        dataType,
        data,
        dataSize,
      );
      RegCloseKey(openKeyPtr.value);

      if (result == ERROR_SUCCESS) {
        if (dataType.value == REG_DWORD) return data.value;
        if (dataType.value == REG_SZ) return data.cast<Utf16>().toDartString();
      }
    }

    return null;
  } finally {
    calloc
      ..free(openKeyPtr)
      ..free(dataType)
      ..free(data)
      ..free(dataSize)
      ..free(lpSubKey)
      ..free(lpValueName);
  }
}
