import 'bindings.dart';
import 'common.dart';
import 'metadata_type.dart';

/// Represents the signature of a method within metadata.
base class MethodSignature {
  /// Creates a [MethodSignature] with the given [callingConvention],
  /// [returnType], and [types].
  ///
  /// If [callingConvention] is not specified, it defaults to
  /// [CallingConvention.DEFAULT], indicating a method with default calling
  /// convention.
  ///
  /// If [returnType] is not specified, it defaults to [VoidType], representing
  /// a method that returns no value.
  ///
  /// If [types] is not specified, it defaults to an empty list, indicating that
  /// the method has no parameters.
  const MethodSignature({
    this.callingConvention = CallingConvention.DEFAULT,
    this.returnType = const VoidType(),
    this.types = const [],
  });

  /// The method's calling convention.
  final CallingConvention callingConvention;

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
          callingConvention == other.callingConvention &&
          returnType == other.returnType &&
          listEqual(types, other.types);

  @override
  int get hashCode =>
      Object.hash(callingConvention, returnType, Object.hashAll(types));

  @override
  String toString() =>
      'MethodSignature('
      'callingConvention: 0x${callingConvention.toRadixString(16)}, '
      'returnType: $returnType, types: $types)';
}
