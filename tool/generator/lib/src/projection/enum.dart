import 'package:winmd/winmd.dart';

import 'safenames.dart';
import 'utils.dart';

/// Represents a Dart projection of an enumeration typedef.
class EnumProjection {
  final TypeDef typeDef;
  final String enumName;
  final String comment;

  EnumProjection(this.typeDef, this.enumName, {this.comment = ''});

  String get classPreamble {
    const enumCategoryComment = '/// {@category Enum}';
    final classComment = wrapCommentText(comment);
    final docComment = classComment.isEmpty
        ? enumCategoryComment
        : '$classComment\n///\n$enumCategoryComment';

    return docComment;
  }

  String get _projectedName => safeTypenameForString(enumName);

  String get classDeclaration => 'enum $_projectedName implements WinRTEnum {';

  // The first field is always the special field _value
  List<Field> get _fields => typeDef.fields.skip(1).toList()
    ..sort((a, b) => a.value.compareTo(b.value));

  String get identifiers {
    final buffer = StringBuffer();

    for (final field in _fields) {
      final fieldName = safeIdentifierForString(field.name.length == 1
          ? field.name.toLowerCase()
          : field.name.toCamelCase());
      buffer
        ..write('$fieldName(${field.value})')
        ..write(field != _fields.last ? ',\n' : ';');
    }

    return buffer.toString();
  }

  String get _enumValueVariable => '''
    @override
    final int value;
  ''';

  String get _constructor => 'const $enumName(this.value);';

  String get _factoryConstructor => '''
    factory $enumName.from(int value) =>
      $enumName.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
  ''';

  @override
  String toString() => '''
    $classPreamble
    $classDeclaration
      $identifiers

      $_enumValueVariable

      $_constructor

      $_factoryConstructor
    }
  ''';
}

/// Represents a Dart projection of a Flags enumeration typedef.
class FlagsEnumProjection extends EnumProjection {
  FlagsEnumProjection(super.typeDef, super.enumName, {super.comment});

  @override
  String get classDeclaration => 'class $_projectedName extends WinRTEnum {';

  @override
  String get _constructor => 'const $enumName(super.value, {super.name});';

  @override
  String get _factoryConstructor => '''
    factory $enumName.from(int value) =>
        $enumName.values.firstWhere((e) => e.value == value,
            orElse: () => $enumName(value));
  ''';

  @override
  String get identifiers {
    final buffer = StringBuffer();

    for (final field in _fields) {
      final fieldName = safeIdentifierForString(field.name.length == 1
          ? field.name.toLowerCase()
          : field.name.toCamelCase());
      buffer.writeln(
          "static const $fieldName = $_projectedName(${field.value}, name: '$fieldName');");
    }

    return buffer.toString();
  }

  String get _values {
    final fields = _fields
        .map((f) => safeIdentifierForString(
            f.name.length == 1 ? f.name.toLowerCase() : f.name.toCamelCase()))
        .join(',');
    return 'static const List<$enumName> values = [$fields];';
  }

  String get _andOperator => '''
    $_projectedName operator &($_projectedName other) =>
        $_projectedName(value & other.value);
  ''';

  String get _orOperator => '''
    $_projectedName operator |($_projectedName other) =>
        $_projectedName(value | other.value);
  ''';

  String get _hasFlag => '''
    /// Determines whether one or more bit fields are set in the current enum
    /// value.
    ///
    /// ```dart
    /// final fileAttributes = FileAttributes.readOnly | FileAttributes.archive;
    /// fileAttributes.hasFlag(FileAttributes.readOnly)); // `true`
    /// fileAttributes.hasFlag(FileAttributes.temporary)); // `false`
    /// fileAttributes.hasFlag(
    ///     FileAttributes.readOnly | FileAttributes.archive)); // `true`
    /// ```
    bool hasFlag($_projectedName flag) {
      if (value != 0 && flag.value == 0) return false;
      return value & flag.value == flag.value;
    }
  ''';

  @override
  String toString() => '''
    $classPreamble
    $classDeclaration
      $_constructor

      $_factoryConstructor

      $identifiers

      $_values

      $_andOperator

      $_orOperator

      $_hasFlag
    }
  ''';
}
