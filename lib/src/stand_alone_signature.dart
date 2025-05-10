import 'common.dart';
import 'metadata_type.dart';

/// Represents a signature for a standalone method or local variable within
/// metadata.
sealed class StandAloneSignature {
  const StandAloneSignature();

  /// Creates a [LocalVarSig] with the given list of [locals], representing the
  /// types of local variables.
  const factory StandAloneSignature.localVar(List<MetadataType> locals) =
      LocalVarSig;

  /// Creates a [StandAloneMethodSig] with the given [flags], [returnType], and
  /// [types].
  const factory StandAloneSignature.method({
    StandAloneMethodFlags flags,
    MetadataType returnType,
    List<MetadataType> types,
  }) = StandAloneMethodSig;
}

/// Represents the signature for a method's local variables within metadata.
///
/// Each entry in [locals] defines the type of one local variable in declaration
/// order.
final class LocalVarSig implements StandAloneSignature {
  /// Creates a [LocalVarSig] with the given list of [locals],
  /// representing the types of local variables.
  const LocalVarSig(this.locals);

  /// The list of types for the local variables in declaration order.
  final List<MetadataType> locals;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalVarSig && listEqual(locals, other.locals);

  @override
  int get hashCode => locals.hashCode;

  @override
  String toString() => 'LocalVarSig($locals)';
}

/// Represents the signature of a standalone method within metadata.
final class StandAloneMethodSig implements StandAloneSignature {
  /// Creates a [StandAloneMethodSig] with the given [flags], [returnType], and
  /// [types].
  ///
  /// If [flags] is not specified, it defaults to
  /// [StandAloneMethodFlags.default$], indicating a method with default calling
  /// convention.
  ///
  /// If [returnType] is not specified, it defaults to [VoidType], representing
  /// a method that returns no value.
  ///
  /// If [types] is not specified, it defaults to an empty list, indicating that
  /// the method has no parameters.
  const StandAloneMethodSig({
    this.flags = StandAloneMethodFlags.default$,
    this.returnType = const VoidType(),
    this.types = const [],
  });

  /// The method's calling convention and characteristics.
  final StandAloneMethodFlags flags;

  /// The return type of the method.
  final MetadataType returnType;

  /// The list of parameter types for the method.
  ///
  /// Parameters are represented in the order they are declared.
  final List<MetadataType> types;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StandAloneMethodSig &&
          flags == other.flags &&
          returnType == other.returnType &&
          listEqual(types, other.types);

  @override
  int get hashCode => Object.hash(flags, returnType, Object.hashAll(types));

  @override
  String toString() =>
      'StandAloneMethodSig(returnType: $returnType, types: $types)';
}

/// Provides information about the calling convention and characteristics of
/// a standalone method.
extension type const StandAloneMethodFlags(int _) implements int {
  /// The method is associated with an instance (i.e., `this` is passed
  /// implicitly).
  static const hasThis = StandAloneMethodFlags(0x20);

  /// The method is explicitly defined to expect a `this` pointer.
  static const explicitThis = StandAloneMethodFlags(0x40);

  /// The default method calling convention (no flags set).
  static const default$ = StandAloneMethodFlags(0x00);

  /// The method supports a variable number of arguments.
  static const varArg = StandAloneMethodFlags(0x05);

  /// The method follows the C calling convention.
  static const c = StandAloneMethodFlags(0x1);

  /// The method follows the `stdcall` calling convention.
  static const stdcall = StandAloneMethodFlags(0x2);

  /// The method follows the `thiscall` calling convention.
  static const thiscall = StandAloneMethodFlags(0x3);

  /// The method follows the `fastcall` calling convention.
  static const fastcall = StandAloneMethodFlags(0x4);

  /// Whether this instance has all the bit fields specified in [other].
  bool has(StandAloneMethodFlags other) => this & other == other;

  StandAloneMethodFlags operator |(StandAloneMethodFlags other) =>
      StandAloneMethodFlags(_ | other._);

  StandAloneMethodFlags operator &(StandAloneMethodFlags other) =>
      StandAloneMethodFlags(_ & other._);
}
