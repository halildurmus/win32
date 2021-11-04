import 'package:winmd/winmd.dart' as winmd;

import '../namespace/exclusions.dart';
import 'field.dart';
import 'utils.dart';

/// Represents a Dart projection of a Struct typedef.
class StructProjection {
  final winmd.TypeDef typedef;
  final String structName;

  StructProjection(this.typedef, this.structName);

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

      // Some structs may be opaque types. For example, WS_ERROR.
      if (typedef.fields.isEmpty) {
        buffer.writeln('class ${safeName(structName)} extends Opaque {');
      } else {
        buffer.writeln('class ${safeName(structName)} extends Struct {');
      }

      for (final field in typedef.fields) {
        final fieldProjection = FieldProjection(field);
        buffer.write(fieldProjection);
      }
      buffer.writeln('}\n');
      return buffer.toString();
    } catch (_) {
      print('Failed to project $structName');
      return '';
    }
  }
}
