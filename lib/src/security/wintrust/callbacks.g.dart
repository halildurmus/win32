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
import '../../security/wintrust/structs.g.dart';
import '../../security/cryptography/structs.g.dart';

typedef PFN_ALLOCANDFILLDEFUSAGE = Int32 Function(
  Pointer<Utf8> pszUsageOID,
  Pointer<CRYPT_PROVIDER_DEFUSAGE> psDefUsage,
);
typedef PFN_CPD_ADD_CERT = Int32 Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
  Uint32 idxSigner,
  Int32 fCounterSigner,
  Uint32 idxCounterSigner,
  Pointer<CERT_CONTEXT> pCert2Add,
);
typedef PFN_CPD_ADD_PRIVDATA = Int32 Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
  Pointer<CRYPT_PROVIDER_PRIVDATA> pPrivData2Add,
);
typedef PFN_CPD_ADD_SGNR = Int32 Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
  Int32 fCounterSigner,
  Uint32 idxSigner,
  Pointer<CRYPT_PROVIDER_SGNR> pSgnr2Add,
);
typedef PFN_CPD_ADD_STORE = Int32 Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
  Pointer hStore2Add,
);
typedef PFN_CPD_MEM_ALLOC = Pointer Function(
  Uint32 cbSize,
);
typedef PFN_CPD_MEM_FREE = Void Function(
  Pointer pvMem2Free,
);
typedef PFN_FREEDEFUSAGE = Int32 Function(
  Pointer<Utf8> pszUsageOID,
  Pointer<CRYPT_PROVIDER_DEFUSAGE> psDefUsage,
);
typedef PFN_PROVIDER_CERTCHKPOLICY_CALL = Int32 Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
  Uint32 idxSigner,
  Int32 fCounterSignerChain,
  Uint32 idxCounterSigner,
);
typedef PFN_PROVIDER_CERTTRUST_CALL = Int32 Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
);
typedef PFN_PROVIDER_CLEANUP_CALL = Int32 Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
);
typedef PFN_PROVIDER_FINALPOLICY_CALL = Int32 Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
);
typedef PFN_PROVIDER_INIT_CALL = Int32 Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
);
typedef PFN_PROVIDER_OBJTRUST_CALL = Int32 Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
);
typedef PFN_PROVIDER_SIGTRUST_CALL = Int32 Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
);
typedef PFN_PROVIDER_TESTFINALPOLICY_CALL = Int32 Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
);
typedef PFN_PROVUI_CALL = Int32 Function(
  IntPtr hWndSecurityDialog,
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
);
typedef PFN_WTD_GENERIC_CHAIN_POLICY_CALLBACK = Int32 Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
  Uint32 dwStepError,
  Uint32 dwRegPolicySettings,
  Uint32 cSigner,
  Pointer<Pointer<WTD_GENERIC_CHAIN_POLICY_SIGNER_INFO>> rgpSigner,
  Pointer pvPolicyArg,
);
