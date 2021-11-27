import 'dart:math' show min;

import 'package:winmd/winmd.dart';

import 'field.dart';
import 'nestedStruct.dart';
import 'utils.dart';

/// Represents a Dart projection of a Struct typedef.
class StructProjection {
  final TypeDef typeDef;
  final String structName;

  StructProjection(this.typeDef, this.structName);

  bool _isNestedType(Field field) =>
      field.typeIdentifier.type?.isNested ?? false;

  bool _hasNestedArray(Field field) =>
      field.typeIdentifier.typeArg?.type?.isNested != null &&
      field.typeIdentifier.typeArg!.type!.isNested;

  String get _baseType {
    // Some structs may be opaque types. For example, WS_ERROR. Others may be
    // unions, e.g. INPUT.
    if (typeDef.fields.isEmpty) return 'Opaque';
    if (typeDef.isUnion) return 'Union';
    return 'Struct';
  }

  String get classPreamble {
    const docComment = '/// {@category Struct}';
    if (packingAlignment > 0) {
      return '$docComment\n@Packed($packingAlignment)';
    } else {
      return docComment;
    }
  }

  String get _projectedName => typeDef.isNested
      ? '_${safeName(mangleName(typeDef))}'
      : safeName(structName);

  String get _fieldsProjection =>
      typeDef.fields.map((field) => FieldProjection(field)).join('\n');

  String? _nestedTypes;
  String get nestedTypes => _nestedTypes ??= _cacheNestedTypes();

  String _cacheNestedTypes() {
    final buffer = StringBuffer();
    final nestedTypes = <String, TypeDef>{};

    for (final field in typeDef.fields) {
      if (_isNestedType(field)) {
        nestedTypes[field.name] = field.typeIdentifier.type!;
      }
    }

    // Add any nested types on which there is a dependency
    var fieldIdx = 0;
    for (final field in nestedTypes.keys) {
      final nestedType = nestedTypes[field]!;
      final nestedTypeProjection =
          NestedStructProjection(nestedType, '_${nestedType.name}', fieldIdx);

      buffer.write('\n$nestedTypeProjection\n');
      fieldIdx++;
    }

    return buffer.toString();
  }

  int? _packingAlignment;
  int get packingAlignment =>
      _packingAlignment ??= calculatePackingAlignment(typeDef);

  int calculatePackingAlignment(TypeDef typeDef) {
    var alignment =
        typeDef.classLayout.packingAlignment ?? 0xFF; // marker value

    // Walk through children to see if they have a packing alignment
    for (final field in typeDef.fields) {
      final fieldTypeDef = field.typeIdentifier.type;
      if (fieldTypeDef != null && !field.isLiteral) {
        final fieldPacking = calculatePackingAlignment(fieldTypeDef);
        alignment = min(fieldPacking, alignment);
      }
    }
    return alignment == 0xFF ? 0 : alignment;
  }

  String get _nestedArrays {
    final buffer = StringBuffer();
    final nestedArrays = <String, TypeDef>{};

    for (final field in typeDef.fields) {
      if (_hasNestedArray(field)) {
        nestedArrays[field.typeIdentifier.typeArg!.name] =
            field.typeIdentifier.typeArg!.type!;
      }
    }

    for (final field in nestedArrays.keys) {
      final nestedType = nestedArrays[field]!;
      final nestedTypeProjection =
          StructProjection(nestedType, '_${nestedType.name}');

      buffer.write('\n$nestedTypeProjection\n');
    }

    return buffer.toString();
  }

  @override
  String toString() => '''
        $classPreamble
        class $_projectedName extends $_baseType {
          $_fieldsProjection
        }

        $nestedTypes
        $_nestedArrays
      ''';
}
