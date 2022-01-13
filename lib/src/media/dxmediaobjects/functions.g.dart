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
import '../../media/dxmediaobjects/structs.g.dart';
import '../../media/dxmediaobjects/IEnumDMO.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// msdmo.dll
// -----------------------------------------------------------------------
final _msdmo = DynamicLibrary.open('msdmo.dll');

int DMOEnum(
  Pointer<GUID> guidCategory,
  int dwFlags,
  int cInTypes,
  Pointer<DMO_PARTIAL_MEDIATYPE> pInTypes,
  int cOutTypes,
  Pointer<DMO_PARTIAL_MEDIATYPE> pOutTypes,
  Pointer<Pointer<COMObject>> ppEnum,
) =>
    _DMOEnum(
      guidCategory,
      dwFlags,
      cInTypes,
      pInTypes,
      cOutTypes,
      pOutTypes,
      ppEnum,
    );

late final _DMOEnum = _msdmo.lookupFunction<
    Int32 Function(
  Pointer<GUID> guidCategory,
  Uint32 dwFlags,
  Uint32 cInTypes,
  Pointer<DMO_PARTIAL_MEDIATYPE> pInTypes,
  Uint32 cOutTypes,
  Pointer<DMO_PARTIAL_MEDIATYPE> pOutTypes,
  Pointer<Pointer<COMObject>> ppEnum,
),
    int Function(
  Pointer<GUID> guidCategory,
  int dwFlags,
  int cInTypes,
  Pointer<DMO_PARTIAL_MEDIATYPE> pInTypes,
  int cOutTypes,
  Pointer<DMO_PARTIAL_MEDIATYPE> pOutTypes,
  Pointer<Pointer<COMObject>> ppEnum,
)>('DMOEnum');

int DMOGetName(
  Pointer<GUID> clsidDMO,
  Pointer<Utf16> szName,
) =>
    _DMOGetName(
      clsidDMO,
      szName,
    );

late final _DMOGetName = _msdmo.lookupFunction<
    Int32 Function(
  Pointer<GUID> clsidDMO,
  Pointer<Utf16> szName,
),
    int Function(
  Pointer<GUID> clsidDMO,
  Pointer<Utf16> szName,
)>('DMOGetName');

int DMOGetTypes(
  Pointer<GUID> clsidDMO,
  int ulInputTypesRequested,
  Pointer<Uint32> pulInputTypesSupplied,
  Pointer<DMO_PARTIAL_MEDIATYPE> pInputTypes,
  int ulOutputTypesRequested,
  Pointer<Uint32> pulOutputTypesSupplied,
  Pointer<DMO_PARTIAL_MEDIATYPE> pOutputTypes,
) =>
    _DMOGetTypes(
      clsidDMO,
      ulInputTypesRequested,
      pulInputTypesSupplied,
      pInputTypes,
      ulOutputTypesRequested,
      pulOutputTypesSupplied,
      pOutputTypes,
    );

late final _DMOGetTypes = _msdmo.lookupFunction<
    Int32 Function(
  Pointer<GUID> clsidDMO,
  Uint32 ulInputTypesRequested,
  Pointer<Uint32> pulInputTypesSupplied,
  Pointer<DMO_PARTIAL_MEDIATYPE> pInputTypes,
  Uint32 ulOutputTypesRequested,
  Pointer<Uint32> pulOutputTypesSupplied,
  Pointer<DMO_PARTIAL_MEDIATYPE> pOutputTypes,
),
    int Function(
  Pointer<GUID> clsidDMO,
  int ulInputTypesRequested,
  Pointer<Uint32> pulInputTypesSupplied,
  Pointer<DMO_PARTIAL_MEDIATYPE> pInputTypes,
  int ulOutputTypesRequested,
  Pointer<Uint32> pulOutputTypesSupplied,
  Pointer<DMO_PARTIAL_MEDIATYPE> pOutputTypes,
)>('DMOGetTypes');

int DMORegister(
  Pointer<Utf16> szName,
  Pointer<GUID> clsidDMO,
  Pointer<GUID> guidCategory,
  int dwFlags,
  int cInTypes,
  Pointer<DMO_PARTIAL_MEDIATYPE> pInTypes,
  int cOutTypes,
  Pointer<DMO_PARTIAL_MEDIATYPE> pOutTypes,
) =>
    _DMORegister(
      szName,
      clsidDMO,
      guidCategory,
      dwFlags,
      cInTypes,
      pInTypes,
      cOutTypes,
      pOutTypes,
    );

late final _DMORegister = _msdmo.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szName,
  Pointer<GUID> clsidDMO,
  Pointer<GUID> guidCategory,
  Uint32 dwFlags,
  Uint32 cInTypes,
  Pointer<DMO_PARTIAL_MEDIATYPE> pInTypes,
  Uint32 cOutTypes,
  Pointer<DMO_PARTIAL_MEDIATYPE> pOutTypes,
),
    int Function(
  Pointer<Utf16> szName,
  Pointer<GUID> clsidDMO,
  Pointer<GUID> guidCategory,
  int dwFlags,
  int cInTypes,
  Pointer<DMO_PARTIAL_MEDIATYPE> pInTypes,
  int cOutTypes,
  Pointer<DMO_PARTIAL_MEDIATYPE> pOutTypes,
)>('DMORegister');

int DMOUnregister(
  Pointer<GUID> clsidDMO,
  Pointer<GUID> guidCategory,
) =>
    _DMOUnregister(
      clsidDMO,
      guidCategory,
    );

late final _DMOUnregister = _msdmo.lookupFunction<
    Int32 Function(
  Pointer<GUID> clsidDMO,
  Pointer<GUID> guidCategory,
),
    int Function(
  Pointer<GUID> clsidDMO,
  Pointer<GUID> guidCategory,
)>('DMOUnregister');

int MoCopyMediaType(
  Pointer<DMO_MEDIA_TYPE> pmtDest,
  Pointer<DMO_MEDIA_TYPE> pmtSrc,
) =>
    _MoCopyMediaType(
      pmtDest,
      pmtSrc,
    );

late final _MoCopyMediaType = _msdmo.lookupFunction<
    Int32 Function(
  Pointer<DMO_MEDIA_TYPE> pmtDest,
  Pointer<DMO_MEDIA_TYPE> pmtSrc,
),
    int Function(
  Pointer<DMO_MEDIA_TYPE> pmtDest,
  Pointer<DMO_MEDIA_TYPE> pmtSrc,
)>('MoCopyMediaType');

int MoCreateMediaType(
  Pointer<Pointer<DMO_MEDIA_TYPE>> ppmt,
  int cbFormat,
) =>
    _MoCreateMediaType(
      ppmt,
      cbFormat,
    );

late final _MoCreateMediaType = _msdmo.lookupFunction<
    Int32 Function(
  Pointer<Pointer<DMO_MEDIA_TYPE>> ppmt,
  Uint32 cbFormat,
),
    int Function(
  Pointer<Pointer<DMO_MEDIA_TYPE>> ppmt,
  int cbFormat,
)>('MoCreateMediaType');

int MoDeleteMediaType(
  Pointer<DMO_MEDIA_TYPE> pmt,
) =>
    _MoDeleteMediaType(
      pmt,
    );

late final _MoDeleteMediaType = _msdmo.lookupFunction<
    Int32 Function(
  Pointer<DMO_MEDIA_TYPE> pmt,
),
    int Function(
  Pointer<DMO_MEDIA_TYPE> pmt,
)>('MoDeleteMediaType');

int MoDuplicateMediaType(
  Pointer<Pointer<DMO_MEDIA_TYPE>> ppmtDest,
  Pointer<DMO_MEDIA_TYPE> pmtSrc,
) =>
    _MoDuplicateMediaType(
      ppmtDest,
      pmtSrc,
    );

late final _MoDuplicateMediaType = _msdmo.lookupFunction<
    Int32 Function(
  Pointer<Pointer<DMO_MEDIA_TYPE>> ppmtDest,
  Pointer<DMO_MEDIA_TYPE> pmtSrc,
),
    int Function(
  Pointer<Pointer<DMO_MEDIA_TYPE>> ppmtDest,
  Pointer<DMO_MEDIA_TYPE> pmtSrc,
)>('MoDuplicateMediaType');

int MoFreeMediaType(
  Pointer<DMO_MEDIA_TYPE> pmt,
) =>
    _MoFreeMediaType(
      pmt,
    );

late final _MoFreeMediaType = _msdmo.lookupFunction<
    Int32 Function(
  Pointer<DMO_MEDIA_TYPE> pmt,
),
    int Function(
  Pointer<DMO_MEDIA_TYPE> pmt,
)>('MoFreeMediaType');

int MoInitMediaType(
  Pointer<DMO_MEDIA_TYPE> pmt,
  int cbFormat,
) =>
    _MoInitMediaType(
      pmt,
      cbFormat,
    );

late final _MoInitMediaType = _msdmo.lookupFunction<
    Int32 Function(
  Pointer<DMO_MEDIA_TYPE> pmt,
  Uint32 cbFormat,
),
    int Function(
  Pointer<DMO_MEDIA_TYPE> pmt,
  int cbFormat,
)>('MoInitMediaType');
