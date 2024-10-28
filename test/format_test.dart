import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:win32_clipboard/win32_clipboard.dart';

void main() {
  group('ClipboardFormat', () {
    test('fileList', () {
      const format = ClipboardFormat.fileList;
      check(format.id).equals(CLIPBOARD_FORMAT.CF_HDROP);
      check(format.name).equals('CF_HDROP');
      check(format.toString()).equals('ClipboardFormat(15, CF_HDROP)');
    });

    test('unicodeText', () {
      const format = ClipboardFormat.unicodeText;
      check(format.id).equals(CLIPBOARD_FORMAT.CF_UNICODETEXT);
      check(format.name).equals('CF_UNICODETEXT');
      check(format.toString()).equals('ClipboardFormat(13, CF_UNICODETEXT)');
    });
  });
}
