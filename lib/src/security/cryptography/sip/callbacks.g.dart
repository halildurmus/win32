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
import '../../../security/cryptography/sip/structs.g.dart';
import '../../../foundation/structs.g.dart';

typedef pCryptSIPCreateIndirectData = Int32 Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Pointer<Uint32> pcbIndirectData,
  Pointer<SIP_INDIRECT_DATA> pIndirectData,
);
typedef pCryptSIPGetCaps = Int32 Function(
  Pointer<SIP_SUBJECTINFO> pSubjInfo,
  Pointer<SIP_CAP_SET_V3> pCaps,
);
typedef pCryptSIPGetSealedDigest = Int32 Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Pointer<Uint8> pSig,
  Uint32 dwSig,
  Pointer<Uint8> pbDigest,
  Pointer<Uint32> pcbDigest,
);
typedef pCryptSIPGetSignedDataMsg = Int32 Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Pointer<Uint32> pdwEncodingType,
  Uint32 dwIndex,
  Pointer<Uint32> pcbSignedDataMsg,
  Pointer<Uint8> pbSignedDataMsg,
);
typedef pCryptSIPPutSignedDataMsg = Int32 Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Uint32 dwEncodingType,
  Pointer<Uint32> pdwIndex,
  Uint32 cbSignedDataMsg,
  Pointer<Uint8> pbSignedDataMsg,
);
typedef pCryptSIPRemoveSignedDataMsg = Int32 Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Uint32 dwIndex,
);
typedef pCryptSIPVerifyIndirectData = Int32 Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Pointer<SIP_INDIRECT_DATA> pIndirectData,
);
typedef pfnIsFileSupported = Int32 Function(
  IntPtr hFile,
  Pointer<GUID> pgSubject,
);
typedef pfnIsFileSupportedName = Int32 Function(
  Pointer<Utf16> pwszFileName,
  Pointer<GUID> pgSubject,
);
