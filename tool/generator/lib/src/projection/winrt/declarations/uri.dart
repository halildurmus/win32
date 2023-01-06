import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_set_property.dart';

class WinRTMethodReturningUriProjection extends WinRTMethodProjection {
  WinRTMethodReturningUriProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Uri? $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble

        ${ffiCall(freeRetValOnFailure: true)}

        if (retValuePtr.ref.lpVtbl == nullptr) {
          free(retValuePtr);
          return null;
        }

        final winrtUri = winrt_uri.Uri.fromRawPointer(retValuePtr);
        final uriAsString = winrtUri.toString();
        winrtUri.release();

        $parametersPostamble

        return Uri.parse(uriAsString);
      }
''';
}

class WinRTGetPropertyReturningUriProjection
    extends WinRTGetPropertyProjection {
  WinRTGetPropertyReturningUriProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Uri? get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        ${ffiCall(freeRetValOnFailure: true)}

        if (retValuePtr.ref.lpVtbl == nullptr) {
          free(retValuePtr);
          return null;
        }

        final winrtUri = winrt_uri.Uri.fromRawPointer(retValuePtr);
        final uriAsString = winrtUri.toString();
        winrtUri.release();

        return Uri.parse(uriAsString);
      }
''';
}

class WinRTSetPropertyReturningUriProjection
    extends WinRTSetPropertyProjection {
  WinRTSetPropertyReturningUriProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName(Uri? value) {
        final winrtUri = value == null ? null : winrt_uri.Uri.createUri(value.toString());

        try {
          ${ffiCall(params: 'value == null ? nullptr : winrtUri.ptr.cast<Pointer<COMObject>>().value')}
        } finally {
          winrtUri?.release();
        }
      }
''';
}
