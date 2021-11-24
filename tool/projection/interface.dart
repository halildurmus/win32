import 'package:winmd/winmd.dart';

import 'method.dart';
import 'property.dart';
import 'utils.dart';

class InterfaceProjection {
  final TypeDef typeDef;
  final List<MethodProjection> methodProjections = [];

  InterfaceProjection(this.typeDef) {
    var vtableOffset = vtableStart;
    for (final method in typeDef.methods) {
      if (method.isGetProperty) {
        final getPropertyProjection =
            GetPropertyProjection(method, vtableOffset++);
        methodProjections.add(getPropertyProjection);
      } else if (method.isSetProperty && method.parameters.isNotEmpty) {
        final setPropertyProjection =
            SetPropertyProjection(method, vtableOffset++);
        methodProjections.add(setPropertyProjection);
      } else {
        final methodProjection = MethodProjection(method, vtableOffset++);
        methodProjections.add(methodProjection);
      }
    }
  }

  int calculateVTableStart(TypeDef? type) {
    if (type == null) {
      return 0;
    }

    if (type.isInterface && type.interfaces.isNotEmpty) {
      var sum = 0;

      for (final interface in type.interfaces) {
        sum += interface.methods.length + calculateVTableStart(interface);
      }

      return sum;
    }

    return 0;
  }

  int get vtableStart => calculateVTableStart(typeDef);

  String get shortName => stripAnsiUnicodeSuffix(typeDef.name.split('.').last);

  String get inheritsFrom {
    if (typeDef.interfaces.isNotEmpty) {
      return typeDef.interfaces.first.name.split('.').last;
    } else {
      return '';
    }
  }

  String get importHeader =>
      inheritsFrom.isNotEmpty ? "import '$inheritsFrom.dart';" : '';

  String get header => '''
    // $shortName.dart

    // THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

    // ignore_for_file: unused_import

    import 'dart:ffi';

    import 'package:ffi/ffi.dart';

    import '../combase.dart';
    import '../constants.dart';
    import '../exceptions.dart';
    import '../guid.dart';
    import '../macros.dart';
    import '../ole32.dart';
    import '../structs.dart';
    import '../structs.g.dart';
    import '../utils.dart';
  ''';

  String get guidConstants => '''
    /// @nodoc
    const IID_$shortName = '${typeDef.guid}';
  ''';

  String get queryInterfaceHelper => shortName != 'IUnknown'
      ? ''
      : '''
    /// Cast an existing COM object to a specified interface.
    ///
    /// Takes a string (typically a constant such as `IID_IModalWindow`) and does
    /// a COM QueryInterface to return a reference to that interface. This method
    /// reduces the boilerplate associated with calling QueryInterface manually.
    Pointer<COMObject> toInterface(String iid) {
      final pIID = convertToIID(iid);
      final pObject = calloc<COMObject>();
      try {
        final hr = QueryInterface(pIID, pObject.cast());
        if (FAILED(hr)) throw WindowsException(hr);
        return pObject;
      } finally {
        free(pIID);
      }
    }
  ''';

  @override
  String toString() {
    final extendsClause = inheritsFrom.isEmpty ? '' : 'extends $inheritsFrom';
    final constructor = inheritsFrom.isEmpty
        ? 'Pointer<COMObject> ptr;\n\n$shortName(this.ptr);'
        : '$shortName(Pointer<COMObject> ptr) : super(ptr);';

    return '''
      $header
      $importHeader
      $guidConstants

      /// {@category Interface}
      /// {@category com}
      class $shortName $extendsClause {
        // vtable begins at $vtableStart, ends at ${vtableStart + methodProjections.length - 1}
        $constructor

        ${methodProjections.map((p) => p.toString()).join('\n')}

        $queryInterfaceHelper
      }
    ''';
  }
}
