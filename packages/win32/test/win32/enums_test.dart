import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  group('Win32 enums tests', () {
    group('COINIT', () {
      test('has correct values', () {
        check(COINIT_MULTITHREADED).equals(const COINIT(0));
        check(COINIT_APARTMENTTHREADED).equals(const COINIT(2));
        check(COINIT_DISABLE_OLE1DDE).equals(const COINIT(4));
        check(COINIT_SPEED_OVER_MEMORY).equals(const COINIT(8));
      });

      test('can be combined using bitwise OR', () {
        check(
          COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE,
        ).equals(const COINIT(6));
      });

      test('individual flags can be verified using `has` method', () {
        final flags = COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE;
        check(flags.has(COINIT_APARTMENTTHREADED)).isTrue();
        check(flags.has(COINIT_DISABLE_OLE1DDE)).isTrue();
        check(flags.has(COINIT_SPEED_OVER_MEMORY)).isFalse();
      });
    });

    group('PROCESS_CREATION_FLAGS', () {
      test('has correct values', () {
        check(DEBUG_PROCESS).equals(const PROCESS_CREATION_FLAGS(1));
        check(
          CREATE_IGNORE_SYSTEM_DEFAULT,
        ).equals(const PROCESS_CREATION_FLAGS(2147483648));
      });

      test('can be combined using bitwise OR', () {
        check(
          DEBUG_PROCESS | CREATE_IGNORE_SYSTEM_DEFAULT,
        ).equals(const PROCESS_CREATION_FLAGS(2147483649));
      });

      test('individual flags can be verified using `has` method', () {
        final flags = DEBUG_PROCESS | CREATE_IGNORE_SYSTEM_DEFAULT;
        check(flags.has(DEBUG_PROCESS)).isTrue();
        check(flags.has(CREATE_IGNORE_SYSTEM_DEFAULT)).isTrue();
        check(flags.has(CREATE_NEW_CONSOLE)).isFalse();
      });
    });

    group('VIRTUAL_KEY', () {
      test('has correct values', () {
        check(VK_LBUTTON).equals(const VIRTUAL_KEY(1));
        check(VK_SHIFT).equals(const VIRTUAL_KEY(16));
        check(VK_SPACE).equals(const VIRTUAL_KEY(32));
      });
    });

    group('WIN32_ERROR', () {
      test('has correct values', () {
        check(NO_ERROR).equals(const WIN32_ERROR(0));
        check(ERROR_SUCCESS).equals(const WIN32_ERROR(0));
        check(ERROR_FILE_NOT_FOUND).equals(const WIN32_ERROR(2));
        check(ERROR_ACCESS_DENIED).equals(const WIN32_ERROR(5));
        check(ERROR_QUERY_STORAGE_ERROR).equals(const WIN32_ERROR(2151284737));
      });
    });
  });
}
