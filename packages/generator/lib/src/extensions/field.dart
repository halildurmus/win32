import 'package:winmd/winmd.dart';

import '../attributes.dart';
import '../type.dart';
import '../windows_metadata.dart';
import 'string.dart';

extension FieldHelpers on Field {
  /// The bit fields of the field, or an empty list if the field is not a bit
  /// field.
  ///
  /// Bit fields are identified using the [Win32Attribute.nativeBitfield]
  /// attribute. Each bit field is represented by a [NativeBitFieldAttribute],
  /// which includes its name, offset, and length. Reserved bit fields (those
  /// containing "Reserved" or "reserved" in their name) are excluded.
  List<NativeBitFieldAttribute> get bitFields {
    if (!isBitField) return const [];

    final bitFields = <NativeBitFieldAttribute>[];

    for (final CustomAttribute(
          parameters: [
            CustomAttributeParameter(value: bitFieldName as String),
            CustomAttributeParameter(value: offset as int),
            CustomAttributeParameter(value: length as int),
          ],
        )
        in customAttributes.where(
          (a) => a.name == Win32Attribute.nativeBitfield,
        )) {
      // Skip reserved bit fields.
      if (bitFieldName.contains(RegExp('[Rr]eserved'))) continue;
      bitFields.add(NativeBitFieldAttribute(bitFieldName, offset, length));
    }

    return bitFields;
  }

  /// The name of the field as it appears in the instance, including its
  /// hierarchy in nested structures.
  ///
  /// For example, if the field is part of a nested structure, the name includes
  /// all parent field names in the hierarchy, separated by dots.
  String get instanceName {
    // Get the immediate parent type definition.
    var typeDef = parent;

    // Get the name of this field.
    var name = this.name.safeIdentifier;

    // Walk up the tree and append each parent field name to the current name,
    // ensuring that each identifier is valid.
    while (typeDef.enclosingClass != null) {
      // Find the parent field corresponding to the current TypeDef.
      final parentField = typeDef.enclosingClass!.fields.firstWhere(
        (f) => f.typeIdentifier.type == typeDef,
      );

      // Get the name of the parent field.
      final parentName = parentField.name.safeIdentifier;

      // Append the parent field name to the current name.
      name = '$parentName.$name';

      // Move up the hierarchy to the next enclosing class.
      typeDef = typeDef.enclosingClass!;
    }

    return name;
  }

  /// Whether the field is an array.
  bool get isArray => typeIdentifier.baseType == BaseType.arrayTypeModifier;

  /// Whether the field is a bit field.
  bool get isBitField => hasAttribute(Win32Attribute.nativeBitfield);

  /// Whether the field is a char array.
  bool get isCharArray =>
      isArray && typeIdentifier.typeArg?.baseType == BaseType.charType;

  /// Whether the field is a flexible array.
  bool get isFlexibleArray =>
      isArray && hasAttribute(Win32Attribute.flexibleArray);

  /// Whether the field is a nested type.
  bool get isNested => typeIdentifier.type?.isNested ?? false;

  /// Whether the field is a nested array.
  bool get isNestedArray =>
      isArray && (typeIdentifier.typeArg?.type?.isNested ?? false);

  /// Whether the field is a nested pointer.
  bool get isNestedPointer =>
      isPointer && (typeIdentifier.typeArg?.type?.isNested ?? false);

  /// Whether the field is obsolete or reserved.
  ///
  /// A field is considered obsolete or reserved if it has the
  /// [SystemAttribute.obsolete] attribute or its name starts with
  /// "__OBSOLETE" or contains "Reserved" or "reserved".
  bool get isObsoleteOrReserved =>
      hasAttribute(SystemAttribute.obsolete) ||
      name.startsWith('__OBSOLETE') ||
      name.contains(RegExp('[Rr]eserved'));

  /// Whether the field is a pointer.
  bool get isPointer => typeIdentifier.baseType == BaseType.pointerTypeModifier;

  /// Whether the field represents the size of a struct.
  ///
  /// A field is considered a struct size field if it matches the
  /// [Win32Attribute.structSize] attribute on its parent.
  bool get isStructSize =>
      parent.attributeAsString(Win32Attribute.structSize) == name;

  /// The type of the field.
  ///
  /// If the field has an associated enum, the type is resolved to that enum.
  Type get type {
    var type = Type.fromTypeIdentifier(typeIdentifier);

    if (attributeAsString(Win32Attribute.associatedEnum) case final name
        when name.isNotEmpty) {
      final typeDef = WindowsMetadata.typeDef(name);
      type = Type.primitiveOrEnum(type, TypeDefType(typeDef));
    }

    return type;
  }
}

/// Represents a bit field within a struct.
final class NativeBitFieldAttribute {
  /// Creates a [NativeBitFieldAttribute] with the specified [name], [offset],
  /// and [length].
  const NativeBitFieldAttribute(this.name, this.offset, this.length);

  /// The name of the bit field.
  final String name;

  /// The offset of the bit field within the struct.
  final int offset;

  /// The length of the bit field in bits.
  final int length;

  @override
  bool operator ==(Object other) =>
      other is NativeBitFieldAttribute &&
      name == other.name &&
      offset == other.offset &&
      length == other.length;

  @override
  int get hashCode => Object.hashAll([name, offset, length]);

  @override
  String toString() => 'NativeBitFieldAttribute($name, $offset, $length)';
}
