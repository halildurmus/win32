import 'package:checks/checks.dart';
import 'package:code_builder/code_builder.dart' as cb;
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';

class TestProjection extends Projection with ProjectionMixin {
  const TestProjection({
    super.formatCode,
    super.trailingNewline,
    this.docs = const ['{@category callback}'],
  });

  final List<String> docs;

  @override
  cb.Spec generate() => cb.TypeDef(
    (b) => b
      ..docs.addAll(docs)
      ..name = 'FONTENUMPROC'
      ..definition = const cb.CodeExpression(
        cb.Code(
          'Int32 Function(Pointer<LOGFONT> param0, '
          'Pointer<TEXTMETRIC> param1, '
          'Uint32 param2, '
          'LPARAM param3)',
        ),
      ),
  );

  @override
  String get debugName => 'TestProjection';
}

void main() {
  setUpAll(WindowsMetadata.load);

  group('Projection', () {
    group('toString()', () {
      test('formatCode: false, trailingNewline: false', () {
        const projection = TestProjection(
          formatCode: false,
          trailingNewline: false,
        );
        check(projection.toString()).equals(
          '''
/// {@category callback}
typedef FONTENUMPROC = Int32 Function(Pointer<LOGFONT> param0, Pointer<TEXTMETRIC> param1, Uint32 param2, LPARAM param3);''',
        );
      });

      test('formatCode: false, trailingNewline: true', () {
        const projection = TestProjection(formatCode: false);
        check(projection.toString()).equals('''
/// {@category callback}
typedef FONTENUMPROC = Int32 Function(Pointer<LOGFONT> param0, Pointer<TEXTMETRIC> param1, Uint32 param2, LPARAM param3);
''');
      });

      test('formatCode: true', () {
        const projection = TestProjection();
        check(projection.toString()).equals('''
/// {@category callback}
typedef FONTENUMPROC =
    Int32 Function(
      Pointer<LOGFONT> param0,
      Pointer<TEXTMETRIC> param1,
      Uint32 param2,
      LPARAM param3,
    );
''');
      });
    });
  });

  group('ProjectionMixin', () {
    test('generateApiDocs', () {
      const projection = TestProjection();
      final apiDetails = callbackDocs['FONTENUMPROC'];
      check(apiDetails).isNotNull();
      final apiDocs = projection.generateApiDocs(
        apiDetails,
        row: WindowsMetadata.findTypeDefByName('FONTENUMPROCW'),
        category: 'callback',
      );
      check(apiDocs).deepEquals([
        'An application defined callback function used with the EnumFontFamilies function.',
        '',
        'To learn more, see <https://learn.microsoft.com/previous-versions/dd162621(v=vs.85)>.',
        '',
        '{@category callback}',
      ]);
    });

    test('generateGuidParameters', () {
      const guid = [
        // SpellCheckerFactory
        2058577491, 6038, 18507, 189, 250, 231, 79, 29, 183, 193, 220,
      ];
      const projection = TestProjection();
      final parameters = projection.generateGuidParameters(guid);
      check(parameters.map((p) => p.accept(DartEmitter())).join(', ')).equals(
        '0x7ab36653, 0x1796, 0x484b, '
        'Uint8List.fromList(const [0xbd, 0xfa, 0xe7, 0x4f, 0x1d, 0xb7, 0xc1, 0xdc])',
      );
    });

    test('generatePreferInlineAnnotation', () {
      final annotation = generatePreferInlineAnnotation();
      check(
        annotation.accept(DartEmitter()).toString(),
      ).equals("pragma('vm:prefer-inline')");
    });
  });
}
