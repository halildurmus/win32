import '../../../../generator.dart';

class StringMethod extends WinRTMethodProjection {
  StringMethod(super.method, super.vtableOffset);

  @override
  String toString() {
    final overrideAnnotation = camelCasedName == 'toString' ? '@override' : '';
    return '''
      $overrideAnnotation
      String $camelCasedName($methodParams) {
        final retValuePtr = calloc<HSTRING>();
        $parametersPreamble

        try {
          ${ffiCall()}

          final retValue = retValuePtr.toDartString();
          return retValue;
        } finally {
          $parametersPostamble
          WindowsDeleteString(retValuePtr.value);
          free(retValuePtr);
        }
      }
  ''';
  }
}

class StringGetProperty extends WinRTGetPropertyProjection {
  StringGetProperty(super.method, super.vtableOffset);

  @override
  String toString() => '''
      String get $exposedMethodName {
        final retValuePtr = calloc<HSTRING>();

        try {
          ${ffiCall()}

          final retValue = retValuePtr.toDartString();
          return retValue;
        } finally {
          WindowsDeleteString(retValuePtr.value);
          free(retValuePtr);
        }
      }
''';
}

class StringSetProperty extends WinRTSetPropertyProjection {
  StringSetProperty(super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName(String value) {
        final hstr = convertToHString(value);

        try {
          ${ffiCall('hstr')}

        } finally {
          WindowsDeleteString(hstr);
        }
      }
''';
}
