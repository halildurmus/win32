import 'dart:ffi';
import 'package:ffi/ffi.dart';

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
