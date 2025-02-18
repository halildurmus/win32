import 'package:winmd/winmd.dart';

import 'safenames.dart';
import 'type.dart';
import 'utils.dart';

/// A field.
///
/// Fields are a tuple of a type and a name.
class FieldProjection {
  final Field field;
  late final String fieldName = safeIdentifierForString(field.name);

  FieldProjection(this.field);

  String _printCharArray(TypeProjection typeProjection) {
    final dimensionsUpperBound = typeProjection.arrayUpperBound;
    if (dimensionsUpperBound == null) {
      throw Exception('Array $fieldName should have dimensions.');
    }

    final attribute =
        _isFlexibleArray
            ? '  @Array.variableWithVariableDimension($dimensionsUpperBound)'
            : '  @Array($dimensionsUpperBound)';

    final dartCode = '''
      $attribute
      external ${typeProjection.nativeType} _$fieldName;

      String get $fieldName => _$fieldName.toDartString();

      set $fieldName(String value) => _$fieldName.setString(value);
''';
    return dartCode;
  }

  bool get _isCharArray =>
      field.typeIdentifier.baseType == BaseType.arrayTypeModifier &&
      field.typeIdentifier.typeArg?.baseType == BaseType.charType;

  bool get _isFlexibleArray =>
      field.typeIdentifier.baseType == BaseType.arrayTypeModifier &&
      field.existsAttribute(
        'Windows.Win32.Foundation.Metadata.FlexibleArrayAttribute',
      );

  @override
  String toString() {
    final typeProjection = TypeProjection(field.typeIdentifier);
    if (_isCharArray) return _printCharArray(typeProjection);

    // If the field is a nested type (e.g. a nested union), then it's OK for it
    // to be internal only, since it will be accessed via a property instead.
    // But it should only have one underscore, for consistency later. Nested
    // types are not likely to be reserved keywords, so it should be OK to not
    // do the extra work necessary to test whether they're safe or not.
    //
    // Otherwise strip it so that it's accessible from outside the library.
    var dartType = safeTypenameForString(
      stripLeadingUnderscores(typeProjection.dartType),
    );

    if (field.typeIdentifier.type?.isNested ?? false) {
      dartType = '_${stripLeadingUnderscores(typeProjection.dartType)}';
    }
    if (field.typeIdentifier.typeArg?.type?.isNested ?? false) {
      dartType = typeProjection.dartType;
    }

    final attribute =
        _isFlexibleArray
            ? '@Array.variableWithVariableDimension(${typeProjection.arrayUpperBound})'
            : typeProjection.attribute;

    return '  $attribute\n  external $dartType $fieldName;\n';
  }
}
