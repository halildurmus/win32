// Example demonstrating reading, writing, and deleting Windows Credentials.

import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Deletes a generic credential by name.
void delete(String credentialName) {
  print('Deleting $credentialName...');
  final targetName = w(credentialName);
  final Win32Result(:value, :error) = CredDelete(
    targetName.ptr,
    CRED_TYPE_GENERIC,
  );
  if (!value) {
    print('Error deleting credential.');
    throw WindowsException(error.toHRESULT());
  }
  print('Successfully deleted credential.');
}

/// Reads a generic credential by name and prints its contents.
void read(String credentialName) {
  print('Reading $credentialName...');
  final credPointer = loggingCalloc<Pointer<CREDENTIAL>>();
  final targetName = w(credentialName);
  final result = CredRead(targetName.ptr, CRED_TYPE_GENERIC, credPointer);
  if (!result.value) {
    print('Error reading credential.');
    free(credPointer);
    throw WindowsException(result.error.toHRESULT());
  }
  final cred = credPointer.value.ref;
  print('Success.');
  print('Read username: ${cred.UserName.toDartString()}');
  print('Password size: ${cred.CredentialBlobSize}');
  final blob = cred.CredentialBlob.asTypedList(cred.CredentialBlobSize);
  final password = utf8.decode(blob);
  print('Read password: $password');
  CredFree(credPointer.value);
  free(credPointer);
}

/// Writes a generic credential with the specified username and password.
void write({
  required String credentialName,
  required String username,
  required String password,
}) {
  print('Writing $credentialName ...');

  final examplePassword = utf8.encode(password);
  final blob = examplePassword.toNative();
  final targetName = w(credentialName);
  final userName = w(username);

  final credential = loggingCalloc<CREDENTIAL>();
  credential.ref
    ..Type = CRED_TYPE_GENERIC
    ..TargetName = targetName.ptr
    ..Persist = CRED_PERSIST_LOCAL_MACHINE
    ..UserName = userName.ptr
    ..CredentialBlob = blob
    ..CredentialBlobSize = examplePassword.length;

  try {
    final Win32Result(:value, :error) = CredWrite(credential, 0);
    if (value) {
      print('Success (blob size: ${credential.ref.CredentialBlobSize})');
    } else {
      print('Error writing credential.');
      throw WindowsException(error.toHRESULT());
    }
  } finally {
    free(blob);
    free(credential);
  }
}

void main() {
  print('Accessing Credentials...');
  const credentialName = 'exampleCredential';
  write(
    credentialName: credentialName,
    username: 'MyUserName',
    password: 'MyPassword',
  );
  read(credentialName);
  delete(credentialName);
  print('Reading deleted credential should fail:');
  read(credentialName);
}
