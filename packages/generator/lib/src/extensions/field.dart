import 'dart:collection';

import 'package:winmd/winmd.dart' as winmd;

import '../attributes.dart';
import '../exception.dart';
import '../interop_type.dart';
import '../windows_metadata.dart';
import 'string.dart';

extension FieldExtension on winmd.Field {
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
    final bitFieldAttributes = attributes.where(
      (a) => a.name == Win32Attribute.nativeBitfield,
    );

    for (final winmd.CustomAttribute(
          fixedArgs: [
            winmd.FixedArg(
              value: winmd.Utf8StringValue(value: bitFieldName)
                  as winmd.Utf8StringValue,
            ),
            winmd.FixedArg(
              value: winmd.Int64Value(value: offset) as winmd.Int64Value,
            ),
            winmd.FixedArg(
              value: winmd.Int64Value(value: length) as winmd.Int64Value,
            ),
          ],
        )
        in bitFieldAttributes) {
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
      final parentField = typeDef.enclosingClass!.fields.firstWhere((f) {
        if (f.signature case winmd.NamedType(
          typeName: winmd.TypeName(:final namespace, :final name),
        )) {
          return namespace == typeDef.namespace && name == typeDef.name;
        }
        return false;
      });

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
  bool get isArray => switch (signature) {
    winmd.FixedArrayType() => true,
    _ => false,
  };

  /// Whether the field is a bit field.
  bool get isBitField => hasAttribute(Win32Attribute.nativeBitfield);

  /// Whether the field is a char array.
  bool get isCharArray => switch (signature) {
    winmd.FixedArrayType(element: winmd.CharType()) => true,
    _ => false,
  };

  /// Whether the field is a flexible array.
  bool get isFlexibleArray =>
      isArray && hasAttribute(Win32Attribute.flexibleArray);

  bool get isLiteral => flags.has(winmd.FieldAttributes.literal);

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
  bool get isPointer => switch (signature) {
    winmd.ConstPointerType() || winmd.MutablePointerType() => true,
    _ => false,
  };

  bool get isStatic => flags.has(winmd.FieldAttributes.static);

  /// Whether the field represents the size of a struct.
  ///
  /// A field is considered a struct size field if it matches the
  /// [Win32Attribute.structSize] attribute on its parent.
  bool get isStructSize =>
      parent.attributeAsString(Win32Attribute.structSize) == name;

  /// The type of the field.
  ///
  /// If the field has an associated enum, the type is resolved to that enum.
  InteropType get type {
    final resolvedType = _resolveType(metadataIndex, parent, signature);

    final associatedEnumName = attributeAsString(Win32Attribute.associatedEnum);
    if (associatedEnumName != null) {
      final namespace = parent.namespace;
      final typeDef = WindowsMetadata.findTypeDef(
        namespace,
        associatedEnumName,
      );
      return InteropType.primitiveOrEnum(resolvedType, TypeDefType(typeDef));
    }

    return resolvedType;
  }

  static final _resolvedTypes = <winmd.MetadataType, InteropType>{};

  /// Maps a [winmd.MetadataType] to the corresponding [InteropType].
  static InteropType _resolveType(
    winmd.MetadataIndex index,
    winmd.TypeDef parent,
    winmd.MetadataType type,
  ) {
    if (type case winmd.NamedType(:final typeName)) {
      return InteropType.remap(typeName) ??
          InteropType.typeDef(_resolveTypeName(index, parent, typeName));
    }

    return _resolvedTypes.putIfAbsent(type, () {
      if (InteropType.fromPrimitiveType(type) case final primitive?) {
        return primitive;
      }

      return switch (type) {
        winmd.FixedArrayType(:final element, :final length) =>
          InteropType.array(_resolveType(index, parent, element), length),

        winmd.ConstPointerType(:final pointee, :final depth) =>
          InteropType.constPointer(_resolveType(index, parent, pointee), depth),

        winmd.MutablePointerType(:final pointee, :final depth) =>
          InteropType.mutablePointer(
            _resolveType(index, parent, pointee),
            depth,
          ),

        _ => throw GeneratorException('Unsupported type: $type'),
      };
    });
  }

  static winmd.TypeDef _resolveTypeName(
    winmd.MetadataIndex index,
    winmd.TypeDef parent,
    winmd.TypeName typeName,
  ) {
    final winmd.TypeName(:namespace, :name) = typeName;

    // Try nested type resolution for anonymous structs/unions.
    if (namespace.isEmpty) {
      var current = parent;
      while (true) {
        final match = current.nestedTypes
            .where((type) => type.name == name)
            .firstOrNull;
        if (match != null) return match;

        if (current.enclosingClass case final enclosing?) {
          current = enclosing;
        } else {
          break;
        }
      }
    }

    return WindowsMetadata.findTypeDef(namespace, name);
  }

  winmd.MetadataValue? get value => constant?.value;
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
      identical(this, other) ||
      other is NativeBitFieldAttribute &&
          name == other.name &&
          offset == other.offset &&
          length == other.length;

  @override
  int get hashCode => Object.hash(name, offset, length);

  @override
  String toString() => 'NativeBitFieldAttribute($name, $offset, $length)';
}
