@TestOn('windows')

import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void writeCredential(
    {String credentialName, String userName, String password}) {
  final examplePassword = utf8.encode(password) as Uint8List;
  final blob = examplePassword.allocatePointer();

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
    fail('Error while writing credential: $errorCode');
  }

  free(blob);
  free(credential.addressOf);
}

String readCredential(String credentialName) {
  final credPointer = allocate<Pointer<CREDENTIAL>>();
  final result =
      CredRead(TEXT(credentialName), CRED_TYPE_GENERIC, 0, credPointer);
  if (result != TRUE) {
    final errorCode = GetLastError();
    var errorText = '$errorCode';
    if (errorCode == ERROR_NOT_FOUND) {
      errorText += ' Not found.';
    }
    fail('Error ($result): $errorText');
  }
  final cred = credPointer.value.ref;
  final blob = cred.CredentialBlob.asTypedList(cred.CredentialBlobSize);
  final password = utf8.decode(blob);
  CredFree(credPointer);
  free(credPointer);
  return password;
}

void deleteCredential(String credentialName) {
  final result = CredDelete(TEXT(credentialName), CRED_TYPE_GENERIC, 0);
  if (result != TRUE) {
    final errorCode = GetLastError();
    fail('Error ($result): $errorCode');
  }
}

void main() {
  test('CRUD credential test', () {
    const credentialName = 'dart.win32.test.credential';
    const credentialValue = 'secretValue';
    const credentialValue2 = 'anotherSecret';

    print(1);
    // create credential
    writeCredential(
        credentialName: credentialName,
        userName: 'userName',
        password: credentialValue);
    print(2);

    // read
    expect(readCredential(credentialName), equals(credentialValue));
    print(3);

    // update
    writeCredential(
        credentialName: credentialName,
        userName: 'userName',
        password: credentialValue2);
    print(4);

    expect(readCredential(credentialName), equals(credentialValue2));
    print(5);

    // delete
    deleteCredential(credentialName);
    print(6);
  });
}
