import 'attributes.dart';
import 'common.dart';
import 'metadata_type.dart';

/// Represents the signature of a method within metadata.
final class MethodSignature {
  /// Creates a [MethodSignature] with the given [flags], [returnType], and
  /// [types].
  ///
  /// If [flags] is not specified, it defaults to [MethodCallFlags.hasThis],
  /// indicating that the method is an instance method by default.
  ///
  /// If [returnType] is not specified, it defaults to [VoidType], representing
  /// a method that returns no value.
  ///
  /// If [types] is not specified, it defaults to an empty list, indicating that
  /// the method has no parameters.
  const MethodSignature({
    this.flags = MethodCallFlags.hasThis,
    this.returnType = const VoidType(),
    this.types = const [],
  });

  /// The method's calling convention and characteristics.
  final MethodCallFlags flags;

  /// The return type of the method.
  final MetadataType returnType;

  /// The list of parameter types for the method.
  ///
  /// Parameters are represented in the order they are declared.
  final List<MetadataType> types;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MethodSignature &&
          flags == other.flags &&
          returnType == other.returnType &&
          listEqual(types, other.types);

  @override
  int get hashCode => Object.hash(flags, returnType, types);

  @override
  String toString() =>
      'MethodSignature(returnType: $returnType, types: $types)';
}
