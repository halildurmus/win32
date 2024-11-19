import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';

void main(List<String> args) {
  final argParser = ArgParser()
    ..addOption(
      'version',
      abbr: 'v',
      help: 'The version number to update the changelog with.',
      mandatory: true,
    );
  final argResults = argParser.parse(args);
  var version = argResults.option('version');
  if (version == null) {
    print('❌ Version number must be provided.');
    exit(1);
  }
  version = version.replaceFirst(RegExp(r'^v'), '');

  print('🚧 Updating changelog for v$version...');
  final result = Process.runSync(
    'dart',
    [
      'run',
      'hooks:update_changelog',
      '--tag',
      'v$version',
      '--include-path',
      'examples/**/*',
      '--include-path',
      'packages/win32/**/*',
      '--include-path',
      'website/docs/**/*',
      '--repository',
      '../../'
    ],
    stdoutEncoding: utf8,
    stderrEncoding: utf8,
    workingDirectory: Platform.script.resolve('../packages/win32').toFilePath(),
  );
  stdout.write(result.stdout);
  stderr.write(result.stderr);
}
