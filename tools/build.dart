import 'dart:io';

/// A map that links Dart source files to their compiled executable output
/// paths.
const sourceToOutputMap = {
  'examples/hello.dart': 'examples/bin/hello.exe',
  'examples/manifest/version.dart': 'examples/manifest/version.exe',
  'examples/notepad/notepad.dart': 'examples/bin/dartnote.exe',
  'examples/snake.dart': 'examples/bin/snake.exe',
  'examples/taskdialog.dart': 'examples/bin/taskdialog.exe',
  'examples/tetris/main.dart': 'examples/bin/tetris.exe',
};

void compileDartExecutable(String source, String output) {
  final index = sourceToOutputMap.keys.toList().indexOf(source) + 1;
  final total = sourceToOutputMap.length;
  print('⚙️ [$index/$total] Compiling: $source → $output');
  final result = Process.runSync(
    'dart',
    ['compile', 'exe', source, '-o', output],
    workingDirectory: Platform.script.resolve('..').toFilePath(),
  );
  if (result.exitCode == 0) {
    print('✅ Success: $source → $output');
  } else {
    print('❌ Failed: $source');
    if (result.stdout case final String stdout when stdout.isNotEmpty) {
      print('📜 STDOUT:\n$stdout');
    }
    if (result.stderr case final String stderr when stderr.isNotEmpty) {
      print('⚠️ STDERR:\n$stderr');
    }
  }
}

void main(List<String> args) {
  print('🚧 Starting compilation of Dart executables...');
  for (final MapEntry(key: source, value: output)
      in sourceToOutputMap.entries) {
    compileDartExecutable(source, output);
  }
  print('🏁 Done.');
}
