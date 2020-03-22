import 'dart:ffi';

// Prototypes of window-related functions, constants and structs in user32.dll

// LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam);
typedef windowProcNative = Int32 Function();
typedef windowProcDart = int Function();

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
typedef createWindowsExNative = Int32 Function(
    Int32 dwExStyle,
    Pointer<Int16> lpClassName,
    Pointer<Int16> lpWindowName,
    Int32 dwStyle,
    Int32 X,
    Int32 Y,
    Int32 nWidth,
    Int32 nHeight,
    Int32 hWndParent,
    Int32 hMenu,
    Int32 hInstance,
    Pointer<Void> lpParam);

typedef createWindowsExDart = int Function(
    int dwExStyle,
    Pointer<Int16> lpClassName,
    Pointer<Int16> lpWindowName,
    int dwStyle,
    int X,
    int Y,
    int nWidth,
    int nHeight,
    int hWndParent,
    int hMenu,
    int hInstance,
    Pointer<Void> lpParam);

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

// BOOL ShowWindow(
//   HWND hWnd,
//   int  nCmdShow
// );
typedef showWindowsNative = Int8 Function(Int32 hWnd, int nCmdShow);
typedef showWindowsDart = int Function(int hWnd, int nCmdShow);

class Win32 {
  createWindowsExDart CreateWindowsEx;
  showWindowsDart ShowWindow;

  Win32() {
    final user32 = DynamicLibrary.open('User32.dll');

    CreateWindowsEx =
        user32.lookupFunction<createWindowsExNative, createWindowsExDart>(
            'CreateWindowsExA');
    ShowWindow =
        user32.lookupFunction<showWindowsNative, showWindowsDart>('ShowWindow');
  }
}
