import 'dart:ffi';

import 'package:ffi/ffi.dart';

// Prototypes of window-related functions, constants and structs in user32.dll

///////////////
// CONSTANTS //
///////////////

// WindowStyle constants
const WS_BORDER = 0x00800000;
const WS_CAPTION = 0x00C00000;
const WS_CHILD = 0x40000000;
const WS_CHILDWINDOW = 0x40000000;
const WS_CLIPCHILDREN = 0x02000000;
const WS_CLIPSIBLINGS = 0x04000000;
const WS_DISABLED = 0x08000000;
const WS_DLGFRAME = 0x00400000;
const WS_GROUP = 0x00020000;
const WS_HSCROLL = 0x00100000;
const WS_ICONIC = 0x20000000;
const WS_MAXIMIZE = 0x01000000;
const WS_MAXIMIZEBOX = 0x00010000;
const WS_MINIMIZE = 0x20000000;
const WS_MINIMIZEBOX = 0x00020000;
const WS_OVERLAPPED = 0x00000000;
const WS_OVERLAPPEDWINDOW = WS_OVERLAPPED |
    WS_CAPTION |
    WS_SYSMENU |
    WS_THICKFRAME |
    WS_MINIMIZEBOX |
    WS_MAXIMIZEBOX;
const WS_POPUP = 0x80000000;
const WS_POPUPWINDOW = WS_POPUP | WS_BORDER | WS_SYSMENU;
const WS_SIZEBOX = 0x00040000;
const WS_SYSMENU = 0x00080000;
const WS_TABSTOP = 0x00010000;
const WS_THICKFRAME = 0x00040000;
const WS_TILED = 0x00000000;
const WS_TILEDWINDOW = WS_OVERLAPPED |
    WS_CAPTION |
    WS_SYSMENU |
    WS_THICKFRAME |
    WS_MINIMIZEBOX |
    WS_MAXIMIZEBOX;
const WS_VISIBLE = 0x10000000;
const WS_VSCROLL = 0x00200000;

// WindowMessage constants
const WM_NULL = 0x0000;
const WM_CREATE = 0x0001;
const WM_DESTROY = 0x0002;
const WM_MOVE = 0x0003;
const WM_SIZE = 0x0005;
const WM_ACTIVATE = 0x0006;
const WM_SETFOCUS = 0x0007;
const WM_KILLFOCUS = 0x0008;
const WM_ENABLE = 0x000A;
const WM_SETREDRAW = 0x000B;
const WM_SETTEXT = 0x000C;
const WM_GETTEXT = 0x000D;
const WM_GETTEXTLENGTH = 0x000E;
const WM_PAINT = 0x000F;
const WM_CLOSE = 0x0010;
const WM_QUIT = 0x0012;
const WM_ERASEBKGND = 0x0014;
const WM_SYSCOLORCHANGE = 0x0015;
const WM_SHOWWINDOW = 0x0018;
const WM_WININICHANGE = 0x001A;
const WM_SETTINGCHANGE = WM_WININICHANGE;

// ShowWindow constants
const SW_HIDE = 0;
const SW_SHOWNORMAL = 1;
const SW_SHOWMINIMIZED = 2;
const SW_MAXIMIZE = 3;
const SW_SHOWMAXIMIZED = 3;
const SW_SHOWNOACTIVATE = 4;
const SW_SHOW = 5;
const SW_MINIMIZE = 6;
const SW_SHOWMINNOACTIVE = 7;
const SW_SHOWNA = 8;
const SW_RESTORE = 9;
const SW_SHOWDEFAULT = 10;
const SW_FORCEMINIMIZE = 11;

// ControlWord constants
const CW_USEDEFAULT = 0x80000000;

//////////////
// STRUCTS //
//////////////
// typedef struct tagWNDCLASSA {
//   UINT      style;
//   WNDPROC   lpfnWndProc;
//   int       cbClsExtra;
//   int       cbWndExtra;
//   HINSTANCE hInstance;
//   HICON     hIcon;
//   HCURSOR   hCursor;
//   HBRUSH    hbrBackground;
//   LPCSTR    lpszMenuName;
//   LPCSTR    lpszClassName;
// } WNDCLASSA, *PWNDCLASSA, *NPWNDCLASSA, *LPWNDCLASSA;
class WNDCLASS extends Struct {
  @Int32()
  int style;

  @Int32()
  int lpfnWndProc;

  @Int32()
  int cbClsExtra;

  @Int32()
  int cbWndExtra;

  @Int32()
  int hInstance;

  @Int32()
  int hIcon;

  @Int32()
  int hCursor;

  @Int32()
  int hbrBackground;

  @Int32()
  int lpszMenuName;

  @Int32()
  int lpszClassName;
}

//////////////
// TYPEDEFS //
//////////////

// LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam);
typedef windowProcNative = Int32 Function();
typedef windowProcDart = int Function();

// HMODULE GetModuleHandleA(
//   LPCSTR lpModuleName
// );
typedef getModuleHandleNative = Int32 Function(Pointer<Int16> lpModuleName);
typedef getModuleHandleDart = int Function(Pointer<Int16> lpModuleName);

// HWND CreateWindowExA(
//   DWORD     dwExStyle,
//   LPCSTR    lpClassName,
//   LPCSTR    lpWindowName,
//   DWORD     dwStyle,
//   int       X,
//   int       Y,
//   int       nWidth,
//   int       nHeight,
//   HWND      hWndParent,
//   HMENU     hMenu,
//   HINSTANCE hInstance,
//   LPVOID    lpParam
// );
typedef createWindowExNative = Int32 Function(
    Int32 dwExStyle,
    Pointer<Utf16> lpClassName,
    Pointer<Utf16> lpWindowName,
    Int32 dwStyle,
    Int32 X,
    Int32 Y,
    Int32 nWidth,
    Int32 nHeight,
    Int32 hWndParent,
    Int32 hMenu,
    Int32 hInstance,
    Pointer<Void> lpParam);

typedef createWindowExDart = int Function(
    int dwExStyle,
    Pointer<Utf16> lpClassName,
    Pointer<Utf16> lpWindowName,
    int dwStyle,
    int X,
    int Y,
    int nWidth,
    int nHeight,
    int hWndParent,
    int hMenu,
    int hInstance,
    Pointer<Void> lpParam);

// BOOL ShowWindow(
//   HWND hWnd,
//   int  nCmdShow
// );
typedef showWindowNative = Int8 Function(Int32 hWnd, Int32 nCmdShow);
typedef showWindowDart = int Function(int hWnd, int nCmdShow);

///////////////
// API CLASS //
///////////////
class Win32 {
  createWindowExDart CreateWindowsEx;
  showWindowDart ShowWindow;
  getModuleHandleDart GetModuleHandle;

  Win32() {
    final user32 = DynamicLibrary.open('User32.dll');

    CreateWindowsEx =
        user32.lookupFunction<createWindowExNative, createWindowExDart>(
            'CreateWindowsExA');
    ShowWindow =
        user32.lookupFunction<showWindowNative, showWindowDart>('ShowWindow');
    GetModuleHandle =
        user32.lookupFunction<getModuleHandleNative, getModuleHandleDart>(
            'GetModuleHandleA');
  }
}
