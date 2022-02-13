import 'package:winmd/winmd.dart';

import 'safenames.dart';
import 'type.dart';
import 'utils.dart';

/// A field.
///
/// Fields are a tuple of a type and a name.
class FieldProjection {
  final Field field;
  late final String fieldName;

  FieldProjection(this.field) {
    fieldName = safeIdentifierForString(field.name);
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
    // But it should only have one underscore, for consistency later. Nested
    // types are not likely to be reserved keywords, so it should be OK to not
    // do the extra work necessary to test whether they're safe or not.
    //
    // Otherwise strip it so that it's accessible from outside the library.
    var dartType =
        safeTypenameForString(stripLeadingUnderscores(typeProjection.dartType));

    if (field.typeIdentifier.type?.isNested == true) {
      dartType = '_${stripLeadingUnderscores(typeProjection.dartType)}';
    }
    if (field.typeIdentifier.typeArg?.type?.isNested == true) {
      dartType = typeProjection.dartType;
    }

    return '  ${typeProjection.attribute}\n  external $dartType $fieldName;\n';
  }
}
