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
    if (sourceType == SourceType.idl) {
      buffer.writeln('''
import '../winrt_constants.dart';
''');
    }
    return buffer.toString();
  }

  String get guidConstantsAsString {
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
      if (method.name.startsWith('get_')) {
        buffer.write(dartGetProperty(method, vtableIndex));
      } else if (method.name.startsWith('put_')) {
        buffer.write(dartSetProperty(method, vtableIndex));
      } else {
        buffer.write(dartMethod(method, vtableIndex));
      }
      vtableIndex++;
    }
    buffer.writeln('}\n\n');

    return buffer.toString();
  }

  String dartMethod(Method method, int vtableIndex) {
    final buffer = StringBuffer();
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
        '                ptr.ref.vtable.elementAt(${vtableIndex}).value)\n');
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
    return buffer.toString();
  }

  String dartGetProperty(Method method, int vtableIndex) {
    final rootType = method.parameters[0].type
        .substring(8, method.parameters[0].type.length - 1);
    final buffer = StringBuffer();
    buffer.writeln(
        '  ${dartType(method.returnType)} get ${method.name.substring(4)} {');
    buffer.writeln('    final retValuePtr = allocate<$rootType>();');
    buffer.writeln();
    buffer.writeln(
        '    final hr = Pointer<NativeFunction<${method.name}_Native>>.fromAddress(');
    buffer.writeln(
        '                ptr.ref.vtable.elementAt($vtableIndex).value)');
    buffer.writeln(
        '       .asFunction<${method.name}_Dart>()(ptr.ref.lpVtbl, retValuePtr);');
    buffer.writeln('''
       if (FAILED(hr)) throw COMException(hr);

       final retValue = retValuePtr.value;
       free(retValuePtr);
       return retValue;
     }
    ''');
    return buffer.toString();
  }

  String dartSetProperty(Method method, int vtableIndex) {
    final buffer = StringBuffer();
    buffer.writeln('''
  set ${method.name.substring(4)}(${dartType(method.returnType)} value) {
    final hr = Pointer<NativeFunction<${method.name}_Native>>.fromAddress(
            ptr.ref.vtable.elementAt($vtableIndex).value)
        .asFunction<${method.name}_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw COMException(hr);
  }
''');
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
      guidConstantsAsString +
      typedefsAsString +
      interfaceAsString +
      classAsString;
}

/*
  int get ViewMode {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<NativeFunction<get_ViewMode_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(6).value)
        .asFunction<get_ViewMode_Dart>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  set ViewMode(int value) {
    final hr = Pointer<NativeFunction<put_ViewMode_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(7).value)
        .asFunction<put_ViewMode_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw COMException(hr);
  }
*/
