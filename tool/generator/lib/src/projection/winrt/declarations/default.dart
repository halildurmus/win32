import '../../../../generator.dart';

class DefaultMethod extends WinRTMethodProjection {
  DefaultMethod(super.method, super.vtableOffset);

  @override
  String toString() {
    final valRef = returnType.dartType == 'double' ||
            returnType.dartType == 'int' ||
            returnType.dartType == 'bool' ||
            returnType.dartType.startsWith('Pointer')
        ? 'value'
        : 'ref';

    return '''
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
}

class DefaultGetProperty extends WinRTGetPropertyProjection {
  DefaultGetProperty(super.method, super.vtableOffset);

  @override
  String toString() {
    final valRef = returnType.dartType == 'double' ||
            returnType.dartType == 'int' ||
            returnType.dartType == 'bool' ||
            returnType.dartType.startsWith('Pointer')
        ? 'value'
        : 'ref';
    return '''
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
}
