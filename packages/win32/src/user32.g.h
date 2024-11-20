// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "win32.h"

MYLIB_EXPORT Win32Result ActivateKeyboardLayout_Wrapper(HKL hkl, DWORD flags);

MYLIB_EXPORT Win32Result AddClipboardFormatListener_Wrapper(HWND hwnd);

MYLIB_EXPORT Win32Result AdjustWindowRect_Wrapper(RECT* lpRect, DWORD dwStyle, BOOL bMenu);

MYLIB_EXPORT Win32Result AdjustWindowRectEx_Wrapper(RECT* lpRect, DWORD dwStyle, BOOL bMenu, DWORD dwExStyle);

MYLIB_EXPORT Win32Result AdjustWindowRectExForDpi_Wrapper(RECT* lpRect, DWORD dwStyle, BOOL bMenu, DWORD dwExStyle, unsigned long dpi);

MYLIB_EXPORT Win32Result AllowSetForegroundWindow_Wrapper(unsigned long dwProcessId);

MYLIB_EXPORT Win32Result AnimateWindow_Wrapper(HWND hWnd, unsigned long dwTime, DWORD dwFlags);

MYLIB_EXPORT Win32Result AppendMenuW_Wrapper(HMENU hMenu, DWORD uFlags, unsigned long long uIDNewItem, PCWSTR lpNewItem);

MYLIB_EXPORT Win32Result ArrangeIconicWindows_Wrapper(HWND hWnd);

MYLIB_EXPORT Win32Result BeginDeferWindowPos_Wrapper(int nNumWindows);

MYLIB_EXPORT Win32Result BlockInput_Wrapper(BOOL fBlockIt);

MYLIB_EXPORT Win32Result BringWindowToTop_Wrapper(HWND hWnd);

MYLIB_EXPORT Win32Result BroadcastSystemMessageW_Wrapper(DWORD flags, DWORD* lpInfo, unsigned long msg, WPARAM wParam, LPARAM lParam);

MYLIB_EXPORT Win32Result BroadcastSystemMessageExW_Wrapper(DWORD flags, DWORD* lpInfo, unsigned long msg, WPARAM wParam, LPARAM lParam, BSMINFO* pbsmInfo);

MYLIB_EXPORT Win32Result CalculatePopupWindowPosition_Wrapper(POINT* anchorPoint, SIZE* windowSize, unsigned long flags, RECT* excludeRect, RECT* popupWindowPosition);

MYLIB_EXPORT Win32Result CascadeWindows_Wrapper(HWND hwndParent, DWORD wHow, RECT* lpRect, unsigned long cKids, HWND* lpKids);

MYLIB_EXPORT Win32Result ChangeWindowMessageFilter_Wrapper(unsigned long message, DWORD dwFlag);

MYLIB_EXPORT Win32Result ChangeWindowMessageFilterEx_Wrapper(HWND hwnd, unsigned long message, DWORD action, CHANGEFILTERSTRUCT* pChangeFilterStruct);

MYLIB_EXPORT Win32Result CheckDlgButton_Wrapper(HWND hDlg, int nIDButton, DWORD uCheck);

MYLIB_EXPORT Win32Result CheckRadioButton_Wrapper(HWND hDlg, int nIDFirstButton, int nIDLastButton, int nIDCheckButton);

MYLIB_EXPORT Win32Result ClipCursor_Wrapper(RECT* lpRect);

MYLIB_EXPORT Win32Result CloseClipboard_Wrapper();

MYLIB_EXPORT Win32Result CloseDesktop_Wrapper(HDESK hDesktop);

MYLIB_EXPORT Win32Result CloseGestureInfoHandle_Wrapper(HGESTUREINFO hGestureInfo);

MYLIB_EXPORT Win32Result CloseTouchInputHandle_Wrapper(HTOUCHINPUT hTouchInput);

MYLIB_EXPORT Win32Result CloseWindow_Wrapper(HWND hWnd);

MYLIB_EXPORT Win32Result CloseWindowStation_Wrapper(HWINSTA hWinSta);

MYLIB_EXPORT Win32Result CopyIcon_Wrapper(HICON hIcon);

MYLIB_EXPORT Win32Result CopyImage_Wrapper(HANDLE h, DWORD type, int cx, int cy, DWORD flags);

MYLIB_EXPORT Win32Result CountClipboardFormats_Wrapper();

MYLIB_EXPORT Win32Result CreateAcceleratorTableW_Wrapper(ACCEL* paccel, int cAccel);

MYLIB_EXPORT Win32Result CreateCaret_Wrapper(HWND hWnd, HBITMAP hBitmap, int nWidth, int nHeight);

MYLIB_EXPORT Win32Result CreateCursor_Wrapper(HINSTANCE hInst, int xHotSpot, int yHotSpot, int nWidth, int nHeight, void* pvANDPlane, void* pvXORPlane);

MYLIB_EXPORT Win32Result CreateDesktopW_Wrapper(PCWSTR lpszDesktop, PCWSTR lpszDevice, DEVMODEW* pDevmode, DWORD dwFlags, unsigned long dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa);

MYLIB_EXPORT Win32Result CreateDesktopExW_Wrapper(PCWSTR lpszDesktop, PCWSTR lpszDevice, DEVMODEW* pDevmode, DWORD dwFlags, unsigned long dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa, unsigned long ulHeapSize, void* pvoid);

MYLIB_EXPORT Win32Result CreateDialogIndirectParamW_Wrapper(HINSTANCE hInstance, DLGTEMPLATE* lpTemplate, HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam);

MYLIB_EXPORT Win32Result CreateIcon_Wrapper(HINSTANCE hInstance, int nWidth, int nHeight, unsigned char cPlanes, unsigned char cBitsPixel, unsigned char* lpbANDbits, unsigned char* lpbXORbits);

MYLIB_EXPORT Win32Result CreateIconFromResource_Wrapper(unsigned char* presbits, unsigned long dwResSize, BOOL fIcon, unsigned long dwVer);

MYLIB_EXPORT Win32Result CreateIconFromResourceEx_Wrapper(unsigned char* presbits, unsigned long dwResSize, BOOL fIcon, unsigned long dwVer, int cxDesired, int cyDesired, DWORD flags);

MYLIB_EXPORT Win32Result CreateIconIndirect_Wrapper(ICONINFO* piconinfo);

MYLIB_EXPORT Win32Result CreateMDIWindowW_Wrapper(PCWSTR lpClassName, PCWSTR lpWindowName, DWORD dwStyle, int x, int y, int nWidth, int nHeight, HWND hWndParent, HINSTANCE hInstance, LPARAM lParam);

MYLIB_EXPORT Win32Result CreateMenu_Wrapper();

MYLIB_EXPORT Win32Result CreatePopupMenu_Wrapper();

MYLIB_EXPORT Win32Result CreateWindowExW_Wrapper(DWORD dwExStyle, PCWSTR lpClassName, PCWSTR lpWindowName, DWORD dwStyle, int x, int y, int nWidth, int nHeight, HWND hWndParent, HMENU hMenu, HINSTANCE hInstance, void* lpParam);

MYLIB_EXPORT Win32Result CreateWindowStationW_Wrapper(PCWSTR lpwinsta, unsigned long dwFlags, unsigned long dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa);

MYLIB_EXPORT Win32Result DeferWindowPos_Wrapper(HDWP hWinPosInfo, HWND hWnd, HWND hWndInsertAfter, int x, int y, int cx, int cy, DWORD uFlags);

MYLIB_EXPORT Win32Result DeleteMenu_Wrapper(HMENU hMenu, unsigned long uPosition, DWORD uFlags);

MYLIB_EXPORT Win32Result DestroyCaret_Wrapper();

MYLIB_EXPORT Win32Result DestroyCursor_Wrapper(HCURSOR hCursor);

MYLIB_EXPORT Win32Result DestroyIcon_Wrapper(HICON hIcon);

MYLIB_EXPORT Win32Result DestroyMenu_Wrapper(HMENU hMenu);

MYLIB_EXPORT Win32Result DestroyWindow_Wrapper(HWND hWnd);

MYLIB_EXPORT Win32Result DialogBoxIndirectParamW_Wrapper(HINSTANCE hInstance, DLGTEMPLATE* hDialogTemplate, HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam);

MYLIB_EXPORT Win32Result DrawIcon_Wrapper(HDC hDC, int x, int y, HICON hIcon);

MYLIB_EXPORT Win32Result EmptyClipboard_Wrapper();

MYLIB_EXPORT Win32Result EnableMouseInPointer_Wrapper(BOOL fEnable);

MYLIB_EXPORT Win32Result EnableNonClientDpiScaling_Wrapper(HWND hwnd);

MYLIB_EXPORT Win32Result EnableScrollBar_Wrapper(HWND hWnd, unsigned long wSBflags, DWORD wArrows);

MYLIB_EXPORT Win32Result EndDeferWindowPos_Wrapper(HDWP hWinPosInfo);

MYLIB_EXPORT Win32Result EndDialog_Wrapper(HWND hDlg, long long nResult);

MYLIB_EXPORT Win32Result EndMenu_Wrapper();

MYLIB_EXPORT Win32Result EnumClipboardFormats_Wrapper(unsigned long format);

MYLIB_EXPORT Win32Result EnumDesktopWindows_Wrapper(HDESK hDesktop, WNDENUMPROC lpfn, LPARAM lParam);

MYLIB_EXPORT Win32Result EnumWindows_Wrapper(WNDENUMPROC lpEnumFunc, LPARAM lParam);

MYLIB_EXPORT Win32Result FindWindowW_Wrapper(PCWSTR lpClassName, PCWSTR lpWindowName);

MYLIB_EXPORT Win32Result FindWindowExW_Wrapper(HWND hWndParent, HWND hWndChildAfter, PCWSTR lpszClass, PCWSTR lpszWindow);

MYLIB_EXPORT Win32Result GetAltTabInfoW_Wrapper(HWND hwnd, int iItem, ALTTABINFO* pati, PWSTR pszItemText, unsigned long cchItemText);

MYLIB_EXPORT Win32Result GetCaretBlinkTime_Wrapper();

MYLIB_EXPORT Win32Result GetCaretPos_Wrapper(POINT* lpPoint);

MYLIB_EXPORT Win32Result GetClassInfoW_Wrapper(HINSTANCE hInstance, PCWSTR lpClassName, WNDCLASSW* lpWndClass);

MYLIB_EXPORT Win32Result GetClassInfoExW_Wrapper(HINSTANCE hInstance, PCWSTR lpszClass, WNDCLASSEXW* lpwcx);

MYLIB_EXPORT Win32Result GetClassLongPtrW_Wrapper(HWND hWnd, LONG nIndex);

MYLIB_EXPORT Win32Result GetClassNameW_Wrapper(HWND hWnd, PWSTR lpClassName, int nMaxCount);

MYLIB_EXPORT Win32Result GetClientRect_Wrapper(HWND hWnd, RECT* lpRect);

MYLIB_EXPORT Win32Result GetClipboardData_Wrapper(unsigned long uFormat);

MYLIB_EXPORT Win32Result GetClipboardFormatNameW_Wrapper(unsigned long format, PWSTR lpszFormatName, int cchMaxCount);

MYLIB_EXPORT Win32Result GetClipboardOwner_Wrapper();

MYLIB_EXPORT Win32Result GetClipboardViewer_Wrapper();

MYLIB_EXPORT Win32Result GetClipCursor_Wrapper(RECT* lpRect);

MYLIB_EXPORT Win32Result GetCursorInfo_Wrapper(CURSORINFO* pci);

MYLIB_EXPORT Win32Result GetCursorPos_Wrapper(POINT* lpPoint);

MYLIB_EXPORT Win32Result GetDialogControlDpiChangeBehavior_Wrapper(HWND hWnd);

MYLIB_EXPORT Win32Result GetDialogDpiChangeBehavior_Wrapper(HWND hDlg);

MYLIB_EXPORT Win32Result GetDlgItem_Wrapper(HWND hDlg, int nIDDlgItem);

MYLIB_EXPORT Win32Result GetDlgItemInt_Wrapper(HWND hDlg, int nIDDlgItem, BOOL* lpTranslated, BOOL bSigned);

MYLIB_EXPORT Win32Result GetDlgItemTextW_Wrapper(HWND hDlg, int nIDDlgItem, PWSTR lpString, int cchMax);

MYLIB_EXPORT Win32Result GetGestureConfig_Wrapper(HWND hwnd, unsigned long dwReserved, unsigned long dwFlags, unsigned long* pcIDs, GESTURECONFIG* pGestureConfig, unsigned long cbSize);

MYLIB_EXPORT Win32Result GetGestureExtraArgs_Wrapper(HGESTUREINFO hGestureInfo, unsigned long cbExtraArgs, unsigned char* pExtraArgs);

MYLIB_EXPORT Win32Result GetGestureInfo_Wrapper(HGESTUREINFO hGestureInfo, GESTUREINFO* pGestureInfo);

MYLIB_EXPORT Win32Result GetGUIThreadInfo_Wrapper(unsigned long idThread, GUITHREADINFO* pgui);

MYLIB_EXPORT Win32Result GetIconInfo_Wrapper(HICON hIcon, ICONINFO* piconinfo);

MYLIB_EXPORT Win32Result GetKeyboardLayoutList_Wrapper(int nBuff, HKL* lpList);

MYLIB_EXPORT Win32Result GetKeyboardLayoutNameW_Wrapper(PWSTR pwszKLID);

MYLIB_EXPORT Win32Result GetKeyboardState_Wrapper(unsigned char* lpKeyState);

MYLIB_EXPORT Win32Result GetKeyboardType_Wrapper(int nTypeFlag);

MYLIB_EXPORT Win32Result GetKeyNameTextW_Wrapper(int lParam, PWSTR lpString, int cchSize);

MYLIB_EXPORT Win32Result GetLayeredWindowAttributes_Wrapper(HWND hwnd, COLORREF* pcrKey, unsigned char* pbAlpha, DWORD* pdwFlags);

MYLIB_EXPORT Win32Result GetMenuBarInfo_Wrapper(HWND hwnd, LONG idObject, int idItem, MENUBARINFO* pmbi);

MYLIB_EXPORT Win32Result GetMenuDefaultItem_Wrapper(HMENU hMenu, unsigned long fByPos, DWORD gmdiFlags);

MYLIB_EXPORT Win32Result GetMenuInfo_Wrapper(HMENU param0, MENUINFO* param1);

MYLIB_EXPORT Win32Result GetMenuItemCount_Wrapper(HMENU hMenu);

MYLIB_EXPORT Win32Result GetMenuItemInfoW_Wrapper(HMENU hmenu, unsigned long item, BOOL fByPosition, MENUITEMINFOW* lpmii);

MYLIB_EXPORT Win32Result GetMenuItemRect_Wrapper(HWND hWnd, HMENU hMenu, unsigned long uItem, RECT* lprcItem);

MYLIB_EXPORT Win32Result GetMessageW_Wrapper(MSG* lpMsg, HWND hWnd, unsigned long wMsgFilterMin, unsigned long wMsgFilterMax);

MYLIB_EXPORT Win32Result GetMouseMovePointsEx_Wrapper(unsigned long cbSize, MOUSEMOVEPOINT* lppt, MOUSEMOVEPOINT* lpptBuf, int nBufPoints, DWORD resolution);

MYLIB_EXPORT Win32Result GetNextDlgGroupItem_Wrapper(HWND hDlg, HWND hCtl, BOOL bPrevious);

MYLIB_EXPORT Win32Result GetNextDlgTabItem_Wrapper(HWND hDlg, HWND hCtl, BOOL bPrevious);

MYLIB_EXPORT Win32Result GetOpenClipboardWindow_Wrapper();

MYLIB_EXPORT Win32Result GetParent_Wrapper(HWND hWnd);

MYLIB_EXPORT Win32Result GetPhysicalCursorPos_Wrapper(POINT* lpPoint);

MYLIB_EXPORT Win32Result GetPointerCursorId_Wrapper(unsigned long pointerId, unsigned long* cursorId);

MYLIB_EXPORT Win32Result GetPointerFrameInfo_Wrapper(unsigned long pointerId, unsigned long* pointerCount, POINTER_INFO* pointerInfo);

MYLIB_EXPORT Win32Result GetPointerFrameInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, unsigned long* pointerCount, POINTER_INFO* pointerInfo);

MYLIB_EXPORT Win32Result GetPointerFramePenInfo_Wrapper(unsigned long pointerId, unsigned long* pointerCount, POINTER_PEN_INFO* penInfo);

MYLIB_EXPORT Win32Result GetPointerFramePenInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, unsigned long* pointerCount, POINTER_PEN_INFO* penInfo);

MYLIB_EXPORT Win32Result GetPointerFrameTouchInfo_Wrapper(unsigned long pointerId, unsigned long* pointerCount, POINTER_TOUCH_INFO* touchInfo);

MYLIB_EXPORT Win32Result GetPointerFrameTouchInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, unsigned long* pointerCount, POINTER_TOUCH_INFO* touchInfo);

MYLIB_EXPORT Win32Result GetPointerInfo_Wrapper(unsigned long pointerId, POINTER_INFO* pointerInfo);

MYLIB_EXPORT Win32Result GetPointerInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, POINTER_INFO* pointerInfo);

MYLIB_EXPORT Win32Result GetPointerInputTransform_Wrapper(unsigned long pointerId, unsigned long historyCount, INPUT_TRANSFORM* inputTransform);

MYLIB_EXPORT Win32Result GetPointerPenInfo_Wrapper(unsigned long pointerId, POINTER_PEN_INFO* penInfo);

MYLIB_EXPORT Win32Result GetPointerPenInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, POINTER_PEN_INFO* penInfo);

MYLIB_EXPORT Win32Result GetPointerTouchInfo_Wrapper(unsigned long pointerId, POINTER_TOUCH_INFO* touchInfo);

MYLIB_EXPORT Win32Result GetPointerTouchInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, POINTER_TOUCH_INFO* touchInfo);

MYLIB_EXPORT Win32Result GetPointerType_Wrapper(unsigned long pointerId, LONG* pointerType);

MYLIB_EXPORT Win32Result GetPriorityClipboardFormat_Wrapper(unsigned long* paFormatPriorityList, int cFormats);

MYLIB_EXPORT Win32Result GetProcessWindowStation_Wrapper();

MYLIB_EXPORT Win32Result GetRawInputBuffer_Wrapper(RAWINPUT* pData, unsigned long* pcbSize, unsigned long cbSizeHeader);

MYLIB_EXPORT Win32Result GetRawInputDeviceInfoW_Wrapper(HANDLE hDevice, DWORD uiCommand, void* pData, unsigned long* pcbSize);

MYLIB_EXPORT Win32Result GetRawInputDeviceList_Wrapper(RAWINPUTDEVICELIST* pRawInputDeviceList, unsigned long* puiNumDevices, unsigned long cbSize);

MYLIB_EXPORT Win32Result GetRegisteredRawInputDevices_Wrapper(RAWINPUTDEVICE* pRawInputDevices, unsigned long* puiNumDevices, unsigned long cbSize);

MYLIB_EXPORT Win32Result GetScrollBarInfo_Wrapper(HWND hwnd, LONG idObject, SCROLLBARINFO* psbi);

MYLIB_EXPORT Win32Result GetScrollInfo_Wrapper(HWND hwnd, LONG nBar, SCROLLINFO* lpsi);

MYLIB_EXPORT Win32Result GetSystemMetricsForDpi_Wrapper(LONG nIndex, unsigned long dpi);

MYLIB_EXPORT Win32Result GetThreadDesktop_Wrapper(unsigned long dwThreadId);

MYLIB_EXPORT Win32Result GetTitleBarInfo_Wrapper(HWND hwnd, TITLEBARINFO* pti);

MYLIB_EXPORT Win32Result GetTopWindow_Wrapper(HWND hWnd);

MYLIB_EXPORT Win32Result GetTouchInputInfo_Wrapper(HTOUCHINPUT hTouchInput, unsigned long cInputs, TOUCHINPUT* pInputs, int cbSize);

MYLIB_EXPORT Win32Result GetUpdatedClipboardFormats_Wrapper(unsigned long* lpuiFormats, unsigned long cFormats, unsigned long* pcFormatsOut);

MYLIB_EXPORT Win32Result GetUserObjectInformationW_Wrapper(HANDLE hObj, LONG nIndex, void* pvInfo, unsigned long nLength, unsigned long* lpnLengthNeeded);

MYLIB_EXPORT Win32Result GetWindow_Wrapper(HWND hWnd, DWORD uCmd);

MYLIB_EXPORT Win32Result GetWindowDisplayAffinity_Wrapper(HWND hWnd, unsigned long* pdwAffinity);

MYLIB_EXPORT Win32Result GetWindowInfo_Wrapper(HWND hwnd, WINDOWINFO* pwi);

MYLIB_EXPORT Win32Result GetWindowLongPtrW_Wrapper(HWND hWnd, LONG nIndex);

MYLIB_EXPORT Win32Result GetWindowPlacement_Wrapper(HWND hWnd, WINDOWPLACEMENT* lpwndpl);

MYLIB_EXPORT Win32Result GetWindowRect_Wrapper(HWND hWnd, RECT* lpRect);

MYLIB_EXPORT Win32Result GetWindowTextW_Wrapper(HWND hWnd, PWSTR lpString, int nMaxCount);

MYLIB_EXPORT Win32Result GetWindowTextLengthW_Wrapper(HWND hWnd);

MYLIB_EXPORT Win32Result HideCaret_Wrapper(HWND hWnd);

MYLIB_EXPORT Win32Result InsertMenuW_Wrapper(HMENU hMenu, unsigned long uPosition, DWORD uFlags, unsigned long long uIDNewItem, PCWSTR lpNewItem);

MYLIB_EXPORT Win32Result InsertMenuItemW_Wrapper(HMENU hmenu, unsigned long item, BOOL fByPosition, MENUITEMINFOW* lpmi);

MYLIB_EXPORT Win32Result IsClipboardFormatAvailable_Wrapper(unsigned long format);

MYLIB_EXPORT Win32Result IsImmersiveProcess_Wrapper(HANDLE hProcess);

MYLIB_EXPORT Win32Result KillTimer_Wrapper(HWND hWnd, unsigned long long uIDEvent);

MYLIB_EXPORT Win32Result LoadAcceleratorsW_Wrapper(HINSTANCE hInstance, PCWSTR lpTableName);

MYLIB_EXPORT Win32Result LoadCursorW_Wrapper(HINSTANCE hInstance, PCWSTR lpCursorName);

MYLIB_EXPORT Win32Result LoadCursorFromFileW_Wrapper(PCWSTR lpFileName);

MYLIB_EXPORT Win32Result LoadIconW_Wrapper(HINSTANCE hInstance, PCWSTR lpIconName);

MYLIB_EXPORT Win32Result LoadImageW_Wrapper(HINSTANCE hInst, PCWSTR name, DWORD type, int cx, int cy, DWORD fuLoad);

MYLIB_EXPORT Win32Result LoadKeyboardLayoutW_Wrapper(PCWSTR pwszKLID, DWORD flags);

MYLIB_EXPORT Win32Result LoadMenuW_Wrapper(HINSTANCE hInstance, PCWSTR lpMenuName);

MYLIB_EXPORT Win32Result LoadMenuIndirectW_Wrapper(void* lpMenuTemplate);

MYLIB_EXPORT Win32Result LoadStringW_Wrapper(HINSTANCE hInstance, unsigned long uID, PWSTR lpBuffer, int cchBufferMax);

MYLIB_EXPORT Win32Result LockSetForegroundWindow_Wrapper(DWORD uLockCode);

MYLIB_EXPORT Win32Result LockWorkStation_Wrapper();

MYLIB_EXPORT Win32Result LookupIconIdFromDirectory_Wrapper(unsigned char* presbits, BOOL fIcon);

MYLIB_EXPORT Win32Result LookupIconIdFromDirectoryEx_Wrapper(unsigned char* presbits, BOOL fIcon, int cxDesired, int cyDesired, DWORD flags);

MYLIB_EXPORT Win32Result MapDialogRect_Wrapper(HWND hDlg, RECT* lpRect);

MYLIB_EXPORT Win32Result MessageBeep_Wrapper(DWORD uType);

MYLIB_EXPORT Win32Result MessageBoxW_Wrapper(HWND hWnd, PCWSTR lpText, PCWSTR lpCaption, DWORD uType);

MYLIB_EXPORT Win32Result MessageBoxExW_Wrapper(HWND hWnd, PCWSTR lpText, PCWSTR lpCaption, DWORD uType, unsigned short wLanguageId);

MYLIB_EXPORT Win32Result ModifyMenuW_Wrapper(HMENU hMnu, unsigned long uPosition, DWORD uFlags, unsigned long long uIDNewItem, PCWSTR lpNewItem);

MYLIB_EXPORT Win32Result MoveWindow_Wrapper(HWND hWnd, int x, int y, int nWidth, int nHeight, BOOL bRepaint);

MYLIB_EXPORT Win32Result MsgWaitForMultipleObjects_Wrapper(unsigned long nCount, HANDLE* pHandles, BOOL fWaitAll, unsigned long dwMilliseconds, DWORD dwWakeMask);

MYLIB_EXPORT Win32Result MsgWaitForMultipleObjectsEx_Wrapper(unsigned long nCount, HANDLE* pHandles, unsigned long dwMilliseconds, DWORD dwWakeMask, DWORD dwFlags);

MYLIB_EXPORT Win32Result OpenClipboard_Wrapper(HWND hWndNewOwner);

MYLIB_EXPORT Win32Result OpenDesktopW_Wrapper(PCWSTR lpszDesktop, DWORD dwFlags, BOOL fInherit, unsigned long dwDesiredAccess);

MYLIB_EXPORT Win32Result OpenIcon_Wrapper(HWND hWnd);

MYLIB_EXPORT Win32Result OpenInputDesktop_Wrapper(DWORD dwFlags, BOOL fInherit, DWORD dwDesiredAccess);

MYLIB_EXPORT Win32Result OpenWindowStationW_Wrapper(PCWSTR lpszWinSta, BOOL fInherit, unsigned long dwDesiredAccess);

MYLIB_EXPORT Win32Result PostMessageW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam);

MYLIB_EXPORT Win32Result PostThreadMessageW_Wrapper(unsigned long idThread, unsigned long msg, WPARAM wParam, LPARAM lParam);

MYLIB_EXPORT Win32Result RegisterClassW_Wrapper(WNDCLASSW* lpWndClass);

MYLIB_EXPORT Win32Result RegisterClassExW_Wrapper(WNDCLASSEXW* param0);

MYLIB_EXPORT Win32Result RegisterClipboardFormatW_Wrapper(PCWSTR lpszFormat);

MYLIB_EXPORT Win32Result RegisterDeviceNotificationW_Wrapper(HANDLE hRecipient, void* notificationFilter, DWORD flags);

MYLIB_EXPORT Win32Result RegisterHotKey_Wrapper(HWND hWnd, int id, DWORD fsModifiers, unsigned long vk);

MYLIB_EXPORT Win32Result RegisterPowerSettingNotification_Wrapper(HANDLE hRecipient, GUID* powerSettingGuid, DWORD flags);

MYLIB_EXPORT Win32Result RegisterRawInputDevices_Wrapper(RAWINPUTDEVICE* pRawInputDevices, unsigned long uiNumDevices, unsigned long cbSize);

MYLIB_EXPORT Win32Result RegisterTouchHitTestingWindow_Wrapper(HWND hwnd, unsigned long value);

MYLIB_EXPORT Win32Result RegisterTouchWindow_Wrapper(HWND hwnd, DWORD ulFlags);

MYLIB_EXPORT Win32Result RegisterWindowMessageW_Wrapper(PCWSTR lpString);

MYLIB_EXPORT Win32Result ReleaseCapture_Wrapper();

MYLIB_EXPORT Win32Result RemoveClipboardFormatListener_Wrapper(HWND hwnd);

MYLIB_EXPORT Win32Result RemoveMenu_Wrapper(HMENU hMenu, unsigned long uPosition, DWORD uFlags);

MYLIB_EXPORT Win32Result RemovePropW_Wrapper(HWND hWnd, PCWSTR lpString);

MYLIB_EXPORT Win32Result ScrollDC_Wrapper(HDC hDC, int dx, int dy, RECT* lprcScroll, RECT* lprcClip, HRGN hrgnUpdate, RECT* lprcUpdate);

MYLIB_EXPORT Win32Result ScrollWindow_Wrapper(HWND hWnd, int xAmount, int yAmount, RECT* lpRect, RECT* lpClipRect);

MYLIB_EXPORT Win32Result ScrollWindowEx_Wrapper(HWND hWnd, int dx, int dy, RECT* prcScroll, RECT* prcClip, HRGN hrgnUpdate, RECT* prcUpdate, DWORD flags);

MYLIB_EXPORT Win32Result SendInput_Wrapper(unsigned long cInputs, INPUT* pInputs, int cbSize);

MYLIB_EXPORT Win32Result SendMessageW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam);

MYLIB_EXPORT Win32Result SendMessageCallbackW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam, SENDASYNCPROC lpResultCallBack, unsigned long long dwData);

MYLIB_EXPORT Win32Result SendMessageTimeoutW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam, DWORD fuFlags, unsigned long uTimeout, unsigned long long* lpdwResult);

MYLIB_EXPORT Win32Result SendNotifyMessageW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam);

MYLIB_EXPORT Win32Result SetActiveWindow_Wrapper(HWND hWnd);

MYLIB_EXPORT Win32Result SetCaretBlinkTime_Wrapper(unsigned long uMSeconds);

MYLIB_EXPORT Win32Result SetCaretPos_Wrapper(int x, int y);

MYLIB_EXPORT Win32Result SetClassLongPtrW_Wrapper(HWND hWnd, LONG nIndex, long long dwNewLong);

MYLIB_EXPORT Win32Result SetClipboardData_Wrapper(unsigned long uFormat, HANDLE hMem);

MYLIB_EXPORT Win32Result SetClipboardViewer_Wrapper(HWND hWndNewViewer);

MYLIB_EXPORT Win32Result SetCoalescableTimer_Wrapper(HWND hWnd, unsigned long long nIDEvent, unsigned long uElapse, TIMERPROC lpTimerFunc, unsigned long uToleranceDelay);

MYLIB_EXPORT Win32Result SetCursorPos_Wrapper(int x, int y);

MYLIB_EXPORT Win32Result SetDialogControlDpiChangeBehavior_Wrapper(HWND hWnd, LONG mask, LONG values);

MYLIB_EXPORT Win32Result SetDialogDpiChangeBehavior_Wrapper(HWND hDlg, LONG mask, LONG values);

MYLIB_EXPORT Win32Result SetDlgItemInt_Wrapper(HWND hDlg, int nIDDlgItem, unsigned long uValue, BOOL bSigned);

MYLIB_EXPORT Win32Result SetDlgItemTextW_Wrapper(HWND hDlg, int nIDDlgItem, PCWSTR lpString);

MYLIB_EXPORT Win32Result SetDoubleClickTime_Wrapper(unsigned long param0);

MYLIB_EXPORT Win32Result SetFocus_Wrapper(HWND hWnd);

MYLIB_EXPORT Win32Result SetGestureConfig_Wrapper(HWND hwnd, unsigned long dwReserved, unsigned long cIDs, GESTURECONFIG* pGestureConfig, unsigned long cbSize);

MYLIB_EXPORT Win32Result SetKeyboardState_Wrapper(unsigned char* lpKeyState);

MYLIB_EXPORT Win32Result SetLayeredWindowAttributes_Wrapper(HWND hwnd, COLORREF crKey, unsigned char bAlpha, DWORD dwFlags);

MYLIB_EXPORT Win32Result SetMenu_Wrapper(HWND hWnd, HMENU hMenu);

MYLIB_EXPORT Win32Result SetMenuDefaultItem_Wrapper(HMENU hMenu, unsigned long uItem, unsigned long fByPos);

MYLIB_EXPORT Win32Result SetMenuInfo_Wrapper(HMENU param0, MENUINFO* param1);

MYLIB_EXPORT Win32Result SetMenuItemBitmaps_Wrapper(HMENU hMenu, unsigned long uPosition, DWORD uFlags, HBITMAP hBitmapUnchecked, HBITMAP hBitmapChecked);

MYLIB_EXPORT Win32Result SetMenuItemInfoW_Wrapper(HMENU hmenu, unsigned long item, BOOL fByPositon, MENUITEMINFOW* lpmii);

MYLIB_EXPORT Win32Result SetParent_Wrapper(HWND hWndChild, HWND hWndNewParent);

MYLIB_EXPORT Win32Result SetPhysicalCursorPos_Wrapper(int x, int y);

MYLIB_EXPORT Win32Result SetProcessDpiAwarenessContext_Wrapper(DPI_AWARENESS_CONTEXT value);

MYLIB_EXPORT Win32Result SetPropW_Wrapper(HWND hWnd, PCWSTR lpString, HANDLE hData);

MYLIB_EXPORT Win32Result SetSysColors_Wrapper(int cElements, int* lpaElements, COLORREF* lpaRgbValues);

MYLIB_EXPORT Win32Result SetSystemCursor_Wrapper(HCURSOR hcur, DWORD id);

MYLIB_EXPORT Win32Result SetTimer_Wrapper(HWND hWnd, unsigned long long nIDEvent, unsigned long uElapse, TIMERPROC lpTimerFunc);

MYLIB_EXPORT Win32Result SetUserObjectInformationW_Wrapper(HANDLE hObj, int nIndex, void* pvInfo, unsigned long nLength);

MYLIB_EXPORT Win32Result SetWindowDisplayAffinity_Wrapper(HWND hWnd, DWORD dwAffinity);

MYLIB_EXPORT Win32Result SetWindowLongPtrW_Wrapper(HWND hWnd, LONG nIndex, long long dwNewLong);

MYLIB_EXPORT Win32Result SetWindowPlacement_Wrapper(HWND hWnd, WINDOWPLACEMENT* lpwndpl);

MYLIB_EXPORT Win32Result SetWindowPos_Wrapper(HWND hWnd, HWND hWndInsertAfter, int x, int y, int cx, int cy, DWORD uFlags);

MYLIB_EXPORT Win32Result SetWindowsHookExW_Wrapper(LONG idHook, HOOKPROC lpfn, HINSTANCE hmod, unsigned long dwThreadId);

MYLIB_EXPORT Win32Result SetWindowTextW_Wrapper(HWND hWnd, PCWSTR lpString);

MYLIB_EXPORT Win32Result ShowCaret_Wrapper(HWND hWnd);

MYLIB_EXPORT Win32Result ShowOwnedPopups_Wrapper(HWND hWnd, BOOL fShow);

MYLIB_EXPORT Win32Result SkipPointerFrameMessages_Wrapper(unsigned long pointerId);

MYLIB_EXPORT Win32Result SwitchDesktop_Wrapper(HDESK hDesktop);

MYLIB_EXPORT Win32Result SystemParametersInfoW_Wrapper(DWORD uiAction, unsigned long uiParam, void* pvParam, DWORD fWinIni);

MYLIB_EXPORT Win32Result SystemParametersInfoForDpi_Wrapper(unsigned long uiAction, unsigned long uiParam, void* pvParam, unsigned long fWinIni, unsigned long dpi);

MYLIB_EXPORT Win32Result TileWindows_Wrapper(HWND hwndParent, DWORD wHow, RECT* lpRect, unsigned long cKids, HWND* lpKids);

MYLIB_EXPORT Win32Result TrackPopupMenu_Wrapper(HMENU hMenu, DWORD uFlags, int x, int y, int nReserved, HWND hWnd, RECT* prcRect);

MYLIB_EXPORT Win32Result TrackPopupMenuEx_Wrapper(HMENU hMenu, unsigned long uFlags, int x, int y, HWND hwnd, TPMPARAMS* lptpm);

MYLIB_EXPORT Win32Result TranslateAcceleratorW_Wrapper(HWND hWnd, HACCEL hAccTable, MSG* lpMsg);

MYLIB_EXPORT Win32Result UnhookWindowsHookEx_Wrapper(HHOOK hhk);

MYLIB_EXPORT Win32Result UnloadKeyboardLayout_Wrapper(HKL hkl);

MYLIB_EXPORT Win32Result UnregisterClassW_Wrapper(PCWSTR lpClassName, HINSTANCE hInstance);

MYLIB_EXPORT Win32Result UnregisterDeviceNotification_Wrapper(HDEVNOTIFY handle);

MYLIB_EXPORT Win32Result UnregisterHotKey_Wrapper(HWND hWnd, int id);

MYLIB_EXPORT Win32Result UnregisterPowerSettingNotification_Wrapper(HPOWERNOTIFY handle);

MYLIB_EXPORT Win32Result UnregisterTouchWindow_Wrapper(HWND hwnd);

MYLIB_EXPORT Win32Result UserHandleGrantAccess_Wrapper(HANDLE hUserHandle, HANDLE hJob, BOOL bGrant);

MYLIB_EXPORT Win32Result WaitMessage_Wrapper();
