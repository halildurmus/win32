import 'package:checks/checks.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';

Allocation alloc({int address = 1, String type = 'A', String stack = ''}) =>
    .new(
      address: address,
      size: 1,
      type: type,
      stack: stack,
      timestamp: .now(),
    );

void main() {
  group('LeakFilter', () {
    group('Primitives', () {
      test('ignore none', () {
        const f = LeakFilter.ignoreNone();
        check(f.ignore(alloc())).isFalse();
      });

      test('ignore all', () {
        const f = LeakFilter.ignoreAll();
        check(f.ignore(alloc())).isTrue();
      });

      test('address filter', () {
        final f = LeakFilter.ignoreAddresses({1, 2});
        check(f.ignore(alloc())).isTrue();
        check(f.ignore(alloc(address: 3))).isFalse();
      });

      test('type filter', () {
        final f = LeakFilter.ignoreTypes({'A', 'B'});
        check(f.ignore(alloc())).isTrue();
        check(f.ignore(alloc(type: 'Z'))).isFalse();
      });

      test('stack filter', () {
        const f = LeakFilter.ignoreStackContains('foo');
        check(f.ignore(alloc(stack: 'foo bar'))).isTrue();
        check(f.ignore(alloc(stack: 'zzz'))).isFalse();
      });
    });

    group('Canonical set normalization', () {
      test('addresses order independent equality', () {
        final a = LeakFilter.ignoreAddresses({1, 2});
        final b = LeakFilter.ignoreAddresses({2, 1});
        check(a).equals(b);
        check(a.hashCode).equals(b.hashCode);
      });

      test('types order independent equality', () {
        final a = LeakFilter.ignoreTypes({'A', 'B'});
        final b = LeakFilter.ignoreTypes({'B', 'A'});
        check(a).equals(b);
        check(a.hashCode).equals(b.hashCode);
      });
    });

    group('Boolean algebra identities', () {
      final A = LeakFilter.ignoreTypes({'A'});

      test('identity AND', () {
        check(A & const .ignoreAll()).equals(A);
      });

      test('identity OR', () {
        check(A | const .ignoreNone()).equals(A);
      });

      test('annihilator AND', () {
        check(A & const .ignoreNone()).equals(const .ignoreNone());
      });

      test('annihilator OR', () {
        check(A | const .ignoreAll()).equals(const .ignoreAll());
      });

      test('idempotent AND', () {
        check(A & A).equals(A);
      });

      test('idempotent OR', () {
        check(A | A).equals(A);
      });

      test('double negation', () {
        check(A.not().not()).equals(A);
      });
    });

    group('Commutativity', () {
      final A = LeakFilter.ignoreTypes({'A'});
      final B = LeakFilter.ignoreTypes({'B'});

      test('AND commutative', () {
        check(A & B).equals(B & A);
      });

      test('OR commutative', () {
        check(A | B).equals(B | A);
      });
    });

    group('Associativity', () {
      final A = LeakFilter.ignoreTypes({'A'});
      final B = LeakFilter.ignoreTypes({'B'});
      final C = LeakFilter.ignoreTypes({'C'});

      test('AND associative', () {
        check((A & B) & C).equals(A & (B & C));
      });

      test('OR associative', () {
        check((A | B) | C).equals(A | (B | C));
      });
    });

    group('De Morgan laws', () {
      final A = LeakFilter.ignoreTypes({'A'});
      final B = LeakFilter.ignoreTypes({'B'});

      test('NOT (A AND B)', () {
        check((A & B).not()).equals(A.not() | B.not());
      });

      test('NOT (A OR B)', () {
        check((A | B).not()).equals(A.not() & B.not());
      });
    });

    group('Flattening', () {
      final A = LeakFilter.ignoreTypes({'A'});
      final B = LeakFilter.ignoreTypes({'B'});
      final C = LeakFilter.ignoreTypes({'C'});

      test('nested AND flattens', () {
        check(A & (B & C)).equals(A & B & C);
      });

      test('nested OR flattens', () {
        check(A | (B | C)).equals(A | B | C);
      });
    });

    group('Duplicate elimination', () {
      final A = LeakFilter.ignoreTypes({'A'});
      final B = LeakFilter.ignoreTypes({'B'});

      test('AND removes duplicates', () {
        check(A & B & A & B).equals(A & B);
      });

      test('OR removes duplicates', () {
        check(A | B | A | B).equals(A | B);
      });
    });

    group('Evaluation correctness', () {
      final A = LeakFilter.ignoreTypes({'A'});
      final B = LeakFilter.ignoreAddresses({1});
      final f = A & B;
      final g = A | B;

      test('true only if both match', () {
        check(f.ignore(alloc())).isTrue();
        check(f.ignore(alloc(address: 2))).isFalse();
        check(f.ignore(alloc(type: 'Z'))).isFalse();
      });

      test('true if either matches', () {
        check(g.ignore(alloc(address: 99))).isTrue();
        check(g.ignore(alloc(type: 'Z'))).isTrue();
        check(g.ignore(alloc(type: 'Z', address: 9))).isFalse();
      });
    });

    group('Structural equality', () {
      test('deep equality AND', () {
        final a = LeakFilter.ignoreTypes({'A'}) & .ignoreAddresses({1});
        final b = LeakFilter.ignoreAddresses({1}) & .ignoreTypes({'A'});
        check(a).equals(b);
        check(a.hashCode).equals(b.hashCode);
      });

      test('deep equality OR', () {
        final a = LeakFilter.ignoreTypes({'A'}) | .ignoreAddresses({1});
        final b = LeakFilter.ignoreAddresses({1}) | .ignoreTypes({'A'});
        check(a).equals(b);
        check(a.hashCode).equals(b.hashCode);
      });
    });

    group('String stability', () {
      test('ordering deterministic', () {
        final a = LeakFilter.ignoreTypes({'B'}) & .ignoreTypes({'A'});
        final b = LeakFilter.ignoreTypes({'A'}) & .ignoreTypes({'B'});
        check(a.toString()).equals(b.toString());
      });
    });
  });
}
