import 'metadata_value.dart';

/// Represents a custom attribute parameter in metadata.
///
/// A parameter can either be positional (unnamed) or named.
sealed class CustomAttributeParameter {
  /// Creates a [CustomAttributeParameter] with the given [value].
  const CustomAttributeParameter(this.value);

  /// Creates a positional (unnamed) custom attribute parameter.
  const factory CustomAttributeParameter.positional(MetadataValue value) =
      PositionalCustomAttributeParameter;

  /// Creates a named custom attribute parameter.
  const factory CustomAttributeParameter.named({
    required String name,
    required MetadataValue value,
  }) = NamedCustomAttributeParameter;

  /// The value of the parameter.
  final MetadataValue value;

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

/// A positional custom attribute parameter.
final class PositionalCustomAttributeParameter
    extends CustomAttributeParameter {
  const PositionalCustomAttributeParameter(super.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PositionalCustomAttributeParameter && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PositionalCustomAttributeParameter(value: $value)';
}

/// A named custom attribute parameter.
final class NamedCustomAttributeParameter extends CustomAttributeParameter {
  const NamedCustomAttributeParameter({
    required this.name,
    required MetadataValue value,
  }) : super(value);

  /// The name of the parameter.
  final String name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NamedCustomAttributeParameter &&
          name == other.name &&
          value == other.value;

  @override
  int get hashCode => Object.hash(name, value);

  @override
  String toString() =>
      'NamedCustomAttributeParameter(name: $name, value: $value)';
}
