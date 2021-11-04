import 'package:winmd/winmd.dart' as winmd;

import 'type.dart';

/// A field.
///
/// Fields are a tuple of a type and a name.
class FieldProjection {
  final winmd.Field field;

  const FieldProjection(this.field);

  String _printCharArray(TypeProjection typeProjection) {
    final name = field.name;
    final dimensionsUpperBound = typeProjection.arrayUpperBound;
    if (dimensionsUpperBound == null) {
      throw Exception('Array $name should have dimensions.');
    }

    final dartCode = '''
      ${typeProjection.attribute}
      external ${typeProjection.nativeType} $name;

      String get $name {
        final charCodes = <int>[];
        for (var i = 0; i < $dimensionsUpperBound; i++) {
          charCodes.add(_$name[i]);
        }
        return String.fromCharCodes(charCodes);
      }

      set $name(String value) {
        final stringToStore = value.padRight($dimensionsUpperBound, '\\x00');
        for (var i = 0; i < $dimensionsUpperBound; i++) {
          _$name[i] = stringToStore.codeUnitAt(i);
        }
      }
    ''';
    return dartCode;
  }

  @override
  String toString() {
    final typeProjection = TypeProjection(field.typeIdentifier);
    if (field.typeIdentifier.baseType == winmd.BaseType.ArrayTypeModifier &&
        field.typeIdentifier.typeArg?.baseType == winmd.BaseType.Char) {
      return _printCharArray(typeProjection);
    } else {
      return '  ${typeProjection.attribute}\n  external ${typeProjection.dartType} ${field.name};\n';
    }
  }
}
