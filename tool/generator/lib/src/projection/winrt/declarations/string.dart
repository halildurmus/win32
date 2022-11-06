import '../../../../generator.dart';

class WinRTMethodReturningStringProjection extends WinRTMethodProjection {
  WinRTMethodReturningStringProjection(super.method, super.vtableOffset);

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

class WinRTGetPropertyReturningStringProjection
    extends WinRTGetPropertyProjection {
  WinRTGetPropertyReturningStringProjection(super.method, super.vtableOffset);

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

class WinRTSetPropertyReturningStringProjection
    extends WinRTSetPropertyProjection {
  WinRTSetPropertyReturningStringProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName(String value) {
        final hstr = convertToHString(value);

        try {
          ${ffiCall(params: 'hstr')}
        } finally {
          WindowsDeleteString(hstr);
        }
      }
''';
}
