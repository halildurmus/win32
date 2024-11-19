import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('🚨 Usage: dart update_changelog.dart <tag>');
    exit(1);
  }

  final tag = args[0];
  if (!tag.startsWith('v')) {
    print('❌ Tag must be in the format "vX.Y.Z".');
    exit(1);
  }

  print('🚧 Starting changelog update for tag $tag...');
  final result = Process.runSync(
    'dart',
    [
      'run',
      'hooks:update_changelog',
      '--tag',
      tag,
      '--include-path',
      'packages/win32/**/*',
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
