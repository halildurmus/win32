import 'common.dart';
import 'metadata_type.dart';

/// Represents the signature of a property within metadata.
final class PropertySignature {
  /// Creates a [PropertySignature] with the given [returnType] and [types].
  ///
  /// If [returnType] is not specified, it defaults to [VoidType], representing
  /// a property that returns no value.
  ///
  /// If [types] is not specified, it defaults to an empty list, indicating that
  /// the property has no parameters.
  const PropertySignature({
    this.returnType = const VoidType(),
    this.types = const [],
  });

  /// The return type of the property.
  final MetadataType returnType;

  /// The list of parameter types for the property.
  ///
  /// Parameters are represented in the order they are declared.
  final List<MetadataType> types;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PropertySignature &&
          returnType == other.returnType &&
          listsEqual(types, other.types);

  @override
  int get hashCode => Object.hash(returnType, types);

  @override
  String toString() =>
      'MethodSignature(returnType: $returnType, types: $types)';
}
