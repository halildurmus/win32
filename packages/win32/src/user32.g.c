// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "user32.g.h"

Win32Result ActivateKeyboardLayout_Wrapper(HKL hkl, DWORD flags) {
  HKL value_ = ActivateKeyboardLayout(hkl, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result AddClipboardFormatListener_Wrapper(HWND hwnd) {
  BOOL value_ = AddClipboardFormatListener(hwnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result AdjustWindowRect_Wrapper(RECT* lpRect, DWORD dwStyle, BOOL bMenu) {
  BOOL value_ = AdjustWindowRect(lpRect, dwStyle, bMenu);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result AdjustWindowRectEx_Wrapper(RECT* lpRect, DWORD dwStyle, BOOL bMenu, DWORD dwExStyle) {
  BOOL value_ = AdjustWindowRectEx(lpRect, dwStyle, bMenu, dwExStyle);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result AdjustWindowRectExForDpi_Wrapper(RECT* lpRect, DWORD dwStyle, BOOL bMenu, DWORD dwExStyle, unsigned long dpi) {
  BOOL value_ = AdjustWindowRectExForDpi(lpRect, dwStyle, bMenu, dwExStyle, dpi);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result AllowSetForegroundWindow_Wrapper(unsigned long dwProcessId) {
  BOOL value_ = AllowSetForegroundWindow(dwProcessId);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result AnimateWindow_Wrapper(HWND hWnd, unsigned long dwTime, DWORD dwFlags) {
  BOOL value_ = AnimateWindow(hWnd, dwTime, dwFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result AppendMenuW_Wrapper(HMENU hMenu, DWORD uFlags, unsigned long long uIDNewItem, PCWSTR lpNewItem) {
  BOOL value_ = AppendMenuW(hMenu, uFlags, uIDNewItem, lpNewItem);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ArrangeIconicWindows_Wrapper(HWND hWnd) {
  unsigned long value_ = ArrangeIconicWindows(hWnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result BeginDeferWindowPos_Wrapper(int nNumWindows) {
  HDWP value_ = BeginDeferWindowPos(nNumWindows);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result BlockInput_Wrapper(BOOL fBlockIt) {
  BOOL value_ = BlockInput(fBlockIt);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result BringWindowToTop_Wrapper(HWND hWnd) {
  BOOL value_ = BringWindowToTop(hWnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result BroadcastSystemMessageW_Wrapper(DWORD flags, DWORD* lpInfo, unsigned long msg, WPARAM wParam, LPARAM lParam) {
  int value_ = BroadcastSystemMessageW(flags, lpInfo, msg, wParam, lParam);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result BroadcastSystemMessageExW_Wrapper(DWORD flags, DWORD* lpInfo, unsigned long msg, WPARAM wParam, LPARAM lParam, BSMINFO* pbsmInfo) {
  int value_ = BroadcastSystemMessageExW(flags, lpInfo, msg, wParam, lParam, pbsmInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CalculatePopupWindowPosition_Wrapper(POINT* anchorPoint, SIZE* windowSize, unsigned long flags, RECT* excludeRect, RECT* popupWindowPosition) {
  BOOL value_ = CalculatePopupWindowPosition(anchorPoint, windowSize, flags, excludeRect, popupWindowPosition);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CascadeWindows_Wrapper(HWND hwndParent, DWORD wHow, RECT* lpRect, unsigned long cKids, HWND* lpKids) {
  unsigned short value_ = CascadeWindows(hwndParent, wHow, lpRect, cKids, lpKids);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u16 = value_}};
}

Win32Result ChangeWindowMessageFilter_Wrapper(unsigned long message, DWORD dwFlag) {
  BOOL value_ = ChangeWindowMessageFilter(message, dwFlag);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ChangeWindowMessageFilterEx_Wrapper(HWND hwnd, unsigned long message, DWORD action, CHANGEFILTERSTRUCT* pChangeFilterStruct) {
  BOOL value_ = ChangeWindowMessageFilterEx(hwnd, message, action, pChangeFilterStruct);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CheckDlgButton_Wrapper(HWND hDlg, int nIDButton, DWORD uCheck) {
  BOOL value_ = CheckDlgButton(hDlg, nIDButton, uCheck);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CheckRadioButton_Wrapper(HWND hDlg, int nIDFirstButton, int nIDLastButton, int nIDCheckButton) {
  BOOL value_ = CheckRadioButton(hDlg, nIDFirstButton, nIDLastButton, nIDCheckButton);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ClipCursor_Wrapper(RECT* lpRect) {
  BOOL value_ = ClipCursor(lpRect);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CloseClipboard_Wrapper() {
  BOOL value_ = CloseClipboard();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CloseDesktop_Wrapper(HDESK hDesktop) {
  BOOL value_ = CloseDesktop(hDesktop);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CloseGestureInfoHandle_Wrapper(HGESTUREINFO hGestureInfo) {
  BOOL value_ = CloseGestureInfoHandle(hGestureInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CloseTouchInputHandle_Wrapper(HTOUCHINPUT hTouchInput) {
  BOOL value_ = CloseTouchInputHandle(hTouchInput);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CloseWindow_Wrapper(HWND hWnd) {
  BOOL value_ = CloseWindow(hWnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CloseWindowStation_Wrapper(HWINSTA hWinSta) {
  BOOL value_ = CloseWindowStation(hWinSta);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CopyIcon_Wrapper(HICON hIcon) {
  HICON value_ = CopyIcon(hIcon);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CopyImage_Wrapper(HANDLE h, DWORD type, int cx, int cy, DWORD flags) {
  HANDLE value_ = CopyImage(h, type, cx, cy, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CountClipboardFormats_Wrapper() {
  int value_ = CountClipboardFormats();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CreateAcceleratorTableW_Wrapper(ACCEL* paccel, int cAccel) {
  HACCEL value_ = CreateAcceleratorTableW(paccel, cAccel);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateCaret_Wrapper(HWND hWnd, HBITMAP hBitmap, int nWidth, int nHeight) {
  BOOL value_ = CreateCaret(hWnd, hBitmap, nWidth, nHeight);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CreateCursor_Wrapper(HINSTANCE hInst, int xHotSpot, int yHotSpot, int nWidth, int nHeight, void* pvANDPlane, void* pvXORPlane) {
  HCURSOR value_ = CreateCursor(hInst, xHotSpot, yHotSpot, nWidth, nHeight, pvANDPlane, pvXORPlane);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateDesktopW_Wrapper(PCWSTR lpszDesktop, PCWSTR lpszDevice, DEVMODEW* pDevmode, DWORD dwFlags, unsigned long dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa) {
  HDESK value_ = CreateDesktopW(lpszDesktop, lpszDevice, pDevmode, dwFlags, dwDesiredAccess, lpsa);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateDesktopExW_Wrapper(PCWSTR lpszDesktop, PCWSTR lpszDevice, DEVMODEW* pDevmode, DWORD dwFlags, unsigned long dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa, unsigned long ulHeapSize, void* pvoid) {
  HDESK value_ = CreateDesktopExW(lpszDesktop, lpszDevice, pDevmode, dwFlags, dwDesiredAccess, lpsa, ulHeapSize, pvoid);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateDialogIndirectParamW_Wrapper(HINSTANCE hInstance, DLGTEMPLATE* lpTemplate, HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam) {
  HWND value_ = CreateDialogIndirectParamW(hInstance, lpTemplate, hWndParent, lpDialogFunc, dwInitParam);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateIcon_Wrapper(HINSTANCE hInstance, int nWidth, int nHeight, unsigned char cPlanes, unsigned char cBitsPixel, unsigned char* lpbANDbits, unsigned char* lpbXORbits) {
  HICON value_ = CreateIcon(hInstance, nWidth, nHeight, cPlanes, cBitsPixel, lpbANDbits, lpbXORbits);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateIconFromResource_Wrapper(unsigned char* presbits, unsigned long dwResSize, BOOL fIcon, unsigned long dwVer) {
  HICON value_ = CreateIconFromResource(presbits, dwResSize, fIcon, dwVer);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateIconFromResourceEx_Wrapper(unsigned char* presbits, unsigned long dwResSize, BOOL fIcon, unsigned long dwVer, int cxDesired, int cyDesired, DWORD flags) {
  HICON value_ = CreateIconFromResourceEx(presbits, dwResSize, fIcon, dwVer, cxDesired, cyDesired, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateIconIndirect_Wrapper(ICONINFO* piconinfo) {
  HICON value_ = CreateIconIndirect(piconinfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateMDIWindowW_Wrapper(PCWSTR lpClassName, PCWSTR lpWindowName, DWORD dwStyle, int x, int y, int nWidth, int nHeight, HWND hWndParent, HINSTANCE hInstance, LPARAM lParam) {
  HWND value_ = CreateMDIWindowW(lpClassName, lpWindowName, dwStyle, x, y, nWidth, nHeight, hWndParent, hInstance, lParam);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateMenu_Wrapper() {
  HMENU value_ = CreateMenu();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreatePopupMenu_Wrapper() {
  HMENU value_ = CreatePopupMenu();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateWindowExW_Wrapper(DWORD dwExStyle, PCWSTR lpClassName, PCWSTR lpWindowName, DWORD dwStyle, int x, int y, int nWidth, int nHeight, HWND hWndParent, HMENU hMenu, HINSTANCE hInstance, void* lpParam) {
  HWND value_ = CreateWindowExW(dwExStyle, lpClassName, lpWindowName, dwStyle, x, y, nWidth, nHeight, hWndParent, hMenu, hInstance, lpParam);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result CreateWindowStationW_Wrapper(PCWSTR lpwinsta, unsigned long dwFlags, unsigned long dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa) {
  HWINSTA value_ = CreateWindowStationW(lpwinsta, dwFlags, dwDesiredAccess, lpsa);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result DeferWindowPos_Wrapper(HDWP hWinPosInfo, HWND hWnd, HWND hWndInsertAfter, int x, int y, int cx, int cy, DWORD uFlags) {
  HDWP value_ = DeferWindowPos(hWinPosInfo, hWnd, hWndInsertAfter, x, y, cx, cy, uFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result DeleteMenu_Wrapper(HMENU hMenu, unsigned long uPosition, DWORD uFlags) {
  BOOL value_ = DeleteMenu(hMenu, uPosition, uFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DestroyCaret_Wrapper() {
  BOOL value_ = DestroyCaret();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DestroyCursor_Wrapper(HCURSOR hCursor) {
  BOOL value_ = DestroyCursor(hCursor);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DestroyIcon_Wrapper(HICON hIcon) {
  BOOL value_ = DestroyIcon(hIcon);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DestroyMenu_Wrapper(HMENU hMenu) {
  BOOL value_ = DestroyMenu(hMenu);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DestroyWindow_Wrapper(HWND hWnd) {
  BOOL value_ = DestroyWindow(hWnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DialogBoxIndirectParamW_Wrapper(HINSTANCE hInstance, DLGTEMPLATE* hDialogTemplate, HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam) {
  long long value_ = DialogBoxIndirectParamW(hInstance, hDialogTemplate, hWndParent, lpDialogFunc, dwInitParam);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result DrawIcon_Wrapper(HDC hDC, int x, int y, HICON hIcon) {
  BOOL value_ = DrawIcon(hDC, x, y, hIcon);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EmptyClipboard_Wrapper() {
  BOOL value_ = EmptyClipboard();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EnableMouseInPointer_Wrapper(BOOL fEnable) {
  BOOL value_ = EnableMouseInPointer(fEnable);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EnableNonClientDpiScaling_Wrapper(HWND hwnd) {
  BOOL value_ = EnableNonClientDpiScaling(hwnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EnableScrollBar_Wrapper(HWND hWnd, unsigned long wSBflags, DWORD wArrows) {
  BOOL value_ = EnableScrollBar(hWnd, wSBflags, wArrows);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EndDeferWindowPos_Wrapper(HDWP hWinPosInfo) {
  BOOL value_ = EndDeferWindowPos(hWinPosInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EndDialog_Wrapper(HWND hDlg, long long nResult) {
  BOOL value_ = EndDialog(hDlg, nResult);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EndMenu_Wrapper() {
  BOOL value_ = EndMenu();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EnumClipboardFormats_Wrapper(unsigned long format) {
  unsigned long value_ = EnumClipboardFormats(format);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result EnumDesktopWindows_Wrapper(HDESK hDesktop, WNDENUMPROC lpfn, LPARAM lParam) {
  BOOL value_ = EnumDesktopWindows(hDesktop, lpfn, lParam);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EnumWindows_Wrapper(WNDENUMPROC lpEnumFunc, LPARAM lParam) {
  BOOL value_ = EnumWindows(lpEnumFunc, lParam);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result FindWindowW_Wrapper(PCWSTR lpClassName, PCWSTR lpWindowName) {
  HWND value_ = FindWindowW(lpClassName, lpWindowName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result FindWindowExW_Wrapper(HWND hWndParent, HWND hWndChildAfter, PCWSTR lpszClass, PCWSTR lpszWindow) {
  HWND value_ = FindWindowExW(hWndParent, hWndChildAfter, lpszClass, lpszWindow);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GetAltTabInfoW_Wrapper(HWND hwnd, int iItem, ALTTABINFO* pati, PWSTR pszItemText, unsigned long cchItemText) {
  BOOL value_ = GetAltTabInfoW(hwnd, iItem, pati, pszItemText, cchItemText);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetCaretBlinkTime_Wrapper() {
  unsigned long value_ = GetCaretBlinkTime();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetCaretPos_Wrapper(POINT* lpPoint) {
  BOOL value_ = GetCaretPos(lpPoint);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetClassInfoW_Wrapper(HINSTANCE hInstance, PCWSTR lpClassName, WNDCLASSW* lpWndClass) {
  BOOL value_ = GetClassInfoW(hInstance, lpClassName, lpWndClass);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetClassInfoExW_Wrapper(HINSTANCE hInstance, PCWSTR lpszClass, WNDCLASSEXW* lpwcx) {
  BOOL value_ = GetClassInfoExW(hInstance, lpszClass, lpwcx);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetClassLongPtrW_Wrapper(HWND hWnd, LONG nIndex) {
  unsigned long long value_ = GetClassLongPtrW(hWnd, nIndex);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result GetClassNameW_Wrapper(HWND hWnd, PWSTR lpClassName, int nMaxCount) {
  int value_ = GetClassNameW(hWnd, lpClassName, nMaxCount);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetClientRect_Wrapper(HWND hWnd, RECT* lpRect) {
  BOOL value_ = GetClientRect(hWnd, lpRect);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetClipboardData_Wrapper(unsigned long uFormat) {
  HANDLE value_ = GetClipboardData(uFormat);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GetClipboardFormatNameW_Wrapper(unsigned long format, PWSTR lpszFormatName, int cchMaxCount) {
  int value_ = GetClipboardFormatNameW(format, lpszFormatName, cchMaxCount);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetClipboardOwner_Wrapper() {
  HWND value_ = GetClipboardOwner();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GetClipboardViewer_Wrapper() {
  HWND value_ = GetClipboardViewer();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GetClipCursor_Wrapper(RECT* lpRect) {
  BOOL value_ = GetClipCursor(lpRect);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetCursorInfo_Wrapper(CURSORINFO* pci) {
  BOOL value_ = GetCursorInfo(pci);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetCursorPos_Wrapper(POINT* lpPoint) {
  BOOL value_ = GetCursorPos(lpPoint);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetDialogControlDpiChangeBehavior_Wrapper(HWND hWnd) {
  LONG value_ = GetDialogControlDpiChangeBehavior(hWnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetDialogDpiChangeBehavior_Wrapper(HWND hDlg) {
  LONG value_ = GetDialogDpiChangeBehavior(hDlg);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetDlgItem_Wrapper(HWND hDlg, int nIDDlgItem) {
  HWND value_ = GetDlgItem(hDlg, nIDDlgItem);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GetDlgItemInt_Wrapper(HWND hDlg, int nIDDlgItem, BOOL* lpTranslated, BOOL bSigned) {
  unsigned long value_ = GetDlgItemInt(hDlg, nIDDlgItem, lpTranslated, bSigned);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetDlgItemTextW_Wrapper(HWND hDlg, int nIDDlgItem, PWSTR lpString, int cchMax) {
  unsigned long value_ = GetDlgItemTextW(hDlg, nIDDlgItem, lpString, cchMax);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetGestureConfig_Wrapper(HWND hwnd, unsigned long dwReserved, unsigned long dwFlags, unsigned long* pcIDs, GESTURECONFIG* pGestureConfig, unsigned long cbSize) {
  BOOL value_ = GetGestureConfig(hwnd, dwReserved, dwFlags, pcIDs, pGestureConfig, cbSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetGestureExtraArgs_Wrapper(HGESTUREINFO hGestureInfo, unsigned long cbExtraArgs, unsigned char* pExtraArgs) {
  BOOL value_ = GetGestureExtraArgs(hGestureInfo, cbExtraArgs, pExtraArgs);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetGestureInfo_Wrapper(HGESTUREINFO hGestureInfo, GESTUREINFO* pGestureInfo) {
  BOOL value_ = GetGestureInfo(hGestureInfo, pGestureInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetGUIThreadInfo_Wrapper(unsigned long idThread, GUITHREADINFO* pgui) {
  BOOL value_ = GetGUIThreadInfo(idThread, pgui);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetIconInfo_Wrapper(HICON hIcon, ICONINFO* piconinfo) {
  BOOL value_ = GetIconInfo(hIcon, piconinfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetKeyboardLayoutList_Wrapper(int nBuff, HKL* lpList) {
  int value_ = GetKeyboardLayoutList(nBuff, lpList);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetKeyboardLayoutNameW_Wrapper(PWSTR pwszKLID) {
  BOOL value_ = GetKeyboardLayoutNameW(pwszKLID);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetKeyboardState_Wrapper(unsigned char* lpKeyState) {
  BOOL value_ = GetKeyboardState(lpKeyState);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetKeyboardType_Wrapper(int nTypeFlag) {
  int value_ = GetKeyboardType(nTypeFlag);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetKeyNameTextW_Wrapper(int lParam, PWSTR lpString, int cchSize) {
  int value_ = GetKeyNameTextW(lParam, lpString, cchSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetLayeredWindowAttributes_Wrapper(HWND hwnd, COLORREF* pcrKey, unsigned char* pbAlpha, DWORD* pdwFlags) {
  BOOL value_ = GetLayeredWindowAttributes(hwnd, pcrKey, pbAlpha, pdwFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetMenuBarInfo_Wrapper(HWND hwnd, LONG idObject, int idItem, MENUBARINFO* pmbi) {
  BOOL value_ = GetMenuBarInfo(hwnd, idObject, idItem, pmbi);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetMenuDefaultItem_Wrapper(HMENU hMenu, unsigned long fByPos, DWORD gmdiFlags) {
  unsigned long value_ = GetMenuDefaultItem(hMenu, fByPos, gmdiFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetMenuInfo_Wrapper(HMENU param0, MENUINFO* param1) {
  BOOL value_ = GetMenuInfo(param0, param1);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetMenuItemCount_Wrapper(HMENU hMenu) {
  int value_ = GetMenuItemCount(hMenu);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetMenuItemInfoW_Wrapper(HMENU hmenu, unsigned long item, BOOL fByPosition, MENUITEMINFOW* lpmii) {
  BOOL value_ = GetMenuItemInfoW(hmenu, item, fByPosition, lpmii);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetMenuItemRect_Wrapper(HWND hWnd, HMENU hMenu, unsigned long uItem, RECT* lprcItem) {
  BOOL value_ = GetMenuItemRect(hWnd, hMenu, uItem, lprcItem);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetMessageW_Wrapper(MSG* lpMsg, HWND hWnd, unsigned long wMsgFilterMin, unsigned long wMsgFilterMax) {
  BOOL value_ = GetMessageW(lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetMouseMovePointsEx_Wrapper(unsigned long cbSize, MOUSEMOVEPOINT* lppt, MOUSEMOVEPOINT* lpptBuf, int nBufPoints, DWORD resolution) {
  int value_ = GetMouseMovePointsEx(cbSize, lppt, lpptBuf, nBufPoints, resolution);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetNextDlgGroupItem_Wrapper(HWND hDlg, HWND hCtl, BOOL bPrevious) {
  HWND value_ = GetNextDlgGroupItem(hDlg, hCtl, bPrevious);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GetNextDlgTabItem_Wrapper(HWND hDlg, HWND hCtl, BOOL bPrevious) {
  HWND value_ = GetNextDlgTabItem(hDlg, hCtl, bPrevious);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GetOpenClipboardWindow_Wrapper() {
  HWND value_ = GetOpenClipboardWindow();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GetParent_Wrapper(HWND hWnd) {
  HWND value_ = GetParent(hWnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GetPhysicalCursorPos_Wrapper(POINT* lpPoint) {
  BOOL value_ = GetPhysicalCursorPos(lpPoint);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPointerCursorId_Wrapper(unsigned long pointerId, unsigned long* cursorId) {
  BOOL value_ = GetPointerCursorId(pointerId, cursorId);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPointerFrameInfo_Wrapper(unsigned long pointerId, unsigned long* pointerCount, POINTER_INFO* pointerInfo) {
  BOOL value_ = GetPointerFrameInfo(pointerId, pointerCount, pointerInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPointerFrameInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, unsigned long* pointerCount, POINTER_INFO* pointerInfo) {
  BOOL value_ = GetPointerFrameInfoHistory(pointerId, entriesCount, pointerCount, pointerInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPointerFramePenInfo_Wrapper(unsigned long pointerId, unsigned long* pointerCount, POINTER_PEN_INFO* penInfo) {
  BOOL value_ = GetPointerFramePenInfo(pointerId, pointerCount, penInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPointerFramePenInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, unsigned long* pointerCount, POINTER_PEN_INFO* penInfo) {
  BOOL value_ = GetPointerFramePenInfoHistory(pointerId, entriesCount, pointerCount, penInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPointerFrameTouchInfo_Wrapper(unsigned long pointerId, unsigned long* pointerCount, POINTER_TOUCH_INFO* touchInfo) {
  BOOL value_ = GetPointerFrameTouchInfo(pointerId, pointerCount, touchInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPointerFrameTouchInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, unsigned long* pointerCount, POINTER_TOUCH_INFO* touchInfo) {
  BOOL value_ = GetPointerFrameTouchInfoHistory(pointerId, entriesCount, pointerCount, touchInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPointerInfo_Wrapper(unsigned long pointerId, POINTER_INFO* pointerInfo) {
  BOOL value_ = GetPointerInfo(pointerId, pointerInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPointerInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, POINTER_INFO* pointerInfo) {
  BOOL value_ = GetPointerInfoHistory(pointerId, entriesCount, pointerInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPointerInputTransform_Wrapper(unsigned long pointerId, unsigned long historyCount, INPUT_TRANSFORM* inputTransform) {
  BOOL value_ = GetPointerInputTransform(pointerId, historyCount, inputTransform);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPointerPenInfo_Wrapper(unsigned long pointerId, POINTER_PEN_INFO* penInfo) {
  BOOL value_ = GetPointerPenInfo(pointerId, penInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPointerPenInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, POINTER_PEN_INFO* penInfo) {
  BOOL value_ = GetPointerPenInfoHistory(pointerId, entriesCount, penInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPointerTouchInfo_Wrapper(unsigned long pointerId, POINTER_TOUCH_INFO* touchInfo) {
  BOOL value_ = GetPointerTouchInfo(pointerId, touchInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPointerTouchInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, POINTER_TOUCH_INFO* touchInfo) {
  BOOL value_ = GetPointerTouchInfoHistory(pointerId, entriesCount, touchInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPointerType_Wrapper(unsigned long pointerId, LONG* pointerType) {
  BOOL value_ = GetPointerType(pointerId, pointerType);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPriorityClipboardFormat_Wrapper(unsigned long* paFormatPriorityList, int cFormats) {
  int value_ = GetPriorityClipboardFormat(paFormatPriorityList, cFormats);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetProcessWindowStation_Wrapper() {
  HWINSTA value_ = GetProcessWindowStation();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GetRawInputBuffer_Wrapper(RAWINPUT* pData, unsigned long* pcbSize, unsigned long cbSizeHeader) {
  unsigned long value_ = GetRawInputBuffer(pData, pcbSize, cbSizeHeader);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetRawInputDeviceInfoW_Wrapper(HANDLE hDevice, DWORD uiCommand, void* pData, unsigned long* pcbSize) {
  unsigned long value_ = GetRawInputDeviceInfoW(hDevice, uiCommand, pData, pcbSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetRawInputDeviceList_Wrapper(RAWINPUTDEVICELIST* pRawInputDeviceList, unsigned long* puiNumDevices, unsigned long cbSize) {
  unsigned long value_ = GetRawInputDeviceList(pRawInputDeviceList, puiNumDevices, cbSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetRegisteredRawInputDevices_Wrapper(RAWINPUTDEVICE* pRawInputDevices, unsigned long* puiNumDevices, unsigned long cbSize) {
  unsigned long value_ = GetRegisteredRawInputDevices(pRawInputDevices, puiNumDevices, cbSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetScrollBarInfo_Wrapper(HWND hwnd, LONG idObject, SCROLLBARINFO* psbi) {
  BOOL value_ = GetScrollBarInfo(hwnd, idObject, psbi);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetScrollInfo_Wrapper(HWND hwnd, LONG nBar, SCROLLINFO* lpsi) {
  BOOL value_ = GetScrollInfo(hwnd, nBar, lpsi);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetSystemMetricsForDpi_Wrapper(LONG nIndex, unsigned long dpi) {
  int value_ = GetSystemMetricsForDpi(nIndex, dpi);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetThreadDesktop_Wrapper(unsigned long dwThreadId) {
  HDESK value_ = GetThreadDesktop(dwThreadId);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GetTitleBarInfo_Wrapper(HWND hwnd, TITLEBARINFO* pti) {
  BOOL value_ = GetTitleBarInfo(hwnd, pti);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetTopWindow_Wrapper(HWND hWnd) {
  HWND value_ = GetTopWindow(hWnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GetTouchInputInfo_Wrapper(HTOUCHINPUT hTouchInput, unsigned long cInputs, TOUCHINPUT* pInputs, int cbSize) {
  BOOL value_ = GetTouchInputInfo(hTouchInput, cInputs, pInputs, cbSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetUpdatedClipboardFormats_Wrapper(unsigned long* lpuiFormats, unsigned long cFormats, unsigned long* pcFormatsOut) {
  BOOL value_ = GetUpdatedClipboardFormats(lpuiFormats, cFormats, pcFormatsOut);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetUserObjectInformationW_Wrapper(HANDLE hObj, LONG nIndex, void* pvInfo, unsigned long nLength, unsigned long* lpnLengthNeeded) {
  BOOL value_ = GetUserObjectInformationW(hObj, nIndex, pvInfo, nLength, lpnLengthNeeded);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetWindow_Wrapper(HWND hWnd, DWORD uCmd) {
  HWND value_ = GetWindow(hWnd, uCmd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result GetWindowDisplayAffinity_Wrapper(HWND hWnd, unsigned long* pdwAffinity) {
  BOOL value_ = GetWindowDisplayAffinity(hWnd, pdwAffinity);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetWindowInfo_Wrapper(HWND hwnd, WINDOWINFO* pwi) {
  BOOL value_ = GetWindowInfo(hwnd, pwi);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetWindowLongPtrW_Wrapper(HWND hWnd, LONG nIndex) {
  long long value_ = GetWindowLongPtrW(hWnd, nIndex);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result GetWindowPlacement_Wrapper(HWND hWnd, WINDOWPLACEMENT* lpwndpl) {
  BOOL value_ = GetWindowPlacement(hWnd, lpwndpl);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetWindowRect_Wrapper(HWND hWnd, RECT* lpRect) {
  BOOL value_ = GetWindowRect(hWnd, lpRect);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetWindowTextW_Wrapper(HWND hWnd, PWSTR lpString, int nMaxCount) {
  int value_ = GetWindowTextW(hWnd, lpString, nMaxCount);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetWindowTextLengthW_Wrapper(HWND hWnd) {
  int value_ = GetWindowTextLengthW(hWnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result HideCaret_Wrapper(HWND hWnd) {
  BOOL value_ = HideCaret(hWnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result InsertMenuW_Wrapper(HMENU hMenu, unsigned long uPosition, DWORD uFlags, unsigned long long uIDNewItem, PCWSTR lpNewItem) {
  BOOL value_ = InsertMenuW(hMenu, uPosition, uFlags, uIDNewItem, lpNewItem);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result InsertMenuItemW_Wrapper(HMENU hmenu, unsigned long item, BOOL fByPosition, MENUITEMINFOW* lpmi) {
  BOOL value_ = InsertMenuItemW(hmenu, item, fByPosition, lpmi);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result IsClipboardFormatAvailable_Wrapper(unsigned long format) {
  BOOL value_ = IsClipboardFormatAvailable(format);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result IsImmersiveProcess_Wrapper(HANDLE hProcess) {
  BOOL value_ = IsImmersiveProcess(hProcess);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result KillTimer_Wrapper(HWND hWnd, unsigned long long uIDEvent) {
  BOOL value_ = KillTimer(hWnd, uIDEvent);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result LoadAcceleratorsW_Wrapper(HINSTANCE hInstance, PCWSTR lpTableName) {
  HACCEL value_ = LoadAcceleratorsW(hInstance, lpTableName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result LoadCursorW_Wrapper(HINSTANCE hInstance, PCWSTR lpCursorName) {
  HCURSOR value_ = LoadCursorW(hInstance, lpCursorName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result LoadCursorFromFileW_Wrapper(PCWSTR lpFileName) {
  HCURSOR value_ = LoadCursorFromFileW(lpFileName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result LoadIconW_Wrapper(HINSTANCE hInstance, PCWSTR lpIconName) {
  HICON value_ = LoadIconW(hInstance, lpIconName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result LoadImageW_Wrapper(HINSTANCE hInst, PCWSTR name, DWORD type, int cx, int cy, DWORD fuLoad) {
  HANDLE value_ = LoadImageW(hInst, name, type, cx, cy, fuLoad);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result LoadKeyboardLayoutW_Wrapper(PCWSTR pwszKLID, DWORD flags) {
  HKL value_ = LoadKeyboardLayoutW(pwszKLID, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result LoadMenuW_Wrapper(HINSTANCE hInstance, PCWSTR lpMenuName) {
  HMENU value_ = LoadMenuW(hInstance, lpMenuName);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result LoadMenuIndirectW_Wrapper(void* lpMenuTemplate) {
  HMENU value_ = LoadMenuIndirectW(lpMenuTemplate);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result LoadStringW_Wrapper(HINSTANCE hInstance, unsigned long uID, PWSTR lpBuffer, int cchBufferMax) {
  int value_ = LoadStringW(hInstance, uID, lpBuffer, cchBufferMax);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result LockSetForegroundWindow_Wrapper(DWORD uLockCode) {
  BOOL value_ = LockSetForegroundWindow(uLockCode);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result LockWorkStation_Wrapper() {
  BOOL value_ = LockWorkStation();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result LookupIconIdFromDirectory_Wrapper(unsigned char* presbits, BOOL fIcon) {
  int value_ = LookupIconIdFromDirectory(presbits, fIcon);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result LookupIconIdFromDirectoryEx_Wrapper(unsigned char* presbits, BOOL fIcon, int cxDesired, int cyDesired, DWORD flags) {
  int value_ = LookupIconIdFromDirectoryEx(presbits, fIcon, cxDesired, cyDesired, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result MapDialogRect_Wrapper(HWND hDlg, RECT* lpRect) {
  BOOL value_ = MapDialogRect(hDlg, lpRect);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result MessageBeep_Wrapper(DWORD uType) {
  BOOL value_ = MessageBeep(uType);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result MessageBoxW_Wrapper(HWND hWnd, PCWSTR lpText, PCWSTR lpCaption, DWORD uType) {
  LONG value_ = MessageBoxW(hWnd, lpText, lpCaption, uType);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result MessageBoxExW_Wrapper(HWND hWnd, PCWSTR lpText, PCWSTR lpCaption, DWORD uType, unsigned short wLanguageId) {
  LONG value_ = MessageBoxExW(hWnd, lpText, lpCaption, uType, wLanguageId);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ModifyMenuW_Wrapper(HMENU hMnu, unsigned long uPosition, DWORD uFlags, unsigned long long uIDNewItem, PCWSTR lpNewItem) {
  BOOL value_ = ModifyMenuW(hMnu, uPosition, uFlags, uIDNewItem, lpNewItem);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result MoveWindow_Wrapper(HWND hWnd, int x, int y, int nWidth, int nHeight, BOOL bRepaint) {
  BOOL value_ = MoveWindow(hWnd, x, y, nWidth, nHeight, bRepaint);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result MsgWaitForMultipleObjects_Wrapper(unsigned long nCount, HANDLE* pHandles, BOOL fWaitAll, unsigned long dwMilliseconds, DWORD dwWakeMask) {
  DWORD value_ = MsgWaitForMultipleObjects(nCount, pHandles, fWaitAll, dwMilliseconds, dwWakeMask);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result MsgWaitForMultipleObjectsEx_Wrapper(unsigned long nCount, HANDLE* pHandles, unsigned long dwMilliseconds, DWORD dwWakeMask, DWORD dwFlags) {
  DWORD value_ = MsgWaitForMultipleObjectsEx(nCount, pHandles, dwMilliseconds, dwWakeMask, dwFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result OpenClipboard_Wrapper(HWND hWndNewOwner) {
  BOOL value_ = OpenClipboard(hWndNewOwner);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result OpenDesktopW_Wrapper(PCWSTR lpszDesktop, DWORD dwFlags, BOOL fInherit, unsigned long dwDesiredAccess) {
  HDESK value_ = OpenDesktopW(lpszDesktop, dwFlags, fInherit, dwDesiredAccess);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result OpenIcon_Wrapper(HWND hWnd) {
  BOOL value_ = OpenIcon(hWnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result OpenInputDesktop_Wrapper(DWORD dwFlags, BOOL fInherit, DWORD dwDesiredAccess) {
  HDESK value_ = OpenInputDesktop(dwFlags, fInherit, dwDesiredAccess);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result OpenWindowStationW_Wrapper(PCWSTR lpszWinSta, BOOL fInherit, unsigned long dwDesiredAccess) {
  HWINSTA value_ = OpenWindowStationW(lpszWinSta, fInherit, dwDesiredAccess);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result PostMessageW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam) {
  BOOL value_ = PostMessageW(hWnd, msg, wParam, lParam);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result PostThreadMessageW_Wrapper(unsigned long idThread, unsigned long msg, WPARAM wParam, LPARAM lParam) {
  BOOL value_ = PostThreadMessageW(idThread, msg, wParam, lParam);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result RegisterClassW_Wrapper(WNDCLASSW* lpWndClass) {
  unsigned short value_ = RegisterClassW(lpWndClass);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u16 = value_}};
}

Win32Result RegisterClassExW_Wrapper(WNDCLASSEXW* param0) {
  unsigned short value_ = RegisterClassExW(param0);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u16 = value_}};
}

Win32Result RegisterClipboardFormatW_Wrapper(PCWSTR lpszFormat) {
  unsigned long value_ = RegisterClipboardFormatW(lpszFormat);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result RegisterDeviceNotificationW_Wrapper(HANDLE hRecipient, void* notificationFilter, DWORD flags) {
  HDEVNOTIFY value_ = RegisterDeviceNotificationW(hRecipient, notificationFilter, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result RegisterHotKey_Wrapper(HWND hWnd, int id, DWORD fsModifiers, unsigned long vk) {
  BOOL value_ = RegisterHotKey(hWnd, id, fsModifiers, vk);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result RegisterPowerSettingNotification_Wrapper(HANDLE hRecipient, GUID* powerSettingGuid, DWORD flags) {
  HPOWERNOTIFY value_ = RegisterPowerSettingNotification(hRecipient, powerSettingGuid, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result RegisterRawInputDevices_Wrapper(RAWINPUTDEVICE* pRawInputDevices, unsigned long uiNumDevices, unsigned long cbSize) {
  BOOL value_ = RegisterRawInputDevices(pRawInputDevices, uiNumDevices, cbSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result RegisterTouchHitTestingWindow_Wrapper(HWND hwnd, unsigned long value) {
  BOOL value_ = RegisterTouchHitTestingWindow(hwnd, value);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result RegisterTouchWindow_Wrapper(HWND hwnd, DWORD ulFlags) {
  BOOL value_ = RegisterTouchWindow(hwnd, ulFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result RegisterWindowMessageW_Wrapper(PCWSTR lpString) {
  unsigned long value_ = RegisterWindowMessageW(lpString);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result ReleaseCapture_Wrapper() {
  BOOL value_ = ReleaseCapture();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result RemoveClipboardFormatListener_Wrapper(HWND hwnd) {
  BOOL value_ = RemoveClipboardFormatListener(hwnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result RemoveMenu_Wrapper(HMENU hMenu, unsigned long uPosition, DWORD uFlags) {
  BOOL value_ = RemoveMenu(hMenu, uPosition, uFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result RemovePropW_Wrapper(HWND hWnd, PCWSTR lpString) {
  HANDLE value_ = RemovePropW(hWnd, lpString);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result ScrollDC_Wrapper(HDC hDC, int dx, int dy, RECT* lprcScroll, RECT* lprcClip, HRGN hrgnUpdate, RECT* lprcUpdate) {
  BOOL value_ = ScrollDC(hDC, dx, dy, lprcScroll, lprcClip, hrgnUpdate, lprcUpdate);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ScrollWindow_Wrapper(HWND hWnd, int xAmount, int yAmount, RECT* lpRect, RECT* lpClipRect) {
  BOOL value_ = ScrollWindow(hWnd, xAmount, yAmount, lpRect, lpClipRect);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ScrollWindowEx_Wrapper(HWND hWnd, int dx, int dy, RECT* prcScroll, RECT* prcClip, HRGN hrgnUpdate, RECT* prcUpdate, DWORD flags) {
  int value_ = ScrollWindowEx(hWnd, dx, dy, prcScroll, prcClip, hrgnUpdate, prcUpdate, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SendInput_Wrapper(unsigned long cInputs, INPUT* pInputs, int cbSize) {
  unsigned long value_ = SendInput(cInputs, pInputs, cbSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result SendMessageW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam) {
  LRESULT value_ = SendMessageW(hWnd, msg, wParam, lParam);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result SendMessageCallbackW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam, SENDASYNCPROC lpResultCallBack, unsigned long long dwData) {
  BOOL value_ = SendMessageCallbackW(hWnd, msg, wParam, lParam, lpResultCallBack, dwData);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SendMessageTimeoutW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam, DWORD fuFlags, unsigned long uTimeout, unsigned long long* lpdwResult) {
  LRESULT value_ = SendMessageTimeoutW(hWnd, msg, wParam, lParam, fuFlags, uTimeout, lpdwResult);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result SendNotifyMessageW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam) {
  BOOL value_ = SendNotifyMessageW(hWnd, msg, wParam, lParam);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetActiveWindow_Wrapper(HWND hWnd) {
  HWND value_ = SetActiveWindow(hWnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result SetCaretBlinkTime_Wrapper(unsigned long uMSeconds) {
  BOOL value_ = SetCaretBlinkTime(uMSeconds);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetCaretPos_Wrapper(int x, int y) {
  BOOL value_ = SetCaretPos(x, y);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetClassLongPtrW_Wrapper(HWND hWnd, LONG nIndex, long long dwNewLong) {
  unsigned long long value_ = SetClassLongPtrW(hWnd, nIndex, dwNewLong);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result SetClipboardData_Wrapper(unsigned long uFormat, HANDLE hMem) {
  HANDLE value_ = SetClipboardData(uFormat, hMem);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result SetClipboardViewer_Wrapper(HWND hWndNewViewer) {
  HWND value_ = SetClipboardViewer(hWndNewViewer);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result SetCoalescableTimer_Wrapper(HWND hWnd, unsigned long long nIDEvent, unsigned long uElapse, TIMERPROC lpTimerFunc, unsigned long uToleranceDelay) {
  unsigned long long value_ = SetCoalescableTimer(hWnd, nIDEvent, uElapse, lpTimerFunc, uToleranceDelay);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result SetCursorPos_Wrapper(int x, int y) {
  BOOL value_ = SetCursorPos(x, y);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetDialogControlDpiChangeBehavior_Wrapper(HWND hWnd, LONG mask, LONG values) {
  BOOL value_ = SetDialogControlDpiChangeBehavior(hWnd, mask, values);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetDialogDpiChangeBehavior_Wrapper(HWND hDlg, LONG mask, LONG values) {
  BOOL value_ = SetDialogDpiChangeBehavior(hDlg, mask, values);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetDlgItemInt_Wrapper(HWND hDlg, int nIDDlgItem, unsigned long uValue, BOOL bSigned) {
  BOOL value_ = SetDlgItemInt(hDlg, nIDDlgItem, uValue, bSigned);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetDlgItemTextW_Wrapper(HWND hDlg, int nIDDlgItem, PCWSTR lpString) {
  BOOL value_ = SetDlgItemTextW(hDlg, nIDDlgItem, lpString);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetDoubleClickTime_Wrapper(unsigned long param0) {
  BOOL value_ = SetDoubleClickTime(param0);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetFocus_Wrapper(HWND hWnd) {
  HWND value_ = SetFocus(hWnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result SetGestureConfig_Wrapper(HWND hwnd, unsigned long dwReserved, unsigned long cIDs, GESTURECONFIG* pGestureConfig, unsigned long cbSize) {
  BOOL value_ = SetGestureConfig(hwnd, dwReserved, cIDs, pGestureConfig, cbSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetKeyboardState_Wrapper(unsigned char* lpKeyState) {
  BOOL value_ = SetKeyboardState(lpKeyState);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetLayeredWindowAttributes_Wrapper(HWND hwnd, COLORREF crKey, unsigned char bAlpha, DWORD dwFlags) {
  BOOL value_ = SetLayeredWindowAttributes(hwnd, crKey, bAlpha, dwFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetMenu_Wrapper(HWND hWnd, HMENU hMenu) {
  BOOL value_ = SetMenu(hWnd, hMenu);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetMenuDefaultItem_Wrapper(HMENU hMenu, unsigned long uItem, unsigned long fByPos) {
  BOOL value_ = SetMenuDefaultItem(hMenu, uItem, fByPos);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetMenuInfo_Wrapper(HMENU param0, MENUINFO* param1) {
  BOOL value_ = SetMenuInfo(param0, param1);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetMenuItemBitmaps_Wrapper(HMENU hMenu, unsigned long uPosition, DWORD uFlags, HBITMAP hBitmapUnchecked, HBITMAP hBitmapChecked) {
  BOOL value_ = SetMenuItemBitmaps(hMenu, uPosition, uFlags, hBitmapUnchecked, hBitmapChecked);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetMenuItemInfoW_Wrapper(HMENU hmenu, unsigned long item, BOOL fByPositon, MENUITEMINFOW* lpmii) {
  BOOL value_ = SetMenuItemInfoW(hmenu, item, fByPositon, lpmii);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetParent_Wrapper(HWND hWndChild, HWND hWndNewParent) {
  HWND value_ = SetParent(hWndChild, hWndNewParent);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result SetPhysicalCursorPos_Wrapper(int x, int y) {
  BOOL value_ = SetPhysicalCursorPos(x, y);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetProcessDpiAwarenessContext_Wrapper(DPI_AWARENESS_CONTEXT value) {
  BOOL value_ = SetProcessDpiAwarenessContext(value);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetPropW_Wrapper(HWND hWnd, PCWSTR lpString, HANDLE hData) {
  BOOL value_ = SetPropW(hWnd, lpString, hData);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetSysColors_Wrapper(int cElements, int* lpaElements, COLORREF* lpaRgbValues) {
  BOOL value_ = SetSysColors(cElements, lpaElements, lpaRgbValues);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetSystemCursor_Wrapper(HCURSOR hcur, DWORD id) {
  BOOL value_ = SetSystemCursor(hcur, id);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetTimer_Wrapper(HWND hWnd, unsigned long long nIDEvent, unsigned long uElapse, TIMERPROC lpTimerFunc) {
  unsigned long long value_ = SetTimer(hWnd, nIDEvent, uElapse, lpTimerFunc);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result SetUserObjectInformationW_Wrapper(HANDLE hObj, int nIndex, void* pvInfo, unsigned long nLength) {
  BOOL value_ = SetUserObjectInformationW(hObj, nIndex, pvInfo, nLength);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetWindowDisplayAffinity_Wrapper(HWND hWnd, DWORD dwAffinity) {
  BOOL value_ = SetWindowDisplayAffinity(hWnd, dwAffinity);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetWindowLongPtrW_Wrapper(HWND hWnd, LONG nIndex, long long dwNewLong) {
  long long value_ = SetWindowLongPtrW(hWnd, nIndex, dwNewLong);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result SetWindowPlacement_Wrapper(HWND hWnd, WINDOWPLACEMENT* lpwndpl) {
  BOOL value_ = SetWindowPlacement(hWnd, lpwndpl);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetWindowPos_Wrapper(HWND hWnd, HWND hWndInsertAfter, int x, int y, int cx, int cy, DWORD uFlags) {
  BOOL value_ = SetWindowPos(hWnd, hWndInsertAfter, x, y, cx, cy, uFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetWindowsHookExW_Wrapper(LONG idHook, HOOKPROC lpfn, HINSTANCE hmod, unsigned long dwThreadId) {
  HHOOK value_ = SetWindowsHookExW(idHook, lpfn, hmod, dwThreadId);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result SetWindowTextW_Wrapper(HWND hWnd, PCWSTR lpString) {
  BOOL value_ = SetWindowTextW(hWnd, lpString);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ShowCaret_Wrapper(HWND hWnd) {
  BOOL value_ = ShowCaret(hWnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ShowOwnedPopups_Wrapper(HWND hWnd, BOOL fShow) {
  BOOL value_ = ShowOwnedPopups(hWnd, fShow);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SkipPointerFrameMessages_Wrapper(unsigned long pointerId) {
  BOOL value_ = SkipPointerFrameMessages(pointerId);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SwitchDesktop_Wrapper(HDESK hDesktop) {
  BOOL value_ = SwitchDesktop(hDesktop);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SystemParametersInfoW_Wrapper(DWORD uiAction, unsigned long uiParam, void* pvParam, DWORD fWinIni) {
  BOOL value_ = SystemParametersInfoW(uiAction, uiParam, pvParam, fWinIni);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SystemParametersInfoForDpi_Wrapper(unsigned long uiAction, unsigned long uiParam, void* pvParam, unsigned long fWinIni, unsigned long dpi) {
  BOOL value_ = SystemParametersInfoForDpi(uiAction, uiParam, pvParam, fWinIni, dpi);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result TileWindows_Wrapper(HWND hwndParent, DWORD wHow, RECT* lpRect, unsigned long cKids, HWND* lpKids) {
  unsigned short value_ = TileWindows(hwndParent, wHow, lpRect, cKids, lpKids);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u16 = value_}};
}

Win32Result TrackPopupMenu_Wrapper(HMENU hMenu, DWORD uFlags, int x, int y, int nReserved, HWND hWnd, RECT* prcRect) {
  BOOL value_ = TrackPopupMenu(hMenu, uFlags, x, y, nReserved, hWnd, prcRect);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result TrackPopupMenuEx_Wrapper(HMENU hMenu, unsigned long uFlags, int x, int y, HWND hwnd, TPMPARAMS* lptpm) {
  BOOL value_ = TrackPopupMenuEx(hMenu, uFlags, x, y, hwnd, lptpm);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result TranslateAcceleratorW_Wrapper(HWND hWnd, HACCEL hAccTable, MSG* lpMsg) {
  int value_ = TranslateAcceleratorW(hWnd, hAccTable, lpMsg);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result UnhookWindowsHookEx_Wrapper(HHOOK hhk) {
  BOOL value_ = UnhookWindowsHookEx(hhk);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result UnloadKeyboardLayout_Wrapper(HKL hkl) {
  BOOL value_ = UnloadKeyboardLayout(hkl);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result UnregisterClassW_Wrapper(PCWSTR lpClassName, HINSTANCE hInstance) {
  BOOL value_ = UnregisterClassW(lpClassName, hInstance);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result UnregisterDeviceNotification_Wrapper(HDEVNOTIFY handle) {
  BOOL value_ = UnregisterDeviceNotification(handle);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result UnregisterHotKey_Wrapper(HWND hWnd, int id) {
  BOOL value_ = UnregisterHotKey(hWnd, id);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result UnregisterPowerSettingNotification_Wrapper(HPOWERNOTIFY handle) {
  BOOL value_ = UnregisterPowerSettingNotification(handle);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result UnregisterTouchWindow_Wrapper(HWND hwnd) {
  BOOL value_ = UnregisterTouchWindow(hwnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result UserHandleGrantAccess_Wrapper(HANDLE hUserHandle, HANDLE hJob, BOOL bGrant) {
  BOOL value_ = UserHandleGrantAccess(hUserHandle, hJob, bGrant);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result WaitMessage_Wrapper() {
  BOOL value_ = WaitMessage();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}
