// interface.dart

// Contains the data classes for the representation of interfaces, methods and
// parameters, as well as the logic necessary to emit a Dart language
// representation (a projection) of the underlying API.

// The entrypoint for this utility is generate.dart.

import 'types.dart';

enum SourceType { header, idl, unknown }

class Parameter {
  String? type;
  String? name;
}

class Method {
  late String name;
  late String returnType;
  late List<Parameter> parameters;
}

class Interface {
  SourceType? sourceType;
  String? iid;
  String? name;
  bool generateClass = false;
  String? clsid;
  String? className;
  String? inherits;
  late int vtableStart;

  late List<Method> methods;

  String get headerAsString {
    final buffer = StringBuffer();
    buffer.writeln('''
// $name.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
''');

    buffer.writeln('''
import '../com/combase.dart';
import '../calloc.dart';
import '../constants.dart';
import '../constants_nodoc.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
''');
    if (sourceType == SourceType.idl) {
      buffer.writeln('''
import '../winrt/winrt_constants.dart';
''');
    }

    if (inherits != '') {
      buffer.writeln("import '$inherits.dart';");
    }
    return buffer.toString();
  }

  String get guidConstantsAsString {
    final buffer = StringBuffer();
    if (generateClass) {
      buffer.writeln('/// @nodoc');
      buffer.writeln("const CLSID_$className = '{${clsid.toString()}}';");
    }
    buffer.writeln('/// @nodoc');
    buffer.writeln("const IID_$name = '{${iid.toString()}}';\n");
    return buffer.toString();
  }

  String get typedefsAsString {
    final buffer = StringBuffer();
    for (final method in methods) {
      // Native typedef
      buffer.writeln(
          'typedef _${method.name}_Native = ${method.returnType} Function(');
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
          'typedef _${method.name}_Dart = ${dartType(method.returnType)} Function(');
      buffer.write('  Pointer obj');
      if (method.parameters.isNotEmpty) {
        buffer.writeln(',');
      }
      for (var idx = 0; idx < method.parameters.length; idx++) {
        buffer.write(
            '  ${dartType(method.parameters[idx].type!)} ${method.parameters[idx].name}');
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

    buffer.writeln('/// {@category Interface}');
    if (sourceType == SourceType.idl) {
      buffer.writeln('/// {@category winrt}');
    } else {
      buffer.writeln('/// {@category com}');
    }
    if (inherits == '') {
      buffer.writeln('class $name {');
    } else {
      buffer.writeln('class $name extends $inherits {');
    }

    buffer.writeln('''
  // vtable begins at $vtableStart, ends at ${vtableStart + methods.length - 1}
''');
    if (inherits!.isNotEmpty) {
      buffer.write('''
   $name(Pointer<COMObject> ptr) : super(ptr);\n
''');
    } else {
      buffer.write('''
  Pointer<COMObject> ptr;

  $name(this.ptr);\n
''');
    }

    for (final method in methods) {
      if (method.name.startsWith('get_')) {
        buffer.write(dartGetProperty(method, vtableIndex));
      } else if (method.name.startsWith('put_')) {
        buffer.write(dartSetProperty(method, vtableIndex));
      } else {
        buffer.write(dartMethod(method, vtableIndex));
      }

      // Always increment vtable even if we don't generate method
      vtableIndex++;
    }
    buffer.writeln('}\n\n');

    return buffer.toString();
  }

  String dartMethod(Method method, int? vtableIndex) {
    final buffer = StringBuffer();
    buffer.write('  ${dartType(method.returnType)} ${method.name}(');
    for (var idx = 0; idx < method.parameters.length; idx++) {
      buffer.write(
          '${dartType(method.parameters[idx].type!)} ${method.parameters[idx].name}');
      if (idx < method.parameters.length - 1) {
        buffer.write(', ');
      }
    }
    buffer.writeln(') =>');
    buffer.write(
        '    Pointer<NativeFunction<_${method.name}_Native>>.fromAddress(\n');
    buffer.write(
        '                ptr.ref.vtable.elementAt($vtableIndex).value)\n');
    buffer.write('            .asFunction<_${method.name}_Dart>()(\n');
    buffer.write('         ptr.ref.lpVtbl');
    if (method.parameters.isNotEmpty) {
      buffer.write(', ');
    }

    for (var idx = 0; idx < method.parameters.length; idx++) {
      buffer.write(method.parameters[idx].name);
      if (idx < method.parameters.length - 1) {
        buffer.write(', ');
      }
    }
    buffer.write(');\n\n');
    return buffer.toString();
  }

  String dartGetProperty(Method method, int? vtableIndex) {
    final rootType = method.parameters[0].type!
        .substring(8, method.parameters[0].type!.length - 1);
    final buffer = StringBuffer();

    var exposedMethodName = method.name.substring(4);

    // trim any leading underscores
    while (exposedMethodName.startsWith('_')) {
      exposedMethodName = exposedMethodName.substring(1);
    }

    buffer.writeln('  ${dartType(method.returnType)} get $exposedMethodName {');
    buffer.writeln('    final retValuePtr = allocate<$rootType>();');
    buffer.writeln();
    buffer.writeln(
        '    final hr = Pointer<NativeFunction<_${method.name}_Native>>.fromAddress(');
    buffer.writeln(
        '                ptr.ref.vtable.elementAt($vtableIndex).value)');
    buffer.writeln(
        '       .asFunction<_${method.name}_Dart>()(ptr.ref.lpVtbl, retValuePtr);');
    buffer.writeln('''
       if (FAILED(hr)) throw WindowsException(hr);

       final retValue = retValuePtr.value;
       free(retValuePtr);
       return retValue;
     }
    ''');
    return buffer.toString();
  }

  String dartSetProperty(Method method, int? vtableIndex) {
    final buffer = StringBuffer();

    buffer.writeln('''
  set ${method.name.substring(4)}(${dartType(method.returnType)} value) {
    final hr = Pointer<NativeFunction<_${method.name}_Native>>.fromAddress(
            ptr.ref.vtable.elementAt($vtableIndex).value)
        .asFunction<_${method.name}_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
''');
    return buffer.toString();
  }

  String get classAsString {
    if (generateClass) {
      final buffer = StringBuffer();

      if (sourceType == SourceType.idl) {
        buffer.writeln('/// {@category winrt}');
      } else {
        buffer.writeln('/// {@category com}');
      }
      buffer.write('''
class $className extends $name {
  $className(Pointer<COMObject> ptr) : super(ptr);

  factory $className.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..setGUID(CLSID_$className);
    final iid = calloc<GUID>()..setGUID(IID_$name);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return $className(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
''');
      return buffer.toString();
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
