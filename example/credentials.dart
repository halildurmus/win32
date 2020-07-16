import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void write({String credentialName, String userName, String password}) {
  print('Writing $credentialName ...');
  final examplePassword = utf8.encode(password);
  final blob = allocate<Uint8>(count: examplePassword.length);
  final blobBytes = blob.asTypedList(examplePassword.length);
  blobBytes.setAll(0, examplePassword);

  final credential = CREDENTIAL.allocate()
    ..Type = CRED_TYPE_GENERIC
    ..TargetName = TEXT(credentialName)
    ..Persist = CRED_PERSIST_LOCAL_MACHINE
    ..UserName = TEXT(userName)
    ..CredentialBlob = blob
    ..CredentialBlobSize = examplePassword.length;
  final result = CredWrite(credential.addressOf, 0);
  if (result != TRUE) {
    final errorCode = GetLastError();
    print('Error ($result): $errorCode');
    return;
  }
  print('Success. (${credential.CredentialBlobSize})');

  free(blob);
  free(credential.addressOf);
}

void read(String credentialName) {
  print('Reading $credentialName ...');
  final cred = CREDENTIAL.allocate();
  final result =
      CredRead(TEXT(credentialName), CRED_TYPE_GENERIC, 0, cred.addressOf);
  if (result != TRUE) {
    final errorCode = GetLastError();
    print('Error ($result): $errorCode');
    return;
  }
  print('Success. size: ${cred.CredentialBlobSize}');
  // final blob = cred.CredentialBlob.asTypedList(cred.CredentialBlobSize);
  // final password = utf8.decode(blob);
  // print('read password: $password');
  CredFree(cred.addressOf);
  free(cred.addressOf);
}

void main() {
  print('Accessing Credentials.');
  write(
    credentialName: 'exampleCredential',
    userName: 'MyUserName',
    password: 'MyPassword',
  );
  read('exampleCredential');
}
