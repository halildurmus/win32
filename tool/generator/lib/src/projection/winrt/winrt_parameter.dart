import '../parameter.dart';
import '../type.dart';

/// A WinRT parameter.
///
/// Parameters are a tuple of a type and a name. WinRT parameters are
/// specialized in that they have logic to translate primitive WinRT types to
/// their Dart equivalents (e.g. a WinRT `TimeSpan` can be represented by a Dart
/// [Duration]).
class WinRTParameterProjection extends ParameterProjection {
  const WinRTParameterProjection(super.name, super.type);

  // Matcher properties

  bool get isCOMObject => type.dartType == 'Pointer<COMObject>';

  bool get isDateTime =>
      type.typeIdentifier.name == 'Windows.Foundation.DateTime';

  bool get isEnum => type.isWinRTEnum;

  bool get isReference =>
      type.typeIdentifier.type?.name.endsWith('IReference`1') ?? false;

  bool get isString => type.isString;

  bool get isTimeSpan =>
      type.typeIdentifier.name == 'Windows.Foundation.TimeSpan';

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

    // Nullable parameters must be passed to WinRT APIs as 'IReference' interfaces
    // by calling the 'boxValue' function with the 'convertToIReference' flag
    // set to true
    if (isReference) {
      final typeProjection = TypeProjection(type.typeIdentifier.typeArg!);
      final args = <String>['convertToIReference: true'];

      // If the nullable parameter is an enum, a double or an int, it's native
      // type (e.g. Double, Float, Int32, Uint32) must be passed in the `nativeType`
      // parameter so that the 'boxValue' function can use the appropriate
      // native type for the parameter
      if (typeProjection.isWinRTEnum ||
          ['double', 'int'].contains(typeProjection.methodParamType)) {
        args.add('nativeType: ${typeProjection.nativeType}');
      }

      return typeProjection.isWinRTEnum
          ? 'final ${name}ReferencePtr = boxValue(value.value, ${args.join(', ')});'
          : 'final ${name}ReferencePtr = boxValue(value, ${args.join(', ')});';
    }

    if (isString) return 'final ${name}Hstring = convertToHString($name);';
    if (isTimeSpan) return 'final ${name}Duration = $name.inMicroseconds * 10;';

    return '';
  }

  /// Code to be inserted prior to the function call to tear down allocated
  /// memory.
  String get postamble {
    if (isReference) return 'free(${name}ReferencePtr);';
    if (isString) return 'WindowsDeleteString(${name}Hstring);';

    return '';
  }

  /// The name of the converted variable that should be passed inside the method
  /// call (e.g. `today` -> `todayDateTime`)
  String get localIdentifier {
    if (isEnum) return '$identifier.value';
    if (isReference) return '${name}ReferencePtr.ref';

    if (isCOMObject) {
      if (type.isReferenceType || type.isSimpleArrayType) {
        return type.methodParamType == 'Pointer<COMObject>'
            ? identifier
            : '$identifier.ptr';
      }

      return type.methodParamType == 'Pointer<COMObject>'
          ? '$identifier.cast<Pointer<COMObject>>().value'
          : '$identifier.ptr.cast<Pointer<COMObject>>().value';
    }

    return preamble.isEmpty ? identifier : preamble.split(' ')[1];
  }
}
