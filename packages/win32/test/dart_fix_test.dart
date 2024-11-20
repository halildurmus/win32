@TestOn('linux')
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/scaffolding.dart';
import 'package:test/test.dart' show fail;

/// Used for debugging the test.
const keepTempDir = false;

void main() {
  test(
    "'dart fix' integration",
    skip: 'There are no "dart fix" transformations at the moment',
    () {
      final tempDir = Directory.systemTemp.createTempSync('test');
      try {
        // Set up project.
        createPubspec(tempDir);
        copyTestFiles('test_fixes', p.join(tempDir.path, 'lib'));
        pubGet(tempDir);
        dartFix(tempDir);
        dartAnalyze(tempDir);
      } finally {
        if (keepTempDir) {
          print('dart fix test temp dir: ${tempDir.path}');
        } else {
          tempDir.deleteSync(recursive: true);
        }
      }
    },
  );
}

void createPubspec(Directory dir) {
  var sdkVersion = Platform.version;
  if (sdkVersion.contains(' ')) {
    sdkVersion = sdkVersion.substring(0, sdkVersion.indexOf(' '));
  }
  writeFile(dir, 'pubspec.yaml', '''
name: test_project
environment:
  sdk: ^$sdkVersion

dependencies:
  win32:
    path: ${Directory.current.path.replaceAll(r'\', '/')}
''');
}

void copyTestFiles(String sourceDir, String destinationDir) {
  final sourceDirectory = Directory(sourceDir);
  final destinationDirectory = Directory(destinationDir);

  for (final file
      in sourceDirectory.listSync(recursive: true).whereType<File>()) {
    if (file.path.endsWith('.expect')) continue;

    // Calculate the relative path from the source directory.
    final relativePath = p.relative(file.path, from: sourceDirectory.path);

    // Determine the destination path, preserving the folder structure.
    final destinationPath = p.join(destinationDirectory.path, relativePath);

    // Copy the file content.
    writeFile(
      Directory(p.dirname(destinationPath)),
      file.name,
      file.readAsStringSync(),
    );
  }
}

void writeFile(Directory dir, String name, String content) =>
    File(p.join(dir.path, name))
      ..createSync(recursive: true)
      ..writeAsStringSync(content);

void pubGet(Directory dir) => exec('pub', ['get'], cwd: dir);

void dartFix(Directory dir) => exec('fix', ['--apply'], cwd: dir);

void dartAnalyze(Directory dir) => exec('analyze', [], cwd: dir);

void exec(String command, List<String> args, {required Directory cwd}) {
  printOnFailure('dart $command ${args.join(', ')}');

  final result = Process.runSync(Platform.resolvedExecutable, [
    command,
    ...args,
  ], workingDirectory: cwd.path);

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
