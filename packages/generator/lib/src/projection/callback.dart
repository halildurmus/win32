import 'package:winmd/winmd.dart';

import 'function.dart';
import 'safenames.dart';

class CallbackProjection {
  CallbackProjection(TypeDef typeDef) {
    final invokeMethod = typeDef.findMethod('Invoke');

    if (invokeMethod == null) {
      throw Exception('${typeDef.name} is not a callback.');
    }

    callbackName = safeIdentifierForTypeDef(typeDef);
    functionProjection = FunctionProjection(invokeMethod, '');
  }
  late final String callbackName;
  late final FunctionProjection functionProjection;

  @override
  String toString() =>
      'typedef $callbackName = ${functionProjection.nativePrototype};';
}
