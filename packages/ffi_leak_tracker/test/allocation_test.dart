import 'package:checks/checks.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Allocation', () {
    group('fromJson — success cases', () {
      test('parses valid JSON', () {
        const json = '''
{
  "address": 4660,
  "size": 32,
  "type": "Buffer",
  "timestamp": "2025-01-01T12:00:00.000Z",
  "stack": "#0 main"
}
''';
        final allocation = Allocation.fromJson(json);
        check(allocation.address).equals(4660);
        check(allocation.size).equals(32);
        check(allocation.type).equals('Buffer');
        check(allocation.stack).equals('#0 main');
        check(
          allocation.timestamp,
        ).equals(DateTime.parse('2025-01-01T12:00:00.000Z'));
      });

      test('round trip JSON', () {
        final original = Allocation(
          address: 1,
          size: 2,
          type: 'T',
          timestamp: DateTime.utc(2020, 1, 5),
          stack: 'trace',
        );
        final decoded = Allocation.fromJson(original.toJson());
        check(decoded.address).equals(original.address);
        check(decoded.size).equals(original.size);
        check(decoded.type).equals(original.type);
        check(decoded.stack).equals(original.stack);
        check(decoded.timestamp).equals(original.timestamp);
      });
    });

    group('fromJson — structural validation', () {
      test('throws if JSON invalid', () {
        check(
          () => Allocation.fromJson('{invalid json'),
        ).throws<FormatException>();
      });

      test('throws if root not map', () {
        check(() => Allocation.fromJson('[]')).throws<FormatException>();
      });

      test('missing field', () {
        const json = '''
{
  "address": 1,
  "size": 2,
  "type": "X",
  "timestamp": "2020-01-01T00:00:00Z"
}
''';
        check(() => Allocation.fromJson(json)).throws<FormatException>();
      });

      test('wrong type', () {
        const json = '''
{
  "address": "not int",
  "size": 2,
  "type": "X",
  "timestamp": "2020-01-01T00:00:00Z",
  "stack": ""
}
''';
        check(() => Allocation.fromJson(json)).throws<FormatException>();
      });

      test('invalid timestamp', () {
        const json = '''
{
  "address": 1,
  "size": 2,
  "type": "X",
  "timestamp": "not-a-date",
  "stack": ""
}
''';
        check(() => Allocation.fromJson(json)).throws<FormatException>();
      });
    });

    group('toString', () {
      test('contains all fields', () {
        final allocation = Allocation(
          address: 0xABCD,
          size: 64,
          type: 'MyType',
          timestamp: DateTime.utc(2024, 5, 1, 12),
          stack: 'trace-line',
        );
        final string = allocation.toString();
        check(string)
          ..contains('━━━━━━━━━━━━ Allocation ━━━━━━━━━━━━')
          ..contains('0x0000abcd')
          ..contains('MyType')
          ..contains('64 B')
          ..contains('trace-line');
      });
    });
  });
}
