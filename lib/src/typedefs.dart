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
    IntPtr hMenu, Uint32 uFlags, IntPtr uIDNewItem, Pointer<Utf16> lpNewItem);
typedef appendMenuDart = int Function(
    int hMenu, int uFlags, int uIDNewItem, Pointer<Utf16> lpNewItem);

// BOOL Beep(
//   DWORD dwFreq,
//   DWORD dwDuration
// );
typedef beepNative = Int32 Function(Uint32 dwFreq, Uint32 dwDuration);
typedef beepDart = int Function(int dwFreq, int dwDuration);

// HDC BeginPaint(
//   HWND          hWnd,
//   LPPAINTSTRUCT lpPaint
// );
typedef beginPaintNative = IntPtr Function(
    IntPtr hWnd, Pointer<PAINTSTRUCT> lpPaint);
typedef beginPaintDart = int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint);

// BOOL WINAPI ChooseColor(
//   _Inout_ LPCHOOSECOLOR lpcc
// );
typedef chooseColorNative = Int32 Function(Pointer<CHOOSECOLOR> lpcc);
typedef chooseColorDart = int Function(Pointer<CHOOSECOLOR> lpcc);

// BOOL WINAPI ChooseFont(
//   _Inout_ LPCHOOSEFONT lpcf
// );
typedef chooseFontNative = Int32 Function(Pointer<CHOOSEFONT> lpcf);
typedef chooseFontDart = int Function(Pointer<CHOOSEFONT> lpcf);

// BOOL CloseHandle(
//   HANDLE hObject
// );
typedef closeHandleNative = Int32 Function(IntPtr hObject);
typedef closeHandleDart = int Function(int hObject);

// HRESULT CLSIDFromString(
//   LPCOLESTR lpsz,
//   LPCLSID   pclsid
// );
typedef clsidFromStringNative = Int32 Function(
    Pointer<Utf16> lpsz, Pointer<GUID> pclsid);
typedef clsidFromStringDart = int Function(
    Pointer<Utf16> lpsz, Pointer<GUID> pclsid);

// HRESULT CoCreateGuid(
//   GUID *pguid
// );
typedef coCreateGuidNative = Int32 Function(Pointer<GUID> pguid);
typedef coCreateGuidDart = int Function(Pointer<GUID> pguid);

// HRESULT CoCreateInstance(
//   REFCLSID  rclsid,
//   LPUNKNOWN pUnkOuter,
//   DWORD     dwClsContext,
//   REFIID    riid,
//   LPVOID    *ppv
// );
typedef coCreateInstanceNative = Int32 Function(
    Pointer<GUID> rclsid,
    Pointer<IntPtr> pUnkOuter,
    Uint32 dwClsContext,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppv);
typedef coCreateInstanceDart = int Function(
    Pointer<GUID> rclsid,
    Pointer<IntPtr> pUnkOuter,
    int dwClsContext,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppv);

// HRESULT CoInitializeEx(
//   LPVOID pvReserved,
//   DWORD  dwCoInit
// );
typedef coInitializeExNative = Int32 Function(
    Pointer<Void> pvReserved, Uint32 dwCoInit);
typedef coInitializeExDart = int Function(
    Pointer<Void> pvReserved, int dwCoInit);

// HRESULT CoInitializeSecurity(
//   PSECURITY_DESCRIPTOR        pSecDesc,
//   LONG                        cAuthSvc,
//   SOLE_AUTHENTICATION_SERVICE *asAuthSvc,
//   void                        *pReserved1,
//   DWORD                       dwAuthnLevel,
//   DWORD                       dwImpLevel,
//   void                        *pAuthList,
//   DWORD                       dwCapabilities,
//   void                        *pReserved3
// );
typedef coInitializeSecurityNative = Int32 Function(
    Pointer<SECURITY_DESCRIPTOR> pSecDesc,
    Int32 cAuthSvc,
    Pointer<SOLE_AUTHENTICATION_SERVICE> asAuthSvc,
    Pointer<Void> pReserved1,
    Uint32 dwAuthnLevel,
    Uint32 dwImpLevel,
    Pointer<Void> pAuthList,
    Uint32 dwCapabilities,
    Pointer<Void> pReserved3);
typedef coInitializeSecurityDart = int Function(
    Pointer<SECURITY_DESCRIPTOR> pSecDesc,
    int cAuthSvc,
    Pointer<SOLE_AUTHENTICATION_SERVICE> asAuthSvc,
    Pointer<Void> pReserved1,
    int dwAuthnLevel,
    int dwImpLevel,
    Pointer<Void> pAuthList,
    int dwCapabilities,
    Pointer<Void> pReserved3);

// HRESULT CoSetProxyBlanket(
//   IUnknown                 *pProxy,
//   DWORD                    dwAuthnSvc,
//   DWORD                    dwAuthzSvc,
//   OLECHAR                  *pServerPrincName,
//   DWORD                    dwAuthnLevel,
//   DWORD                    dwImpLevel,
//   RPC_AUTH_IDENTITY_HANDLE pAuthInfo,
//   DWORD                    dwCapabilities
// );
typedef coSetProxyBlanketNative = Int32 Function(
    Pointer pProxy,
    Uint32 dwAuthnSvc,
    Uint32 dwAuthzSvc,
    Pointer<Utf16> pServerPrincName,
    Uint32 dwAuthnLevel,
    Uint32 dwImpLevel,
    Pointer<Void> pAuthInfo,
    Uint32 dwCapabilities);
typedef coSetProxyBlanketDart = int Function(
    Pointer pProxy,
    int dwAuthnSvc,
    int dwAuthzSvc,
    Pointer<Utf16> pServerPrincName,
    int dwAuthnLevel,
    int dwImpLevel,
    Pointer<Void> pAuthInfo,
    int dwCapabilities);

// void CoTaskMemFree(
//   _Frees_ptr_opt_ LPVOID pv
// );
typedef coTaskMemFreeNative = Void Function(Pointer<Void> pv);
typedef coTaskMemFreeDart = void Function(Pointer<Void> pv);

// void CoUninitialize();
typedef coUninitializeNative = Void Function();
typedef coUninitializeDart = void Function();

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
    Uint32 dwDesiredAccess,
    Uint32 dwShareMode,
    Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
    Uint32 dwCreationDisposition,
    Uint32 dwFlagsAndAttributes,
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
    Uint32 dwExStyle,
    Pointer<Utf16> lpClassName,
    Pointer<Utf16> lpWindowName,
    Uint32 dwStyle,
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
    IntPtr hWnd, Uint32 Msg, IntPtr wParam, IntPtr lParam);
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
    Int32 cchText, Pointer<RECT> lprc, Uint32 format);
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

// BOOL EnumProcesses(
//   DWORD   *lpidProcess,
//   DWORD   cb,
//   LPDWORD lpcbNeeded
// );
typedef enumProcessesNative = Int32 Function(
    Pointer<Uint32> lpidProcess, Uint32 cb, Pointer<Uint32> lpcbNeeded);
typedef enumProcessesDart = int Function(
    Pointer<Uint32> lpidProcess, int cb, Pointer<Uint32> lpcbNeeded);

// BOOL EnumProcessModules(
//   HANDLE  hProcess,
//   HMODULE *lphModule,
//   DWORD   cb,
//   LPDWORD lpcbNeeded
// );
typedef enumProcessModulesNative = Int32 Function(IntPtr hProcess,
    Pointer<IntPtr> lphModule, Uint32 cb, Pointer<Uint32> lpcbNeeded);
typedef enumProcessModulesDart = int Function(int hProcess,
    Pointer<IntPtr> lphModule, int cb, Pointer<Uint32> lpcbNeeded);

// BOOL EnumWindows(
//   WNDENUMPROC lpEnumFunc,
//   LPARAM      lParam
// );
typedef enumWindowsNative = Int32 Function(
    Pointer<NativeFunction> lpEnumFunc, IntPtr lParam);
typedef enumWindowsDart = int Function(
    Pointer<NativeFunction> lpEnumFunc, int lParam);

// BOOL WINAPI FillConsoleOutputCharacter(
//   _In_  HANDLE  hConsoleOutput,
//   _In_  TCHAR   cCharacter,
//   _In_  DWORD   nLength,
//   _In_  COORD   dwWriteCoord,
//   _Out_ LPDWORD lpNumberOfCharsWritten
// );
typedef fillConsoleOutputCharacterNative = Int32 Function(
    IntPtr hConsoleOutput,
    Uint8 cCharacter,
    Uint32 nLength,
    Int32 dwWriteCoord,
    Pointer<Uint32> lpNumberOfCharsWritten);
typedef fillConsoleOutputCharacterDart = int Function(
    int hConsoleOutput,
    int cCharacter,
    int nLength,
    int dwWriteCoord,
    Pointer<Uint32> lpNumberOfCharsWritten);

// BOOL WINAPI FillConsoleOutputAttribute(
//   _In_  HANDLE  hConsoleOutput,
//   _In_  WORD    wAttribute,
//   _In_  DWORD   nLength,
//   _In_  COORD   dwWriteCoord,
//   _Out_ LPDWORD lpNumberOfAttrsWritten
// );
typedef fillConsoleOutputAttributeNative = Int32 Function(
    IntPtr hConsoleOutput,
    Uint16 wAttribute,
    Uint32 nLength,
    Int32 dwWriteCoord,
    Pointer<Uint32> lpNumberOfAttrsWritten);
typedef fillConsoleOutputAttributeDart = int Function(
    int hConsoleOutput,
    int cCharacter,
    int nLength,
    int dwWriteCoord,
    Pointer<Uint32> lpNumberOfAttrsWritten);

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
    Pointer<Utf16> lpszVolumeName, Uint32 cchBufferLength);
typedef findFirstVolumeDart = int Function(
    Pointer<Utf16> lpszVolumeName, int cchBufferLength);

// BOOL FindNextVolumeW(
//   HANDLE hFindVolume,
//   LPWSTR lpszVolumeName,
//   DWORD  cchBufferLength
// );
typedef findNextVolumeNative = Int32 Function(
    IntPtr hFindVolume, Pointer<Utf16> lpszVolumeName, Uint32 cchBufferLength);
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

// DWORD FormatMessageW(
//   DWORD   dwFlags,
//   LPCVOID lpSource,
//   DWORD   dwMessageId,
//   DWORD   dwLanguageId,
//   LPWSTR  lpBuffer,
//   DWORD   nSize,
//   va_list *Arguments
// );
typedef formatMessageNative = Int32 Function(
    Uint32 dwFlags,
    Pointer<Void> lpSource,
    Uint32 dwMessageId,
    Uint32 dwLanguageId,
    Pointer<Utf16> lpBuffer,
    Uint32 nSize,
    Pointer arguments);
typedef formatMessageDart = int Function(
    int dwFlags,
    Pointer<Void> lpSource,
    int dwMessageId,
    int dwLanguageId,
    Pointer<Utf16> lpBuffer,
    int nSize,
    Pointer arguments);

// BOOL FreeLibrary(
//   HMODULE hLibModule
// );
typedef freeLibraryNative = Int32 Function(IntPtr hLibModule);
typedef freeLibraryDart = int Function(int hLibModule);

// BOOL GetClientRect(
//   HWND   hWnd,
//   LPRECT lpRect
// );
typedef getClientRectNative = Int32 Function(IntPtr hwnd, Pointer<RECT> lpRect);
typedef getClientRectDart = int Function(int hwnd, Pointer<RECT> lpRect);

// BOOL WINAPI GetConsoleCursorInfo(
//   _In_  HANDLE               hConsoleOutput,
//   _Out_ PCONSOLE_CURSOR_INFO lpConsoleCursorInfo
// );
typedef getConsoleCursorInfoNative = Int32 Function(
    IntPtr hConsoleOutput, Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo);
typedef getConsoleCursorInfoDart = int Function(
    int hConsoleOutput, Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo);

// BOOL WINAPI GetConsoleMode(
//   _In_  HANDLE  hConsoleHandle,
//   _Out_ LPDWORD lpMode
// );
typedef getConsoleModeNative = Int32 Function(
    IntPtr hConsoleHandle, Pointer<Uint32> lpMode);
typedef getConsoleModeDart = int Function(
    int hConsoleHandle, Pointer<Uint32> lpMode);

// BOOL WINAPI GetConsoleScreenBufferInfo(
//   _In_  HANDLE                      hConsoleOutput,
//   _Out_ PCONSOLE_SCREEN_BUFFER_INFO lpConsoleScreenBufferInfo
// );
typedef getConsoleScreenBufferInfoNative = Int32 Function(IntPtr hConsoleOutput,
    Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo);
typedef getConsoleScreenBufferInfoDart = int Function(int hConsoleOutput,
    Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo);

// BOOL WINAPI GetConsoleSelectionInfo(
//   _Out_ PCONSOLE_SELECTION_INFO lpConsoleSelectionInfo
// );
typedef getConsoleSelectionInfoNative = Int32 Function(
    Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo);
typedef getConsoleSelectionInfoDart = int Function(
    Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo);

// DWORD WINAPI GetConsoleTitle(
//   _Out_ LPTSTR lpConsoleTitle,
//   _In_  DWORD  nSize
// );
typedef getConsoleTitleNative = Uint32 Function(
    Pointer<Utf16> lpConsoleTitle, Uint32 nSize);
typedef getConsoleTitleDart = int Function(
    Pointer<Utf16> lpConsoleTitle, int nSize);

// HWND WINAPI GetConsoleWindow(void);
typedef getConsoleWindowNative = IntPtr Function();
typedef getConsoleWindowDart = int Function();

// HDC GetDC(
//   HWND hWnd
// );
typedef getDCNative = IntPtr Function(IntPtr hwnd);
typedef getDCDart = int Function(int hwnd);

// _Post_equals_last_error_ DWORD GetLastError();
typedef getLastErrorNative = Uint32 Function();
typedef getLastErrorDart = int Function();

// BOOL GetMessage(
//   LPMSG lpMsg,
//   HWND  hWnd,
//   UINT  wMsgFilterMin,
//   UINT  wMsgFilterMax
// );
typedef getMessageNative = Int32 Function(Pointer<MSG> lpMsg, IntPtr hWnd,
    Uint32 wMsgFilterMin, Uint32 wMsgFilterMax);
typedef getMessageDart = int Function(
    Pointer<MSG> lpMsg, int hWnd, int wMsgFilterMin, int wMsgFilterMax);

// DWORD GetModuleBaseNameW(
//   HANDLE  hProcess,
//   HMODULE hModule,
//   LPWSTR  lpBaseName,
//   DWORD   nSize
// );
typedef getModuleBaseNameNative = Uint32 Function(
    IntPtr hProcess, IntPtr hModule, Pointer<Utf16> lpBaseName, Uint32 nSize);
typedef getModuleBaseNameDart = int Function(
    int hProcess, int hModule, Pointer<Utf16> lpBaseName, int nSize);

// DWORD GetModuleFileNameExW(
//   HANDLE  hProcess,
//   HMODULE hModule,
//   LPWSTR  lpFilename,
//   DWORD   nSize
// );
typedef getModuleFileNameExNative = Uint32 Function(
    IntPtr hProcess, IntPtr hModule, Pointer<Utf16> lpFilename, Uint32 nSize);
typedef getModuleFileNameExDart = int Function(
    int hProcess, int hModule, Pointer<Utf16> lpFilename, int nSize);

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

// FARPROC GetProcAddress(
//   HMODULE hModule,
//   LPCSTR  lpProcName
// );
typedef getProcAddressNative = IntPtr Function(
    IntPtr hModule, Pointer<Uint8> lpProcName);
typedef getProcAddressDart = int Function(
    int hModule, Pointer<Uint8> lpProcName);

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
typedef getStdHandleNative = IntPtr Function(Uint32 nStdHandle);
typedef getStdHandleDart = int Function(int nStdHandle);

// HGDIOBJ GetStockObject(
//   int i
// );
typedef getStockObjectNative = IntPtr Function(Int32 i);
typedef getStockObjectDart = int Function(int i);

// void GetSystemInfo(
//   LPSYSTEM_INFO lpSystemInfo
// );
typedef getSystemInfoNative = Void Function(Pointer<SYSTEM_INFO> lpSystemInfo);
typedef getSystemInfoDart = void Function(Pointer<SYSTEM_INFO> lpSystemInfo);

// DWORD GetTempPathW(
//   DWORD  nBufferLength,
//   LPWSTR lpBuffer
// );
typedef getTempPathNative = Uint32 Function(
    Uint32 nBufferLength, Pointer<Utf16> lpBuffer);
typedef getTempPathDart = int Function(
    int nBufferLength, Pointer<Utf16> lpBuffer);

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
    Uint32 cchBufferLength,
    Pointer<Uint32> lpcchReturnLength);
typedef getVolumePathNamesForVolumeNameDart = int Function(
    Pointer<Utf16> lpszVolumeName,
    Pointer<Utf16> lpszVolumePathNames,
    int cchBufferLength,
    Pointer<Uint32> lpcchReturnLength);

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

// HRESULT IIDFromString(
//   LPCOLESTR lpsz,
//   LPIID     lpiid
// );
typedef iidFromStringNative = Int32 Function(
    Pointer<Utf16> lpsz, Pointer<GUID> lpiid);
typedef iidFromStringDart = int Function(
    Pointer<Utf16> lpsz, Pointer<GUID> lpiid);

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
typedef killTimerNative = Int32 Function(IntPtr hWnd, IntPtr uIDEvent);
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

// HMODULE LoadLibraryW(
//   LPCWSTR lpLibFileName
// );
typedef loadLibraryNative = IntPtr Function(Pointer<Utf16> lpLibFileName);
typedef loadLibraryDart = int Function(Pointer<Utf16> lpLibFileName);

// int MessageBoxW(
//   HWND    hWnd,
//   LPCWSTR lpText,
//   LPCWSTR lpCaption,
//   UINT    uType
// );
typedef messageBoxNative = Int32 Function(
    IntPtr hWnd, Pointer<Utf16> lpText, Pointer<Utf16> lpCaption, Uint32 uType);
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

// HANDLE OpenProcess(
//   DWORD dwDesiredAccess,
//   BOOL  bInheritHandle,
//   DWORD dwProcessId
// );
typedef openProcessNative = Int32 Function(
    Uint32 dwDesiredAccess, Int32 bInheritHandle, Uint32 dwProcessId);
typedef openProcessDart = int Function(
    int dwDesiredAccess, int bInheritHandle, int dwProcessId);

// DWORD QueryDosDeviceW(
//   LPCWSTR lpDeviceName,
//   LPWSTR  lpTargetPath,
//   DWORD   ucchMax
// );
typedef queryDosDeviceNative = Uint32 Function(
    Pointer<Utf16> lpDeviceName, Pointer<Utf16> lpTargetPath, Uint32 ucchMax);
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

// BOOL ReadFile(
//   HANDLE       hFile,
//   LPVOID       lpBuffer,
//   DWORD        nNumberOfBytesToRead,
//   LPDWORD      lpNumberOfBytesRead,
//   LPOVERLAPPED lpOverlapped
// );
typedef readFileNative = Int32 Function(
    IntPtr hFile,
    Pointer lpBuffer,
    Uint32 nNumberOfBytesToRead,
    Pointer<Uint32> lpNumberOfBytesRead,
    Pointer lpOverlapped);
typedef readFileDart = int Function(
    int hFile,
    Pointer lpBuffer,
    int nNumberOfBytesToRead,
    Pointer<Uint32> lpNumberOfBytesRead,
    Pointer lpOverlapped);

// BOOL ReadProcessMemory(
//   HANDLE  hProcess,
//   LPCVOID lpBaseAddress,
//   LPVOID  lpBuffer,
//   SIZE_T  nSize,
//   SIZE_T  *lpNumberOfBytesRead
// );
typedef readProcessMemoryNative = Int32 Function(
    IntPtr hProcess,
    Pointer<Void> lpBaseAddress,
    Pointer<Void> lpBuffer,
    IntPtr nSize,
    Pointer<IntPtr> lpNumberOfBytesRead);
typedef readProcessMemoryDart = int Function(
    int hProcess,
    Pointer<Void> lpBaseAddress,
    Pointer<Void> lpBuffer,
    int nSize,
    Pointer<IntPtr> lpNumberOfBytesRead);

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

// BOOL WINAPI ScrollConsoleScreenBuffer(
//   _In_           HANDLE     hConsoleOutput,
//   _In_     const SMALL_RECT *lpScrollRectangle,
//   _In_opt_ const SMALL_RECT *lpClipRectangle,
//   _In_           COORD      dwDestinationOrigin,
//   _In_     const CHAR_INFO  *lpFill
// );
typedef scrollConsoleScreenBufferNative = Int32 Function(
    IntPtr hConsoleOutput,
    Pointer<SMALL_RECT> lpScrollRectangle,
    Pointer<SMALL_RECT> lpClipRectangle,
    Int16 dwDestinationOriginX,
    Int16 dwDestinationOriginY,
    Pointer<CHAR_INFO> lpFill);
typedef scrollConsoleScreenBufferDart = int Function(
    int hConsoleOutput,
    Pointer<SMALL_RECT> lpScrollRectangle,
    Pointer<SMALL_RECT> lpClipRectangle,
    int dwDestinationOriginX,
    int dwDestinationOriginY,
    Pointer<CHAR_INFO> lpFill);

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
//   _In_       HANDLE              hConsoleOutput,
//   _In_ const CONSOLE_CURSOR_INFO *lpConsoleCursorInfo
// );
typedef setConsoleCursorInfoNative = Int32 Function(
    IntPtr hConsoleOutput, Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo);
typedef setConsoleCursorInfoDart = int Function(
    int hConsoleOutput, Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo);

// BOOL WINAPI SetConsoleCursorPosition(
//   _In_ HANDLE hConsoleOutput,
//   _In_ COORD  dwCursorPosition
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
    IntPtr hConsoleHandle, Uint32 dwMode);
typedef setConsoleModeDart = int Function(int hConsoleHandle, int dwMode);

// BOOL WINAPI SetConsoleTextAttribute(
//   _In_ HANDLE hConsoleOutput,
//   _In_ WORD   wAttributes
// );
typedef setConsoleTextAttributeNative = Int32 Function(
    IntPtr hConsoleOutput, Uint16 wAttributes);
typedef setConsoleTextAttributeDart = int Function(
    int hConsoleOutput, int wAttributes);

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
typedef setTimerNative = IntPtr Function(IntPtr hWnd, IntPtr nIDEvent,
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
    IntPtr hToken, Uint32 dwFlags, Pointer<Utf16> pszPath);
typedef shGetFolderPathDart = int Function(
    int hwnd, int csidl, int hToken, int dwFlags, Pointer<Utf16> pszPath);

// HRESULT SHGetKnownFolderPath(
//   REFKNOWNFOLDERID rfid,
//   DWORD            dwFlags,
//   HANDLE           hToken,
//   PWSTR            *ppszPath
// );
typedef shGetKnownFolderPathNative = Int32 Function(Pointer<GUID> rfid,
    Uint32 dwFlags, IntPtr hToken, Pointer<IntPtr> ppszPath);
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
    Uint32 rop);
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

// HRESULT TaskDialog(
//   HWND                           hwndOwner,
//   HINSTANCE                      hInstance,
//   PCWSTR                         pszWindowTitle,
//   PCWSTR                         pszMainInstruction,
//   PCWSTR                         pszContent,
//   TASKDIALOG_COMMON_BUTTON_FLAGS dwCommonButtons,
//   PCWSTR                         pszIcon,
//   int                            *pnButton
// );
typedef taskDialogNative = Int32 Function(
    Int32 hwndOwner,
    Int32 hInstance,
    Pointer<Utf16> pszWindowTitle,
    Pointer<Utf16> pszMainInstruction,
    Pointer<Utf16> pszContent,
    Int32 dwCommonButtons,
    Pointer<Utf16> pszIcon,
    Pointer<Int32> pnButton);
typedef taskDialogDart = int Function(
    int hwndOwner,
    int hInstance,
    Pointer<Utf16> pszWindowTitle,
    Pointer<Utf16> pszMainInstruction,
    Pointer<Utf16> pszContent,
    int dwCommonButtons,
    Pointer<Utf16> pszIcon,
    Pointer<Int32> pnButton);

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

// HRESULT VariantClear(
//   VARIANTARG *pvarg
// );
typedef variantClearNative = Int32 Function(Pointer pvarg);
typedef variantClearDart = int Function(Pointer pvarg);

// LPVOID VirtualAlloc(
//   LPVOID lpAddress,
//   SIZE_T dwSize,
//   DWORD  flAllocationType,
//   DWORD  flProtect
// );
typedef virtualAllocNative = Pointer<Void> Function(Pointer<Void> lpAddress,
    IntPtr dwSize, Uint32 flAllocationType, Uint32 flProtect);
typedef virtualAllocDart = Pointer<Void> Function(
    Pointer<Void> lpAddress, int dwSize, int flAllocationType, int flProtect);

// BOOL VirtualFree(
//   LPVOID lpAddress,
//   SIZE_T dwSize,
//   DWORD  dwFreeType
// );
typedef virtualFreeNative = Int32 Function(
    Pointer<Void> lpAddress, IntPtr dwSize, Uint32 dwFreeType);
typedef virtualFreeDart = int Function(
    Pointer<Void> lpAddress, int dwSize, int dwFreeType);

// BOOL WriteFile(
//   HANDLE       hFile,
//   LPCVOID      lpBuffer,
//   DWORD        nNumberOfBytesToWrite,
//   LPDWORD      lpNumberOfBytesWritten,
//   LPOVERLAPPED lpOverlapped
// );
typedef writeFileNative = Int32 Function(
    IntPtr hFile,
    Pointer lpBuffer,
    Uint32 nNumberOfBytesToWrite,
    Pointer<Uint32> lpNumberOfBytesWritten,
    Pointer lpOverlapped);
typedef writeFileDart = int Function(
    int hFile,
    Pointer lpBuffer,
    int nNumberOfBytesToWrite,
    Pointer<Uint32> lpNumberOfBytesWritten,
    Pointer lpOverlapped);

// BOOL WriteProcessMemory(
//   HANDLE  hProcess,
//   LPVOID  lpBaseAddress,
//   LPCVOID lpBuffer,
//   SIZE_T  nSize,
//   SIZE_T  *lpNumberOfBytesWritten
// );
typedef writeProcessMemoryNative = Int32 Function(
    IntPtr hProcess,
    Pointer<Void> lpBaseAddress,
    Pointer<Void> lpBuffer,
    IntPtr nSize,
    Pointer<IntPtr> lpNumberOfBytesWritten);
typedef writeProcessMemoryDart = int Function(
    int hProcess,
    Pointer<Void> lpBaseAddress,
    Pointer<Void> lpBuffer,
    int nSize,
    Pointer<IntPtr> lpNumberOfBytesWritten);
