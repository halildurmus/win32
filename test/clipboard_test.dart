@TestOn('windows')
library;

import 'package:checks/checks.dart';
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

    test('formats', () {
      check(Clipboard.formats).isEmpty();
      check(Clipboard.setText('win32_clipboard')).isTrue();
      check(Clipboard.formats).which((it) => it
        ..length.isGreaterOrEqual(4)
        ..contains(ClipboardFormat.text)
        ..contains(const ClipboardFormat(CLIPBOARD_FORMAT.CF_UNICODETEXT,
            name: 'CF_UNICODETEXT'))
        ..contains(
            const ClipboardFormat(CLIPBOARD_FORMAT.CF_TEXT, name: 'CF_TEXT'))
        ..contains(const ClipboardFormat(CLIPBOARD_FORMAT.CF_LOCALE,
            name: 'CF_LOCALE'))
        ..contains(const ClipboardFormat(CLIPBOARD_FORMAT.CF_OEMTEXT,
            name: 'CF_OEMTEXT')));
    });

    test('getData', () {
      check(Clipboard.setData('win32_clipboard', format: ClipboardFormat.text))
          .isTrue();
      check(Clipboard.getData(ClipboardFormat.text))
          .isNotNull()
          .equals('win32_clipboard');
    });

    test('getPriorityFormat', () {
      const formats = [
        ClipboardFormat.text,
        ClipboardFormat(CLIPBOARD_FORMAT.CF_LOCALE),
        ClipboardFormat(CLIPBOARD_FORMAT.CF_TEXT),
        ClipboardFormat(CLIPBOARD_FORMAT.CF_OEMTEXT),
      ];

      check(Clipboard.getPriorityFormat(formats)).isNull();
      check(Clipboard.setText('win32_clipboard')).isTrue();
      check(Clipboard.getPriorityFormat(formats))
          .isNotNull()
          .equals(ClipboardFormat.text);
      check(Clipboard.getPriorityFormat(formats.reversed.toList()))
          .isNotNull()
          .equals(const ClipboardFormat(CLIPBOARD_FORMAT.CF_OEMTEXT));
    });

    test('getText', () {
      check(Clipboard.getText()).isNull();
      check(Clipboard.setText('win32_clipboard')).isTrue();
      check(Clipboard.getText()).isNotNull().equals('win32_clipboard');
    });

    test('hasFormat', () {
      check(Clipboard.hasFormat(ClipboardFormat.text)).isFalse();
      check(Clipboard.setText('win32_clipboard')).isTrue();
      check(Clipboard.hasFormat(ClipboardFormat.text)).isTrue();
      check(Clipboard.hasFormat(
              const ClipboardFormat(CLIPBOARD_FORMAT.CF_TEXT)))
          .isTrue();
      check(Clipboard.hasFormat(
              const ClipboardFormat(CLIPBOARD_FORMAT.CF_LOCALE)))
          .isTrue();
      check(Clipboard.hasFormat(
              const ClipboardFormat(CLIPBOARD_FORMAT.CF_OEMTEXT)))
          .isTrue();
      check(Clipboard.hasFormat(
              const ClipboardFormat(CLIPBOARD_FORMAT.CF_BITMAP)))
          .isFalse();
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
      // CF_LOCALE, CF_TEXT, CF_OEMTEXT
      check(Clipboard.numberOfFormats).isGreaterOrEqual(4);
    });

    test('registerFormat', () {
      final formatId = Clipboard.registerFormat('CF_DARTWIN32');
      check(formatId).not((it) => it.equals(0));
      check(Clipboard.setData('win32_clipboard',
              format: ClipboardFormat(formatId)))
          .isTrue();
      check(Clipboard.hasFormat(ClipboardFormat(formatId))).isTrue();
    });

    test('setData', () {
      final formatId = Clipboard.registerFormat('CF_DARTWIN32');
      check(formatId).not((it) => it.equals(0));
      check(Clipboard.setData('win32_clipboard',
              format: ClipboardFormat(formatId)))
          .isTrue();
      check(Clipboard.getData(ClipboardFormat(formatId)))
          .isNotNull()
          .equals('win32_clipboard');
    });

    test('setText', () {
      check(Clipboard.setText('win32_clipboard')).isTrue();
      check(Clipboard.getText()).isNotNull().equals('win32_clipboard');
    });

    tearDownAll(Clipboard.clear);
  });
}
