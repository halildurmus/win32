@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32_registry/win32_registry.dart';

void main() {
  group('Transaction', () {
    test('constructor creates transaction successfully', () {
      final tx = Transaction();
      check(tx.isClosed).isFalse();
      tx.close();
      check(tx.isClosed).isTrue();
    });

    group('commit()', () {
      test('commits successfully when open', () {
        final tx = Transaction();
        check(tx.commit).returnsNormally();
        tx.close();
      });

      test('throws if already closed', () {
        final tx = Transaction()..close();
        check(tx.commit).throws<StateError>();
      });
    });

    group('close()', () {
      test('throws if closed twice', () {
        final tx = Transaction()..close();
        check(tx.close).throws<StateError>();
      });

      test('without commit does not throw', () {
        final tx = Transaction();
        check(tx.close).returnsNormally();
        check(tx.isClosed).isTrue();
      });
    });
  });
}
