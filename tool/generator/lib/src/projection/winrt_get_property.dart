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

  // Declaration String templates

  @override
  String ffiCall([String params = '']) => '''
    final hr = _thisPtr.ref.vtable
      .elementAt($vtableOffset)
      .cast<Pointer<NativeFunction<$nativePrototype>>>()
      .value
      .asFunction<$dartPrototype>()(_thisPtr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);
''';

  @override
  String vectorViewDeclaration() => '''
    List<String> get $exposedMethodName {
    final retValuePtr = calloc<COMObject>();

    ${ffiCall()}

    try {
      return IVectorView<String>(retValuePtr).toList();
    } finally {
      free(retValuePtr);
    }
  }
''';

  @override
  String vectorDeclaration() => '''
    IVector<String> get $exposedMethodName {
    final retValuePtr = calloc<COMObject>();

    ${ffiCall()}

    return IVector(retValuePtr);
  }
''';

  @override
  String comObjectDeclaration() => '''
    Pointer<COMObject> get $exposedMethodName {
    final retValuePtr = calloc<COMObject>();

    ${ffiCall()}

    return retValuePtr;
  }
''';

  @override
  String stringDeclaration() => '''
      String get $exposedMethodName {
      final retValuePtr = calloc<HSTRING>();

        try {
          ${ffiCall()}

          final retValue = retValuePtr.toDartString();
          return retValue;
        } finally {
          WindowsDeleteString(retValuePtr.value);
          free(retValuePtr);
        }
      }
''';

  @override
  String dateTimeDeclaration() => '''
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

  @override
  String durationDeclaration() => '''
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

  @override
  String defaultDeclaration() {
    final valRef = returnType.dartType == 'double' ||
            returnType.dartType == 'int' ||
            returnType.dartType == 'bool' ||
            returnType.dartType.startsWith('Pointer')
        ? 'value'
        : 'ref';
    return '''
      ${returnType.dartType} get $exposedMethodName {
        final retValuePtr = calloc<${returnType.nativeType}>();

        try {
          ${ffiCall()}

          final retValue = retValuePtr.$valRef;
          return retValue;
        } finally {
          free(retValuePtr);
        }
      }
''';
  }
}
