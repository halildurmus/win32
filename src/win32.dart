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

// System colors
const COLOR_WINDOW = 5;

const IDC_ARROW = 32512;

//////////////
// STRUCTS //
//////////////
// typedef struct tagWNDCLASSW {
//   UINT      style;
//   WNDPROC   lpfnWndProc;
//   int       cbClsExtra;
//   int       cbWndExtra;
//   HINSTANCE hInstance;
//   HICON     hIcon;
//   HCURSOR   hCursor;
//   HBRUSH    hbrBackground;
//   LPCWSTR   lpszMenuName;
//   LPCWSTR   lpszClassName;
// } WNDCLASSW, *PWNDCLASSW, *NPWNDCLASSW, *LPWNDCLASSW;
class WNDCLASS extends Struct {
  @Int32()
  int style;

  Pointer<NativeFunction> lpfnWndProc;

  @Int32()
  int cbClsExtra;

  @Int32()
  int cbWndExtra;

  @Int64()
  int hInstance;

  @Int64()
  int hIcon;

  @Int64()
  int hCursor;

  @Int64()
  int hbrBackground;

  Pointer<Utf16> lpszMenuName;
  Pointer<Utf16> lpszClassName;

  factory WNDCLASS.allocate() => allocate<WNDCLASS>().ref
    ..style = 0
    ..lpfnWndProc = nullptr
    ..cbClsExtra = 0
    ..cbWndExtra = 0
    ..hInstance = 0
    ..hIcon = 0
    ..hCursor = 0
    ..hbrBackground = 0
    ..lpszMenuName = nullptr
    ..lpszClassName = nullptr;
}

// typedef struct tagMSG {
//   HWND   hwnd;
//   UINT   message;
//   WPARAM wParam;
//   LPARAM lParam;
//   DWORD  time;
//   POINT  pt;
//   DWORD  lPrivate;
// } MSG, *PMSG, *NPMSG, *LPMSG;
class MSG extends Struct {
  @Int64()
  int hwnd;

  @Int32()
  int message;

  @Int64()
  int wParam;

  @Int64()
  int lParam;

  @Int32()
  int time;

  @Int32()
  int ptX;

  @Int32()
  int ptY;

  @Int32()
  int lPrivate;

  factory MSG.allocate() => allocate<MSG>().ref
    ..hwnd = 0
    ..message = 0
    ..wParam = 0
    ..lParam = 0
    ..time = 0
    ..ptX = 0
    ..ptY = 0
    ..lPrivate = 0;
}

// typedef struct tagPOINT {
//   LONG x;
//   LONG y;
// } POINT, *PPOINT, *NPPOINT, *LPPOINT;
class POINT extends Struct {
  @Int32()
  int x;

  @Int32()
  int y;

  factory POINT.allocate() => allocate<POINT>().ref
    ..x = 0
    ..y = 0;
}

// typedef struct tagPAINTSTRUCT {
//   HDC  hdc;
//   BOOL fErase;
//   RECT rcPaint;
//   BOOL fRestore;
//   BOOL fIncUpdate;
//   BYTE rgbReserved[32];
// } PAINTSTRUCT, *PPAINTSTRUCT, *NPPAINTSTRUCT, *LPPAINTSTRUCT;
class PAINTSTRUCT extends Struct {
  @Int64()
  int hdc;
  @Int32()
  int fErase;
  @Int32()
  int rcPaintL;
  @Int32()
  int rcPaintT;
  @Int32()
  int rcPaintR;
  @Int32()
  int rcPaintB;
  @Int32()
  int fRestore;
  @Int32()
  int fIncUpdate;
  @Int64()
  int rgb1;
  @Int64()
  int rgb2;
  @Int64()
  int rgb3;
  @Int64()
  int rgb4;

  factory PAINTSTRUCT.allocate() => allocate<PAINTSTRUCT>().ref
    ..hdc = 0
    ..fErase = 0
    ..rcPaintL = 0
    ..rcPaintT = 0
    ..rcPaintR = 0
    ..rcPaintB = 0
    ..fRestore = 0
    ..fIncUpdate = 0
    ..rgb1 = 0
    ..rgb2 = 0
    ..rgb3 = 0
    ..rgb4 = 0;
}

// typedef struct tagRECT {
//   LONG left;
//   LONG top;
//   LONG right;
//   LONG bottom;
// } RECT, *PRECT, *NPRECT, *LPRECT;
class RECT extends Struct {
  @Int32()
  int left;
  @Int32()
  int top;
  @Int32()
  int right;
  @Int32()
  int bottom;

  factory RECT.allocate() => allocate<RECT>().ref
    ..left = 0
    ..top = 0
    ..right = 0
    ..bottom = 0;
}

//////////////
// TYPEDEFS //
//////////////

// LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam);
typedef windowProcNative = Int64 Function(
    Int64 hwnd, Int32 uMsg, Int64 wParam, Int64 lParam);
typedef windowProcDart = int Function(
    int hwnd, int uMsg, int wParam, int lParam);

// HDC BeginPaint(
//   HWND          hWnd,
//   LPPAINTSTRUCT lpPaint
// );
typedef beginPaintNative = Int64 Function(
    Int64 hWnd, Pointer<PAINTSTRUCT> lpPaint);
typedef beginPaintDart = int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint);

// HWND CreateWindowExW(
//   DWORD     dwExStyle,
//   LPCWSTR   lpClassName,
//   LPCWSTR   lpWindowName,
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
    Int64 hWndParent,
    Int64 hMenu,
    Int64 hInstance,
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

// LRESULT LRESULT DefWindowProcW(
//   HWND   hWnd,
//   UINT   Msg,
//   WPARAM wParam,
//   LPARAM lParam
// );
typedef defWindowProcNative = Int64 Function(
    Int64 hWnd, Int32 Msg, Int64 wParam, Int64 lParam);
typedef defWindowProcDart = int Function(
    int hWnd, int Msg, int wParam, int lParam);

// LRESULT DispatchMessage(
//   const MSG *lpMsg
// );
typedef dispatchMessageNative = Int64 Function(Pointer<MSG> lpMsg);
typedef dispatchMessageDart = int Function(Pointer<MSG> lpMsg);

// BOOL EndPaint(
//   HWND              hWnd,
//   const PAINTSTRUCT *lpPaint
// );
typedef endPaintNative = Int32 Function(
    Int64 hWnd, Pointer<PAINTSTRUCT> lpPaint);
typedef endPaintDart = int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint);

// int FillRect(
//   HDC        hDC,
//   const RECT *lprc,
//   HBRUSH     hbr
// );
typedef fillRectNative = Int32 Function(
    Int64 hDC, Pointer<RECT> lprc, Int64 hbr);
typedef fillRectDart = int Function(int hDC, Pointer<RECT> lprc, int hbr);

// _Post_equals_last_error_ DWORD GetLastError();
typedef getLastErrorNative = Int32 Function();
typedef getLastErrorDart = int Function();

// BOOL GetMessage(
//   LPMSG lpMsg,
//   HWND  hWnd,
//   UINT  wMsgFilterMin,
//   UINT  wMsgFilterMax
// );
typedef getMessageNative = Int32 Function(
    Pointer<MSG> lpMsg, Int64 hWnd, Int32 wMsgFilterMin, Int32 wMsgFilterMax);
typedef getMessageDart = int Function(
    Pointer<MSG> lpMsg, int hWnd, int wMsgFilterMin, int wMsgFilterMax);

// HMODULE GetModuleHandleW(
//   LPCWSTR lpModuleName
// );
typedef getModuleHandleNative = Int64 Function(Pointer<Utf16> lpModuleName);
typedef getModuleHandleDart = int Function(Pointer<Utf16> lpModuleName);

// HCURSOR LoadCursorW(
//   HINSTANCE hInstance,
//   LPCWSTR   lpCursorName
// );
typedef loadCursorNative = Int64 Function(
    Int64 hInstance, Pointer<Utf16> lpCursorName);
typedef loadCursorDart = int Function(
    int hInstance, Pointer<Utf16> lpCursorName);

// ATOM RegisterClassW(
//   const WNDCLASSW *lpWndClass
// );
typedef registerClassNative = Int16 Function(Pointer<WNDCLASS> lpWndClass);
typedef registerClassDart = int Function(Pointer<WNDCLASS> lpWndClass);

// BOOL ShowWindow(
//   HWND hWnd,
//   int  nCmdShow
// );
typedef showWindowNative = Int32 Function(Int64 hWnd, Int32 nCmdShow);
typedef showWindowDart = int Function(int hWnd, int nCmdShow);

// BOOL TranslateMessage(
//   const MSG *lpMsg
// );
typedef translateMessageNative = Int32 Function(Pointer<MSG> lpMsg);
typedef translateMessageDart = int Function(Pointer<MSG> lpMsg);

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
  beginPaintDart BeginPaint;
  defWindowProcDart DefWindowProc;
  dispatchMessageDart DispatchMessage;
  endPaintDart EndPaint;
  fillRectDart FillRect;
  getLastErrorDart GetLastError;
  getMessageDart GetMessage;
  getModuleHandleDart GetModuleHandle;
  loadCursorDart LoadCursor;
  postQuitMessageDart PostQuitMessage;
  registerClassDart RegisterClass;
  showWindowDart ShowWindow;
  translateMessageDart TranslateMessage;

  Win32() {
    final user32 = DynamicLibrary.open('user32.dll');
    BeginPaint =
        user32.lookupFunction<beginPaintNative, beginPaintDart>('BeginPaint');
    CreateWindowEx =
        user32.lookupFunction<createWindowExNative, createWindowExDart>(
            'CreateWindowExW');
    DefWindowProc =
        user32.lookupFunction<defWindowProcNative, defWindowProcDart>(
            'DefWindowProcW');
    DispatchMessage =
        user32.lookupFunction<dispatchMessageNative, dispatchMessageDart>(
            'DispatchMessageW');
    EndPaint = user32.lookupFunction<endPaintNative, endPaintDart>('EndPaint');
    FillRect = user32.lookupFunction<fillRectNative, fillRectDart>('FillRect');
    GetMessage =
        user32.lookupFunction<getMessageNative, getMessageDart>('GetMessageW');
    LoadCursor =
        user32.lookupFunction<loadCursorNative, loadCursorDart>('LoadCursorW');
    PostQuitMessage =
        user32.lookupFunction<postQuitMessageNative, postQuitMessageDart>(
            'PostQuitMessage');
    RegisterClass =
        user32.lookupFunction<registerClassNative, registerClassDart>(
            'RegisterClassW');
    ShowWindow =
        user32.lookupFunction<showWindowNative, showWindowDart>('ShowWindow');
    TranslateMessage =
        user32.lookupFunction<translateMessageNative, translateMessageDart>(
            'TranslateMessage');

    final kernel32 = DynamicLibrary.open('kernel32.dll');
    GetLastError = kernel32
        .lookupFunction<getLastErrorNative, getLastErrorDart>('GetLastError');
    GetModuleHandle =
        kernel32.lookupFunction<getModuleHandleNative, getModuleHandleDart>(
            'GetModuleHandleW');
  }
}
