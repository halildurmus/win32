import 'dart:io';

import 'package:path/path.dart' as path;

import '../flutter_runner.dart';

class FlutterFinder {
  final String bundlePath;
  final String dllPath;

  final Bundle bundle;
  final FlutterApi api;

  FlutterFinder._internal(this.bundlePath, this.dllPath, this.bundle, this.api);

  factory FlutterFinder.searchFromSupposedPaths({
    required String dataPath,
    required String dllFilePath,
  }) {
    final bundlePath = searchBundleFolder(dataPath);
    final dllPath = searchDllFile(dllFilePath);

    final bundle = Bundle.fromSourceDir(bundlePath);
    final flutterApi = FlutterApi.load(dllPath);

    return FlutterFinder._internal(
      bundlePath,
      dllPath,
      bundle,
      flutterApi,
    );
  }

  static String searchBundleFolder(String supposePath) {
    try {
      return bundleSearchPaths(supposePath)
          .firstWhere(Bundle.isDirectoryContain);
    } catch (e) {
      throw 'Bundle not found.\n'
          'Search paths:\n'
          '${bundleSearchPaths(supposePath).join('\n')}';
    }
  }

  static String searchDllFile(String supposePath) {
    try {
      return dllSearchPaths(supposePath)
          .firstWhere((dllPath) => File(dllPath).existsSync());
    } catch (e) {
      throw 'Flutter dll not found.\n'
          'Search paths:\n'
          '${dllSearchPaths(supposePath).join('\n')}';
    }
  }

  static Iterable<String> bundleSearchPaths(String supposePath) sync* {
    for (final dir in _searchPaths(supposePath)) {
      yield dir;
      yield path.join(dir, 'data');
    }
  }

  static Iterable<String> dllSearchPaths(String supposePath) sync* {
    for (final dir in _searchPaths(supposePath)) {
      yield path.join(dir, 'flutter_windows.dll');
    }

    yield path.join(
      flutterSdkDir,
      r'cache\artifacts\engine\windows-x64-release',
      'flutter_windows.dll',
    );
  }

  static Iterable<String> _searchPaths(String supposePath) sync* {
    if (supposePath.isNotEmpty) {
      yield supposePath;
    }

    if (currentDir != supposePath) {
      yield currentDir;
    }

    if (workingDir != currentDir) {
      yield workingDir;
    }
  }

  static String get flutterSdkDir {
    final where = Process.runSync('where', ['flutter']);
    final cmd = where.stdout.toString();
    final match = RegExp(r'[^\n]+').firstMatch(cmd); // read first line

    if (match == null) {
      throw 'Flutter sdk not found.\n';
    }

    final flutterSdk = path.dirname(match.group(0).toString());
    return flutterSdk;
  }

  static late String currentDir =
      path.dirname(Platform.script.toFilePath(windows: true));
  static late String workingDir = Directory.current.path;
}
