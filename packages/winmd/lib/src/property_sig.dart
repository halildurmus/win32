import 'bindings.dart';
import 'common.dart';
import 'method_signature.dart';

/// Represents the signature of a property (essentially, the signature of its
/// getter method) within metadata.
final class PropertySig extends MethodSignature {
  /// Creates a [PropertySig] with the given [callingConvention], [returnType],
  /// and [types].
  ///
  /// If [callingConvention] is not specified, it defaults to
  /// [CallingConvention.DEFAULT], indicating a getter method with default
  /// calling convention.
  ///
  /// If [types] is not specified, it defaults to an empty list, indicating that
  /// the getter method has no parameters.
  const PropertySig({
    required super.returnType,
    super.callingConvention = .DEFAULT,
    super.types = const [],
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PropertySig &&
          callingConvention == other.callingConvention &&
          returnType == other.returnType &&
          listEqual(types, other.types);

  @override
  int get hashCode =>
      Object.hash(callingConvention, returnType, Object.hashAll(types));

  @override
  String toString() =>
      'PropertySig('
      'callingConvention: 0x${callingConvention.toRadixString(16)}, '
      'returnType: $returnType, types: $types)';
}
