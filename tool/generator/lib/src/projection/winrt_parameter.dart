import 'parameter.dart';

/// A WinRT parameter.
///
/// Parameters are a tuple of a type and a name. WinRT parameters are
/// specialized in that they have logic to translate primitive WinRT types to
/// their Dart equivalents (e.g. a WinRT `TimeSpan` can be represented by a Dart
/// [Duration]).
class WinRTParameterProjection extends ParameterProjection {
  const WinRTParameterProjection(super.name, super.type);

  /// Code to be inserted prior to the function call to set up the variable
  /// conversion.
  ///
  /// Any preamble that allocates memory should have a matching postamble that
  /// frees the memory.
  String get preamble {
    if (type.typeIdentifier.name == 'Windows.Foundation.DateTime') {
      return 'final ${name}DateTime = '
          '$name.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;';
    }

    if (type.typeIdentifier.name == 'Windows.Foundation.TimeSpan') {
      return 'final ${name}Duration = $name.inMicroseconds * 10;';
    }

    if (type.isString) {
      return 'final ${name}Hstring = convertToHString($name);';
    }

    return '';
  }

  /// Code to be inserted prior to the function call to tear down allocated
  /// memory.
  String get postamble {
    if (type.isString) {
      return 'WindowsDeleteString(${name}Hstring);';
    }

    return '';
  }

  /// The name of the converted variable that should be passed inside the method
  /// call (e.g. `today` -> `todayDateTime`)
  String get localIdentifier {
    if (type.isWinRTEnum) return '$identifier.value';

    if (type.dartType == 'Pointer<COMObject>' &&
        !type.isReferenceType &&
        !type.isSimpleArrayType) {
      return '$identifier.cast<Pointer<COMObject>>().value';
    }

    return preamble.isEmpty ? identifier : preamble.split(' ')[1];
  }
}
