import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'constants.dart';

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

// typedef struct tagSIZE {
//   LONG cx;
//   LONG cy;
// } SIZE, *PSIZE;
class SIZE extends Struct {
  @Int32()
  int cx;

  @Int32()
  int cy;

  factory SIZE.allocate() => allocate<SIZE>().ref
    ..cx = 0
    ..cy = 0;
}

// typedef struct tagMINMAXINFO {
//   POINT ptReserved;
//   POINT ptMaxSize;
//   POINT ptMaxPosition;
//   POINT ptMinTrackSize;
//   POINT ptMaxTrackSize;
// } MINMAXINFO, *PMINMAXINFO, *LPMINMAXINFO;
class MINMAXINFO extends Struct {
  @Int32()
  int ptReservedX;
  @Int32()
  int ptReservedY;

  @Int32()
  int ptMaxSizeX;
  @Int32()
  int ptMaxSizeY;

  @Int32()
  int ptMaxPositionX;
  @Int32()
  int ptMaxPositionY;

  @Int32()
  int ptMinTrackSizeX;
  @Int32()
  int ptMinTrackSizeY;

  @Int32()
  int ptMaxTrackSizeX;
  @Int32()
  int ptMaxTrackSizeY;
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

// typedef struct tagINPUT {
//   DWORD type;
//   union {
//     MOUSEINPUT    mi;
//     KEYBDINPUT    ki;
//     HARDWAREINPUT hi;
//   } DUMMYUNIONNAME;
// } INPUT, *PINPUT, *LPINPUT;

// We embed this type directly into the union types below, since nested structs
// are unavailable in Dart FFI at present.

// typedef struct tagMOUSEINPUT {
//   LONG      dx;
//   LONG      dy;
//   DWORD     mouseData;
//   DWORD     dwFlags;
//   DWORD     time;
//   ULONG_PTR dwExtraInfo;
// } MOUSEINPUT, *PMOUSEINPUT, *LPMOUSEINPUT;
class MOUSEINPUT extends Struct {
  @Int32()
  int type;

  @Int32()
  int padding;

  @Int32()
  int dx;
  @Int32()
  int dy;

  @Int32()
  int mouseData;

  @Int32()
  int dwFlags;

  @Int32()
  int time;

  Pointer<Uint32> dwExtraInfo;

  factory MOUSEINPUT.allocate() => allocate<MOUSEINPUT>().ref
    ..type = INPUT_MOUSE
    ..dx = 0
    ..dy = 0
    ..mouseData = 0
    ..dwFlags = 0
    ..time = 0
    ..dwExtraInfo = nullptr;
}

// typedef struct tagKEYBDINPUT {
//   WORD      wVk;
//   WORD      wScan;
//   DWORD     dwFlags;
//   DWORD     time;
//   ULONG_PTR dwExtraInfo;
// } KEYBDINPUT, *PKEYBDINPUT, *LPKEYBDINPUT;
class KEYBDINPUT extends Struct {
  @Int32()
  int type;

  @Int32()
  int padding;

  @Int16()
  int wVk;

  @Int16()
  int wScan;

  @Int32()
  int dwFlag;

  @Int32()
  int time;

  Pointer<Uint32> dwExtraInfo;

  @Int64()
  int padding2;

  factory KEYBDINPUT.allocate() => allocate<KEYBDINPUT>().ref
    ..type = INPUT_KEYBOARD
    ..wVk = 0
    ..wScan = 0
    ..dwFlag = 0
    ..time = 0
    ..dwExtraInfo = nullptr;
}

// typedef struct tagHARDWAREINPUT {
//   DWORD uMsg;
//   WORD  wParamL;
//   WORD  wParamH;
// } HARDWAREINPUT, *PHARDWAREINPUT, *LPHARDWAREINPUT;
class HARDWAREINPUT extends Struct {
  @Int32()
  int type;

  @Int32()
  int padding;

  @Int32()
  int uMsg;

  @Int16()
  int wParamL;
  @Int16()
  int wParamH;

  factory HARDWAREINPUT.allocate() => allocate<HARDWAREINPUT>().ref
    ..type = INPUT_HARDWARE
    ..uMsg = 0
    ..wParamL = 0
    ..wParamH = 0;
}

// typedef struct tagTEXTMETRICW {
//   LONG  tmHeight;
//   LONG  tmAscent;
//   LONG  tmDescent;
//   LONG  tmInternalLeading;
//   LONG  tmExternalLeading;
//   LONG  tmAveCharWidth;
//   LONG  tmMaxCharWidth;
//   LONG  tmWeight;
//   LONG  tmOverhang;
//   LONG  tmDigitizedAspectX;
//   LONG  tmDigitizedAspectY;
//   WCHAR tmFirstChar;
//   WCHAR tmLastChar;
//   WCHAR tmDefaultChar;
//   WCHAR tmBreakChar;
//   BYTE  tmItalic;
//   BYTE  tmUnderlined;
//   BYTE  tmStruckOut;
//   BYTE  tmPitchAndFamily;
//   BYTE  tmCharSet;
// } TEXTMETRICW, *PTEXTMETRICW, *NPTEXTMETRICW, *LPTEXTMETRICW;
class TEXTMETRIC extends Struct {
  @Int32()
  int tmHeight;
  @Int32()
  int tmAscent;
  @Int32()
  int tmDescent;
  @Int32()
  int tmInternalLeading;
  @Int32()
  int tmExternalLeading;
  @Int32()
  int tmAveCharWidth;
  @Int32()
  int tmMaxCharWidth;
  @Int32()
  int tmWeight;
  @Int32()
  int tmOverhang;
  @Int32()
  int tmDigitizedAspectX;
  @Int32()
  int tmDigitizedAspectY;
  @Int16()
  int tmFirstChar;
  @Int16()
  int tmLastChar;
  @Int16()
  int tmDefaultChar;
  @Int16()
  int tmBreakChar;
  @Int8()
  int tmItalic;
  @Int8()
  int tmUnderlined;
  @Int8()
  int tmStruckOut;
  @Int8()
  int tmPitchAndFamily;
  @Int8()
  int tmCharSet;

  factory TEXTMETRIC.allocate() => allocate<TEXTMETRIC>().ref
    ..tmHeight = 0
    ..tmAscent = 0
    ..tmDescent = 0
    ..tmInternalLeading = 0
    ..tmExternalLeading = 0
    ..tmAveCharWidth = 0
    ..tmMaxCharWidth = 0
    ..tmWeight = 0
    ..tmOverhang = 0
    ..tmDigitizedAspectX = 0
    ..tmDigitizedAspectY = 0
    ..tmFirstChar = 0
    ..tmLastChar = 0
    ..tmDefaultChar = 0
    ..tmBreakChar = 0
    ..tmItalic = 0
    ..tmUnderlined = 0
    ..tmStruckOut = 0
    ..tmPitchAndFamily = 0
    ..tmCharSet = 0;
}

// typedef struct tagSCROLLINFO {
//   UINT cbSize;
//   UINT fMask;
//   int  nMin;
//   int  nMax;
//   UINT nPage;
//   int  nPos;
//   int  nTrackPos;
// } SCROLLINFO, *LPSCROLLINFO;
class SCROLLINFO extends Struct {
  @Int32()
  int cbSize;
  @Int32()
  int fMask;
  @Int32()
  int nMin;
  @Int32()
  int nMax;
  @Int32()
  int nPage;
  @Int32()
  int nPos;
  @Int32()
  int nTrackPos;

  factory SCROLLINFO.allocate() => allocate<SCROLLINFO>().ref
    ..cbSize = 0
    ..fMask = 0
    ..nMin = 0
    ..nMax = 0
    ..nPage = 0
    ..nPos = 0
    ..nTrackPos = 0;
}

// *** COM STRUCTS ***

// typedef struct _GUID {
//     unsigned long  Data1;
//     unsigned short Data2;
//     unsigned short Data3;
//     unsigned char  Data4[ 8 ];
// } GUID;
class GUID extends Struct {
  @Uint32()
  int Data1;
  @Uint16()
  int Data2;
  @Uint16()
  int Data3;
  @Uint64()
  int Data4;

  factory GUID.allocate() => allocate<GUID>().ref
    ..Data1 = 0
    ..Data2 = 0
    ..Data3 = 0
    ..Data4 = 0;

  /// Create GUID from common {FDD39AD0-238F-46AF-ADB4-6C85480369C7} format
  factory GUID.fromString(String guidString) {
    assert(guidString.length == 38);
    final guid = allocate<GUID>().ref;
    guid.Data1 = int.parse('${guidString.substring(1, 9)}', radix: 16);
    guid.Data2 = int.parse('${guidString.substring(10, 14)}', radix: 16);
    guid.Data3 = int.parse('${guidString.substring(15, 19)}', radix: 16);

    // final component is pushed on the stack in reverse order per x64
    // calling convention. This is a funky workaround until FFI supports
    // passing structs by value.
    final rawString = guidString.substring(35, 37) +
        guidString.substring(33, 35) +
        guidString.substring(31, 33) +
        guidString.substring(29, 31) +
        guidString.substring(27, 29) +
        guidString.substring(25, 27) +
        guidString.substring(22, 24) +
        guidString.substring(20, 22);

    // We need to split this to avoid overflowing a signed int.parse()
    guid.Data4 = (int.parse('${rawString.substring(0, 4)}', radix: 16) << 48) +
        int.parse('${rawString.substring(4, 16)}', radix: 16);

    return guid;
  }

  /// Print GUID in common {FDD39AD0-238F-46AF-ADB4-6C85480369C7} format
  @override
  String toString() {
    final comp1 = (Data4 & 0xFF).toRadixString(16) +
        ((Data4 & 0xFF00) >> 8).toRadixString(16);

    // This is hacky as all get-out :)
    final comp2 = ((Data4 & 0xFF0000) >> 16).toRadixString(16).padLeft(2, '0') +
        ((Data4 & 0xFF000000) >> 24).toRadixString(16).padLeft(2, '0') +
        ((Data4 & 0xFF00000000) >> 32).toRadixString(16).padLeft(2, '0') +
        ((Data4 & 0xFF0000000000) >> 40).toRadixString(16).padLeft(2, '0') +
        ((Data4 & 0xFF000000000000) >> 48).toRadixString(16).padLeft(2, '0') +
        (BigInt.from(Data4 & 0xFF00000000000000).toUnsigned(64) >> 56)
            .toRadixString(16)
            .padLeft(2, '0');

    return '{${Data1.toRadixString(16).padLeft(8, '0').toUpperCase()}-'
        '${Data2.toRadixString(16).padLeft(4, '0').toUpperCase()}-'
        '${Data3.toRadixString(16).padLeft(4, '0').toUpperCase()}-'
        '${comp1.toUpperCase()}-'
        '${comp2.toUpperCase()}}';
  }
}

// *** CONSOLE STRUCTS ***

// Dart FFI does not yet have support for nested structs, so there's extra
// work necessary to unpack parameters like COORD and SMALL_RECT. The Dart
// issue for this work is https://github.com/dart-lang/sdk/issues/37271.

// typedef struct _CONSOLE_CURSOR_INFO {
//   DWORD dwSize;
//   BOOL  bVisible;
// } CONSOLE_CURSOR_INFO, *PCONSOLE_CURSOR_INFO;
class CONSOLE_CURSOR_INFO extends Struct {
  @Int32()
  int dwSize;
  @Int32()
  int bVisible;

  factory CONSOLE_CURSOR_INFO.allocate() => allocate<CONSOLE_CURSOR_INFO>().ref
    ..dwSize = 0
    ..bVisible = 0;
}

// typedef struct _CONSOLE_SCREEN_BUFFER_INFO {
//   COORD      dwSize;
//   COORD      dwCursorPosition;
//   WORD       wAttributes;
//   SMALL_RECT srWindow;
//   COORD      dwMaximumWindowSize;
// } CONSOLE_SCREEN_BUFFER_INFO;
class CONSOLE_SCREEN_BUFFER_INFO extends Struct {
  @Int16()
  int dwSizeX;

  @Int16()
  int dwSizeY;

  @Int16()
  int dwCursorPositionX;
  @Int16()
  int dwCursorPositionY;

  @Int16()
  int wAttributes;

  @Int16()
  int srWindowLeft;
  @Int16()
  int srWindowTop;
  @Int16()
  int srWindowRight;
  @Int16()
  int srWindowBottom;

  @Int16()
  int dwMaximumWindowSizeX;
  @Int16()
  int dwMaximumWindowSizeY;

  factory CONSOLE_SCREEN_BUFFER_INFO.allocate() =>
      allocate<CONSOLE_SCREEN_BUFFER_INFO>().ref
        ..dwSizeX = 0
        ..dwSizeY = 0
        ..dwCursorPositionX = 0
        ..dwCursorPositionY = 0
        ..wAttributes = 0
        ..srWindowLeft = 0
        ..srWindowTop = 0
        ..srWindowRight = 0
        ..srWindowBottom = 0
        ..dwMaximumWindowSizeX = 0
        ..dwMaximumWindowSizeY = 0;
}

// typedef struct _COORD {
//   SHORT X;
//   SHORT Y;
// } COORD, *PCOORD;
class COORD extends Struct {
  @Int16()
  int X;

  @Int16()
  int Y;

  factory COORD.allocate() => allocate<COORD>().ref
    ..X = 0
    ..Y = 0;
}

// typedef struct _SMALL_RECT {
//   SHORT Left;
//   SHORT Top;
//   SHORT Right;
//   SHORT Bottom;
// } SMALL_RECT;
class SMALL_RECT extends Struct {
  @Int16()
  int Left;

  @Int16()
  int Top;

  @Int16()
  int Right;

  @Int16()
  int Bottom;
  factory SMALL_RECT.allocate() => allocate<SMALL_RECT>().ref
    ..Left = 0
    ..Top = 0
    ..Right = 0
    ..Bottom = 0;
}
