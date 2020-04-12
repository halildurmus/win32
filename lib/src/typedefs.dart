import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'structs.dart';

// HDC BeginPaint(
//   HWND          hWnd,
//   LPPAINTSTRUCT lpPaint
// );
typedef beginPaintNative = Int64 Function(
    Int64 hWnd, Pointer<PAINTSTRUCT> lpPaint);
typedef beginPaintDart = int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint);

// HRESULT CoCreateGuid(
//   GUID *pguid
// );
typedef coCreateGuidNative = Int32 Function(Pointer<GUID> pguid);
typedef coCreateGuidDart = int Function(Pointer<GUID> pguid);

// void CoTaskMemFree(
//   _Frees_ptr_opt_ LPVOID pv
// );
typedef coTaskMemFreeNative = Void Function(Pointer<Void> pv);
typedef coTaskMemFreeDart = void Function(Pointer<Void> pv);

// HBRUSH CreateSolidBrush(
//   COLORREF color
// );
typedef createSolidBrushNative = Int64 Function(Int32 color);
typedef createSolidBrushDart = int Function(int color);

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

// BOOL DeleteObject(
//   HGDIOBJ ho
// );
typedef deleteObjectNative = Int32 Function(Int64 ho);
typedef deleteObjectDart = int Function(int ho);

// LRESULT DispatchMessage(
//   const MSG *lpMsg
// );
typedef dispatchMessageNative = Int64 Function(Pointer<MSG> lpMsg);
typedef dispatchMessageDart = int Function(Pointer<MSG> lpMsg);

// int DrawTextW(
//   HDC     hdc,
//   LPCWSTR lpchText,
//   int     cchText,
//   LPRECT  lprc,
//   UINT    format
// );
typedef drawTextNative = Int32 Function(Int64 hdc, Pointer<Utf16> lpchText,
    Int32 cchText, Pointer<RECT> lprc, Int32 format);
typedef drawTextDart = int Function(int hdc, Pointer<Utf16> lpchText,
    int cchText, Pointer<RECT> lprc, int format);

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

// BOOL GetClientRect(
//   HWND   hWnd,
//   LPRECT lpRect
// );
typedef getClientRectNative = Int32 Function(Int64 hwnd, Pointer<RECT> lpRect);
typedef getClientRectDart = int Function(int hwnd, Pointer<RECT> lpRect);

// HDC GetDC(
//   HWND hWnd
// );
typedef getDCNative = Int64 Function(Int64 hwnd);
typedef getDCDart = int Function(int hwnd);

// BOOL GetScrollInfo(
//   HWND         hwnd,
//   int          nBar,
//   LPSCROLLINFO lpsi
// );
typedef getScrollInfoNative = Int32 Function(
    Int64 hwnd, Int32 nBar, Pointer<SCROLLINFO> lpsi);
typedef getScrollInfoDart = int Function(
    int hwnd, int nBar, Pointer<SCROLLINFO> lpsi);

// HGDIOBJ GetStockObject(
//   int i
// );
typedef getStockObjectNative = Int64 Function(Int32 i);
typedef getStockObjectDart = int Function(int i);

// BOOL GetTextMetrics(
//   HDC          hdc,
//   LPTEXTMETRIC lptm
// );
typedef getTextMetricsNative = Int32 Function(
    Int64 hdc, Pointer<TEXTMETRIC> lptm);
typedef getTextMetricsDart = int Function(int hdc, Pointer<TEXTMETRIC> lptm);

// BOOL KillTimer(
//   HWND     hWnd,
//   UINT_PTR uIDEvent
// );
typedef killTimerNative = Int32 Function(Int64 hWnd, Uint32 uIDEvent);
typedef killTimerDart = int Function(int hWnd, int uIDEvent);

// BOOL LineTo(
//   HDC hdc,
//   int x,
//   int y
// );
typedef lineToNative = Int32 Function(Int64 hdc, Int32 x, Int32 y);
typedef lineToDart = int Function(int hdc, int x, int y);

// HCURSOR LoadCursorW(
//   HINSTANCE hInstance,
//   LPCWSTR   lpCursorName
// );
typedef loadCursorNative = Int64 Function(
    Int64 hInstance, Pointer<Utf16> lpCursorName);
typedef loadCursorDart = int Function(
    int hInstance, Pointer<Utf16> lpCursorName);

// HICON LoadIconW(
//   HINSTANCE hInstance,
//   LPCWSTR   lpIconName
// );
typedef loadIconNative = Int64 Function(
    Int64 hInstance, Pointer<Utf16> lpIconName);
typedef loadIconDart = int Function(int hInstance, Pointer<Utf16> lpIconName);

// int MessageBoxW(
//   HWND    hWnd,
//   LPCWSTR lpText,
//   LPCWSTR lpCaption,
//   UINT    uType
// );
typedef messageBoxNative = Int32 Function(
    Int64 hWnd, Pointer<Utf16> lpText, Pointer<Utf16> lpCaption, Int32 uType);
typedef messageBoxDart = int Function(
    int hWnd, Pointer<Utf16> lpText, Pointer<Utf16> lpCaption, int uType);

// BOOL MoveToEx(
//   HDC     hdc,
//   int     x,
//   int     y,
//   LPPOINT lppt
// );
typedef moveToExNative = Int32 Function(
    Int64 hdc, Int32 x, Int32 y, Pointer<POINT> lppt);
typedef moveToExDart = int Function(int hdc, int x, int y, Pointer<POINT> lppt);

// ATOM RegisterClassW(
//   const WNDCLASSW *lpWndClass
// );
typedef registerClassNative = Int16 Function(Pointer<WNDCLASS> lpWndClass);
typedef registerClassDart = int Function(Pointer<WNDCLASS> lpWndClass);

// int ReleaseDC(
//   HWND hWnd,
//   HDC  hDC
// );
typedef releaseDCNative = Int32 Function(Int64 hWnd, Int64 hDC);
typedef releaseDCDart = int Function(int hWnd, int hDC);

// int SaveDC(
//   HDC hdc
// );
typedef saveDCNative = Int32 Function(Int64 hdc);
typedef saveDCDart = int Function(int hdc);

// BOOL ScrollWindow(
//   HWND       hWnd,
//   int        XAmount,
//   int        YAmount,
//   const RECT *lpRect,
//   const RECT *lpClipRect
// );
typedef scrollWindowNative = Int32 Function(Int64 hWnd, Int32 XAmount,
    Int32 YAmount, Pointer<RECT> lpRect, Pointer<RECT> lpClipRect);
typedef scrollWindowDart = int Function(int hWnd, int XAmount, int YAmount,
    Pointer<RECT> lpRect, Pointer<RECT> lpClipRect);

// In the following typedef, we use Pointer<Void> since pInputs can take
// an array of input messages, and Pointer<List<INPUT>> isn't possible.

// UINT SendInput(
//   UINT    cInputs,
//   LPINPUT pInputs,
//   int     cbSize
// );
typedef sendInputNative = Uint32 Function(
    Uint32 cInputs, Pointer<Void> pInputs, Int32 cbSize);
typedef sendInputDart = int Function(
    int cInputs, Pointer<Void> pInputs, int cbSize);

// COLORREF SetBkColor(
//   HDC      hdc,
//   COLORREF color
// );
typedef setBkColorNative = Int32 Function(Int64 hdc, Int32 color);
typedef setBkColorDart = int Function(int hdc, int color);

// int SetBkMode(
//   HDC hdc,
//   int mode
// );
typedef setBkModeNative = Int32 Function(Int64 hdc, Int32 mode);
typedef setBkModeDart = int Function(int hdc, int mode);

// int SetMapMode(
//   HDC hdc,
//   int iMode
// );
typedef setMapModeNative = Int32 Function(Int64 hdc, Int32 iMode);
typedef setMapModeDart = int Function(int hdc, int iMode);

// int SetScrollInfo(
//   HWND          hwnd,
//   int           nBar,
//   LPCSCROLLINFO lpsi,
//   BOOL          redraw
// );
typedef setScrollInfoNative = Int32 Function(
    Int64 hwnd, Int32 nBar, Pointer<SCROLLINFO> lpsi, Int32 redraw);
typedef setScrollInfoDart = int Function(
    int hwnd, int nBar, Pointer<SCROLLINFO> lpsi, int redraw);

// COLORREF SetTextColor(
//   HDC      hdc,
//   COLORREF color
// );
typedef setTextColorNative = Int32 Function(Int64 hdc, Int32 color);
typedef setTextColorDart = int Function(int hdc, int color);

// UINT_PTR SetTimer(
//   HWND      hWnd,
//   UINT_PTR  nIDEvent,
//   UINT      uElapse,
//   TIMERPROC lpTimerFunc
// );
typedef setTimerNative = Uint32 Function(Int64 hWnd, Uint32 nIDEvent,
    Uint32 uElapse, Pointer<NativeFunction> lpTimerFunc);
typedef setTimerDart = int Function(
    int hWnd, int nIDEvent, int uElapse, Pointer<NativeFunction> lpTimerFunc);

// BOOL SetViewportExtEx(
//   HDC    hdc,
//   int    x,
//   int    y,
//   LPSIZE lpsz
// );
typedef setViewportExtExNative = Int32 Function(
    Int64 hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz);
typedef setViewportExtExDart = int Function(
    int hdc, int x, int y, Pointer<SIZE> lpsz);

// BOOL SetViewportOrgEx(
//   HDC     hdc,
//   int     x,
//   int     y,
//   LPPOINT lppt
// );
typedef setViewportOrgExNative = Int32 Function(
    Int64 hdc, Int32 x, Int32 y, Pointer<POINT> lppt);
typedef setViewportOrgExDart = int Function(
    int hdc, int x, int y, Pointer<POINT> lppt);

// BOOL SetWindowExtEx(
//   HDC    hdc,
//   int    x,
//   int    y,
//   LPSIZE lpsz
// );
typedef setWindowExtExNative = Int32 Function(
    Int64 hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz);
typedef setWindowExtExDart = int Function(
    int hdc, int x, int y, Pointer<SIZE> lpsz);

// SHFOLDERAPI SHGetFolderPathW(
//   HWND   hwnd,
//   int    csidl,
//   HANDLE hToken,
//   DWORD  dwFlags,
//   LPWSTR pszPath
// );
typedef shGetFolderPathNative = Int32 Function(Int64 hwnd, Int32 csidl,
    Int64 hToken, Int32 dwFlags, Pointer<Uint16> pszPath);
typedef shGetFolderPathDart = int Function(
    int hwnd, int csidl, int hToken, int dwFlags, Pointer<Uint16> pszPath);

// HRESULT SHGetKnownFolderPath(
//   REFKNOWNFOLDERID rfid,
//   DWORD            dwFlags,
//   HANDLE           hToken,
//   PWSTR            *ppszPath
// );
typedef shGetKnownFolderPathNative = Int32 Function(
    Pointer<GUID> rfid, Int32 dwFlags, Int64 hToken, Pointer<Uint64> ppszPath);
typedef shGetKnownFolderPathDart = int Function(
    Pointer<GUID> rfid, int dwFlags, int hToken, Pointer<Uint64> ppszPath);

// HINSTANCE ShellExecuteW(
//   HWND    hwnd,
//   LPCWSTR lpOperation,
//   LPCWSTR lpFile,
//   LPCWSTR lpParameters,
//   LPCWSTR lpDirectory,
//   INT     nShowCmd
// );
typedef shellExecuteNative = Int64 Function(
    Int64 hwnd,
    Pointer<Utf16> lpOperation,
    Pointer<Utf16> lpFile,
    Pointer<Utf16> lpParameters,
    Pointer<Utf16> lpDirectory,
    Int32 nShowCmd);
typedef shellExecuteDart = int Function(
    int hwnd,
    Pointer<Utf16> lpOperation,
    Pointer<Utf16> lpFile,
    Pointer<Utf16> lpParameters,
    Pointer<Utf16> lpDirectory,
    int nShowCmd);

// BOOL ShowWindow(
//   HWND hWnd,
//   int  nCmdShow
// );
typedef showWindowNative = Int32 Function(Int64 hWnd, Int32 nCmdShow);
typedef showWindowDart = int Function(int hWnd, int nCmdShow);

// void Sleep(
//   DWORD dwMilliseconds
// );
typedef sleepNative = Void Function(Uint32 dwMilliseconds);
typedef sleepDart = void Function(int dwMilliseconds);

// BOOL TextOutW(
//   HDC     hdc,
//   int     x,
//   int     y,
//   LPCWSTR lpString,
//   int     c
// );
typedef textOutNative = Int32 Function(
    Int64 hdc, Int32 x, Int32 y, Pointer<Utf16> lpString, Int32 c);
typedef textOutDart = int Function(
    int hdc, int x, int y, Pointer<Utf16> lpString, int c);

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

// BOOL UpdateWindow(
//   HWND hWnd
// );
typedef updateWindowNative = Int32 Function(Int64 hWnd);
typedef updateWindowDart = int Function(int hWnd);

// *** CONSOLE APIs ***
// BOOL WINAPI FillConsoleOutputCharacter(
//   _In_  HANDLE  hConsoleOutput,
//   _In_  TCHAR   cCharacter,
//   _In_  DWORD   nLength,
//   _In_  COORD   dwWriteCoord,
//   _Out_ LPDWORD lpNumberOfCharsWritten
// );
typedef fillConsoleOutputCharacterNative = Int32 Function(
    Int64 hConsoleOutput,
    Int8 cCharacter,
    Int32 nLength,
    Int32 dwWriteCoord,
    Pointer<Int32> lpNumberOfCharsWritten);
typedef fillConsoleOutputCharacterDart = int Function(
    int hConsoleOutput,
    int cCharacter,
    int nLength,
    int dwWriteCoord,
    Pointer<Int32> lpNumberOfCharsWritten);

// BOOL WINAPI FillConsoleOutputAttribute(
//   _In_  HANDLE  hConsoleOutput,
//   _In_  WORD    wAttribute,
//   _In_  DWORD   nLength,
//   _In_  COORD   dwWriteCoord,
//   _Out_ LPDWORD lpNumberOfAttrsWritten
// );
typedef fillConsoleOutputAttributeNative = Int32 Function(
    Int64 hConsoleOutput,
    Int16 wAttribute,
    Int32 nLength,
    Int32 dwWriteCoord,
    Pointer<Int32> lpNumberOfAttrsWritten);
typedef fillConsoleOutputAttributeDart = int Function(
    int hConsoleOutput,
    int cCharacter,
    int nLength,
    int dwWriteCoord,
    Pointer<Int32> lpNumberOfAttrsWritten);

// BOOL WINAPI GetConsoleScreenBufferInfo(
//   _In_  HANDLE                      hConsoleOutput,
//   _Out_ PCONSOLE_SCREEN_BUFFER_INFO lpConsoleScreenBufferInfo
// );
typedef getConsoleScreenBufferInfoNative = Int32 Function(Int64 hConsoleOutput,
    Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo);
typedef getConsoleScreenBufferInfoDart = int Function(int hConsoleOutput,
    Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo);

// HANDLE WINAPI GetStdHandle(
//   _In_ DWORD nStdHandle
// );
typedef getStdHandleNative = Int64 Function(Int32 nStdHandle);
typedef getStdHandleDart = int Function(int nStdHandle);

// BOOL WINAPI SetConsoleCursorInfo(
//   _In_       HANDLE              hConsoleOutput,
//   _In_ const CONSOLE_CURSOR_INFO *lpConsoleCursorInfo
// );
typedef setConsoleCursorInfoNative = Int32 Function(
    Int64 hConsoleOutput, Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo);
typedef setConsoleCursorInfoDart = int Function(
    int hConsoleOutput, Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo);

// BOOL WINAPI SetConsoleCursorPosition(
//   _In_ HANDLE hConsoleOutput,
//   _In_ COORD  dwCursorPosition
// );
typedef setConsoleCursorPositionNative = Int32 Function(
    Int64 hConsoleOutput, Int32 dwCursorPosition);
typedef setConsoleCursorPositionDart = int Function(
    int hConsoleOutput, int dwCursorPosition);

// BOOL WINAPI SetConsoleMode(
//   _In_ HANDLE hConsoleHandle,
//   _In_ DWORD  dwMode
// );
typedef setConsoleModeNative = Int32 Function(
    Int64 hConsoleHandle, Int32 dwMode);
typedef setConsoleModeDart = int Function(int hConsoleHandle, int dwMode);
