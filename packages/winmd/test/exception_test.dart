import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('WinmdException', () {
    const exception = WinmdException('Test exception');
    check(exception.toString()).equals('WinmdException: Test exception');
  });
}
