// Enumerations and helper classes used for interoperability.
//
// These are taken from Windows.Win32.Interop.winmd.
class Architecture {
  final _x86 = 0x01;
  final _x64 = 0x02;
  final _arm64 = 0x04;

  final int _value;

  const Architecture(this._value);

  bool get x86 => _value & _x86 == _x86;
  bool get x64 => _value & _x64 == _x64;
  bool get arm64 => _value & _arm64 == _arm64;
}
