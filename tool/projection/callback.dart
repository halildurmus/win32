import 'package:winmd/winmd.dart';

import 'function.dart';
import 'safenames.dart';

class CallbackProjection {
  late final String callbackName;
  late final FunctionProjection functionProjection;

  CallbackProjection(TypeDef typeDef) {
    final invokeMethod = typeDef.findMethod('Invoke');

    if (invokeMethod == null) {
      throw Exception('${typeDef.name} is not a callback.');
    }

    callbackName = safeIdentifierForTypeDef(typeDef);
    functionProjection = FunctionProjection(invokeMethod, '');
  }

  @override
  String toString() =>
      'typedef $callbackName = ${functionProjection.nativePrototype};';
}
