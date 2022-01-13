// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../storage/cabinets/callbacks.g.dart';
import '../../storage/cabinets/structs.g.dart'; // -----------------------------------------------------------------------

// cabinet.dll
// -----------------------------------------------------------------------
final _cabinet = DynamicLibrary.open('cabinet.dll');

int FCIAddFile(
  Pointer hfci,
  Pointer<Utf8> pszSourceFile,
  Pointer<Utf8> pszFileName,
  int fExecute,
  Pointer<NativeFunction<PFNFCIGETNEXTCABINET>> pfnfcignc,
  Pointer<NativeFunction<PFNFCISTATUS>> pfnfcis,
  Pointer<NativeFunction<PFNFCIGETOPENINFO>> pfnfcigoi,
  int typeCompress,
) =>
    _FCIAddFile(
      hfci,
      pszSourceFile,
      pszFileName,
      fExecute,
      pfnfcignc,
      pfnfcis,
      pfnfcigoi,
      typeCompress,
    );

late final _FCIAddFile = _cabinet.lookupFunction<
    Int32 Function(
  Pointer hfci,
  Pointer<Utf8> pszSourceFile,
  Pointer<Utf8> pszFileName,
  Int32 fExecute,
  Pointer<NativeFunction<PFNFCIGETNEXTCABINET>> pfnfcignc,
  Pointer<NativeFunction<PFNFCISTATUS>> pfnfcis,
  Pointer<NativeFunction<PFNFCIGETOPENINFO>> pfnfcigoi,
  Uint16 typeCompress,
),
    int Function(
  Pointer hfci,
  Pointer<Utf8> pszSourceFile,
  Pointer<Utf8> pszFileName,
  int fExecute,
  Pointer<NativeFunction<PFNFCIGETNEXTCABINET>> pfnfcignc,
  Pointer<NativeFunction<PFNFCISTATUS>> pfnfcis,
  Pointer<NativeFunction<PFNFCIGETOPENINFO>> pfnfcigoi,
  int typeCompress,
)>('FCIAddFile');

Pointer FCICreate(
  Pointer<ERF> perf,
  Pointer<NativeFunction<PFNFCIFILEPLACED>> pfnfcifp,
  Pointer<NativeFunction<PFNFCIALLOC>> pfna,
  Pointer<NativeFunction<PFNFCIFREE>> pfnf,
  Pointer<NativeFunction<PFNFCIOPEN>> pfnopen,
  Pointer<NativeFunction<PFNFCIREAD>> pfnread,
  Pointer<NativeFunction<PFNFCIWRITE>> pfnwrite,
  Pointer<NativeFunction<PFNFCICLOSE>> pfnclose,
  Pointer<NativeFunction<PFNFCISEEK>> pfnseek,
  Pointer<NativeFunction<PFNFCIDELETE>> pfndelete,
  Pointer<NativeFunction<PFNFCIGETTEMPFILE>> pfnfcigtf,
  Pointer<CCAB> pccab,
  Pointer pv,
) =>
    _FCICreate(
      perf,
      pfnfcifp,
      pfna,
      pfnf,
      pfnopen,
      pfnread,
      pfnwrite,
      pfnclose,
      pfnseek,
      pfndelete,
      pfnfcigtf,
      pccab,
      pv,
    );

late final _FCICreate = _cabinet.lookupFunction<
    Pointer Function(
  Pointer<ERF> perf,
  Pointer<NativeFunction<PFNFCIFILEPLACED>> pfnfcifp,
  Pointer<NativeFunction<PFNFCIALLOC>> pfna,
  Pointer<NativeFunction<PFNFCIFREE>> pfnf,
  Pointer<NativeFunction<PFNFCIOPEN>> pfnopen,
  Pointer<NativeFunction<PFNFCIREAD>> pfnread,
  Pointer<NativeFunction<PFNFCIWRITE>> pfnwrite,
  Pointer<NativeFunction<PFNFCICLOSE>> pfnclose,
  Pointer<NativeFunction<PFNFCISEEK>> pfnseek,
  Pointer<NativeFunction<PFNFCIDELETE>> pfndelete,
  Pointer<NativeFunction<PFNFCIGETTEMPFILE>> pfnfcigtf,
  Pointer<CCAB> pccab,
  Pointer pv,
),
    Pointer Function(
  Pointer<ERF> perf,
  Pointer<NativeFunction<PFNFCIFILEPLACED>> pfnfcifp,
  Pointer<NativeFunction<PFNFCIALLOC>> pfna,
  Pointer<NativeFunction<PFNFCIFREE>> pfnf,
  Pointer<NativeFunction<PFNFCIOPEN>> pfnopen,
  Pointer<NativeFunction<PFNFCIREAD>> pfnread,
  Pointer<NativeFunction<PFNFCIWRITE>> pfnwrite,
  Pointer<NativeFunction<PFNFCICLOSE>> pfnclose,
  Pointer<NativeFunction<PFNFCISEEK>> pfnseek,
  Pointer<NativeFunction<PFNFCIDELETE>> pfndelete,
  Pointer<NativeFunction<PFNFCIGETTEMPFILE>> pfnfcigtf,
  Pointer<CCAB> pccab,
  Pointer pv,
)>('FCICreate');

int FCIDestroy(
  Pointer hfci,
) =>
    _FCIDestroy(
      hfci,
    );

late final _FCIDestroy = _cabinet.lookupFunction<
    Int32 Function(
  Pointer hfci,
),
    int Function(
  Pointer hfci,
)>('FCIDestroy');

int FCIFlushCabinet(
  Pointer hfci,
  int fGetNextCab,
  Pointer<NativeFunction<PFNFCIGETNEXTCABINET>> pfnfcignc,
  Pointer<NativeFunction<PFNFCISTATUS>> pfnfcis,
) =>
    _FCIFlushCabinet(
      hfci,
      fGetNextCab,
      pfnfcignc,
      pfnfcis,
    );

late final _FCIFlushCabinet = _cabinet.lookupFunction<
    Int32 Function(
  Pointer hfci,
  Int32 fGetNextCab,
  Pointer<NativeFunction<PFNFCIGETNEXTCABINET>> pfnfcignc,
  Pointer<NativeFunction<PFNFCISTATUS>> pfnfcis,
),
    int Function(
  Pointer hfci,
  int fGetNextCab,
  Pointer<NativeFunction<PFNFCIGETNEXTCABINET>> pfnfcignc,
  Pointer<NativeFunction<PFNFCISTATUS>> pfnfcis,
)>('FCIFlushCabinet');

int FCIFlushFolder(
  Pointer hfci,
  Pointer<NativeFunction<PFNFCIGETNEXTCABINET>> pfnfcignc,
  Pointer<NativeFunction<PFNFCISTATUS>> pfnfcis,
) =>
    _FCIFlushFolder(
      hfci,
      pfnfcignc,
      pfnfcis,
    );

late final _FCIFlushFolder = _cabinet.lookupFunction<
    Int32 Function(
  Pointer hfci,
  Pointer<NativeFunction<PFNFCIGETNEXTCABINET>> pfnfcignc,
  Pointer<NativeFunction<PFNFCISTATUS>> pfnfcis,
),
    int Function(
  Pointer hfci,
  Pointer<NativeFunction<PFNFCIGETNEXTCABINET>> pfnfcignc,
  Pointer<NativeFunction<PFNFCISTATUS>> pfnfcis,
)>('FCIFlushFolder');

int FDICopy(
  Pointer hfdi,
  Pointer<Utf8> pszCabinet,
  Pointer<Utf8> pszCabPath,
  int flags,
  Pointer<NativeFunction<PFNFDINOTIFY>> pfnfdin,
  Pointer<NativeFunction<PFNFDIDECRYPT>> pfnfdid,
  Pointer pvUser,
) =>
    _FDICopy(
      hfdi,
      pszCabinet,
      pszCabPath,
      flags,
      pfnfdin,
      pfnfdid,
      pvUser,
    );

late final _FDICopy = _cabinet.lookupFunction<
    Int32 Function(
  Pointer hfdi,
  Pointer<Utf8> pszCabinet,
  Pointer<Utf8> pszCabPath,
  Int32 flags,
  Pointer<NativeFunction<PFNFDINOTIFY>> pfnfdin,
  Pointer<NativeFunction<PFNFDIDECRYPT>> pfnfdid,
  Pointer pvUser,
),
    int Function(
  Pointer hfdi,
  Pointer<Utf8> pszCabinet,
  Pointer<Utf8> pszCabPath,
  int flags,
  Pointer<NativeFunction<PFNFDINOTIFY>> pfnfdin,
  Pointer<NativeFunction<PFNFDIDECRYPT>> pfnfdid,
  Pointer pvUser,
)>('FDICopy');

Pointer FDICreate(
  Pointer<NativeFunction<PFNALLOC>> pfnalloc,
  Pointer<NativeFunction<PFNFREE>> pfnfree,
  Pointer<NativeFunction<PFNOPEN>> pfnopen,
  Pointer<NativeFunction<PFNREAD>> pfnread,
  Pointer<NativeFunction<PFNWRITE>> pfnwrite,
  Pointer<NativeFunction<PFNCLOSE>> pfnclose,
  Pointer<NativeFunction<PFNSEEK>> pfnseek,
  int cpuType,
  Pointer<ERF> perf,
) =>
    _FDICreate(
      pfnalloc,
      pfnfree,
      pfnopen,
      pfnread,
      pfnwrite,
      pfnclose,
      pfnseek,
      cpuType,
      perf,
    );

late final _FDICreate = _cabinet.lookupFunction<
    Pointer Function(
  Pointer<NativeFunction<PFNALLOC>> pfnalloc,
  Pointer<NativeFunction<PFNFREE>> pfnfree,
  Pointer<NativeFunction<PFNOPEN>> pfnopen,
  Pointer<NativeFunction<PFNREAD>> pfnread,
  Pointer<NativeFunction<PFNWRITE>> pfnwrite,
  Pointer<NativeFunction<PFNCLOSE>> pfnclose,
  Pointer<NativeFunction<PFNSEEK>> pfnseek,
  Uint32 cpuType,
  Pointer<ERF> perf,
),
    Pointer Function(
  Pointer<NativeFunction<PFNALLOC>> pfnalloc,
  Pointer<NativeFunction<PFNFREE>> pfnfree,
  Pointer<NativeFunction<PFNOPEN>> pfnopen,
  Pointer<NativeFunction<PFNREAD>> pfnread,
  Pointer<NativeFunction<PFNWRITE>> pfnwrite,
  Pointer<NativeFunction<PFNCLOSE>> pfnclose,
  Pointer<NativeFunction<PFNSEEK>> pfnseek,
  int cpuType,
  Pointer<ERF> perf,
)>('FDICreate');

int FDIDestroy(
  Pointer hfdi,
) =>
    _FDIDestroy(
      hfdi,
    );

late final _FDIDestroy = _cabinet.lookupFunction<
    Int32 Function(
  Pointer hfdi,
),
    int Function(
  Pointer hfdi,
)>('FDIDestroy');

int FDIIsCabinet(
  Pointer hfdi,
  int hf,
  Pointer<FDICABINETINFO> pfdici,
) =>
    _FDIIsCabinet(
      hfdi,
      hf,
      pfdici,
    );

late final _FDIIsCabinet = _cabinet.lookupFunction<
    Int32 Function(
  Pointer hfdi,
  IntPtr hf,
  Pointer<FDICABINETINFO> pfdici,
),
    int Function(
  Pointer hfdi,
  int hf,
  Pointer<FDICABINETINFO> pfdici,
)>('FDIIsCabinet');

int FDITruncateCabinet(
  Pointer hfdi,
  Pointer<Utf8> pszCabinetName,
  int iFolderToDelete,
) =>
    _FDITruncateCabinet(
      hfdi,
      pszCabinetName,
      iFolderToDelete,
    );

late final _FDITruncateCabinet = _cabinet.lookupFunction<
    Int32 Function(
  Pointer hfdi,
  Pointer<Utf8> pszCabinetName,
  Uint16 iFolderToDelete,
),
    int Function(
  Pointer hfdi,
  Pointer<Utf8> pszCabinetName,
  int iFolderToDelete,
)>('FDITruncateCabinet');
