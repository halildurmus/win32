import 'package:winmd/winmd.dart' as winmd;

import '../metadata/exclusions.dart';
import 'field.dart';
import 'type.dart';
import 'utils.dart';

/// Represents a Dart projection of a Struct typedef.
class StructProjection {
  final winmd.TypeDef typeDef;
  final String structName;

  StructProjection(this.typeDef, this.structName);

  /// A nested type needs a way to access its members from the parent type. We
  /// do this through a templated class that contains the field accessors. At
  /// the time this is created, we don't know the name of the parent class, so
  /// we use a templated value `{{CLASS}}` to represent it.
  String _propertyAccessors() {
    final buffer = StringBuffer();
    buffer.writeln('extension {{PARENT}}_Extension{{SUFFIX}} on {{PARENT}} {');
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

  bool _isNestedType(winmd.Field field) =>
      field.typeIdentifier.type?.isNested ?? false;

  bool _hasNestedArray(winmd.Field field) =>
      field.typeIdentifier.typeArg?.type?.isNested != null &&
      field.typeIdentifier.typeArg!.type!.isNested;

  String get _baseType {
    // Some structs may be opaque types. For example, WS_ERROR. Others may be
    // unions, e.g. INPUT.
    if (typeDef.fields.isEmpty) return 'Opaque';
    if (typeDef.isUnion) return 'Union';
    return 'Struct';
  }

  String get _packingAttribute {
    final packingAlignment = typeDef.classLayout.packingAlignment;
    if (packingAlignment != null &&
        packingAlignment > 0 &&
        !ignorePackingDirectives.contains(typeDef.name)) {
      return '@Packed($packingAlignment)';
    } else {
      return '';
    }
  }

  String get _projectedName => typeDef.isNested
      ? _nestedName(safeName(structName))
      : safeName(structName);

  String get _fieldsProjection =>
      typeDef.fields.map((field) => FieldProjection(field)).join('\n');

  String get _nestedTypes {
    final buffer = StringBuffer();
    final nestedTypes = <String, winmd.TypeDef>{};

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
          StructProjection(nestedType, '_${nestedType.name}');

      final suffix = fieldIdx == 0 ? '' : '_$fieldIdx';
      buffer.write('\n$nestedTypeProjection\n');
      buffer.write(nestedTypeProjection
          ._propertyAccessors()
          .replaceAll('{{CLASS}}', field)
          .replaceAll('{{PARENT}}', structName)
          .replaceAll('{{SUFFIX}}', suffix));
      fieldIdx++;
    }

    return buffer.toString();
  }

  String get _nestedArrays {
    final buffer = StringBuffer();
    final nestedArrays = <String, winmd.TypeDef>{};

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
        /// {@category Struct}
        $_packingAttribute
        class $_projectedName extends $_baseType {
          $_fieldsProjection
        }

        $_nestedTypes
        $_nestedArrays
      ''';
}
