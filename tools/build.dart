import 'dart:io';

void main(List<String> args) {
  print('🚧 Starting compilation of Dart executables...');
  final workingDirectory = Platform.script.resolve('..').toFilePath();
  final entries = sourceToOutputMap.entries.toList();

  // Sequentially compile each executable.
  for (var i = 0; i < entries.length; i++) {
    final MapEntry(key: source, value: output) = entries[i];
    compileDartExecutable(source, output, ++i, workingDirectory);
  }

  print('🏁 Done.');
}

/// A map that links Dart source files to their compiled executable output
/// paths.
const sourceToOutputMap = {
  'examples/hello.dart': 'examples/bin/hello.exe',
  'examples/manifest/execution_level.dart':
      'examples/manifest/execution_level.exe',
  'examples/notepad/notepad.dart': 'examples/bin/dartnote.exe',
  'examples/snake.dart': 'examples/bin/snake.exe',
  'examples/taskdialog.dart': 'examples/bin/taskdialog.exe',
  'examples/tetris/main.dart': 'examples/bin/tetris.exe',
};

/// Compiles a Dart source file into an executable.
void compileDartExecutable(
  String source,
  String output,
  int index,
  String workingDirectory,
) {
  print('⚙️ [$index/${sourceToOutputMap.length}] Compiling: $source → $output');

  try {
    final result = Process.runSync('dart', [
      'compile',
      'exe',
      source,
      '-o',
      output,
    ], workingDirectory: workingDirectory);

    if (result.exitCode == 0) {
      print('✅ Success: $source → $output');
    } else {
      print('❌ Failed: $source');
      final stdoutOutput = result.stdout.toString();
      if (stdoutOutput.isNotEmpty) {
        print('📜 STDOUT:\n$stdoutOutput');
      }
      final stderrOutput = result.stderr.toString();
      if (stderrOutput.isNotEmpty) {
        print('⚠️ STDERR:\n$stderrOutput');
      }
    }
  } catch (e) {
    print('⚠️ Failed to compile $source: $e');
  }
}
