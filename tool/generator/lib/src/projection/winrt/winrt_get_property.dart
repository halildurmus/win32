import 'declarations/comobject.dart';
import 'declarations/datetime.dart';
import 'declarations/default.dart';
import 'declarations/duration.dart';
import 'declarations/enum.dart';
import 'declarations/map.dart';
import 'declarations/reference.dart';
import 'declarations/string.dart';
import 'declarations/uri.dart';
import 'declarations/vector.dart';
import 'winrt_property.dart';

class WinRTGetPropertyProjection extends WinRTPropertyProjection {
  WinRTGetPropertyProjection(super.method, super.vtableOffset);

  // WinRTPropertyProjection overrides

  @override
  String get dartParams => nativeParams;

  @override
  String get nativeParams => isCOMObjectReturn
      ? 'Pointer, Pointer<COMObject>'
      : 'Pointer, Pointer<${returnType.nativeType}>';

  @override
  String ffiCall({String params = '', bool freeRetValOnFailure = false}) {
    return [
      '''
    final hr = ptr.ref.vtable
      .elementAt($vtableOffset)
      .cast<Pointer<NativeFunction<$nativePrototype>>>()
      .value
      .asFunction<$dartPrototype>()(ptr.ref.lpVtbl, retValuePtr);
''',
      if (freeRetValOnFailure)
        'if (FAILED(hr)) { free(retValuePtr); throw WindowsException(hr); }'
      else
        'if (FAILED(hr)) throw WindowsException(hr);'
    ].join('\n');
  }

  @override
  String get shortForm => exposedMethodName;

  @override
  String toString() {
    try {
      if (isEnumReturn) {
        return declarationFor(WinRTGetPropertyReturningEnumProjection.new);
      }

      if (isMapReturn) {
        return declarationFor(WinRTGetPropertyReturningMapProjection.new);
      }

      if (isMapViewReturn) {
        return declarationFor(WinRTGetPropertyReturningMapViewProjection.new);
      }

      if (isReferenceReturn) {
        return declarationFor(WinRTGetPropertyReturningReferenceProjection.new);
      }

      if (isUriReturn) {
        return declarationFor(WinRTGetPropertyReturningUriProjection.new);
      }

      if (isVectorReturn) {
        return declarationFor(WinRTGetPropertyReturningVectorProjection.new);
      }

      if (isVectorViewReturn) {
        return declarationFor(
            WinRTGetPropertyReturningVectorViewProjection.new);
      }

      if (isCOMObjectReturn) {
        return declarationFor(WinRTGetPropertyReturningComObjectProjection.new);
      }

      if (isStringReturn) {
        return declarationFor(WinRTGetPropertyReturningStringProjection.new);
      }

      if (isDateTimeReturn) {
        return declarationFor(WinRTGetPropertyReturningDateTimeProjection.new);
      }

      if (isTimeSpanReturn) {
        return declarationFor(WinRTGetPropertyReturningDurationProjection.new);
      }

      return declarationFor(WinRTGetPropertyReturningDefaultProjection.new);
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.

      // TODO: Fix these errors as they occur.
      print('Unable to project get property: ${method.name}');
      return '';
    }
  }
}
