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
import '../../system/stationsanddesktops/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../security/structs.g.dart';
import '../../ui/windowsandmessaging/callbacks.g.dart';
import '../../system/stationsanddesktops/callbacks.g.dart'; // -----------------------------------------------------------------------

// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int BroadcastSystemMessageEx(
  int flags,
  Pointer<Uint32> lpInfo,
  int Msg,
  int wParam,
  int lParam,
  Pointer<BSMINFO> pbsmInfo,
) =>
    _BroadcastSystemMessageEx(
      flags,
      lpInfo,
      Msg,
      wParam,
      lParam,
      pbsmInfo,
    );

late final _BroadcastSystemMessageEx = _user32.lookupFunction<
    Int32 Function(
  Uint32 flags,
  Pointer<Uint32> lpInfo,
  Uint32 Msg,
  IntPtr wParam,
  IntPtr lParam,
  Pointer<BSMINFO> pbsmInfo,
),
    int Function(
  int flags,
  Pointer<Uint32> lpInfo,
  int Msg,
  int wParam,
  int lParam,
  Pointer<BSMINFO> pbsmInfo,
)>('BroadcastSystemMessageExW');

int BroadcastSystemMessage(
  int flags,
  Pointer<Uint32> lpInfo,
  int Msg,
  int wParam,
  int lParam,
) =>
    _BroadcastSystemMessage(
      flags,
      lpInfo,
      Msg,
      wParam,
      lParam,
    );

late final _BroadcastSystemMessage = _user32.lookupFunction<
    Int32 Function(
  Uint32 flags,
  Pointer<Uint32> lpInfo,
  Uint32 Msg,
  IntPtr wParam,
  IntPtr lParam,
),
    int Function(
  int flags,
  Pointer<Uint32> lpInfo,
  int Msg,
  int wParam,
  int lParam,
)>('BroadcastSystemMessageW');

int CloseDesktop(
  int hDesktop,
) =>
    _CloseDesktop(
      hDesktop,
    );

late final _CloseDesktop = _user32.lookupFunction<
    Int32 Function(
  IntPtr hDesktop,
),
    int Function(
  int hDesktop,
)>('CloseDesktop');

int CloseWindowStation(
  int hWinSta,
) =>
    _CloseWindowStation(
      hWinSta,
    );

late final _CloseWindowStation = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWinSta,
),
    int Function(
  int hWinSta,
)>('CloseWindowStation');

int CreateDesktopEx(
  Pointer<Utf16> lpszDesktop,
  Pointer<Utf16> lpszDevice,
  Pointer<DEVMODE> pDevmode,
  int dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpsa,
  int ulHeapSize,
  Pointer pvoid,
) =>
    _CreateDesktopEx(
      lpszDesktop,
      lpszDevice,
      pDevmode,
      dwFlags,
      dwDesiredAccess,
      lpsa,
      ulHeapSize,
      pvoid,
    );

late final _CreateDesktopEx = _user32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpszDesktop,
  Pointer<Utf16> lpszDevice,
  Pointer<DEVMODE> pDevmode,
  Uint32 dwFlags,
  Uint32 dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpsa,
  Uint32 ulHeapSize,
  Pointer pvoid,
),
    int Function(
  Pointer<Utf16> lpszDesktop,
  Pointer<Utf16> lpszDevice,
  Pointer<DEVMODE> pDevmode,
  int dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpsa,
  int ulHeapSize,
  Pointer pvoid,
)>('CreateDesktopExW');

int CreateDesktop(
  Pointer<Utf16> lpszDesktop,
  Pointer<Utf16> lpszDevice,
  Pointer<DEVMODE> pDevmode,
  int dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpsa,
) =>
    _CreateDesktop(
      lpszDesktop,
      lpszDevice,
      pDevmode,
      dwFlags,
      dwDesiredAccess,
      lpsa,
    );

late final _CreateDesktop = _user32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpszDesktop,
  Pointer<Utf16> lpszDevice,
  Pointer<DEVMODE> pDevmode,
  Uint32 dwFlags,
  Uint32 dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpsa,
),
    int Function(
  Pointer<Utf16> lpszDesktop,
  Pointer<Utf16> lpszDevice,
  Pointer<DEVMODE> pDevmode,
  int dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpsa,
)>('CreateDesktopW');

int CreateWindowStation(
  Pointer<Utf16> lpwinsta,
  int dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpsa,
) =>
    _CreateWindowStation(
      lpwinsta,
      dwFlags,
      dwDesiredAccess,
      lpsa,
    );

late final _CreateWindowStation = _user32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpwinsta,
  Uint32 dwFlags,
  Uint32 dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpsa,
),
    int Function(
  Pointer<Utf16> lpwinsta,
  int dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpsa,
)>('CreateWindowStationW');

int EnumDesktopWindows(
  int hDesktop,
  Pointer<NativeFunction<WNDENUMPROC>> lpfn,
  int lParam,
) =>
    _EnumDesktopWindows(
      hDesktop,
      lpfn,
      lParam,
    );

late final _EnumDesktopWindows = _user32.lookupFunction<
    Int32 Function(
  IntPtr hDesktop,
  Pointer<NativeFunction<WNDENUMPROC>> lpfn,
  IntPtr lParam,
),
    int Function(
  int hDesktop,
  Pointer<NativeFunction<WNDENUMPROC>> lpfn,
  int lParam,
)>('EnumDesktopWindows');

int EnumDesktops(
  int hwinsta,
  Pointer<NativeFunction<DESKTOPENUMPROCW>> lpEnumFunc,
  int lParam,
) =>
    _EnumDesktops(
      hwinsta,
      lpEnumFunc,
      lParam,
    );

late final _EnumDesktops = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwinsta,
  Pointer<NativeFunction<DESKTOPENUMPROCW>> lpEnumFunc,
  IntPtr lParam,
),
    int Function(
  int hwinsta,
  Pointer<NativeFunction<DESKTOPENUMPROCW>> lpEnumFunc,
  int lParam,
)>('EnumDesktopsW');

int EnumWindowStations(
  Pointer<NativeFunction<WINSTAENUMPROCW>> lpEnumFunc,
  int lParam,
) =>
    _EnumWindowStations(
      lpEnumFunc,
      lParam,
    );

late final _EnumWindowStations = _user32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<WINSTAENUMPROCW>> lpEnumFunc,
  IntPtr lParam,
),
    int Function(
  Pointer<NativeFunction<WINSTAENUMPROCW>> lpEnumFunc,
  int lParam,
)>('EnumWindowStationsW');

int GetProcessWindowStation() => _GetProcessWindowStation();

late final _GetProcessWindowStation =
    _user32.lookupFunction<IntPtr Function(), int Function()>(
        'GetProcessWindowStation');

int GetThreadDesktop(
  int dwThreadId,
) =>
    _GetThreadDesktop(
      dwThreadId,
    );

late final _GetThreadDesktop = _user32.lookupFunction<
    IntPtr Function(
  Uint32 dwThreadId,
),
    int Function(
  int dwThreadId,
)>('GetThreadDesktop');

int GetUserObjectInformation(
  int hObj,
  int nIndex,
  Pointer pvInfo,
  int nLength,
  Pointer<Uint32> lpnLengthNeeded,
) =>
    _GetUserObjectInformation(
      hObj,
      nIndex,
      pvInfo,
      nLength,
      lpnLengthNeeded,
    );

late final _GetUserObjectInformation = _user32.lookupFunction<
    Int32 Function(
  IntPtr hObj,
  Uint32 nIndex,
  Pointer pvInfo,
  Uint32 nLength,
  Pointer<Uint32> lpnLengthNeeded,
),
    int Function(
  int hObj,
  int nIndex,
  Pointer pvInfo,
  int nLength,
  Pointer<Uint32> lpnLengthNeeded,
)>('GetUserObjectInformationW');

int OpenDesktop(
  Pointer<Utf16> lpszDesktop,
  int dwFlags,
  int fInherit,
  int dwDesiredAccess,
) =>
    _OpenDesktop(
      lpszDesktop,
      dwFlags,
      fInherit,
      dwDesiredAccess,
    );

late final _OpenDesktop = _user32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpszDesktop,
  Uint32 dwFlags,
  Int32 fInherit,
  Uint32 dwDesiredAccess,
),
    int Function(
  Pointer<Utf16> lpszDesktop,
  int dwFlags,
  int fInherit,
  int dwDesiredAccess,
)>('OpenDesktopW');

int OpenInputDesktop(
  int dwFlags,
  int fInherit,
  int dwDesiredAccess,
) =>
    _OpenInputDesktop(
      dwFlags,
      fInherit,
      dwDesiredAccess,
    );

late final _OpenInputDesktop = _user32.lookupFunction<
    IntPtr Function(
  Uint32 dwFlags,
  Int32 fInherit,
  Uint32 dwDesiredAccess,
),
    int Function(
  int dwFlags,
  int fInherit,
  int dwDesiredAccess,
)>('OpenInputDesktop');

int OpenWindowStation(
  Pointer<Utf16> lpszWinSta,
  int fInherit,
  int dwDesiredAccess,
) =>
    _OpenWindowStation(
      lpszWinSta,
      fInherit,
      dwDesiredAccess,
    );

late final _OpenWindowStation = _user32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpszWinSta,
  Int32 fInherit,
  Uint32 dwDesiredAccess,
),
    int Function(
  Pointer<Utf16> lpszWinSta,
  int fInherit,
  int dwDesiredAccess,
)>('OpenWindowStationW');

int SetProcessWindowStation(
  int hWinSta,
) =>
    _SetProcessWindowStation(
      hWinSta,
    );

late final _SetProcessWindowStation = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWinSta,
),
    int Function(
  int hWinSta,
)>('SetProcessWindowStation');

int SetThreadDesktop(
  int hDesktop,
) =>
    _SetThreadDesktop(
      hDesktop,
    );

late final _SetThreadDesktop = _user32.lookupFunction<
    Int32 Function(
  IntPtr hDesktop,
),
    int Function(
  int hDesktop,
)>('SetThreadDesktop');

int SetUserObjectInformation(
  int hObj,
  int nIndex,
  Pointer pvInfo,
  int nLength,
) =>
    _SetUserObjectInformation(
      hObj,
      nIndex,
      pvInfo,
      nLength,
    );

late final _SetUserObjectInformation = _user32.lookupFunction<
    Int32 Function(
  IntPtr hObj,
  Int32 nIndex,
  Pointer pvInfo,
  Uint32 nLength,
),
    int Function(
  int hObj,
  int nIndex,
  Pointer pvInfo,
  int nLength,
)>('SetUserObjectInformationW');

int SwitchDesktop(
  int hDesktop,
) =>
    _SwitchDesktop(
      hDesktop,
    );

late final _SwitchDesktop = _user32.lookupFunction<
    Int32 Function(
  IntPtr hDesktop,
),
    int Function(
  int hDesktop,
)>('SwitchDesktop');
