import 'package:winmd/winmd.dart';

import '../method.dart';
import '../type.dart';
import 'declarations/comobject.dart';
import 'declarations/datetime.dart';
import 'declarations/default.dart';
import 'declarations/duration.dart';
import 'declarations/enum.dart';
import 'declarations/guid.dart';
import 'declarations/map.dart';
import 'declarations/reference.dart';
import 'declarations/string.dart';
import 'declarations/uri.dart';
import 'declarations/vector.dart';
import 'declarations/void.dart';
import 'winrt_parameter.dart';

class WinRTMethodProjection extends MethodProjection {
  WinRTMethodProjection(super.method, super.vtableOffset) {
    parameters = method.parameters
        .map((param) => WinRTParameterProjection(
            method, param.name, TypeProjection(param.typeIdentifier)))
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

  bool get isGuidReturn => returnType.typeIdentifier.name == 'System.Guid';

  bool get isVoidReturn => returnType.dartType == 'void';

  bool get isStringReturn => returnType.isString;

  bool get isStructReturn =>
      returnType.dartType == 'GUID' ||
      // Exclude special types (e.g. DateTime, EventRegistrationToken, HResult,
      // TimeSpan) as we don't expose them as structs.
      (returnType.isWinRTStruct && !returnType.isWin32SpecialType);

  bool get isDateTimeReturn =>
      returnType.typeIdentifier.name == 'Windows.Foundation.DateTime';

  bool get isTimeSpanReturn =>
      returnType.typeIdentifier.name == 'Windows.Foundation.TimeSpan';

  bool get isMapReturn =>
      returnType.isGenericType &&
      (returnType.typeIdentifier.type?.name.endsWith('IMap`2') ?? false);

  bool get isMapViewReturn =>
      returnType.isGenericType &&
      (returnType.typeIdentifier.type?.name.endsWith('IMapView`2') ?? false);

  bool get isReferenceReturn =>
      returnType.isGenericType &&
      (returnType.typeIdentifier.type?.name.endsWith('IReference`1') ?? false);

  bool get isUriReturn =>
      returnType.typeIdentifier.name == 'Windows.Foundation.Uri';

  bool get isVectorReturn =>
      returnType.isGenericType &&
      (returnType.typeIdentifier.type?.name.endsWith('IVector`1') ?? false);

  bool get isVectorViewReturn =>
      returnType.isGenericType &&
      (returnType.typeIdentifier.type?.name.endsWith('IVectorView`1') ?? false);

  /// Whether the method belongs to `IUriRuntimeClass` or `IUriRuntimeClassFactory`.
  ///
  /// Used to determine whether the method should be exposed as WinRT `Uri` or
  /// dart:core's `Uri`.
  bool get methodBelongsToUriRuntimeClass => [
        'Windows.Foundation.IUriRuntimeClass',
        'Windows.Foundation.IUriRuntimeClassFactory'
      ].contains(method.parent.name);

  String get parametersPreamble => parameters
      .map((param) => (param as WinRTParameterProjection).preamble)
      .join('\n');

  String get parametersPostamble => parameters
      .map((param) => (param as WinRTParameterProjection).postamble)
      .join('\n');

  String ffiCall({String params = '', bool freeRetValOnFailure = false}) {
    return [
      '''
    final hr = ptr.ref.vtable
      .elementAt($vtableOffset)
      .cast<Pointer<NativeFunction<$nativePrototype>>>()
      .value
      .asFunction<$dartPrototype>()($identifiers);
''',
      if (freeRetValOnFailure)
        'if (FAILED(hr)) { free(retValuePtr); throw WindowsException(hr); }'
      else
        'if (FAILED(hr)) throw WindowsException(hr);'
    ].join('\n');
  }

  /// Returns the method declaration for a method or property declaration class
  /// specified in [creator].
  ///
  /// [creator] must be the constructor of a WinRT method or property
  /// declaration class (e.g. `WinRTMethodReturningVectorProjection.new`,
  /// `WinRTGetPropertyReturningStringProjection.new`,
  /// `WinRTSetPropertyReturningEnumProjection.new`).
  String declarationFor(WinRTMethodProjection Function(Method, int) creator) =>
      creator(method, vtableOffset).toString();

  @override
  String toString() {
    try {
      if (isEnumReturn) {
        return declarationFor(WinRTMethodReturningEnumProjection.new);
      }

      if (isGuidReturn) {
        return declarationFor(WinRTMethodReturningGuidProjection.new);
      }

      if (isMapReturn) {
        return declarationFor(WinRTMethodReturningMapProjection.new);
      }

      if (isMapViewReturn) {
        return declarationFor(WinRTMethodReturningMapViewProjection.new);
      }

      if (isReferenceReturn) {
        return declarationFor(WinRTMethodReturningReferenceProjection.new);
      }

      if (isUriReturn && !methodBelongsToUriRuntimeClass) {
        return declarationFor(WinRTMethodReturningUriProjection.new);
      }

      if (isVectorReturn) {
        return declarationFor(WinRTMethodReturningVectorProjection.new);
      }

      if (isVectorViewReturn) {
        return declarationFor(WinRTMethodReturningVectorViewProjection.new);
      }

      if (isCOMObjectReturn) {
        return declarationFor(WinRTMethodReturningComObjectProjection.new);
      }

      if (isVoidReturn) {
        return declarationFor(WinRTMethodReturningVoidProjection.new);
      }

      if (isStringReturn) {
        return declarationFor(WinRTMethodReturningStringProjection.new);
      }

      if (isDateTimeReturn) {
        return declarationFor(WinRTMethodReturningDateTimeProjection.new);
      }

      if (isTimeSpanReturn) {
        return declarationFor(WinRTMethodReturningDurationProjection.new);
      }

      return declarationFor(WinRTMethodReturningDefaultProjection.new);
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.

      // TODO: Fix these errors as they occur.
      print('Unable to project WinRT method: ${method.name}');
      return '';
    }
  }
}
