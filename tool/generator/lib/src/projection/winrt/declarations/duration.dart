import '../../../../generator.dart';

class DurationMethod extends WinRTMethodProjection {
  DurationMethod(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Duration $camelCasedName($methodParams) {
        final retValuePtr = calloc<Uint64>();
        $parametersPreamble

        try {
          ${ffiCall()}

          return Duration(microseconds: retValuePtr.value ~/ 10);
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
''';
}

class DurationGetProperty extends WinRTGetPropertyProjection {
  DurationGetProperty(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Duration get $exposedMethodName {
        final retValuePtr = calloc<Uint64>();

        try {
          ${ffiCall()}

          return Duration(microseconds: retValuePtr.value ~/ 10);
        } finally {
          free(retValuePtr);
        }
      }
''';
}

class DurationSetProperty extends WinRTSetPropertyProjection {
  DurationSetProperty(super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName(Duration value) {
        final duration = value.inMicroseconds * 10;

        ${ffiCall('duration')}
      }
''';
}
