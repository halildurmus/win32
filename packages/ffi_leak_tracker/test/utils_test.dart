import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:ffi_leak_tracker/src/utils.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('fillMemory', () {
    test('fills entire buffer', () {
      final ptr = adaptiveCalloc<Uint8>(8);
      fillMemory(ptr, 8, 0xAB);
      final list = ptr.asTypedList(8);
      check(list).deepEquals(List.filled(8, 0xAB));
      adaptiveCalloc.free(ptr);
    });

    test('respects length', () {
      final ptr = adaptiveCalloc<Uint8>(8);
      fillMemory(ptr, 4, 0x11);
      final list = ptr.asTypedList(8);
      check(list.sublist(0, 4)).deepEquals(List.filled(4, 0x11));
      check(list.sublist(4)).deepEquals(List.filled(4, 0));
      adaptiveCalloc.free(ptr);
    });

    test('supports zero length', () {
      final ptr = adaptiveCalloc<Uint8>(4);
      fillMemory(ptr, 0, 0xFF);
      check(ptr.asTypedList(4)).deepEquals(List.filled(4, 0));
      adaptiveCalloc.free(ptr);
    });

    test('works with different byte values', () {
      final ptr = adaptiveCalloc<Uint8>(3);
      fillMemory(ptr, 3, 255);
      check(ptr.asTypedList(3)).deepEquals([255, 255, 255]);
      adaptiveCalloc.free(ptr);
    });
  });

  group('formatAddress', () {
    test('formats zero address', () {
      check(formatAddress(0)).equals('0x00000000');
    });

    test('formats positive address', () {
      check(formatAddress(305419896)).equals('0x12345678');
    });

    test('pads small values', () {
      check(formatAddress(255)).equals('0x000000ff');
    });
  });

  group('formatBytes', () {
    test('bytes only', () {
      check(formatBytes(512)).equals('512 B');
    });

    test('kilobytes', () {
      check(formatBytes(1024)).equals('1.00 KB');
      check(formatBytes(1536)).equals('1.50 KB');
    });

    test('megabytes', () {
      check(formatBytes(1048576)).equals('1.00 MB');
    });

    test('gigabytes', () {
      check(formatBytes(1073741824)).equals('1.00 GB');
    });
  });

  group('formatStackTrace', () {
    const allocatorFrame =
        '#0      DiagnosticCallocAllocator.allocate (package:ffi_leak_tracker/src/allocator.dart:75:3)';

    test('removes allocator frame and renumbers', () {
      const trace =
          '''
$allocatorFrame
#1      foo (file.dart:1:1)
#2      bar (file.dart:2:2)
''';
      final result = formatStackTrace(trace);
      check(result).equals('''
#0      foo (file.dart:1:1)
#1      bar (file.dart:2:2)''');
    });

    test('preserves non-frame lines', () {
      const trace =
          '''
$allocatorFrame
Some async gap
#1      foo (file.dart:1:1)
''';
      final result = formatStackTrace(trace);
      check(result).equals('''
Some async gap
#0      foo (file.dart:1:1)''');
    });

    test('throws assertion if first frame is not allocator', () {
      const trace = '''
#0      something (file.dart:1:1)
#1      foo (file.dart:2:2)
''';
      check(() => formatStackTrace(trace)).throws<AssertionError>();
    });
  });

  group('indent', () {
    test('single line', () {
      check(indent('hello', 2)).equals('  hello');
    });

    test('multiple lines', () {
      check(indent('a\nb', 4)).equals('    a\n    b');
    });

    test('zero indent', () {
      check(indent('text', 0)).equals('text');
    });

    test('empty string', () {
      check(indent('', 3)).equals('   ');
    });
  });
}
