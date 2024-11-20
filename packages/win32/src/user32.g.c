// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "user32.g.h"

HKL ActivateKeyboardLayout_Wrapper(HKL hkl, DWORD flags) {
  trace_print("Calling ActivateKeyboardLayout\n");
  HKL result_ = ActivateKeyboardLayout(hkl, flags);
  trace_print("ActivateKeyboardLayout returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL AddClipboardFormatListener_Wrapper(HWND hwnd) {
  trace_print("Calling AddClipboardFormatListener\n");
  BOOL result_ = AddClipboardFormatListener(hwnd);
  trace_print("AddClipboardFormatListener returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL AdjustWindowRect_Wrapper(RECT* lpRect, DWORD dwStyle, BOOL bMenu) {
  trace_print("Calling AdjustWindowRect\n");
  BOOL result_ = AdjustWindowRect(lpRect, dwStyle, bMenu);
  trace_print("AdjustWindowRect returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL AdjustWindowRectEx_Wrapper(RECT* lpRect, DWORD dwStyle, BOOL bMenu, DWORD dwExStyle) {
  trace_print("Calling AdjustWindowRectEx\n");
  BOOL result_ = AdjustWindowRectEx(lpRect, dwStyle, bMenu, dwExStyle);
  trace_print("AdjustWindowRectEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL AdjustWindowRectExForDpi_Wrapper(RECT* lpRect, DWORD dwStyle, BOOL bMenu, DWORD dwExStyle, unsigned long dpi) {
  trace_print("Calling AdjustWindowRectExForDpi\n");
  BOOL result_ = AdjustWindowRectExForDpi(lpRect, dwStyle, bMenu, dwExStyle, dpi);
  trace_print("AdjustWindowRectExForDpi returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL AllowSetForegroundWindow_Wrapper(unsigned long dwProcessId) {
  trace_print("Calling AllowSetForegroundWindow\n");
  BOOL result_ = AllowSetForegroundWindow(dwProcessId);
  trace_print("AllowSetForegroundWindow returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL AnimateWindow_Wrapper(HWND hWnd, unsigned long dwTime, DWORD dwFlags) {
  trace_print("Calling AnimateWindow\n");
  BOOL result_ = AnimateWindow(hWnd, dwTime, dwFlags);
  trace_print("AnimateWindow returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL AppendMenuW_Wrapper(HMENU hMenu, DWORD uFlags, unsigned long long uIDNewItem, PCWSTR lpNewItem) {
  trace_print("Calling AppendMenuW\n");
  BOOL result_ = AppendMenuW(hMenu, uFlags, uIDNewItem, lpNewItem);
  trace_print("AppendMenuW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long ArrangeIconicWindows_Wrapper(HWND hWnd) {
  trace_print("Calling ArrangeIconicWindows\n");
  unsigned long result_ = ArrangeIconicWindows(hWnd);
  trace_print("ArrangeIconicWindows returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HDWP BeginDeferWindowPos_Wrapper(int nNumWindows) {
  trace_print("Calling BeginDeferWindowPos\n");
  HDWP result_ = BeginDeferWindowPos(nNumWindows);
  trace_print("BeginDeferWindowPos returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL BlockInput_Wrapper(BOOL fBlockIt) {
  trace_print("Calling BlockInput\n");
  BOOL result_ = BlockInput(fBlockIt);
  trace_print("BlockInput returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL BringWindowToTop_Wrapper(HWND hWnd) {
  trace_print("Calling BringWindowToTop\n");
  BOOL result_ = BringWindowToTop(hWnd);
  trace_print("BringWindowToTop returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int BroadcastSystemMessageW_Wrapper(DWORD flags, DWORD* lpInfo, unsigned long msg, WPARAM wParam, LPARAM lParam) {
  trace_print("Calling BroadcastSystemMessageW\n");
  int result_ = BroadcastSystemMessageW(flags, lpInfo, msg, wParam, lParam);
  trace_print("BroadcastSystemMessageW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int BroadcastSystemMessageExW_Wrapper(DWORD flags, DWORD* lpInfo, unsigned long msg, WPARAM wParam, LPARAM lParam, BSMINFO* pbsmInfo) {
  trace_print("Calling BroadcastSystemMessageExW\n");
  int result_ = BroadcastSystemMessageExW(flags, lpInfo, msg, wParam, lParam, pbsmInfo);
  trace_print("BroadcastSystemMessageExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CalculatePopupWindowPosition_Wrapper(POINT* anchorPoint, SIZE* windowSize, unsigned long flags, RECT* excludeRect, RECT* popupWindowPosition) {
  trace_print("Calling CalculatePopupWindowPosition\n");
  BOOL result_ = CalculatePopupWindowPosition(anchorPoint, windowSize, flags, excludeRect, popupWindowPosition);
  trace_print("CalculatePopupWindowPosition returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned short CascadeWindows_Wrapper(HWND hwndParent, DWORD wHow, RECT* lpRect, unsigned long cKids, HWND* lpKids) {
  trace_print("Calling CascadeWindows\n");
  unsigned short result_ = CascadeWindows(hwndParent, wHow, lpRect, cKids, lpKids);
  trace_print("CascadeWindows returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ChangeWindowMessageFilter_Wrapper(unsigned long message, DWORD dwFlag) {
  trace_print("Calling ChangeWindowMessageFilter\n");
  BOOL result_ = ChangeWindowMessageFilter(message, dwFlag);
  trace_print("ChangeWindowMessageFilter returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ChangeWindowMessageFilterEx_Wrapper(HWND hwnd, unsigned long message, DWORD action, CHANGEFILTERSTRUCT* pChangeFilterStruct) {
  trace_print("Calling ChangeWindowMessageFilterEx\n");
  BOOL result_ = ChangeWindowMessageFilterEx(hwnd, message, action, pChangeFilterStruct);
  trace_print("ChangeWindowMessageFilterEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CheckDlgButton_Wrapper(HWND hDlg, int nIDButton, DWORD uCheck) {
  trace_print("Calling CheckDlgButton\n");
  BOOL result_ = CheckDlgButton(hDlg, nIDButton, uCheck);
  trace_print("CheckDlgButton returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CheckRadioButton_Wrapper(HWND hDlg, int nIDFirstButton, int nIDLastButton, int nIDCheckButton) {
  trace_print("Calling CheckRadioButton\n");
  BOOL result_ = CheckRadioButton(hDlg, nIDFirstButton, nIDLastButton, nIDCheckButton);
  trace_print("CheckRadioButton returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ClipCursor_Wrapper(RECT* lpRect) {
  trace_print("Calling ClipCursor\n");
  BOOL result_ = ClipCursor(lpRect);
  trace_print("ClipCursor returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CloseClipboard_Wrapper() {
  trace_print("Calling CloseClipboard\n");
  BOOL result_ = CloseClipboard();
  trace_print("CloseClipboard returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CloseGestureInfoHandle_Wrapper(HGESTUREINFO hGestureInfo) {
  trace_print("Calling CloseGestureInfoHandle\n");
  BOOL result_ = CloseGestureInfoHandle(hGestureInfo);
  trace_print("CloseGestureInfoHandle returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CloseTouchInputHandle_Wrapper(HTOUCHINPUT hTouchInput) {
  trace_print("Calling CloseTouchInputHandle\n");
  BOOL result_ = CloseTouchInputHandle(hTouchInput);
  trace_print("CloseTouchInputHandle returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CloseWindow_Wrapper(HWND hWnd) {
  trace_print("Calling CloseWindow\n");
  BOOL result_ = CloseWindow(hWnd);
  trace_print("CloseWindow returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HICON CopyIcon_Wrapper(HICON hIcon) {
  trace_print("Calling CopyIcon\n");
  HICON result_ = CopyIcon(hIcon);
  trace_print("CopyIcon returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE CopyImage_Wrapper(HANDLE h, DWORD type, int cx, int cy, DWORD flags) {
  trace_print("Calling CopyImage\n");
  HANDLE result_ = CopyImage(h, type, cx, cy, flags);
  trace_print("CopyImage returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int CountClipboardFormats_Wrapper() {
  trace_print("Calling CountClipboardFormats\n");
  int result_ = CountClipboardFormats();
  trace_print("CountClipboardFormats returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HACCEL CreateAcceleratorTableW_Wrapper(ACCEL* paccel, int cAccel) {
  trace_print("Calling CreateAcceleratorTableW\n");
  HACCEL result_ = CreateAcceleratorTableW(paccel, cAccel);
  trace_print("CreateAcceleratorTableW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CreateCaret_Wrapper(HWND hWnd, HBITMAP hBitmap, int nWidth, int nHeight) {
  trace_print("Calling CreateCaret\n");
  BOOL result_ = CreateCaret(hWnd, hBitmap, nWidth, nHeight);
  trace_print("CreateCaret returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HCURSOR CreateCursor_Wrapper(HINSTANCE hInst, int xHotSpot, int yHotSpot, int nWidth, int nHeight, void* pvANDPlane, void* pvXORPlane) {
  trace_print("Calling CreateCursor\n");
  HCURSOR result_ = CreateCursor(hInst, xHotSpot, yHotSpot, nWidth, nHeight, pvANDPlane, pvXORPlane);
  trace_print("CreateCursor returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HDESK CreateDesktopW_Wrapper(PCWSTR lpszDesktop, PCWSTR lpszDevice, DEVMODEW* pDevmode, DWORD dwFlags, unsigned long dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa) {
  trace_print("Calling CreateDesktopW\n");
  HDESK result_ = CreateDesktopW(lpszDesktop, lpszDevice, pDevmode, dwFlags, dwDesiredAccess, lpsa);
  trace_print("CreateDesktopW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HDESK CreateDesktopExW_Wrapper(PCWSTR lpszDesktop, PCWSTR lpszDevice, DEVMODEW* pDevmode, DWORD dwFlags, unsigned long dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa, unsigned long ulHeapSize, void* pvoid) {
  trace_print("Calling CreateDesktopExW\n");
  HDESK result_ = CreateDesktopExW(lpszDesktop, lpszDevice, pDevmode, dwFlags, dwDesiredAccess, lpsa, ulHeapSize, pvoid);
  trace_print("CreateDesktopExW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND CreateDialogIndirectParamW_Wrapper(HINSTANCE hInstance, DLGTEMPLATE* lpTemplate, HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam) {
  trace_print("Calling CreateDialogIndirectParamW\n");
  HWND result_ = CreateDialogIndirectParamW(hInstance, lpTemplate, hWndParent, lpDialogFunc, dwInitParam);
  trace_print("CreateDialogIndirectParamW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HICON CreateIcon_Wrapper(HINSTANCE hInstance, int nWidth, int nHeight, unsigned char cPlanes, unsigned char cBitsPixel, unsigned char* lpbANDbits, unsigned char* lpbXORbits) {
  trace_print("Calling CreateIcon\n");
  HICON result_ = CreateIcon(hInstance, nWidth, nHeight, cPlanes, cBitsPixel, lpbANDbits, lpbXORbits);
  trace_print("CreateIcon returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HICON CreateIconFromResource_Wrapper(unsigned char* presbits, unsigned long dwResSize, BOOL fIcon, unsigned long dwVer) {
  trace_print("Calling CreateIconFromResource\n");
  HICON result_ = CreateIconFromResource(presbits, dwResSize, fIcon, dwVer);
  trace_print("CreateIconFromResource returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HICON CreateIconFromResourceEx_Wrapper(unsigned char* presbits, unsigned long dwResSize, BOOL fIcon, unsigned long dwVer, int cxDesired, int cyDesired, DWORD flags) {
  trace_print("Calling CreateIconFromResourceEx\n");
  HICON result_ = CreateIconFromResourceEx(presbits, dwResSize, fIcon, dwVer, cxDesired, cyDesired, flags);
  trace_print("CreateIconFromResourceEx returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HICON CreateIconIndirect_Wrapper(ICONINFO* piconinfo) {
  trace_print("Calling CreateIconIndirect\n");
  HICON result_ = CreateIconIndirect(piconinfo);
  trace_print("CreateIconIndirect returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND CreateMDIWindowW_Wrapper(PCWSTR lpClassName, PCWSTR lpWindowName, DWORD dwStyle, int x, int y, int nWidth, int nHeight, HWND hWndParent, HINSTANCE hInstance, LPARAM lParam) {
  trace_print("Calling CreateMDIWindowW\n");
  HWND result_ = CreateMDIWindowW(lpClassName, lpWindowName, dwStyle, x, y, nWidth, nHeight, hWndParent, hInstance, lParam);
  trace_print("CreateMDIWindowW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HMENU CreateMenu_Wrapper() {
  trace_print("Calling CreateMenu\n");
  HMENU result_ = CreateMenu();
  trace_print("CreateMenu returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HMENU CreatePopupMenu_Wrapper() {
  trace_print("Calling CreatePopupMenu\n");
  HMENU result_ = CreatePopupMenu();
  trace_print("CreatePopupMenu returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND CreateWindowExW_Wrapper(DWORD dwExStyle, PCWSTR lpClassName, PCWSTR lpWindowName, DWORD dwStyle, int x, int y, int nWidth, int nHeight, HWND hWndParent, HMENU hMenu, HINSTANCE hInstance, void* lpParam) {
  trace_print("Calling CreateWindowExW\n");
  HWND result_ = CreateWindowExW(dwExStyle, lpClassName, lpWindowName, dwStyle, x, y, nWidth, nHeight, hWndParent, hMenu, hInstance, lpParam);
  trace_print("CreateWindowExW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWINSTA CreateWindowStationW_Wrapper(PCWSTR lpwinsta, unsigned long dwFlags, unsigned long dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa) {
  trace_print("Calling CreateWindowStationW\n");
  HWINSTA result_ = CreateWindowStationW(lpwinsta, dwFlags, dwDesiredAccess, lpsa);
  trace_print("CreateWindowStationW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HDWP DeferWindowPos_Wrapper(HDWP hWinPosInfo, HWND hWnd, HWND hWndInsertAfter, int x, int y, int cx, int cy, DWORD uFlags) {
  trace_print("Calling DeferWindowPos\n");
  HDWP result_ = DeferWindowPos(hWinPosInfo, hWnd, hWndInsertAfter, x, y, cx, cy, uFlags);
  trace_print("DeferWindowPos returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DeleteMenu_Wrapper(HMENU hMenu, unsigned long uPosition, DWORD uFlags) {
  trace_print("Calling DeleteMenu\n");
  BOOL result_ = DeleteMenu(hMenu, uPosition, uFlags);
  trace_print("DeleteMenu returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DestroyCaret_Wrapper() {
  trace_print("Calling DestroyCaret\n");
  BOOL result_ = DestroyCaret();
  trace_print("DestroyCaret returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DestroyCursor_Wrapper(HCURSOR hCursor) {
  trace_print("Calling DestroyCursor\n");
  BOOL result_ = DestroyCursor(hCursor);
  trace_print("DestroyCursor returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DestroyIcon_Wrapper(HICON hIcon) {
  trace_print("Calling DestroyIcon\n");
  BOOL result_ = DestroyIcon(hIcon);
  trace_print("DestroyIcon returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DestroyMenu_Wrapper(HMENU hMenu) {
  trace_print("Calling DestroyMenu\n");
  BOOL result_ = DestroyMenu(hMenu);
  trace_print("DestroyMenu returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DestroyWindow_Wrapper(HWND hWnd) {
  trace_print("Calling DestroyWindow\n");
  BOOL result_ = DestroyWindow(hWnd);
  trace_print("DestroyWindow returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

long long DialogBoxIndirectParamW_Wrapper(HINSTANCE hInstance, DLGTEMPLATE* hDialogTemplate, HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam) {
  trace_print("Calling DialogBoxIndirectParamW\n");
  long long result_ = DialogBoxIndirectParamW(hInstance, hDialogTemplate, hWndParent, lpDialogFunc, dwInitParam);
  trace_print("DialogBoxIndirectParamW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DrawIcon_Wrapper(HDC hDC, int x, int y, HICON hIcon) {
  trace_print("Calling DrawIcon\n");
  BOOL result_ = DrawIcon(hDC, x, y, hIcon);
  trace_print("DrawIcon returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EmptyClipboard_Wrapper() {
  trace_print("Calling EmptyClipboard\n");
  BOOL result_ = EmptyClipboard();
  trace_print("EmptyClipboard returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EnableMouseInPointer_Wrapper(BOOL fEnable) {
  trace_print("Calling EnableMouseInPointer\n");
  BOOL result_ = EnableMouseInPointer(fEnable);
  trace_print("EnableMouseInPointer returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EnableNonClientDpiScaling_Wrapper(HWND hwnd) {
  trace_print("Calling EnableNonClientDpiScaling\n");
  BOOL result_ = EnableNonClientDpiScaling(hwnd);
  trace_print("EnableNonClientDpiScaling returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EnableScrollBar_Wrapper(HWND hWnd, unsigned long wSBflags, DWORD wArrows) {
  trace_print("Calling EnableScrollBar\n");
  BOOL result_ = EnableScrollBar(hWnd, wSBflags, wArrows);
  trace_print("EnableScrollBar returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EndDeferWindowPos_Wrapper(HDWP hWinPosInfo) {
  trace_print("Calling EndDeferWindowPos\n");
  BOOL result_ = EndDeferWindowPos(hWinPosInfo);
  trace_print("EndDeferWindowPos returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EndDialog_Wrapper(HWND hDlg, long long nResult) {
  trace_print("Calling EndDialog\n");
  BOOL result_ = EndDialog(hDlg, nResult);
  trace_print("EndDialog returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EndMenu_Wrapper() {
  trace_print("Calling EndMenu\n");
  BOOL result_ = EndMenu();
  trace_print("EndMenu returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long EnumClipboardFormats_Wrapper(unsigned long format) {
  trace_print("Calling EnumClipboardFormats\n");
  unsigned long result_ = EnumClipboardFormats(format);
  trace_print("EnumClipboardFormats returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EnumDesktopWindows_Wrapper(HDESK hDesktop, WNDENUMPROC lpfn, LPARAM lParam) {
  trace_print("Calling EnumDesktopWindows\n");
  BOOL result_ = EnumDesktopWindows(hDesktop, lpfn, lParam);
  trace_print("EnumDesktopWindows returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EnumWindows_Wrapper(WNDENUMPROC lpEnumFunc, LPARAM lParam) {
  trace_print("Calling EnumWindows\n");
  BOOL result_ = EnumWindows(lpEnumFunc, lParam);
  trace_print("EnumWindows returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND FindWindowW_Wrapper(PCWSTR lpClassName, PCWSTR lpWindowName) {
  trace_print("Calling FindWindowW\n");
  HWND result_ = FindWindowW(lpClassName, lpWindowName);
  trace_print("FindWindowW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND FindWindowExW_Wrapper(HWND hWndParent, HWND hWndChildAfter, PCWSTR lpszClass, PCWSTR lpszWindow) {
  trace_print("Calling FindWindowExW\n");
  HWND result_ = FindWindowExW(hWndParent, hWndChildAfter, lpszClass, lpszWindow);
  trace_print("FindWindowExW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetAltTabInfoW_Wrapper(HWND hwnd, int iItem, ALTTABINFO* pati, PWSTR pszItemText, unsigned long cchItemText) {
  trace_print("Calling GetAltTabInfoW\n");
  BOOL result_ = GetAltTabInfoW(hwnd, iItem, pati, pszItemText, cchItemText);
  trace_print("GetAltTabInfoW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetCaretBlinkTime_Wrapper() {
  trace_print("Calling GetCaretBlinkTime\n");
  unsigned long result_ = GetCaretBlinkTime();
  trace_print("GetCaretBlinkTime returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetCaretPos_Wrapper(POINT* lpPoint) {
  trace_print("Calling GetCaretPos\n");
  BOOL result_ = GetCaretPos(lpPoint);
  trace_print("GetCaretPos returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetClassInfoW_Wrapper(HINSTANCE hInstance, PCWSTR lpClassName, WNDCLASSW* lpWndClass) {
  trace_print("Calling GetClassInfoW\n");
  BOOL result_ = GetClassInfoW(hInstance, lpClassName, lpWndClass);
  trace_print("GetClassInfoW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetClassInfoExW_Wrapper(HINSTANCE hInstance, PCWSTR lpszClass, WNDCLASSEXW* lpwcx) {
  trace_print("Calling GetClassInfoExW\n");
  BOOL result_ = GetClassInfoExW(hInstance, lpszClass, lpwcx);
  trace_print("GetClassInfoExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long long GetClassLongPtrW_Wrapper(HWND hWnd, LONG nIndex) {
  trace_print("Calling GetClassLongPtrW\n");
  unsigned long long result_ = GetClassLongPtrW(hWnd, nIndex);
  trace_print("GetClassLongPtrW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetClassNameW_Wrapper(HWND hWnd, PWSTR lpClassName, int nMaxCount) {
  trace_print("Calling GetClassNameW\n");
  int result_ = GetClassNameW(hWnd, lpClassName, nMaxCount);
  trace_print("GetClassNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetClientRect_Wrapper(HWND hWnd, RECT* lpRect) {
  trace_print("Calling GetClientRect\n");
  BOOL result_ = GetClientRect(hWnd, lpRect);
  trace_print("GetClientRect returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE GetClipboardData_Wrapper(unsigned long uFormat) {
  trace_print("Calling GetClipboardData\n");
  HANDLE result_ = GetClipboardData(uFormat);
  trace_print("GetClipboardData returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetClipboardFormatNameW_Wrapper(unsigned long format, PWSTR lpszFormatName, int cchMaxCount) {
  trace_print("Calling GetClipboardFormatNameW\n");
  int result_ = GetClipboardFormatNameW(format, lpszFormatName, cchMaxCount);
  trace_print("GetClipboardFormatNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND GetClipboardOwner_Wrapper() {
  trace_print("Calling GetClipboardOwner\n");
  HWND result_ = GetClipboardOwner();
  trace_print("GetClipboardOwner returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND GetClipboardViewer_Wrapper() {
  trace_print("Calling GetClipboardViewer\n");
  HWND result_ = GetClipboardViewer();
  trace_print("GetClipboardViewer returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetClipCursor_Wrapper(RECT* lpRect) {
  trace_print("Calling GetClipCursor\n");
  BOOL result_ = GetClipCursor(lpRect);
  trace_print("GetClipCursor returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetCursorInfo_Wrapper(CURSORINFO* pci) {
  trace_print("Calling GetCursorInfo\n");
  BOOL result_ = GetCursorInfo(pci);
  trace_print("GetCursorInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetCursorPos_Wrapper(POINT* lpPoint) {
  trace_print("Calling GetCursorPos\n");
  BOOL result_ = GetCursorPos(lpPoint);
  trace_print("GetCursorPos returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

LONG GetDialogControlDpiChangeBehavior_Wrapper(HWND hWnd) {
  trace_print("Calling GetDialogControlDpiChangeBehavior\n");
  LONG result_ = GetDialogControlDpiChangeBehavior(hWnd);
  trace_print("GetDialogControlDpiChangeBehavior returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

LONG GetDialogDpiChangeBehavior_Wrapper(HWND hDlg) {
  trace_print("Calling GetDialogDpiChangeBehavior\n");
  LONG result_ = GetDialogDpiChangeBehavior(hDlg);
  trace_print("GetDialogDpiChangeBehavior returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND GetDlgItem_Wrapper(HWND hDlg, int nIDDlgItem) {
  trace_print("Calling GetDlgItem\n");
  HWND result_ = GetDlgItem(hDlg, nIDDlgItem);
  trace_print("GetDlgItem returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetDlgItemInt_Wrapper(HWND hDlg, int nIDDlgItem, BOOL* lpTranslated, BOOL bSigned) {
  trace_print("Calling GetDlgItemInt\n");
  unsigned long result_ = GetDlgItemInt(hDlg, nIDDlgItem, lpTranslated, bSigned);
  trace_print("GetDlgItemInt returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetDlgItemTextW_Wrapper(HWND hDlg, int nIDDlgItem, PWSTR lpString, int cchMax) {
  trace_print("Calling GetDlgItemTextW\n");
  unsigned long result_ = GetDlgItemTextW(hDlg, nIDDlgItem, lpString, cchMax);
  trace_print("GetDlgItemTextW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetGestureConfig_Wrapper(HWND hwnd, unsigned long dwReserved, unsigned long dwFlags, unsigned long* pcIDs, GESTURECONFIG* pGestureConfig, unsigned long cbSize) {
  trace_print("Calling GetGestureConfig\n");
  BOOL result_ = GetGestureConfig(hwnd, dwReserved, dwFlags, pcIDs, pGestureConfig, cbSize);
  trace_print("GetGestureConfig returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetGestureExtraArgs_Wrapper(HGESTUREINFO hGestureInfo, unsigned long cbExtraArgs, unsigned char* pExtraArgs) {
  trace_print("Calling GetGestureExtraArgs\n");
  BOOL result_ = GetGestureExtraArgs(hGestureInfo, cbExtraArgs, pExtraArgs);
  trace_print("GetGestureExtraArgs returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetGestureInfo_Wrapper(HGESTUREINFO hGestureInfo, GESTUREINFO* pGestureInfo) {
  trace_print("Calling GetGestureInfo\n");
  BOOL result_ = GetGestureInfo(hGestureInfo, pGestureInfo);
  trace_print("GetGestureInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetGUIThreadInfo_Wrapper(unsigned long idThread, GUITHREADINFO* pgui) {
  trace_print("Calling GetGUIThreadInfo\n");
  BOOL result_ = GetGUIThreadInfo(idThread, pgui);
  trace_print("GetGUIThreadInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetIconInfo_Wrapper(HICON hIcon, ICONINFO* piconinfo) {
  trace_print("Calling GetIconInfo\n");
  BOOL result_ = GetIconInfo(hIcon, piconinfo);
  trace_print("GetIconInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetKeyboardLayoutList_Wrapper(int nBuff, HKL* lpList) {
  trace_print("Calling GetKeyboardLayoutList\n");
  int result_ = GetKeyboardLayoutList(nBuff, lpList);
  trace_print("GetKeyboardLayoutList returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetKeyboardLayoutNameW_Wrapper(PWSTR pwszKLID) {
  trace_print("Calling GetKeyboardLayoutNameW\n");
  BOOL result_ = GetKeyboardLayoutNameW(pwszKLID);
  trace_print("GetKeyboardLayoutNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetKeyboardState_Wrapper(unsigned char* lpKeyState) {
  trace_print("Calling GetKeyboardState\n");
  BOOL result_ = GetKeyboardState(lpKeyState);
  trace_print("GetKeyboardState returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetKeyboardType_Wrapper(int nTypeFlag) {
  trace_print("Calling GetKeyboardType\n");
  int result_ = GetKeyboardType(nTypeFlag);
  trace_print("GetKeyboardType returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetKeyNameTextW_Wrapper(int lParam, PWSTR lpString, int cchSize) {
  trace_print("Calling GetKeyNameTextW\n");
  int result_ = GetKeyNameTextW(lParam, lpString, cchSize);
  trace_print("GetKeyNameTextW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetLayeredWindowAttributes_Wrapper(HWND hwnd, COLORREF* pcrKey, unsigned char* pbAlpha, DWORD* pdwFlags) {
  trace_print("Calling GetLayeredWindowAttributes\n");
  BOOL result_ = GetLayeredWindowAttributes(hwnd, pcrKey, pbAlpha, pdwFlags);
  trace_print("GetLayeredWindowAttributes returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetMenuBarInfo_Wrapper(HWND hwnd, LONG idObject, int idItem, MENUBARINFO* pmbi) {
  trace_print("Calling GetMenuBarInfo\n");
  BOOL result_ = GetMenuBarInfo(hwnd, idObject, idItem, pmbi);
  trace_print("GetMenuBarInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetMenuDefaultItem_Wrapper(HMENU hMenu, unsigned long fByPos, DWORD gmdiFlags) {
  trace_print("Calling GetMenuDefaultItem\n");
  unsigned long result_ = GetMenuDefaultItem(hMenu, fByPos, gmdiFlags);
  trace_print("GetMenuDefaultItem returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetMenuInfo_Wrapper(HMENU param0, MENUINFO* param1) {
  trace_print("Calling GetMenuInfo\n");
  BOOL result_ = GetMenuInfo(param0, param1);
  trace_print("GetMenuInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetMenuItemCount_Wrapper(HMENU hMenu) {
  trace_print("Calling GetMenuItemCount\n");
  int result_ = GetMenuItemCount(hMenu);
  trace_print("GetMenuItemCount returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetMenuItemInfoW_Wrapper(HMENU hmenu, unsigned long item, BOOL fByPosition, MENUITEMINFOW* lpmii) {
  trace_print("Calling GetMenuItemInfoW\n");
  BOOL result_ = GetMenuItemInfoW(hmenu, item, fByPosition, lpmii);
  trace_print("GetMenuItemInfoW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetMenuItemRect_Wrapper(HWND hWnd, HMENU hMenu, unsigned long uItem, RECT* lprcItem) {
  trace_print("Calling GetMenuItemRect\n");
  BOOL result_ = GetMenuItemRect(hWnd, hMenu, uItem, lprcItem);
  trace_print("GetMenuItemRect returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetMessageW_Wrapper(MSG* lpMsg, HWND hWnd, unsigned long wMsgFilterMin, unsigned long wMsgFilterMax) {
  trace_print("Calling GetMessageW\n");
  BOOL result_ = GetMessageW(lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax);
  trace_print("GetMessageW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetMouseMovePointsEx_Wrapper(unsigned long cbSize, MOUSEMOVEPOINT* lppt, MOUSEMOVEPOINT* lpptBuf, int nBufPoints, DWORD resolution) {
  trace_print("Calling GetMouseMovePointsEx\n");
  int result_ = GetMouseMovePointsEx(cbSize, lppt, lpptBuf, nBufPoints, resolution);
  trace_print("GetMouseMovePointsEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND GetNextDlgGroupItem_Wrapper(HWND hDlg, HWND hCtl, BOOL bPrevious) {
  trace_print("Calling GetNextDlgGroupItem\n");
  HWND result_ = GetNextDlgGroupItem(hDlg, hCtl, bPrevious);
  trace_print("GetNextDlgGroupItem returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND GetNextDlgTabItem_Wrapper(HWND hDlg, HWND hCtl, BOOL bPrevious) {
  trace_print("Calling GetNextDlgTabItem\n");
  HWND result_ = GetNextDlgTabItem(hDlg, hCtl, bPrevious);
  trace_print("GetNextDlgTabItem returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND GetOpenClipboardWindow_Wrapper() {
  trace_print("Calling GetOpenClipboardWindow\n");
  HWND result_ = GetOpenClipboardWindow();
  trace_print("GetOpenClipboardWindow returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND GetParent_Wrapper(HWND hWnd) {
  trace_print("Calling GetParent\n");
  HWND result_ = GetParent(hWnd);
  trace_print("GetParent returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPhysicalCursorPos_Wrapper(POINT* lpPoint) {
  trace_print("Calling GetPhysicalCursorPos\n");
  BOOL result_ = GetPhysicalCursorPos(lpPoint);
  trace_print("GetPhysicalCursorPos returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPointerCursorId_Wrapper(unsigned long pointerId, unsigned long* cursorId) {
  trace_print("Calling GetPointerCursorId\n");
  BOOL result_ = GetPointerCursorId(pointerId, cursorId);
  trace_print("GetPointerCursorId returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPointerFrameInfo_Wrapper(unsigned long pointerId, unsigned long* pointerCount, POINTER_INFO* pointerInfo) {
  trace_print("Calling GetPointerFrameInfo\n");
  BOOL result_ = GetPointerFrameInfo(pointerId, pointerCount, pointerInfo);
  trace_print("GetPointerFrameInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPointerFrameInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, unsigned long* pointerCount, POINTER_INFO* pointerInfo) {
  trace_print("Calling GetPointerFrameInfoHistory\n");
  BOOL result_ = GetPointerFrameInfoHistory(pointerId, entriesCount, pointerCount, pointerInfo);
  trace_print("GetPointerFrameInfoHistory returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPointerFramePenInfo_Wrapper(unsigned long pointerId, unsigned long* pointerCount, POINTER_PEN_INFO* penInfo) {
  trace_print("Calling GetPointerFramePenInfo\n");
  BOOL result_ = GetPointerFramePenInfo(pointerId, pointerCount, penInfo);
  trace_print("GetPointerFramePenInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPointerFramePenInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, unsigned long* pointerCount, POINTER_PEN_INFO* penInfo) {
  trace_print("Calling GetPointerFramePenInfoHistory\n");
  BOOL result_ = GetPointerFramePenInfoHistory(pointerId, entriesCount, pointerCount, penInfo);
  trace_print("GetPointerFramePenInfoHistory returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPointerFrameTouchInfo_Wrapper(unsigned long pointerId, unsigned long* pointerCount, POINTER_TOUCH_INFO* touchInfo) {
  trace_print("Calling GetPointerFrameTouchInfo\n");
  BOOL result_ = GetPointerFrameTouchInfo(pointerId, pointerCount, touchInfo);
  trace_print("GetPointerFrameTouchInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPointerFrameTouchInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, unsigned long* pointerCount, POINTER_TOUCH_INFO* touchInfo) {
  trace_print("Calling GetPointerFrameTouchInfoHistory\n");
  BOOL result_ = GetPointerFrameTouchInfoHistory(pointerId, entriesCount, pointerCount, touchInfo);
  trace_print("GetPointerFrameTouchInfoHistory returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPointerInfo_Wrapper(unsigned long pointerId, POINTER_INFO* pointerInfo) {
  trace_print("Calling GetPointerInfo\n");
  BOOL result_ = GetPointerInfo(pointerId, pointerInfo);
  trace_print("GetPointerInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPointerInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, POINTER_INFO* pointerInfo) {
  trace_print("Calling GetPointerInfoHistory\n");
  BOOL result_ = GetPointerInfoHistory(pointerId, entriesCount, pointerInfo);
  trace_print("GetPointerInfoHistory returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPointerInputTransform_Wrapper(unsigned long pointerId, unsigned long historyCount, INPUT_TRANSFORM* inputTransform) {
  trace_print("Calling GetPointerInputTransform\n");
  BOOL result_ = GetPointerInputTransform(pointerId, historyCount, inputTransform);
  trace_print("GetPointerInputTransform returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPointerPenInfo_Wrapper(unsigned long pointerId, POINTER_PEN_INFO* penInfo) {
  trace_print("Calling GetPointerPenInfo\n");
  BOOL result_ = GetPointerPenInfo(pointerId, penInfo);
  trace_print("GetPointerPenInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPointerPenInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, POINTER_PEN_INFO* penInfo) {
  trace_print("Calling GetPointerPenInfoHistory\n");
  BOOL result_ = GetPointerPenInfoHistory(pointerId, entriesCount, penInfo);
  trace_print("GetPointerPenInfoHistory returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPointerTouchInfo_Wrapper(unsigned long pointerId, POINTER_TOUCH_INFO* touchInfo) {
  trace_print("Calling GetPointerTouchInfo\n");
  BOOL result_ = GetPointerTouchInfo(pointerId, touchInfo);
  trace_print("GetPointerTouchInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPointerTouchInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, POINTER_TOUCH_INFO* touchInfo) {
  trace_print("Calling GetPointerTouchInfoHistory\n");
  BOOL result_ = GetPointerTouchInfoHistory(pointerId, entriesCount, touchInfo);
  trace_print("GetPointerTouchInfoHistory returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPointerType_Wrapper(unsigned long pointerId, LONG* pointerType) {
  trace_print("Calling GetPointerType\n");
  BOOL result_ = GetPointerType(pointerId, pointerType);
  trace_print("GetPointerType returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetPriorityClipboardFormat_Wrapper(unsigned long* paFormatPriorityList, int cFormats) {
  trace_print("Calling GetPriorityClipboardFormat\n");
  int result_ = GetPriorityClipboardFormat(paFormatPriorityList, cFormats);
  trace_print("GetPriorityClipboardFormat returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWINSTA GetProcessWindowStation_Wrapper() {
  trace_print("Calling GetProcessWindowStation\n");
  HWINSTA result_ = GetProcessWindowStation();
  trace_print("GetProcessWindowStation returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetRawInputBuffer_Wrapper(RAWINPUT* pData, unsigned long* pcbSize, unsigned long cbSizeHeader) {
  trace_print("Calling GetRawInputBuffer\n");
  unsigned long result_ = GetRawInputBuffer(pData, pcbSize, cbSizeHeader);
  trace_print("GetRawInputBuffer returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetRawInputDeviceInfoW_Wrapper(HANDLE hDevice, DWORD uiCommand, void* pData, unsigned long* pcbSize) {
  trace_print("Calling GetRawInputDeviceInfoW\n");
  unsigned long result_ = GetRawInputDeviceInfoW(hDevice, uiCommand, pData, pcbSize);
  trace_print("GetRawInputDeviceInfoW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetRawInputDeviceList_Wrapper(RAWINPUTDEVICELIST* pRawInputDeviceList, unsigned long* puiNumDevices, unsigned long cbSize) {
  trace_print("Calling GetRawInputDeviceList\n");
  unsigned long result_ = GetRawInputDeviceList(pRawInputDeviceList, puiNumDevices, cbSize);
  trace_print("GetRawInputDeviceList returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetRegisteredRawInputDevices_Wrapper(RAWINPUTDEVICE* pRawInputDevices, unsigned long* puiNumDevices, unsigned long cbSize) {
  trace_print("Calling GetRegisteredRawInputDevices\n");
  unsigned long result_ = GetRegisteredRawInputDevices(pRawInputDevices, puiNumDevices, cbSize);
  trace_print("GetRegisteredRawInputDevices returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetScrollBarInfo_Wrapper(HWND hwnd, LONG idObject, SCROLLBARINFO* psbi) {
  trace_print("Calling GetScrollBarInfo\n");
  BOOL result_ = GetScrollBarInfo(hwnd, idObject, psbi);
  trace_print("GetScrollBarInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetScrollInfo_Wrapper(HWND hwnd, LONG nBar, SCROLLINFO* lpsi) {
  trace_print("Calling GetScrollInfo\n");
  BOOL result_ = GetScrollInfo(hwnd, nBar, lpsi);
  trace_print("GetScrollInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetSystemMetricsForDpi_Wrapper(LONG nIndex, unsigned long dpi) {
  trace_print("Calling GetSystemMetricsForDpi\n");
  int result_ = GetSystemMetricsForDpi(nIndex, dpi);
  trace_print("GetSystemMetricsForDpi returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HDESK GetThreadDesktop_Wrapper(unsigned long dwThreadId) {
  trace_print("Calling GetThreadDesktop\n");
  HDESK result_ = GetThreadDesktop(dwThreadId);
  trace_print("GetThreadDesktop returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetTitleBarInfo_Wrapper(HWND hwnd, TITLEBARINFO* pti) {
  trace_print("Calling GetTitleBarInfo\n");
  BOOL result_ = GetTitleBarInfo(hwnd, pti);
  trace_print("GetTitleBarInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND GetTopWindow_Wrapper(HWND hWnd) {
  trace_print("Calling GetTopWindow\n");
  HWND result_ = GetTopWindow(hWnd);
  trace_print("GetTopWindow returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetTouchInputInfo_Wrapper(HTOUCHINPUT hTouchInput, unsigned long cInputs, TOUCHINPUT* pInputs, int cbSize) {
  trace_print("Calling GetTouchInputInfo\n");
  BOOL result_ = GetTouchInputInfo(hTouchInput, cInputs, pInputs, cbSize);
  trace_print("GetTouchInputInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetUpdatedClipboardFormats_Wrapper(unsigned long* lpuiFormats, unsigned long cFormats, unsigned long* pcFormatsOut) {
  trace_print("Calling GetUpdatedClipboardFormats\n");
  BOOL result_ = GetUpdatedClipboardFormats(lpuiFormats, cFormats, pcFormatsOut);
  trace_print("GetUpdatedClipboardFormats returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetUserObjectInformationW_Wrapper(HANDLE hObj, LONG nIndex, void* pvInfo, unsigned long nLength, unsigned long* lpnLengthNeeded) {
  trace_print("Calling GetUserObjectInformationW\n");
  BOOL result_ = GetUserObjectInformationW(hObj, nIndex, pvInfo, nLength, lpnLengthNeeded);
  trace_print("GetUserObjectInformationW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND GetWindow_Wrapper(HWND hWnd, DWORD uCmd) {
  trace_print("Calling GetWindow\n");
  HWND result_ = GetWindow(hWnd, uCmd);
  trace_print("GetWindow returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetWindowDisplayAffinity_Wrapper(HWND hWnd, unsigned long* pdwAffinity) {
  trace_print("Calling GetWindowDisplayAffinity\n");
  BOOL result_ = GetWindowDisplayAffinity(hWnd, pdwAffinity);
  trace_print("GetWindowDisplayAffinity returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetWindowInfo_Wrapper(HWND hwnd, WINDOWINFO* pwi) {
  trace_print("Calling GetWindowInfo\n");
  BOOL result_ = GetWindowInfo(hwnd, pwi);
  trace_print("GetWindowInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

long long GetWindowLongPtrW_Wrapper(HWND hWnd, LONG nIndex) {
  trace_print("Calling GetWindowLongPtrW\n");
  long long result_ = GetWindowLongPtrW(hWnd, nIndex);
  trace_print("GetWindowLongPtrW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetWindowPlacement_Wrapper(HWND hWnd, WINDOWPLACEMENT* lpwndpl) {
  trace_print("Calling GetWindowPlacement\n");
  BOOL result_ = GetWindowPlacement(hWnd, lpwndpl);
  trace_print("GetWindowPlacement returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetWindowRect_Wrapper(HWND hWnd, RECT* lpRect) {
  trace_print("Calling GetWindowRect\n");
  BOOL result_ = GetWindowRect(hWnd, lpRect);
  trace_print("GetWindowRect returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetWindowTextW_Wrapper(HWND hWnd, PWSTR lpString, int nMaxCount) {
  trace_print("Calling GetWindowTextW\n");
  int result_ = GetWindowTextW(hWnd, lpString, nMaxCount);
  trace_print("GetWindowTextW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetWindowTextLengthW_Wrapper(HWND hWnd) {
  trace_print("Calling GetWindowTextLengthW\n");
  int result_ = GetWindowTextLengthW(hWnd);
  trace_print("GetWindowTextLengthW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL HideCaret_Wrapper(HWND hWnd) {
  trace_print("Calling HideCaret\n");
  BOOL result_ = HideCaret(hWnd);
  trace_print("HideCaret returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL InsertMenuW_Wrapper(HMENU hMenu, unsigned long uPosition, DWORD uFlags, unsigned long long uIDNewItem, PCWSTR lpNewItem) {
  trace_print("Calling InsertMenuW\n");
  BOOL result_ = InsertMenuW(hMenu, uPosition, uFlags, uIDNewItem, lpNewItem);
  trace_print("InsertMenuW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL InsertMenuItemW_Wrapper(HMENU hmenu, unsigned long item, BOOL fByPosition, MENUITEMINFOW* lpmi) {
  trace_print("Calling InsertMenuItemW\n");
  BOOL result_ = InsertMenuItemW(hmenu, item, fByPosition, lpmi);
  trace_print("InsertMenuItemW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL IsClipboardFormatAvailable_Wrapper(unsigned long format) {
  trace_print("Calling IsClipboardFormatAvailable\n");
  BOOL result_ = IsClipboardFormatAvailable(format);
  trace_print("IsClipboardFormatAvailable returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL IsImmersiveProcess_Wrapper(HANDLE hProcess) {
  trace_print("Calling IsImmersiveProcess\n");
  BOOL result_ = IsImmersiveProcess(hProcess);
  trace_print("IsImmersiveProcess returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL KillTimer_Wrapper(HWND hWnd, unsigned long long uIDEvent) {
  trace_print("Calling KillTimer\n");
  BOOL result_ = KillTimer(hWnd, uIDEvent);
  trace_print("KillTimer returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HACCEL LoadAcceleratorsW_Wrapper(HINSTANCE hInstance, PCWSTR lpTableName) {
  trace_print("Calling LoadAcceleratorsW\n");
  HACCEL result_ = LoadAcceleratorsW(hInstance, lpTableName);
  trace_print("LoadAcceleratorsW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HCURSOR LoadCursorW_Wrapper(HINSTANCE hInstance, PCWSTR lpCursorName) {
  trace_print("Calling LoadCursorW\n");
  HCURSOR result_ = LoadCursorW(hInstance, lpCursorName);
  trace_print("LoadCursorW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HCURSOR LoadCursorFromFileW_Wrapper(PCWSTR lpFileName) {
  trace_print("Calling LoadCursorFromFileW\n");
  HCURSOR result_ = LoadCursorFromFileW(lpFileName);
  trace_print("LoadCursorFromFileW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HICON LoadIconW_Wrapper(HINSTANCE hInstance, PCWSTR lpIconName) {
  trace_print("Calling LoadIconW\n");
  HICON result_ = LoadIconW(hInstance, lpIconName);
  trace_print("LoadIconW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE LoadImageW_Wrapper(HINSTANCE hInst, PCWSTR name, DWORD type, int cx, int cy, DWORD fuLoad) {
  trace_print("Calling LoadImageW\n");
  HANDLE result_ = LoadImageW(hInst, name, type, cx, cy, fuLoad);
  trace_print("LoadImageW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HKL LoadKeyboardLayoutW_Wrapper(PCWSTR pwszKLID, DWORD flags) {
  trace_print("Calling LoadKeyboardLayoutW\n");
  HKL result_ = LoadKeyboardLayoutW(pwszKLID, flags);
  trace_print("LoadKeyboardLayoutW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HMENU LoadMenuW_Wrapper(HINSTANCE hInstance, PCWSTR lpMenuName) {
  trace_print("Calling LoadMenuW\n");
  HMENU result_ = LoadMenuW(hInstance, lpMenuName);
  trace_print("LoadMenuW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HMENU LoadMenuIndirectW_Wrapper(void* lpMenuTemplate) {
  trace_print("Calling LoadMenuIndirectW\n");
  HMENU result_ = LoadMenuIndirectW(lpMenuTemplate);
  trace_print("LoadMenuIndirectW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int LoadStringW_Wrapper(HINSTANCE hInstance, unsigned long uID, PWSTR lpBuffer, int cchBufferMax) {
  trace_print("Calling LoadStringW\n");
  int result_ = LoadStringW(hInstance, uID, lpBuffer, cchBufferMax);
  trace_print("LoadStringW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL LockSetForegroundWindow_Wrapper(DWORD uLockCode) {
  trace_print("Calling LockSetForegroundWindow\n");
  BOOL result_ = LockSetForegroundWindow(uLockCode);
  trace_print("LockSetForegroundWindow returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL LockWorkStation_Wrapper() {
  trace_print("Calling LockWorkStation\n");
  BOOL result_ = LockWorkStation();
  trace_print("LockWorkStation returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int LookupIconIdFromDirectory_Wrapper(unsigned char* presbits, BOOL fIcon) {
  trace_print("Calling LookupIconIdFromDirectory\n");
  int result_ = LookupIconIdFromDirectory(presbits, fIcon);
  trace_print("LookupIconIdFromDirectory returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int LookupIconIdFromDirectoryEx_Wrapper(unsigned char* presbits, BOOL fIcon, int cxDesired, int cyDesired, DWORD flags) {
  trace_print("Calling LookupIconIdFromDirectoryEx\n");
  int result_ = LookupIconIdFromDirectoryEx(presbits, fIcon, cxDesired, cyDesired, flags);
  trace_print("LookupIconIdFromDirectoryEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL MapDialogRect_Wrapper(HWND hDlg, RECT* lpRect) {
  trace_print("Calling MapDialogRect\n");
  BOOL result_ = MapDialogRect(hDlg, lpRect);
  trace_print("MapDialogRect returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

LONG MessageBoxW_Wrapper(HWND hWnd, PCWSTR lpText, PCWSTR lpCaption, DWORD uType) {
  trace_print("Calling MessageBoxW\n");
  LONG result_ = MessageBoxW(hWnd, lpText, lpCaption, uType);
  trace_print("MessageBoxW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

LONG MessageBoxExW_Wrapper(HWND hWnd, PCWSTR lpText, PCWSTR lpCaption, DWORD uType, unsigned short wLanguageId) {
  trace_print("Calling MessageBoxExW\n");
  LONG result_ = MessageBoxExW(hWnd, lpText, lpCaption, uType, wLanguageId);
  trace_print("MessageBoxExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ModifyMenuW_Wrapper(HMENU hMnu, unsigned long uPosition, DWORD uFlags, unsigned long long uIDNewItem, PCWSTR lpNewItem) {
  trace_print("Calling ModifyMenuW\n");
  BOOL result_ = ModifyMenuW(hMnu, uPosition, uFlags, uIDNewItem, lpNewItem);
  trace_print("ModifyMenuW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL MoveWindow_Wrapper(HWND hWnd, int x, int y, int nWidth, int nHeight, BOOL bRepaint) {
  trace_print("Calling MoveWindow\n");
  BOOL result_ = MoveWindow(hWnd, x, y, nWidth, nHeight, bRepaint);
  trace_print("MoveWindow returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

DWORD MsgWaitForMultipleObjects_Wrapper(unsigned long nCount, HANDLE* pHandles, BOOL fWaitAll, unsigned long dwMilliseconds, DWORD dwWakeMask) {
  trace_print("Calling MsgWaitForMultipleObjects\n");
  DWORD result_ = MsgWaitForMultipleObjects(nCount, pHandles, fWaitAll, dwMilliseconds, dwWakeMask);
  trace_print("MsgWaitForMultipleObjects returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

DWORD MsgWaitForMultipleObjectsEx_Wrapper(unsigned long nCount, HANDLE* pHandles, unsigned long dwMilliseconds, DWORD dwWakeMask, DWORD dwFlags) {
  trace_print("Calling MsgWaitForMultipleObjectsEx\n");
  DWORD result_ = MsgWaitForMultipleObjectsEx(nCount, pHandles, dwMilliseconds, dwWakeMask, dwFlags);
  trace_print("MsgWaitForMultipleObjectsEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL OpenClipboard_Wrapper(HWND hWndNewOwner) {
  trace_print("Calling OpenClipboard\n");
  BOOL result_ = OpenClipboard(hWndNewOwner);
  trace_print("OpenClipboard returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HDESK OpenDesktopW_Wrapper(PCWSTR lpszDesktop, DWORD dwFlags, BOOL fInherit, unsigned long dwDesiredAccess) {
  trace_print("Calling OpenDesktopW\n");
  HDESK result_ = OpenDesktopW(lpszDesktop, dwFlags, fInherit, dwDesiredAccess);
  trace_print("OpenDesktopW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL OpenIcon_Wrapper(HWND hWnd) {
  trace_print("Calling OpenIcon\n");
  BOOL result_ = OpenIcon(hWnd);
  trace_print("OpenIcon returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HDESK OpenInputDesktop_Wrapper(DWORD dwFlags, BOOL fInherit, DWORD dwDesiredAccess) {
  trace_print("Calling OpenInputDesktop\n");
  HDESK result_ = OpenInputDesktop(dwFlags, fInherit, dwDesiredAccess);
  trace_print("OpenInputDesktop returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWINSTA OpenWindowStationW_Wrapper(PCWSTR lpszWinSta, BOOL fInherit, unsigned long dwDesiredAccess) {
  trace_print("Calling OpenWindowStationW\n");
  HWINSTA result_ = OpenWindowStationW(lpszWinSta, fInherit, dwDesiredAccess);
  trace_print("OpenWindowStationW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL PostMessageW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam) {
  trace_print("Calling PostMessageW\n");
  BOOL result_ = PostMessageW(hWnd, msg, wParam, lParam);
  trace_print("PostMessageW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL PostThreadMessageW_Wrapper(unsigned long idThread, unsigned long msg, WPARAM wParam, LPARAM lParam) {
  trace_print("Calling PostThreadMessageW\n");
  BOOL result_ = PostThreadMessageW(idThread, msg, wParam, lParam);
  trace_print("PostThreadMessageW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned short RegisterClassW_Wrapper(WNDCLASSW* lpWndClass) {
  trace_print("Calling RegisterClassW\n");
  unsigned short result_ = RegisterClassW(lpWndClass);
  trace_print("RegisterClassW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned short RegisterClassExW_Wrapper(WNDCLASSEXW* param0) {
  trace_print("Calling RegisterClassExW\n");
  unsigned short result_ = RegisterClassExW(param0);
  trace_print("RegisterClassExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long RegisterClipboardFormatW_Wrapper(PCWSTR lpszFormat) {
  trace_print("Calling RegisterClipboardFormatW\n");
  unsigned long result_ = RegisterClipboardFormatW(lpszFormat);
  trace_print("RegisterClipboardFormatW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HDEVNOTIFY RegisterDeviceNotificationW_Wrapper(HANDLE hRecipient, void* notificationFilter, DWORD flags) {
  trace_print("Calling RegisterDeviceNotificationW\n");
  HDEVNOTIFY result_ = RegisterDeviceNotificationW(hRecipient, notificationFilter, flags);
  trace_print("RegisterDeviceNotificationW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL RegisterHotKey_Wrapper(HWND hWnd, int id, DWORD fsModifiers, unsigned long vk) {
  trace_print("Calling RegisterHotKey\n");
  BOOL result_ = RegisterHotKey(hWnd, id, fsModifiers, vk);
  trace_print("RegisterHotKey returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HPOWERNOTIFY RegisterPowerSettingNotification_Wrapper(HANDLE hRecipient, GUID* powerSettingGuid, DWORD flags) {
  trace_print("Calling RegisterPowerSettingNotification\n");
  HPOWERNOTIFY result_ = RegisterPowerSettingNotification(hRecipient, powerSettingGuid, flags);
  trace_print("RegisterPowerSettingNotification returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL RegisterRawInputDevices_Wrapper(RAWINPUTDEVICE* pRawInputDevices, unsigned long uiNumDevices, unsigned long cbSize) {
  trace_print("Calling RegisterRawInputDevices\n");
  BOOL result_ = RegisterRawInputDevices(pRawInputDevices, uiNumDevices, cbSize);
  trace_print("RegisterRawInputDevices returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL RegisterTouchHitTestingWindow_Wrapper(HWND hwnd, unsigned long value) {
  trace_print("Calling RegisterTouchHitTestingWindow\n");
  BOOL result_ = RegisterTouchHitTestingWindow(hwnd, value);
  trace_print("RegisterTouchHitTestingWindow returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL RegisterTouchWindow_Wrapper(HWND hwnd, DWORD ulFlags) {
  trace_print("Calling RegisterTouchWindow\n");
  BOOL result_ = RegisterTouchWindow(hwnd, ulFlags);
  trace_print("RegisterTouchWindow returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long RegisterWindowMessageW_Wrapper(PCWSTR lpString) {
  trace_print("Calling RegisterWindowMessageW\n");
  unsigned long result_ = RegisterWindowMessageW(lpString);
  trace_print("RegisterWindowMessageW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ReleaseCapture_Wrapper() {
  trace_print("Calling ReleaseCapture\n");
  BOOL result_ = ReleaseCapture();
  trace_print("ReleaseCapture returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL RemoveClipboardFormatListener_Wrapper(HWND hwnd) {
  trace_print("Calling RemoveClipboardFormatListener\n");
  BOOL result_ = RemoveClipboardFormatListener(hwnd);
  trace_print("RemoveClipboardFormatListener returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL RemoveMenu_Wrapper(HMENU hMenu, unsigned long uPosition, DWORD uFlags) {
  trace_print("Calling RemoveMenu\n");
  BOOL result_ = RemoveMenu(hMenu, uPosition, uFlags);
  trace_print("RemoveMenu returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE RemovePropW_Wrapper(HWND hWnd, PCWSTR lpString) {
  trace_print("Calling RemovePropW\n");
  HANDLE result_ = RemovePropW(hWnd, lpString);
  trace_print("RemovePropW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ScrollDC_Wrapper(HDC hDC, int dx, int dy, RECT* lprcScroll, RECT* lprcClip, HRGN hrgnUpdate, RECT* lprcUpdate) {
  trace_print("Calling ScrollDC\n");
  BOOL result_ = ScrollDC(hDC, dx, dy, lprcScroll, lprcClip, hrgnUpdate, lprcUpdate);
  trace_print("ScrollDC returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ScrollWindow_Wrapper(HWND hWnd, int xAmount, int yAmount, RECT* lpRect, RECT* lpClipRect) {
  trace_print("Calling ScrollWindow\n");
  BOOL result_ = ScrollWindow(hWnd, xAmount, yAmount, lpRect, lpClipRect);
  trace_print("ScrollWindow returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int ScrollWindowEx_Wrapper(HWND hWnd, int dx, int dy, RECT* prcScroll, RECT* prcClip, HRGN hrgnUpdate, RECT* prcUpdate, DWORD flags) {
  trace_print("Calling ScrollWindowEx\n");
  int result_ = ScrollWindowEx(hWnd, dx, dy, prcScroll, prcClip, hrgnUpdate, prcUpdate, flags);
  trace_print("ScrollWindowEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long SendInput_Wrapper(unsigned long cInputs, INPUT* pInputs, int cbSize) {
  trace_print("Calling SendInput\n");
  unsigned long result_ = SendInput(cInputs, pInputs, cbSize);
  trace_print("SendInput returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

LRESULT SendMessageW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam) {
  trace_print("Calling SendMessageW\n");
  LRESULT result_ = SendMessageW(hWnd, msg, wParam, lParam);
  trace_print("SendMessageW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SendMessageCallbackW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam, SENDASYNCPROC lpResultCallBack, unsigned long long dwData) {
  trace_print("Calling SendMessageCallbackW\n");
  BOOL result_ = SendMessageCallbackW(hWnd, msg, wParam, lParam, lpResultCallBack, dwData);
  trace_print("SendMessageCallbackW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

LRESULT SendMessageTimeoutW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam, DWORD fuFlags, unsigned long uTimeout, unsigned long long* lpdwResult) {
  trace_print("Calling SendMessageTimeoutW\n");
  LRESULT result_ = SendMessageTimeoutW(hWnd, msg, wParam, lParam, fuFlags, uTimeout, lpdwResult);
  trace_print("SendMessageTimeoutW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SendNotifyMessageW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam) {
  trace_print("Calling SendNotifyMessageW\n");
  BOOL result_ = SendNotifyMessageW(hWnd, msg, wParam, lParam);
  trace_print("SendNotifyMessageW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND SetActiveWindow_Wrapper(HWND hWnd) {
  trace_print("Calling SetActiveWindow\n");
  HWND result_ = SetActiveWindow(hWnd);
  trace_print("SetActiveWindow returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetCaretBlinkTime_Wrapper(unsigned long uMSeconds) {
  trace_print("Calling SetCaretBlinkTime\n");
  BOOL result_ = SetCaretBlinkTime(uMSeconds);
  trace_print("SetCaretBlinkTime returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetCaretPos_Wrapper(int x, int y) {
  trace_print("Calling SetCaretPos\n");
  BOOL result_ = SetCaretPos(x, y);
  trace_print("SetCaretPos returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long long SetClassLongPtrW_Wrapper(HWND hWnd, LONG nIndex, long long dwNewLong) {
  trace_print("Calling SetClassLongPtrW\n");
  unsigned long long result_ = SetClassLongPtrW(hWnd, nIndex, dwNewLong);
  trace_print("SetClassLongPtrW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE SetClipboardData_Wrapper(unsigned long uFormat, HANDLE hMem) {
  trace_print("Calling SetClipboardData\n");
  HANDLE result_ = SetClipboardData(uFormat, hMem);
  trace_print("SetClipboardData returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND SetClipboardViewer_Wrapper(HWND hWndNewViewer) {
  trace_print("Calling SetClipboardViewer\n");
  HWND result_ = SetClipboardViewer(hWndNewViewer);
  trace_print("SetClipboardViewer returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long long SetCoalescableTimer_Wrapper(HWND hWnd, unsigned long long nIDEvent, unsigned long uElapse, TIMERPROC lpTimerFunc, unsigned long uToleranceDelay) {
  trace_print("Calling SetCoalescableTimer\n");
  unsigned long long result_ = SetCoalescableTimer(hWnd, nIDEvent, uElapse, lpTimerFunc, uToleranceDelay);
  trace_print("SetCoalescableTimer returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetCursorPos_Wrapper(int x, int y) {
  trace_print("Calling SetCursorPos\n");
  BOOL result_ = SetCursorPos(x, y);
  trace_print("SetCursorPos returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetDialogControlDpiChangeBehavior_Wrapper(HWND hWnd, LONG mask, LONG values) {
  trace_print("Calling SetDialogControlDpiChangeBehavior\n");
  BOOL result_ = SetDialogControlDpiChangeBehavior(hWnd, mask, values);
  trace_print("SetDialogControlDpiChangeBehavior returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetDialogDpiChangeBehavior_Wrapper(HWND hDlg, LONG mask, LONG values) {
  trace_print("Calling SetDialogDpiChangeBehavior\n");
  BOOL result_ = SetDialogDpiChangeBehavior(hDlg, mask, values);
  trace_print("SetDialogDpiChangeBehavior returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetDlgItemInt_Wrapper(HWND hDlg, int nIDDlgItem, unsigned long uValue, BOOL bSigned) {
  trace_print("Calling SetDlgItemInt\n");
  BOOL result_ = SetDlgItemInt(hDlg, nIDDlgItem, uValue, bSigned);
  trace_print("SetDlgItemInt returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetDlgItemTextW_Wrapper(HWND hDlg, int nIDDlgItem, PCWSTR lpString) {
  trace_print("Calling SetDlgItemTextW\n");
  BOOL result_ = SetDlgItemTextW(hDlg, nIDDlgItem, lpString);
  trace_print("SetDlgItemTextW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetDoubleClickTime_Wrapper(unsigned long param0) {
  trace_print("Calling SetDoubleClickTime\n");
  BOOL result_ = SetDoubleClickTime(param0);
  trace_print("SetDoubleClickTime returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND SetFocus_Wrapper(HWND hWnd) {
  trace_print("Calling SetFocus\n");
  HWND result_ = SetFocus(hWnd);
  trace_print("SetFocus returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetGestureConfig_Wrapper(HWND hwnd, unsigned long dwReserved, unsigned long cIDs, GESTURECONFIG* pGestureConfig, unsigned long cbSize) {
  trace_print("Calling SetGestureConfig\n");
  BOOL result_ = SetGestureConfig(hwnd, dwReserved, cIDs, pGestureConfig, cbSize);
  trace_print("SetGestureConfig returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetKeyboardState_Wrapper(unsigned char* lpKeyState) {
  trace_print("Calling SetKeyboardState\n");
  BOOL result_ = SetKeyboardState(lpKeyState);
  trace_print("SetKeyboardState returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetLayeredWindowAttributes_Wrapper(HWND hwnd, COLORREF crKey, unsigned char bAlpha, DWORD dwFlags) {
  trace_print("Calling SetLayeredWindowAttributes\n");
  BOOL result_ = SetLayeredWindowAttributes(hwnd, crKey, bAlpha, dwFlags);
  trace_print("SetLayeredWindowAttributes returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetMenu_Wrapper(HWND hWnd, HMENU hMenu) {
  trace_print("Calling SetMenu\n");
  BOOL result_ = SetMenu(hWnd, hMenu);
  trace_print("SetMenu returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetMenuDefaultItem_Wrapper(HMENU hMenu, unsigned long uItem, unsigned long fByPos) {
  trace_print("Calling SetMenuDefaultItem\n");
  BOOL result_ = SetMenuDefaultItem(hMenu, uItem, fByPos);
  trace_print("SetMenuDefaultItem returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetMenuInfo_Wrapper(HMENU param0, MENUINFO* param1) {
  trace_print("Calling SetMenuInfo\n");
  BOOL result_ = SetMenuInfo(param0, param1);
  trace_print("SetMenuInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetMenuItemBitmaps_Wrapper(HMENU hMenu, unsigned long uPosition, DWORD uFlags, HBITMAP hBitmapUnchecked, HBITMAP hBitmapChecked) {
  trace_print("Calling SetMenuItemBitmaps\n");
  BOOL result_ = SetMenuItemBitmaps(hMenu, uPosition, uFlags, hBitmapUnchecked, hBitmapChecked);
  trace_print("SetMenuItemBitmaps returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetMenuItemInfoW_Wrapper(HMENU hmenu, unsigned long item, BOOL fByPositon, MENUITEMINFOW* lpmii) {
  trace_print("Calling SetMenuItemInfoW\n");
  BOOL result_ = SetMenuItemInfoW(hmenu, item, fByPositon, lpmii);
  trace_print("SetMenuItemInfoW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HWND SetParent_Wrapper(HWND hWndChild, HWND hWndNewParent) {
  trace_print("Calling SetParent\n");
  HWND result_ = SetParent(hWndChild, hWndNewParent);
  trace_print("SetParent returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetPhysicalCursorPos_Wrapper(int x, int y) {
  trace_print("Calling SetPhysicalCursorPos\n");
  BOOL result_ = SetPhysicalCursorPos(x, y);
  trace_print("SetPhysicalCursorPos returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetProcessDpiAwarenessContext_Wrapper(DPI_AWARENESS_CONTEXT value) {
  trace_print("Calling SetProcessDpiAwarenessContext\n");
  BOOL result_ = SetProcessDpiAwarenessContext(value);
  trace_print("SetProcessDpiAwarenessContext returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetPropW_Wrapper(HWND hWnd, PCWSTR lpString, HANDLE hData) {
  trace_print("Calling SetPropW\n");
  BOOL result_ = SetPropW(hWnd, lpString, hData);
  trace_print("SetPropW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetSysColors_Wrapper(int cElements, int* lpaElements, COLORREF* lpaRgbValues) {
  trace_print("Calling SetSysColors\n");
  BOOL result_ = SetSysColors(cElements, lpaElements, lpaRgbValues);
  trace_print("SetSysColors returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetSystemCursor_Wrapper(HCURSOR hcur, DWORD id) {
  trace_print("Calling SetSystemCursor\n");
  BOOL result_ = SetSystemCursor(hcur, id);
  trace_print("SetSystemCursor returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long long SetTimer_Wrapper(HWND hWnd, unsigned long long nIDEvent, unsigned long uElapse, TIMERPROC lpTimerFunc) {
  trace_print("Calling SetTimer\n");
  unsigned long long result_ = SetTimer(hWnd, nIDEvent, uElapse, lpTimerFunc);
  trace_print("SetTimer returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetUserObjectInformationW_Wrapper(HANDLE hObj, int nIndex, void* pvInfo, unsigned long nLength) {
  trace_print("Calling SetUserObjectInformationW\n");
  BOOL result_ = SetUserObjectInformationW(hObj, nIndex, pvInfo, nLength);
  trace_print("SetUserObjectInformationW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetWindowDisplayAffinity_Wrapper(HWND hWnd, DWORD dwAffinity) {
  trace_print("Calling SetWindowDisplayAffinity\n");
  BOOL result_ = SetWindowDisplayAffinity(hWnd, dwAffinity);
  trace_print("SetWindowDisplayAffinity returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

long long SetWindowLongPtrW_Wrapper(HWND hWnd, LONG nIndex, long long dwNewLong) {
  trace_print("Calling SetWindowLongPtrW\n");
  long long result_ = SetWindowLongPtrW(hWnd, nIndex, dwNewLong);
  trace_print("SetWindowLongPtrW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetWindowPlacement_Wrapper(HWND hWnd, WINDOWPLACEMENT* lpwndpl) {
  trace_print("Calling SetWindowPlacement\n");
  BOOL result_ = SetWindowPlacement(hWnd, lpwndpl);
  trace_print("SetWindowPlacement returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetWindowPos_Wrapper(HWND hWnd, HWND hWndInsertAfter, int x, int y, int cx, int cy, DWORD uFlags) {
  trace_print("Calling SetWindowPos\n");
  BOOL result_ = SetWindowPos(hWnd, hWndInsertAfter, x, y, cx, cy, uFlags);
  trace_print("SetWindowPos returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HHOOK SetWindowsHookExW_Wrapper(LONG idHook, HOOKPROC lpfn, HINSTANCE hmod, unsigned long dwThreadId) {
  trace_print("Calling SetWindowsHookExW\n");
  HHOOK result_ = SetWindowsHookExW(idHook, lpfn, hmod, dwThreadId);
  trace_print("SetWindowsHookExW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetWindowTextW_Wrapper(HWND hWnd, PCWSTR lpString) {
  trace_print("Calling SetWindowTextW\n");
  BOOL result_ = SetWindowTextW(hWnd, lpString);
  trace_print("SetWindowTextW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ShowCaret_Wrapper(HWND hWnd) {
  trace_print("Calling ShowCaret\n");
  BOOL result_ = ShowCaret(hWnd);
  trace_print("ShowCaret returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ShowOwnedPopups_Wrapper(HWND hWnd, BOOL fShow) {
  trace_print("Calling ShowOwnedPopups\n");
  BOOL result_ = ShowOwnedPopups(hWnd, fShow);
  trace_print("ShowOwnedPopups returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SkipPointerFrameMessages_Wrapper(unsigned long pointerId) {
  trace_print("Calling SkipPointerFrameMessages\n");
  BOOL result_ = SkipPointerFrameMessages(pointerId);
  trace_print("SkipPointerFrameMessages returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SwitchDesktop_Wrapper(HDESK hDesktop) {
  trace_print("Calling SwitchDesktop\n");
  BOOL result_ = SwitchDesktop(hDesktop);
  trace_print("SwitchDesktop returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SystemParametersInfoW_Wrapper(DWORD uiAction, unsigned long uiParam, void* pvParam, DWORD fWinIni) {
  trace_print("Calling SystemParametersInfoW\n");
  BOOL result_ = SystemParametersInfoW(uiAction, uiParam, pvParam, fWinIni);
  trace_print("SystemParametersInfoW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SystemParametersInfoForDpi_Wrapper(unsigned long uiAction, unsigned long uiParam, void* pvParam, unsigned long fWinIni, unsigned long dpi) {
  trace_print("Calling SystemParametersInfoForDpi\n");
  BOOL result_ = SystemParametersInfoForDpi(uiAction, uiParam, pvParam, fWinIni, dpi);
  trace_print("SystemParametersInfoForDpi returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned short TileWindows_Wrapper(HWND hwndParent, DWORD wHow, RECT* lpRect, unsigned long cKids, HWND* lpKids) {
  trace_print("Calling TileWindows\n");
  unsigned short result_ = TileWindows(hwndParent, wHow, lpRect, cKids, lpKids);
  trace_print("TileWindows returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL TrackPopupMenu_Wrapper(HMENU hMenu, DWORD uFlags, int x, int y, int nReserved, HWND hWnd, RECT* prcRect) {
  trace_print("Calling TrackPopupMenu\n");
  BOOL result_ = TrackPopupMenu(hMenu, uFlags, x, y, nReserved, hWnd, prcRect);
  trace_print("TrackPopupMenu returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL TrackPopupMenuEx_Wrapper(HMENU hMenu, unsigned long uFlags, int x, int y, HWND hwnd, TPMPARAMS* lptpm) {
  trace_print("Calling TrackPopupMenuEx\n");
  BOOL result_ = TrackPopupMenuEx(hMenu, uFlags, x, y, hwnd, lptpm);
  trace_print("TrackPopupMenuEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int TranslateAcceleratorW_Wrapper(HWND hWnd, HACCEL hAccTable, MSG* lpMsg) {
  trace_print("Calling TranslateAcceleratorW\n");
  int result_ = TranslateAcceleratorW(hWnd, hAccTable, lpMsg);
  trace_print("TranslateAcceleratorW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL UnhookWindowsHookEx_Wrapper(HHOOK hhk) {
  trace_print("Calling UnhookWindowsHookEx\n");
  BOOL result_ = UnhookWindowsHookEx(hhk);
  trace_print("UnhookWindowsHookEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL UnloadKeyboardLayout_Wrapper(HKL hkl) {
  trace_print("Calling UnloadKeyboardLayout\n");
  BOOL result_ = UnloadKeyboardLayout(hkl);
  trace_print("UnloadKeyboardLayout returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL UnregisterClassW_Wrapper(PCWSTR lpClassName, HINSTANCE hInstance) {
  trace_print("Calling UnregisterClassW\n");
  BOOL result_ = UnregisterClassW(lpClassName, hInstance);
  trace_print("UnregisterClassW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL UnregisterDeviceNotification_Wrapper(HDEVNOTIFY handle) {
  trace_print("Calling UnregisterDeviceNotification\n");
  BOOL result_ = UnregisterDeviceNotification(handle);
  trace_print("UnregisterDeviceNotification returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL UnregisterHotKey_Wrapper(HWND hWnd, int id) {
  trace_print("Calling UnregisterHotKey\n");
  BOOL result_ = UnregisterHotKey(hWnd, id);
  trace_print("UnregisterHotKey returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL UnregisterPowerSettingNotification_Wrapper(HPOWERNOTIFY handle) {
  trace_print("Calling UnregisterPowerSettingNotification\n");
  BOOL result_ = UnregisterPowerSettingNotification(handle);
  trace_print("UnregisterPowerSettingNotification returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL UnregisterTouchWindow_Wrapper(HWND hwnd) {
  trace_print("Calling UnregisterTouchWindow\n");
  BOOL result_ = UnregisterTouchWindow(hwnd);
  trace_print("UnregisterTouchWindow returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL UserHandleGrantAccess_Wrapper(HANDLE hUserHandle, HANDLE hJob, BOOL bGrant) {
  trace_print("Calling UserHandleGrantAccess\n");
  BOOL result_ = UserHandleGrantAccess(hUserHandle, hJob, bGrant);
  trace_print("UserHandleGrantAccess returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL WaitMessage_Wrapper() {
  trace_print("Calling WaitMessage\n");
  BOOL result_ = WaitMessage();
  trace_print("WaitMessage returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
