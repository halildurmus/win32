import 'common.dart';
import 'metadata_type.dart';

/// Represents the signature of a property (essentially, the signature of its
/// getter method) within metadata.
final class PropertySig {
  /// Creates a [PropertySig] with the given [flags], [returnType], and [types].
  ///
  /// If [flags] is not specified, it defaults to [PropertyFlags.default$],
  /// indicating a getter method with default calling convention.
  ///
  /// If [types] is not specified, it defaults to an empty list, indicating that
  /// the getter method has no parameters.
  const PropertySig({
    required this.returnType,
    this.flags = PropertyFlags.default$,
    this.types = const [],
  });

  /// The getter method's calling convention and characteristics.
  final PropertyFlags flags;

  /// The return type of the getter method.
  final MetadataType returnType;

  /// The list of parameter types for the getter method.
  ///
  /// Parameters are represented in the order they are declared.
  final List<MetadataType> types;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PropertySig &&
          flags == other.flags &&
          returnType == other.returnType &&
          listEqual(types, other.types);

  @override
  int get hashCode => Object.hash(flags, returnType, Object.hashAll(types));

  @override
  String toString() => 'PropertySig(returnType: $returnType, types: $types)';
}

/// Provides information about the calling convention and characteristics of
/// a getter method.
extension type const PropertyFlags(int _) implements int {
  /// The getter method is associated with an instance (i.e., `this` is passed
  /// implicitly).
  static const hasThis = PropertyFlags(0x20);

  /// The default getter method calling convention (no flags set).
  static const default$ = PropertyFlags(0x00);

  /// Whether this instance has all the bit fields specified in [other].
  bool has(PropertyFlags other) => this & other == other;

  PropertyFlags operator |(PropertyFlags other) => PropertyFlags(_ | other._);

  PropertyFlags operator &(PropertyFlags other) => PropertyFlags(_ & other._);
}
