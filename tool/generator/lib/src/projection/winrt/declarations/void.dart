import '../../../../generator.dart';

class WinRTMethodReturningVoidProjection extends WinRTMethodProjection {
  WinRTMethodReturningVoidProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      void $camelCasedName($methodParams) {
        $parametersPreamble
        ${ffiCall()}
        $parametersPostamble
      }
  ''';
}
