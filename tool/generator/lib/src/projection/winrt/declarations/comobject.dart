import '../../../../generator.dart';

class WinRTMethodReturningComObjectProjection extends WinRTMethodProjection {
  WinRTMethodReturningComObjectProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Pointer<COMObject> $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble
        ${ffiCall()}
        $parametersPostamble
        return retValuePtr;
      }
''';
}

class WinRTGetPropertyReturningComObjectProjection
    extends WinRTGetPropertyProjection {
  WinRTGetPropertyReturningComObjectProjection(
      super.method, super.vtableOffset);

  @override
  String toString() => '''
      Pointer<COMObject> get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        ${ffiCall()}

        return retValuePtr;
      }
''';
}
