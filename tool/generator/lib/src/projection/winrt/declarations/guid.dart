import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_set_property.dart';

class WinRTMethodReturningGuidProjection extends WinRTMethodProjection {
  WinRTMethodReturningGuidProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Guid $camelCasedName($methodParams) {
        final retValuePtr = calloc<GUID>();
        $parametersPreamble

        try {
          ${ffiCall()}

          return retValuePtr.toDartGuid();
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
''';
}

class WinRTGetPropertyReturningGuidProjection
    extends WinRTGetPropertyProjection {
  WinRTGetPropertyReturningGuidProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Guid get $exposedMethodName {
        final retValuePtr = calloc<GUID>();

        try {
          ${ffiCall()}

          return retValuePtr.toDartGuid();
        } finally {
          free(retValuePtr);
        }
      }
''';
}

class WinRTSetPropertyReturningGuidProjection
    extends WinRTSetPropertyProjection {
  WinRTSetPropertyReturningGuidProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName(Guid value) {
        final nativeGuidPtr = value.toNativeGUID();

        try {
          ${ffiCall(params: 'nativeGuidPtr.ref')}
        } finally {
          free(nativeGuidPtr);
        }
      }
''';
}
