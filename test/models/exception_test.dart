import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32_clipboard/win32_clipboard.dart';

void main() {
  test('ClipboardException', () {
    const exception = ClipboardException('Test message');
    check(exception.toString()).equals('ClipboardException: Test message');
  });
}
