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

String printHeader() {
  return '''
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'IUnknown.dart';
import 'combase.dart';
import 'comerrors.dart';

import '../constants.dart';
import '../macros.dart';
import '../structs.dart';
import '../win32.dart';\n
''';
}

const typeMappings = <String, String>{
  'int': 'Int32',
  'long': 'Int32',
  'short': 'Int16',
  'char': 'Int8',
  'LPCSTR': 'Pointer<Utf16>',
  'LPCWSTR': 'Pointer<Utf16>',
  'LPWSTR': 'Pointer<Utf16>',
  'HANDLE': 'IntPtr',
  'HINSTANCE': 'IntPtr',
  'HWND': 'IntPtr',
  'HRESULT': 'Uint32',
  'HDC': 'IntPtr',
  'HBRUSH': 'IntPtr',
  'ATOM': 'Int16',
  'WPARAM': 'IntPtr',
  'LPARAM': 'IntPtr',
  'LRESULT': 'IntPtr',
  'DESKTOP_WALLPAPER_POSITION': 'Int32',
  'WNDPROC': 'IntPtr',
  'INT': 'Int32',
  'UINT': 'Uint32',
  'DWORD': 'Uint32',
  'LONG': 'Int32',
  'WORD': 'Uint16',
  'SHORT': 'Int16',
  'BYTE': 'Uint8',
  'BOOL': 'Int32',
  'DESKTOP_SLIDESHOW_OPTIONS': 'Int32',
  'DESKTOP_SLIDESHOW_DIRECTION': 'Int32',
  'DESKTOP_SLIDESHOW_STATE': 'Int32',
  'COLORREF': 'Uint32',
  'RECT': 'RECT',
  'IShellItemArray': 'Pointer'
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
  return "const IID_${interface.name} = '{${interface.iid.toString()}}';\n\n";
}

String dartType(String nativeType) =>
    intTypes.contains(nativeType) ? 'int' : nativeType;

String printTypedefs(Interface interface) {
  final buffer = StringBuffer();
  for (var method in interface.methods) {
    // Native typedef
    buffer.writeln(
        'typedef ${method.name}_Native = ${method.returnType} Function(');
    buffer.writeln('  Pointer obj,');
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
    buffer.writeln('  Pointer obj,');
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

  buffer.writeln('class ${interface.name} extends ${interface.inherits} {');
  buffer.writeln('''
  
  @override
  Pointer<COMObject> ptr;

  ${interface.name}(this.ptr) : super(ptr);
  
  ''');
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
    buffer.write('         ptr.ref.lpVtbl, ');

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

Interface loadSource() {
  bool inMethod = false;
  final interface = Interface();
  interface.methods = [];
  Method method;

  print(Directory.current);
  File f = File('tool/generate_com/test.cpp');

  var lines = f.readAsLinesSync();

  for (var line in lines) {
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
      if (line.contains(' : ')) {
        // class declaration
        final keywords = line.split(' ');
        interface.name = keywords[0];
        interface.inherits = keywords[keywords.length - 1];
      }
      if (line.contains('STDMETHODCALLTYPE')) {
        // method declaration
        method = Method();
        final keywords = line.split(' ');
        final lastKeyword = keywords[keywords.length - 1];
        method.name = lastKeyword.substring(0, lastKeyword.length - 1);
        method.returnType = 'Int32';
        method.parameters = [];
        inMethod = true;
      }
    } else {
      // we're in a method -- we're dealing with a parameter
      final keywords = line.split(' ');
      final parameter = Parameter();

      // don't know which field contains the return param, so we just search
      for (var type in typeMappings.entries) {
        for (var keyword in keywords) {
          if (keyword == type.key) {
            parameter.type = type.value;
          }
        }
      }
      parameter.type ??= 'void';
      if (line.contains(' * ') &&
          (!parameter.type.contains('Pointer')) &&
          (!(['LPWSTR', 'LPCWSTR'].contains(parameter.type)))) {
        parameter.type = 'Pointer<${parameter.type}>';
      }

      if (line.contains(',')) {
        // parameter is the last keyword, minus trailing comma
        final parameterKeyword = keywords[keywords.length - 1];
        parameter.name =
            parameterKeyword.substring(0, parameterKeyword.length - 1);
        if (parameter.name.startsWith('*')) {
          // trim any pointer
          parameter.name = parameter.name.substring(1);
        }
        method.parameters.add(parameter);
      } else if (line.contains(';')) {
        // parameter is third keyword from last, minus trailing parenthesis
        final parameterKeyword = keywords[keywords.length - 3];
        parameter.name =
            parameterKeyword.substring(0, parameterKeyword.length - 1);
        if (parameter.name.startsWith('*')) {
          // trim any pointer
          parameter.name = parameter.name.substring(1);
        }
        method.parameters.add(parameter);
        interface.methods.add(method);
        inMethod = false;
      } else {
        throw Exception('Can\'t find parameter name');
      }
    }
  }

  return interface;
}

void main() {
  final source = loadSource();

  final output = File('tool/generate_com/output.dart');
  output.writeAsStringSync(printHeader() +
      printInterfaceHeader(source) +
      printTypedefs(source) +
      printInterface(source) +
      printClass(source));
}
