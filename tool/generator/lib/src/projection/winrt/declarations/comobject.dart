import '../../../../generator.dart';

class COMObjectMethod extends WinRTMethodProjection {
  COMObjectMethod(super.method, super.vtableOffset);

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

class COMObjectGetProperty extends WinRTGetPropertyProjection {
  COMObjectGetProperty(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Pointer<COMObject> get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        ${ffiCall()}

        return retValuePtr;
      }
''';
}
