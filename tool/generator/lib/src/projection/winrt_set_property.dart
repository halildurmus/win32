import 'package:winmd/winmd.dart';

import 'safenames.dart';
import 'winrt_property.dart';

class WinRTSetPropertyProjection extends WinRTPropertyProjection {
  WinRTSetPropertyProjection(Method method, int vtableOffset)
      : super(method, vtableOffset);

  /// Strip off all underscores, even if double underscores
  @override
  String get exposedMethodName => method.name.startsWith('put__')
      ? safeIdentifierForString(method.name.substring(5))
      : safeIdentifierForString(method.name.substring(4));

  @override
  String get nativeParams => 'Pointer, ${parameters.first.type.nativeType},';

  @override
  String get dartParams => 'Pointer, ${parameters.first.type.dartType},';

  String stringPropertyDeclaration() => '''
      set $exposedMethodName(String value) {
      final hstr = convertToHString(value);

        try {
          final hr = ptr.ref.lpVtbl.value
            .elementAt($vtableOffset)
            .cast<Pointer<NativeFunction<$nativePrototype>>>()
            .value
            .asFunction<$dartPrototype>()(ptr.ref.lpVtbl, hstr);

          if (FAILED(hr)) throw WindowsException(hr);
        } finally {
          WindowsDeleteString(hstr);
        }
      }
''';

  String dateTimePropertyDeclaration() => '''
      set $exposedMethodName(DateTime value) {
        final dateTimeOffset =
          value.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;
        
        final hr = ptr.ref.lpVtbl.value
          .elementAt($vtableOffset)
          .cast<Pointer<NativeFunction<$nativePrototype>>>()
          .value
          .asFunction<$dartPrototype>()(ptr.ref.lpVtbl, dateTimeOffset);

          if (FAILED(hr)) throw WindowsException(hr);
      }
''';

  @override
  String toString() {
    try {
      if (parameters.first.type.isString) return stringPropertyDeclaration();

      return '''
    set $exposedMethodName(${parameters.first.type.dartType} value) {
      final hr = ptr.ref.lpVtbl.value
        .elementAt($vtableOffset)
        .cast<Pointer<NativeFunction<$nativePrototype>>>()
        .value
        .asFunction<$dartPrototype>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
''';
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.

      // TODO: Fix these errors as they occur.
      print('Unable to project method: ${method.name}');
      return '';
    }
  }
}
