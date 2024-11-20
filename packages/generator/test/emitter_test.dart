import 'package:checks/checks.dart';
import 'package:code_builder/code_builder.dart' as cb;
import 'package:dart_style/dart_style.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';

String createField(List<String> docs) => cb.Field(
  (b) => b
    ..docs.addAll(docs)
    ..modifier = cb.FieldModifier.constant
    ..name = 'f'
    ..assignment = cb.literalTrue.code,
).accept(DartEmitter()).toString();

String createFieldInsideClass(List<String> docs) {
  final rawCode = cb.Class(
    (b) => b
      ..name = 'C'
      ..fields.add(
        cb.Field(
          (b) => b
            ..docs.addAll(docs)
            ..modifier = cb.FieldModifier.constant
            ..name = 'f'
            ..assignment = cb.literalTrue.code,
        ),
      ),
  ).accept(DartEmitter()).toString();
  return DartFormatter(
    languageVersion: DartFormatter.latestLanguageVersion,
  ).format(rawCode);
}

void main() {
  group('DartEmitter', () {
    test('wraps dartdoc comments correctly', () {
      check(createField(['This is a short string.'])).equals('''
/// This is a short string.
const f = true;''');

      check(
        createField([
          'This is a long text that needs to be formatted into a dartdoc '
              'comment block. It will be broken down into multiple lines, each '
              'not exceeding the wrapLength of 80 characters.',
        ]),
      ).equals('''
/// This is a long text that needs to be formatted into a dartdoc comment block.
///
/// It will be broken down into multiple lines, each not exceeding the
/// wrapLength of 80 characters.
const f = true;''');

      check(
        createFieldInsideClass([
          'This is a long text that needs to be formatted into a dartdoc '
              'comment block. It will be broken down into multiple lines, each '
              'not exceeding the wrapLength of 78 characters.',
        ]),
      ).equals('''
class C {
  /// This is a long text that needs to be formatted into a dartdoc comment
  /// block.
  ///
  /// It will be broken down into multiple lines, each not exceeding the
  /// wrapLength of 78 characters.
  const f = true;
}
''');

      check(
        createField([
          'Enables clients to get pointers to other interfaces on a given '
              'object through the QueryInterface method, and manage the '
              'existence of the object through the AddRef and Release '
              'methods.',
          '',
          'To learn more, see '
              '<https://learn.microsoft.com/windows/win32/api/unknwn/nn-unknwn-iunknown>.',
          '',
          '{@category com}',
        ]),
      ).equals('''
/// Enables clients to get pointers to other interfaces on a given object
/// through the QueryInterface method, and manage the existence of the object
/// through the AddRef and Release methods.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/unknwn/nn-unknwn-iunknown>.
///
/// {@category com}
const f = true;''');
    });
  });
}
