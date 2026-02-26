@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:win32_clipboard/win32_clipboard.dart';

void main() {
  group('Clipboard', () {
    setUpAll(LeakTracker.enableInDebug);

    setUp(() {
      Clipboard.clear();
      LeakTracker.reset();
    });

    tearDown(LeakTracker.verifyNoLeaksInDebug);

    tearDownAll(Clipboard.clear);

    test('clear', () {
      check(Clipboard.setText('win32_clipboard')).isTrue();
      check(Clipboard.isEmpty).isFalse();
      check(Clipboard.clear()).isTrue();
      check(Clipboard.isEmpty).isTrue();
    });

    group('formats', () {
      test('custom format', () {
        final format = Clipboard.registerFormat('win32_clipboard PointerData');
        check(format.id).not((it) => it.equals(0));
        check(format.name).equals('win32_clipboard PointerData');
        final ptr = calloc<Uint8>()..value = 10;
        check(
          Clipboard.setData(ClipboardData.pointer(ptr, 1, format)),
        ).isTrue();
        free(ptr);
        check(Clipboard.formats).deepEquals([format]);
      });

      test('UnicodeText', () {
        check(Clipboard.formats).isEmpty();
        check(Clipboard.setText('🌍 win32_clipboard 🚀')).isTrue();
        check(Clipboard.formats).which(
          (it) => it
            ..length.isGreaterOrEqual(4)
            ..contains(const .new(CF_LOCALE, 'CF_LOCALE'))
            ..contains(const .new(CF_OEMTEXT, 'CF_OEMTEXT'))
            ..contains(const .new(CF_TEXT, 'CF_TEXT'))
            ..contains(.unicodeText),
        );
      });
    });

    group('getData', () {
      test('FileList', () {
        check(
          Clipboard.setData(const .fileList([r'c:\src\a.dart', r'd:\b.txt'])),
        ).isTrue();
        check(
          Clipboard.getData(.fileList),
        ).isNotNull().equals(const .fileList([r'c:\src\a.dart', r'd:\b.txt']));
      });

      test('Pointer', () {
        final format = Clipboard.registerFormat('win32_clipboard PointerData');
        check(format.id).not((it) => it.equals(0));
        check(format.name).equals('win32_clipboard PointerData');
        final ptr = calloc<Uint8>(5)
          ..[0] = 10
          ..[1] = 20
          ..[2] = 30
          ..[3] = 40
          ..[4] = 50;
        check(Clipboard.setData(.pointer(ptr, 5, format))).isTrue();
        free(ptr);
        final data = Clipboard.getData(format);
        check(data).isA<PointerData>();
        check(data!.format).equals(format);
        final PointerData(:pointer, :lengthInBytes) = data as PointerData;
        final bytes = pointer.asTypedList(lengthInBytes);
        check(bytes).deepEquals([10, 20, 30, 40, 50]);
      });

      test('UnicodeText', () {
        check(
          Clipboard.setData(const .unicodeText('🌍 win32_clipboard 🚀')),
        ).isTrue();
        check(
          Clipboard.getData(.unicodeText),
        ).isNotNull().equals(const .unicodeText('🌍 win32_clipboard 🚀'));
      });
    });

    group('setData', () {
      test('FileList', () {
        check(
          Clipboard.setData(const .fileList([r'c:\src\a.dart', r'd:\b.txt'])),
        ).isTrue();
        check(
          Clipboard.getData(.fileList),
        ).isNotNull().equals(const .fileList([r'c:\src\a.dart', r'd:\b.txt']));
      });

      test('Pointer', () {
        final format = Clipboard.registerFormat('win32_clipboard PointerData');
        check(format.id).not((it) => it.equals(0));
        check(format.name).equals('win32_clipboard PointerData');
        final ptr = calloc<Uint8>(5)
          ..[0] = 10
          ..[1] = 20
          ..[2] = 30
          ..[3] = 40
          ..[4] = 50;
        check(Clipboard.setData(.pointer(ptr, 5, format))).isTrue();
        free(ptr);
        final data = Clipboard.getData(format);
        check(data).isA<PointerData>();
        check(data!.format).equals(format);
        final PointerData(:pointer, :lengthInBytes) = data as PointerData;
        final bytes = pointer.asTypedList(lengthInBytes);
        check(bytes).deepEquals([10, 20, 30, 40, 50]);
      });

      test('UnicodeText', () {
        check(
          Clipboard.setData(const .unicodeText('🌍 win32_clipboard 🚀')),
        ).isTrue();
        check(
          Clipboard.getData(.unicodeText),
        ).isNotNull().equals(const .unicodeText('🌍 win32_clipboard 🚀'));
      });
    });

    test('getFileList', () {
      check(Clipboard.getFileList()).isEmpty();
      check(Clipboard.setFileList([r'c:\src\a.dart', r'd:\b.txt'])).isTrue();
      check(
        Clipboard.getFileList(),
      ).deepEquals([r'c:\src\a.dart', r'd:\b.txt']);
    });

    test('setFileList', () {
      check(() => Clipboard.setFileList(const []))
          .throws()
          .isA<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals('Cannot be empty');
      check(Clipboard.setFileList([r'c:\src\a.dart', r'd:\b.txt'])).isTrue();
      check(
        Clipboard.getFileList(),
      ).deepEquals([r'c:\src\a.dart', r'd:\b.txt']);
    });

    test('getText', () {
      check(Clipboard.getText()).isNull();
      check(Clipboard.setText('🌍 win32_clipboard 🚀')).isTrue();
      check(Clipboard.getText()).isNotNull().equals('🌍 win32_clipboard 🚀');
    });

    test('setText', () {
      check(Clipboard.setText('🌍 win32_clipboard 🚀')).isTrue();
      check(Clipboard.getText()).isNotNull().equals('🌍 win32_clipboard 🚀');
    });

    test('getPriorityFormat', () {
      const formats = [
        ClipboardFormat.unicodeText,
        ClipboardFormat(CF_TEXT, 'CF_TEXT'),
        ClipboardFormat(CF_LOCALE, 'CF_LOCALE'),
        ClipboardFormat(CF_OEMTEXT, 'CF_OEMTEXT'),
      ];
      check(Clipboard.getPriorityFormat(formats)).isNull();
      check(Clipboard.setText('win32_clipboard')).isTrue();
      check(
        Clipboard.getPriorityFormat(formats),
      ).isNotNull().equals(.unicodeText);
      check(
        Clipboard.getPriorityFormat(formats.reversed.toList()),
      ).isNotNull().equals(const .new(CF_OEMTEXT, 'CF_OEMTEXT'));
    });

    test('hasFormat', () {
      check(Clipboard.hasFormat(.unicodeText)).isFalse();
      check(Clipboard.setText('win32_clipboard')).isTrue();
      check(Clipboard.hasFormat(const .new(CF_LOCALE, 'CF_LOCALE'))).isTrue();
      check(Clipboard.hasFormat(const .new(CF_OEMTEXT, 'CF_OEMTEXT'))).isTrue();
      check(Clipboard.hasFormat(const .new(CF_TEXT, 'CF_TEXT'))).isTrue();
      check(Clipboard.hasFormat(.unicodeText)).isTrue();
      check(Clipboard.hasFormat(.fileList)).isFalse();
    });

    test('hasFileList', () {
      check(Clipboard.hasFileList).isFalse();
      check(Clipboard.setFileList([r'c:\src\a.dart', r'd:\b.txt'])).isTrue();
      check(Clipboard.hasFileList).isTrue();
    });

    test('hasText', () {
      check(Clipboard.hasText).isFalse();
      check(Clipboard.setText('win32_clipboard')).isTrue();
      check(Clipboard.hasText).isTrue();
    });

    test('isEmpty', () {
      check(Clipboard.isEmpty).isTrue();
      check(Clipboard.setText('win32_clipboard')).isTrue();
      check(Clipboard.isEmpty).isFalse();
    });

    test('numberOfFormats', () {
      check(Clipboard.setText('win32_clipboard')).isTrue();
      // There should be at least four formats present: CF_UNICODETEXT,
      // CF_LOCALE, CF_TEXT, CF_OEMTEXT.
      check(Clipboard.numberOfFormats).isGreaterOrEqual(4);
    });

    test('registerFormat', () {
      final format = Clipboard.registerFormat('win32_clipboard PointerData');
      check(format.id).not((it) => it.equals(0));
      check(format.name).equals('win32_clipboard PointerData');
      final ptr = calloc<Uint8>()..value = 10;
      check(Clipboard.setData(.pointer(ptr, 1, format))).isTrue();
      free(ptr);
      check(Clipboard.hasFormat(format)).isTrue();
      final data = Clipboard.getData(format);
      check(data).isA<PointerData>();
      check(data!.format).equals(format);
      final PointerData(:pointer, :lengthInBytes) = data as PointerData;
      final bytes = pointer.asTypedList(lengthInBytes);
      check(bytes).deepEquals([10]);
    });
  });
}
