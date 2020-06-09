import 'dart:io';

import 'interface.dart';
import 'types.dart';

Interface loadSource(File file) {
  bool inMethod = false;
  final interface = Interface();
  interface.methods = [];
  Method method;

  if (file.path.endsWith('.h')) {
    interface.sourceType = SourceType.header;
  } else if (file.path.endsWith('.idl')) {
    interface.sourceType = SourceType.idl;
  } else {
    interface.sourceType = SourceType.unknown;
  }

  var lines = file.readAsLinesSync();
  var lineIndex = 0;

  for (var line in lines) {
    line = line.trim();
    lineIndex++;
    if (!inMethod) {
      if (line.startsWith('// vtable_start ')) {
        interface.vtableStart = int.parse(line.split(' ').last);
      }
      if (line.startsWith('// class')) {
        interface.generateClass = true;
        interface.className = line.split(' ')[2];
        interface.clsid = line.split(' ')[3];
      }
      if (line.startsWith('MIDL_INTERFACE')) {
        final start = line.indexOf('"') + 1;
        final end = start + 36;
        interface.iid = line.substring(start, end);
      }
      if (line.startsWith('[uuid())')) {
        final start = line.indexOf('(') + 1;
        final end = start + 36;
        interface.iid = line.substring(start, end);
      }
      if (line.contains(' : ') || line == 'IUnknown') {
        // class declaration
        if (line == 'IUnknown') {
          interface.name = line;
          interface.inherits = '';
        } else {
          final keywords = line.split(' ');
          interface.name = keywords[0];
          interface.inherits = keywords[keywords.length - 1];
        }
      }
      if (line.contains('STDMETHODCALLTYPE') ||
          line.startsWith('[propget]') ||
          line.startsWith('[propput]') ||
          line.startsWith('HRESULT')) {
        // method declaration
        method = Method();
        final keywords = line.trimRight().split(' ');
        final lastKeyword = keywords[keywords.length - 1];
        method.name = lastKeyword.substring(0, lastKeyword.length - 1);
        method.returnType = 'Int32';
        method.parameters = [];
        inMethod = true;

        // Special case for void methods
        if (line.contains('( void) = 0;')) {
          method.name = keywords[keywords.indexOf('void)') - 1];
          method.name = method.name.substring(0, method.name.length - 1);
          interface.methods.add(method);
          inMethod = false;
        }
      }
    } else {
      // we're in a method -- we're dealing with a parameter

      // ignore comment-only lines
      if (!(line.startsWith('/*') && line.endsWith('*/'))) {
        final keywords = line.split(' ');
        final parameter = Parameter();
        String win32Keyword;

        // don't know which field contains the return param, so we just search
        for (var type in typeMappings.entries) {
          for (var keyword in keywords) {
            if (keyword == type.key) {
              win32Keyword = keyword;
              parameter.type = type.value;
              break;
            }
          }
        }
        if (parameter.type == null) {
          print('Line: $lineIndex');
          throw Exception('Can\'t find type.');
        }
        if (line.contains('*', line.indexOf(win32Keyword)) &&
            (!parameter.type.contains('Pointer')) &&
            (!(['LPWSTR', 'LPCWSTR'].contains(parameter.type)))) {
          parameter.type = 'Pointer<${parameter.type}>';
        }

        if (line.contains(',')) {
          // parameter is the last keyword, minus trailing comma
          final parameterKeyword = keywords[keywords.length - 1];
          parameter.name =
              parameterKeyword.substring(0, parameterKeyword.length - 1);
          trimPointer(parameter);
          method.parameters.add(parameter);
        } else if (line.contains(';')) {
          // parameter is third keyword from last, minus trailing parenthesis
          final parameterKeyword = keywords[keywords.length - 3];
          parameter.name =
              parameterKeyword.substring(0, parameterKeyword.length - 1);
          trimPointer(parameter);
          method.parameters.add(parameter);
          interface.methods.add(method);
          inMethod = false;
        } else {
          print('Line: $lineIndex');
          throw Exception('Can\'t find parameter name');
        } // end param processing
      } // end no-comment line processing
    } // end method processing
  } // end line processing

  return interface;
}

void trimPointer(Parameter parameter) {
  if (parameter.name.startsWith('**')) {
    // double pointer
    parameter.type = 'Pointer<IntPtr>';
    parameter.name = parameter.name.substring(2);
  }
  if (parameter.name.startsWith('*')) {
    // pointer
    parameter.name = parameter.name.substring(1);
  }
}

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
