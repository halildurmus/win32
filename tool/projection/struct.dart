import 'dart:math' show min;

import 'package:winmd/winmd.dart';

import 'field.dart';
import 'nestedStruct.dart';
import 'safenames.dart';
import 'utils.dart';

/// Represents a Dart projection of a Struct typedef.
class StructProjection {
  final TypeDef typeDef;
  final String structName;

  StructProjection(this.typeDef, this.structName);

  /// A nested type needs a way to access its members from the parent type. We
  /// do this through a templated class that contains the field accessors. At
  /// the time this is created, we don't know the name of the parent class, so
  /// we use a templated value `{{CLASS}}` to represent it.
  String _propertyAccessors() {
    final buffer = StringBuffer()
      ..writeln('extension {{PARENT}}_Extension{{SUFFIX}} on {{PARENT}} {');
    for (final field in typeDef.fields) {
      final typeProjection = TypeProjection(field.typeIdentifier);
      buffer.writeln('''
  ${typeProjection.dartType} get ${field.name} => {{CLASS}}.${field.name};
  set ${field.name}(${typeProjection.dartType} value) => {{CLASS}}.${field.name} = value;
      ''');
    }
    buffer.writeln('}');
    return buffer.toString();
  }

  String _nestedName(String structName) {
    final enclosedName = typeDef.enclosingClass!.name.split('.').last;

    return '_${enclosedName}_$structName';
  }

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
      ? '_${safeTypenameForString(mangleName(typeDef))}'
      : safeTypenameForString(structName);

  String get _fieldsProjection =>
      typeDef.fields.map(FieldProjection.new).join('\n');

  String? _nestedTypes;
  String get nestedTypes => _nestedTypes ??= _cacheNestedTypes();

  String _cacheNestedTypes() {
    final buffer = StringBuffer();
    final nestedTypes = <TypeDef>{};

    for (final field in typeDef.fields) {
      if (_isNestedType(field)) {
        nestedTypes.add(field.typeIdentifier.type!);
      }
    }

    // Add any nested types on which there is a dependency
    var fieldIdx = 0;
    for (final nestedType in nestedTypes) {
      // Nested types should have just one leading underscore, so we strip the
      // others off and add one back.
      final nestedTypeProjection = NestedStructProjection(
          nestedType, '_${stripLeadingUnderscores(nestedType.name)}',
          suffix: fieldIdx, rootTypePackingAlignment: packingAlignment);

      final suffix = fieldIdx == 0 ? '' : '_$fieldIdx';
      buffer
        ..write('\n$nestedTypeProjection\n')
        ..write(nestedTypeProjection
            ._propertyAccessors()
            .replaceAll('{{CLASS}}', field)
            .replaceAll('{{PARENT}}', structName)
            .replaceAll('{{SUFFIX}}', suffix));
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
      if (field.typeIdentifier.baseType == BaseType.ArrayTypeModifier &&
          field.typeIdentifier.typeArg?.type != null) {
        final arrayPacking =
            calculatePackingAlignment(field.typeIdentifier.typeArg!.type!);
        alignment = min(arrayPacking, alignment);
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
