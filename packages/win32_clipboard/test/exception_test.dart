import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32_clipboard/win32_clipboard.dart';

void main() {
  test('ClipboardException', () {
    const message = 'Test message';
    const exception = ClipboardException(message);
    check(exception.message).equals(message);
    check(exception.toString()).equals('ClipboardException: $message');
  });
}
