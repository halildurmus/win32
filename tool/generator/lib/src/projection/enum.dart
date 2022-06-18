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

  bool get hasFlagsAttribute =>
      typeDef.existsAttribute('System.FlagsAttribute');

  String get _fields {
    final buffer = StringBuffer();
    // The first field is always the special field _value
    final fields = typeDef.fields.skip(1).toList()
      ..sort((a, b) => a.value.compareTo(b.value));

    for (final field in fields) {
      final fieldName = field.name;
      final fieldValue = field.value;
      buffer.writeln('$fieldName($fieldValue)');
      field != fields.last ? buffer.write(',') : buffer.write(';');
    }

    return buffer.toString();
  }

  String get _enumVariable => 'final int value;';

  String get _constructor => 'const $enumName(this.value);';

  String get _factoryConstructor => '''
    factory $enumName.from(int value) =>
      $enumName.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
    ''';

  String get _enumSetHelper => hasFlagsAttribute
      ? '''
    static Set<$enumName> createSetFrom(int value) => Set.unmodifiable(
      $enumName.values.where((e) => value & e.value == e.value));
    '''
      : '';

  @override
  String toString() => '''
        $classPreamble
        enum $_projectedName {
          $_fields

          $_enumVariable

          $_constructor

          $_factoryConstructor

          $_enumSetHelper
        }
      ''';
}
