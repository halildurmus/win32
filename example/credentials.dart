// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Reads and writes credentials

import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void write({String credentialName, String userName, String password}) {
  print('Writing $credentialName ...');
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
    print('Error ($result): $errorCode');
    return;
  }
  print('Success. (${credential.CredentialBlobSize})');

  free(blob);
  free(credential.addressOf);
}

void read(String credentialName) {
  print('Reading $credentialName ...');
  final credPointer = allocate<Pointer<CREDENTIAL>>();
  final result =
      CredRead(TEXT(credentialName), CRED_TYPE_GENERIC, 0, credPointer);
  if (result != TRUE) {
    final errorCode = GetLastError();
    var errorText = '$errorCode';
    if (errorCode == ERROR_NOT_FOUND) {
      errorText += ' Not found.';
    }
    print('Error ($result): $errorText');
    return;
  }
  final cred = credPointer.value.ref;
  print('Success. Read username ${cred.UserName.unpackString(100)} '
      'password size: ${cred.CredentialBlobSize}');
  final blob = cred.CredentialBlob.asTypedList(cred.CredentialBlobSize);
  final password = utf8.decode(blob);
  print('read password: $password');
  CredFree(credPointer);
  print('done.');
  free(credPointer);
  print('returning');
}

void delete(String credentialName) {
  print('Deleting $credentialName');
  final result = CredDelete(TEXT(credentialName), CRED_TYPE_GENERIC, 0);
  if (result != TRUE) {
    final errorCode = GetLastError();
    print('Error ($result): $errorCode');
    return;
  }
  print('Successfully deleted credential.');
}

void main() {
  print('Accessing Credentials.');
  const credentialName = 'exampleCredential';
  write(
    credentialName: credentialName,
    userName: 'MyUserName',
    password: 'MyPassword',
  );
  read(credentialName);
  delete(credentialName);
  print('Now reading should fail:');
  read(credentialName);
}
