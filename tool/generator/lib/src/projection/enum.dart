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

  String safeEnumIdentifier(String fieldName) {
    if (fieldName.length == 1) return fieldName.toLowerCase();

    for (final acronym in acronyms) {
      if (fieldName.startsWith(acronym)) {
        // UInt32 -> uint32, IPAddress -> ipAddress, DPadUp -> dpadUp etc.
        return safeIdentifierForString(
            acronym.toLowerCase() + fieldName.substring(acronym.length));
      }
    }

    return safeIdentifierForString(fieldName.toCamelCase());
  }

  List<String> get identifiers => _fields
      .map((field) => '${safeEnumIdentifier(field.name)}(${field.value})')
      .toList();

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
      ${identifiers.join(',\n')};

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
  List<String> get identifiers {
    return _fields.map((field) {
      final identifier = safeEnumIdentifier(field.name);
      return "static const $identifier = $_projectedName(${field.value}, name: '$identifier');";
    }).toList();
  }

  String get _values {
    final fields =
        _fields.map((field) => safeEnumIdentifier(field.name)).join(',');
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

      ${identifiers.join()}

      $_values

      $_andOperator

      $_orOperator

      $_hasFlag
    }
  ''';
}
