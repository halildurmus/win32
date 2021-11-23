import 'package:winmd/winmd.dart' as winmd;

import '../metadata/exclusions.dart';
import 'field.dart';
import 'type.dart';
import 'utils.dart';

/// Represents a Dart projection of a Struct typedef.
class StructProjection {
  final winmd.TypeDef typedef;
  final String structName;

  StructProjection(this.typedef, this.structName);

  /// A nested type needs a way to access its members from the parent type. We
  /// do this through a templated class that contains the field accessors. At
  /// the time this is created, we don't know the name of the parent class, so
  /// we use a templated value `{{CLASS}}` to represent it.
  String _propertyAccessors() {
    final buffer = StringBuffer();
    buffer.writeln('extension {{PARENT}}_Extension{{SUFFIX}} on {{PARENT}} {');
    for (final field in typedef.fields) {
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
    final enclosedName = typedef.enclosingClass!.name.split('.').last;

    return '_${enclosedName}_$structName';
  }

  bool _isNestedType(winmd.Field field) =>
      field.typeIdentifier.type?.isNested ?? false;

  bool _hasNestedArray(winmd.Field field) =>
      field.typeIdentifier.typeArg?.type?.isNested != null &&
      field.typeIdentifier.typeArg!.type!.isNested;

  @override
  String toString() {
    // TODO: Needs some cleanup -- ideally avoid buffer and return in one go.
    try {
      final buffer = StringBuffer();

      buffer.writeln('/// {@category Struct}');

      final packingAlignment = typedef.classLayout.packingAlignment;
      if (packingAlignment != null &&
          packingAlignment > 0 &&
          !ignorePackingDirectives.contains(typedef.name)) {
        buffer.writeln('@Packed($packingAlignment)');
      }

      final safeStructName = typedef.isNested
          ? _nestedName(safeName(structName))
          : safeName(structName);

      // Some structs may be opaque types. For example, WS_ERROR. Others may be
      // unions, e.g. INPUT.
      if (typedef.fields.isEmpty) {
        buffer.writeln('class $safeStructName extends Opaque {');
      } else if (typedef.isUnion) {
        buffer.writeln('class $safeStructName extends Union {');
      } else {
        buffer.writeln('class $safeStructName extends Struct {');
      }

      final nestedTypes = <String, winmd.TypeDef>{};
      final nestedArrays = <String, winmd.TypeDef>{};

      for (final field in typedef.fields) {
        final fieldProjection = FieldProjection(field);
        buffer.write(fieldProjection);

        if (_isNestedType(fieldProjection.field)) {
          nestedTypes[field.name] = field.typeIdentifier.type!;
        }

        if (_hasNestedArray(field)) {
          nestedArrays[field.typeIdentifier.typeArg!.name] =
              field.typeIdentifier.typeArg!.type!;
        }
      }
      buffer.writeln('}\n');

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
      for (final field in nestedArrays.keys) {
        final nestedType = nestedArrays[field]!;
        final nestedTypeProjection =
            StructProjection(nestedType, '_${nestedType.name}');

        buffer.write('\n$nestedTypeProjection\n');
      }

      return buffer.toString();
    } catch (_) {
      print('Failed to project $structName');
      rethrow;
    }
  }
}
