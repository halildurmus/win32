import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_set_property.dart';

class WinRTMethodReturningUriProjection extends WinRTMethodProjection {
  WinRTMethodReturningUriProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Uri $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble

        try {
          ${ffiCall()}

          final winrtUri = winrt_uri.Uri.fromRawPointer(retValuePtr);
          return Uri.parse(winrtUri.toString());
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
''';
}

class WinRTGetPropertyReturningUriProjection
    extends WinRTGetPropertyProjection {
  WinRTGetPropertyReturningUriProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Uri get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        try {
          ${ffiCall()}

          final winrtUri = winrt_uri.Uri.fromRawPointer(retValuePtr);
          return Uri.parse(winrtUri.toString());
        } finally {
          free(retValuePtr);
        }
      }
''';
}

class WinRTSetPropertyReturningUriProjection
    extends WinRTSetPropertyProjection {
  WinRTSetPropertyReturningUriProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName(Uri value) {
        final winrtUri = winrt_uri.Uri.createUri(value.toString());

        try {
          ${ffiCall(params: 'winrtUri.ptr.cast<Pointer<COMObject>>().value')}
        } finally {
          free(winrtUri.ptr);
        }
      }
''';
}
