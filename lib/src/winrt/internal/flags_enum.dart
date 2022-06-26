/// The base class that all WinRT Flags Enumerations extend.
class FlagsEnum {
  final String? _name;

  final int value;

  const FlagsEnum(this.value, {String? name}) : _name = name;

  @override
  String toString() =>
      _name != null ? '$runtimeType.$_name' : '$runtimeType(value: $value)';
}
