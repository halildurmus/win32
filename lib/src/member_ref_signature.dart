import 'bindings.dart';
import 'common.dart';
import 'metadata_type.dart';
import 'method_signature.dart';

/// Represents a signature for a field or method within metadata.
sealed class MemberRefSignature {
  const MemberRefSignature();

  /// Creates a [FieldSig] with the given [type].
  const factory MemberRefSignature.field(MetadataType type) = FieldSig;

  /// Creates a [MethodRefSig] with the given [callingConvention], [returnType],
  /// and [types].
  const factory MemberRefSignature.method({
    CallingConvention callingConvention,
    MetadataType returnType,
    List<MetadataType> types,
  }) = MethodRefSig;
}

/// Represents the definition of a field within metadata.
final class FieldSig implements MemberRefSignature {
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
final class MethodRefSig extends MethodSignature implements MemberRefSignature {
  /// Creates a [MethodRefSig] with the given [callingConvention], [returnType],
  /// and [types].
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
  const MethodRefSig({
    super.callingConvention = CallingConvention.DEFAULT,
    super.returnType = const VoidType(),
    super.types = const [],
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MethodRefSig &&
          callingConvention == other.callingConvention &&
          returnType == other.returnType &&
          listEqual(types, other.types);

  @override
  int get hashCode =>
      Object.hash(callingConvention, returnType, Object.hashAll(types));

  @override
  String toString() =>
      'MethodRefSig('
      'callingConvention: 0x${callingConvention.toRadixString(16)}, '
      'returnType: $returnType, types: $types)';
}
