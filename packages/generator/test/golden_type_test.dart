import 'package:checks/checks.dart';
import 'package:generator/src/golden_type.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('GoldenType', () {
    test('GoldenType values have unique directory names', () {
      final directoryNames = GoldenType.values
          .map((e) => e.directoryName)
          .toSet();
      check(directoryNames.length).equals(GoldenType.values.length);
    });

    test(
      'fromDirectoryName correctly maps valid directory names to GoldenType',
      () {
        for (final type in GoldenType.values) {
          check(GoldenType.fromDirectoryName(type.directoryName)).equals(type);
        }
      },
    );

    test(
      'fromDirectoryName throws ArgumentError for invalid directory names',
      () {
        const invalidDirectoryName = 'invalid_directory';
        check(() => GoldenType.fromDirectoryName(invalidDirectoryName))
            .throws<ArgumentError>()
            .has((e) => e.message, 'message')
            .isA<String>()
            .startsWith('Invalid directory name.');
      },
    );

    test('toString returns the correct directory name', () {
      for (final type in GoldenType.values) {
        check(type.toString()).equals(type.directoryName);
      }
    });
  });
}
