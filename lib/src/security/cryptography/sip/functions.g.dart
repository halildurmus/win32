// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../security/cryptography/sip/structs.g.dart';
import '../../../security/cryptography/structs.g.dart';
import '../../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// wintrust.dll
// -----------------------------------------------------------------------
final _wintrust = DynamicLibrary.open('wintrust.dll');

int CryptSIPCreateIndirectData(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Pointer<Uint32> pcbIndirectData,
  Pointer<SIP_INDIRECT_DATA> pIndirectData,
) =>
    _CryptSIPCreateIndirectData(
      pSubjectInfo,
      pcbIndirectData,
      pIndirectData,
    );

late final _CryptSIPCreateIndirectData = _wintrust.lookupFunction<
    Int32 Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Pointer<Uint32> pcbIndirectData,
  Pointer<SIP_INDIRECT_DATA> pIndirectData,
),
    int Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Pointer<Uint32> pcbIndirectData,
  Pointer<SIP_INDIRECT_DATA> pIndirectData,
)>('CryptSIPCreateIndirectData');

int CryptSIPGetCaps(
  Pointer<SIP_SUBJECTINFO> pSubjInfo,
  Pointer<SIP_CAP_SET_V3> pCaps,
) =>
    _CryptSIPGetCaps(
      pSubjInfo,
      pCaps,
    );

late final _CryptSIPGetCaps = _wintrust.lookupFunction<
    Int32 Function(
  Pointer<SIP_SUBJECTINFO> pSubjInfo,
  Pointer<SIP_CAP_SET_V3> pCaps,
),
    int Function(
  Pointer<SIP_SUBJECTINFO> pSubjInfo,
  Pointer<SIP_CAP_SET_V3> pCaps,
)>('CryptSIPGetCaps');

int CryptSIPGetSealedDigest(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Pointer<Uint8> pSig,
  int dwSig,
  Pointer<Uint8> pbDigest,
  Pointer<Uint32> pcbDigest,
) =>
    _CryptSIPGetSealedDigest(
      pSubjectInfo,
      pSig,
      dwSig,
      pbDigest,
      pcbDigest,
    );

late final _CryptSIPGetSealedDigest = _wintrust.lookupFunction<
    Int32 Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Pointer<Uint8> pSig,
  Uint32 dwSig,
  Pointer<Uint8> pbDigest,
  Pointer<Uint32> pcbDigest,
),
    int Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Pointer<Uint8> pSig,
  int dwSig,
  Pointer<Uint8> pbDigest,
  Pointer<Uint32> pcbDigest,
)>('CryptSIPGetSealedDigest');

int CryptSIPGetSignedDataMsg(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Pointer<Uint32> pdwEncodingType,
  int dwIndex,
  Pointer<Uint32> pcbSignedDataMsg,
  Pointer<Uint8> pbSignedDataMsg,
) =>
    _CryptSIPGetSignedDataMsg(
      pSubjectInfo,
      pdwEncodingType,
      dwIndex,
      pcbSignedDataMsg,
      pbSignedDataMsg,
    );

late final _CryptSIPGetSignedDataMsg = _wintrust.lookupFunction<
    Int32 Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Pointer<Uint32> pdwEncodingType,
  Uint32 dwIndex,
  Pointer<Uint32> pcbSignedDataMsg,
  Pointer<Uint8> pbSignedDataMsg,
),
    int Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Pointer<Uint32> pdwEncodingType,
  int dwIndex,
  Pointer<Uint32> pcbSignedDataMsg,
  Pointer<Uint8> pbSignedDataMsg,
)>('CryptSIPGetSignedDataMsg');

int CryptSIPPutSignedDataMsg(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  int dwEncodingType,
  Pointer<Uint32> pdwIndex,
  int cbSignedDataMsg,
  Pointer<Uint8> pbSignedDataMsg,
) =>
    _CryptSIPPutSignedDataMsg(
      pSubjectInfo,
      dwEncodingType,
      pdwIndex,
      cbSignedDataMsg,
      pbSignedDataMsg,
    );

late final _CryptSIPPutSignedDataMsg = _wintrust.lookupFunction<
    Int32 Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Uint32 dwEncodingType,
  Pointer<Uint32> pdwIndex,
  Uint32 cbSignedDataMsg,
  Pointer<Uint8> pbSignedDataMsg,
),
    int Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  int dwEncodingType,
  Pointer<Uint32> pdwIndex,
  int cbSignedDataMsg,
  Pointer<Uint8> pbSignedDataMsg,
)>('CryptSIPPutSignedDataMsg');

int CryptSIPRemoveSignedDataMsg(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  int dwIndex,
) =>
    _CryptSIPRemoveSignedDataMsg(
      pSubjectInfo,
      dwIndex,
    );

late final _CryptSIPRemoveSignedDataMsg = _wintrust.lookupFunction<
    Int32 Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Uint32 dwIndex,
),
    int Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  int dwIndex,
)>('CryptSIPRemoveSignedDataMsg');

int CryptSIPVerifyIndirectData(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Pointer<SIP_INDIRECT_DATA> pIndirectData,
) =>
    _CryptSIPVerifyIndirectData(
      pSubjectInfo,
      pIndirectData,
    );

late final _CryptSIPVerifyIndirectData = _wintrust.lookupFunction<
    Int32 Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Pointer<SIP_INDIRECT_DATA> pIndirectData,
),
    int Function(
  Pointer<SIP_SUBJECTINFO> pSubjectInfo,
  Pointer<SIP_INDIRECT_DATA> pIndirectData,
)>('CryptSIPVerifyIndirectData');

// -----------------------------------------------------------------------
// crypt32.dll
// -----------------------------------------------------------------------
final _crypt32 = DynamicLibrary.open('crypt32.dll');

int CryptSIPAddProvider(
  Pointer<SIP_ADD_NEWPROVIDER> psNewProv,
) =>
    _CryptSIPAddProvider(
      psNewProv,
    );

late final _CryptSIPAddProvider = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<SIP_ADD_NEWPROVIDER> psNewProv,
),
    int Function(
  Pointer<SIP_ADD_NEWPROVIDER> psNewProv,
)>('CryptSIPAddProvider');

int CryptSIPLoad(
  Pointer<GUID> pgSubject,
  int dwFlags,
  Pointer<SIP_DISPATCH_INFO> pSipDispatch,
) =>
    _CryptSIPLoad(
      pgSubject,
      dwFlags,
      pSipDispatch,
    );

late final _CryptSIPLoad = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<GUID> pgSubject,
  Uint32 dwFlags,
  Pointer<SIP_DISPATCH_INFO> pSipDispatch,
),
    int Function(
  Pointer<GUID> pgSubject,
  int dwFlags,
  Pointer<SIP_DISPATCH_INFO> pSipDispatch,
)>('CryptSIPLoad');

int CryptSIPRemoveProvider(
  Pointer<GUID> pgProv,
) =>
    _CryptSIPRemoveProvider(
      pgProv,
    );

late final _CryptSIPRemoveProvider = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<GUID> pgProv,
),
    int Function(
  Pointer<GUID> pgProv,
)>('CryptSIPRemoveProvider');

int CryptSIPRetrieveSubjectGuid(
  Pointer<Utf16> FileName,
  int hFileIn,
  Pointer<GUID> pgSubject,
) =>
    _CryptSIPRetrieveSubjectGuid(
      FileName,
      hFileIn,
      pgSubject,
    );

late final _CryptSIPRetrieveSubjectGuid = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> FileName,
  IntPtr hFileIn,
  Pointer<GUID> pgSubject,
),
    int Function(
  Pointer<Utf16> FileName,
  int hFileIn,
  Pointer<GUID> pgSubject,
)>('CryptSIPRetrieveSubjectGuid');

int CryptSIPRetrieveSubjectGuidForCatalogFile(
  Pointer<Utf16> FileName,
  int hFileIn,
  Pointer<GUID> pgSubject,
) =>
    _CryptSIPRetrieveSubjectGuidForCatalogFile(
      FileName,
      hFileIn,
      pgSubject,
    );

late final _CryptSIPRetrieveSubjectGuidForCatalogFile = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> FileName,
  IntPtr hFileIn,
  Pointer<GUID> pgSubject,
),
    int Function(
  Pointer<Utf16> FileName,
  int hFileIn,
  Pointer<GUID> pgSubject,
)>('CryptSIPRetrieveSubjectGuidForCatalogFile');
