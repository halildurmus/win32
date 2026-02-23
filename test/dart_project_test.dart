import 'package:checks/checks.dart';
import 'package:path/path.dart' as p;
import 'package:test/scaffolding.dart';
import 'package:win32_runner/win32_runner.dart';

void main() {
  group('DartProject', () {
    test('should create DartProject with given paths', () {
      const aotLibraryPath = '/path/to/app.so';
      const assetsPath = '/path/to/flutter_assets';
      const icuDataPath = '/path/to/icudtl.dat';

      const project = DartProject(
        aotLibraryPath: aotLibraryPath,
        assetsPath: assetsPath,
        icuDataPath: icuDataPath,
      );
      check(project.aotLibraryPath).equals(aotLibraryPath);
      check(project.assetsPath).equals(assetsPath);
      check(project.icuDataPath).equals(icuDataPath);
    });

    test('should create DartProject from base directory using fromPath', () {
      const basePath = '/path/to/project';
      final project = DartProject.fromPath(basePath);
      check(project.aotLibraryPath).equals(p.join(basePath, 'app.so'));
      check(project.assetsPath).equals(p.join(basePath, 'flutter_assets'));
      check(project.icuDataPath).equals(p.join(basePath, 'icudtl.dat'));
    });

    test(
      'should create DartProject from root Flutter folder using fromRoot',
      () {
        const rootPath = '/flutter/project';
        final project = DartProject.fromRoot(rootPath);
        check(
          project.aotLibraryPath,
        ).equals(p.join(rootPath, 'build', 'windows', 'app.so'));
        check(
          project.assetsPath,
        ).equals(p.join(rootPath, 'build', 'flutter_assets'));
        check(project.icuDataPath).equals(
          p.join(rootPath, 'windows', 'flutter', 'ephemeral', 'icudtl.dat'),
        );
      },
    );

    test('should handle relative paths in fromPath', () {
      const basePath = 'relative/project';
      final project = DartProject.fromPath(basePath);
      check(project.aotLibraryPath).equals(p.join(basePath, 'app.so'));
      check(project.assetsPath).equals(p.join(basePath, 'flutter_assets'));
      check(project.icuDataPath).equals(p.join(basePath, 'icudtl.dat'));
    });

    test('should handle relative paths in fromRoot', () {
      const rootPath = 'relative/flutter/project';
      final project = DartProject.fromRoot(rootPath);
      check(
        project.aotLibraryPath,
      ).equals(p.join(rootPath, 'build', 'windows', 'app.so'));
      check(
        project.assetsPath,
      ).equals(p.join(rootPath, 'build', 'flutter_assets'));
      check(project.icuDataPath).equals(
        p.join(rootPath, 'windows', 'flutter', 'ephemeral', 'icudtl.dat'),
      );
    });
  });
}
