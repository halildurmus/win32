import '../../../../generator.dart';

class DateTimeMethod extends WinRTMethodProjection {
  DateTimeMethod(super.method, super.vtableOffset);

  // In WinRT, DateTime is represented as a 64-bit signed integer that
  // represents a point in time as the number of 100-nanosecond intervals prior
  // to or after midnight on January 1, 1601 (according to the Gregorian
  // Calendar).
  @override
  String toString() => '''
      DateTime $camelCasedName($methodParams) {
        final retValuePtr = calloc<Uint64>();
        $parametersPreamble

        try {
          ${ffiCall()}

          return DateTime
            .utc(1601, 01, 01)
            .add(Duration(microseconds: retValuePtr.value ~/ 10));
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
''';
}

class DateTimeGetProperty extends WinRTGetPropertyProjection {
  DateTimeGetProperty(super.method, super.vtableOffset);

  @override
  String toString() => '''
      DateTime get $exposedMethodName {
        final retValuePtr = calloc<Uint64>();

        try {
          ${ffiCall()}

          return DateTime
            .utc(1601, 01, 01)
            .add(Duration(microseconds: retValuePtr.value ~/ 10));
        } finally {
          free(retValuePtr);
        }
      }
''';
}

class DateTimeSetProperty extends WinRTSetPropertyProjection {
  DateTimeSetProperty(super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName(DateTime value) {
        final dateTimeOffset =
          value.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;

        ${ffiCall('dateTimeOffset')}
      }
''';
}
