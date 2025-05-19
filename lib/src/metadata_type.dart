import 'bindings.dart';
import 'type_name.dart';

/// Represents a data type of in the ECMA-335 metadata model.
///
/// A [MetadataType] describes how a constant value is interpreted in metadata,
/// including primitive types (e.g., integers, floating-point numbers),
/// string types, and enumerated types.
sealed class MetadataType {
  const MetadataType();

  /// The [ElementType] code corresponding to this metadata type.
  ///
  /// Throws an [UnsupportedError], if the type does not have a direct
  /// encoding (e.g., const reference).
  ElementType get code =>
      throw UnsupportedError('Unsupported type: $runtimeType');

  @override
  // ignore: no_runtimetype_tostring
  String toString() => runtimeType.toString();
}

/// Represents a void type.
final class VoidType extends MetadataType {
  const VoidType();

  @override
  ElementType get code => ELEMENT_TYPE_VOID;
}

/// Represents a boolean type.
final class BoolType extends MetadataType {
  const BoolType();

  @override
  ElementType get code => ELEMENT_TYPE_BOOLEAN;
}

/// Represents a character type.
final class CharType extends MetadataType {
  const CharType();

  @override
  ElementType get code => ELEMENT_TYPE_CHAR;
}

/// Represents a signed 1-byte integer type.
final class Int8Type extends MetadataType {
  const Int8Type();

  @override
  ElementType get code => ELEMENT_TYPE_I1;
}

/// Represents an unsigned 1-byte integer type.
final class Uint8Type extends MetadataType {
  const Uint8Type();

  @override
  ElementType get code => ELEMENT_TYPE_U1;
}

/// Represents a signed 2-byte integer type.
final class Int16Type extends MetadataType {
  const Int16Type();

  @override
  ElementType get code => ELEMENT_TYPE_I2;
}

/// Represents an unsigned 2-byte integer type.
final class Uint16Type extends MetadataType {
  const Uint16Type();

  @override
  ElementType get code => ELEMENT_TYPE_U2;
}

/// Represents a signed 4-byte integer type.
final class Int32Type extends MetadataType {
  const Int32Type();

  @override
  ElementType get code => ELEMENT_TYPE_I4;
}

/// Represents an unsigned 4-byte integer type.
final class Uint32Type extends MetadataType {
  const Uint32Type();

  @override
  ElementType get code => ELEMENT_TYPE_U4;
}

/// Represents a signed 8-byte integer type.
final class Int64Type extends MetadataType {
  const Int64Type();

  @override
  ElementType get code => ELEMENT_TYPE_I8;
}

/// Represents an unsigned 8-byte integer type.
final class Uint64Type extends MetadataType {
  const Uint64Type();

  @override
  ElementType get code => ELEMENT_TYPE_U8;
}

/// Represents a 4-byte floating point type.
final class Float32Type extends MetadataType {
  const Float32Type();

  @override
  ElementType get code => ELEMENT_TYPE_R4;
}

/// Represents an 8-byte floating point type.
final class Float64Type extends MetadataType {
  const Float64Type();

  @override
  ElementType get code => ELEMENT_TYPE_R8;
}

/// Represents a platform-specific signed integer type.
final class IntPtrType extends MetadataType {
  const IntPtrType();

  @override
  ElementType get code => ELEMENT_TYPE_I;
}

/// Represents a platform-specific unsigned integer type.
final class UintPtrType extends MetadataType {
  const UintPtrType();

  @override
  ElementType get code => ELEMENT_TYPE_U;
}

/// Represents a user-defined named type within metadata, such as a class,
/// struct, or enum.
sealed class NamedType extends MetadataType {
  const NamedType(this.typeName);

  /// Constructs a [NamedClassType] from the given [typeName].
  const factory NamedType.class$(TypeName typeName) = NamedClassType;

  /// Constructs a [NamedValueType] from the given [typeName].
  const factory NamedType.value(TypeName typeName) = NamedValueType;

  /// The full type name including namespace and generic arguments.
  final TypeName typeName;

  /// The namespace part of the type name.
  String get namespace => typeName.namespace;

  /// The simple name of the type.
  String get name => typeName.name;

  /// The list of generic type arguments for this type, if any.
  List<MetadataType> get generics => typeName.generics;
}

/// Represents a user-defined class type (i.e., a reference type).
///
/// This includes any user-defined class or interface that is not a value type.
final class NamedClassType extends NamedType {
  /// Constructs a [NamedClassType] from the given [typeName].
  const NamedClassType(super.typeName);

  @override
  ElementType get code => ELEMENT_TYPE_CLASS;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NamedClassType && typeName == other.typeName;

  @override
  int get hashCode => typeName.hashCode;

  @override
  String toString() => 'NamedClassType($typeName)';
}

/// Represents a user-defined value type (i.e., a struct or enum).
final class NamedValueType extends NamedType {
  /// Constructs a [NamedValueType] from the given [typeName].
  const NamedValueType(super.typeName);

  @override
  ElementType get code => ELEMENT_TYPE_VALUETYPE;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NamedValueType && typeName == other.typeName;

  @override
  int get hashCode => typeName.hashCode;

  @override
  String toString() => 'NamedValueType($typeName)';
}

/// Represents a System.Object type.
final class ObjectType extends MetadataType {
  const ObjectType();

  @override
  ElementType get code => ELEMENT_TYPE_OBJECT;
}

/// Represents a System.String type.
final class StringType extends MetadataType {
  const StringType();

  @override
  ElementType get code => ELEMENT_TYPE_STRING;
}

/// Represents a _null_ reference type in constants.
final class NullReferenceType extends MetadataType {
  const NullReferenceType();

  @override
  ElementType get code => ELEMENT_TYPE_CLASS;
}

/// Represents an enum type in custom attributes.
final class AttributeEnumType extends MetadataType {
  const AttributeEnumType();

  @override
  ElementType get code => ELEMENT_TYPE_ENUM;
}

/// Represents an array type.
final class ArrayType extends MetadataType {
  const ArrayType(this.element);

  /// The type of the elements stored in the array.
  final MetadataType element;

  @override
  ElementType get code => ELEMENT_TYPE_SZARRAY;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is ArrayType && element == other.element;

  @override
  int get hashCode => element.hashCode;

  @override
  String toString() => 'ArrayType($element)';
}

/// Represents a fixed-size array type.
final class FixedArrayType extends MetadataType {
  const FixedArrayType(this.element, this.length);

  /// The type of the elements stored in the array.
  final MetadataType element;

  /// The exact number of elements in the array.
  final int length;

  @override
  ElementType get code => ELEMENT_TYPE_ARRAY;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FixedArrayType &&
          element == other.element &&
          length == other.length;

  @override
  int get hashCode => Object.hash(element, length);

  @override
  String toString() => 'FixedArrayType($element, $length)';
}

/// Represents a reference to an array type.
final class ArrayReferenceType extends MetadataType {
  const ArrayReferenceType(this.element);

  /// The type of the array elements the reference points to.
  final MetadataType element;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArrayReferenceType && element == other.element;

  @override
  int get hashCode => element.hashCode;

  @override
  String toString() => 'ArrayReferenceType($element)';
}

/// Represents a const (readonly) reference type to another type.
final class ConstReferenceType extends MetadataType {
  const ConstReferenceType(this.element);

  /// The type of the element the const reference points to.
  final MetadataType element;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstReferenceType && element == other.element;

  @override
  int get hashCode => element.hashCode;

  @override
  String toString() => 'ConstReferenceType($element)';
}

/// Represents a generic parameter type.
final class GenericParameterType extends MetadataType {
  const GenericParameterType(this.sequence);

  /// The zero-based index of the generic parameter.
  final int sequence;

  @override
  ElementType get code => ELEMENT_TYPE_VAR;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenericParameterType && sequence == other.sequence;

  @override
  int get hashCode => sequence.hashCode;

  @override
  String toString() => 'GenericParameterType($sequence)';
}

/// Represents a mutable (non-const) pointer type.
final class MutablePointerType extends MetadataType {
  const MutablePointerType(this.pointee, this.depth);

  /// The type the pointer points to.
  final MetadataType pointee;

  /// The number of pointer indirections (e.g., `T**` has depth `2`).
  final int depth;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MutablePointerType &&
          pointee == other.pointee &&
          depth == other.depth;

  @override
  int get hashCode => Object.hash(pointee, depth);

  @override
  String toString() => 'MutablePointerType($pointee, $depth)';
}

/// Represents a const pointer type.
final class ConstPointerType extends MetadataType {
  const ConstPointerType(this.pointee, this.depth);

  /// The type the pointer points to.
  final MetadataType pointee;

  /// The number of pointer indirections (e.g., `const T**` has depth `2`).
  final int depth;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstPointerType &&
          pointee == other.pointee &&
          depth == other.depth;

  @override
  int get hashCode => Object.hash(pointee, depth);

  @override
  String toString() => 'ConstPointerType($pointee, $depth)';
}
