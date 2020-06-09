import 'types.dart';

enum SourceType { header, idl, unknown }

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
  SourceType sourceType;
  String iid;
  String name;
  bool generateClass = false;
  String clsid;
  String className;
  String inherits;
  int vtableStart;

  List<Method> methods;

  String get headerAsString {
    final buffer = StringBuffer();
    buffer.writeln('''
// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';
''');

    if (inherits != '') {
      buffer.writeln("import '$inherits.dart';");
    }
    buffer.writeln('''
import '../combase.dart';
import '../comerrors.dart';
import '../constants.dart';
import '../macros.dart';
import '../structs.dart';
import '../win32.dart';
''');
    return buffer.toString();
  }

  String get interfaceHeaderAsString {
    final buffer = StringBuffer();
    if (generateClass) {
      buffer.write("const CLSID_$className = '{${clsid.toString()}}';\n");
    }
    buffer.write("const IID_$name = '{${iid.toString()}}';\n\n");
    return buffer.toString();
  }

  String get typedefsAsString {
    final buffer = StringBuffer();
    for (var method in methods) {
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

  String get interfaceAsString {
    final buffer = StringBuffer();
    var vtableIndex = vtableStart;

    if (inherits == '') {
      buffer.writeln('class ${name} {');
    } else {
      buffer.writeln('class ${name} extends ${inherits} {');
    }

    buffer.writeln('''
  // vtable begins at ${vtableStart}, ends at ${vtableStart + methods.length - 1}
''');
    if (inherits.isNotEmpty) {
      buffer.writeln('  @override');
    }
    buffer.write('''
  Pointer<COMObject> ptr;

  $name(this.ptr)''');
    if (inherits.isNotEmpty) {
      buffer.write(': super(ptr)');
    }
    buffer.writeln(';\n');

    for (var method in methods) {
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

  String get classAsString {
    if (generateClass) {
      return '''
class $className extends $name {
  @override
  Pointer<COMObject> ptr;

  factory $className.createInstance() {
    final ptr = COMObject.allocate().addressOf;

    var hr = CoCreateInstance(
        GUID.fromString(CLSID_$className).addressOf,
        nullptr,
        CLSCTX_ALL,
        GUID.fromString(IID_$name).addressOf,
        ptr.cast());

    if (!SUCCEEDED(hr)) throw COMException(hr);
    return $className(ptr);
  }

  $className(this.ptr) : super(ptr);
}
''';
    } else {
      return '';
    }
  }

  @override
  String toString() =>
      headerAsString +
      interfaceHeaderAsString +
      typedefsAsString +
      interfaceAsString +
      classAsString;
}
