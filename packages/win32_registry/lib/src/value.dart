import 'dart:typed_data';

import 'package:collection/collection.dart';

import 'type.dart';

/// Represents a value stored in the Windows Registry.
///
/// For the official list and semantics of registry value types, see:
/// https://learn.microsoft.com/windows/win32/sysinfo/registry-value-types
sealed class RegistryValue {
  /// Constructs a [RegistryValue] with the specified [type].
  const RegistryValue._(this.type);

  /// Creates a binary registry [value] (`REG_BINARY`).
  const factory RegistryValue.binary(Uint8List value) = BinaryValue;

  /// Creates a 32-bit unsigned integer registry [value] (`REG_DWORD`).
  const factory RegistryValue.dword(int value) = DwordValue;

  /// Creates a 64-bit unsigned integer registry [value] (`REG_QWORD`).
  const factory RegistryValue.qword(int value) = QwordValue;

  /// Creates a symbolic link registry [value] (`REG_LINK`).
  const factory RegistryValue.link(String value) = LinkValue;

  /// Creates a registry value with no defined type (`REG_NONE`).
  const factory RegistryValue.none() = NoneValue;

  /// Creates a UTF-16 string registry [value] (`REG_SZ`).
  const factory RegistryValue.string(String value) = StringValue;

  /// Creates a multi-string registry [value] (`REG_MULTI_SZ`).
  const factory RegistryValue.multiString(List<String> value) =
      MultiStringValue;

  /// Creates a string registry value containing unexpanded environment
  /// variables (`REG_EXPAND_SZ`).
  const factory RegistryValue.unexpandedString(String value) =
      UnexpandedStringValue;

  /// The registry value type.
  final RegistryValueType type;
}

/// Represents binary registry data (`REG_BINARY`).
final class BinaryValue extends RegistryValue {
  /// Creates a binary registry value from [value].
  const BinaryValue(this.value) : super._(.binary);

  /// The raw byte sequence.
  final Uint8List value;

  static const _bytesEq = ListEquality<int>();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BinaryValue && _bytesEq.equals(value, other.value);

  @override
  int get hashCode => Object.hash(type, Object.hashAll(value));

  @override
  String toString() => 'BinaryValue($value)';
}

/// Represents a 32-bit unsigned integer registry value (`REG_DWORD`).
final class DwordValue extends RegistryValue {
  /// Creates a DWORD registry value from [value].
  const DwordValue(this.value) : super._(.dword);

  /// The integer value.
  final int value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is DwordValue && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'DwordValue($value)';
}

/// Represents a 64-bit unsigned integer registry value (`REG_QWORD`).
final class QwordValue extends RegistryValue {
  /// Creates a QWORD registry value from [value].
  const QwordValue(this.value) : super._(.qword);

  /// The integer value.
  final int value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is QwordValue && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'QwordValue($value)';
}

/// Represents a registry symbolic link value (`REG_LINK`).
final class LinkValue extends RegistryValue {
  /// Creates a link registry value from [value].
  const LinkValue(this.value) : super._(.link);

  /// The symbolic link target path.
  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is LinkValue && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'LinkValue($value)';
}

/// Represents a registry value with no defined type (`REG_NONE`).
final class NoneValue extends RegistryValue {
  /// Creates an empty registry value.
  const NoneValue() : super._(.none);

  @override
  String toString() => 'NoneValue()';
}

/// Represents a null-terminated UTF-16 string registry value (`REG_SZ`).
final class StringValue extends RegistryValue {
  /// Creates a string registry value from [value].
  const StringValue(this.value) : super._(.string);

  /// The string contents.
  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is StringValue && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'StringValue($value)';
}

/// Represents a multi-string registry value (`REG_MULTI_SZ`).
///
/// Encoded as multiple null-terminated UTF-16 strings terminated by an
/// additional null character.
final class MultiStringValue extends RegistryValue {
  /// Creates a multi-string registry value from [value].
  const MultiStringValue(this.value) : super._(.multiString);

  /// The sequence of strings.
  final List<String> value;

  static const _stringsEq = ListEquality<String>();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MultiStringValue && _stringsEq.equals(value, other.value);

  @override
  int get hashCode => Object.hash(type, Object.hashAll(value));

  @override
  String toString() => 'MultiStringValue($value)';
}

/// Represents a string registry value containing unexpanded environment
/// variables (`REG_EXPAND_SZ`).
///
/// Expansion is not performed automatically unless explicitly requested when
/// retrieving the value.
final class UnexpandedStringValue extends RegistryValue {
  /// Creates an expandable string registry value from [value].
  const UnexpandedStringValue(this.value) : super._(.unexpandedString);

  /// The raw string containing environment variable references.
  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnexpandedStringValue && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'UnexpandedStringValue($value)';
}
