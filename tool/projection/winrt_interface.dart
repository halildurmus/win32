import 'package:winmd/winmd.dart';

import 'interface.dart';

class WinRTInterfaceProjection extends InterfaceProjection {
  WinRTInterfaceProjection(TypeDef typeDef) : super(typeDef);

  @override
  String get inheritsFrom {
    if (typeDef.interfaces.isNotEmpty) {
      return typeDef.interfaces.first.name.split('.').last;
    } else if (!typeDef.name.endsWith('IUnknown')) {
      return 'IInspectable';
    } else {
      return 'IUnknown';
    }
  }

  /// Take a TypeDef and create a Dart projection of it.
  void projection() {
    // TODO: Refactor this into smaller pieces
    // var parent = '';

    // WinRT interfaces don't inherit in metadata (e.g. IAsyncInfo has no
    // parent), but all WinRT interfaces have a base type of IInspectable as far
    // as the COM vtable is concerned. They contain the functions of
    // IInspectable (as well as IUnknown, from which IInspectable itself
    // inherits).

    // final classInheritsFrom = parent;

    // // final interface = ClassProjection(
    // //     sourceType: typeDef.name.startsWith('Windows.Win32')
    // //         ? SourceType.com
    // //         : SourceType.winrt,
    // //     iid: typeDef.guid,
    // //     name: stripAnsiUnicodeSuffix(typeDef.name),
    // //     inherits: classInheritsFrom,
    // //     vtableStart: _vtableStart(typeDef));

    // if (typeDef.genericParams.isNotEmpty) {
    //   final genericParams =
    //       typeDef.genericParams.map<String>((p) => '${p.name}, ').join();
    //   interface.shortNameWithGenericSpecifier =
    //       '${interface.shortName}<$genericParams>';
    // } else {
    //   interface.shortNameWithGenericSpecifier = interface.shortName;
    // }

    // return interface;
  }

  @override
  int cacheVtableStart(TypeDef? type) {
    if (type == null) {
      return 0;
    }
    // WinRT types inherit from IInspectable
    if (type.interfaces.isEmpty) {
      return 6;
    }
    if (type.isInterface && type.interfaces.isNotEmpty) {
      var sum = 0;

      for (final interface in type.interfaces) {
        sum += interface.methods.length + cacheVtableStart(interface);
      }

      return sum;
    }
    return 0;
  }

  @override
  String get shortName => typeDef.name.split('.').last.split('`').first;

  void stuff() {
    // WinRT methods always return an HRESULT, and provide the actual return
    //   // value as an pointer
    //   methodProjection.returnTypeNative = 'Int32';
    //   methodProjection.returnTypeDart = 'int';
    //   if (method.returnType.typeIdentifier.baseType != winmd.BaseType.Void) {
    //     final typeBuilder = TypeProjection(method.returnType.typeIdentifier);

    //     if (method.isSetProperty) {
    //       final paramName = methodProjection.name.substring(4).toCamelCase();
    //       methodProjection.parameters
    //           .add(ParameterProjection(paramName, typeBuilder));
    //     } else if (method.isGetProperty) {
    //       methodProjection.parameters
    //           .add(ParameterProjection('value', typeBuilder));
    //     } else {
    //       // TODO: needs wrapping in a Pointer<> when it's printed
    //       methodProjection.parameters
    //           .add(ParameterProjection('result', typeBuilder));
    //     }
  }
}
