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
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../security/cryptography/structs.g.dart';

typedef FNCERTSRVBACKUPCLOSE = Int32 Function(
  Pointer hbc,
);
typedef FNCERTSRVBACKUPEND = Int32 Function(
  Pointer hbc,
);
typedef FNCERTSRVBACKUPFREE = Void Function(
  Pointer pv,
);
typedef FNCERTSRVBACKUPGETBACKUPLOGSW = Int32 Function(
  Pointer hbc,
  Pointer<Pointer<Uint16>> ppwszzBackupLogFiles,
  Pointer<Uint32> pcbSize,
);
typedef FNCERTSRVBACKUPGETDATABASENAMESW = Int32 Function(
  Pointer hbc,
  Pointer<Pointer<Uint16>> ppwszzAttachmentInformation,
  Pointer<Uint32> pcbSize,
);
typedef FNCERTSRVBACKUPGETDYNAMICFILELISTW = Int32 Function(
  Pointer hbc,
  Pointer<Pointer<Uint16>> ppwszzFileList,
  Pointer<Uint32> pcbSize,
);
typedef FNCERTSRVBACKUPOPENFILEW = Int32 Function(
  Pointer hbc,
  Pointer<Utf16> pwszAttachmentName,
  Uint32 cbReadHintSize,
  Pointer<Int64> pliFileSize,
);
typedef FNCERTSRVBACKUPPREPAREW = Int32 Function(
  Pointer<Utf16> pwszServerName,
  Uint32 grbitJet,
  Uint32 dwBackupFlags,
  Pointer<Pointer> phbc,
);
typedef FNCERTSRVBACKUPREAD = Int32 Function(
  Pointer hbc,
  Pointer pvBuffer,
  Uint32 cbBuffer,
  Pointer<Uint32> pcbRead,
);
typedef FNCERTSRVBACKUPTRUNCATELOGS = Int32 Function(
  Pointer hbc,
);
typedef FNCERTSRVISSERVERONLINEW = Int32 Function(
  Pointer<Utf16> pwszServerName,
  Pointer<Int32> pfServerOnline,
);
typedef FNCERTSRVRESTOREEND = Int32 Function(
  Pointer hbc,
);
typedef FNCERTSRVRESTOREGETDATABASELOCATIONSW = Int32 Function(
  Pointer hbc,
  Pointer<Pointer<Uint16>> ppwszzDatabaseLocationList,
  Pointer<Uint32> pcbSize,
);
typedef FNCERTSRVRESTOREPREPAREW = Int32 Function(
  Pointer<Utf16> pwszServerName,
  Uint32 dwRestoreFlags,
  Pointer<Pointer> phbc,
);
typedef FNCERTSRVRESTOREREGISTERCOMPLETE = Int32 Function(
  Pointer hbc,
  Int32 hrRestoreState,
);
typedef FNCERTSRVRESTOREREGISTERW = Int32 Function(
  Pointer hbc,
  Pointer<Utf16> pwszCheckPointFilePath,
  Pointer<Utf16> pwszLogPath,
  Pointer<CSEDB_RSTMAP> rgrstmap,
  Int32 crstmap,
  Pointer<Utf16> pwszBackupLogPath,
  Uint32 genLow,
  Uint32 genHigh,
);
typedef FNCERTSRVSERVERCONTROLW = Int32 Function(
  Pointer<Utf16> pwszServerName,
  Uint32 dwControlFlags,
  Pointer<Uint32> pcbOut,
  Pointer<Pointer<Uint8>> ppbOut,
);
typedef FNIMPORTPFXTOPROVIDER = Int32 Function(
  IntPtr hWndParent,
  Pointer<Uint8> pbPFX,
  Uint32 cbPFX,
  Int32 ImportFlags,
  Pointer<Utf16> pwszPassword,
  Pointer<Utf16> pwszProviderName,
  Pointer<Utf16> pwszReaderName,
  Pointer<Utf16> pwszContainerNamePrefix,
  Pointer<Utf16> pwszPin,
  Pointer<Utf16> pwszFriendlyName,
  Pointer<Uint32> pcCertOut,
  Pointer<Pointer<Pointer<CERT_CONTEXT>>> prgpCertOut,
);
typedef FNIMPORTPFXTOPROVIDERFREEDATA = Void Function(
  Uint32 cCert,
  Pointer<Pointer<CERT_CONTEXT>> rgpCert,
);
