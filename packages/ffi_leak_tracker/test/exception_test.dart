import 'package:checks/checks.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';

Allocation alloc({
  int address = 1,
  int size = 1,
  String type = 'A',
  String stack = 'stack',
}) => .new(
  address: address,
  size: size,
  type: type,
  stack: stack,
  timestamp: .now(),
);

void main() {
  group('LeakTrackerException', () {
    test('count reflects number of leaks', () {
      final exception = LeakTrackerException(
        leaks: [
          alloc(),
          alloc(address: 2, type: 'B'),
        ],
        filter: const .ignoreAll(),
      );
      check(exception.count).equals(2);
    });

    test('totalBytes sums all allocation sizes', () {
      final exception = LeakTrackerException(
        leaks: [
          alloc(size: 2),
          alloc(address: 2, size: 4, type: 'B'),
        ],
        filter: const .ignoreAll(),
      );
      check(exception.totalBytes).equals(6);
    });

    test('toString contains header and summary info', () {
      final exception = LeakTrackerException(
        leaks: [alloc()],
        filter: const .ignoreAll(),
      );
      check(exception.toString())
        ..contains('LeakTrackerException: Native memory leaks detected')
        ..contains('Filter  :')
        ..contains('Leaks   :')
        ..contains('Total   :')
        ..contains('Largest :');
    });

    test('toString lists each leak entry', () {
      final exception = LeakTrackerException(
        leaks: [
          alloc(),
          alloc(address: 2, type: 'B'),
        ],
        filter: const .ignoreAll(),
      );
      check(exception.toString())
        ..contains('A')
        ..contains('B');
    });

    test('throws assertion error if leaks is empty', () {
      check(
        () => LeakTrackerException(leaks: const [], filter: const .ignoreAll()),
      ).throws<AssertionError>();
    });
  });
}
