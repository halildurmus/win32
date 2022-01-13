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
import '../../../system/com/structs.g.dart';
import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/structuredstorage/IStorage.dart';
import '../../../system/com/IStream.dart';
import '../../../system/com/structuredstorage/ILockBytes.dart';
import '../../../specialTypes.dart';
import '../../../system/com/structuredstorage/structs.g.dart';
import '../../../system/com/structuredstorage/IPropertySetStorage.dart';
import '../../../system/com/structuredstorage/IPropertyStorage.dart';
import '../../../security/structs.g.dart';
import '../../../system/com/structuredstorage/IFillLockBytes.dart'; // -----------------------------------------------------------------------

// ole32.dll
// -----------------------------------------------------------------------
final _ole32 = DynamicLibrary.open('ole32.dll');

int CoGetInstanceFromFile(
  Pointer<COSERVERINFO> pServerInfo,
  Pointer<GUID> pClsid,
  Pointer<COMObject> punkOuter,
  int dwClsCtx,
  int grfMode,
  Pointer<Utf16> pwszName,
  int dwCount,
  Pointer<MULTI_QI> pResults,
) =>
    _CoGetInstanceFromFile(
      pServerInfo,
      pClsid,
      punkOuter,
      dwClsCtx,
      grfMode,
      pwszName,
      dwCount,
      pResults,
    );

late final _CoGetInstanceFromFile = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COSERVERINFO> pServerInfo,
  Pointer<GUID> pClsid,
  Pointer<COMObject> punkOuter,
  Uint32 dwClsCtx,
  Uint32 grfMode,
  Pointer<Utf16> pwszName,
  Uint32 dwCount,
  Pointer<MULTI_QI> pResults,
),
    int Function(
  Pointer<COSERVERINFO> pServerInfo,
  Pointer<GUID> pClsid,
  Pointer<COMObject> punkOuter,
  int dwClsCtx,
  int grfMode,
  Pointer<Utf16> pwszName,
  int dwCount,
  Pointer<MULTI_QI> pResults,
)>('CoGetInstanceFromFile');

int CoGetInstanceFromIStorage(
  Pointer<COSERVERINFO> pServerInfo,
  Pointer<GUID> pClsid,
  Pointer<COMObject> punkOuter,
  int dwClsCtx,
  Pointer<COMObject> pstg,
  int dwCount,
  Pointer<MULTI_QI> pResults,
) =>
    _CoGetInstanceFromIStorage(
      pServerInfo,
      pClsid,
      punkOuter,
      dwClsCtx,
      pstg,
      dwCount,
      pResults,
    );

late final _CoGetInstanceFromIStorage = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COSERVERINFO> pServerInfo,
  Pointer<GUID> pClsid,
  Pointer<COMObject> punkOuter,
  Uint32 dwClsCtx,
  Pointer<COMObject> pstg,
  Uint32 dwCount,
  Pointer<MULTI_QI> pResults,
),
    int Function(
  Pointer<COSERVERINFO> pServerInfo,
  Pointer<GUID> pClsid,
  Pointer<COMObject> punkOuter,
  int dwClsCtx,
  Pointer<COMObject> pstg,
  int dwCount,
  Pointer<MULTI_QI> pResults,
)>('CoGetInstanceFromIStorage');

int CoGetInterfaceAndReleaseStream(
  Pointer<COMObject> pStm,
  Pointer<GUID> iid,
  Pointer<Pointer> ppv,
) =>
    _CoGetInterfaceAndReleaseStream(
      pStm,
      iid,
      ppv,
    );

late final _CoGetInterfaceAndReleaseStream = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pStm,
  Pointer<GUID> iid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> pStm,
  Pointer<GUID> iid,
  Pointer<Pointer> ppv,
)>('CoGetInterfaceAndReleaseStream');

int CreateILockBytesOnHGlobal(
  int hGlobal,
  int fDeleteOnRelease,
  Pointer<Pointer<COMObject>> pplkbyt,
) =>
    _CreateILockBytesOnHGlobal(
      hGlobal,
      fDeleteOnRelease,
      pplkbyt,
    );

late final _CreateILockBytesOnHGlobal = _ole32.lookupFunction<
    Int32 Function(
  IntPtr hGlobal,
  Int32 fDeleteOnRelease,
  Pointer<Pointer<COMObject>> pplkbyt,
),
    int Function(
  int hGlobal,
  int fDeleteOnRelease,
  Pointer<Pointer<COMObject>> pplkbyt,
)>('CreateILockBytesOnHGlobal');

int CreateStreamOnHGlobal(
  int hGlobal,
  int fDeleteOnRelease,
  Pointer<Pointer<COMObject>> ppstm,
) =>
    _CreateStreamOnHGlobal(
      hGlobal,
      fDeleteOnRelease,
      ppstm,
    );

late final _CreateStreamOnHGlobal = _ole32.lookupFunction<
    Int32 Function(
  IntPtr hGlobal,
  Int32 fDeleteOnRelease,
  Pointer<Pointer<COMObject>> ppstm,
),
    int Function(
  int hGlobal,
  int fDeleteOnRelease,
  Pointer<Pointer<COMObject>> ppstm,
)>('CreateStreamOnHGlobal');

int FmtIdToPropStgName(
  Pointer<GUID> pfmtid,
  Pointer<Utf16> oszName,
) =>
    _FmtIdToPropStgName(
      pfmtid,
      oszName,
    );

late final _FmtIdToPropStgName = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> pfmtid,
  Pointer<Utf16> oszName,
),
    int Function(
  Pointer<GUID> pfmtid,
  Pointer<Utf16> oszName,
)>('FmtIdToPropStgName');

int FreePropVariantArray(
  int cVariants,
  Pointer<PROPVARIANT> rgvars,
) =>
    _FreePropVariantArray(
      cVariants,
      rgvars,
    );

late final _FreePropVariantArray = _ole32.lookupFunction<
    Int32 Function(
  Uint32 cVariants,
  Pointer<PROPVARIANT> rgvars,
),
    int Function(
  int cVariants,
  Pointer<PROPVARIANT> rgvars,
)>('FreePropVariantArray');

int GetConvertStg(
  Pointer<COMObject> pStg,
) =>
    _GetConvertStg(
      pStg,
    );

late final _GetConvertStg = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pStg,
),
    int Function(
  Pointer<COMObject> pStg,
)>('GetConvertStg');

int GetHGlobalFromILockBytes(
  Pointer<COMObject> plkbyt,
  Pointer<IntPtr> phglobal,
) =>
    _GetHGlobalFromILockBytes(
      plkbyt,
      phglobal,
    );

late final _GetHGlobalFromILockBytes = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> plkbyt,
  Pointer<IntPtr> phglobal,
),
    int Function(
  Pointer<COMObject> plkbyt,
  Pointer<IntPtr> phglobal,
)>('GetHGlobalFromILockBytes');

int GetHGlobalFromStream(
  Pointer<COMObject> pstm,
  Pointer<IntPtr> phglobal,
) =>
    _GetHGlobalFromStream(
      pstm,
      phglobal,
    );

late final _GetHGlobalFromStream = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstm,
  Pointer<IntPtr> phglobal,
),
    int Function(
  Pointer<COMObject> pstm,
  Pointer<IntPtr> phglobal,
)>('GetHGlobalFromStream');

int OleConvertIStorageToOLESTREAM(
  Pointer<COMObject> pstg,
  Pointer<OLESTREAM> lpolestream,
) =>
    _OleConvertIStorageToOLESTREAM(
      pstg,
      lpolestream,
    );

late final _OleConvertIStorageToOLESTREAM = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstg,
  Pointer<OLESTREAM> lpolestream,
),
    int Function(
  Pointer<COMObject> pstg,
  Pointer<OLESTREAM> lpolestream,
)>('OleConvertIStorageToOLESTREAM');

int OleConvertIStorageToOLESTREAMEx(
  Pointer<COMObject> pstg,
  int cfFormat,
  int lWidth,
  int lHeight,
  int dwSize,
  Pointer<STGMEDIUM> pmedium,
  Pointer<OLESTREAM> polestm,
) =>
    _OleConvertIStorageToOLESTREAMEx(
      pstg,
      cfFormat,
      lWidth,
      lHeight,
      dwSize,
      pmedium,
      polestm,
    );

late final _OleConvertIStorageToOLESTREAMEx = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstg,
  Uint16 cfFormat,
  Int32 lWidth,
  Int32 lHeight,
  Uint32 dwSize,
  Pointer<STGMEDIUM> pmedium,
  Pointer<OLESTREAM> polestm,
),
    int Function(
  Pointer<COMObject> pstg,
  int cfFormat,
  int lWidth,
  int lHeight,
  int dwSize,
  Pointer<STGMEDIUM> pmedium,
  Pointer<OLESTREAM> polestm,
)>('OleConvertIStorageToOLESTREAMEx');

int OleConvertOLESTREAMToIStorage(
  Pointer<OLESTREAM> lpolestream,
  Pointer<COMObject> pstg,
  Pointer<DVTARGETDEVICE> ptd,
) =>
    _OleConvertOLESTREAMToIStorage(
      lpolestream,
      pstg,
      ptd,
    );

late final _OleConvertOLESTREAMToIStorage = _ole32.lookupFunction<
    Int32 Function(
  Pointer<OLESTREAM> lpolestream,
  Pointer<COMObject> pstg,
  Pointer<DVTARGETDEVICE> ptd,
),
    int Function(
  Pointer<OLESTREAM> lpolestream,
  Pointer<COMObject> pstg,
  Pointer<DVTARGETDEVICE> ptd,
)>('OleConvertOLESTREAMToIStorage');

int OleConvertOLESTREAMToIStorageEx(
  Pointer<OLESTREAM> polestm,
  Pointer<COMObject> pstg,
  Pointer<Uint16> pcfFormat,
  Pointer<Int32> plwWidth,
  Pointer<Int32> plHeight,
  Pointer<Uint32> pdwSize,
  Pointer<STGMEDIUM> pmedium,
) =>
    _OleConvertOLESTREAMToIStorageEx(
      polestm,
      pstg,
      pcfFormat,
      plwWidth,
      plHeight,
      pdwSize,
      pmedium,
    );

late final _OleConvertOLESTREAMToIStorageEx = _ole32.lookupFunction<
    Int32 Function(
  Pointer<OLESTREAM> polestm,
  Pointer<COMObject> pstg,
  Pointer<Uint16> pcfFormat,
  Pointer<Int32> plwWidth,
  Pointer<Int32> plHeight,
  Pointer<Uint32> pdwSize,
  Pointer<STGMEDIUM> pmedium,
),
    int Function(
  Pointer<OLESTREAM> polestm,
  Pointer<COMObject> pstg,
  Pointer<Uint16> pcfFormat,
  Pointer<Int32> plwWidth,
  Pointer<Int32> plHeight,
  Pointer<Uint32> pdwSize,
  Pointer<STGMEDIUM> pmedium,
)>('OleConvertOLESTREAMToIStorageEx');

int PropStgNameToFmtId(
  Pointer<Utf16> oszName,
  Pointer<GUID> pfmtid,
) =>
    _PropStgNameToFmtId(
      oszName,
      pfmtid,
    );

late final _PropStgNameToFmtId = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> oszName,
  Pointer<GUID> pfmtid,
),
    int Function(
  Pointer<Utf16> oszName,
  Pointer<GUID> pfmtid,
)>('PropStgNameToFmtId');

int PropVariantClear(
  Pointer<PROPVARIANT> pvar,
) =>
    _PropVariantClear(
      pvar,
    );

late final _PropVariantClear = _ole32.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> pvar,
),
    int Function(
  Pointer<PROPVARIANT> pvar,
)>('PropVariantClear');

int PropVariantCopy(
  Pointer<PROPVARIANT> pvarDest,
  Pointer<PROPVARIANT> pvarSrc,
) =>
    _PropVariantCopy(
      pvarDest,
      pvarSrc,
    );

late final _PropVariantCopy = _ole32.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> pvarDest,
  Pointer<PROPVARIANT> pvarSrc,
),
    int Function(
  Pointer<PROPVARIANT> pvarDest,
  Pointer<PROPVARIANT> pvarSrc,
)>('PropVariantCopy');

int ReadClassStg(
  Pointer<COMObject> pStg,
  Pointer<GUID> pclsid,
) =>
    _ReadClassStg(
      pStg,
      pclsid,
    );

late final _ReadClassStg = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pStg,
  Pointer<GUID> pclsid,
),
    int Function(
  Pointer<COMObject> pStg,
  Pointer<GUID> pclsid,
)>('ReadClassStg');

int ReadClassStm(
  Pointer<COMObject> pStm,
  Pointer<GUID> pclsid,
) =>
    _ReadClassStm(
      pStm,
      pclsid,
    );

late final _ReadClassStm = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pStm,
  Pointer<GUID> pclsid,
),
    int Function(
  Pointer<COMObject> pStm,
  Pointer<GUID> pclsid,
)>('ReadClassStm');

int ReadFmtUserTypeStg(
  Pointer<COMObject> pstg,
  Pointer<Uint16> pcf,
  Pointer<Pointer<Utf16>> lplpszUserType,
) =>
    _ReadFmtUserTypeStg(
      pstg,
      pcf,
      lplpszUserType,
    );

late final _ReadFmtUserTypeStg = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstg,
  Pointer<Uint16> pcf,
  Pointer<Pointer<Utf16>> lplpszUserType,
),
    int Function(
  Pointer<COMObject> pstg,
  Pointer<Uint16> pcf,
  Pointer<Pointer<Utf16>> lplpszUserType,
)>('ReadFmtUserTypeStg');

int SetConvertStg(
  Pointer<COMObject> pStg,
  int fConvert,
) =>
    _SetConvertStg(
      pStg,
      fConvert,
    );

late final _SetConvertStg = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pStg,
  Int32 fConvert,
),
    int Function(
  Pointer<COMObject> pStg,
  int fConvert,
)>('SetConvertStg');

int StgConvertPropertyToVariant(
  Pointer<SERIALIZEDPROPERTYVALUE> pprop,
  int CodePage,
  Pointer<PROPVARIANT> pvar,
  Pointer<PMemoryAllocator> pma,
) =>
    _StgConvertPropertyToVariant(
      pprop,
      CodePage,
      pvar,
      pma,
    );

late final _StgConvertPropertyToVariant = _ole32.lookupFunction<
    Uint8 Function(
  Pointer<SERIALIZEDPROPERTYVALUE> pprop,
  Uint16 CodePage,
  Pointer<PROPVARIANT> pvar,
  Pointer<PMemoryAllocator> pma,
),
    int Function(
  Pointer<SERIALIZEDPROPERTYVALUE> pprop,
  int CodePage,
  Pointer<PROPVARIANT> pvar,
  Pointer<PMemoryAllocator> pma,
)>('StgConvertPropertyToVariant');

Pointer<SERIALIZEDPROPERTYVALUE> StgConvertVariantToProperty(
  Pointer<PROPVARIANT> pvar,
  int CodePage,
  Pointer<SERIALIZEDPROPERTYVALUE> pprop,
  Pointer<Uint32> pcb,
  int pid,
  int fReserved,
  Pointer<Uint32> pcIndirect,
) =>
    _StgConvertVariantToProperty(
      pvar,
      CodePage,
      pprop,
      pcb,
      pid,
      fReserved,
      pcIndirect,
    );

late final _StgConvertVariantToProperty = _ole32.lookupFunction<
    Pointer<SERIALIZEDPROPERTYVALUE> Function(
  Pointer<PROPVARIANT> pvar,
  Uint16 CodePage,
  Pointer<SERIALIZEDPROPERTYVALUE> pprop,
  Pointer<Uint32> pcb,
  Uint32 pid,
  Uint8 fReserved,
  Pointer<Uint32> pcIndirect,
),
    Pointer<SERIALIZEDPROPERTYVALUE> Function(
  Pointer<PROPVARIANT> pvar,
  int CodePage,
  Pointer<SERIALIZEDPROPERTYVALUE> pprop,
  Pointer<Uint32> pcb,
  int pid,
  int fReserved,
  Pointer<Uint32> pcIndirect,
)>('StgConvertVariantToProperty');

int StgCreateDocfile(
  Pointer<Utf16> pwcsName,
  int grfMode,
  int reserved,
  Pointer<Pointer<COMObject>> ppstgOpen,
) =>
    _StgCreateDocfile(
      pwcsName,
      grfMode,
      reserved,
      ppstgOpen,
    );

late final _StgCreateDocfile = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwcsName,
  Uint32 grfMode,
  Uint32 reserved,
  Pointer<Pointer<COMObject>> ppstgOpen,
),
    int Function(
  Pointer<Utf16> pwcsName,
  int grfMode,
  int reserved,
  Pointer<Pointer<COMObject>> ppstgOpen,
)>('StgCreateDocfile');

int StgCreateDocfileOnILockBytes(
  Pointer<COMObject> plkbyt,
  int grfMode,
  int reserved,
  Pointer<Pointer<COMObject>> ppstgOpen,
) =>
    _StgCreateDocfileOnILockBytes(
      plkbyt,
      grfMode,
      reserved,
      ppstgOpen,
    );

late final _StgCreateDocfileOnILockBytes = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> plkbyt,
  Uint32 grfMode,
  Uint32 reserved,
  Pointer<Pointer<COMObject>> ppstgOpen,
),
    int Function(
  Pointer<COMObject> plkbyt,
  int grfMode,
  int reserved,
  Pointer<Pointer<COMObject>> ppstgOpen,
)>('StgCreateDocfileOnILockBytes');

int StgCreatePropSetStg(
  Pointer<COMObject> pStorage,
  int dwReserved,
  Pointer<Pointer<COMObject>> ppPropSetStg,
) =>
    _StgCreatePropSetStg(
      pStorage,
      dwReserved,
      ppPropSetStg,
    );

late final _StgCreatePropSetStg = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pStorage,
  Uint32 dwReserved,
  Pointer<Pointer<COMObject>> ppPropSetStg,
),
    int Function(
  Pointer<COMObject> pStorage,
  int dwReserved,
  Pointer<Pointer<COMObject>> ppPropSetStg,
)>('StgCreatePropSetStg');

int StgCreatePropStg(
  Pointer<COMObject> pUnk,
  Pointer<GUID> fmtid,
  Pointer<GUID> pclsid,
  int grfFlags,
  int dwReserved,
  Pointer<Pointer<COMObject>> ppPropStg,
) =>
    _StgCreatePropStg(
      pUnk,
      fmtid,
      pclsid,
      grfFlags,
      dwReserved,
      ppPropStg,
    );

late final _StgCreatePropStg = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnk,
  Pointer<GUID> fmtid,
  Pointer<GUID> pclsid,
  Uint32 grfFlags,
  Uint32 dwReserved,
  Pointer<Pointer<COMObject>> ppPropStg,
),
    int Function(
  Pointer<COMObject> pUnk,
  Pointer<GUID> fmtid,
  Pointer<GUID> pclsid,
  int grfFlags,
  int dwReserved,
  Pointer<Pointer<COMObject>> ppPropStg,
)>('StgCreatePropStg');

int StgCreateStorageEx(
  Pointer<Utf16> pwcsName,
  int grfMode,
  int stgfmt,
  int grfAttrs,
  Pointer<STGOPTIONS> pStgOptions,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<GUID> riid,
  Pointer<Pointer> ppObjectOpen,
) =>
    _StgCreateStorageEx(
      pwcsName,
      grfMode,
      stgfmt,
      grfAttrs,
      pStgOptions,
      pSecurityDescriptor,
      riid,
      ppObjectOpen,
    );

late final _StgCreateStorageEx = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwcsName,
  Uint32 grfMode,
  Uint32 stgfmt,
  Uint32 grfAttrs,
  Pointer<STGOPTIONS> pStgOptions,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<GUID> riid,
  Pointer<Pointer> ppObjectOpen,
),
    int Function(
  Pointer<Utf16> pwcsName,
  int grfMode,
  int stgfmt,
  int grfAttrs,
  Pointer<STGOPTIONS> pStgOptions,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<GUID> riid,
  Pointer<Pointer> ppObjectOpen,
)>('StgCreateStorageEx');

int StgGetIFillLockBytesOnFile(
  Pointer<Utf16> pwcsName,
  Pointer<Pointer<COMObject>> ppflb,
) =>
    _StgGetIFillLockBytesOnFile(
      pwcsName,
      ppflb,
    );

late final _StgGetIFillLockBytesOnFile = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwcsName,
  Pointer<Pointer<COMObject>> ppflb,
),
    int Function(
  Pointer<Utf16> pwcsName,
  Pointer<Pointer<COMObject>> ppflb,
)>('StgGetIFillLockBytesOnFile');

int StgGetIFillLockBytesOnILockBytes(
  Pointer<COMObject> pilb,
  Pointer<Pointer<COMObject>> ppflb,
) =>
    _StgGetIFillLockBytesOnILockBytes(
      pilb,
      ppflb,
    );

late final _StgGetIFillLockBytesOnILockBytes = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pilb,
  Pointer<Pointer<COMObject>> ppflb,
),
    int Function(
  Pointer<COMObject> pilb,
  Pointer<Pointer<COMObject>> ppflb,
)>('StgGetIFillLockBytesOnILockBytes');

int StgIsStorageFile(
  Pointer<Utf16> pwcsName,
) =>
    _StgIsStorageFile(
      pwcsName,
    );

late final _StgIsStorageFile = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwcsName,
),
    int Function(
  Pointer<Utf16> pwcsName,
)>('StgIsStorageFile');

int StgIsStorageILockBytes(
  Pointer<COMObject> plkbyt,
) =>
    _StgIsStorageILockBytes(
      plkbyt,
    );

late final _StgIsStorageILockBytes = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> plkbyt,
),
    int Function(
  Pointer<COMObject> plkbyt,
)>('StgIsStorageILockBytes');

int StgOpenAsyncDocfileOnIFillLockBytes(
  Pointer<COMObject> pflb,
  int grfMode,
  int asyncFlags,
  Pointer<Pointer<COMObject>> ppstgOpen,
) =>
    _StgOpenAsyncDocfileOnIFillLockBytes(
      pflb,
      grfMode,
      asyncFlags,
      ppstgOpen,
    );

late final _StgOpenAsyncDocfileOnIFillLockBytes = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pflb,
  Uint32 grfMode,
  Uint32 asyncFlags,
  Pointer<Pointer<COMObject>> ppstgOpen,
),
    int Function(
  Pointer<COMObject> pflb,
  int grfMode,
  int asyncFlags,
  Pointer<Pointer<COMObject>> ppstgOpen,
)>('StgOpenAsyncDocfileOnIFillLockBytes');

int StgOpenPropStg(
  Pointer<COMObject> pUnk,
  Pointer<GUID> fmtid,
  int grfFlags,
  int dwReserved,
  Pointer<Pointer<COMObject>> ppPropStg,
) =>
    _StgOpenPropStg(
      pUnk,
      fmtid,
      grfFlags,
      dwReserved,
      ppPropStg,
    );

late final _StgOpenPropStg = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnk,
  Pointer<GUID> fmtid,
  Uint32 grfFlags,
  Uint32 dwReserved,
  Pointer<Pointer<COMObject>> ppPropStg,
),
    int Function(
  Pointer<COMObject> pUnk,
  Pointer<GUID> fmtid,
  int grfFlags,
  int dwReserved,
  Pointer<Pointer<COMObject>> ppPropStg,
)>('StgOpenPropStg');

int StgOpenStorage(
  Pointer<Utf16> pwcsName,
  Pointer<COMObject> pstgPriority,
  int grfMode,
  Pointer<Pointer<Uint16>> snbExclude,
  int reserved,
  Pointer<Pointer<COMObject>> ppstgOpen,
) =>
    _StgOpenStorage(
      pwcsName,
      pstgPriority,
      grfMode,
      snbExclude,
      reserved,
      ppstgOpen,
    );

late final _StgOpenStorage = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwcsName,
  Pointer<COMObject> pstgPriority,
  Uint32 grfMode,
  Pointer<Pointer<Uint16>> snbExclude,
  Uint32 reserved,
  Pointer<Pointer<COMObject>> ppstgOpen,
),
    int Function(
  Pointer<Utf16> pwcsName,
  Pointer<COMObject> pstgPriority,
  int grfMode,
  Pointer<Pointer<Uint16>> snbExclude,
  int reserved,
  Pointer<Pointer<COMObject>> ppstgOpen,
)>('StgOpenStorage');

int StgOpenStorageEx(
  Pointer<Utf16> pwcsName,
  int grfMode,
  int stgfmt,
  int grfAttrs,
  Pointer<STGOPTIONS> pStgOptions,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<GUID> riid,
  Pointer<Pointer> ppObjectOpen,
) =>
    _StgOpenStorageEx(
      pwcsName,
      grfMode,
      stgfmt,
      grfAttrs,
      pStgOptions,
      pSecurityDescriptor,
      riid,
      ppObjectOpen,
    );

late final _StgOpenStorageEx = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwcsName,
  Uint32 grfMode,
  Uint32 stgfmt,
  Uint32 grfAttrs,
  Pointer<STGOPTIONS> pStgOptions,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<GUID> riid,
  Pointer<Pointer> ppObjectOpen,
),
    int Function(
  Pointer<Utf16> pwcsName,
  int grfMode,
  int stgfmt,
  int grfAttrs,
  Pointer<STGOPTIONS> pStgOptions,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<GUID> riid,
  Pointer<Pointer> ppObjectOpen,
)>('StgOpenStorageEx');

int StgOpenStorageOnILockBytes(
  Pointer<COMObject> plkbyt,
  Pointer<COMObject> pstgPriority,
  int grfMode,
  Pointer<Pointer<Uint16>> snbExclude,
  int reserved,
  Pointer<Pointer<COMObject>> ppstgOpen,
) =>
    _StgOpenStorageOnILockBytes(
      plkbyt,
      pstgPriority,
      grfMode,
      snbExclude,
      reserved,
      ppstgOpen,
    );

late final _StgOpenStorageOnILockBytes = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> plkbyt,
  Pointer<COMObject> pstgPriority,
  Uint32 grfMode,
  Pointer<Pointer<Uint16>> snbExclude,
  Uint32 reserved,
  Pointer<Pointer<COMObject>> ppstgOpen,
),
    int Function(
  Pointer<COMObject> plkbyt,
  Pointer<COMObject> pstgPriority,
  int grfMode,
  Pointer<Pointer<Uint16>> snbExclude,
  int reserved,
  Pointer<Pointer<COMObject>> ppstgOpen,
)>('StgOpenStorageOnILockBytes');

int StgPropertyLengthAsVariant(
  Pointer<SERIALIZEDPROPERTYVALUE> pProp,
  int cbProp,
  int CodePage,
  int bReserved,
) =>
    _StgPropertyLengthAsVariant(
      pProp,
      cbProp,
      CodePage,
      bReserved,
    );

late final _StgPropertyLengthAsVariant = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<SERIALIZEDPROPERTYVALUE> pProp,
  Uint32 cbProp,
  Uint16 CodePage,
  Uint8 bReserved,
),
    int Function(
  Pointer<SERIALIZEDPROPERTYVALUE> pProp,
  int cbProp,
  int CodePage,
  int bReserved,
)>('StgPropertyLengthAsVariant');

int StgSetTimes(
  Pointer<Utf16> lpszName,
  Pointer<FILETIME> pctime,
  Pointer<FILETIME> patime,
  Pointer<FILETIME> pmtime,
) =>
    _StgSetTimes(
      lpszName,
      pctime,
      patime,
      pmtime,
    );

late final _StgSetTimes = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszName,
  Pointer<FILETIME> pctime,
  Pointer<FILETIME> patime,
  Pointer<FILETIME> pmtime,
),
    int Function(
  Pointer<Utf16> lpszName,
  Pointer<FILETIME> pctime,
  Pointer<FILETIME> patime,
  Pointer<FILETIME> pmtime,
)>('StgSetTimes');

int WriteClassStg(
  Pointer<COMObject> pStg,
  Pointer<GUID> rclsid,
) =>
    _WriteClassStg(
      pStg,
      rclsid,
    );

late final _WriteClassStg = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pStg,
  Pointer<GUID> rclsid,
),
    int Function(
  Pointer<COMObject> pStg,
  Pointer<GUID> rclsid,
)>('WriteClassStg');

int WriteClassStm(
  Pointer<COMObject> pStm,
  Pointer<GUID> rclsid,
) =>
    _WriteClassStm(
      pStm,
      rclsid,
    );

late final _WriteClassStm = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pStm,
  Pointer<GUID> rclsid,
),
    int Function(
  Pointer<COMObject> pStm,
  Pointer<GUID> rclsid,
)>('WriteClassStm');

int WriteFmtUserTypeStg(
  Pointer<COMObject> pstg,
  int cf,
  Pointer<Utf16> lpszUserType,
) =>
    _WriteFmtUserTypeStg(
      pstg,
      cf,
      lpszUserType,
    );

late final _WriteFmtUserTypeStg = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstg,
  Uint16 cf,
  Pointer<Utf16> lpszUserType,
),
    int Function(
  Pointer<COMObject> pstg,
  int cf,
  Pointer<Utf16> lpszUserType,
)>('WriteFmtUserTypeStg');

// -----------------------------------------------------------------------
// dflayout.dll
// -----------------------------------------------------------------------
final _dflayout = DynamicLibrary.open('dflayout.dll');

int StgOpenLayoutDocfile(
  Pointer<Utf16> pwcsDfName,
  int grfMode,
  int reserved,
  Pointer<Pointer<COMObject>> ppstgOpen,
) =>
    _StgOpenLayoutDocfile(
      pwcsDfName,
      grfMode,
      reserved,
      ppstgOpen,
    );

late final _StgOpenLayoutDocfile = _dflayout.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwcsDfName,
  Uint32 grfMode,
  Uint32 reserved,
  Pointer<Pointer<COMObject>> ppstgOpen,
),
    int Function(
  Pointer<Utf16> pwcsDfName,
  int grfMode,
  int reserved,
  Pointer<Pointer<COMObject>> ppstgOpen,
)>('StgOpenLayoutDocfile');

// -----------------------------------------------------------------------
// propsys.dll
// -----------------------------------------------------------------------
final _propsys = DynamicLibrary.open('propsys.dll');

int StgDeserializePropVariant(
  Pointer<SERIALIZEDPROPERTYVALUE> pprop,
  int cbMax,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _StgDeserializePropVariant(
      pprop,
      cbMax,
      ppropvar,
    );

late final _StgDeserializePropVariant = _propsys.lookupFunction<
    Int32 Function(
  Pointer<SERIALIZEDPROPERTYVALUE> pprop,
  Uint32 cbMax,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<SERIALIZEDPROPERTYVALUE> pprop,
  int cbMax,
  Pointer<PROPVARIANT> ppropvar,
)>('StgDeserializePropVariant');

int StgSerializePropVariant(
  Pointer<PROPVARIANT> ppropvar,
  Pointer<Pointer<SERIALIZEDPROPERTYVALUE>> ppProp,
  Pointer<Uint32> pcb,
) =>
    _StgSerializePropVariant(
      ppropvar,
      ppProp,
      pcb,
    );

late final _StgSerializePropVariant = _propsys.lookupFunction<
    Int32 Function(
  Pointer<PROPVARIANT> ppropvar,
  Pointer<Pointer<SERIALIZEDPROPERTYVALUE>> ppProp,
  Pointer<Uint32> pcb,
),
    int Function(
  Pointer<PROPVARIANT> ppropvar,
  Pointer<Pointer<SERIALIZEDPROPERTYVALUE>> ppProp,
  Pointer<Uint32> pcb,
)>('StgSerializePropVariant');
