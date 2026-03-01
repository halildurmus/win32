import 'bindings.dart';
import 'common.dart';
import 'metadata_type.dart';
import 'method_signature.dart';

/// Represents a signature for a standalone method or local variable within
/// metadata.
sealed class StandAloneSignature {
  const StandAloneSignature();

  /// Creates a [LocalVarSig] with the given list of [locals], representing the
  /// types of local variables.
  const factory StandAloneSignature.localVar(List<MetadataType> locals) =
      LocalVarSig;

  /// Creates a [StandAloneMethodSig] with the given [callingConvention],
  /// [returnType], and [types].
  const factory StandAloneSignature.method({
    CallingConvention callingConvention,
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
final class StandAloneMethodSig extends MethodSignature
    implements StandAloneSignature {
  /// Creates a [StandAloneMethodSig] with the given [callingConvention],
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
  const StandAloneMethodSig({
    super.callingConvention = .DEFAULT,
    super.returnType = const VoidType(),
    super.types = const [],
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StandAloneMethodSig &&
          callingConvention == other.callingConvention &&
          returnType == other.returnType &&
          listEqual(types, other.types);

  @override
  int get hashCode =>
      Object.hash(callingConvention, returnType, Object.hashAll(types));

  @override
  String toString() =>
      'StandAloneMethodSig('
      'callingConvention: 0x${callingConvention.toRadixString(16)}, '
      'returnType: $returnType, types: $types)';
}
