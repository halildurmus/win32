@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  group('RPC_STATUS', () {
    test('valid RPC_STATUS values do not throw assertion error', () {
      // Zero is a valid RPC_STATUS value.
      check(() => const RPC_STATUS(0)).returnsNormally();
      // Minimum valid RPC_STATUS value.
      check(() => const RPC_STATUS(-0x80000000)).returnsNormally();
      // Maximum valid RPC_STATUS value.
      check(() => const RPC_STATUS(0x7FFFFFFF)).returnsNormally();
    });

    test('invalid RPC_STATUS values throw assertion error', () {
      check(() => RPC_STATUS(0x80000000))
          .throws<AssertionError>()
          .has((e) => e.message, 'message')
          .equals('Invalid RPC_STATUS value: 2147483648');
      check(() => RPC_STATUS(-0x80000001))
          .throws<AssertionError>()
          .has((e) => e.message, 'message')
          .equals('Invalid RPC_STATUS value: -2147483649');
    });

    test('isOk returns true for success RPC_STATUS codes', () {
      check(RPC_S_OK.isOk).isTrue();
    });

    test('isError returns true for failure RPC_STATUS codes', () {
      check(RPC_S_ACCESS_DENIED.isError).isTrue();
      check(RPC_S_SERVER_UNAVAILABLE.isError).isTrue();
    });

    test('onSuccess executes operation for success RPC_STATUS', () {
      check(RPC_S_OK.onSuccess(() => 'Success')).equals('Success');
    });

    test('onSuccess throws WindowsException for failure RPC_STATUS', () {
      check(
          () => RPC_S_ACCESS_DENIED.onSuccess(() => 'Success'),
        ).throws<WindowsException>()
        ..has((e) => e.hr, 'hr').equals(RPC_S_ACCESS_DENIED.toHRESULT())
        ..has((e) => e.message, 'message').equals('Access is denied.');
    });
  });
}
