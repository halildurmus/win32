import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_set_property.dart';

class WinRTMethodReturningDurationProjection extends WinRTMethodProjection {
  WinRTMethodReturningDurationProjection(super.method, super.vtableOffset);

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

class WinRTGetPropertyReturningDurationProjection
    extends WinRTGetPropertyProjection {
  WinRTGetPropertyReturningDurationProjection(super.method, super.vtableOffset);

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

class WinRTSetPropertyReturningDurationProjection
    extends WinRTSetPropertyProjection {
  WinRTSetPropertyReturningDurationProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName(Duration value) {
        final duration = value.inMicroseconds * 10;

        ${ffiCall(params: 'duration')}
      }
''';
}
