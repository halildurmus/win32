// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../security/cryptography/catalog/structs.g.dart';
import '../../../security/cryptography/sip/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/sip/callbacks.g.dart';
import '../../../security/cryptography/structs.g.dart';

/// {@category Struct}
class MS_ADDINFO_BLOB extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int cbMemObject;

  external Pointer<Uint8> pbMemObject;

  @Uint32()
  external int cbMemSignedMsg;

  external Pointer<Uint8> pbMemSignedMsg;
}

/// {@category Struct}
class MS_ADDINFO_CATALOGMEMBER extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<CRYPTCATSTORE> pStore;

  external Pointer<CRYPTCATMEMBER> pMember;
}

/// {@category Struct}
class MS_ADDINFO_FLAT extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<SIP_INDIRECT_DATA> pIndirectData;
}

/// {@category Struct}
class SIP_ADD_NEWPROVIDER extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<GUID> pgSubject;

  external Pointer<Utf16> pwszDLLFileName;

  external Pointer<Utf16> pwszMagicNumber;

  external Pointer<Utf16> pwszIsFunctionName;

  external Pointer<Utf16> pwszGetFuncName;

  external Pointer<Utf16> pwszPutFuncName;

  external Pointer<Utf16> pwszCreateFuncName;

  external Pointer<Utf16> pwszVerifyFuncName;

  external Pointer<Utf16> pwszRemoveFuncName;

  external Pointer<Utf16> pwszIsFunctionNameFmt2;

  external Pointer<Utf16> pwszGetCapFuncName;
}

/// {@category Struct}
class SIP_CAP_SET_V2 extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwVersion;

  @Int32()
  external int isMultiSign;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class SIP_CAP_SET_V3 extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwVersion;

  @Int32()
  external int isMultiSign;

  external _SIP_CAP_SET_V3__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _SIP_CAP_SET_V3__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwReserved;
}

extension SIP_CAP_SET_V3_Extension on SIP_CAP_SET_V3 {
  int get dwFlags => this.Anonymous.dwFlags;
  set dwFlags(int value) => this.Anonymous.dwFlags = value;

  int get dwReserved => this.Anonymous.dwReserved;
  set dwReserved(int value) => this.Anonymous.dwReserved = value;
}

/// {@category Struct}
class SIP_DISPATCH_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hSIP;

  external Pointer<NativeFunction<pCryptSIPGetSignedDataMsg>> pfGet;

  external Pointer<NativeFunction<pCryptSIPPutSignedDataMsg>> pfPut;

  external Pointer<NativeFunction<pCryptSIPCreateIndirectData>> pfCreate;

  external Pointer<NativeFunction<pCryptSIPVerifyIndirectData>> pfVerify;

  external Pointer<NativeFunction<pCryptSIPRemoveSignedDataMsg>> pfRemove;
}

/// {@category Struct}
class SIP_INDIRECT_DATA extends Struct {
  external CRYPT_ATTRIBUTE_TYPE_VALUE Data;

  external CRYPT_ALGORITHM_IDENTIFIER DigestAlgorithm;

  external CRYPTOAPI_BLOB Digest;
}

/// {@category Struct}
class SIP_SUBJECTINFO extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<GUID> pgSubjectType;

  @IntPtr()
  external int hFile;

  external Pointer<Utf16> pwsFileName;

  external Pointer<Utf16> pwsDisplayName;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwIntVersion;

  @IntPtr()
  external int hProv;

  external CRYPT_ALGORITHM_IDENTIFIER DigestAlgorithm;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwEncodingType;

  @Uint32()
  external int dwReserved2;

  @Uint32()
  external int fdwCAPISettings;

  @Uint32()
  external int fdwSecuritySettings;

  @Uint32()
  external int dwIndex;

  @Uint32()
  external int dwUnionChoice;

  external _SIP_SUBJECTINFO__Anonymous_e__Union Anonymous;

  external Pointer pClientData;
}

/// {@category Struct}
class _SIP_SUBJECTINFO__Anonymous_e__Union extends Union {
  external Pointer<MS_ADDINFO_FLAT> psFlat;

  external Pointer<MS_ADDINFO_CATALOGMEMBER> psCatMember;

  external Pointer<MS_ADDINFO_BLOB> psBlob;
}

extension SIP_SUBJECTINFO_Extension on SIP_SUBJECTINFO {
  Pointer<MS_ADDINFO_FLAT> get psFlat => this.Anonymous.psFlat;
  set psFlat(Pointer<MS_ADDINFO_FLAT> value) => this.Anonymous.psFlat = value;

  Pointer<MS_ADDINFO_CATALOGMEMBER> get psCatMember =>
      this.Anonymous.psCatMember;
  set psCatMember(Pointer<MS_ADDINFO_CATALOGMEMBER> value) =>
      this.Anonymous.psCatMember = value;

  Pointer<MS_ADDINFO_BLOB> get psBlob => this.Anonymous.psBlob;
  set psBlob(Pointer<MS_ADDINFO_BLOB> value) => this.Anonymous.psBlob = value;
}
