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
