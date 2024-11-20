// ignore_for_file: unawaited_futures

import 'dart:io';

import 'package:args/args.dart';
import 'package:path/path.dart' as p;

void main(List<String> args) async {
  final argParser = ArgParser()
    ..addFlag('test', abbr: 't', help: 'Run tests after code generation.');
  final argResults = argParser.parse(args);
  final test = argResults.flag('test');

  print('🚧 Starting code generation...');
  final generatorProcess = await Process.start(
    'dart',
    ['bin/generator.dart', ...argResults.rest],
    workingDirectory: p.normalize(
      p.join(
        Platform.script.resolve('..').toFilePath(),
        'packages',
        'generator',
      ),
    ),
  );
  stdout.addStream(generatorProcess.stdout);
  stderr.addStream(generatorProcess.stderr);
  var exitCode = await generatorProcess.exitCode;
  if (exitCode == 0) {
    print('✅ Code generation succeeded.');
    if (!test) print('🏁 Done.');
  } else {
    print('❌ Code generation failed.');
  }

  if (test) {
    print('🧪 Running package:generator tests...');
    final generatorTestProcess = await Process.start(
      'dart',
      const ['test'],
      workingDirectory: p.normalize(
        p.join(
          Platform.script.resolve('..').toFilePath(),
          'packages',
          'generator',
        ),
      ),
    );
    stdout.addStream(generatorTestProcess.stdout);
    stderr.addStream(generatorTestProcess.stderr);
    exitCode = await generatorTestProcess.exitCode;
    if (exitCode == 0) {
      print('✅ package:generator tests passed.');
    } else {
      print('❌ package:generator tests failed.');
    }

    print('🧪 Running package:win32 tests...');
    final win32TestProcess = await Process.start(
      'dart',
      const [
        '--enable-experiment=native-assets',
        'test',
        '-j1',
        '--test-randomize-ordering-seed=random',
      ],
      workingDirectory: p.normalize(
        p.join(Platform.script.resolve('..').toFilePath(), 'packages', 'win32'),
      ),
    );
    stdout.addStream(win32TestProcess.stdout);
    stderr.addStream(win32TestProcess.stderr);
    exitCode = await win32TestProcess.exitCode;
    if (exitCode == 0) {
      print('✅ package:win32 tests passed.');
      print('🏁 Done.');
    } else {
      print('❌ package:win32 tests failed.');
    }
  }
}
