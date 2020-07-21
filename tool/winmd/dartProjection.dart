// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Contains the data classes for the representation of interfaces, methods and
// parameters, as well as the logic necessary to emit a Dart language
// representation (a projection) of the underlying API.

enum SourceType { com, winrt, unknown }

class Parameter {
  String name;
  String nativeType;
  String dartType;
  bool supported = true;
}

class Method {
  String name;
  String returnTypeNative;
  String returnTypeDart;
  final parameters = <Parameter>[];
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

  final methods = <Method>[];

  String get shortName => name.split('.').last;

  String get headerAsString {
    final buffer = StringBuffer();
    buffer.writeln('''
// $shortName.dart

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
    if (sourceType == SourceType.winrt) {
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
      buffer.writeln("const CLSID_$className = '${clsid.toString()}';");
    }
    buffer.writeln('/// @nodoc');
    buffer.writeln("const IID_$shortName = '${iid.toString()}';\n");
    return buffer.toString();
  }

  String get typedefsAsString {
    final buffer = StringBuffer();
    for (var method in methods) {
      var generateTypedef = true;

      // Check all params are supported
      for (var params in method.parameters) {
        if (!params.supported) {
          generateTypedef = false;
        }
      }

      if (generateTypedef) {
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
    }

    return buffer.toString();
  }

  String get interfaceAsString {
    final buffer = StringBuffer();
    var vtableIndex = vtableStart;

    buffer.writeln('/// {@category Interface}');
    if (sourceType == SourceType.winrt) {
      buffer.writeln('/// {@category winrt}');
    } else {
      buffer.writeln('/// {@category com}');
    }
    if (inherits == '') {
      buffer.writeln('class $shortName {');
    } else {
      buffer.writeln('class $shortName extends $inherits {');
    }

    buffer.writeln('''
  // vtable begins at $vtableStart, ends at ${vtableStart + methods.length - 1}
''');
    if (inherits.isNotEmpty) {
      buffer.writeln('  @override');
    }
    buffer.write('''
  Pointer<COMObject> ptr;

  $shortName(this.ptr)''');
    if (inherits.isNotEmpty) {
      buffer.write(': super(ptr)');
    }
    buffer.writeln(';\n');

    for (var method in methods) {
      var generateMethod = true;

      // Check all params are supported
      for (var params in method.parameters) {
        if (!params.supported) {
          generateMethod = false;
        }
      }

      if (generateMethod) {
        if (method.name.startsWith('get_')) {
          buffer.write(dartGetProperty(method, vtableIndex));
        } else if (method.name.startsWith('put_')) {
          buffer.write(dartSetProperty(method, vtableIndex));
        } else {
          buffer.write(dartMethod(method, vtableIndex));
        }
      }

      // Always increment vtable even if we don't generate method
      vtableIndex++;
    }
    buffer.writeln('}\n\n');

    return buffer.toString();
  }

  String dartMethod(Method method, int vtableIndex) {
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
      buffer.write('${method.parameters[idx].name}');
      if (idx < method.parameters.length - 1) {
        buffer.write(', ');
      }
    }
    buffer.write(');\n\n');
    return buffer.toString();
  }

  String dartGetProperty(Method method, int vtableIndex) {
    final buffer = StringBuffer();

    var exposedMethodName = method.name.substring(4);

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

  String dartSetProperty(Method method, int vtableIndex) {
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

  String get classAsString {
    if (generateClass) {
      final buffer = StringBuffer();

      if (sourceType == SourceType.winrt) {
        buffer.writeln('/// {@category winrt}');
      } else {
        buffer.writeln('/// {@category com}');
      }
      buffer.write('''
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
        ptr);

    if (FAILED(hr)) throw WindowsException(hr);
    return $className(ptr);
  }

  $className(this.ptr) : super(ptr);
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
