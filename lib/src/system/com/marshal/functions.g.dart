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
import '../../../foundation/structs.g.dart';
import '../../../system/com/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../system/com/IUnknown.dart';
import '../../../system/com/marshal/IMarshal.dart';
import '../../../system/com/IStream.dart';
import '../../../ui/windowsandmessaging/structs.g.dart';
import '../../../graphics/gdi/structs.g.dart'; // -----------------------------------------------------------------------

// oleaut32.dll
// -----------------------------------------------------------------------
final _oleaut32 = DynamicLibrary.open('oleaut32.dll');

void BSTR_UserFree(
  Pointer<Uint32> param0,
  Pointer<Pointer<Utf16>> param1,
) =>
    _BSTR_UserFree(
      param0,
      param1,
    );

late final _BSTR_UserFree = _oleaut32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<Pointer<Utf16>> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<Pointer<Utf16>> param1,
)>('BSTR_UserFree');

void BSTR_UserFree64(
  Pointer<Uint32> param0,
  Pointer<Pointer<Utf16>> param1,
) =>
    _BSTR_UserFree64(
      param0,
      param1,
    );

late final _BSTR_UserFree64 = _oleaut32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<Pointer<Utf16>> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<Pointer<Utf16>> param1,
)>('BSTR_UserFree64');

Pointer<Uint8> BSTR_UserMarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Utf16>> param2,
) =>
    _BSTR_UserMarshal(
      param0,
      param1,
      param2,
    );

late final _BSTR_UserMarshal = _oleaut32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Utf16>> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Utf16>> param2,
)>('BSTR_UserMarshal');

Pointer<Uint8> BSTR_UserMarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Utf16>> param2,
) =>
    _BSTR_UserMarshal64(
      param0,
      param1,
      param2,
    );

late final _BSTR_UserMarshal64 = _oleaut32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Utf16>> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Utf16>> param2,
)>('BSTR_UserMarshal64');

int BSTR_UserSize(
  Pointer<Uint32> param0,
  int param1,
  Pointer<Pointer<Utf16>> param2,
) =>
    _BSTR_UserSize(
      param0,
      param1,
      param2,
    );

late final _BSTR_UserSize = _oleaut32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<Pointer<Utf16>> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<Pointer<Utf16>> param2,
)>('BSTR_UserSize');

int BSTR_UserSize64(
  Pointer<Uint32> param0,
  int param1,
  Pointer<Pointer<Utf16>> param2,
) =>
    _BSTR_UserSize64(
      param0,
      param1,
      param2,
    );

late final _BSTR_UserSize64 = _oleaut32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<Pointer<Utf16>> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<Pointer<Utf16>> param2,
)>('BSTR_UserSize64');

Pointer<Uint8> BSTR_UserUnmarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Utf16>> param2,
) =>
    _BSTR_UserUnmarshal(
      param0,
      param1,
      param2,
    );

late final _BSTR_UserUnmarshal = _oleaut32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Utf16>> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Utf16>> param2,
)>('BSTR_UserUnmarshal');

Pointer<Uint8> BSTR_UserUnmarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Utf16>> param2,
) =>
    _BSTR_UserUnmarshal64(
      param0,
      param1,
      param2,
    );

late final _BSTR_UserUnmarshal64 = _oleaut32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Utf16>> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Utf16>> param2,
)>('BSTR_UserUnmarshal64');

void LPSAFEARRAY_UserFree(
  Pointer<Uint32> param0,
  Pointer<Pointer<SAFEARRAY>> param1,
) =>
    _LPSAFEARRAY_UserFree(
      param0,
      param1,
    );

late final _LPSAFEARRAY_UserFree = _oleaut32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<Pointer<SAFEARRAY>> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<Pointer<SAFEARRAY>> param1,
)>('LPSAFEARRAY_UserFree');

void LPSAFEARRAY_UserFree64(
  Pointer<Uint32> param0,
  Pointer<Pointer<SAFEARRAY>> param1,
) =>
    _LPSAFEARRAY_UserFree64(
      param0,
      param1,
    );

late final _LPSAFEARRAY_UserFree64 = _oleaut32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<Pointer<SAFEARRAY>> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<Pointer<SAFEARRAY>> param1,
)>('LPSAFEARRAY_UserFree64');

Pointer<Uint8> LPSAFEARRAY_UserMarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<SAFEARRAY>> param2,
) =>
    _LPSAFEARRAY_UserMarshal(
      param0,
      param1,
      param2,
    );

late final _LPSAFEARRAY_UserMarshal = _oleaut32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<SAFEARRAY>> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<SAFEARRAY>> param2,
)>('LPSAFEARRAY_UserMarshal');

Pointer<Uint8> LPSAFEARRAY_UserMarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<SAFEARRAY>> param2,
) =>
    _LPSAFEARRAY_UserMarshal64(
      param0,
      param1,
      param2,
    );

late final _LPSAFEARRAY_UserMarshal64 = _oleaut32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<SAFEARRAY>> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<SAFEARRAY>> param2,
)>('LPSAFEARRAY_UserMarshal64');

int LPSAFEARRAY_UserSize(
  Pointer<Uint32> param0,
  int param1,
  Pointer<Pointer<SAFEARRAY>> param2,
) =>
    _LPSAFEARRAY_UserSize(
      param0,
      param1,
      param2,
    );

late final _LPSAFEARRAY_UserSize = _oleaut32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<Pointer<SAFEARRAY>> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<Pointer<SAFEARRAY>> param2,
)>('LPSAFEARRAY_UserSize');

int LPSAFEARRAY_UserSize64(
  Pointer<Uint32> param0,
  int param1,
  Pointer<Pointer<SAFEARRAY>> param2,
) =>
    _LPSAFEARRAY_UserSize64(
      param0,
      param1,
      param2,
    );

late final _LPSAFEARRAY_UserSize64 = _oleaut32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<Pointer<SAFEARRAY>> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<Pointer<SAFEARRAY>> param2,
)>('LPSAFEARRAY_UserSize64');

Pointer<Uint8> LPSAFEARRAY_UserUnmarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<SAFEARRAY>> param2,
) =>
    _LPSAFEARRAY_UserUnmarshal(
      param0,
      param1,
      param2,
    );

late final _LPSAFEARRAY_UserUnmarshal = _oleaut32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<SAFEARRAY>> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<SAFEARRAY>> param2,
)>('LPSAFEARRAY_UserUnmarshal');

Pointer<Uint8> LPSAFEARRAY_UserUnmarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<SAFEARRAY>> param2,
) =>
    _LPSAFEARRAY_UserUnmarshal64(
      param0,
      param1,
      param2,
    );

late final _LPSAFEARRAY_UserUnmarshal64 = _oleaut32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<SAFEARRAY>> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<SAFEARRAY>> param2,
)>('LPSAFEARRAY_UserUnmarshal64');

void VARIANT_UserFree(
  Pointer<Uint32> param0,
  Pointer<VARIANT> param1,
) =>
    _VARIANT_UserFree(
      param0,
      param1,
    );

late final _VARIANT_UserFree = _oleaut32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<VARIANT> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<VARIANT> param1,
)>('VARIANT_UserFree');

void VARIANT_UserFree64(
  Pointer<Uint32> param0,
  Pointer<VARIANT> param1,
) =>
    _VARIANT_UserFree64(
      param0,
      param1,
    );

late final _VARIANT_UserFree64 = _oleaut32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<VARIANT> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<VARIANT> param1,
)>('VARIANT_UserFree64');

Pointer<Uint8> VARIANT_UserMarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<VARIANT> param2,
) =>
    _VARIANT_UserMarshal(
      param0,
      param1,
      param2,
    );

late final _VARIANT_UserMarshal = _oleaut32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<VARIANT> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<VARIANT> param2,
)>('VARIANT_UserMarshal');

Pointer<Uint8> VARIANT_UserMarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<VARIANT> param2,
) =>
    _VARIANT_UserMarshal64(
      param0,
      param1,
      param2,
    );

late final _VARIANT_UserMarshal64 = _oleaut32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<VARIANT> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<VARIANT> param2,
)>('VARIANT_UserMarshal64');

int VARIANT_UserSize(
  Pointer<Uint32> param0,
  int param1,
  Pointer<VARIANT> param2,
) =>
    _VARIANT_UserSize(
      param0,
      param1,
      param2,
    );

late final _VARIANT_UserSize = _oleaut32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<VARIANT> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<VARIANT> param2,
)>('VARIANT_UserSize');

int VARIANT_UserSize64(
  Pointer<Uint32> param0,
  int param1,
  Pointer<VARIANT> param2,
) =>
    _VARIANT_UserSize64(
      param0,
      param1,
      param2,
    );

late final _VARIANT_UserSize64 = _oleaut32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<VARIANT> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<VARIANT> param2,
)>('VARIANT_UserSize64');

Pointer<Uint8> VARIANT_UserUnmarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<VARIANT> param2,
) =>
    _VARIANT_UserUnmarshal(
      param0,
      param1,
      param2,
    );

late final _VARIANT_UserUnmarshal = _oleaut32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<VARIANT> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<VARIANT> param2,
)>('VARIANT_UserUnmarshal');

Pointer<Uint8> VARIANT_UserUnmarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<VARIANT> param2,
) =>
    _VARIANT_UserUnmarshal64(
      param0,
      param1,
      param2,
    );

late final _VARIANT_UserUnmarshal64 = _oleaut32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<VARIANT> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<VARIANT> param2,
)>('VARIANT_UserUnmarshal64');

// -----------------------------------------------------------------------
// ole32.dll
// -----------------------------------------------------------------------
final _ole32 = DynamicLibrary.open('ole32.dll');

void CLIPFORMAT_UserFree(
  Pointer<Uint32> param0,
  Pointer<Uint16> param1,
) =>
    _CLIPFORMAT_UserFree(
      param0,
      param1,
    );

late final _CLIPFORMAT_UserFree = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<Uint16> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<Uint16> param1,
)>('CLIPFORMAT_UserFree');

void CLIPFORMAT_UserFree64(
  Pointer<Uint32> param0,
  Pointer<Uint16> param1,
) =>
    _CLIPFORMAT_UserFree64(
      param0,
      param1,
    );

late final _CLIPFORMAT_UserFree64 = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<Uint16> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<Uint16> param1,
)>('CLIPFORMAT_UserFree64');

Pointer<Uint8> CLIPFORMAT_UserMarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Uint16> param2,
) =>
    _CLIPFORMAT_UserMarshal(
      param0,
      param1,
      param2,
    );

late final _CLIPFORMAT_UserMarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Uint16> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Uint16> param2,
)>('CLIPFORMAT_UserMarshal');

Pointer<Uint8> CLIPFORMAT_UserMarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Uint16> param2,
) =>
    _CLIPFORMAT_UserMarshal64(
      param0,
      param1,
      param2,
    );

late final _CLIPFORMAT_UserMarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Uint16> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Uint16> param2,
)>('CLIPFORMAT_UserMarshal64');

int CLIPFORMAT_UserSize(
  Pointer<Uint32> param0,
  int param1,
  Pointer<Uint16> param2,
) =>
    _CLIPFORMAT_UserSize(
      param0,
      param1,
      param2,
    );

late final _CLIPFORMAT_UserSize = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<Uint16> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<Uint16> param2,
)>('CLIPFORMAT_UserSize');

int CLIPFORMAT_UserSize64(
  Pointer<Uint32> param0,
  int param1,
  Pointer<Uint16> param2,
) =>
    _CLIPFORMAT_UserSize64(
      param0,
      param1,
      param2,
    );

late final _CLIPFORMAT_UserSize64 = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<Uint16> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<Uint16> param2,
)>('CLIPFORMAT_UserSize64');

Pointer<Uint8> CLIPFORMAT_UserUnmarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Uint16> param2,
) =>
    _CLIPFORMAT_UserUnmarshal(
      param0,
      param1,
      param2,
    );

late final _CLIPFORMAT_UserUnmarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Uint16> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Uint16> param2,
)>('CLIPFORMAT_UserUnmarshal');

Pointer<Uint8> CLIPFORMAT_UserUnmarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Uint16> param2,
) =>
    _CLIPFORMAT_UserUnmarshal64(
      param0,
      param1,
      param2,
    );

late final _CLIPFORMAT_UserUnmarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Uint16> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Uint16> param2,
)>('CLIPFORMAT_UserUnmarshal64');

int CoGetMarshalSizeMax(
  Pointer<Uint32> pulSize,
  Pointer<GUID> riid,
  Pointer<COMObject> pUnk,
  int dwDestContext,
  Pointer pvDestContext,
  int mshlflags,
) =>
    _CoGetMarshalSizeMax(
      pulSize,
      riid,
      pUnk,
      dwDestContext,
      pvDestContext,
      mshlflags,
    );

late final _CoGetMarshalSizeMax = _ole32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pulSize,
  Pointer<GUID> riid,
  Pointer<COMObject> pUnk,
  Uint32 dwDestContext,
  Pointer pvDestContext,
  Uint32 mshlflags,
),
    int Function(
  Pointer<Uint32> pulSize,
  Pointer<GUID> riid,
  Pointer<COMObject> pUnk,
  int dwDestContext,
  Pointer pvDestContext,
  int mshlflags,
)>('CoGetMarshalSizeMax');

int CoGetStandardMarshal(
  Pointer<GUID> riid,
  Pointer<COMObject> pUnk,
  int dwDestContext,
  Pointer pvDestContext,
  int mshlflags,
  Pointer<Pointer<COMObject>> ppMarshal,
) =>
    _CoGetStandardMarshal(
      riid,
      pUnk,
      dwDestContext,
      pvDestContext,
      mshlflags,
      ppMarshal,
    );

late final _CoGetStandardMarshal = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<COMObject> pUnk,
  Uint32 dwDestContext,
  Pointer pvDestContext,
  Uint32 mshlflags,
  Pointer<Pointer<COMObject>> ppMarshal,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<COMObject> pUnk,
  int dwDestContext,
  Pointer pvDestContext,
  int mshlflags,
  Pointer<Pointer<COMObject>> ppMarshal,
)>('CoGetStandardMarshal');

int CoGetStdMarshalEx(
  Pointer<COMObject> pUnkOuter,
  int smexflags,
  Pointer<Pointer<COMObject>> ppUnkInner,
) =>
    _CoGetStdMarshalEx(
      pUnkOuter,
      smexflags,
      ppUnkInner,
    );

late final _CoGetStdMarshalEx = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnkOuter,
  Uint32 smexflags,
  Pointer<Pointer<COMObject>> ppUnkInner,
),
    int Function(
  Pointer<COMObject> pUnkOuter,
  int smexflags,
  Pointer<Pointer<COMObject>> ppUnkInner,
)>('CoGetStdMarshalEx');

int CoMarshalHresult(
  Pointer<COMObject> pstm,
  int hresult,
) =>
    _CoMarshalHresult(
      pstm,
      hresult,
    );

late final _CoMarshalHresult = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstm,
  Int32 hresult,
),
    int Function(
  Pointer<COMObject> pstm,
  int hresult,
)>('CoMarshalHresult');

int CoMarshalInterThreadInterfaceInStream(
  Pointer<GUID> riid,
  Pointer<COMObject> pUnk,
  Pointer<Pointer<COMObject>> ppStm,
) =>
    _CoMarshalInterThreadInterfaceInStream(
      riid,
      pUnk,
      ppStm,
    );

late final _CoMarshalInterThreadInterfaceInStream = _ole32.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<COMObject> pUnk,
  Pointer<Pointer<COMObject>> ppStm,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<COMObject> pUnk,
  Pointer<Pointer<COMObject>> ppStm,
)>('CoMarshalInterThreadInterfaceInStream');

int CoMarshalInterface(
  Pointer<COMObject> pStm,
  Pointer<GUID> riid,
  Pointer<COMObject> pUnk,
  int dwDestContext,
  Pointer pvDestContext,
  int mshlflags,
) =>
    _CoMarshalInterface(
      pStm,
      riid,
      pUnk,
      dwDestContext,
      pvDestContext,
      mshlflags,
    );

late final _CoMarshalInterface = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pStm,
  Pointer<GUID> riid,
  Pointer<COMObject> pUnk,
  Uint32 dwDestContext,
  Pointer pvDestContext,
  Uint32 mshlflags,
),
    int Function(
  Pointer<COMObject> pStm,
  Pointer<GUID> riid,
  Pointer<COMObject> pUnk,
  int dwDestContext,
  Pointer pvDestContext,
  int mshlflags,
)>('CoMarshalInterface');

int CoReleaseMarshalData(
  Pointer<COMObject> pStm,
) =>
    _CoReleaseMarshalData(
      pStm,
    );

late final _CoReleaseMarshalData = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pStm,
),
    int Function(
  Pointer<COMObject> pStm,
)>('CoReleaseMarshalData');

int CoUnmarshalHresult(
  Pointer<COMObject> pstm,
  Pointer<Int32> phresult,
) =>
    _CoUnmarshalHresult(
      pstm,
      phresult,
    );

late final _CoUnmarshalHresult = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstm,
  Pointer<Int32> phresult,
),
    int Function(
  Pointer<COMObject> pstm,
  Pointer<Int32> phresult,
)>('CoUnmarshalHresult');

int CoUnmarshalInterface(
  Pointer<COMObject> pStm,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _CoUnmarshalInterface(
      pStm,
      riid,
      ppv,
    );

late final _CoUnmarshalInterface = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pStm,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> pStm,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('CoUnmarshalInterface');

void HACCEL_UserFree(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HACCEL_UserFree(
      param0,
      param1,
    );

late final _HACCEL_UserFree = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HACCEL_UserFree');

void HACCEL_UserFree64(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HACCEL_UserFree64(
      param0,
      param1,
    );

late final _HACCEL_UserFree64 = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HACCEL_UserFree64');

Pointer<Uint8> HACCEL_UserMarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HACCEL_UserMarshal(
      param0,
      param1,
      param2,
    );

late final _HACCEL_UserMarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HACCEL_UserMarshal');

Pointer<Uint8> HACCEL_UserMarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HACCEL_UserMarshal64(
      param0,
      param1,
      param2,
    );

late final _HACCEL_UserMarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HACCEL_UserMarshal64');

int HACCEL_UserSize(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HACCEL_UserSize(
      param0,
      param1,
      param2,
    );

late final _HACCEL_UserSize = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HACCEL_UserSize');

int HACCEL_UserSize64(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HACCEL_UserSize64(
      param0,
      param1,
      param2,
    );

late final _HACCEL_UserSize64 = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HACCEL_UserSize64');

Pointer<Uint8> HACCEL_UserUnmarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HACCEL_UserUnmarshal(
      param0,
      param1,
      param2,
    );

late final _HACCEL_UserUnmarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HACCEL_UserUnmarshal');

Pointer<Uint8> HACCEL_UserUnmarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HACCEL_UserUnmarshal64(
      param0,
      param1,
      param2,
    );

late final _HACCEL_UserUnmarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HACCEL_UserUnmarshal64');

void HBITMAP_UserFree(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HBITMAP_UserFree(
      param0,
      param1,
    );

late final _HBITMAP_UserFree = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HBITMAP_UserFree');

void HBITMAP_UserFree64(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HBITMAP_UserFree64(
      param0,
      param1,
    );

late final _HBITMAP_UserFree64 = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HBITMAP_UserFree64');

Pointer<Uint8> HBITMAP_UserMarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HBITMAP_UserMarshal(
      param0,
      param1,
      param2,
    );

late final _HBITMAP_UserMarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HBITMAP_UserMarshal');

Pointer<Uint8> HBITMAP_UserMarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HBITMAP_UserMarshal64(
      param0,
      param1,
      param2,
    );

late final _HBITMAP_UserMarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HBITMAP_UserMarshal64');

int HBITMAP_UserSize(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HBITMAP_UserSize(
      param0,
      param1,
      param2,
    );

late final _HBITMAP_UserSize = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HBITMAP_UserSize');

int HBITMAP_UserSize64(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HBITMAP_UserSize64(
      param0,
      param1,
      param2,
    );

late final _HBITMAP_UserSize64 = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HBITMAP_UserSize64');

Pointer<Uint8> HBITMAP_UserUnmarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HBITMAP_UserUnmarshal(
      param0,
      param1,
      param2,
    );

late final _HBITMAP_UserUnmarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HBITMAP_UserUnmarshal');

Pointer<Uint8> HBITMAP_UserUnmarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HBITMAP_UserUnmarshal64(
      param0,
      param1,
      param2,
    );

late final _HBITMAP_UserUnmarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HBITMAP_UserUnmarshal64');

void HDC_UserFree(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HDC_UserFree(
      param0,
      param1,
    );

late final _HDC_UserFree = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HDC_UserFree');

void HDC_UserFree64(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HDC_UserFree64(
      param0,
      param1,
    );

late final _HDC_UserFree64 = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HDC_UserFree64');

Pointer<Uint8> HDC_UserMarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HDC_UserMarshal(
      param0,
      param1,
      param2,
    );

late final _HDC_UserMarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HDC_UserMarshal');

Pointer<Uint8> HDC_UserMarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HDC_UserMarshal64(
      param0,
      param1,
      param2,
    );

late final _HDC_UserMarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HDC_UserMarshal64');

int HDC_UserSize(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HDC_UserSize(
      param0,
      param1,
      param2,
    );

late final _HDC_UserSize = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HDC_UserSize');

int HDC_UserSize64(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HDC_UserSize64(
      param0,
      param1,
      param2,
    );

late final _HDC_UserSize64 = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HDC_UserSize64');

Pointer<Uint8> HDC_UserUnmarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HDC_UserUnmarshal(
      param0,
      param1,
      param2,
    );

late final _HDC_UserUnmarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HDC_UserUnmarshal');

Pointer<Uint8> HDC_UserUnmarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HDC_UserUnmarshal64(
      param0,
      param1,
      param2,
    );

late final _HDC_UserUnmarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HDC_UserUnmarshal64');

void HGLOBAL_UserFree(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HGLOBAL_UserFree(
      param0,
      param1,
    );

late final _HGLOBAL_UserFree = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HGLOBAL_UserFree');

void HGLOBAL_UserFree64(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HGLOBAL_UserFree64(
      param0,
      param1,
    );

late final _HGLOBAL_UserFree64 = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HGLOBAL_UserFree64');

Pointer<Uint8> HGLOBAL_UserMarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HGLOBAL_UserMarshal(
      param0,
      param1,
      param2,
    );

late final _HGLOBAL_UserMarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HGLOBAL_UserMarshal');

Pointer<Uint8> HGLOBAL_UserMarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HGLOBAL_UserMarshal64(
      param0,
      param1,
      param2,
    );

late final _HGLOBAL_UserMarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HGLOBAL_UserMarshal64');

int HGLOBAL_UserSize(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HGLOBAL_UserSize(
      param0,
      param1,
      param2,
    );

late final _HGLOBAL_UserSize = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HGLOBAL_UserSize');

int HGLOBAL_UserSize64(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HGLOBAL_UserSize64(
      param0,
      param1,
      param2,
    );

late final _HGLOBAL_UserSize64 = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HGLOBAL_UserSize64');

Pointer<Uint8> HGLOBAL_UserUnmarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HGLOBAL_UserUnmarshal(
      param0,
      param1,
      param2,
    );

late final _HGLOBAL_UserUnmarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HGLOBAL_UserUnmarshal');

Pointer<Uint8> HGLOBAL_UserUnmarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HGLOBAL_UserUnmarshal64(
      param0,
      param1,
      param2,
    );

late final _HGLOBAL_UserUnmarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HGLOBAL_UserUnmarshal64');

void HICON_UserFree(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HICON_UserFree(
      param0,
      param1,
    );

late final _HICON_UserFree = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HICON_UserFree');

void HICON_UserFree64(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HICON_UserFree64(
      param0,
      param1,
    );

late final _HICON_UserFree64 = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HICON_UserFree64');

Pointer<Uint8> HICON_UserMarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HICON_UserMarshal(
      param0,
      param1,
      param2,
    );

late final _HICON_UserMarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HICON_UserMarshal');

Pointer<Uint8> HICON_UserMarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HICON_UserMarshal64(
      param0,
      param1,
      param2,
    );

late final _HICON_UserMarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HICON_UserMarshal64');

int HICON_UserSize(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HICON_UserSize(
      param0,
      param1,
      param2,
    );

late final _HICON_UserSize = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HICON_UserSize');

int HICON_UserSize64(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HICON_UserSize64(
      param0,
      param1,
      param2,
    );

late final _HICON_UserSize64 = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HICON_UserSize64');

Pointer<Uint8> HICON_UserUnmarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HICON_UserUnmarshal(
      param0,
      param1,
      param2,
    );

late final _HICON_UserUnmarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HICON_UserUnmarshal');

Pointer<Uint8> HICON_UserUnmarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HICON_UserUnmarshal64(
      param0,
      param1,
      param2,
    );

late final _HICON_UserUnmarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HICON_UserUnmarshal64');

void HMENU_UserFree(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HMENU_UserFree(
      param0,
      param1,
    );

late final _HMENU_UserFree = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HMENU_UserFree');

void HMENU_UserFree64(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HMENU_UserFree64(
      param0,
      param1,
    );

late final _HMENU_UserFree64 = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HMENU_UserFree64');

Pointer<Uint8> HMENU_UserMarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HMENU_UserMarshal(
      param0,
      param1,
      param2,
    );

late final _HMENU_UserMarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HMENU_UserMarshal');

Pointer<Uint8> HMENU_UserMarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HMENU_UserMarshal64(
      param0,
      param1,
      param2,
    );

late final _HMENU_UserMarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HMENU_UserMarshal64');

int HMENU_UserSize(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HMENU_UserSize(
      param0,
      param1,
      param2,
    );

late final _HMENU_UserSize = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HMENU_UserSize');

int HMENU_UserSize64(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HMENU_UserSize64(
      param0,
      param1,
      param2,
    );

late final _HMENU_UserSize64 = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HMENU_UserSize64');

Pointer<Uint8> HMENU_UserUnmarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HMENU_UserUnmarshal(
      param0,
      param1,
      param2,
    );

late final _HMENU_UserUnmarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HMENU_UserUnmarshal');

Pointer<Uint8> HMENU_UserUnmarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HMENU_UserUnmarshal64(
      param0,
      param1,
      param2,
    );

late final _HMENU_UserUnmarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HMENU_UserUnmarshal64');

void HPALETTE_UserFree(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HPALETTE_UserFree(
      param0,
      param1,
    );

late final _HPALETTE_UserFree = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HPALETTE_UserFree');

void HPALETTE_UserFree64(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HPALETTE_UserFree64(
      param0,
      param1,
    );

late final _HPALETTE_UserFree64 = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HPALETTE_UserFree64');

Pointer<Uint8> HPALETTE_UserMarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HPALETTE_UserMarshal(
      param0,
      param1,
      param2,
    );

late final _HPALETTE_UserMarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HPALETTE_UserMarshal');

Pointer<Uint8> HPALETTE_UserMarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HPALETTE_UserMarshal64(
      param0,
      param1,
      param2,
    );

late final _HPALETTE_UserMarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HPALETTE_UserMarshal64');

int HPALETTE_UserSize(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HPALETTE_UserSize(
      param0,
      param1,
      param2,
    );

late final _HPALETTE_UserSize = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HPALETTE_UserSize');

int HPALETTE_UserSize64(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HPALETTE_UserSize64(
      param0,
      param1,
      param2,
    );

late final _HPALETTE_UserSize64 = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HPALETTE_UserSize64');

Pointer<Uint8> HPALETTE_UserUnmarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HPALETTE_UserUnmarshal(
      param0,
      param1,
      param2,
    );

late final _HPALETTE_UserUnmarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HPALETTE_UserUnmarshal');

Pointer<Uint8> HPALETTE_UserUnmarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HPALETTE_UserUnmarshal64(
      param0,
      param1,
      param2,
    );

late final _HPALETTE_UserUnmarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HPALETTE_UserUnmarshal64');

void HWND_UserFree(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HWND_UserFree(
      param0,
      param1,
    );

late final _HWND_UserFree = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HWND_UserFree');

void HWND_UserFree64(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HWND_UserFree64(
      param0,
      param1,
    );

late final _HWND_UserFree64 = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HWND_UserFree64');

Pointer<Uint8> HWND_UserMarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HWND_UserMarshal(
      param0,
      param1,
      param2,
    );

late final _HWND_UserMarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HWND_UserMarshal');

Pointer<Uint8> HWND_UserMarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HWND_UserMarshal64(
      param0,
      param1,
      param2,
    );

late final _HWND_UserMarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HWND_UserMarshal64');

int HWND_UserSize(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HWND_UserSize(
      param0,
      param1,
      param2,
    );

late final _HWND_UserSize = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HWND_UserSize');

int HWND_UserSize64(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HWND_UserSize64(
      param0,
      param1,
      param2,
    );

late final _HWND_UserSize64 = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HWND_UserSize64');

Pointer<Uint8> HWND_UserUnmarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HWND_UserUnmarshal(
      param0,
      param1,
      param2,
    );

late final _HWND_UserUnmarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HWND_UserUnmarshal');

Pointer<Uint8> HWND_UserUnmarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HWND_UserUnmarshal64(
      param0,
      param1,
      param2,
    );

late final _HWND_UserUnmarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HWND_UserUnmarshal64');

void SNB_UserFree(
  Pointer<Uint32> param0,
  Pointer<Pointer<Pointer<Uint16>>> param1,
) =>
    _SNB_UserFree(
      param0,
      param1,
    );

late final _SNB_UserFree = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<Pointer<Pointer<Uint16>>> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<Pointer<Pointer<Uint16>>> param1,
)>('SNB_UserFree');

void SNB_UserFree64(
  Pointer<Uint32> param0,
  Pointer<Pointer<Pointer<Uint16>>> param1,
) =>
    _SNB_UserFree64(
      param0,
      param1,
    );

late final _SNB_UserFree64 = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<Pointer<Pointer<Uint16>>> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<Pointer<Pointer<Uint16>>> param1,
)>('SNB_UserFree64');

Pointer<Uint8> SNB_UserMarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
) =>
    _SNB_UserMarshal(
      param0,
      param1,
      param2,
    );

late final _SNB_UserMarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
)>('SNB_UserMarshal');

Pointer<Uint8> SNB_UserMarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
) =>
    _SNB_UserMarshal64(
      param0,
      param1,
      param2,
    );

late final _SNB_UserMarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
)>('SNB_UserMarshal64');

int SNB_UserSize(
  Pointer<Uint32> param0,
  int param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
) =>
    _SNB_UserSize(
      param0,
      param1,
      param2,
    );

late final _SNB_UserSize = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
)>('SNB_UserSize');

int SNB_UserSize64(
  Pointer<Uint32> param0,
  int param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
) =>
    _SNB_UserSize64(
      param0,
      param1,
      param2,
    );

late final _SNB_UserSize64 = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
)>('SNB_UserSize64');

Pointer<Uint8> SNB_UserUnmarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
) =>
    _SNB_UserUnmarshal(
      param0,
      param1,
      param2,
    );

late final _SNB_UserUnmarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
)>('SNB_UserUnmarshal');

Pointer<Uint8> SNB_UserUnmarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
) =>
    _SNB_UserUnmarshal64(
      param0,
      param1,
      param2,
    );

late final _SNB_UserUnmarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<Pointer<Pointer<Uint16>>> param2,
)>('SNB_UserUnmarshal64');

void STGMEDIUM_UserFree(
  Pointer<Uint32> param0,
  Pointer<STGMEDIUM> param1,
) =>
    _STGMEDIUM_UserFree(
      param0,
      param1,
    );

late final _STGMEDIUM_UserFree = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<STGMEDIUM> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<STGMEDIUM> param1,
)>('STGMEDIUM_UserFree');

void STGMEDIUM_UserFree64(
  Pointer<Uint32> param0,
  Pointer<STGMEDIUM> param1,
) =>
    _STGMEDIUM_UserFree64(
      param0,
      param1,
    );

late final _STGMEDIUM_UserFree64 = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<STGMEDIUM> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<STGMEDIUM> param1,
)>('STGMEDIUM_UserFree64');

Pointer<Uint8> STGMEDIUM_UserMarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<STGMEDIUM> param2,
) =>
    _STGMEDIUM_UserMarshal(
      param0,
      param1,
      param2,
    );

late final _STGMEDIUM_UserMarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<STGMEDIUM> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<STGMEDIUM> param2,
)>('STGMEDIUM_UserMarshal');

Pointer<Uint8> STGMEDIUM_UserMarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<STGMEDIUM> param2,
) =>
    _STGMEDIUM_UserMarshal64(
      param0,
      param1,
      param2,
    );

late final _STGMEDIUM_UserMarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<STGMEDIUM> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<STGMEDIUM> param2,
)>('STGMEDIUM_UserMarshal64');

int STGMEDIUM_UserSize(
  Pointer<Uint32> param0,
  int param1,
  Pointer<STGMEDIUM> param2,
) =>
    _STGMEDIUM_UserSize(
      param0,
      param1,
      param2,
    );

late final _STGMEDIUM_UserSize = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<STGMEDIUM> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<STGMEDIUM> param2,
)>('STGMEDIUM_UserSize');

int STGMEDIUM_UserSize64(
  Pointer<Uint32> param0,
  int param1,
  Pointer<STGMEDIUM> param2,
) =>
    _STGMEDIUM_UserSize64(
      param0,
      param1,
      param2,
    );

late final _STGMEDIUM_UserSize64 = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<STGMEDIUM> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<STGMEDIUM> param2,
)>('STGMEDIUM_UserSize64');

Pointer<Uint8> STGMEDIUM_UserUnmarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<STGMEDIUM> param2,
) =>
    _STGMEDIUM_UserUnmarshal(
      param0,
      param1,
      param2,
    );

late final _STGMEDIUM_UserUnmarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<STGMEDIUM> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<STGMEDIUM> param2,
)>('STGMEDIUM_UserUnmarshal');

Pointer<Uint8> STGMEDIUM_UserUnmarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<STGMEDIUM> param2,
) =>
    _STGMEDIUM_UserUnmarshal64(
      param0,
      param1,
      param2,
    );

late final _STGMEDIUM_UserUnmarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<STGMEDIUM> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<STGMEDIUM> param2,
)>('STGMEDIUM_UserUnmarshal64');
