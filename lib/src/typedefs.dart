// typedefs.dart

// FFI prototypes for the Win32 API methods, along with their Dart equivalents

import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'structs.dart';

// BOOL AppendMenuW(
//   HMENU    hMenu,
//   UINT     uFlags,
//   UINT_PTR uIDNewItem,
//   LPCWSTR  lpNewItem
// );
typedef appendMenuNative = Int32 Function(
    IntPtr hMenu, Uint32 uFlags, Uint32 uIDNewItem, Pointer<Utf16> lpNewItem);
typedef appendMenuDart = int Function(
    int hMenu, int uFlags, int uIDNewItem, Pointer<Utf16> lpNewItem);
// BOOL Beep(
//   DWORD dwFreq,
//   DWORD dwDuration
// );
typedef beepNative = Int32 Function(Int32 dwFreq, Int32 dwDuration);
typedef beepDart = int Function(int dwFreq, int dwDuration);

// HDC BeginPaint(
//   HWND          hWnd,
//   LPPAINTSTRUCT lpPaint
// );
typedef beginPaintNative = IntPtr Function(
    IntPtr hWnd, Pointer<PAINTSTRUCT> lpPaint);
typedef beginPaintDart = int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint);

// BOOL WINAPI ChooseColor(
//   _Inout_ LPCHOOSECOLOR lpcc
// );
typedef chooseColorNative = Int32 Function(Pointer<CHOOSECOLOR> lpcc);
typedef chooseColorDart = int Function(Pointer<CHOOSECOLOR> lpcc);

// BOOL WINAPI ChooseFont(
//   _Inout_ LPCHOOSEFONT lpcf
// );
typedef chooseFontNative = Int32 Function(Pointer<CHOOSEFONT> lpcf);
typedef chooseFontDart = int Function(Pointer<CHOOSEFONT> lpcf);

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

// HACCEL CreateAcceleratorTableW(
//   LPACCEL paccel,
//   int     cAccel
// );
typedef createAcceleratorTableNative = IntPtr Function(
    Pointer paccel, Int32 cAccel);
typedef createAcceleratorTableDart = int Function(Pointer paccel, int cAccel);

// HANDLE CreateFileW(
//   LPCWSTR               lpFileName,
//   DWORD                 dwDesiredAccess,
//   DWORD                 dwShareMode,
//   LPSECURITY_ATTRIBUTES lpSecurityAttributes,
//   DWORD                 dwCreationDisposition,
//   DWORD                 dwFlagsAndAttributes,
//   HANDLE                hTemplateFile
// );
typedef createFileNative = IntPtr Function(
    Pointer<Utf16> lpFileName,
    Int32 dwDesiredAccess,
    Int32 dwShareMode,
    Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
    Int32 dwCreationDisposition,
    Int32 dwFlagsAndAttributes,
    IntPtr hTemplateFile);
typedef createFileDart = int Function(
    Pointer<Utf16> lpFileName,
    int dwDesiredAccess,
    int dwShareMode,
    Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
    int dwCreationDisposition,
    int dwFlagsAndAttributes,
    int hTemplateFile);

// HFONT CreateFontIndirectW(
//   const LOGFONTW *lplf
// );
typedef createFontIndirectNative = IntPtr Function(Pointer<LOGFONT> lplf);
typedef createFontIndirectDart = int Function(Pointer<LOGFONT> lplf);

// HMENU CreateMenu();
typedef createMenuNative = IntPtr Function();
typedef createMenuDart = int Function();

// HBRUSH CreateSolidBrush(
//   COLORREF color
// );
typedef createSolidBrushNative = IntPtr Function(Int32 color);
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
    IntPtr hWndParent,
    IntPtr hMenu,
    IntPtr hInstance,
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
typedef defWindowProcNative = IntPtr Function(
    IntPtr hWnd, Int32 Msg, IntPtr wParam, IntPtr lParam);
typedef defWindowProcDart = int Function(
    int hWnd, int Msg, int wParam, int lParam);

// BOOL DeleteObject(
//   HGDIOBJ ho
// );
typedef deleteObjectNative = Int32 Function(IntPtr ho);
typedef deleteObjectDart = int Function(int ho);

// BOOL DestroyWindow(
//   HWND hWnd
// );
typedef destroyWindowNative = Int32 Function(IntPtr hWnd);
typedef destroyWindowDart = int Function(int hWnd);

// LRESULT DispatchMessage(
//   const MSG *lpMsg
// );
typedef dispatchMessageNative = IntPtr Function(Pointer<MSG> lpMsg);
typedef dispatchMessageDart = int Function(Pointer<MSG> lpMsg);

// int DrawTextW(
//   HDC     hdc,
//   LPCWSTR lpchText,
//   int     cchText,
//   LPRECT  lprc,
//   UINT    format
// );
typedef drawTextNative = Int32 Function(IntPtr hdc, Pointer<Utf16> lpchText,
    Int32 cchText, Pointer<RECT> lprc, Int32 format);
typedef drawTextDart = int Function(int hdc, Pointer<Utf16> lpchText,
    int cchText, Pointer<RECT> lprc, int format);

// BOOL EnableMenuItem(
//   HMENU hMenu,
//   UINT  uIDEnableItem,
//   UINT  uEnable
// );
typedef enableMenuItemNative = Int32 Function(
    IntPtr hMenu, Uint32 uIDEnableItem, Uint32 uEnable);
typedef enableMenuItemDart = int Function(
    int hMenu, int uIDEnableItem, int uEnable);

// BOOL EndPaint(
//   HWND              hWnd,
//   const PAINTSTRUCT *lpPaint
// );
typedef endPaintNative = Int32 Function(
    IntPtr hWnd, Pointer<PAINTSTRUCT> lpPaint);
typedef endPaintDart = int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint);

// BOOL EnumWindows(
//   WNDENUMPROC lpEnumFunc,
//   LPARAM      lParam
// );
typedef enumWindowsNative = Int32 Function(
    Pointer<NativeFunction> lpEnumFunc, IntPtr lParam);
typedef enumWindowsDart = int Function(
    Pointer<NativeFunction> lpEnumFunc, int lParam);

// BOOL WINAPI FillConsoleOutputCharacter(
//   _In_  HANDLE  hConsoleOutput,
//   _In_  TCHAR   cCharacter,
//   _In_  DWORD   nLength,
//   _In_  COORD   dwWriteCoord,
//   _Out_ LPDWORD lpNumberOfCharsWritten
// );
typedef fillConsoleOutputCharacterNative = Int32 Function(
    IntPtr hConsoleOutput,
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
    IntPtr hConsoleOutput,
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

// int FillRect(
//   HDC        hDC,
//   const RECT *lprc,
//   HBRUSH     hbr
// );
typedef fillRectNative = Int32 Function(
    IntPtr hDC, Pointer<RECT> lprc, IntPtr hbr);
typedef fillRectDart = int Function(int hDC, Pointer<RECT> lprc, int hbr);

// HANDLE FindFirstVolumeW(
//   LPWSTR lpszVolumeName,
//   DWORD  cchBufferLength
// );
typedef findFirstVolumeNative = IntPtr Function(
    Pointer<Utf16> lpszVolumeName, Int32 cchBufferLength);
typedef findFirstVolumeDart = int Function(
    Pointer<Utf16> lpszVolumeName, int cchBufferLength);

// BOOL FindNextVolumeW(
//   HANDLE hFindVolume,
//   LPWSTR lpszVolumeName,
//   DWORD  cchBufferLength
// );
typedef findNextVolumeNative = Int32 Function(
    IntPtr hFindVolume, Pointer<Utf16> lpszVolumeName, Int32 cchBufferLength);
typedef findNextVolumeDart = int Function(
    int hFindVolume, Pointer<Utf16> lpszVolumeName, int cchBufferLength);

// HWND FindTextW(
//   LPFINDREPLACEW Arg1
// );
typedef findTextNative = IntPtr Function(Pointer<FINDREPLACE> Arg1);
typedef findTextDart = int Function(Pointer<FINDREPLACE> Arg1);

// BOOL FindVolumeClose(
//   HANDLE hFindVolume
// );
typedef findVolumeCloseNative = Int32 Function(IntPtr hFindVolume);
typedef findVolumeCloseDart = int Function(int hFindVolume);

// HWND FindWindowExW(
//   HWND    hWndParent,
//   HWND    hWndChildAfter,
//   LPCWSTR lpszClass,
//   LPCWSTR lpszWindow
// );
typedef findWindowExNative = IntPtr Function(IntPtr hWndParent,
    IntPtr hWndChildAfter, Pointer<Utf16> lpszClass, Pointer<Utf16> lpszWindow);
typedef findWindowExDart = int Function(int hWndParent, int hWndChildAfter,
    Pointer<Utf16> lpszClass, Pointer<Utf16> lpszWindow);

// BOOL GetClientRect(
//   HWND   hWnd,
//   LPRECT lpRect
// );
typedef getClientRectNative = Int32 Function(IntPtr hwnd, Pointer<RECT> lpRect);
typedef getClientRectDart = int Function(int hwnd, Pointer<RECT> lpRect);

// BOOL WINAPI GetConsoleScreenBufferInfo(
//   _In_  HANDLE                      hConsoleOutput,
//   _Out_ PCONSOLE_SCREEN_BUFFER_INFO lpConsoleScreenBufferInfo
// );
typedef getConsoleScreenBufferInfoNative = Int32 Function(IntPtr hConsoleOutput,
    Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo);
typedef getConsoleScreenBufferInfoDart = int Function(int hConsoleOutput,
    Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo);

// HDC GetDC(
//   HWND hWnd
// );
typedef getDCNative = IntPtr Function(IntPtr hwnd);
typedef getDCDart = int Function(int hwnd);

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
    Pointer<MSG> lpMsg, IntPtr hWnd, Int32 wMsgFilterMin, Int32 wMsgFilterMax);
typedef getMessageDart = int Function(
    Pointer<MSG> lpMsg, int hWnd, int wMsgFilterMin, int wMsgFilterMax);

// HMODULE GetModuleHandleW(
//   LPCWSTR lpModuleName
// );
typedef getModuleHandleNative = IntPtr Function(Pointer<Utf16> lpModuleName);
typedef getModuleHandleDart = int Function(Pointer<Utf16> lpModuleName);

// int GetObject(
//   HANDLE h,
//   int    c,
//   LPVOID pv
// );
typedef getObjectNative = Int32 Function(IntPtr h, Int32 c, Pointer pv);
typedef getObjectDart = int Function(int h, int c, Pointer pv);

// BOOL GetOpenFileNameW(
//   LPOPENFILENAMEW Arg1
// );
typedef getOpenFileNameNative = Int32 Function(Pointer<OPENFILENAME> arg1);
typedef getOpenFileNameDart = int Function(Pointer<OPENFILENAME> arg1);

// BOOL GetSaveFileNameW(
//   LPOPENFILENAMEW Arg1
// );
typedef getSaveFileNameNative = Int32 Function(Pointer<OPENFILENAME> arg1);
typedef getSaveFileNameDart = int Function(Pointer<OPENFILENAME> arg1);

// BOOL GetScrollInfo(
//   HWND         hwnd,
//   int          nBar,
//   LPSCROLLINFO lpsi
// );
typedef getScrollInfoNative = Int32 Function(
    IntPtr hwnd, Int32 nBar, Pointer<SCROLLINFO> lpsi);
typedef getScrollInfoDart = int Function(
    int hwnd, int nBar, Pointer<SCROLLINFO> lpsi);

// HANDLE WINAPI GetStdHandle(
//   _In_ DWORD nStdHandle
// );
typedef getStdHandleNative = IntPtr Function(Int32 nStdHandle);
typedef getStdHandleDart = int Function(int nStdHandle);

// HGDIOBJ GetStockObject(
//   int i
// );
typedef getStockObjectNative = IntPtr Function(Int32 i);
typedef getStockObjectDart = int Function(int i);

// BOOL GetTextMetrics(
//   HDC          hdc,
//   LPTEXTMETRIC lptm
// );
typedef getTextMetricsNative = Int32 Function(
    IntPtr hdc, Pointer<TEXTMETRIC> lptm);
typedef getTextMetricsDart = int Function(int hdc, Pointer<TEXTMETRIC> lptm);

// BOOL GetVolumePathNamesForVolumeNameW(
//   LPCWSTR lpszVolumeName,
//   LPWCH   lpszVolumePathNames,
//   DWORD   cchBufferLength,
//   PDWORD  lpcchReturnLength
// );
typedef getVolumePathNamesForVolumeNameNative = Int32 Function(
    Pointer<Utf16> lpszVolumeName,
    Pointer<Utf16> lpszVolumePathNames,
    Int32 cchBufferLength,
    Pointer<Int32> lpcchReturnLength);
typedef getVolumePathNamesForVolumeNameDart = int Function(
    Pointer<Utf16> lpszVolumeName,
    Pointer<Utf16> lpszVolumePathNames,
    int cchBufferLength,
    Pointer<Int32> lpcchReturnLength);

// BOOL InvalidateRect(
//   HWND       hWnd,
//   const RECT *lpRect,
//   BOOL       bErase
// );
typedef invalidateRectNative = Int32 Function(
    IntPtr hWnd, Pointer<RECT> lpRect, Int32 bErase);
typedef invalidateRectDart = int Function(
    int hWnd, Pointer<RECT> lpRect, int bErase);
// int GetWindowTextW(
//   HWND   hWnd,
//   LPWSTR lpString,
//   int    nMaxCount
// );
typedef getWindowTextNative = Int32 Function(
    IntPtr hWnd, Pointer<Utf16> lpString, Int32 nMaxCount);
typedef getWindowTextDart = int Function(
    int hWnd, Pointer<Utf16> lpString, int nMaxCount);

// int GetWindowTextLengthW(
//   HWND hWnd
// );
typedef getWindowTextLengthNative = Int32 Function(IntPtr hWnd);
typedef getWindowTextLengthDart = int Function(int hWnd);

// BOOL IsClipboardFormatAvailable(
//   UINT format
// );
typedef isClipboardFormatAvailableNative = Int32 Function(Uint32 format);
typedef isClipboardFormatAvailableDart = int Function(int format);

// BOOL IsDialogMessageW(
//   HWND  hDlg,
//   LPMSG lpMsg
// );
typedef isDialogMessageNative = Int32 Function(IntPtr hDlg, Pointer<MSG> lpMsg);
typedef isDialogMessageDart = int Function(int hDlg, Pointer<MSG> lpMsg);

// BOOL IsWindowVisible(
//   HWND hWnd
// );
typedef isWindowVisibleNative = Int32 Function(IntPtr hWnd);
typedef isWindowVisibleDart = int Function(int hWnd);

// BOOL KillTimer(
//   HWND     hWnd,
//   UINT_PTR uIDEvent
// );
typedef killTimerNative = Int32 Function(IntPtr hWnd, Uint32 uIDEvent);
typedef killTimerDart = int Function(int hWnd, int uIDEvent);

// BOOL LineTo(
//   HDC hdc,
//   int x,
//   int y
// );
typedef lineToNative = Int32 Function(IntPtr hdc, Int32 x, Int32 y);
typedef lineToDart = int Function(int hdc, int x, int y);

// HCURSOR LoadCursorW(
//   HINSTANCE hInstance,
//   LPCWSTR   lpCursorName
// );
typedef loadCursorNative = IntPtr Function(
    IntPtr hInstance, Pointer<Utf16> lpCursorName);
typedef loadCursorDart = int Function(
    int hInstance, Pointer<Utf16> lpCursorName);

// HICON LoadIconW(
//   HINSTANCE hInstance,
//   LPCWSTR   lpIconName
// );
typedef loadIconNative = IntPtr Function(
    IntPtr hInstance, Pointer<Utf16> lpIconName);
typedef loadIconDart = int Function(int hInstance, Pointer<Utf16> lpIconName);

// int MessageBoxW(
//   HWND    hWnd,
//   LPCWSTR lpText,
//   LPCWSTR lpCaption,
//   UINT    uType
// );
typedef messageBoxNative = Int32 Function(
    IntPtr hWnd, Pointer<Utf16> lpText, Pointer<Utf16> lpCaption, Int32 uType);
typedef messageBoxDart = int Function(
    int hWnd, Pointer<Utf16> lpText, Pointer<Utf16> lpCaption, int uType);

// BOOL MoveWindow(
//   HWND hWnd,
//   int  X,
//   int  Y,
//   int  nWidth,
//   int  nHeight,
//   BOOL bRepaint
// );
typedef moveWindowNative = Int32 Function(
    IntPtr hWnd, Int32 X, Int32 Y, Int32 nWidth, Int32 nHeight, Int32 bRepaint);
typedef moveWindowDart = int Function(
    int hWnd, int X, int Y, int nWidth, int nHeight, int bRepaint);

// BOOL MoveToEx(
//   HDC     hdc,
//   int     x,
//   int     y,
//   LPPOINT lppt
// );
typedef moveToExNative = Int32 Function(
    IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt);
typedef moveToExDart = int Function(int hdc, int x, int y, Pointer<POINT> lppt);

// DWORD QueryDosDeviceW(
//   LPCWSTR lpDeviceName,
//   LPWSTR  lpTargetPath,
//   DWORD   ucchMax
// );
typedef queryDosDeviceNative = Int32 Function(
    Pointer<Utf16> lpDeviceName, Pointer<Utf16> lpTargetPath, Int32 ucchMax);
typedef queryDosDeviceDart = int Function(
    Pointer<Utf16> lpDeviceName, Pointer<Utf16> lpTargetPath, int ucchMax);
// BOOL PeekMessageW(
//   LPMSG lpMsg,
//   HWND  hWnd,
//   UINT  wMsgFilterMin,
//   UINT  wMsgFilterMax,
//   UINT  wRemoveMsg
// );
typedef peekMessageNative = Int32 Function(Pointer<MSG> lpMsg, IntPtr hWnd,
    Uint32 wMsgFilterMin, Uint32 wMsgFilterMax, Uint32 wRemoveMsg);
typedef peekMessageDart = int Function(Pointer<MSG> lpMsg, int hWnd,
    int wMsgFilterMin, int wMsgFilterMax, int wRemoveMsg);

// ATOM RegisterClassW(
//   const WNDCLASSW *lpWndClass
// );
typedef registerClassNative = Int16 Function(Pointer<WNDCLASS> lpWndClass);
typedef registerClassDart = int Function(Pointer<WNDCLASS> lpWndClass);

// UINT RegisterWindowMessageW(
//   LPCWSTR lpString
// );
typedef registerWindowMessageNative = Uint32 Function(Pointer<Utf16> lpString);
typedef registerWindowMessageDart = int Function(Pointer<Utf16> lpString);

// int ReleaseDC(
//   HWND hWnd,
//   HDC  hDC
// );
typedef releaseDCNative = Int32 Function(IntPtr hWnd, IntPtr hDC);
typedef releaseDCDart = int Function(int hWnd, int hDC);

// HWND ReplaceTextW(
//   LPFINDREPLACEW Arg1
// );
typedef replaceTextNative = IntPtr Function(Pointer<FINDREPLACE> Arg1);
typedef replaceTextDart = int Function(Pointer<FINDREPLACE> Arg1);

// int SaveDC(
//   HDC hdc
// );
typedef saveDCNative = Int32 Function(IntPtr hdc);
typedef saveDCDart = int Function(int hdc);

// BOOL ScrollWindow(
//   HWND       hWnd,
//   int        XAmount,
//   int        YAmount,
//   const RECT *lpRect,
//   const RECT *lpClipRect
// );
typedef scrollWindowNative = Int32 Function(IntPtr hWnd, Int32 XAmount,
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

// LRESULT SendMessage(
//   HWND   hWnd,
//   UINT   Msg,
//   WPARAM wParam,
//   LPARAM lParam
// );
typedef sendMessageNative = IntPtr Function(
    IntPtr hWnd, Uint32 Msg, IntPtr wParam, IntPtr lParam);
typedef sendMessageDart = int Function(
    int hWnd, int Msg, int wParam, int lParam);

// COLORREF SetBkColor(
//   HDC      hdc,
//   COLORREF color
// );
typedef setBkColorNative = Int32 Function(IntPtr hdc, Int32 color);
typedef setBkColorDart = int Function(int hdc, int color);

// int SetBkMode(
//   HDC hdc,
//   int mode
// );
typedef setBkModeNative = Int32 Function(IntPtr hdc, Int32 mode);
typedef setBkModeDart = int Function(int hdc, int mode);

// BOOL WINAPI SetConsoleCursorInfo(
//   _In_       HANDLE              hConsoleOutput,
//   _In_ const CONSOLE_CURSOR_INFO *lpConsoleCursorInfo
// );
typedef setConsoleCursorInfoNative = Int32 Function(
    IntPtr hConsoleOutput, Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo);
typedef setConsoleCursorInfoDart = int Function(
    int hConsoleOutput, Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo);

// BOOL WINAPI SetConsoleCursorPosition(
//   _In_ HANDLE hConsoleOutput,
//   _In_ COORD  dwCursorPosition
// );
typedef setConsoleCursorPositionNative = Int32 Function(
    IntPtr hConsoleOutput, Int32 dwCursorPosition);
typedef setConsoleCursorPositionDart = int Function(
    int hConsoleOutput, int dwCursorPosition);

// BOOL WINAPI SetConsoleMode(
//   _In_ HANDLE hConsoleHandle,
//   _In_ DWORD  dwMode
// );
typedef setConsoleModeNative = Int32 Function(
    IntPtr hConsoleHandle, Int32 dwMode);
typedef setConsoleModeDart = int Function(int hConsoleHandle, int dwMode);

// HWND SetFocus(
//   HWND hWnd
// );
typedef setFocusNative = IntPtr Function(IntPtr hWnd);
typedef setFocusDart = int Function(int hWnd);

// int SetMapMode(
//   HDC hdc,
//   int iMode
// );
typedef setMapModeNative = Int32 Function(IntPtr hdc, Int32 iMode);
typedef setMapModeDart = int Function(int hdc, int iMode);

// int SetScrollInfo(
//   HWND          hwnd,
//   int           nBar,
//   LPCSCROLLINFO lpsi,
//   BOOL          redraw
// );
typedef setScrollInfoNative = Int32 Function(
    IntPtr hwnd, Int32 nBar, Pointer<SCROLLINFO> lpsi, Int32 redraw);
typedef setScrollInfoDart = int Function(
    int hwnd, int nBar, Pointer<SCROLLINFO> lpsi, int redraw);

// COLORREF SetTextColor(
//   HDC      hdc,
//   COLORREF color
// );
typedef setTextColorNative = Int32 Function(IntPtr hdc, Int32 color);
typedef setTextColorDart = int Function(int hdc, int color);

// UINT_PTR SetTimer(
//   HWND      hWnd,
//   UINT_PTR  nIDEvent,
//   UINT      uElapse,
//   TIMERPROC lpTimerFunc
// );
typedef setTimerNative = Uint32 Function(IntPtr hWnd, Uint32 nIDEvent,
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
    IntPtr hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz);
typedef setViewportExtExDart = int Function(
    int hdc, int x, int y, Pointer<SIZE> lpsz);

// BOOL SetViewportOrgEx(
//   HDC     hdc,
//   int     x,
//   int     y,
//   LPPOINT lppt
// );
typedef setViewportOrgExNative = Int32 Function(
    IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt);
typedef setViewportOrgExDart = int Function(
    int hdc, int x, int y, Pointer<POINT> lppt);

// BOOL SetWindowExtEx(
//   HDC    hdc,
//   int    x,
//   int    y,
//   LPSIZE lpsz
// );
typedef setWindowExtExNative = Int32 Function(
    IntPtr hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz);
typedef setWindowExtExDart = int Function(
    int hdc, int x, int y, Pointer<SIZE> lpsz);

// BOOL SetWindowTextW(
//   HWND    hWnd,
//   LPCWSTR lpString
// );
typedef setWindowTextNative = Int32 Function(
    IntPtr hWnd, Pointer<Utf16> lpString);
typedef setWindowTextDart = int Function(int hWnd, Pointer<Utf16> lpString);

// SHFOLDERAPI SHGetFolderPathW(
//   HWND   hwnd,
//   int    csidl,
//   HANDLE hToken,
//   DWORD  dwFlags,
//   LPWSTR pszPath
// );
typedef shGetFolderPathNative = Int32 Function(IntPtr hwnd, Int32 csidl,
    IntPtr hToken, Int32 dwFlags, Pointer<Uint16> pszPath);
typedef shGetFolderPathDart = int Function(
    int hwnd, int csidl, int hToken, int dwFlags, Pointer<Uint16> pszPath);

// HRESULT SHGetKnownFolderPath(
//   REFKNOWNFOLDERID rfid,
//   DWORD            dwFlags,
//   HANDLE           hToken,
//   PWSTR            *ppszPath
// );
typedef shGetKnownFolderPathNative = Int32 Function(
    Pointer<GUID> rfid, Int32 dwFlags, IntPtr hToken, Pointer<IntPtr> ppszPath);
typedef shGetKnownFolderPathDart = int Function(
    Pointer<GUID> rfid, int dwFlags, int hToken, Pointer<IntPtr> ppszPath);

// HINSTANCE ShellExecuteW(
//   HWND    hwnd,
//   LPCWSTR lpOperation,
//   LPCWSTR lpFile,
//   LPCWSTR lpParameters,
//   LPCWSTR lpDirectory,
//   INT     nShowCmd
// );
typedef shellExecuteNative = IntPtr Function(
    IntPtr hwnd,
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
typedef showWindowNative = Int32 Function(IntPtr hWnd, Int32 nCmdShow);
typedef showWindowDart = int Function(int hWnd, int nCmdShow);

// void Sleep(
//   DWORD dwMilliseconds
// );
typedef sleepNative = Void Function(Uint32 dwMilliseconds);
typedef sleepDart = void Function(int dwMilliseconds);
// int StretchDIBits(
//   HDC              hdc,
//   int              xDest,
//   int              yDest,
//   int              DestWidth,
//   int              DestHeight,
//   int              xSrc,
//   int              ySrc,
//   int              SrcWidth,
//   int              SrcHeight,
//   const VOID       *lpBits,
//   const BITMAPINFO *lpbmi,
//   UINT             iUsage,
//   DWORD            rop
// );
typedef stretchDIBitsNative = Int32 Function(
    IntPtr hdc,
    Int32 xDest,
    Int32 yDest,
    Int32 DestWidth,
    Int32 DestHeight,
    Int32 xSrc,
    Int32 ySrc,
    Int32 SrcWidth,
    Int32 SrcHeight,
    Pointer<Void> lpBits,
    Pointer<BITMAPINFO> lpbmi,
    Uint32 iUsage,
    Int32 rop);
typedef stretchDIBitsDart = int Function(
    int hdc,
    int xDest,
    int yDest,
    int DestWidth,
    int DestHeight,
    int xSrc,
    int ySrc,
    int SrcWidth,
    int SrcHeight,
    Pointer<Void> lpBits,
    Pointer<BITMAPINFO> lpbmi,
    int iUsage,
    int rop);

// BOOL TextOutW(
//   HDC     hdc,
//   int     x,
//   int     y,
//   LPCWSTR lpString,
//   int     c
// );
typedef textOutNative = Int32 Function(
    IntPtr hdc, Int32 x, Int32 y, Pointer<Utf16> lpString, Int32 c);
typedef textOutDart = int Function(
    int hdc, int x, int y, Pointer<Utf16> lpString, int c);

// int TranslateAcceleratorW(
//   HWND   hWnd,
//   HACCEL hAccTable,
//   LPMSG  lpMsg
// );
typedef translateAcceleratorNative = Int32 Function(
    IntPtr hWnd, IntPtr hAccTable, Pointer<MSG> lpMsg);
typedef translateAcceleratorDart = int Function(
    int hWnd, int hAccTable, Pointer<MSG> lpMsg);

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
typedef updateWindowNative = Int32 Function(IntPtr hWnd);
typedef updateWindowDart = int Function(int hWnd);

// LPVOID VirtualAlloc(
//   LPVOID lpAddress,
//   SIZE_T dwSize,
//   DWORD  flAllocationType,
//   DWORD  flProtect
// );
typedef virtualAllocNative = Pointer<Void> Function(Pointer<Void> lpAddress,
    Int64 dwSize, Int32 flAllocationType, Int32 flProtect);
typedef virtualAllocDart = Pointer<Void> Function(
    Pointer<Void> lpAddress, int dwSize, int flAllocationType, int flProtect);

// BOOL VirtualFree(
//   LPVOID lpAddress,
//   SIZE_T dwSize,
//   DWORD  dwFreeType
// );
typedef virtualFreeNative = Int32 Function(
    Pointer<Void> lpAddress, Int64 dwSize, Int32 dwFreeType);
typedef virtualFreeDart = int Function(
    Pointer<Void> lpAddress, int dwSize, int dwFreeType);
