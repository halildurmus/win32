import 'dart:ffi';

import 'package:ffi/ffi.dart';

// Prototypes of window-related functions, constants and structs in user32.dll

///////////////
// CONSTANTS //
///////////////

const NULL = 0;

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
const WM_KEYFIRST = 0x0100;
const WM_KEYDOWN = 0x0100;
const WM_KEYUP = 0x0101;
const WM_CHAR = 0x0102;
const WM_DEADCHAR = 0x0103;
const WM_SYSKEYDOWN = 0x0104;
const WM_SYSKEYUP = 0x0105;
const WM_SYSCHAR = 0x0106;
const WM_SYSDEADCHAR = 0x0107;
const WM_INITDIALOG = 0x0110;
const WM_COMMAND = 0x0111;
const WM_SYSCOMMAND = 0x0112;
const WM_TIMER = 0x0113;
const WM_HSCROLL = 0x0114;
const WM_VSCROLL = 0x0115;

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

  Pointer<NativeFunction> lpfnWndProc;

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

  Pointer<Utf16> lpszMenuName;
  Pointer<Utf16> lpszClassName;
}

//////////////
// TYPEDEFS //
//////////////

// LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam);
typedef windowProcNative = Int32 Function(
    Int32 hwnd, Int32 uMsg, Int32 wParam, Int32 lParam);
typedef windowProcDart = int Function(
    int hwnd, int uMsg, int wParam, int lParam);

// HMODULE GetModuleHandleA(
//   LPCSTR lpModuleName
// );
typedef getModuleHandleNative = Int32 Function(Pointer<Int32> lpModuleName);
typedef getModuleHandleDart = int Function(Pointer<Int32> lpModuleName);

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

// LRESULT LRESULT DefWindowProcA(
//   HWND   hWnd,
//   UINT   Msg,
//   WPARAM wParam,
//   LPARAM lParam
// );
typedef defWindowProcNative = Int32 Function(
    Int32 hWnd, Int32 Msg, Int32 wParam, Int32 lParam);
typedef defWindowProcDart = int Function(
    int hWnd, int Msg, int wParam, int lParam);

// ATOM RegisterClassA(
//   const WNDCLASSA *lpWndClass
// );
typedef registerClassNative = Int32 Function(Pointer<WNDCLASS> lpWndClass);
typedef registerClassDart = int Function(Pointer<WNDCLASS> lpWndClass);

// BOOL ShowWindow(
//   HWND hWnd,
//   int  nCmdShow
// );
typedef showWindowNative = Int8 Function(Int32 hWnd, Int32 nCmdShow);
typedef showWindowDart = int Function(int hWnd, int nCmdShow);

// void PostQuitMessage(
//   int nExitCode
// );
typedef postQuitMessageNative = Void Function(Int32 nExitCode);
typedef postQuitMessageDart = void Function(int nExitCode);

///////////////
// API CLASS //
///////////////
class Win32 {
  createWindowExDart CreateWindowEx;
  defWindowProcDart DefWindowProc;
  getModuleHandleDart GetModuleHandle;
  postQuitMessageDart PostQuitMessage;
  registerClassDart RegisterClass;
  showWindowDart ShowWindow;

  Win32() {
    final user32 = DynamicLibrary.open('user32.dll');
    CreateWindowEx =
        user32.lookupFunction<createWindowExNative, createWindowExDart>(
            'CreateWindowExA');
    DefWindowProc =
        user32.lookupFunction<defWindowProcNative, defWindowProcDart>(
            'DefWindowProcA');
    PostQuitMessage =
        user32.lookupFunction<postQuitMessageNative, postQuitMessageDart>(
            'PostQuitMessage');
    RegisterClass =
        user32.lookupFunction<registerClassNative, registerClassDart>(
            'RegisterClassA');
    ShowWindow =
        user32.lookupFunction<showWindowNative, showWindowDart>('ShowWindow');

    final kernel32 = DynamicLibrary.open('kernel32.dll');
    GetModuleHandle =
        kernel32.lookupFunction<getModuleHandleNative, getModuleHandleDart>(
            'GetModuleHandleA');
  }
}
