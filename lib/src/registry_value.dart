import 'dart:typed_data';

import 'registry_value_type.dart';

/// Represents a data value stored in the Windows Registry.
///
/// This class serves as a base for various types of registry values, including
/// binary data, integers, links, strings, and arrays of strings.
///
/// Each instance of [RegistryValue] contains a [name] that identifies the
/// registry value and a [type] that indicates its data type.
sealed class RegistryValue {
  /// Constructs a [RegistryValue] with the specified [name] and [type].
  const RegistryValue._(this.name, this.type);

  /// Constructs a [RegistryValue] in binary data format with the specified
  /// [name] and [value].
  const factory RegistryValue.binary(String name, Uint8List value) =
      BinaryValue;

  /// Constructs a [RegistryValue] in 32-bit integer format with the specified
  /// [name] and [value].
  const factory RegistryValue.int32(String name, int value) = Int32Value;

  /// Constructs a [RegistryValue] in 64-bit integer format with the specified
  /// [name] and [value].
  const factory RegistryValue.int64(String name, int value) = Int64Value;

  /// Constructs a [RegistryValue] in symbolic link format with the specified
  /// [name] and [value].
  const factory RegistryValue.link(String name, String value) = LinkValue;

  /// Constructs a [RegistryValue] in null format with the specified [name].
  const factory RegistryValue.none(String name) = NoneValue;

  /// Constructs a [RegistryValue] in string format with the specified [name]
  /// and [value].
  const factory RegistryValue.string(String name, String value) = StringValue;

  /// Constructs a [RegistryValue] in array of string format with the specified
  /// [name] and [value].
  const factory RegistryValue.stringArray(String name, List<String> value) =
      StringArrayValue;

  /// Constructs a [RegistryValue] in unexpanded string format with the
  /// specified [name] and [value].
  const factory RegistryValue.unexpandedString(String name, String value) =
      UnexpandedStringValue;

  /// The name of the registry value.
  final String name;

  /// The type of the registry value.
  final RegistryValueType type;
}

/// Represents a binary data value in the Windows Registry, corresponding to the
/// `REG_BINARY` type.
final class BinaryValue extends RegistryValue {
  /// Constructs a [BinaryValue] with the specified [name] and [value].
  const BinaryValue(String name, this.value)
    : super._(name, RegistryValueType.binary);

  /// The binary data value represented as a [Uint8List].
  final Uint8List value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! BinaryValue) return false;

    // Compare the list contents for equality.
    return value.length == other.value.length &&
        value.every((file) => other.value.contains(file));
  }

  @override
  int get hashCode => Object.hash(name, Object.hashAll(value));

  @override
  String toString() => 'BinaryValue($name, $value)';
}

/// Represents a 32-bit integer value in the Windows Registry, corresponding to
/// the `REG_DWORD` type.
final class Int32Value extends RegistryValue {
  /// Constructs a [Int32Value] with the specified [name] and [value].
  const Int32Value(String name, this.value)
    : super._(name, RegistryValueType.int32);

  /// The 32-bit integer value.
  final int value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Int32Value && name == other.name && value == other.value;

  @override
  int get hashCode => Object.hash(name, value);

  @override
  String toString() => 'Int32Value($name, $value)';
}

/// Represents a 64-bit integer value in the Windows Registry, corresponding to
/// the `REG_QWORD` type.
final class Int64Value extends RegistryValue {
  /// Constructs a [Int64Value] with the specified [name] and [value].
  const Int64Value(String name, this.value)
    : super._(name, RegistryValueType.int64);

  /// The 64-bit integer value.
  final int value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Int64Value && name == other.name && value == other.value;

  @override
  int get hashCode => Object.hash(name, value);

  @override
  String toString() => 'Int64Value($name, $value)';
}

/// Represents a symbolic link value in the Windows Registry, corresponding to
/// the `REG_LINK` type.
final class LinkValue extends RegistryValue {
  /// Constructs a [LinkValue] with the specified [name] and [value].
  const LinkValue(String name, this.value)
    : super._(name, RegistryValueType.link);

  /// The symbolic link value as a string.
  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LinkValue && name == other.name && value == other.value;

  @override
  int get hashCode => Object.hash(name, value);

  @override
  String toString() => 'LinkValue($name, $value)';
}

/// Represents a null value in the Windows Registry, corresponding to the
/// `REG_NONE` type.
final class NoneValue extends RegistryValue {
  /// Constructs a [NoneValue] with the specified [name].
  const NoneValue(String name) : super._(name, RegistryValueType.none);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is NoneValue && name == other.name;

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() => 'NoneValue($name)';
}

/// Represents a string value in the Windows Registry, corresponding to the
/// `REG_SZ` type.
final class StringValue extends RegistryValue {
  /// Constructs a [StringValue] with the specified [name] and [value].
  const StringValue(String name, this.value)
    : super._(name, RegistryValueType.string);

  /// The string value.
  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StringValue && name == other.name && value == other.value;

  @override
  int get hashCode => Object.hash(name, value);

  @override
  String toString() => 'StringValue($name, $value)';
}

/// Represents an array of string values in the Windows Registry, corresponding
/// to the `REG_MULTI_SZ` type.
final class StringArrayValue extends RegistryValue {
  /// Constructs a [StringArrayValue] with the specified [name] and [value].
  const StringArrayValue(String name, this.value)
    : super._(name, RegistryValueType.stringArray);

  /// The list of string values.
  final List<String> value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! StringArrayValue) return false;

    // Compare the list contents for equality.
    return value.length == other.value.length &&
        value.every((file) => other.value.contains(file));
  }

  @override
  int get hashCode => Object.hash(name, Object.hashAll(value));

  @override
  String toString() => 'StringArrayValue($name, $value)';
}

/// Represents an unexpanded string value in the Windows Registry, corresponding
/// to the `REG_EXPAND_SZ` type.
final class UnexpandedStringValue extends RegistryValue {
  /// Constructs a [UnexpandedStringValue] with the specified [name] and
  /// [value].
  const UnexpandedStringValue(String name, this.value)
    : super._(name, RegistryValueType.unexpandedString);

  /// The unexpanded string value.
  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnexpandedStringValue &&
          name == other.name &&
          value == other.value;

  @override
  int get hashCode => Object.hash(name, value);

  @override
  String toString() => 'UnexpandedStringValue($name, $value)';
}
