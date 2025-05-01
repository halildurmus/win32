import 'metadata_value.dart';

/// Represents a single argument in a custom attribute instantiation.
///
/// Custom attributes in metadata can have two kinds of arguments:
/// - *Fixed arguments* (also known as positional arguments), which correspond
///   to constructor parameters.
/// - *Named arguments*, which correspond to writable fields or properties.
sealed class AttributeArg {
  /// Creates a [AttributeArg] with the given [value].
  const AttributeArg(this.value);

  /// Creates a fixed (positional) attribute argument.
  const factory AttributeArg.fixed(MetadataValue value) = FixedArg;

  /// Creates a named attribute argument.
  ///
  /// The [name] corresponds to the target property or field, and [value] is
  /// the argument assigned to it.
  const factory AttributeArg.named({
    required String name,
    required MetadataValue value,
  }) = NamedArg;

  /// The value of the argument.
  final MetadataValue value;
}

/// Represents a fixed (positional) argument passed to a custom attribute
/// constructor.
final class FixedArg extends AttributeArg {
  /// Creates a fixed argument with the given [value].
  const FixedArg(super.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is FixedArg && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'FixedArg(value: $value)';
}

/// Represents a named argument in a custom attribute, targeting a field or
/// property.
final class NamedArg extends AttributeArg {
  /// Creates a named argument with the given [name] and [value].
  ///
  /// The [name] must match a writable property or field defined on the
  /// attribute type.
  const NamedArg({required this.name, required MetadataValue value})
    : super(value);

  /// The name of the target property or field.
  final String name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NamedArg && name == other.name && value == other.value;

  @override
  int get hashCode => Object.hash(name, value);

  @override
  String toString() => 'NamedArg(name: $name, value: $value)';
}

/// Extension methods to simplify extraction of primitive values from
/// [AttributeArg]s.
extension AttributeArgExtension on AttributeArg {
  /// Returns the value as a [bool] if possible, otherwise `null`.
  bool? get valueAsBool => switch (value) {
    BoolValue(:final value) => value,
    _ => null,
  };

  /// Returns the value as a [double] if possible, otherwise `null`.
  double? get valueAsDouble => switch (value) {
    Float32Value(:final value) || Float64Value(:final value) => value,
    _ => null,
  };

  /// Returns the value as an [int] if possible, otherwise `null`.
  int? get valueAsInt => switch (value) {
    Int8Value(:final value) ||
    Uint8Value(:final value) ||
    Int16Value(:final value) ||
    Uint16Value(:final value) ||
    Int32Value(:final value) ||
    Uint32Value(:final value) ||
    Int64Value(:final value) ||
    Uint64Value(:final value) => value,
    _ => null,
  };

  /// Returns the value as a [String] if possible, otherwise `null`.
  String? get valueAsString => switch (value) {
    Utf8StringValue(:final value) || Utf16StringValue(:final value) => value,
    _ => null,
  };
}
