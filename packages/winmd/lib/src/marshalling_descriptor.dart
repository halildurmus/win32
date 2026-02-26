import 'bindings.dart';

/// Describes how a parameter or field is marshaled between managed and
/// unmanaged code, as specified in ECMA-335 `§II.23.4`.
///
/// Use [MarshallingDescriptor.array] for composite array types, or
/// [MarshallingDescriptor.simple] for scalar/native types.
sealed class MarshallingDescriptor {
  /// Creates a new marshaling descriptor with the given [nativeType].
  const MarshallingDescriptor(this.nativeType);

  /// Creates a marshalling descriptor for a native array ([NATIVE_TYPE_ARRAY]).
  ///
  /// The [elementType] indicates the native type of each element.
  ///
  /// The [sizeParameterIndex] is a 1-based index into the method's parameter
  /// list, specifying the parameter that provides the runtime array size.
  ///
  /// If [sizeParameterIndex] is `0`, [numElements] must be non-null and `≥ 1`,
  /// representing a fixed-length array encoded directly in metadata.
  const factory MarshallingDescriptor.array({
    NativeType elementType,
    int? sizeParameterIndex,
    int? numElements,
  }) = ArrayMarshallingDescriptor;

  /// Creates a marshalling descriptor for a scalar or non-array native type.
  ///
  /// The [nativeType] must not be [NATIVE_TYPE_ARRAY] or [NATIVE_TYPE_MAX].
  const factory MarshallingDescriptor.simple(NativeType nativeType) =
      SimpleMarshallingDescriptor;

  /// The top-level native type encoding defined for this marshaling rule.
  ///
  /// For example, this might be [NATIVE_TYPE_I4], [NATIVE_TYPE_LPWSTR], or
  /// [NATIVE_TYPE_ARRAY] for arrays.
  final NativeType nativeType;
}

/// A marshalling descriptor for a field or parameter marshaled as a native
/// array.
final class ArrayMarshallingDescriptor extends MarshallingDescriptor {
  /// Creates a marshalling descriptor for a native array.
  ///
  /// The [elementType] specifies the type of each element and defaults to
  /// [NATIVE_TYPE_MAX] (unspecified) if not provided.
  ///
  /// - If [sizeParameterIndex] is provided and non-zero, it must be `≥ 1` and
  ///   refers to a 1-based parameter index supplying the runtime array size.
  /// - If [sizeParameterIndex] is `0`, [numElements] must be non-null and
  ///   `≥ 1`, indicating a fixed-length array.
  const ArrayMarshallingDescriptor({
    this.elementType = NATIVE_TYPE_MAX,
    this.sizeParameterIndex,
    this.numElements,
  }) : assert(
         sizeParameterIndex == null || sizeParameterIndex >= 0,
         'sizeParameterIndex must be >= 0.',
       ),
       assert(
         numElements == null || numElements >= 1,
         'numElements must be >= 1.',
       ),
       assert(
         sizeParameterIndex != 0 || (numElements != null && numElements >= 1),
         'numElements must be >= 1 when sizeParameterIndex is 0.',
       ),
       super(NATIVE_TYPE_ARRAY);

  /// The type of each element in the array.
  ///
  /// Defaults to [NATIVE_TYPE_MAX] when unspecified.
  final NativeType elementType;

  /// The 1-based index of a parameter that provides the runtime array size.
  ///
  /// If `0`, the array is of fixed length and [numElements] must be used.
  final int? sizeParameterIndex;

  /// The array’s fixed length if [sizeParameterIndex] is `0`.
  final int? numElements;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArrayMarshallingDescriptor &&
          elementType == other.elementType &&
          sizeParameterIndex == other.sizeParameterIndex &&
          numElements == other.numElements;

  @override
  int get hashCode =>
      Object.hash(nativeType, elementType, sizeParameterIndex, numElements);

  @override
  String toString() {
    final sizeParam = sizeParameterIndex == null
        ? ''
        : ', sizeParameterIndex: $sizeParameterIndex';
    final numElem = numElements == null ? '' : ', numElements: $numElements';
    return 'ArrayMarshallingDescriptor(elementType: $elementType'
        '$sizeParam$numElem)';
  }
}

/// A descriptor for a field or parameter marshaled as a scalar native type.
final class SimpleMarshallingDescriptor extends MarshallingDescriptor {
  /// Creates a marshalling descriptor for a scalar native type.
  ///
  /// The [nativeType] must not be [NATIVE_TYPE_ARRAY] or [NATIVE_TYPE_MAX].
  const SimpleMarshallingDescriptor(super.nativeType)
    : assert(
        nativeType != NATIVE_TYPE_ARRAY,
        'Use `MarshallingDescriptor.array` for array marshalling.',
      ),
      assert(nativeType != NATIVE_TYPE_MAX, 'Invalid native type.');

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SimpleMarshallingDescriptor && nativeType == other.nativeType;

  @override
  int get hashCode => nativeType.hashCode;

  @override
  String toString() => 'SimpleMarshallingDescriptor($nativeType)';
}
