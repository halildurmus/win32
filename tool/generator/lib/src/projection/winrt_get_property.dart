import 'package:winmd/winmd.dart';

import 'winrt_property.dart';

class WinRTGetPropertyProjection extends WinRTPropertyProjection {
  WinRTGetPropertyProjection(Method method, int vtableOffset)
      : super(method, vtableOffset);

  bool get isVectorReturn =>
      method.returnType.typeIdentifier.baseType ==
          BaseType.genericTypeModifier &&
      method.returnType.typeIdentifier.type?.name.endsWith('IVectorView`1') ==
          true;

  @override
  bool get isPointerCOMObjectReturn =>
      returnType.dartType == 'Pointer<COMObject>';

  bool get convertBool => returnType.dartType == 'bool';

  @override
  String get nativeParams => isPointerCOMObjectReturn
      ? 'Pointer, Pointer<COMObject>,'
      : 'Pointer, Pointer<${returnType.nativeType}>,';

  @override
  String get dartParams => nativeParams;

  String get ffiCall => '''
    final hr = ptr.ref.vtable
      .elementAt($vtableOffset)
      .cast<Pointer<NativeFunction<$nativePrototype>>>()
      .value
      .asFunction<$dartPrototype>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);
''';

  String vectorPropertyDeclaration() => '''
    List<String> get $exposedMethodName {
    final retValuePtr = calloc<COMObject>();

    $ffiCall

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

    $ffiCall

    return retValuePtr;
  }
''';

  String stringPropertyDeclaration() => '''
      String get $exposedMethodName {
      final retValuePtr = calloc<HSTRING>();

        try {
          $ffiCall

          final retValue = retValuePtr.toDartString();
          return retValue;
        } finally {
          WindowsDeleteString(retValuePtr.value);
          free(retValuePtr);
        }
      }
''';

  String dateTimePropertyDeclaration() => '''
      DateTime get $exposedMethodName {
        final retValuePtr = calloc<Uint64>();

        try {
          $ffiCall

          return DateTime
            .utc(1601, 01, 01)
            .add(Duration(microseconds: retValuePtr.value ~/ 10));
        } finally {
          free(retValuePtr);
        }
      }
''';

  String durationPropertyDeclaration() => '''
      Duration get $exposedMethodName {
        final retValuePtr = calloc<Uint64>();

        try {
          $ffiCall

          return Duration(microseconds: retValuePtr.value ~/ 10);
        } finally {
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
      if (returnType.typeIdentifier.name == 'Windows.Foundation.DateTime') {
        return dateTimePropertyDeclaration();
      }
      if (returnType.typeIdentifier.name == 'Windows.Foundation.TimeSpan') {
        return durationPropertyDeclaration();
      }

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
          $ffiCall

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
