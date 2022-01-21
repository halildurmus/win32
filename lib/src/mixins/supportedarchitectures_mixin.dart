import '../utils/exception.dart';
import 'customattributes_mixin.dart';

/// The architectures supported by a specific Win32 method or struct.
class Architecture {
  // These values are taken from Windows.Win32.Interop.winmd.
  static const _x86 = 0x01;
  static const _x64 = 0x02;
  static const _arm64 = 0x04;

  final int _value;

  /// Creates an [Architecture] object.
  const Architecture(this._value);

  factory Architecture.all() => const Architecture(_arm64 | _x64 | _x86);

  /// Returns true if this object is supported on Intel 32-bit architectures
  bool get x86 => _value & _x86 == _x86;

  /// Returns true if this object is supported on Intel 64-bit architectures
  bool get x64 => _value & _x64 == _x64;

  /// Returns true if this object is supported on ARM 64-bit architectures
  bool get arm64 => _value & _arm64 == _arm64;
}

/// Represents an object that may have an attribute for supported platform
/// architectures.
mixin SupportedArchitecturesMixin on CustomAttributesMixin {
  /// Get platform architectures on which this type is supported.
  ///
  /// This property currently only supports Win32 metadata.
  Architecture get supportedArchitectures =>
      _supportedArchitectures ??= _calculateSupportedArchitectures();

  Architecture? _supportedArchitectures;
  Architecture _calculateSupportedArchitectures() {
    // By default, this attribute is missing and it is assumed that types
    // support all valid platform architectures.
    if (customAttributes
        .where((ca) =>
            ca.name == 'Windows.Win32.Interop.SupportedArchitectureAttribute')
        .isEmpty) {
      return Architecture.all();
    }

    final supportedArchRaw = customAttributeAsBytes(
        'Windows.Win32.Interop.SupportedArchitectureAttribute');

    // [0x01, 00x00] prolog, then next digit is arch attribute.
    if (supportedArchRaw.length < 3) {
      throw WinmdException('SupportedArchitecture attribute is malformed.');
    }
    return Architecture(supportedArchRaw[2]);
  }
}
