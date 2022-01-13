// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../networking/ldap/structs.g.dart';
import '../../security/authentication/identity/structs.g.dart';
import '../../security/cryptography/structs.g.dart';

typedef DBGPRINT = Uint32 Function(
  Pointer<Utf8> Format,
);
typedef DEREFERENCECONNECTION = Uint32 Function(
  Pointer<ldap> PrimaryConnection,
  Pointer<ldap> ConnectionToDereference,
);
typedef NOTIFYOFNEWCONNECTION = Uint8 Function(
  Pointer<ldap> PrimaryConnection,
  Pointer<ldap> ReferralFromConnection,
  Pointer<Utf16> NewDN,
  Pointer<Utf8> HostName,
  Pointer<ldap> NewConnection,
  Uint32 PortNumber,
  Pointer SecAuthIdentity,
  Pointer CurrentUser,
  Uint32 ErrorCodeFromBind,
);
typedef QUERYCLIENTCERT = Uint8 Function(
  Pointer<ldap> Connection,
  Pointer<SecPkgContext_IssuerListInfoEx> trusted_CAs,
  Pointer<Pointer<CERT_CONTEXT>> ppCertificate,
);
typedef QUERYFORCONNECTION = Uint32 Function(
  Pointer<ldap> PrimaryConnection,
  Pointer<ldap> ReferralFromConnection,
  Pointer<Utf16> NewDN,
  Pointer<Utf8> HostName,
  Uint32 PortNumber,
  Pointer SecAuthIdentity,
  Pointer CurrentUserToken,
  Pointer<Pointer<ldap>> ConnectionToUse,
);
typedef VERIFYSERVERCERT = Uint8 Function(
  Pointer<ldap> Connection,
  Pointer<Pointer<CERT_CONTEXT>> pServerCert,
);
