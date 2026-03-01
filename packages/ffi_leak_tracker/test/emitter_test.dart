import 'dart:io';

import 'package:checks/checks.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';

class FakeStdout implements Stdout {
  const FakeStdout(this.buffer);

  final StringBuffer buffer;

  @override
  void write(Object? obj) => buffer.write(obj);

  @override
  bool get supportsAnsiEscapes => false;

  @override
  dynamic noSuchMethod(Invocation i) => super.noSuchMethod(i);
}

void main() {
  group('JsonEmitter', () {
    test('writes valid JSON file', () {
      final file = File('${Directory.systemTemp.path}/leaks_test.json');
      addTearDown(() {
        if (file.existsSync()) file.deleteSync();
      });
      final leaks = <Allocation>[
        .new(
          size: 10,
          address: 1,
          type: 'T',
          timestamp: DateTime.utc(2020),
          stack: 's',
        ),
      ];
      JsonEmitter(filePath: file.path).emit(leaks);
      final content = file.readAsStringSync();
      check(content)
        ..contains(r'\"address\": 1')
        ..contains(r'\"type\": \"T\"')
        ..contains(r'\"size\": 10')
        ..contains(r'\"timestamp\": \"2020-01-01T00:00:00.000Z\"')
        ..contains(r'\"stack\": \"s\"');
    });

    test('writes empty list if no leaks', () {
      final file = File('${Directory.systemTemp.path}/leaks_empty.json');
      addTearDown(() {
        if (file.existsSync()) file.deleteSync();
      });
      JsonEmitter(filePath: file.path).emit(const []);
      check(file.readAsStringSync()).equals('[]');
    });
  });

  group('PrintEmitter', () {
    String captureStdout(void Function() body) {
      final buffer = StringBuffer();
      IOOverrides.runZoned(body, stdout: () => FakeStdout(buffer));
      return buffer.toString();
    }

    test('prints no-leaks status', () {
      final output = captureStdout(() => const PrintEmitter().emit(const []));
      check(output)
        ..contains('Native Memory Leak Analysis')
        ..contains('NO LEAKS DETECTED');
    });

    test('prints leak summary and sorts by size desc', () {
      final leaks = <Allocation>[
        .new(
          size: 10,
          address: 1,
          type: 'Small',
          timestamp: .now(),
          stack: 'a',
        ),
        .new(size: 100, address: 2, type: 'Big', timestamp: .now(), stack: 'b'),
      ];

      final output = captureStdout(() => const PrintEmitter().emit(leaks));
      check(output)
        ..contains('LEAKS DETECTED')
        ..contains('Count   : 2')
        ..contains('Largest :');

      // sorted check: "Big" must appear before "Small"
      check(output.indexOf('Big')).isLessThan(output.indexOf('Small'));
    });

    test('prints stack lines', () {
      final leaks = <Allocation>[
        .new(
          size: 1,
          address: 1,
          type: 'T',
          timestamp: .now(),
          stack: 'line1\nline2',
        ),
      ];
      final output = captureStdout(() => const PrintEmitter().emit(leaks));
      check(output)
        ..contains('line1')
        ..contains('line2');
    });
  });
}
