import 'package:winmd/winmd.dart';

import 'method.dart';

class WinRTMethodProjection extends MethodProjection {
  WinRTMethodProjection(Method method, int vtableOffset)
      : super(method, vtableOffset);

  bool get isPointerCOMObjectReturn =>
      returnType.dartType == 'Pointer<COMObject>';

  bool get isVoidReturn => returnType.dartType == 'void';

  @override
  String get dartParams => [
        'Pointer',
        ...parameters.map((param) => param.dartProjection),
        if (!isVoidReturn)
          isPointerCOMObjectReturn
              ? 'Pointer<COMObject>'
              : 'Pointer<${returnType.nativeType}>',
      ].map((p) => '$p, ').join();

  @override
  String get nativeParams => [
        'Pointer',
        ...parameters.map((param) => param.ffiProjection),
        if (!isVoidReturn)
          isPointerCOMObjectReturn
              ? 'Pointer<COMObject>'
              : 'Pointer<${returnType.nativeType}>',
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
        ...parameters.map(
          (param) => param.type.dartType == 'Pointer<COMObject>' &&
                  !param.type.isReferenceType
              ? '${param.identifier}.cast<Pointer<COMObject>>().value'
              : param.identifier,
        ),
        if (!isVoidReturn) 'retValuePtr',
      ].map((p) => '$p, ').join();

  String pointerCOMObjectMethodDeclaration() => '''
    Pointer<COMObject> $name($methodParams) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
      .elementAt($vtableOffset)
      .cast<Pointer<NativeFunction<$nativePrototype>>>()
      .value
      .asFunction<$dartPrototype>()($identifiers);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr;
  }
''';

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
          WindowsDeleteString(retValuePtr.value);
          free(retValuePtr);
        }
      }
''';

  /// Return a method with a DateTime.
  ///
  /// In WinRT, DateTime is represented as a 64-bit signed integer that
  /// represents a point in time as the number of 100-nanosecond intervals prior
  /// to or after midnight on January 1, 1601 (according to the Gregorian
  /// Calendar).
  String dateTimeMethodDeclaration() => '''
      DateTime $name($methodParams) {
        final retValuePtr = calloc<Uint64>();
  
        try {
          final hr = ptr.ref.lpVtbl.value
            .elementAt($vtableOffset)
            .cast<Pointer<NativeFunction<$nativePrototype>>>()
            .value
            .asFunction<$dartPrototype>()($identifiers);

          if (FAILED(hr)) throw WindowsException(hr);

          return DateTime
            .utc(1601, 01, 01)
            .add(Duration(microseconds: retValuePtr.value ~/ 10));
        } finally {
          free(retValuePtr);
        }
      }
''';

  @override
  String toString() {
    try {
      if (isPointerCOMObjectReturn) return pointerCOMObjectMethodDeclaration();
      if (isVoidReturn) return voidMethodDeclaration();
      if (returnType.isString) return stringMethodDeclaration();
      if (returnType.typeIdentifier.name == 'Windows.Foundation.DateTime') {
        return dateTimeMethodDeclaration();
      }

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
