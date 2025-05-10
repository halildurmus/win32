import 'common.dart';
import 'metadata_type.dart';

/// Represents a signature for a field or method within metadata.
sealed class MemberRefSignature {
  const MemberRefSignature();

  /// Creates a [FieldSig] with the given [type].
  const factory MemberRefSignature.field(MetadataType type) = FieldSig;

  /// Creates a [MethodRefSig] with the given [flags], [returnType], and
  /// [types].
  const factory MemberRefSignature.method({
    MethodRefFlags flags,
    MetadataType returnType,
    List<MetadataType> types,
  }) = MethodRefSig;
}

/// Represents the definition of a field within metadata.
final class FieldSig extends MemberRefSignature {
  /// Creates a [FieldSig] with the given [type].
  const FieldSig(this.type);

  /// The type of the field.
  final MetadataType type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is FieldSig && type == other.type;

  @override
  int get hashCode => type.hashCode;

  @override
  String toString() => 'FieldSig($type)';
}

/// Represents the the call site signature for a method.
final class MethodRefSig extends MemberRefSignature {
  /// Creates a [MethodRefSig] with the given [flags], [returnType], and
  /// [types].
  ///
  /// If [flags] is not specified, it defaults to [MethodRefFlags.default$],
  /// indicating a method with default calling convention.
  ///
  /// If [returnType] is not specified, it defaults to [VoidType], representing
  /// a method that returns no value.
  ///
  /// If [types] is not specified, it defaults to an empty list, indicating that
  /// the method has no parameters.
  const MethodRefSig({
    this.flags = MethodRefFlags.default$,
    this.returnType = const VoidType(),
    this.types = const [],
  });

  /// The method's calling convention and characteristics.
  final MethodRefFlags flags;

  /// The return type of the method.
  final MetadataType returnType;

  /// The list of parameter types for the method.
  ///
  /// Parameters are represented in the order they are declared.
  final List<MetadataType> types;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MethodRefSig &&
          flags == other.flags &&
          returnType == other.returnType &&
          listEqual(types, other.types);

  @override
  int get hashCode => Object.hash(flags, returnType, Object.hashAll(types));

  @override
  String toString() => 'MethodRefSig(returnType: $returnType, types: $types)';
}

/// Provides information about the calling convention and characteristics of
/// a method.
extension type const MethodRefFlags(int _) implements int {
  /// The method is associated with an instance (i.e., `this` is passed
  /// implicitly).
  static const hasThis = MethodRefFlags(0x20);

  /// The method is explicitly defined to expect a `this` pointer.
  static const explicitThis = MethodRefFlags(0x40);

  /// The default method calling convention (no flags set).
  static const default$ = MethodRefFlags(0x00);

  /// The method supports a variable number of arguments.
  static const varArg = MethodRefFlags(0x05);

  /// Whether this instance has all the bit fields specified in [other].
  bool has(MethodRefFlags other) => this & other == other;

  MethodRefFlags operator |(MethodRefFlags other) =>
      MethodRefFlags(_ | other._);

  MethodRefFlags operator &(MethodRefFlags other) =>
      MethodRefFlags(_ & other._);
}
