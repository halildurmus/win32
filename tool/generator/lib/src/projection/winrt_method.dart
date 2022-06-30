import 'package:winmd/winmd.dart';

import 'method.dart';
import 'type.dart';
import 'winrt_parameter.dart';

class WinRTMethodProjection extends MethodProjection {
  WinRTMethodProjection(super.method, super.vtableOffset) {
    parameters = method.parameters
        .map((param) => WinRTParameterProjection(
            param.name, TypeProjection(param.typeIdentifier)))
        .toList();
  }

  // MethodProjection overrides

  @override
  String get dartParams => [
        'Pointer',
        ...parameters.map((param) => param.dartProjection),
        if (!isVoidReturn)
          isCOMObjectReturn
              ? 'Pointer<COMObject>'
              : 'Pointer<${returnType.nativeType}>',
      ].join(', ');

  @override
  String get nativeParams => [
        'Pointer',
        ...parameters.map((param) => param.ffiProjection),
        if (!isVoidReturn)
          isCOMObjectReturn
              ? 'Pointer<COMObject>'
              : 'Pointer<${returnType.nativeType}>',
      ].join(', ');

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
            (param) => (param as WinRTParameterProjection).localIdentifier),
        if (!isVoidReturn) 'retValuePtr',
      ].join(', ');

  // Matcher properties

  bool get isBooleanReturn => returnType.dartType == 'bool';

  bool get isEnumReturn => returnType.isWinRTEnum;

  bool get isCOMObjectReturn => returnType.dartType == 'Pointer<COMObject>';

  bool get isVoidReturn => returnType.dartType == 'void';

  bool get isStringReturn => returnType.isString;

  bool get isDateTimeReturn =>
      returnType.typeIdentifier.name == 'Windows.Foundation.DateTime';

  bool get isTimeSpanReturn =>
      returnType.typeIdentifier.name == 'Windows.Foundation.TimeSpan';

  bool get isVectorViewReturn =>
      returnType.typeIdentifier.baseType == BaseType.genericTypeModifier &&
      (returnType.typeIdentifier.type?.name.endsWith('IVectorView`1') ?? false);

  bool get isVectorReturn =>
      returnType.typeIdentifier.baseType == BaseType.genericTypeModifier &&
      (returnType.typeIdentifier.type?.name.endsWith('IVector`1') ?? false);

  String get parametersPreamble => parameters
      .map((param) => (param as WinRTParameterProjection).preamble)
      .join('\n');

  String get parametersPostamble => parameters
      .map((param) => (param as WinRTParameterProjection).postamble)
      .join('\n');

  // Declaration String templates

  String ffiCall([String params = '']) => '''
    final hr = ptr.ref.vtable
      .elementAt($vtableOffset)
      .cast<Pointer<NativeFunction<$nativePrototype>>>()
      .value
      .asFunction<$dartPrototype>()($identifiers);

    if (FAILED(hr)) throw WindowsException(hr);
  ''';

  String vectorDeclaration() => '''
      IVector<String> $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble
        ${ffiCall()}
        $parametersPostamble
        return IVector.fromRawPointer(retValuePtr);
      }
''';

  String vectorViewDeclaration() => '''
      List<String> $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble
        ${ffiCall()}

        try {
          return IVectorView<String>.fromRawPointer(retValuePtr).toList();
        } finally {
        $parametersPostamble
        free(retValuePtr);
      }
    }
''';

  String comObjectDeclaration() => '''
      Pointer<COMObject> $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble
        ${ffiCall()}
        $parametersPostamble
        return retValuePtr;
      }
''';

  String voidDeclaration() => '''
      void $camelCasedName($methodParams) {
        $parametersPreamble
        ${ffiCall()}
        $parametersPostamble
      }
''';

  String stringDeclaration() {
    final overrideAnnotation = camelCasedName == 'toString' ? '@override' : '';
    return '''
      $overrideAnnotation
      String $camelCasedName($methodParams) {
        final retValuePtr = calloc<HSTRING>();
        $parametersPreamble

        try {
          ${ffiCall()}

          final retValue = retValuePtr.toDartString();
          return retValue;
        } finally {
          $parametersPostamble
          WindowsDeleteString(retValuePtr.value);
          free(retValuePtr);
        }
      }
  ''';
  }

  /// Return a method with a DateTime.
  ///
  /// In WinRT, DateTime is represented as a 64-bit signed integer that
  /// represents a point in time as the number of 100-nanosecond intervals prior
  /// to or after midnight on January 1, 1601 (according to the Gregorian
  /// Calendar).
  String dateTimeDeclaration() => '''
      DateTime $camelCasedName($methodParams) {
        final retValuePtr = calloc<Uint64>();
        $parametersPreamble

        try {
          ${ffiCall()}

          return DateTime
            .utc(1601, 01, 01)
            .add(Duration(microseconds: retValuePtr.value ~/ 10));
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
''';

  String durationDeclaration() => '''
      Duration $camelCasedName($methodParams) {
        final retValuePtr = calloc<Uint64>();
        $parametersPreamble

        try {
          ${ffiCall()}

          return Duration(microseconds: retValuePtr.value ~/ 10);
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
''';

  String enumDeclaration() => '''
      ${returnType.methodParamType} $camelCasedName($methodParams) {
        final retValuePtr = calloc<${returnType.nativeType}>();
        $parametersPreamble

        try {
          ${ffiCall()}

          return ${returnType.methodParamType}.from(retValuePtr.value);
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
  ''';

  String defaultDeclaration() {
    final valRef = returnType.dartType == 'double' ||
            returnType.dartType == 'int' ||
            returnType.dartType == 'bool' ||
            returnType.dartType.startsWith('Pointer')
        ? 'value'
        : 'ref';

    return '''
      ${returnType.dartType} $camelCasedName($methodParams) {
        final retValuePtr = calloc<${returnType.nativeType}>();
        $parametersPreamble

        try {
          ${ffiCall()}

          final retValue = retValuePtr.$valRef;
          return retValue;
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
''';
  }

  @override
  String toString() {
    try {
      if (isVectorReturn) return vectorDeclaration();
      if (isVectorViewReturn) return vectorViewDeclaration();
      if (isCOMObjectReturn) return comObjectDeclaration();
      if (isVoidReturn) return voidDeclaration();
      if (isStringReturn) return stringDeclaration();
      if (isDateTimeReturn) return dateTimeDeclaration();
      if (isTimeSpanReturn) return durationDeclaration();
      if (isEnumReturn) return enumDeclaration();

      return defaultDeclaration();
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.

      // TODO: Fix these errors as they occur.
      print('Unable to project WinRT method: ${method.name}');
      return '';
    }
  }
}
