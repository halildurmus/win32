// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../combase.dart';
import '../guid.dart';
import '../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// oleaut32.dll
// -----------------------------------------------------------------------
final _oleaut32 = DynamicLibrary.open('oleaut32.dll');

int SysAddRefString(
  Pointer<Utf16> bstrString,
) =>
    _SysAddRefString(
      bstrString,
    );

late final _SysAddRefString = _oleaut32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> bstrString,
),
    int Function(
  Pointer<Utf16> bstrString,
)>('SysAddRefString');

Pointer<Utf16> SysAllocString(
  Pointer<Utf16> psz,
) =>
    _SysAllocString(
      psz,
    );

late final _SysAllocString = _oleaut32.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> psz,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> psz,
)>('SysAllocString');

Pointer<Utf16> SysAllocStringByteLen(
  Pointer<Utf8> psz,
  int len,
) =>
    _SysAllocStringByteLen(
      psz,
      len,
    );

late final _SysAllocStringByteLen = _oleaut32.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf8> psz,
  Uint32 len,
),
    Pointer<Utf16> Function(
  Pointer<Utf8> psz,
  int len,
)>('SysAllocStringByteLen');

Pointer<Utf16> SysAllocStringLen(
  Pointer<Utf16> strIn,
  int ui,
) =>
    _SysAllocStringLen(
      strIn,
      ui,
    );

late final _SysAllocStringLen = _oleaut32.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> strIn,
  Uint32 ui,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> strIn,
  int ui,
)>('SysAllocStringLen');

void SysFreeString(
  Pointer<Utf16> bstrString,
) =>
    _SysFreeString(
      bstrString,
    );

late final _SysFreeString = _oleaut32.lookupFunction<
    Void Function(
  Pointer<Utf16> bstrString,
),
    void Function(
  Pointer<Utf16> bstrString,
)>('SysFreeString');

int SysReAllocString(
  Pointer<Pointer<Utf16>> pbstr,
  Pointer<Utf16> psz,
) =>
    _SysReAllocString(
      pbstr,
      psz,
    );

late final _SysReAllocString = _oleaut32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<Utf16>> pbstr,
  Pointer<Utf16> psz,
),
    int Function(
  Pointer<Pointer<Utf16>> pbstr,
  Pointer<Utf16> psz,
)>('SysReAllocString');

int SysReAllocStringLen(
  Pointer<Pointer<Utf16>> pbstr,
  Pointer<Utf16> psz,
  int len,
) =>
    _SysReAllocStringLen(
      pbstr,
      psz,
      len,
    );

late final _SysReAllocStringLen = _oleaut32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<Utf16>> pbstr,
  Pointer<Utf16> psz,
  Uint32 len,
),
    int Function(
  Pointer<Pointer<Utf16>> pbstr,
  Pointer<Utf16> psz,
  int len,
)>('SysReAllocStringLen');

void SysReleaseString(
  Pointer<Utf16> bstrString,
) =>
    _SysReleaseString(
      bstrString,
    );

late final _SysReleaseString = _oleaut32.lookupFunction<
    Void Function(
  Pointer<Utf16> bstrString,
),
    void Function(
  Pointer<Utf16> bstrString,
)>('SysReleaseString');

int SysStringByteLen(
  Pointer<Utf16> bstr,
) =>
    _SysStringByteLen(
      bstr,
    );

late final _SysStringByteLen = _oleaut32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> bstr,
),
    int Function(
  Pointer<Utf16> bstr,
)>('SysStringByteLen');

int SysStringLen(
  Pointer<Utf16> pbstr,
) =>
    _SysStringLen(
      pbstr,
    );

late final _SysStringLen = _oleaut32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pbstr,
),
    int Function(
  Pointer<Utf16> pbstr,
)>('SysStringLen');

// -----------------------------------------------------------------------
// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int CloseHandle(
  int hObject,
) =>
    _CloseHandle(
      hObject,
    );

late final _CloseHandle = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hObject,
),
    int Function(
  int hObject,
)>('CloseHandle');

int DuplicateHandle(
  int hSourceProcessHandle,
  int hSourceHandle,
  int hTargetProcessHandle,
  Pointer<IntPtr> lpTargetHandle,
  int dwDesiredAccess,
  int bInheritHandle,
  int dwOptions,
) =>
    _DuplicateHandle(
      hSourceProcessHandle,
      hSourceHandle,
      hTargetProcessHandle,
      lpTargetHandle,
      dwDesiredAccess,
      bInheritHandle,
      dwOptions,
    );

late final _DuplicateHandle = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hSourceProcessHandle,
  IntPtr hSourceHandle,
  IntPtr hTargetProcessHandle,
  Pointer<IntPtr> lpTargetHandle,
  Uint32 dwDesiredAccess,
  Int32 bInheritHandle,
  Uint32 dwOptions,
),
    int Function(
  int hSourceProcessHandle,
  int hSourceHandle,
  int hTargetProcessHandle,
  Pointer<IntPtr> lpTargetHandle,
  int dwDesiredAccess,
  int bInheritHandle,
  int dwOptions,
)>('DuplicateHandle');

int GetHandleInformation(
  int hObject,
  Pointer<Uint32> lpdwFlags,
) =>
    _GetHandleInformation(
      hObject,
      lpdwFlags,
    );

late final _GetHandleInformation = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hObject,
  Pointer<Uint32> lpdwFlags,
),
    int Function(
  int hObject,
  Pointer<Uint32> lpdwFlags,
)>('GetHandleInformation');

int GetLastError() => _GetLastError();

late final _GetLastError =
    _kernel32.lookupFunction<Uint32 Function(), int Function()>('GetLastError');

int SetHandleInformation(
  int hObject,
  int dwMask,
  int dwFlags,
) =>
    _SetHandleInformation(
      hObject,
      dwMask,
      dwFlags,
    );

late final _SetHandleInformation = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hObject,
  Uint32 dwMask,
  Uint32 dwFlags,
),
    int Function(
  int hObject,
  int dwMask,
  int dwFlags,
)>('SetHandleInformation');

void SetLastError(
  int dwErrCode,
) =>
    _SetLastError(
      dwErrCode,
    );

late final _SetLastError = _kernel32.lookupFunction<
    Void Function(
  Uint32 dwErrCode,
),
    void Function(
  int dwErrCode,
)>('SetLastError');

// -----------------------------------------------------------------------
// api-ms-win-core-handle-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_handle_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-handle-l1-1-0.dll');

int CompareObjectHandles(
  int hFirstObjectHandle,
  int hSecondObjectHandle,
) =>
    _CompareObjectHandles(
      hFirstObjectHandle,
      hSecondObjectHandle,
    );

late final _CompareObjectHandles =
    _api_ms_win_core_handle_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr hFirstObjectHandle,
  IntPtr hSecondObjectHandle,
),
        int Function(
  int hFirstObjectHandle,
  int hSecondObjectHandle,
)>('CompareObjectHandles');

// -----------------------------------------------------------------------
// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

void SetLastErrorEx(
  int dwErrCode,
  int dwType,
) =>
    _SetLastErrorEx(
      dwErrCode,
      dwType,
    );

late final _SetLastErrorEx = _user32.lookupFunction<
    Void Function(
  Uint32 dwErrCode,
  Uint32 dwType,
),
    void Function(
  int dwErrCode,
  int dwType,
)>('SetLastErrorEx');

// -----------------------------------------------------------------------
// ntdll.dll
// -----------------------------------------------------------------------
final _ntdll = DynamicLibrary.open('ntdll.dll');

int RtlNtStatusToDosError(
  int Status,
) =>
    _RtlNtStatusToDosError(
      Status,
    );

late final _RtlNtStatusToDosError = _ntdll.lookupFunction<
    Uint32 Function(
  Int32 Status,
),
    int Function(
  int Status,
)>('RtlNtStatusToDosError');
