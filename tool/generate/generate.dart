import 'dart:io';

import 'parse.dart';

void main(List<String> args) {
  if (args.length != 2) {
    args = <String>['input', 'output'];
  }
  final inputDirectory = Directory(args[0]);
  final outputDirectory = Directory(args[1]);

  for (var inputFile in inputDirectory.listSync()) {
    if (inputFile is File) {
      print('Parsing:    ${inputFile.path}');
      final parsedFile = loadSource(inputFile);

      File outputFile =
          File('${outputDirectory.uri.toFilePath()}${parsedFile.name}.dart');
      print('Writing:    ${outputFile.path}');
      outputFile.writeAsStringSync(parsedFile.toString());

      print('Formatting: ${outputFile.path}');
      Process.runSync('dartfmt', ['--overwrite', '--fix', outputFile.path],
          runInShell: true);

      print('');
    }
  }
}
