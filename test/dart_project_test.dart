import 'package:path/path.dart' as p;
import 'package:test/test.dart';
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

      expect(project.aotLibraryPath, equals(aotLibraryPath));
      expect(project.assetsPath, equals(assetsPath));
      expect(project.icuDataPath, equals(icuDataPath));
    });

    test('should create DartProject from base directory using fromPath', () {
      const basePath = '/path/to/project';
      final project = DartProject.fromPath(basePath);

      expect(project.aotLibraryPath, equals(p.join(basePath, 'app.so')));
      expect(project.assetsPath, equals(p.join(basePath, 'flutter_assets')));
      expect(project.icuDataPath, equals(p.join(basePath, 'icudtl.dat')));
    });

    test('should create DartProject from root Flutter folder using fromRoot',
        () {
      const rootPath = '/flutter/project';
      final project = DartProject.fromRoot(rootPath);

      expect(
        project.aotLibraryPath,
        equals(p.join(rootPath, 'build', 'windows', 'app.so')),
      );
      expect(
        project.assetsPath,
        equals(p.join(rootPath, 'build', 'flutter_assets')),
      );
      expect(
        project.icuDataPath,
        equals(
          p.join(rootPath, 'windows', 'flutter', 'ephemeral', 'icudtl.dat'),
        ),
      );
    });

    test('should handle relative paths in fromPath', () {
      const basePath = 'relative/project';
      final project = DartProject.fromPath(basePath);

      expect(project.aotLibraryPath, equals(p.join(basePath, 'app.so')));
      expect(project.assetsPath, equals(p.join(basePath, 'flutter_assets')));
      expect(project.icuDataPath, equals(p.join(basePath, 'icudtl.dat')));
    });

    test('should handle relative paths in fromRoot', () {
      const rootPath = 'relative/flutter/project';
      final project = DartProject.fromRoot(rootPath);

      expect(
        project.aotLibraryPath,
        equals(p.join(rootPath, 'build', 'windows', 'app.so')),
      );
      expect(
        project.assetsPath,
        equals(p.join(rootPath, 'build', 'flutter_assets')),
      );
      expect(
        project.icuDataPath,
        equals(
          p.join(rootPath, 'windows', 'flutter', 'ephemeral', 'icudtl.dat'),
        ),
      );
    });
  });
}
