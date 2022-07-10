import '../../../../generator.dart';

mixin DefaultMethodProjection on WinRTMethodProjection {
  String get valRef => returnType.dartType == 'double' ||
          returnType.dartType == 'int' ||
          returnType.dartType == 'bool' ||
          returnType.dartType.startsWith('Pointer')
      ? 'value'
      : 'ref';
}

class DefaultMethod extends WinRTMethodProjection with DefaultMethodProjection {
  DefaultMethod(super.method, super.vtableOffset);

  @override
  String toString() => '''
      ${returnType.dartType} $camelCasedName($methodParams) {
        final retValuePtr = calloc<${returnType.nativeType}>();
        $parametersPreamble

        try {
          ${ffiCall()}

          final retValue = retValuePtr.$valRef;
          return retValue;
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
''';
}

class DefaultGetProperty extends WinRTGetPropertyProjection
    with DefaultMethodProjection {
  DefaultGetProperty(super.method, super.vtableOffset);

  @override
  String toString() => '''
      ${returnType.dartType} get $exposedMethodName {
        final retValuePtr = calloc<${returnType.nativeType}>();

        try {
          ${ffiCall()}

          final retValue = retValuePtr.$valRef;
          return retValue;
        } finally {
          free(retValuePtr);
        }
      }
''';
}
