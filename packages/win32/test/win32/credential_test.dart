@TestOn('windows')
library;

import 'dart:convert';
import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
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
  final targetName = w(credentialName);
  final userName = w(username);
  final examplePassword = utf8.encode(password);
  final blob = examplePassword.toNative();

  final credential = loggingCalloc<CREDENTIAL>();
  credential.ref
    ..Type = CRED_TYPE_GENERIC
    ..TargetName = targetName.ptr
    ..Persist = CRED_PERSIST_LOCAL_MACHINE
    ..UserName = userName.ptr
    ..CredentialBlob = blob
    ..CredentialBlobSize = examplePassword.length;

  try {
    if (!CredWrite(credential, 0)) {
      throw WindowsException(GetLastError().toHRESULT());
    }
  } finally {
    targetName.free();
    userName.free();
    free(blob);
    free(credential);
  }
}

String readCredential(String credentialName) {
  final credPointer = loggingCalloc<Pointer<CREDENTIAL>>();
  final targetName = w(credentialName);

  try {
    if (!CredRead(targetName.ptr, CRED_TYPE_GENERIC, credPointer)) {
      throw WindowsException(GetLastError().toHRESULT());
    }

    final cred = credPointer.value.ref;
    final blob = cred.CredentialBlob.asTypedList(cred.CredentialBlobSize);
    final password = utf8.decode(blob);
    return password;
  } finally {
    if (!credPointer.value.isNull) CredFree(credPointer.value);
    free(credPointer);
  }
}

void deleteCredential(String credentialName) {
  final targetName = w(credentialName);
  if (!CredDelete(targetName.ptr, CRED_TYPE_GENERIC)) {
    throw WindowsException(GetLastError().toHRESULT());
  }
}
