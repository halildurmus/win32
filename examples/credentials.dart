// Reads and writes credentials.

import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void delete(String credentialName) {
  print('Deleting $credentialName...');
  final targetName = w(credentialName);
  if (!CredDelete(targetName.ptr, CRED_TYPE_GENERIC)) {
    print('Error deleting credential.');
    throw WindowsException(GetLastError().toHRESULT());
  }
  print('Successfully deleted credential.');
}

void read(String credentialName) {
  print('Reading $credentialName...');
  final credPointer = loggingCalloc<Pointer<CREDENTIAL>>();
  final targetName = w(credentialName);
  final result = CredRead(targetName.ptr, CRED_TYPE_GENERIC, credPointer);
  if (!result) {
    print('Error reading credential.');
    free(credPointer);
    throw WindowsException(GetLastError().toHRESULT());
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
    if (CredWrite(credential, 0)) {
      print('Success (blob size: ${credential.ref.CredentialBlobSize})');
    } else {
      print('Error writing credential.');
      throw WindowsException(GetLastError().toHRESULT());
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
