import '../../../../generator.dart';

class EnumMethod extends WinRTMethodProjection {
  EnumMethod(super.method, super.vtableOffset);

  @override
  String toString() => '''
      ${returnType.methodParamType} $camelCasedName($methodParams) {
        final retValuePtr = calloc<${returnType.nativeType}>();
        $parametersPreamble

        try {
          ${ffiCall()}

          return ${returnType.methodParamType}.from(retValuePtr.value);
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
  ''';
}

class EnumGetProperty extends WinRTGetPropertyProjection {
  EnumGetProperty(super.method, super.vtableOffset);

  @override
  String toString() => '''
      ${returnType.methodParamType} get $exposedMethodName {
        final retValuePtr = calloc<${returnType.nativeType}>();

        try {
          ${ffiCall()}

          return ${returnType.methodParamType}.from(retValuePtr.value);
        } finally {
          free(retValuePtr);
        }
      }
  ''';
}

class EnumSetProperty extends WinRTSetPropertyProjection {
  EnumSetProperty(super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName(${parameters.first.type.methodParamType} value) {
        ${ffiCall('value.value')}
      }
  ''';
}
