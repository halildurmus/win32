import '../../../../generator.dart';

class VoidMethod extends WinRTMethodProjection {
  VoidMethod(super.method, super.vtableOffset);

  @override
  String toString() => '''
      void $camelCasedName($methodParams) {
        $parametersPreamble
        ${ffiCall()}
        $parametersPostamble
      }
  ''';
}

class VoidSetProperty extends WinRTSetPropertyProjection {
  VoidSetProperty(super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName(${parameters.first.type.dartType} value) {
        ${ffiCall('value')}
      }
  ''';
}
