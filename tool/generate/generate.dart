// generate.dart

// The main entrypoint for the generate tool.

// This utility takes two parameters -- an input and an output directory. It
// reads IDL or H files from the input directory, parses them into an internal
// representation and then emits them as Dart files in the output directory,
// overwriting existing files as necessary.

import 'dart:io';

import 'parse.dart';

void main(List<String> args) {
  final inputDirectory = Directory(args.length == 2 ? args[0] : 'input');
  final outputDirectory = Directory(args.length == 2 ? args[1] : 'output');

  for (final inputFile in inputDirectory.listSync()) {
    if (inputFile is File) {
      print('Converting:    ${inputFile.path}');
      final parsedFile = loadSource(inputFile);
      final outputFile =
          File('${outputDirectory.uri.toFilePath()}${parsedFile.name}.dart');
      outputFile.writeAsStringSync(parsedFile.toString());
    }
  }
}
