import 'dart:io';
import 'dart:isolate';

import 'nuget_package.dart';

/// Manages version information for Windows metadata packages.
///
/// This class reads, updates, and persists NuGet package versions stored in the
/// `versions.dart` file.
final class VersionManager {
  /// Loads version information from a Dart file.
  ///
  /// If [path] is not specified, the default location is assumed to be
  /// `versions.dart`.
  factory VersionManager.load([String? path]) {
    if (path != null && !path.endsWith('.dart')) {
      throw ArgumentError.value(
        path,
        'path',
        'The file path must point to a Dart file.',
      );
    }

    final filePath = _resolveFilePath(path);
    final file = File(filePath);
    final lines = file.readAsLinesSync();

    final constants = lines
        .where((line) => line.startsWith('const '))
        .map((line) => line.replaceAll('const ', ''));
    if (constants.length != _constantToPackage.length) {
      throw FormatException(
        'The file must contain exactly ${_constantToPackage.length} constants.',
      );
    }

    final versions = <NuGetPackage, String>{};

    for (final MapEntry(:key, :value) in _constantToPackage.entries) {
      if (constants.where((c) => c.startsWith(key)).firstOrNull
          case final constant?) {
        final match = _versionPattern.firstMatch(constant);
        if (match == null) {
          throw FormatException('Invalid version format in $constant.');
        }
        versions[value] = match.group(1)!;
      } else {
        throw FormatException('Constant $key is not found in the file.');
      }
    }

    return VersionManager._(filePath, versions);
  }

  const VersionManager._(this.path, this._versions);

  /// The path of the `versions.dart` file.
  final String path;

  /// A mapping of metadata packages to their corresponding versions.
  final Map<NuGetPackage, String> _versions;

  /// Returns an unmodifiable view of the stored package versions.
  Map<NuGetPackage, String> get versions => Map.unmodifiable(_versions);

  /// Returns the version of the [NuGetPackage.wdk] package.
  String get wdk => _getVersion(NuGetPackage.wdk);

  /// Returns the version of the [NuGetPackage.win32] package.
  String get win32 => _getVersion(NuGetPackage.win32);

  /// Returns the version of the [NuGetPackage.win32Docs] package.
  String get win32Docs => _getVersion(NuGetPackage.win32Docs);

  /// Returns the version of the [NuGetPackage.winrt] package.
  String get winrt => _getVersion(NuGetPackage.winrt);

  /// Returns the version of the specified [package].
  String? operator [](NuGetPackage package) => _getVersion(package);

  /// Updates the [version] of a given [package].
  void updateVersion(NuGetPackage package, String version) {
    if (version.isEmpty) {
      throw ArgumentError.value(version, 'version', 'Version cannot be empty.');
    }
    _versions[package] = version;
  }

  /// Saves updated package versions back to the `versions.dart` file.
  ///
  /// - Only modifies existing package versions.
  /// - Maintains the original formatting of the file.
  /// - Returns `true` if any version was updated, otherwise `false`.
  bool save() {
    final file = File(path);
    final lines = file.readAsLinesSync();
    var updated = false;

    // Iterate over lines and update versions based on the mapping.
    for (var i = 0; i < lines.length; i++) {
      final line = lines[i];
      if (!line.startsWith('const ')) continue;

      for (final MapEntry(:key, :value) in _constantToPackage.entries) {
        if (line.contains(key)) {
          final match = _versionPattern.firstMatch(line);
          if (match == null) {
            throw FormatException('Invalid version format in $line.');
          }

          final currentVersion = match.group(1)!;
          final latestVersion = _versions[value];
          if (latestVersion != null && currentVersion != latestVersion) {
            lines[i] = line.replaceFirst(_versionPattern, "'$latestVersion'");
            updated = true;
          }
          break;
        }
      }
    }

    // Ensure the file ends with a newline.
    if (lines.isNotEmpty && lines.last.trim().isNotEmpty) {
      lines.add('');
    }

    // Write the file only if updates were made.
    if (updated) {
      file.writeAsStringSync(lines.join('\n'));
    }

    return updated;
  }

  /// Retrieves the version for a given [package], or throws a [StateError] if
  /// missing.
  String _getVersion(NuGetPackage package) =>
      _versions[package] ??
      (throw StateError('The version for "$package" is not found in $path.'));

  static String _resolveFilePath(String? path) {
    if (path != null) return path;

    final resolved = Isolate.resolvePackageUriSync(
      Uri.parse('package:generator/src/versions.dart'),
    );
    if (resolved != null) return resolved.toFilePath();

    return Platform.script.resolve('../lib/src/versions.dart').toFilePath();
  }

  /// Mapping of constant names in the file to their corresponding
  /// [NuGetPackage].
  static const Map<String, NuGetPackage> _constantToPackage = {
    'wdkMetadataVersion': NuGetPackage.wdk,
    'win32MetadataVersion': NuGetPackage.win32,
    'win32DocsVersion': NuGetPackage.win32Docs,
    'winrtMetadataVersion': NuGetPackage.winrt,
  };

  /// Regular expression pattern to extract version strings.
  static final _versionPattern = RegExp(r"'([\d\.\-a-z]+)'");
}
