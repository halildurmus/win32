import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';

class TestEmitter implements LeaksEmitter {
  TestEmitter(this.fn);

  final void Function(List<Allocation>) fn;

  @override
  void emit(List<Allocation> leaks) => fn(leaks);
}

Allocation alloc({int address = 1, int size = 1}) => .new(
  address: address,
  size: size,
  type: 'A',
  timestamp: .now(),
  stack: 'stack',
);

void main() {
  setUp(() {
    LeakTracker.disable();
    LeakTracker.reset();
    LeakTracker.clearGlobalFilter();
  });

  group('enable / disable', () {
    test('enable sets enabled=true', () {
      LeakTracker.enable();
      check(LeakTracker.enabled).isTrue();
    });

    test('disable sets enabled=false', () {
      LeakTracker.enable();
      LeakTracker.disable();
      check(LeakTracker.enabled).isFalse();
    });
  });

  group('global filter', () {
    test('default is ignoreNone', () {
      check(LeakTracker.globalFilter.toString()).contains('ignore none');
    });

    test('addGlobalFilter combines filters', () {
      LeakTracker.addGlobalFilter(const .ignoreAll());
      check(LeakTracker.globalFilter).isNotNull();
    });

    test('clearGlobalFilter resets', () {
      LeakTracker.addGlobalFilter(const .ignoreAll());
      LeakTracker.clearGlobalFilter();
      check(LeakTracker.globalFilter.toString()).contains('ignore none');
    });
  });

  group('registry + snapshot', () {
    test('snapshot empty initially', () {
      check(LeakTracker.snapshot).isEmpty();
      check(LeakTracker.hasLeaks).isFalse();
    });

    test('snapshot reflects scoped allocations', () {
      LeakTracker.runScoped(() {
        final ptr = adaptiveCalloc<Uint8>();
        check(LeakTracker.snapshot.length).equals(1);
        check(LeakTracker.hasLeaks).isTrue();
        adaptiveCalloc.free(ptr);
      });
      // Outside scope should be isolated.
      check(LeakTracker.snapshot).isEmpty();
    });

    test('snapshot is unmodifiable', () {
      LeakTracker.runScoped(() {
        final list = LeakTracker.snapshot;
        check(() => list.add(alloc())).throws<UnsupportedError>();
      });
    });
  });

  test('reset clears registry', () {
    LeakTracker.runScoped(() {
      final ptr = adaptiveCalloc<Uint8>();
      check(LeakTracker.snapshot).isNotEmpty();
      LeakTracker.reset();
      check(LeakTracker.snapshot).isEmpty();
      adaptiveCalloc.free(ptr);
    });
  });

  group('runScoped', () {
    test('enables tracking inside scope', () {
      LeakTracker.disable();
      LeakTracker.runScoped(() {
        check(LeakTracker.enabled).isTrue();
      });
      check(LeakTracker.enabled).isFalse();
    });
  });

  group('verifyNoLeaks', () {
    test('does nothing when no leaks', () {
      check(LeakTracker.verifyNoLeaks).returnsNormally(); // should not throw
    });

    test('throws when leaks exist', () {
      LeakTracker.runScoped(() {
        final ptr = adaptiveCalloc<Uint8>();
        check(LeakTracker.verifyNoLeaks).throws<LeakTrackerException>();
        adaptiveCalloc.free(ptr);
      });
    });
  });

  test('emit passes snapshot to emitter', () {
    late List<Allocation> received;
    final emitter = TestEmitter((leaks) => received = leaks);
    LeakTracker.runScoped(() {
      final ptr = adaptiveCalloc<Uint8>();
      LeakTracker.emit(emitter: emitter);
      adaptiveCalloc.free(ptr);
    });
    check(received.length).equals(1);
    check(received[0].address).not((it) => it.equals(0));
    check(received[0].type).equals('Uint8');
  });
}
