import 'package:winmd/winmd.dart';

import 'type.dart';
import 'utils.dart';

/// A field.
///
/// Fields are a tuple of a type and a name.
class FieldProjection {
  final Field field;
  late String fieldName;

  FieldProjection(this.field) {
    fieldName = safeName(field.name);
  }

  String _printCharArray(TypeProjection typeProjection) {
    final dimensionsUpperBound = typeProjection.arrayUpperBound;
    if (dimensionsUpperBound == null) {
      throw Exception('Array $fieldName should have dimensions.');
    }

    final dartCode = '''
      ${typeProjection.attribute}
      external ${typeProjection.nativeType} _$fieldName;

      String get $fieldName {
        final charCodes = <int>[];
        for (var i = 0; i < $dimensionsUpperBound; i++) {
          charCodes.add(_$fieldName[i]);
        }
        return String.fromCharCodes(charCodes);
      }

      set $fieldName(String value) {
        final stringToStore = value.padRight($dimensionsUpperBound, '\\x00');
        for (var i = 0; i < $dimensionsUpperBound; i++) {
          _$fieldName[i] = stringToStore.codeUnitAt(i);
        }
      }
    ''';
    return dartCode;
  }

  bool get _isCharArray =>
      field.typeIdentifier.baseType == BaseType.ArrayTypeModifier &&
      field.typeIdentifier.typeArg?.baseType == BaseType.Char;

  @override
  String toString() {
    final typeProjection = TypeProjection(field.typeIdentifier);
    if (_isCharArray) {
      return _printCharArray(typeProjection);
    }

    // If the field is a nested type (e.g. a nested union), then it's OK for it
    // to be internal only, since it will be accessed via a property instead.
    // Otherwise strip it so that it's accessible from outside the library.
    final dartType = field.typeIdentifier.type?.enclosingClass != null
        ? typeProjection.dartType
        : stripLeadingUnderscores(typeProjection.dartType);

    return '  ${typeProjection.attribute}\n  external $dartType $fieldName;\n';
  }
}
