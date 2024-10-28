import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32_clipboard/win32_clipboard.dart';

void main() {
  group('ClipboardData', () {
    test('FileListData', () {
      const files = [r'c:\src\file1.txt', r'd:\file2.txt'];
      const data1 = FileListData(files);
      check(data1.files).deepEquals(files);
      check(data1.format).equals(ClipboardFormat.fileList);
      check(data1.toString())
          .equals('FileListData($files, ClipboardFormat(15, CF_HDROP))');
      const data2 = FileListData(files);
      check(data1).equals(data2);
      const data3 = FileListData([r'c:\src\file1.txt']);
      check(data1).not((it) => it.equals(data3));
    });

    test('PointerData', () {
      const format = ClipboardFormat(49152, 'custom');
      final ptr1 = calloc<Uint8>(5);
      final data1 = PointerData(ptr1, 5, format);
      check(data1.pointer.address).equals(ptr1.address);
      check(data1.lengthInBytes).equals(5);
      check(data1.format).equals(format);
      check(data1.toString()).equals('PointerData($ptr1, 5, $format)');
      final data2 = PointerData(ptr1, 5, format);
      check(data1).equals(data2);
      final ptr2 = calloc<Uint8>();
      final data3 = PointerData(ptr2, 1, format);
      check(data1).not((it) => it.equals(data3));
      calloc
        ..free(ptr1)
        ..free(ptr2);
    });

    test('UnicodeTextData', () {
      const text = 'Hello, world!';
      const data1 = UnicodeTextData(text);
      check(data1.text).equals(text);
      check(data1.format).equals(ClipboardFormat.unicodeText);
      check(data1.toString()).equals(
          'UnicodeTextData($text, ClipboardFormat(13, CF_UNICODETEXT))');
      const data2 = UnicodeTextData(text);
      check(data1).equals(data2);
      const data3 = UnicodeTextData('Goodbye, world!');
      check(data1).not((it) => it.equals(data3));
    });
  });
}
