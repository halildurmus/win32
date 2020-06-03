import 'dart:io';

class Parameter {
  String type;
  String name;
}

class Method {
  String name;
  String returnType;
  List<Parameter> parameters;
}

class Interface {
  String iid;
  String name;
  bool generateClass = false;
  String clsid;
  String className;
  String inherits;
  int vtableStart;

  List<Method> methods;
}

String printHeader(Interface interface) {
  final buffer = StringBuffer();
  buffer.writeln('''
import 'dart:ffi';

import 'package:ffi/ffi.dart';
''');

  if (interface.inherits != '') {
    buffer.writeln("import '${interface.inherits}.dart';");
  }
  buffer.writeln('''
import 'combase.dart';
import 'comerrors.dart';

import '../constants.dart';
import '../macros.dart';
import '../structs.dart';
import '../win32.dart';
''');
  return buffer.toString();
}

const typeMappings = <String, String>{
  // Base C types
  'void': 'void',
  'int': 'Int32',
  'long': 'Int32',
  'short': 'Int16',
  'char': 'Int8',

// Windows ints
  'INT': 'Int32',
  'UINT': 'Uint32',
  'DWORD': 'Uint32',
  'ULONG': 'Uint32',
  'LONG': 'Int32',
  'WORD': 'Uint16',
  'SHORT': 'Int16',
  'BYTE': 'Uint8',
  'BOOL': 'Int32',

  // Windows strings
  'LPCSTR': 'Pointer<Utf16>',
  'LPCWSTR': 'Pointer<Utf16>',
  'LPWSTR': 'Pointer<Utf16>',
  'BSTR': 'Pointer<Utf16>',

  // Core Windows types
  'ATOM': 'Int16',
  'HANDLE': 'IntPtr',
  'HBRUSH': 'IntPtr',
  'HDC': 'IntPtr',
  'HINSTANCE': 'IntPtr',
  'HRESULT': 'Uint32',
  'HWND': 'IntPtr',
  'LPARAM': 'IntPtr',
  'LRESULT': 'IntPtr',
  'REFGUID': 'Pointer<GUID>',
  'REFIID': 'Pointer<GUID>',
  'WPARAM': 'IntPtr',
  'WNDPROC': 'IntPtr',

  // Structs and enums
  'CIMTYPE': 'Int32',
  'COLORREF': 'Uint32',
  'COMDLG_FILTERSPEC': 'COMDLG_FILTERSPEC',
  'DESKTOP_SLIDESHOW_OPTIONS': 'Uint32',
  'DESKTOP_SLIDESHOW_DIRECTION': 'Uint32',
  'DESKTOP_SLIDESHOW_STATE': 'Uint32',
  'DESKTOP_WALLPAPER_POSITION': 'Uint32',
  'FDAP': 'Uint32',
  'FILEOPENDIALOGOPTIONS': 'Uint32',
  'GETPROPERTYSTOREFLAGS': 'Uint32',
  'REFPROPERTYKEY': 'Pointer<PROPERTYKEY>',
  'RECT': 'RECT',
  'SAFEARRAY': 'SAFEARRAY',
  'SFGAOF': 'Uint32',
  'SICHINTF': 'Uint32',
  'SIGDN': 'Uint32',
  'SIATTRIBFLAGS': 'Uint32',
  'VARIANT': 'VARIANT_POINTER', // NOTE: This projection is incomplete

  // Interfaces
  'IBindCtx': 'COMObject',
  'IEnumShellItems': 'COMObject',
  'IEnumWbemClassObject': 'COMObject',
  'IFileDialogEvents': 'COMObject',
  'IFileOperationProgressSink': 'COMObject',
  'IPropertyDescriptionList': 'COMObject',
  'IPropertyStore': 'COMObject',
  'IShellItem': 'COMObject',
  'IShellItemArray': 'COMObject',
  'IShellItemFilter': 'COMObject',
  'IWbemCallResult': 'COMObject',
  'IWbemClassObject': 'COMObject',
  'IWbemContext': 'COMObject',
  'IWbemObjectSink': 'COMObject',
  'IWbemQualifierSet': 'COMObject',
  'IWbemServices': 'COMObject',
};

const intTypes = <String>[
  'Int8',
  'Int16',
  'Int32',
  'Int64',
  'IntPtr',
  'Uint8',
  'Uint16',
  'Uint32',
  'Uint64'
];

String printInterfaceHeader(Interface interface) {
  final buffer = StringBuffer();
  if (interface.generateClass) {
    buffer.write(
        "const CLSID_${interface.className} = '{${interface.clsid.toString()}}';\n");
  }
  buffer.write(
      "const IID_${interface.name} = '{${interface.iid.toString()}}';\n\n");
  return buffer.toString();
}

String dartType(String nativeType) =>
    intTypes.contains(nativeType) ? 'int' : nativeType;

String printTypedefs(Interface interface) {
  final buffer = StringBuffer();
  for (var method in interface.methods) {
    // Native typedef
    buffer.writeln(
        'typedef ${method.name}_Native = ${method.returnType} Function(');
    buffer.write('  Pointer obj');
    if (method.parameters.isNotEmpty) {
      buffer.writeln(',');
    }
    for (var idx = 0; idx < method.parameters.length; idx++) {
      buffer.write(
          '  ${method.parameters[idx].type} ${method.parameters[idx].name}');
      if (idx < method.parameters.length - 1) buffer.write(', ');
      buffer.writeln();
    }
    buffer.writeln(');');

    // Dart typedef
    buffer.writeln(
        'typedef ${method.name}_Dart = ${dartType(method.returnType)} Function(');
    buffer.write('  Pointer obj');
    if (method.parameters.isNotEmpty) {
      buffer.writeln(',');
    }
    for (var idx = 0; idx < method.parameters.length; idx++) {
      buffer.write(
          '  ${dartType(method.parameters[idx].type)} ${method.parameters[idx].name}');
      if (idx < method.parameters.length - 1) buffer.write(', ');
      buffer.writeln();
    }
    buffer.writeln(');');
    buffer.writeln();
  }

  return buffer.toString();
}

String printInterface(Interface interface) {
  final buffer = StringBuffer();
  var vtableIndex = interface.vtableStart;

  if (interface.inherits == '') {
    buffer.writeln('class ${interface.name} {');
  } else {
    buffer.writeln('class ${interface.name} extends ${interface.inherits} {');
  }

  buffer.writeln('''
  // vtable begins at ${interface.vtableStart}, ends at ${interface.vtableStart + interface.methods.length - 1}
''');
  if (interface.inherits.isNotEmpty) {
    buffer.writeln('  @override');
  }
  buffer.write('''
  Pointer<COMObject> ptr;

  ${interface.name}(this.ptr)''');
  if (interface.inherits.isNotEmpty) {
    buffer.write(': super(ptr)');
  }
  buffer.writeln(';\n');

  for (var method in interface.methods) {
    buffer.write('  ${dartType(method.returnType)} ${method.name}(');
    for (var idx = 0; idx < method.parameters.length; idx++) {
      buffer.write(
          '${dartType(method.parameters[idx].type)} ${method.parameters[idx].name}');
      if (idx < method.parameters.length - 1) {
        buffer.write(', ');
      }
    }
    buffer.writeln(') =>');
    buffer.write(
        '    Pointer<NativeFunction<${method.name}_Native>>.fromAddress(\n');
    buffer.write(
        '                ptr.ref.vtable.elementAt(${vtableIndex++}).value)\n');
    buffer.write('            .asFunction<${method.name}_Dart>()(\n');
    buffer.write('         ptr.ref.lpVtbl');
    if (method.parameters.isNotEmpty) {
      buffer.write(', ');
    }

    for (var idx = 0; idx < method.parameters.length; idx++) {
      buffer.write('${method.parameters[idx].name}');
      if (idx < method.parameters.length - 1) {
        buffer.write(', ');
      }
    }
    buffer.write(');\n\n');
  }
  buffer.writeln('}\n\n');

  return buffer.toString();
}

String printClass(Interface interface) {
  if (interface.generateClass) {
    return '''
class ${interface.className} extends ${interface.name} {
  @override
  Pointer<COMObject> ptr;

  factory ${interface.className}.createInstance() {
    final ptr = COMObject.allocate().addressOf;

    var hr = CoCreateInstance(
        GUID.fromString(CLSID_${interface.className}).addressOf,
        nullptr,
        CLSCTX_ALL,
        GUID.fromString(IID_${interface.name}).addressOf,
        ptr.cast());

    if (!SUCCEEDED(hr)) throw COMException(hr);
    return ${interface.className}(ptr);
  }

  ${interface.className}(this.ptr) : super(ptr);
}
''';
  } else {
    return '';
  }
}

Interface loadSource(File file) {
  bool inMethod = false;
  final interface = Interface();
  interface.methods = [];
  Method method;

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
      if (line.contains('MIDL_INTERFACE')) {
        final start = line.indexOf('"') + 1;
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
      if (line.contains('STDMETHODCALLTYPE')) {
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
      outputFile.writeAsStringSync(printHeader(parsedFile) +
          printInterfaceHeader(parsedFile) +
          printTypedefs(parsedFile) +
          printInterface(parsedFile) +
          printClass(parsedFile));

      print('Formatting: ${outputFile.path}');
      Process.runSync('dartfmt', ['--overwrite', '--fix', outputFile.path],
          runInShell: true);

      print('');
    }
  }
}
