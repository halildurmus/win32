import 'metadata_type.dart';

/// Represents a typed constant value in the ECMA-335 metadata model.
///
/// Metadata values are used to store constant data such as integers,
/// floating-point numbers, strings, or enumeration members within .NET metadata
/// streams. Each value is associated with a [MetadataType] that describes its
/// underlying representation.
sealed class MetadataValue {
  const MetadataValue(this.type);

  /// The type of the metadata value.
  final MetadataType type;
}

/// Represents a boolean value.
final class BoolValue extends MetadataValue {
  // ignore: avoid_positional_boolean_parameters
  const BoolValue(this.value) : super(const BoolType());

  final bool value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is BoolValue && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'BoolValue($value)';
}

/// Represents a character value.
final class CharValue extends MetadataValue {
  const CharValue(this.value)
    : assert(
        value >= 0 && value <= 0xFFFF,
        'Char value must be between 0 and 0xFFFF',
      ),
      super(const CharType());

  final int value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is CharValue && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'CharValue($value)';
}

/// Represents a signed 1-byte integer value.
final class Int8Value extends MetadataValue {
  const Int8Value(this.value)
    : assert(
        value >= -0x80 && value <= 0x7F,
        'Int8 value must be between -0x80 and 0x7F',
      ),
      super(const Int8Type());

  final int value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Int8Value && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Int8Value($value)';
}

/// Represents an unsigned 1-byte integer value.
final class Uint8Value extends MetadataValue {
  const Uint8Value(this.value)
    : assert(
        value >= 0 && value <= 0xFF,
        'Uint8 value must be between 0 and 0xFF',
      ),
      super(const Uint8Type());

  final int value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Uint8Value && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Uint8Value($value)';
}

/// Represents a signed 2-byte integer value.
final class Int16Value extends MetadataValue {
  const Int16Value(this.value)
    : assert(
        value >= -0x8000 && value <= 0x7FFF,
        'Int16 value must be between -0x8000 and 0x7FFF',
      ),
      super(const Int16Type());

  final int value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Int16Value && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Int16Value($value)';
}

/// Represents an unsigned 2-byte integer value.
final class Uint16Value extends MetadataValue {
  const Uint16Value(this.value)
    : assert(
        value >= 0 && value <= 0xFFFF,
        'Uint16 value must be between 0 and 0xFFFF',
      ),
      super(const Uint16Type());

  final int value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Uint16Value && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Uint16Value($value)';
}

/// Represents a signed 4-byte integer value.
final class Int32Value extends MetadataValue {
  const Int32Value(this.value)
    : assert(
        value >= -0x80000000 && value <= 0x7FFFFFFF,
        'Int32 value must be between -0x80000000 and 0x7FFFFFFF',
      ),
      super(const Int32Type());

  final int value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Int32Value && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Int32Value($value)';
}

/// Represents an unsigned 4-byte integer value.
final class Uint32Value extends MetadataValue {
  const Uint32Value(this.value)
    : assert(
        value >= 0 && value <= 0xFFFFFFFF,
        'Uint32 value must be between 0 and 0xFFFFFFFF',
      ),
      super(const Uint32Type());

  final int value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Uint32Value && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Uint32Value($value)';
}

/// Represents a signed 8-byte integer value.
final class Int64Value extends MetadataValue {
  const Int64Value(this.value)
    : assert(
        value >= -0x8000000000000000 && value <= 0x7FFFFFFFFFFFFFFF,
        'Int64 value must be between -0x8000000000000000 and '
        '0x7FFFFFFFFFFFFFFF',
      ),
      super(const Int64Type());

  final int value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Int64Value && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Int64Value($value)';
}

/// Represents an unsigned 8-byte integer value.
final class Uint64Value extends MetadataValue {
  const Uint64Value(this.value) : super(const Uint64Type());

  final int value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Uint64Value && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Uint64Value($value)';
}

/// Represents a 4-byte floating point value.
final class Float32Value extends MetadataValue {
  const Float32Value(this.value)
    : assert(
        value >= -3.4028235e38 && value <= 3.4028235e38,
        'Float32 value must be between -3.4028235e38 and 3.4028235e38',
      ),
      super(const Float32Type());

  final double value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Float32Value && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Float32Value($value)';
}

/// Represents a platform-specific signed integer value.
final class Float64Value extends MetadataValue {
  const Float64Value(this.value)
    : assert(
        value >= -1.7976931348623157e308 && value <= 1.7976931348623157e308,
        'Float64 value must be between -1.7976931348623157e308 and '
        '1.7976931348623157e308',
      ),
      super(const Float64Type());

  final double value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Float64Value && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Float64Value($value)';
}

/// Represents a UTF-8 string value.
final class Utf8StringValue extends MetadataValue {
  const Utf8StringValue(this.value) : super(const StringType());

  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Utf8StringValue && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Utf8StringValue($value)';
}

/// Represents a UTF-16 string value.
final class Utf16StringValue extends MetadataValue {
  const Utf16StringValue(this.value) : super(const StringType());

  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Utf16StringValue && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Utf16StringValue($value)';
}

/// Represents an enum value in custom attributes.
final class AttributeEnumValue extends MetadataValue {
  const AttributeEnumValue(this.name, this.value)
    : super(const AttributeEnumType());

  /// The name of the enum.
  final String name;

  /// The value of the enum.
  final int value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AttributeEnumValue && name == other.name && value == other.value;

  @override
  int get hashCode => Object.hash(name, value);

  @override
  String toString() => 'AttributeEnumValue($name: $value)';
}
