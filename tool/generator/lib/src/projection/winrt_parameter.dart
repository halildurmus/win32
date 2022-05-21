import 'parameter.dart';

/// A WinRT parameter.
///
/// Parameters are a tuple of a type and a name.
class WinRTParameterProjection extends ParameterProjection {
  const WinRTParameterProjection(super.name, super.type);

  String get preamble {
    if (type.typeIdentifier.name == 'Windows.Foundation.DateTime') {
      return 'final ${name}DateTime = $name.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;';
    }

    if (type.typeIdentifier.name == 'Windows.Foundation.TimeSpan') {
      return 'final ${name}Duration = $name.inMicroseconds * 10';
    }

    return '';
  }

  String get postamble {
    return '';
  }

  String get localIdentifier {
    if (type.dartType == 'Pointer<COMObject>' && !type.isReferenceType) {
      return '$identifier.cast<Pointer<COMObject>>().value';
    }

    return preamble.isEmpty ? identifier : preamble.split(' ')[1];
  }
}
