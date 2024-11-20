@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  group('WIN32_ERRORExtension', () {
    group('isOk', () {
      test('returns true for zero error code', () {
        check(ERROR_SUCCESS.isOk).isTrue();
      });

      test('returns false for non-zero error code', () {
        check(ERROR_ACCESS_DENIED.isOk).isFalse();
      });
    });

    group('isError', () {
      test('returns true for non-zero error code', () {
        check(ERROR_ACCESS_DENIED.isError).isTrue();
      });

      test('returns false for zero error code', () {
        check(ERROR_SUCCESS.isError).isFalse();
      });
    });

    group('onSuccess', () {
      test('executes the operation if error code is zero', () {
        final result = ERROR_SUCCESS.onSuccess(() => 'Success!');
        check(result).equals('Success!');
      });

      test('throws WindowsException if error code is non-zero', () {
        const errorCode = ERROR_ACCESS_DENIED;
        check(
            () => errorCode.onSuccess(() => 'This should not execute'),
          ).throws<WindowsException>()
          ..has((e) => e.hr, 'HRESULT').equals(HRESULT_FROM_WIN32(errorCode))
          ..has((e) => e.message, 'message').equals('Access is denied.');
      });
    });

    group('toHRESULT', () {
      test('correctly converts error codes', () {
        const errorCode = ERROR_ACCESS_DENIED;
        final hresult = errorCode.toHRESULT();
        check(hresult).equals(HRESULT_FROM_WIN32(errorCode));
      });

      test('works for zero error code', () {
        const errorCode = ERROR_SUCCESS;
        final hresult = errorCode.toHRESULT();
        check(hresult).equals(HRESULT_FROM_WIN32(errorCode));
      });
    });
  });
}
