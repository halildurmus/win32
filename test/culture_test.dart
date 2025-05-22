import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('Culture', () {
    test('creates valid Culture instances', () {
      check(() => Culture('en-US')).returnsNormally();
      check(() => Culture('en-us')).returnsNormally();
    });

    test('is case-insensitive', () {
      check(Culture.isValidCulture('en-us')).isTrue();
      check(Culture.isValidCulture('eN-uS')).isTrue();
      check(Culture.isValidCulture('EN-US')).isTrue();
    });

    test('throws on invalid culture code', () {
      check(() => Culture('xx-yy'))
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals('Invalid culture');
    });
  });
}
