// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Enables the blur effect on a specified window.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmenableblurbehindwindow>.
///
/// {@category dwmapi}
@pragma('vm:prefer-inline')
void DwmEnableBlurBehindWindow(int hWnd, Pointer<DWM_BLURBEHIND> pBlurBehind) {
  final hr$ = HRESULT(_DwmEnableBlurBehindWindow(hWnd, pBlurBehind));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(HWND, Pointer<DWM_BLURBEHIND>)>(
  symbol: 'DwmEnableBlurBehindWindow',
)
external int _DwmEnableBlurBehindWindow(
  int hWnd,
  Pointer<DWM_BLURBEHIND> pBlurBehind,
);

/// Notifies the Desktop Window Manager (DWM) to opt in to or out of Multimedia
/// Class Schedule Service (MMCSS) scheduling while the calling process is
/// alive.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmenablemmcss>.
///
/// {@category dwmapi}
@pragma('vm:prefer-inline')
void DwmEnableMMCSS(bool fEnableMMCSS) {
  final hr$ = HRESULT(_DwmEnableMMCSS(fEnableMMCSS ? TRUE : FALSE));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(BOOL)>(symbol: 'DwmEnableMMCSS')
external int _DwmEnableMMCSS(int fEnableMMCSS);

/// Extends the window frame into the client area.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmextendframeintoclientarea>.
///
/// {@category dwmapi}
@pragma('vm:prefer-inline')
void DwmExtendFrameIntoClientArea(int hWnd, Pointer<MARGINS> pMarInset) {
  final hr$ = HRESULT(_DwmExtendFrameIntoClientArea(hWnd, pMarInset));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(HWND, Pointer<MARGINS>)>(
  symbol: 'DwmExtendFrameIntoClientArea',
)
external int _DwmExtendFrameIntoClientArea(
  int hWnd,
  Pointer<MARGINS> pMarInset,
);

/// Issues a flush call that blocks the caller until the next present, when all
/// of the Microsoft DirectX surface updates that are currently outstanding have
/// been made.
///
/// This compensates for very complex scenes or calling processes with very low
/// priority.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmflush>.
///
/// {@category dwmapi}
@pragma('vm:prefer-inline')
void DwmFlush() {
  final hr$ = HRESULT(_DwmFlush());
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function()>(symbol: 'DwmFlush')
external int _DwmFlush();

/// Retrieves the current color used for Desktop Window Manager (DWM) glass
/// composition.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmgetcolorizationcolor>.
///
/// {@category dwmapi}
@pragma('vm:prefer-inline')
void DwmGetColorizationColor(
  Pointer<Uint32> pcrColorization,
  Pointer<BOOL> pfOpaqueBlend,
) {
  final hr$ = HRESULT(_DwmGetColorizationColor(pcrColorization, pfOpaqueBlend));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<Uint32>, Pointer<BOOL>)>(
  symbol: 'DwmGetColorizationColor',
)
external int _DwmGetColorizationColor(
  Pointer<Uint32> pcrColorization,
  Pointer<BOOL> pfOpaqueBlend,
);

/// Retrieves transport attributes.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmgettransportattributes>.
///
/// {@category dwmapi}
@pragma('vm:prefer-inline')
void DwmGetTransportAttributes(
  Pointer<BOOL> pfIsRemoting,
  Pointer<BOOL> pfIsConnected,
  Pointer<Uint32> pDwGeneration,
) {
  final hr$ = HRESULT(
    _DwmGetTransportAttributes(pfIsRemoting, pfIsConnected, pDwGeneration),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer<BOOL>, Pointer<BOOL>, Pointer<Uint32>)>(
  symbol: 'DwmGetTransportAttributes',
)
external int _DwmGetTransportAttributes(
  Pointer<BOOL> pfIsRemoting,
  Pointer<BOOL> pfIsConnected,
  Pointer<Uint32> pDwGeneration,
);

/// Retrieves the current value of a specified Desktop Window Manager (DWM)
/// attribute applied to a window.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmgetwindowattribute>.
///
/// {@category dwmapi}
@pragma('vm:prefer-inline')
void DwmGetWindowAttribute(
  int hwnd,
  DWMWINDOWATTRIBUTE dwAttribute,
  Pointer pvAttribute,
  int cbAttribute,
) {
  final hr$ = HRESULT(
    _DwmGetWindowAttribute(hwnd, dwAttribute, pvAttribute, cbAttribute),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(HWND, Uint32, Pointer, Uint32)>(
  symbol: 'DwmGetWindowAttribute',
)
external int _DwmGetWindowAttribute(
  int hwnd,
  int dwAttribute,
  Pointer pvAttribute,
  int cbAttribute,
);

/// Called by an application to indicate that all previously provided iconic
/// bitmaps from a window, both thumbnails and peek representations, should be
/// refreshed.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwminvalidateiconicbitmaps>.
///
/// {@category dwmapi}
@pragma('vm:prefer-inline')
void DwmInvalidateIconicBitmaps(int hwnd) {
  final hr$ = HRESULT(_DwmInvalidateIconicBitmaps(hwnd));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(HWND)>(symbol: 'DwmInvalidateIconicBitmaps')
external int _DwmInvalidateIconicBitmaps(int hwnd);

/// Notifies Desktop Window Manager (DWM) that a touch contact has been
/// recognized as a gesture, and that DWM should draw feedback for that gesture.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmrendergesture>.
///
/// {@category dwmapi}
@pragma('vm:prefer-inline')
void DwmRenderGesture(
  GESTURE_TYPE gt,
  int cContacts,
  Pointer<Uint32> pdwPointerID,
  Pointer<POINT> pPoints,
) {
  final hr$ = HRESULT(_DwmRenderGesture(gt, cContacts, pdwPointerID, pPoints));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Int32, Uint32, Pointer<Uint32>, Pointer<POINT>)>(
  symbol: 'DwmRenderGesture',
)
external int _DwmRenderGesture(
  int gt,
  int cContacts,
  Pointer<Uint32> pdwPointerID,
  Pointer<POINT> pPoints,
);

/// Sets the value of Desktop Window Manager (DWM) non-client rendering
/// attributes for a window.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmsetwindowattribute>.
///
/// {@category dwmapi}
@pragma('vm:prefer-inline')
void DwmSetWindowAttribute(
  int hwnd,
  DWMWINDOWATTRIBUTE dwAttribute,
  Pointer pvAttribute,
  int cbAttribute,
) {
  final hr$ = HRESULT(
    _DwmSetWindowAttribute(hwnd, dwAttribute, pvAttribute, cbAttribute),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(HWND, Uint32, Pointer, Uint32)>(
  symbol: 'DwmSetWindowAttribute',
)
external int _DwmSetWindowAttribute(
  int hwnd,
  int dwAttribute,
  Pointer pvAttribute,
  int cbAttribute,
);

/// Called by an app or framework to specify the visual feedback type to draw in
/// response to a particular touch or pen contact.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/nf-dwmapi-dwmshowcontact>.
///
/// {@category dwmapi}
@pragma('vm:prefer-inline')
void DwmShowContact(int dwPointerID, DWM_SHOWCONTACT eShowContact) {
  final hr$ = HRESULT(_DwmShowContact(dwPointerID, eShowContact));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Uint32, Uint32)>(symbol: 'DwmShowContact')
external int _DwmShowContact(int dwPointerID, int eShowContact);
