import 'package:winmd/winmd.dart';

import '../parameter.dart';
import '../safenames.dart';
import '../type.dart';
import '../utils.dart';

/// A WinRT parameter.
///
/// Parameters are a tuple of a type and a name. WinRT parameters are
/// specialized in that they have logic to translate primitive WinRT types to
/// their Dart equivalents (e.g. a WinRT `TimeSpan` can be represented by a Dart
/// [Duration]).
class WinRTParameterProjection extends ParameterProjection {
  const WinRTParameterProjection(this.method, super.name, super.type);

  final Method method;

  String get paramType {
    final originalParamType = safeTypenameForString(type.methodParamType);
    if (originalParamType == 'GUID') return 'Guid';
    if (!originalParamType.endsWith('?')) return originalParamType;

    // Parameters of factory interface methods (constructors) can't be nullable.
    final factoryInterfacePattern = RegExp(r'^(I[A-Z]\w+)Factory\d{0,1}$');
    if (factoryInterfacePattern.hasMatch(lastComponent(method.parent.name))) {
      return stripQuestionMarkSuffix(originalParamType);
    }

    // IIterable.First() cannot return null.
    if (method.name == 'First' &&
        (method.parent.interfaces.any((element) =>
            element.typeSpec?.name.endsWith('IIterable`1') ?? false))) {
      return stripQuestionMarkSuffix(originalParamType);
    }

    // IVector(View).GetAt() cannot return null.
    if (method.name == 'GetAt' &&
        (method.parent.interfaces.any((element) =>
            (element.typeSpec?.name.endsWith('IVector`1') ?? false) ||
            (element.typeSpec?.name.endsWith('IVectorView`1') ?? false)))) {
      return stripQuestionMarkSuffix(originalParamType);
    }

    return originalParamType;
  }

  @override
  String get paramProjection => '$paramType ${safeIdentifierForString(name)}';

  // Matcher properties

  bool get isCOMObject => type.dartType == 'Pointer<COMObject>';

  bool get isDateTime =>
      type.typeIdentifier.name == 'Windows.Foundation.DateTime';

  bool get isEnum => type.isWinRTEnum;

  bool get isGuid => type.typeIdentifier.name == 'System.Guid';

  bool get isReference =>
      type.typeIdentifier.type?.name.endsWith('IReference`1') ?? false;

  bool get isString => type.isString;

  bool get isTimeSpan =>
      type.typeIdentifier.name == 'Windows.Foundation.TimeSpan';

  bool get isUri => type.typeIdentifier.name == 'Windows.Foundation.Uri';

  /// Whether the method belongs to `IUriRuntimeClass` or
  /// `IUriRuntimeClassFactory`.
  ///
  /// Used to determine whether the parameter should be exposed as WinRT `Uri`
  /// or dart:core's `Uri`.
  bool get methodBelongsToUriRuntimeClass => [
        'Windows.Foundation.IUriRuntimeClass',
        'Windows.Foundation.IUriRuntimeClassFactory'
      ].contains(method.parent.name);

  /// Code to be inserted prior to the function call to set up the variable
  /// conversion.
  ///
  /// Any preamble that allocates memory should have a matching postamble that
  /// frees the memory.
  String get preamble {
    if (isDateTime) {
      return 'final ${name}DateTime = '
          '$name.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;';
    }

    if (isGuid) return 'final ${name}NativeGuidPtr = $name.toNativeGUID();';

    // Nullable parameters must be passed to WinRT APIs as 'IReference'
    // interfaces by calling the 'boxValue' function with the
    // 'convertToIReference' flag set to true
    if (isReference) {
      final typeProjection = TypeProjection(type.typeIdentifier.typeArg!);
      final args = <String>['convertToIReference: true'];

      // If the nullable parameter is an enum, a double or an int, its native
      // type (e.g. Double, Float, Int32, Uint32) must be passed in the
      // `nativeType` parameter so that the 'boxValue' function can use the
      // appropriate native type for the parameter
      if (typeProjection.isWinRTEnum ||
          ['double', 'int'].contains(typeProjection.methodParamType)) {
        args.add('nativeType: ${typeProjection.nativeType}');
      }

      final valueArg = typeProjection.isWinRTEnum ? 'value.value' : 'value';
      return '''
        final ${name}ReferencePtr = value == null
            ? calloc<COMObject>()
            : boxValue($valueArg, ${args.join(', ')});''';
    }

    if (isString) return 'final ${name}Hstring = convertToHString($name);';
    if (isTimeSpan) return 'final ${name}Duration = $name.inMicroseconds * 10;';

    if (isUri && !methodBelongsToUriRuntimeClass) {
      return 'final ${name}Uri = winrt_uri.Uri.createUri($name.toString());';
    }

    return '';
  }

  /// Code to be inserted prior to the function call to tear down allocated
  /// memory.
  String get postamble {
    if (isGuid) return 'free(${name}NativeGuidPtr);';
    if (isReference) return 'if (value == null) free(${name}ReferencePtr);';
    if (isString) return 'WindowsDeleteString(${name}Hstring);';
    if (isUri && !methodBelongsToUriRuntimeClass) {
      return '${name}Uri.release();';
    }

    return '';
  }

  /// The name of the converted variable that should be passed inside the method
  /// call (e.g. `today` -> `todayDateTime`)
  String get localIdentifier {
    if (isEnum) return '$identifier.value';
    if (isGuid) return '${name}NativeGuidPtr.ref';
    if (isReference) return '${name}ReferencePtr.ref';

    if (isCOMObject) {
      if (isUri) {
        if (methodBelongsToUriRuntimeClass) {
          return '$identifier == null ? nullptr : $identifier.ptr.cast<Pointer<COMObject>>().value';
        }

        return paramType.endsWith('?')
            ? '$name == null ? nullptr : ${name}Uri.ptr.cast<Pointer<COMObject>>().value'
            : '${name}Uri.ptr.cast<Pointer<COMObject>>().value';
      }

      if (type.isReferenceType || type.isSimpleArrayType) {
        return paramType == 'Pointer<COMObject>'
            ? identifier
            : '$identifier.ptr';
      }

      if (paramType == 'Pointer<COMObject>') {
        return '$identifier.cast<Pointer<COMObject>>().value';
      }

      return paramType.endsWith('?')
          ? '$identifier == null ? nullptr : $identifier.ptr.cast<Pointer<COMObject>>().value'
          : '$identifier.ptr.cast<Pointer<COMObject>>().value';
    }

    return preamble.isEmpty ? identifier : preamble.split(' ')[1];
  }
}
