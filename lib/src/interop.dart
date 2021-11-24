// Enumerations and helper classes used for interoperability.

/// The architectures supported by a specific Win32 method or struct.
class Architecture {
  // These values are taken from Windows.Win32.Interop.winmd.
  final _x86 = 0x01;
  final _x64 = 0x02;
  final _arm64 = 0x04;

  final int _value;

  /// Creates an [Architecture] object.
  const Architecture(this._value);

  /// Returns true if this object is supported on Intel 32-bit architectures
  bool get x86 => _value & _x86 == _x86;

  /// Returns true if this object is supported on Intel 64-bit architectures
  bool get x64 => _value & _x64 == _x64;

  /// Returns true if this object is supported on ARM 64-bit architectures
  bool get arm64 => _value & _arm64 == _arm64;
}
