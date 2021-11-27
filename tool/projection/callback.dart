import 'package:winmd/winmd.dart';

import 'function.dart';
import 'utils.dart';

class CallbackProjection {
  late String callbackName;
  late FunctionProjection functionProjection;

  CallbackProjection(TypeDef typeDef) {
    final invokeMethod = typeDef.findMethod('Invoke');

    if (invokeMethod == null) {
      throw Exception('${typeDef.name} is not a callback.');
    }

    callbackName = stripLeadingUnderscores(lastComponent(typeDef.name));
    functionProjection = FunctionProjection(invokeMethod, '');
  }

  @override
  String toString() =>
      'typedef $callbackName = ${functionProjection.nativePrototype};';
}
