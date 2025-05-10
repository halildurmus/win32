import 'common.dart';
import 'metadata_type.dart';

/// Represents the signature of a method or global function within metadata.
final class MethodDefSig {
  /// Creates a [MethodDefSig] with the given [flags], [returnType], and
  /// [types].
  ///
  /// If [flags] is not specified, it defaults to [MethodDefFlags.hasThis],
  /// indicating that the method is an instance method by default.
  ///
  /// If [returnType] is not specified, it defaults to [VoidType], representing
  /// a method that returns no value.
  ///
  /// If [types] is not specified, it defaults to an empty list, indicating that
  /// the method has no parameters.
  const MethodDefSig({
    this.flags = MethodDefFlags.hasThis,
    this.returnType = const VoidType(),
    this.types = const [],
  });

  /// The method's calling convention and characteristics.
  final MethodDefFlags flags;

  /// The return type of the method.
  final MetadataType returnType;

  /// The list of parameter types for the method.
  ///
  /// Parameters are represented in the order they are declared.
  final List<MetadataType> types;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MethodDefSig &&
          flags == other.flags &&
          returnType == other.returnType &&
          listEqual(types, other.types);

  @override
  int get hashCode => Object.hash(flags, returnType, Object.hashAll(types));

  @override
  String toString() => 'MethodDefSig(returnType: $returnType, types: $types)';
}

/// Provides information about the calling convention and characteristics of
/// a method.
extension type const MethodDefFlags(int _) implements int {
  /// The method is associated with an instance (i.e., `this` is passed
  /// implicitly).
  static const hasThis = MethodDefFlags(0x20);

  /// The method is explicitly defined to expect a `this` pointer.
  static const explicitThis = MethodDefFlags(0x40);

  /// The default method calling convention (no flags set).
  static const default$ = MethodDefFlags(0x00);

  /// The method supports a variable number of arguments.
  static const varArg = MethodDefFlags(0x05);

  /// The method has one or more generic parameters.
  static const generic = MethodDefFlags(0x10);

  /// Whether this instance has all the bit fields specified in [other].
  bool has(MethodDefFlags other) => this & other == other;

  MethodDefFlags operator |(MethodDefFlags other) =>
      MethodDefFlags(_ | other._);

  MethodDefFlags operator &(MethodDefFlags other) =>
      MethodDefFlags(_ & other._);
}
