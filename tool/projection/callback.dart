import 'package:winmd/winmd.dart';

import 'function.dart';

class CallbackProjection {
  late String callbackName;
  late FunctionProjection functionProjection;

  CallbackProjection(TypeDef typedef) {
    final invokeMethod = typedef.findMethod('Invoke');

    if (invokeMethod == null) {
      throw Exception('${typedef.name} is not a callback.');
    }

    callbackName = typedef.name.split('.').last;
    functionProjection = FunctionProjection(invokeMethod, '');
  }

  @override
  String toString() =>
      'typedef $callbackName = ${functionProjection.nativePrototype};';
}
