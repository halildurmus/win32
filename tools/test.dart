// ignore_for_file: unawaited_futures

import 'dart:io';

import 'package:path/path.dart' as p;

void main(List<String> args) async {
  final numRuns = args.isNotEmpty ? int.parse(args.first) : 3;
  await runTests('without any flags');
  await runTests('with randomize', numRuns: numRuns);
  await runTests('with randomize and -j1', numRuns: numRuns, concurrency: 1);
  print('✅ All $numRuns test iterations passed successfully.');
}

Future<void> runTests(
  String description, {
  int? concurrency,
  List<String> flags = const [],
  int numRuns = 3,
  bool randomize = false,
}) async {
  for (var i = 1; i <= numRuns; i++) {
    print(
      '🧪 Running package:win32 tests iteration $i of $numRuns $description...',
    );
    final process = await Process.start(
      'dart',
      [
        '--enable-experiment=native-assets',
        'test',
        if (concurrency != null) '-j$concurrency',
        if (randomize) '--test-randomize-ordering-seed=random',
        ...flags,
      ],
      workingDirectory: p.normalize(
        p.join(Platform.script.resolve('..').toFilePath(), 'packages', 'win32'),
      ),
    );
    stdout.addStream(process.stdout);
    stderr.addStream(process.stderr);
    exitCode = await process.exitCode;
    if (exitCode == 0) {
      print('✅ Tests succeeded on iteration $i.');
    } else {
      print('❌ Tests failed on iteration $i.');
    }
  }
}
