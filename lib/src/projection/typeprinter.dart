// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Contains the data classes for the representation of interfaces, methods and
// parameters, as well as the logic necessary to emit a Dart language
// representation (a projection) of the underlying API.

import '../constants.dart';
import '../typedef.dart';
import 'classprojector.dart';
import 'projections.dart';
import 'typeprojector.dart';

class TypePrinter {
  static String headerAsString(ClassProjection type) {
    final buffer = StringBuffer();
    buffer.writeln('''
// ${type.shortName}.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
''');

    buffer.writeln('''
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';
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

  static String guidConstantsAsString(ClassProjection type) {
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

  static String typedefsAsString(ClassProjection type) {
    final buffer = StringBuffer();
    for (final method in type.methods) {
      // Native typedef
      buffer.writeln(
          'typedef _${method.name}_Native = ${method.returnTypeNative} Function(');
      buffer.write('  Pointer obj');
      if (method.parameters.isNotEmpty) {
        buffer.writeln(',');
      }
      if (method.isGetProperty) {
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
      if (method.isGetProperty) {
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

  static String interfaceAsString(ClassProjection type) {
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
  Pointer<COMObject> ptr;

   ${type.shortName}(this.ptr);\n
''');
    }

    for (final method in type.methods) {
      if (method.isGetProperty) {
        buffer.write(dartGetProperty(method, vtableIndex));
      } else if (method.isSetProperty) {
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

  static String dartMethod(MethodProjection method, int? vtableIndex) {
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

  static String dartGetProperty(MethodProjection method, int? vtableIndex) {
    final buffer = StringBuffer();

    // strip off all underscores, even if double underscores
    final exposedMethodName = method.name.startsWith('get__')
        ? method.name.substring(5)
        : method.name.substring(4);

    final convertBool = method.parameters.first.dartType == 'bool';

    buffer.writeln('''
    ${method.parameters.first.dartType} get $exposedMethodName {
      final retValuePtr = calloc<${method.parameters.first.nativeType}>();
      
      final hr = Pointer<NativeFunction<_${method.name}_Native>>.fromAddress(
        ptr.ref.vtable.elementAt($vtableIndex).value)
          .asFunction<_${method.name}_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      free(retValuePtr);
      return ${convertBool ? 'retValue == 0' : 'retValue'};
    }
''');
    return buffer.toString();
  }

  static String dartSetProperty(MethodProjection method, int? vtableIndex) {
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

  static String classAsString(ClassProjection type) {
    final interfaceWithoutNamespace = type.name.split('.').last;

    if (type.generateClass) {
      final buffer = StringBuffer();

      if (type.sourceType == SourceType.winrt) {
        buffer.writeln('/// {@category winrt}');
      } else {
        buffer.writeln('/// {@category com}');
      }
      buffer.write('''
class ${type.className} extends $interfaceWithoutNamespace {
  ${type.className}(Pointer<COMObject> ptr) : super(ptr);

  factory ${type.className}.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_${type.className});
    final iid = calloc<GUID>()..ref.setGUID(IID_$interfaceWithoutNamespace);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ${type.className}(ptr);
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

  static String classTestsAsString(ClassProjection projection) {
    final interfaceName = projection.shortName;
    final dartClassName = interfaceName.substring(1).toLowerCase();

    final buffer = StringBuffer();
    buffer.write('''
// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_local_variable

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';

import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<COMObject>();

  final $dartClassName = $interfaceName(ptr);
''');

    for (final method in projection.methods) {
      if (!method.isGetProperty && !method.isSetProperty) {
        buffer.write('''
        test('Can instantiate $interfaceName.${method.name}', () {
          expect($dartClassName.${method.name}, isA<Function>());
          });
          ''');
      }
    }

    buffer.write('''
  free(ptr);
  }''');

    return buffer.toString();
  }

  static String printStruct(TypeDef typedef, String structName) {
    try {
      final buffer = StringBuffer();

      buffer.writeln('class $structName extends Struct {');

      for (final field in typedef.fields) {
        if (field.typeIdentifier.corType == CorElementType.ELEMENT_TYPE_ARRAY) {
          final dimensions = field.typeIdentifier.arrayDimensions!.first;
          final nativeType = TypeProjector(field.typeIdentifier).nativeType;

          buffer.writeln('  @Array($dimensions)');
          buffer.writeln('  external Array<$nativeType> ${field.name};');
        } else {
          final nativeType = TypeProjector(field.typeIdentifier).nativeType;
          final dartType = TypeProjector(field.typeIdentifier).dartType;

          if (dartType == 'int' || dartType == 'double') {
            buffer
                .writeln('  @$nativeType() external $dartType ${field.name};');
          } else {
            buffer.writeln('  external $dartType ${field.name};');
          }
        }
      }
      buffer.writeln('}\n');
      return buffer.toString();
    } catch (identifier) {
      return '';
    }
  }

  static String printType(TypeDef typeDef) {
    final type = ClassProjector(typeDef).projection;
    return headerAsString(type) +
        guidConstantsAsString(type) +
        typedefsAsString(type) +
        interfaceAsString(type) +
        classAsString(type);
  }

  static String printProjection(ClassProjection projection) =>
      headerAsString(projection) +
      guidConstantsAsString(projection) +
      typedefsAsString(projection) +
      interfaceAsString(projection) +
      classAsString(projection);

  static String printTests(ClassProjection projection) =>
      classTestsAsString(projection);
}
