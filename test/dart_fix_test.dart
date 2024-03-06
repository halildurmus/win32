@TestOn('windows')

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

// Used for debugging the test.
const keepTempDir = false;

void main() {
  test("'dart fix' integration", () {
    // create temp dir
    final tempDir = Directory.systemTemp.createTempSync('test');

    var sdkVersion = Platform.version;
    if (sdkVersion.contains(' ')) {
      sdkVersion = sdkVersion.substring(0, sdkVersion.indexOf(' '));
    }

    try {
      // set up project
      writeFile(tempDir, 'pubspec.yaml', '''
name: test_project
environment:
  sdk: '^$sdkVersion'
dependencies:
  win32:
    path: ${Directory.current.path.replaceAll(r'\', '/')}
''');
      final sourceFile = File(p.join('test_fixes', 'renames.dart'));
      writeFile(
        tempDir,
        p.join('lib', sourceFile.name),
        sourceFile.readAsStringSync(),
      );

      // run pub get
      pubGet(tempDir);

      // dart fix
      dartFix(tempDir);

      // verify no analysis issues
      dartAnalyze(tempDir);
    } finally {
      // ignore: dead_code
      if (keepTempDir) {
        print('dart fix test temp dir: ${tempDir.path}');
      } else {
        tempDir.deleteSync(recursive: true);
      }
    }
  });
}

void writeFile(Directory dir, String filePath, String contents) {
  final file = File(p.join(dir.path, filePath));
  file.parent.createSync();
  file.writeAsStringSync(contents);
}

void pubGet(Directory dir) {
  exec('pub', ['get'], cwd: dir);
}

void dartFix(Directory dir) {
  exec('fix', ['--apply'], cwd: dir);
}

void dartAnalyze(Directory dir) {
  exec('analyze', [], cwd: dir);
}

void exec(String command, List<String> args, {required Directory cwd}) {
  printOnFailure('dart $command ${args.join(', ')}');

  final result = Process.runSync(
    Platform.resolvedExecutable,
    [command, ...args],
    workingDirectory: cwd.path,
  );

  var out = result.stdout as String;
  if (out.isNotEmpty) printOnFailure(out);
  out = result.stderr as String;
  if (out.isNotEmpty) printOnFailure(out);

  if (result.exitCode != 0) {
    fail('dart $command: exitCode ${result.exitCode}');
  }
}

extension on File {
  String get name => p.basename(path);
}
