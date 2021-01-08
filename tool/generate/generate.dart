// generate.dart

// The main entrypoint for the generate tool.

// This utility takes three parameters -- an input and an output directory, and
// an optional tests directory. It reads IDL or H files from the input
// directory, parses them into an internal representation and then emits them as
// Dart files in the output directory, overwriting existing files as necessary.

import 'dart:io';

import 'generate_tests.dart';
import 'parse.dart';

void main(List<String> args) {
  final inputDirectory = Directory(args.length >= 2 ? args[0] : 'input');
  final outputDirectory = Directory(args.length >= 2 ? args[1] : 'output');
  final testDirectory = args.length == 3 ? Directory(args[2]) : null;

  for (final inputFile in inputDirectory.listSync()) {
    if (inputFile is File) {
      print('Converting:    ${inputFile.path}');
      final parsedFile = loadSource(inputFile);
      final outputFile =
          File('${outputDirectory.uri.toFilePath()}${parsedFile.name}.dart');
      outputFile.writeAsStringSync(parsedFile.toString());

      if (testDirectory != null) {
        final testFile = File(
            '${testDirectory.uri.toFilePath()}${parsedFile.name}_test.dart');
        testFile.writeAsStringSync(generateTests(parsedFile));
      }
    }
  }
}
