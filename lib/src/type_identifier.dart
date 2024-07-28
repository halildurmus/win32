import 'models/models.dart';
import 'type_def.dart';

/// Represents a type, as for example used in a parameter.
///
/// Return types use the same class, although they have no name.
class TypeIdentifier {
  const TypeIdentifier(
    this.baseType, {
    this.name = '',
    this.type,
    this.arrayDimensions,
    this.genericParameterSequence,
    this.typeArg,
  });

  /// The dimensions of the contained array, if there is one.
  final List<int>? arrayDimensions;

  /// Underlying base type represented by this class.
  final BaseType baseType;

  // The value identifying the generic parameter sequence, if there is one.
  //
  // For example, in class Foo<T, U>, a property that returns T will have a
  // returnType with a [TypeIdentifier] that has a genericParameterSequence of
  // 0.
  final int? genericParameterSequence;

  /// The name of the type (for example, `Windows.Storage.IStorageFile` or
  /// `LPWSTR`), if it is not a primitive type.
  ///
  /// For a type like [BaseType.int8Type], this is empty.
  final String name;

  /// The class or interface, if the type is (for example)
  /// [BaseType.classTypeModifier].
  final TypeDef? type;

  /// Any arguments (for example, the `Uint16` in a `Pointer<Uint16>`).
  ///
  /// These may be nested (for example, a `Pointer<Pointer<MYSTRUCT>>` is a
  /// `Pointer` with a [typeArg] of `Pointer`, which in turn has a [typeArg] of
  /// `MYSTRUCT`).
  final TypeIdentifier? typeArg;

  TypeIdentifier copyWith({
    List<int>? arrayDimensions,
    BaseType? baseType,
    int? genericParameterSequence,
    String? name,
    TypeDef? type,
    TypeIdentifier? typeArg,
  }) {
    return TypeIdentifier(
      baseType ?? this.baseType,
      name: name ?? this.name,
      type: type ?? this.type,
      arrayDimensions: arrayDimensions ?? this.arrayDimensions,
      genericParameterSequence:
          genericParameterSequence ?? this.genericParameterSequence,
      typeArg: typeArg ?? this.typeArg,
    );
  }

  @override
  String toString() => name.isNotEmpty
      ? name.split('.').last
      : '[${baseType.toString().split('.').last}]';
}
