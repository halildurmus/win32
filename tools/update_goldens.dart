// ignore_for_file: unawaited_futures

import 'dart:io';

import 'package:path/path.dart' as p;

void main(List<String> args) async {
  final updateGoldensProcess = await Process.start(
    'dart',
    ['bin/update_goldens.dart', ...args],
    workingDirectory: p.normalize(
      p.join(
        Platform.script.resolve('..').toFilePath(),
        'packages',
        'generator',
      ),
    ),
  );
  stdout.addStream(updateGoldensProcess.stdout);
  stderr.addStream(updateGoldensProcess.stderr);
}
