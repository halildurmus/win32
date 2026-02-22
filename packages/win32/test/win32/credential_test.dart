@TestOn('windows')
library;

import 'dart:convert';
import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  setUpAll(LeakTracker.enableInDebug);

  setUp(LeakTracker.reset);

  tearDown(LeakTracker.verifyNoLeaksInDebug);

  group('Credential tests', () {
    test('write, read, and delete a credential', () {
      const credentialName = 'dart.win32.test.credential';
      const credentialValue = 'secretValue';

      // Create credential.
      writeCredential(
        credentialName: credentialName,
        username: 'userName',
        password: credentialValue,
      );

      // Read credential and validate.
      check(readCredential(credentialName)).equals(credentialValue);

      // Delete credential.
      deleteCredential(credentialName);

      // Validate credential deletion.
      check(() => readCredential(credentialName)).throws<WindowsException>();
    });

    test('update an existing credential', () {
      const credentialName = 'dart.win32.test.credential';
      const initialCredentialValue = 'secretValue';
      const updatedCredentialValue = 'anotherSecret';

      // Create credential with initial value.
      writeCredential(
        credentialName: credentialName,
        username: 'userName',
        password: initialCredentialValue,
      );

      // Update credential with a new value.
      writeCredential(
        credentialName: credentialName,
        username: 'userName',
        password: updatedCredentialValue,
      );

      // Read credential and validate updated value.
      check(readCredential(credentialName)).equals(updatedCredentialValue);

      // Delete credential.
      deleteCredential(credentialName);

      // Validate credential deletion.
      check(() => readCredential(credentialName)).throws<WindowsException>();
    });
  });
}

void writeCredential({
  required String credentialName,
  required String username,
  required String password,
}) {
  using((arena) {
    final targetName = arena.pwstr(credentialName);
    final userName = arena.pwstr(username);
    final examplePassword = utf8.encode(password);
    final blob = examplePassword.toNative(allocator: arena);

    final credential = arena<CREDENTIAL>();
    credential.ref
      ..Type = CRED_TYPE_GENERIC
      ..TargetName = targetName
      ..Persist = CRED_PERSIST_LOCAL_MACHINE
      ..UserName = userName
      ..CredentialBlob = blob
      ..CredentialBlobSize = examplePassword.length;

    final Win32Result(:value, :error) = CredWrite(credential, 0);
    if (!value) throw WindowsException(error.toHRESULT());
  });
}

String readCredential(String credentialName) => using((arena) {
  final credPointer = arena<Pointer<CREDENTIAL>>();
  final targetName = arena.pcwstr(credentialName);
  try {
    final result = CredRead(targetName, CRED_TYPE_GENERIC, credPointer);
    if (!result.value) throw WindowsException(result.error.toHRESULT());

    final cred = credPointer.value.ref;
    final blob = cred.CredentialBlob.asTypedList(cred.CredentialBlobSize);
    final password = utf8.decode(blob);
    return password;
  } finally {
    if (!credPointer.value.isNull) CredFree(credPointer.value);
  }
});

void deleteCredential(String credentialName) {
  using((arena) {
    final targetName = arena.pcwstr(credentialName);
    final Win32Result(:value, :error) = CredDelete(
      targetName,
      CRED_TYPE_GENERIC,
    );
    if (!value) throw WindowsException(error.toHRESULT());
  });
}
