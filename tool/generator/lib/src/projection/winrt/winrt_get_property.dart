import 'declarations/comobject.dart';
import 'declarations/datetime.dart';
import 'declarations/default.dart';
import 'declarations/duration.dart';
import 'declarations/enum.dart';
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
      if (isEnumReturn) return declarationFor(EnumGetProperty.new);
      if (isVectorReturn) return declarationFor(VectorGetProperty.new);
      if (isVectorViewReturn) return declarationFor(VectorViewGetProperty.new);
      if (isCOMObjectReturn) return declarationFor(COMObjectGetProperty.new);
      if (isStringReturn) return declarationFor(StringGetProperty.new);
      if (isDateTimeReturn) return declarationFor(DateTimeGetProperty.new);
      if (isTimeSpanReturn) return declarationFor(DurationGetProperty.new);

      return declarationFor(DefaultGetProperty.new);
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.

      // TODO: Fix these errors as they occur.
      print('Unable to project get property: ${method.name}');
      return '';
    }
  }
}
