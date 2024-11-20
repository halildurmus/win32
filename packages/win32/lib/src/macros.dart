// Dart representations of Win32 C macros.

// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'callbacks.g.dart';
import 'constants.g.dart';
import 'enums.g.dart';
import 'guid.dart';
import 'hresult.dart';
import 'ntstatus.dart';
import 'structs.g.dart';
import 'utils.dart';
import 'win32/user32.g.dart';

/// Creates an overlapped, pop-up, or child window.
///
/// It specifies the window class, window title, window style, and (optionally)
/// the initial position and size of the window. The function also specifies the
/// window's parent or owner, if any, and the window's menu.
///
/// To use extended window styles in addition to the styles supported by
/// [CreateWindow], use the [CreateWindowEx] function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createwindoww>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CreateWindow(
  PWSTR? lpClassName,
  PWSTR? lpWindowName,
  WINDOW_STYLE dwStyle,
  int X,
  int Y,
  int nWidth,
  int nHeight,
  int? hWndParent,
  int? hMenu,
  int? hInstance,
  Pointer? lpParam,
) => CreateWindowEx(
  WS_EX_LEFT,
  lpClassName,
  lpWindowName,
  dwStyle,
  X,
  Y,
  nWidth,
  nHeight,
  hWndParent,
  hMenu,
  hInstance,
  lpParam,
);

/// Maps a control code to a constant.
//
// #define CTL_CODE( DeviceType, Function, Method, Access ) (
//   ((DeviceType) << 16) | ((Access) << 14) | ((Function) << 2) | (Method)
@pragma('vm:prefer-inline')
int CTL_CODE(int DeviceType, int Function, int Method, int Access) =>
    (DeviceType << 16) | (Access << 14) | (Function << 2) | Method;

/// Creates a modal dialog box from a dialog box template in memory.
///
/// [DialogBoxIndirect] does not return control until the specified callback
/// function terminates the modal dialog box by calling the [EndDialog]
/// unction.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-dialogboxindirectw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
void DialogBoxIndirect(
  int? hInstance,
  Pointer<DLGTEMPLATE> lpTemplate,
  int? hWndParent,
  Pointer<NativeFunction<DLGPROC>>? lpDialogFunc,
) => DialogBoxIndirectParam(hInstance, lpTemplate, hWndParent, lpDialogFunc, 0);

/// Provides a generic test for failure on any status value.
//
// #define FAILED(hr) (((HRESULT)(hr)) < 0)
@pragma('vm:prefer-inline')
bool FAILED(HRESULT result) => result < 0;

/// Fills a block of memory with a specified value.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/windows/desktop/legacy/aa366561(v=vs.85)>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void FillMemory(Pointer destination, int length, int fill) =>
    destination.cast<Uint8>().asTypedList(length).fillRange(0, length, fill);

/// Retrieves an intensity value for the red component of a red, green, blue
/// (RGB) value.
//
// #define GetRValue(rgb)      (LOBYTE(rgb))
@pragma('vm:prefer-inline')
int GetRValue(int rgb) => LOBYTE(rgb);

/// Retrieves an intensity value for the green component of a red, green, blue
/// (RGB) value.
//
// #define GetGValue(rgb)      (LOBYTE(((WORD)(rgb)) >> 8))
@pragma('vm:prefer-inline')
int GetGValue(int rgb) => LOBYTE(rgb >> 8);

/// Retrieves an intensity value for the blue component of a red, green, blue
/// (RGB) value.
//
// #define GetBValue(rgb)      (LOBYTE((rgb)>>16))
@pragma('vm:prefer-inline')
int GetBValue(int rgb) => LOBYTE(rgb >> 16);

/// Retrieves the parameters to [WM_SYSCOMMAND].
///
/// {@category user32}
//
// #define GET_SC_WPARAM(wParam) ((int)wParam & 0xFFF0)
@pragma('vm:prefer-inline')
int GET_SC_WPARAM(int wParam) => wParam & 0xFFF0;

/// Retrieves the high-order byte from the specified 16-bit value.
//
// #define HIBYTE(w)           ((BYTE)((((DWORD_PTR)(w)) >> 8) & 0xff))
@pragma('vm:prefer-inline')
int HIBYTE(int w) => (w >> 8) & 0xff;

/// Retrieves the high-order word from the specified 32-bit value.
//
// #define HIWORD(l)           ((WORD)((((DWORD_PTR)(l)) >> 16) & 0xffff))
@pragma('vm:prefer-inline')
int HIWORD(int l) => (l >> 16) & 0xffff;

/// Maps an NT error code to an [HRESULT] value.
//
// #define HRESULT_FROM_NT(x) ((HRESULT) ((x) | FACILITY_NT_BIT))
@pragma('vm:prefer-inline')
HRESULT HRESULT_FROM_NT(NTSTATUS x) =>
    HRESULT((x | FACILITY_NT_BIT).toSigned(32));

/// Maps a system error code to an [HRESULT] value.
//
// #define __HRESULT_FROM_WIN32(x) ((HRESULT)(x) <= 0 ? ((HRESULT)(x)) :
//       ((HRESULT) (((x) & 0x0000FFFF) | (FACILITY_WIN32 << 16) | 0x80000000)))
@pragma('vm:prefer-inline')
HRESULT HRESULT_FROM_WIN32(WIN32_ERROR x) => HRESULT(
  (x <= 0 ? x : (x & 0x0000FFFF | (FACILITY_WIN32 << 16) | 0x80000000))
      .toSigned(32),
);

/// Whether two CLSIDs are equal.
@pragma('vm:prefer-inline')
bool IsEqualCLSID(Pointer<GUID> rclsid1, Pointer<GUID> rclsid2) =>
    IsEqualGUID(rclsid1, rclsid2);

/// Whether two [GUID]s are equal.
@pragma('vm:prefer-inline')
bool IsEqualGUID(Pointer<GUID> rguid1, Pointer<GUID> rguid2) =>
    _memcmp(rguid1, rguid2, sizeOf<GUID>()) == 0;

/// Whether two IIDs are equal.
@pragma('vm:prefer-inline')
bool IsEqualIID(Pointer<GUID> riid1, Pointer<GUID> riid2) =>
    IsEqualGUID(riid1, riid2);

@Native<Int32 Function(Pointer, Pointer, Size)>(symbol: 'memcmp', isLeaf: true)
external int _memcmp(Pointer ptr1, Pointer ptr2, int num);

/// Retrieves the low-order byte from the specified 16-bit value.
//
// #define LOBYTE(w)           ((BYTE)(((DWORD_PTR)(w)) & 0xff))
@pragma('vm:prefer-inline')
int LOBYTE(int w) => w & 0xff;

/// Retrieves the low-order word from the specified 32-bit value.
//
// #define LOWORD(l)           ((WORD)(((DWORD_PTR)(l)) & 0xffff))
@pragma('vm:prefer-inline')
int LOWORD(int l) => l & 0xffff;

/// Converts an integer value to a resource type compatible with the
/// resource-management functions.
///
/// Although this returns a pointer, it doesn't allocate any memory, so there's
/// no need to worry about calling [free] on the Pointer when it's no longer in
/// use.
//
// #define MAKEINTRESOURCEW(i) ((LPWSTR)((ULONG_PTR)((WORD)(i))))
@pragma('vm:prefer-inline')
PWSTR MAKEINTRESOURCE(int i) => PWSTR.fromAddress(i);

/// Creates a LONG value by concatenating the specified values.
//
// #define MAKELONG(a, b)   ((LONG)(((WORD)(((DWORD_PTR)(a)) & 0xffff)) |
//                          ((DWORD)((WORD)(((DWORD_PTR)(b)) & 0xffff))) << 16))
@pragma('vm:prefer-inline')
int MAKELONG(int a, int b) => a & 0xffff | ((b & 0xffff) << 16);

/// Creates a WORD value by concatenating the specified values.
//
// #define MAKEWORD(a, b)   ((WORD)(((BYTE)(((DWORD_PTR)(a)) & 0xff)) |
//                          ((WORD)((BYTE)(((DWORD_PTR)(b)) & 0xff))) << 8))
@pragma('vm:prefer-inline')
int MAKEWORD(int a, int b) => a & 0xff | ((b & 0xff) << 8);

/// Initializes a [PROPVARIANT] structure.
///
/// {@category ole32}
//
// #define PropVariantInit(pvar) memset ( (pvar), 0, sizeof(PROPVARIANT) )
@pragma('vm:prefer-inline')
void PropVariantInit(Pointer<PROPVARIANT> pvar) =>
    ZeroMemory(pvar, sizeOf<PROPVARIANT>());

/// Selects a red, green, blue (RGB) color based on the arguments supplied and
/// the color capabilities of the output device.
//
// ((COLORREF)(((BYTE)(r)|((WORD)((BYTE)(g))<<8))|(((DWORD)(BYTE)(b))<<16)))
@pragma('vm:prefer-inline')
int RGB(int r, int g, int b) => r + (g << 8) + (b << 16);

/// Provides a generic test for success on any status value.
//
// #define SUCCEEDED(hr) (((HRESULT)(hr)) >= 0)
@pragma('vm:prefer-inline')
bool SUCCEEDED(HRESULT result) => result >= 0;

/// Fills a block of memory with zeros.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/windows/desktop/legacy/aa366920(v=vs.85)>.
///
/// {@category kernel32}
@pragma('vm:prefer-inline')
void ZeroMemory(Pointer destination, int length) =>
    FillMemory(destination, length, 0);
