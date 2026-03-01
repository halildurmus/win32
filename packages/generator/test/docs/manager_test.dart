import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('DocsManager', () {
    test('load combines documentation from multiple sources', () async {
      // Create documentation maps for a normal source and a predefined source.
      const normalDocs = <String, ApiDetails>{
        'normal_key': .new(apiName: 'normal_doc', description: 'normal_doc'),
        // In a conflict, the predefined documentation should override.
        'conflict': .new(
          apiName: 'normal_conflict',
          description: 'normal_conflict',
        ),
      };
      const predefinedDocs = <String, ApiDetails>{
        'pre_key': .new(
          apiName: 'predefined_doc',
          description: 'predefined_doc',
        ),
        'conflict': .new(
          apiName: 'predefined_conflict',
          description: 'predefined_conflict',
        ),
      };

      // Create one normal source and one predefined source.
      // (We use the provided [PredefinedDocsSource] for predefined docs.)
      const sources = [
        FakeDocsSource(normalDocs),
        PredefinedDocsSource(predefinedDocs),
      ];

      final docsManager = await DocsManager.load(sources);

      // When looking up by identifier, predefined docs take precedence.
      check(docsManager.documentationFromIdentifier('pre_key')).equals(
        const .new(apiName: 'predefined_doc', description: 'predefined_doc'),
      );
      // Normal documentation is returned if no predefined doc exists.
      check(
        docsManager.documentationFromIdentifier('normal_key'),
      ).equals(const .new(apiName: 'normal_doc', description: 'normal_doc'));
      // In a key conflict, the predefined version wins.
      check(docsManager.documentationFromIdentifier('conflict')).equals(
        const .new(
          apiName: 'predefined_conflict',
          description: 'predefined_conflict',
        ),
      );
      // A missing identifier returns null.
      check(docsManager.documentationFromIdentifier('missing')).isNull();
    });

    test(
      'documentationFromIdentifier throws ArgumentError for empty identifier',
      () async {
        const sources = [
          FakeDocsSource({
            'some_key': .new(apiName: 'some_doc', description: 'some_doc'),
          }),
        ];
        final docsManager = await DocsManager.load(sources);
        check(
          () => docsManager.documentationFromIdentifier(''),
        ).throws<ArgumentError>();
      },
    );
  });
}
