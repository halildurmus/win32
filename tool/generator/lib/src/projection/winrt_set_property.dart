import 'winrt_property.dart';

class WinRTSetPropertyProjection extends WinRTPropertyProjection {
  WinRTSetPropertyProjection(super.method, super.vtableOffset);

  // WinRTPropertyProjection overrides

  @override
  String get nativeParams => 'Pointer, ${parameters.first.type.nativeType}';

  @override
  String get dartParams => 'Pointer, ${parameters.first.type.dartType}';

  // Declaration String templates

  // TODO: vectorViewDeclaration
  // TODO: vectorDeclaration
  // TODO: comObjectDeclaration

  @override
  String ffiCall([String params = '']) => '''
          final hr = _thisPtr.ref.vtable
            .elementAt($vtableOffset)
            .cast<Pointer<NativeFunction<$nativePrototype>>>()
            .value
            .asFunction<$dartPrototype>()(_thisPtr.ref.lpVtbl, $params);

          if (FAILED(hr)) throw WindowsException(hr);
  ''';

  @override
  String stringDeclaration() => '''
      set $exposedMethodName(String value) {
      final hstr = convertToHString(value);

        try {
          ${ffiCall('hstr')}

        } finally {
          WindowsDeleteString(hstr);
        }
      }
''';

  @override
  String dateTimeDeclaration() => '''
      set $exposedMethodName(DateTime value) {
        final dateTimeOffset =
          value.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;
        
        ${ffiCall('dateTimeOffset')}
      }
''';

  @override
  String durationDeclaration() => '''
      set $exposedMethodName(Duration value) {
        final duration = value.inMicroseconds * 10;
        
        ${ffiCall('duration')}
      }
''';

  @override
  String defaultDeclaration() => '''
    set $exposedMethodName(${parameters.first.type.dartType} value) {
        ${ffiCall('value')}
    }
  ''';

  @override
  String toString() {
    try {
      if (parameters.first.type.isString) return stringDeclaration();
      if (parameters.first.type.typeIdentifier.name ==
          'Windows.Foundation.DateTime') return dateTimeDeclaration();
      if (parameters.first.type.typeIdentifier.name ==
          'Windows.Foundation.TimeSpan') return durationDeclaration();

      return defaultDeclaration();
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.

      // TODO: Fix these errors as they occur.
      print('Unable to project method: ${method.name}');
      return '';
    }
  }
}
