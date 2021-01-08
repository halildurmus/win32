// parse.dart

// Parses an .IDL or .H file and attempts to identify the methods, parameters
// and properties contained within.

// This is a very naive implementation: it combines pattern matching and simple
// state machine logic; it would likely get a failing grade from any
// undergraduate CS class, but it's just sufficient to grab what we need from
// the machine-generated IDL that is used by Windows to declare the COM and
// Windows Runtime libraries.

// Disclaimers: The parser does not test whether the files are well-formed, it
// frequently falls over on unexpected input, and it requires careful copying of
// the IDL from the original SDK. Still, it is effective for the purposes of
// projecting the Windows Runtime into a Dart-callable format.

// The entrypoint for this utility is generate.dart.

import 'dart:io';

import 'interface.dart';
import 'types.dart';

/// Takes a line such as
///       `[propget] HRESULT ViewMode([out] [retval] Windows.Storage.Pickers.PickerViewMode* value);`
/// and converts it into a structured [Method] object.
Method parseIdlMethod(String line, int lineIndex) {
  final method = Method();

  final methodStart = line.indexOf('HRESULT ') + 8;
  final methodEnd = line.indexOf('(', methodStart);
  method.name = line.substring(methodStart, methodEnd);
  method.returnType = 'Int32';
  method.parameters = [];

  if (line.contains('[propget]')) {
    method.name = 'get_${method.name}';
  }

  if (line.contains('[propput]')) {
    method.name = 'put_${method.name}';
  }

  // parameters are on the same line
  final paramsLine = line.substring(line.indexOf('(') + 1, line.length - 2);

  final params = paramsLine.split(', ');
  for (var param in params) {
    final parameter = Parameter();

    // strip [in], [out], [retval]
    if (param.contains(']')) {
      param = param.substring(param.lastIndexOf(']') + 2);
    }

    var items = param.split(' ');
    if ((items.length == 3) && (items[0] == 'unsigned')) {
      items = ['${items[0]} ${items[1]}', items[2]];
    }
    if (items.length > 2) {
      throw Exception(
          'Unexpected at line $lineIndex: ${items.length} items in $param');
    } else if (items.length == 2) {
      // converts `Windows.Storage.Pickers.PickerViewMode` to `PickerViewMode`
      var typePrimitive = items[0].split('.').last;

      var dartTypePrimitive = typePrimitive;
      dartTypePrimitive = dartTypePrimitive.replaceAll('*', '');

      // convert IDL type to Dart
      if (typeMappings.containsKey(dartTypePrimitive)) {
        dartTypePrimitive = typeMappings[dartTypePrimitive]!;
      }

      // deal with pointers
      if (typePrimitive.contains('*') ||
          (items[1].contains('*')) &&
              (!typePrimitive.contains('Pointer')) &&
              (!['LPWSTR', 'LPCWSTR'].contains(typePrimitive))) {
        // double pointers
        if (typePrimitive.contains('**')) {
          typePrimitive = 'Pointer<IntPtr>';
        } else {
          // single pointers
          typePrimitive = 'Pointer<$dartTypePrimitive>';
        }
      } else {
        typePrimitive = dartTypePrimitive;
      }

      parameter.type = typePrimitive;
      parameter.name = items[1].replaceAll('*', '');

      method.parameters.add(parameter);
    }
  }

  return method;
}

Interface loadSource(File file) {
  var isInMethod = false;
  final interface = Interface();
  interface.methods = [];
  Method? method;

  if (file.path.endsWith('.h')) {
    interface.sourceType = SourceType.header;
  } else if (file.path.endsWith('.idl')) {
    interface.sourceType = SourceType.idl;
  } else {
    interface.sourceType = SourceType.unknown;
  }

  final lines = file.readAsLinesSync();
  var lineIndex = 0;

  for (var line in lines) {
    line = line.trim();
    lineIndex++;
    if (!isInMethod) {
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
      if (line.startsWith('[uuid(')) {
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
      if (line.startsWith('interface ')) {
        // IDL interface declaration
        final keywords = line.split(' ');
        interface.name = keywords[1];
        interface.inherits = keywords[3];
      }
      if (line.contains('STDMETHODCALLTYPE') ||
          line.startsWith('[propget]') ||
          line.startsWith('[propput]') ||
          line.startsWith('[overload') ||
          line.startsWith('HRESULT')) {
        // method declaration
        method = Method();
        if (interface.sourceType == SourceType.header) {
          final keywords = line.trimRight().split(' ');
          final lastKeyword = keywords[keywords.length - 1];
          method.name = lastKeyword.substring(0, lastKeyword.length - 1);
          method.returnType = 'Int32';
          method.parameters = [];
          isInMethod = true;

          // Special case for void methods
          if (line.contains('( void) = 0;')) {
            method.name = keywords[keywords.indexOf('void)') - 1];
            method.name = method.name.substring(0, method.name.length - 1);
            interface.methods.add(method);
            isInMethod = false;
          } else if (line.contains('(void) = 0;')) {
            method.name = keywords[
                keywords.indexWhere((keyword) => keyword.contains('(void)'))];
            method.name = method.name.substring(0, method.name.length - 6);
            interface.methods.add(method);
            isInMethod = false;
          }
        } else if (interface.sourceType == SourceType.idl) {
          final method = parseIdlMethod(line, lineIndex);
          interface.methods.add(method);
          isInMethod = false;
        }
      }
    } else {
      // we're in a multi-line method -- we're dealing with a parameter

      // ignore comment-only lines
      if (!(line.startsWith('/*') && line.endsWith('*/'))) {
        var keywords = line.split(' ');
        final parameter = Parameter();
        late String win32Keyword;

        // don't know which field contains the return param, so we just search
        for (final type in typeMappings.entries) {
          for (final keyword in keywords) {
            if (keyword == type.key) {
              win32Keyword = keyword;
              parameter.type = type.value;
              break;
            }
          }
        }
        if (parameter.type == null) {
          throw Exception("Can't find type in line $lineIndex.");
        }
        if ((line.contains('*', line.indexOf(win32Keyword)) ||
                (line.contains('[  ]', line.indexOf(win32Keyword)))) &&
            (!parameter.type!.contains('Pointer')) &&
            (!['LPWSTR', 'LPCWSTR'].contains(parameter.type))) {
          parameter.type = 'Pointer<${parameter.type}>';

          // resplit the keywords
          line = line.replaceAll('[  ]', '');
          keywords = line.split(' ');
        }

        if (line.contains(',')) {
          // parameter is the last keyword, minus trailing comma
          final parameterKeyword = keywords[keywords.length - 1];
          parameter.name =
              parameterKeyword.substring(0, parameterKeyword.length - 1);
          trimPointer(parameter);
          method!.parameters.add(parameter);
        } else if (line.contains(';')) {
          // parameter is third keyword from last, minus trailing parenthesis
          final parameterKeyword = keywords[keywords.length - 3];
          parameter.name =
              parameterKeyword.substring(0, parameterKeyword.length - 1);
          trimPointer(parameter);
          method!.parameters.add(parameter);
          interface.methods.add(method);
          isInMethod = false;
        } else {
          print('Line: $lineIndex');
          throw Exception("Can't find parameter name");
        } // end param processing
      } // end no-comment line processing
    } // end method processing
  } // end line processing

  return interface;
}

void trimPointer(Parameter parameter) {
  if (parameter.name!.startsWith('**')) {
    // double pointer
    parameter.type = 'Pointer<IntPtr>';
    parameter.name = parameter.name!.substring(2);
  }
  if (parameter.name!.startsWith('*')) {
    // pointer
    parameter.name = parameter.name!.substring(1);
  }
}
