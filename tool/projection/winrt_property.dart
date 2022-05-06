import 'package:winmd/winmd.dart';

import 'com_property.dart';
import 'safenames.dart';

class WinRTGetPropertyProjection extends ComGetPropertyProjection {
  WinRTGetPropertyProjection(Method method, int vtableOffset)
      : super(method, vtableOffset);

  bool get isVectorReturn =>
      method.returnType.typeIdentifier.baseType ==
          BaseType.GenericTypeModifier &&
      method.returnType.typeIdentifier.type?.name.endsWith('IVectorView`1') ==
          true;

  bool get isPointerCOMObjectReturn =>
      returnType.dartType == 'Pointer<COMObject>';

  /// Strip off all underscores, even if double underscores
  @override
  String get exposedMethodName => method.name.startsWith('get__')
      ? safeIdentifierForString(method.name.substring(5))
      : safeIdentifierForString(method.name.substring(4));

  @override
  bool get convertBool => returnType.dartType == 'bool';

  // WinRT properties always return an HRESULT
  @override
  String get nativePrototype => 'HRESULT Function($nativeParams)';

  @override
  String get nativeParams => isPointerCOMObjectReturn
      ? 'Pointer, Pointer<COMObject>,'
      : 'Pointer, Pointer<${returnType.nativeType}>,';

  // WinRT properties always return an HRESULT
  @override
  String get dartPrototype => 'int Function($dartParams)';

  @override
  String get dartParams => nativeParams;

  String vectorPropertyDeclaration() => '''
    List<String> get $exposedMethodName {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
      .elementAt($vtableOffset)
      .cast<Pointer<NativeFunction<$nativePrototype>>>()
      .value
      .asFunction<$dartPrototype>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    try {
      return IVectorView<String>(retValuePtr).toList();
    } finally {
      free(retValuePtr);
    }
  }
''';

  String pointerCOMObjectPropertyDeclaration() => '''
    Pointer<COMObject> get $exposedMethodName {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
      .elementAt($vtableOffset)
      .cast<Pointer<NativeFunction<$nativePrototype>>>()
      .value
      .asFunction<$dartPrototype>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr;
  }
''';

  String stringPropertyDeclaration() => '''
      String get $exposedMethodName {
      final retValuePtr = calloc<HSTRING>();

        try {
          final hr = ptr.ref.lpVtbl.value
            .elementAt($vtableOffset)
            .cast<Pointer<NativeFunction<$nativePrototype>>>()
            .value
            .asFunction<$dartPrototype>()(ptr.ref.lpVtbl, retValuePtr);

          if (FAILED(hr)) throw WindowsException(hr);

          final retValue = retValuePtr.toDartString();
          return retValue;
        } finally {
          WindowsDeleteString(retValuePtr.value);
          free(retValuePtr);
        }
      }
''';

  @override
  String toString() {
    try {
      if (isVectorReturn) {
        return vectorPropertyDeclaration();
      }

      if (isPointerCOMObjectReturn) {
        return pointerCOMObjectPropertyDeclaration();
      }
      if (returnType.isString) return stringPropertyDeclaration();

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
          final hr = ptr.ref.lpVtbl.value
            .elementAt($vtableOffset)
            .cast<Pointer<NativeFunction<$nativePrototype>>>()
            .value
            .asFunction<$dartPrototype>()(ptr.ref.lpVtbl, retValuePtr);

          if (FAILED(hr)) throw WindowsException(hr);

          final retValue = retValuePtr.$valRef;
          return retValue;
        } finally {
          free(retValuePtr);
        }
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

class WinRTSetPropertyProjection extends ComSetPropertyProjection {
  WinRTSetPropertyProjection(Method method, int vtableOffset)
      : super(method, vtableOffset);

  /// Strip off all underscores, even if double underscores
  @override
  String get exposedMethodName => method.name.startsWith('put__')
      ? safeIdentifierForString(method.name.substring(5))
      : safeIdentifierForString(method.name.substring(4));

  // WinRT properties always return an HRESULT
  @override
  String get nativePrototype => 'HRESULT Function($nativeParams)';

  @override
  String get nativeParams => 'Pointer, ${parameters.first.type.nativeType},';

  // WinRT properties always return an HRESULT
  @override
  String get dartPrototype => 'int Function($dartParams)';

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
