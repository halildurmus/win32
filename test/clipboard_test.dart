@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:win32_clipboard/win32_clipboard.dart';

void main() {
  group('Clipboard', () {
    setUp(Clipboard.clear);

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
        check(Clipboard.setData(ClipboardData.pointer(ptr, 1, format)))
            .isTrue();
        free(ptr);
        check(Clipboard.formats).deepEquals([format]);
      });

      test('UnicodeText', () {
        check(Clipboard.formats).isEmpty();
        check(Clipboard.setText('🌍 win32_clipboard 🚀')).isTrue();
        check(Clipboard.formats).which((it) => it
          ..length.isGreaterOrEqual(4)
          ..contains(
              const ClipboardFormat(CLIPBOARD_FORMAT.CF_LOCALE, 'CF_LOCALE'))
          ..contains(
              const ClipboardFormat(CLIPBOARD_FORMAT.CF_OEMTEXT, 'CF_OEMTEXT'))
          ..contains(const ClipboardFormat(CLIPBOARD_FORMAT.CF_TEXT, 'CF_TEXT'))
          ..contains(ClipboardFormat.unicodeText));
      });
    });

    group('getData', () {
      test('FileList', () {
        check(Clipboard.setData(
                const ClipboardData.fileList([r'c:\src\a.dart', r'd:\b.txt'])))
            .isTrue();
        check(Clipboard.getData(ClipboardFormat.fileList)).isNotNull().equals(
            const ClipboardData.fileList([r'c:\src\a.dart', r'd:\b.txt']));
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
        check(Clipboard.setData(ClipboardData.pointer(ptr, 5, format)))
            .isTrue();
        free(ptr);
        final data = Clipboard.getData(format);
        check(data).isA<PointerData>();
        check(data!.format).equals(format);
        final PointerData(:pointer, :lengthInBytes) = data as PointerData;
        final bytes = pointer.asTypedList(lengthInBytes);
        check(bytes).deepEquals([10, 20, 30, 40, 50]);
      });

      test('UnicodeText', () {
        check(Clipboard.setData(
                const ClipboardData.unicodeText('🌍 win32_clipboard 🚀')))
            .isTrue();
        check(Clipboard.getData(ClipboardFormat.unicodeText))
            .isNotNull()
            .equals(const ClipboardData.unicodeText('🌍 win32_clipboard 🚀'));
      });
    });

    group('setData', () {
      test('FileList', () {
        check(Clipboard.setData(
                const ClipboardData.fileList([r'c:\src\a.dart', r'd:\b.txt'])))
            .isTrue();
        check(Clipboard.getData(ClipboardFormat.fileList))
            .isNotNull()
            .equals(const FileListData([r'c:\src\a.dart', r'd:\b.txt']));
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
        check(Clipboard.setData(ClipboardData.pointer(ptr, 5, format)))
            .isTrue();
        free(ptr);
        final data = Clipboard.getData(format);
        check(data).isA<PointerData>();
        check(data!.format).equals(format);
        final PointerData(:pointer, :lengthInBytes) = data as PointerData;
        final bytes = pointer.asTypedList(lengthInBytes);
        check(bytes).deepEquals([10, 20, 30, 40, 50]);
      });

      test('UnicodeText', () {
        check(Clipboard.setData(
                const ClipboardData.unicodeText('🌍 win32_clipboard 🚀')))
            .isTrue();
        check(Clipboard.getData(ClipboardFormat.unicodeText))
            .isNotNull()
            .equals(const UnicodeTextData('🌍 win32_clipboard 🚀'));
      });
    });

    test('getFileList', () {
      check(Clipboard.getFileList()).isEmpty();
      check(Clipboard.setFileList([r'c:\src\a.dart', r'd:\b.txt'])).isTrue();
      check(Clipboard.getFileList())
          .deepEquals([r'c:\src\a.dart', r'd:\b.txt']);
    });

    test('setFileList', () {
      check(() => Clipboard.setFileList(const []))
          .throws()
          .isA<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals('Cannot be empty');
      check(Clipboard.setFileList([r'c:\src\a.dart', r'd:\b.txt'])).isTrue();
      check(Clipboard.getFileList())
          .deepEquals([r'c:\src\a.dart', r'd:\b.txt']);
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
        ClipboardFormat(CLIPBOARD_FORMAT.CF_TEXT, 'CF_TEXT'),
        ClipboardFormat(CLIPBOARD_FORMAT.CF_LOCALE, 'CF_LOCALE'),
        ClipboardFormat(CLIPBOARD_FORMAT.CF_OEMTEXT, 'CF_OEMTEXT'),
      ];
      check(Clipboard.getPriorityFormat(formats)).isNull();
      check(Clipboard.setText('win32_clipboard')).isTrue();
      check(Clipboard.getPriorityFormat(formats))
          .isNotNull()
          .equals(ClipboardFormat.unicodeText);
      check(Clipboard.getPriorityFormat(formats.reversed.toList()))
          .isNotNull()
          .equals(
              const ClipboardFormat(CLIPBOARD_FORMAT.CF_OEMTEXT, 'CF_OEMTEXT'));
    });

    test('hasFormat', () {
      check(Clipboard.hasFormat(ClipboardFormat.unicodeText)).isFalse();
      check(Clipboard.setText('win32_clipboard')).isTrue();
      check(Clipboard.hasFormat(
              const ClipboardFormat(CLIPBOARD_FORMAT.CF_LOCALE, 'CF_LOCALE')))
          .isTrue();
      check(Clipboard.hasFormat(
              const ClipboardFormat(CLIPBOARD_FORMAT.CF_OEMTEXT, 'CF_OEMTEXT')))
          .isTrue();
      check(Clipboard.hasFormat(
              const ClipboardFormat(CLIPBOARD_FORMAT.CF_TEXT, 'CF_TEXT')))
          .isTrue();
      check(Clipboard.hasFormat(ClipboardFormat.unicodeText)).isTrue();
      check(Clipboard.hasFormat(ClipboardFormat.fileList)).isFalse();
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

    group('onDataChanged', () {
      test('emits FileListData when file list data is placed on the clipboard',
          () async {
        final result = <FileListData>[];
        final subscription =
            Clipboard.onDataChanged(ClipboardFormat.fileList).listen((data) {
          if (data is FileListData) result.add(data);
        });

        // Allow time for the subscription to be set up.
        await Future.delayed(const Duration(milliseconds: 50));

        // Set some file list data to the clipboard to simulate a change.
        const data = FileListData([r'c:\src\a.dart', r'd:\b.txt']);
        check(Clipboard.setData(data)).isTrue();

        // Yield control to the Dart event loop to allow time for the clipboard
        // change to be detected.
        await Future.delayed(const Duration(milliseconds: 1));

        // Expect the stream to emit the FileListData.
        check(result.isNotEmpty).isTrue();
        check(result.first).equals(data);

        await subscription.cancel();
      });

      test('emits PointerData when pointer data is placed on the clipboard',
          () async {
        final format = Clipboard.registerFormat('win32_clipboard PointerData');
        check(format.id).not((it) => it.equals(0));
        final result = <PointerData>[];
        final subscription = Clipboard.onDataChanged(format).listen((data) {
          if (data is PointerData) result.add(data);
        });

        // Allow time for the subscription to be set up.
        await Future.delayed(const Duration(milliseconds: 50));

        // Set some pointer data to the clipboard to simulate a change.
        final ptr = calloc<Uint8>()..value = 10;
        final data = PointerData(ptr, 1, format);
        check(Clipboard.setData(data)).isTrue();
        free(ptr);

        // Yield control to the Dart event loop to allow time for the clipboard
        // change to be detected.
        await Future.delayed(const Duration(milliseconds: 1));

        // Expect the stream to emit the PointerData.
        check(result.isNotEmpty).isTrue();
        check(result.first)
          ..has((p) => p.pointer, 'pointer')
              .has((p) => p.address, 'address')
              .not((it) => it.equals(0))
          ..has((p) => p.lengthInBytes, 'lengthInBytes').equals(1)
          ..has((p) => p.format, 'format').equals(format);

        await subscription.cancel();
      });

      test('emits UnicodeTextData when text data is placed on the clipboard',
          () async {
        final result = <UnicodeTextData>[];
        final subscription =
            Clipboard.onDataChanged(ClipboardFormat.unicodeText).listen((data) {
          if (data is UnicodeTextData) result.add(data);
        });

        // Allow time for the subscription to be set up.
        await Future.delayed(const Duration(milliseconds: 50));

        // Set some text data to the clipboard to simulate a change.
        const data = UnicodeTextData('Hello, Clipboard!');
        check(Clipboard.setData(data)).isTrue();

        // Yield control to the Dart event loop to allow time for the clipboard
        // change to be detected.
        await Future.delayed(const Duration(milliseconds: 1));

        // Expect the stream to emit the UnicodeTextData.
        check(result.isNotEmpty).isTrue();
        check(result.first).equals(data);

        await subscription.cancel();
      });
    });

    group('onFileListChanged', () {
      test('emits file list when file list data is placed on the clipboard',
          () async {
        final result = <List<String>>[];
        final subscription = Clipboard.onFileListChanged.listen(result.add);

        // Allow time for the subscription to be set up.
        await Future.delayed(const Duration(milliseconds: 50));

        // Set some file list data to the clipboard to simulate a change.
        const files = [r'c:\src\a.dart', r'd:\b.txt'];
        check(Clipboard.setFileList(files)).isTrue();

        // Yield control to the Dart event loop to allow time for the clipboard
        // change to be detected.
        await Future.delayed(const Duration(milliseconds: 1));

        // Expect the stream to emit the file list data.
        check(result.isNotEmpty).isTrue();
        check(result.first).deepEquals(files);

        await subscription.cancel();
      });
    });

    group('onTextChanged', () {
      test('emits string when text data is placed on the clipboard', () async {
        final result = <String>[];
        final subscription = Clipboard.onTextChanged.listen(result.add);

        // Allow time for the subscription to be set up.
        await Future.delayed(const Duration(milliseconds: 50));

        // Set some text data to the clipboard to simulate a change.
        const text = 'Hello, Clipboard!';
        check(Clipboard.setText(text)).isTrue();

        // Yield control to the Dart event loop to allow time for the clipboard
        // change to be detected.
        await Future.delayed(const Duration(milliseconds: 1));

        // Expect the stream to emit the text data.
        check(result.isNotEmpty).isTrue();
        check(result.first).equals(text);

        await subscription.cancel();
      });
    });

    test('registerFormat', () {
      final format = Clipboard.registerFormat('win32_clipboard PointerData');
      check(format.id).not((it) => it.equals(0));
      check(format.name).equals('win32_clipboard PointerData');
      final ptr = calloc<Uint8>()..value = 10;
      check(Clipboard.setData(ClipboardData.pointer(ptr, 1, format))).isTrue();
      free(ptr);
      check(Clipboard.hasFormat(format)).isTrue();
      final data = Clipboard.getData(format);
      check(data).isA<PointerData>();
      check(data!.format).equals(format);
      final PointerData(:pointer, :lengthInBytes) = data as PointerData;
      final bytes = pointer.asTypedList(lengthInBytes);
      check(bytes).deepEquals([10]);
    });

    tearDownAll(Clipboard.clear);
  });
}
