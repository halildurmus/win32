import 'package:winmd/winmd.dart';

import 'method.dart';

class WinRTMethodProjection extends MethodProjection {
  WinRTMethodProjection(Method method, int vtableOffset)
      : super(method, vtableOffset);

  bool get isVoidReturn => returnType.dartType == 'void';

  @override
  String get dartParams => [
        'Pointer',
        ...parameters.map((param) => param.dartProjection),
        if (!isVoidReturn) 'Pointer<${returnType.nativeType}>',
      ].map((p) => '$p, ').join();

  @override
  String get nativeParams => [
        'Pointer',
        ...parameters.map((param) => param.ffiProjection),
        if (!isVoidReturn) 'Pointer<${returnType.nativeType}>',
      ].map((p) => '$p, ').join();

  // WinRT methods always return an HRESULT
  @override
  String get nativePrototype => 'HRESULT Function($nativeParams)';

  // WinRT properties always return an HRESULT
  @override
  String get dartPrototype => 'int Function($dartParams)';

  @override
  String get identifiers => [
        'ptr.ref.lpVtbl',
        ...parameters.map((param) => param.identifier),
        if (!isVoidReturn) 'retValuePtr',
      ].map((p) => '$p, ').join();

  String voidMethodDeclaration() => '''
  void $name($methodParams) => ptr.ref.lpVtbl.value
      .elementAt($vtableOffset)
      .cast<Pointer<NativeFunction<$nativePrototype>>>()
      .value
      .asFunction<$dartPrototype>()($identifiers);
''';

  String stringMethodDeclaration() => '''
      String $name($methodParams) {
      final retValuePtr = calloc<HSTRING>();
  
        try {
          final hr = ptr.ref.lpVtbl.value
            .elementAt($vtableOffset)
            .cast<Pointer<NativeFunction<$nativePrototype>>>()
            .value
            .asFunction<$dartPrototype>()($identifiers);

          if (FAILED(hr)) throw WindowsException(hr);

          final retValue = retValuePtr.toDartString();
          return retValue;
        } finally {
          free(retValuePtr);
        }
      }
''';

  @override
  String toString() {
    try {
      if (isVoidReturn) return voidMethodDeclaration();
      if (returnType.isString) return stringMethodDeclaration();

      final valRef = returnType.dartType == 'double' ||
              returnType.dartType == 'int' ||
              returnType.dartType == 'bool' ||
              returnType.dartType.startsWith('Pointer')
          ? 'value'
          : 'ref';

      return '''
      ${returnType.dartType} $name($methodParams) {
        final retValuePtr = calloc<${returnType.nativeType}>();
  
        try {
          final hr = ptr.ref.lpVtbl.value
            .elementAt($vtableOffset)
            .cast<Pointer<NativeFunction<$nativePrototype>>>()
            .value
            .asFunction<$dartPrototype>()($identifiers);

          if (FAILED(hr)) throw WindowsException(hr);

          final retValue = retValuePtr.$valRef;
          return retValue;
        } finally {
          // WindowsDeleteString(retValuePtr.value);
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
