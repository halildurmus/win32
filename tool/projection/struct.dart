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
  String propertyAccessors() {
    final buffer = StringBuffer();
    buffer.writeln('extension {{PARENT}}_Extension on {{PARENT}} {');
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

  @override
  String toString() {
    try {
      final buffer = StringBuffer();

      buffer.writeln('/// {@category Struct}');

      final packingAlignment = typedef.classLayout.packingAlignment;
      if (packingAlignment != null &&
          packingAlignment > 0 &&
          !ignorePackingDirectives.contains(typedef.name)) {
        buffer.writeln('@Packed($packingAlignment)');
      }

      // Some structs may be opaque types. For example, WS_ERROR. Others may be
      // unions, e.g. INPUT.
      if (typedef.fields.isEmpty) {
        buffer.writeln('class ${safeName(structName)} extends Opaque {');
      } else if (typedef.isUnion) {
        buffer.writeln('class ${safeName(structName)} extends Union {');
      } else {
        buffer.writeln('class ${safeName(structName)} extends Struct {');
      }

      for (final field in typedef.fields) {
        final fieldProjection = FieldProjection(field);
        buffer.write(fieldProjection);
      }
      buffer.writeln('}\n');

      // Add any nested types on which there is a dependency
      if (typedef.nestedTypeDefs.isNotEmpty) {
        final nested = typedef.nestedTypeDefs.map((t) => t.name);
        for (final field in typedef.fields) {
          if (nested.contains(field.typeIdentifier.name)) {
            final nestedType = typedef.nestedTypeDefs
                .where((t) => t.name == field.typeIdentifier.name)
                .first;
            final nestedTypeProjection =
                StructProjection(nestedType, '_${nestedType.name}');

            buffer.write('\n$nestedTypeProjection\n');
            buffer.write(nestedTypeProjection
                .propertyAccessors()
                .replaceAll('{{CLASS}}', field.name)
                .replaceAll('{{PARENT}}', structName));
          }
        }
      }

      return buffer.toString();
    } catch (_) {
      print('Failed to project $structName');
      return '';
    }
  }
}
