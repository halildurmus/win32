// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Contains the data classes for the representation of interfaces, methods and
// parameters, as well as the logic necessary to emit a Dart language
// representation (a projection) of the underlying API.

import 'types.dart';

class TypePrinter {
  static String headerAsString(Interface type) {
    final buffer = StringBuffer();
    buffer.writeln('''
// ${type.shortName}.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
''');

    buffer.writeln('''
import '../com/combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
''');
    if (type.sourceType == SourceType.winrt) {
      buffer.writeln('''
import '../winrt/winrt_constants.dart';
''');
    }

    if (type.inherits != '') {
      buffer.writeln("import '${type.inherits}.dart';");
    }
    return buffer.toString();
  }

  static String guidConstantsAsString(Interface type) {
    final buffer = StringBuffer();
    if (type.generateClass) {
      buffer.writeln('/// @nodoc');
      buffer.writeln(
          "const CLSID_${type.className} = '${type.clsid.toString()}';");
    }
    buffer.writeln('/// @nodoc');
    buffer.writeln("const IID_${type.shortName} = '${type.iid.toString()}';\n");
    return buffer.toString();
  }

  static String typedefsAsString(Interface type) {
    final buffer = StringBuffer();
    for (final method in type.methods) {
      // Native typedef
      buffer.writeln(
          'typedef _${method.name}_Native = ${method.returnTypeNative} Function(');
      buffer.write('  Pointer obj');
      if (method.parameters.isNotEmpty) {
        buffer.writeln(',');
      }
      if (method.name.startsWith('get_')) {
        buffer.write(
            '  Pointer<${method.parameters.first.nativeType}> ${method.parameters.first.name}');
      } else {
        for (var idx = 0; idx < method.parameters.length; idx++) {
          buffer.write(
              '  ${method.parameters[idx].nativeType} ${method.parameters[idx].name}');
          if (idx < method.parameters.length - 1) buffer.write(', ');
          buffer.writeln();
        }
      }
      buffer.writeln(');');

      // Dart typedef
      buffer.writeln(
          'typedef _${method.name}_Dart = ${method.returnTypeDart} Function(');
      buffer.write('  Pointer obj');
      if (method.parameters.isNotEmpty) {
        buffer.writeln(',');
      }
      if (method.name.startsWith('get_')) {
        buffer.write(
            '  Pointer<${method.parameters.first.nativeType}> ${method.parameters.first.name}');
      } else {
        for (var idx = 0; idx < method.parameters.length; idx++) {
          buffer.write(
              '  ${method.parameters[idx].dartType} ${method.parameters[idx].name}');
          if (idx < method.parameters.length - 1) buffer.write(', ');
          buffer.writeln();
        }
      }
      buffer.writeln(');');
      buffer.writeln();
    }

    return buffer.toString();
  }

  static String interfaceAsString(Interface type) {
    final buffer = StringBuffer();
    var vtableIndex = type.vtableStart;

    buffer.writeln('/// {@category Interface}');
    if (type.sourceType == SourceType.winrt) {
      buffer.writeln('/// {@category winrt}');
    } else {
      buffer.writeln('/// {@category com}');
    }
    if (type.inherits == '') {
      buffer.writeln('class ${type.shortName} {');
    } else {
      buffer.writeln('class ${type.shortName} extends ${type.inherits} {');
    }

    buffer.writeln('''
  // vtable begins at ${type.vtableStart}, ends at ${type.vtableStart + type.methods.length - 1}
''');
    if (type.inherits.isNotEmpty) {
      buffer.write('''
   ${type.shortName}(Pointer<COMObject> ptr) : super(ptr);\n
''');
    } else {
      buffer.write('''
  @override  
  Pointer<COMObject> ptr;

   ${type.shortName}(this.ptr);\n
''');
    }

    for (final method in type.methods) {
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

  static String dartMethod(Method method, int? vtableIndex) {
    final buffer = StringBuffer();
    buffer.write('  ${method.returnTypeDart} ${method.name}(');
    for (var idx = 0; idx < method.parameters.length; idx++) {
      buffer.write(
          '${method.parameters[idx].dartType} ${method.parameters[idx].name}');
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

  static String dartGetProperty(Method method, int? vtableIndex) {
    final buffer = StringBuffer();

    final exposedMethodName = method.name.substring(4);

    buffer.writeln('  ${method.returnTypeDart} get $exposedMethodName {');
    buffer.writeln(
        '    final retValuePtr = allocate<${method.parameters.first.nativeType}>();');
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

  static String dartSetProperty(Method method, int? vtableIndex) {
    final buffer = StringBuffer();

    buffer.writeln('''
  set ${method.name.substring(4)}(${method.returnTypeDart} value) {
    final hr = Pointer<NativeFunction<_${method.name}_Native>>.fromAddress(
            ptr.ref.vtable.elementAt($vtableIndex).value)
        .asFunction<_${method.name}_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
''');
    return buffer.toString();
  }

  static String classAsString(Interface type) {
    if (type.generateClass) {
      final buffer = StringBuffer();

      if (type.sourceType == SourceType.winrt) {
        buffer.writeln('/// {@category winrt}');
      } else {
        buffer.writeln('/// {@category com}');
      }
      buffer.write('''
class ${type.className} extends ${type.name} {
  @override
  Pointer<COMObject> ptr;

  factory ${type.className}.createInstance() {
    final ptr = COMObject.allocate().addressOf;

    var hr = CoCreateInstance(
        GUID.fromString(CLSID_${type.className}).addressOf,
        nullptr,
        CLSCTX_ALL,
        GUID.fromString(IID_${type.name}).addressOf,
        ptr);

    if (FAILED(hr)) throw WindowsException(hr);
    return ${type.className}(ptr);
  }

  ${type.className}(this.ptr) : super(ptr);
}
''');
      return buffer.toString();
    } else {
      return '';
    }
  }

  static String printType(Interface type) =>
      headerAsString(type) +
      guidConstantsAsString(type) +
      typedefsAsString(type) +
      interfaceAsString(type) +
      classAsString(type);
}
