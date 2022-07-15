import 'declarations/comobject.dart';
import 'declarations/datetime.dart';
import 'declarations/default.dart';
import 'declarations/duration.dart';
import 'declarations/enum.dart';
import 'declarations/map.dart';
import 'declarations/string.dart';
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
  String ffiCall([String params = '']) => '''
    final hr = ptr.ref.vtable
      .elementAt($vtableOffset)
      .cast<Pointer<NativeFunction<$nativePrototype>>>()
      .value
      .asFunction<$dartPrototype>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);
''';

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
