// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "win32.h"

MYLIB_EXPORT HKL ActivateKeyboardLayout_Wrapper(HKL hkl, DWORD flags);

MYLIB_EXPORT BOOL AddClipboardFormatListener_Wrapper(HWND hwnd);

MYLIB_EXPORT BOOL AdjustWindowRect_Wrapper(RECT* lpRect, DWORD dwStyle, BOOL bMenu);

MYLIB_EXPORT BOOL AdjustWindowRectEx_Wrapper(RECT* lpRect, DWORD dwStyle, BOOL bMenu, DWORD dwExStyle);

MYLIB_EXPORT BOOL AdjustWindowRectExForDpi_Wrapper(RECT* lpRect, DWORD dwStyle, BOOL bMenu, DWORD dwExStyle, unsigned long dpi);

MYLIB_EXPORT BOOL AllowSetForegroundWindow_Wrapper(unsigned long dwProcessId);

MYLIB_EXPORT BOOL AnimateWindow_Wrapper(HWND hWnd, unsigned long dwTime, DWORD dwFlags);

MYLIB_EXPORT BOOL AppendMenuW_Wrapper(HMENU hMenu, DWORD uFlags, unsigned long long uIDNewItem, PCWSTR lpNewItem);

MYLIB_EXPORT unsigned long ArrangeIconicWindows_Wrapper(HWND hWnd);

MYLIB_EXPORT HDWP BeginDeferWindowPos_Wrapper(int nNumWindows);

MYLIB_EXPORT BOOL BlockInput_Wrapper(BOOL fBlockIt);

MYLIB_EXPORT BOOL BringWindowToTop_Wrapper(HWND hWnd);

MYLIB_EXPORT int BroadcastSystemMessageW_Wrapper(DWORD flags, DWORD* lpInfo, unsigned long msg, WPARAM wParam, LPARAM lParam);

MYLIB_EXPORT int BroadcastSystemMessageExW_Wrapper(DWORD flags, DWORD* lpInfo, unsigned long msg, WPARAM wParam, LPARAM lParam, BSMINFO* pbsmInfo);

MYLIB_EXPORT BOOL CalculatePopupWindowPosition_Wrapper(POINT* anchorPoint, SIZE* windowSize, unsigned long flags, RECT* excludeRect, RECT* popupWindowPosition);

MYLIB_EXPORT unsigned short CascadeWindows_Wrapper(HWND hwndParent, DWORD wHow, RECT* lpRect, unsigned long cKids, HWND* lpKids);

MYLIB_EXPORT BOOL ChangeWindowMessageFilter_Wrapper(unsigned long message, DWORD dwFlag);

MYLIB_EXPORT BOOL ChangeWindowMessageFilterEx_Wrapper(HWND hwnd, unsigned long message, DWORD action, CHANGEFILTERSTRUCT* pChangeFilterStruct);

MYLIB_EXPORT BOOL CheckDlgButton_Wrapper(HWND hDlg, int nIDButton, DWORD uCheck);

MYLIB_EXPORT BOOL CheckRadioButton_Wrapper(HWND hDlg, int nIDFirstButton, int nIDLastButton, int nIDCheckButton);

MYLIB_EXPORT BOOL ClipCursor_Wrapper(RECT* lpRect);

MYLIB_EXPORT BOOL CloseClipboard_Wrapper();

MYLIB_EXPORT BOOL CloseGestureInfoHandle_Wrapper(HGESTUREINFO hGestureInfo);

MYLIB_EXPORT BOOL CloseTouchInputHandle_Wrapper(HTOUCHINPUT hTouchInput);

MYLIB_EXPORT BOOL CloseWindow_Wrapper(HWND hWnd);

MYLIB_EXPORT HICON CopyIcon_Wrapper(HICON hIcon);

MYLIB_EXPORT HANDLE CopyImage_Wrapper(HANDLE h, DWORD type, int cx, int cy, DWORD flags);

MYLIB_EXPORT int CountClipboardFormats_Wrapper();

MYLIB_EXPORT HACCEL CreateAcceleratorTableW_Wrapper(ACCEL* paccel, int cAccel);

MYLIB_EXPORT BOOL CreateCaret_Wrapper(HWND hWnd, HBITMAP hBitmap, int nWidth, int nHeight);

MYLIB_EXPORT HCURSOR CreateCursor_Wrapper(HINSTANCE hInst, int xHotSpot, int yHotSpot, int nWidth, int nHeight, void* pvANDPlane, void* pvXORPlane);

MYLIB_EXPORT HDESK CreateDesktopW_Wrapper(PCWSTR lpszDesktop, PCWSTR lpszDevice, DEVMODEW* pDevmode, DWORD dwFlags, unsigned long dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa);

MYLIB_EXPORT HDESK CreateDesktopExW_Wrapper(PCWSTR lpszDesktop, PCWSTR lpszDevice, DEVMODEW* pDevmode, DWORD dwFlags, unsigned long dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa, unsigned long ulHeapSize, void* pvoid);

MYLIB_EXPORT HWND CreateDialogIndirectParamW_Wrapper(HINSTANCE hInstance, DLGTEMPLATE* lpTemplate, HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam);

MYLIB_EXPORT HICON CreateIcon_Wrapper(HINSTANCE hInstance, int nWidth, int nHeight, unsigned char cPlanes, unsigned char cBitsPixel, unsigned char* lpbANDbits, unsigned char* lpbXORbits);

MYLIB_EXPORT HICON CreateIconFromResource_Wrapper(unsigned char* presbits, unsigned long dwResSize, BOOL fIcon, unsigned long dwVer);

MYLIB_EXPORT HICON CreateIconFromResourceEx_Wrapper(unsigned char* presbits, unsigned long dwResSize, BOOL fIcon, unsigned long dwVer, int cxDesired, int cyDesired, DWORD flags);

MYLIB_EXPORT HICON CreateIconIndirect_Wrapper(ICONINFO* piconinfo);

MYLIB_EXPORT HWND CreateMDIWindowW_Wrapper(PCWSTR lpClassName, PCWSTR lpWindowName, DWORD dwStyle, int x, int y, int nWidth, int nHeight, HWND hWndParent, HINSTANCE hInstance, LPARAM lParam);

MYLIB_EXPORT HMENU CreateMenu_Wrapper();

MYLIB_EXPORT HMENU CreatePopupMenu_Wrapper();

MYLIB_EXPORT HWND CreateWindowExW_Wrapper(DWORD dwExStyle, PCWSTR lpClassName, PCWSTR lpWindowName, DWORD dwStyle, int x, int y, int nWidth, int nHeight, HWND hWndParent, HMENU hMenu, HINSTANCE hInstance, void* lpParam);

MYLIB_EXPORT HWINSTA CreateWindowStationW_Wrapper(PCWSTR lpwinsta, unsigned long dwFlags, unsigned long dwDesiredAccess, SECURITY_ATTRIBUTES* lpsa);

MYLIB_EXPORT HDWP DeferWindowPos_Wrapper(HDWP hWinPosInfo, HWND hWnd, HWND hWndInsertAfter, int x, int y, int cx, int cy, DWORD uFlags);

MYLIB_EXPORT BOOL DeleteMenu_Wrapper(HMENU hMenu, unsigned long uPosition, DWORD uFlags);

MYLIB_EXPORT BOOL DestroyCaret_Wrapper();

MYLIB_EXPORT BOOL DestroyCursor_Wrapper(HCURSOR hCursor);

MYLIB_EXPORT BOOL DestroyIcon_Wrapper(HICON hIcon);

MYLIB_EXPORT BOOL DestroyMenu_Wrapper(HMENU hMenu);

MYLIB_EXPORT BOOL DestroyWindow_Wrapper(HWND hWnd);

MYLIB_EXPORT long long DialogBoxIndirectParamW_Wrapper(HINSTANCE hInstance, DLGTEMPLATE* hDialogTemplate, HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam);

MYLIB_EXPORT BOOL DrawIcon_Wrapper(HDC hDC, int x, int y, HICON hIcon);

MYLIB_EXPORT BOOL EmptyClipboard_Wrapper();

MYLIB_EXPORT BOOL EnableMouseInPointer_Wrapper(BOOL fEnable);

MYLIB_EXPORT BOOL EnableNonClientDpiScaling_Wrapper(HWND hwnd);

MYLIB_EXPORT BOOL EnableScrollBar_Wrapper(HWND hWnd, unsigned long wSBflags, DWORD wArrows);

MYLIB_EXPORT BOOL EndDeferWindowPos_Wrapper(HDWP hWinPosInfo);

MYLIB_EXPORT BOOL EndDialog_Wrapper(HWND hDlg, long long nResult);

MYLIB_EXPORT BOOL EndMenu_Wrapper();

MYLIB_EXPORT unsigned long EnumClipboardFormats_Wrapper(unsigned long format);

MYLIB_EXPORT BOOL EnumDesktopWindows_Wrapper(HDESK hDesktop, WNDENUMPROC lpfn, LPARAM lParam);

MYLIB_EXPORT BOOL EnumWindows_Wrapper(WNDENUMPROC lpEnumFunc, LPARAM lParam);

MYLIB_EXPORT HWND FindWindowW_Wrapper(PCWSTR lpClassName, PCWSTR lpWindowName);

MYLIB_EXPORT HWND FindWindowExW_Wrapper(HWND hWndParent, HWND hWndChildAfter, PCWSTR lpszClass, PCWSTR lpszWindow);

MYLIB_EXPORT BOOL GetAltTabInfoW_Wrapper(HWND hwnd, int iItem, ALTTABINFO* pati, PWSTR pszItemText, unsigned long cchItemText);

MYLIB_EXPORT unsigned long GetCaretBlinkTime_Wrapper();

MYLIB_EXPORT BOOL GetCaretPos_Wrapper(POINT* lpPoint);

MYLIB_EXPORT BOOL GetClassInfoW_Wrapper(HINSTANCE hInstance, PCWSTR lpClassName, WNDCLASSW* lpWndClass);

MYLIB_EXPORT BOOL GetClassInfoExW_Wrapper(HINSTANCE hInstance, PCWSTR lpszClass, WNDCLASSEXW* lpwcx);

MYLIB_EXPORT unsigned long long GetClassLongPtrW_Wrapper(HWND hWnd, LONG nIndex);

MYLIB_EXPORT int GetClassNameW_Wrapper(HWND hWnd, PWSTR lpClassName, int nMaxCount);

MYLIB_EXPORT BOOL GetClientRect_Wrapper(HWND hWnd, RECT* lpRect);

MYLIB_EXPORT HANDLE GetClipboardData_Wrapper(unsigned long uFormat);

MYLIB_EXPORT int GetClipboardFormatNameW_Wrapper(unsigned long format, PWSTR lpszFormatName, int cchMaxCount);

MYLIB_EXPORT HWND GetClipboardOwner_Wrapper();

MYLIB_EXPORT HWND GetClipboardViewer_Wrapper();

MYLIB_EXPORT BOOL GetClipCursor_Wrapper(RECT* lpRect);

MYLIB_EXPORT BOOL GetCursorInfo_Wrapper(CURSORINFO* pci);

MYLIB_EXPORT BOOL GetCursorPos_Wrapper(POINT* lpPoint);

MYLIB_EXPORT LONG GetDialogControlDpiChangeBehavior_Wrapper(HWND hWnd);

MYLIB_EXPORT LONG GetDialogDpiChangeBehavior_Wrapper(HWND hDlg);

MYLIB_EXPORT HWND GetDlgItem_Wrapper(HWND hDlg, int nIDDlgItem);

MYLIB_EXPORT unsigned long GetDlgItemInt_Wrapper(HWND hDlg, int nIDDlgItem, BOOL* lpTranslated, BOOL bSigned);

MYLIB_EXPORT unsigned long GetDlgItemTextW_Wrapper(HWND hDlg, int nIDDlgItem, PWSTR lpString, int cchMax);

MYLIB_EXPORT BOOL GetGestureConfig_Wrapper(HWND hwnd, unsigned long dwReserved, unsigned long dwFlags, unsigned long* pcIDs, GESTURECONFIG* pGestureConfig, unsigned long cbSize);

MYLIB_EXPORT BOOL GetGestureExtraArgs_Wrapper(HGESTUREINFO hGestureInfo, unsigned long cbExtraArgs, unsigned char* pExtraArgs);

MYLIB_EXPORT BOOL GetGestureInfo_Wrapper(HGESTUREINFO hGestureInfo, GESTUREINFO* pGestureInfo);

MYLIB_EXPORT BOOL GetGUIThreadInfo_Wrapper(unsigned long idThread, GUITHREADINFO* pgui);

MYLIB_EXPORT BOOL GetIconInfo_Wrapper(HICON hIcon, ICONINFO* piconinfo);

MYLIB_EXPORT int GetKeyboardLayoutList_Wrapper(int nBuff, HKL* lpList);

MYLIB_EXPORT BOOL GetKeyboardLayoutNameW_Wrapper(PWSTR pwszKLID);

MYLIB_EXPORT BOOL GetKeyboardState_Wrapper(unsigned char* lpKeyState);

MYLIB_EXPORT int GetKeyboardType_Wrapper(int nTypeFlag);

MYLIB_EXPORT int GetKeyNameTextW_Wrapper(int lParam, PWSTR lpString, int cchSize);

MYLIB_EXPORT BOOL GetLayeredWindowAttributes_Wrapper(HWND hwnd, COLORREF* pcrKey, unsigned char* pbAlpha, DWORD* pdwFlags);

MYLIB_EXPORT BOOL GetMenuBarInfo_Wrapper(HWND hwnd, LONG idObject, int idItem, MENUBARINFO* pmbi);

MYLIB_EXPORT unsigned long GetMenuDefaultItem_Wrapper(HMENU hMenu, unsigned long fByPos, DWORD gmdiFlags);

MYLIB_EXPORT BOOL GetMenuInfo_Wrapper(HMENU param0, MENUINFO* param1);

MYLIB_EXPORT int GetMenuItemCount_Wrapper(HMENU hMenu);

MYLIB_EXPORT BOOL GetMenuItemInfoW_Wrapper(HMENU hmenu, unsigned long item, BOOL fByPosition, MENUITEMINFOW* lpmii);

MYLIB_EXPORT BOOL GetMenuItemRect_Wrapper(HWND hWnd, HMENU hMenu, unsigned long uItem, RECT* lprcItem);

MYLIB_EXPORT BOOL GetMessageW_Wrapper(MSG* lpMsg, HWND hWnd, unsigned long wMsgFilterMin, unsigned long wMsgFilterMax);

MYLIB_EXPORT int GetMouseMovePointsEx_Wrapper(unsigned long cbSize, MOUSEMOVEPOINT* lppt, MOUSEMOVEPOINT* lpptBuf, int nBufPoints, DWORD resolution);

MYLIB_EXPORT HWND GetNextDlgGroupItem_Wrapper(HWND hDlg, HWND hCtl, BOOL bPrevious);

MYLIB_EXPORT HWND GetNextDlgTabItem_Wrapper(HWND hDlg, HWND hCtl, BOOL bPrevious);

MYLIB_EXPORT HWND GetOpenClipboardWindow_Wrapper();

MYLIB_EXPORT HWND GetParent_Wrapper(HWND hWnd);

MYLIB_EXPORT BOOL GetPhysicalCursorPos_Wrapper(POINT* lpPoint);

MYLIB_EXPORT BOOL GetPointerCursorId_Wrapper(unsigned long pointerId, unsigned long* cursorId);

MYLIB_EXPORT BOOL GetPointerFrameInfo_Wrapper(unsigned long pointerId, unsigned long* pointerCount, POINTER_INFO* pointerInfo);

MYLIB_EXPORT BOOL GetPointerFrameInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, unsigned long* pointerCount, POINTER_INFO* pointerInfo);

MYLIB_EXPORT BOOL GetPointerFramePenInfo_Wrapper(unsigned long pointerId, unsigned long* pointerCount, POINTER_PEN_INFO* penInfo);

MYLIB_EXPORT BOOL GetPointerFramePenInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, unsigned long* pointerCount, POINTER_PEN_INFO* penInfo);

MYLIB_EXPORT BOOL GetPointerFrameTouchInfo_Wrapper(unsigned long pointerId, unsigned long* pointerCount, POINTER_TOUCH_INFO* touchInfo);

MYLIB_EXPORT BOOL GetPointerFrameTouchInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, unsigned long* pointerCount, POINTER_TOUCH_INFO* touchInfo);

MYLIB_EXPORT BOOL GetPointerInfo_Wrapper(unsigned long pointerId, POINTER_INFO* pointerInfo);

MYLIB_EXPORT BOOL GetPointerInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, POINTER_INFO* pointerInfo);

MYLIB_EXPORT BOOL GetPointerInputTransform_Wrapper(unsigned long pointerId, unsigned long historyCount, INPUT_TRANSFORM* inputTransform);

MYLIB_EXPORT BOOL GetPointerPenInfo_Wrapper(unsigned long pointerId, POINTER_PEN_INFO* penInfo);

MYLIB_EXPORT BOOL GetPointerPenInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, POINTER_PEN_INFO* penInfo);

MYLIB_EXPORT BOOL GetPointerTouchInfo_Wrapper(unsigned long pointerId, POINTER_TOUCH_INFO* touchInfo);

MYLIB_EXPORT BOOL GetPointerTouchInfoHistory_Wrapper(unsigned long pointerId, unsigned long* entriesCount, POINTER_TOUCH_INFO* touchInfo);

MYLIB_EXPORT BOOL GetPointerType_Wrapper(unsigned long pointerId, LONG* pointerType);

MYLIB_EXPORT int GetPriorityClipboardFormat_Wrapper(unsigned long* paFormatPriorityList, int cFormats);

MYLIB_EXPORT HWINSTA GetProcessWindowStation_Wrapper();

MYLIB_EXPORT unsigned long GetRawInputBuffer_Wrapper(RAWINPUT* pData, unsigned long* pcbSize, unsigned long cbSizeHeader);

MYLIB_EXPORT unsigned long GetRawInputDeviceInfoW_Wrapper(HANDLE hDevice, DWORD uiCommand, void* pData, unsigned long* pcbSize);

MYLIB_EXPORT unsigned long GetRawInputDeviceList_Wrapper(RAWINPUTDEVICELIST* pRawInputDeviceList, unsigned long* puiNumDevices, unsigned long cbSize);

MYLIB_EXPORT unsigned long GetRegisteredRawInputDevices_Wrapper(RAWINPUTDEVICE* pRawInputDevices, unsigned long* puiNumDevices, unsigned long cbSize);

MYLIB_EXPORT BOOL GetScrollBarInfo_Wrapper(HWND hwnd, LONG idObject, SCROLLBARINFO* psbi);

MYLIB_EXPORT BOOL GetScrollInfo_Wrapper(HWND hwnd, LONG nBar, SCROLLINFO* lpsi);

MYLIB_EXPORT int GetSystemMetricsForDpi_Wrapper(LONG nIndex, unsigned long dpi);

MYLIB_EXPORT HDESK GetThreadDesktop_Wrapper(unsigned long dwThreadId);

MYLIB_EXPORT BOOL GetTitleBarInfo_Wrapper(HWND hwnd, TITLEBARINFO* pti);

MYLIB_EXPORT HWND GetTopWindow_Wrapper(HWND hWnd);

MYLIB_EXPORT BOOL GetTouchInputInfo_Wrapper(HTOUCHINPUT hTouchInput, unsigned long cInputs, TOUCHINPUT* pInputs, int cbSize);

MYLIB_EXPORT BOOL GetUpdatedClipboardFormats_Wrapper(unsigned long* lpuiFormats, unsigned long cFormats, unsigned long* pcFormatsOut);

MYLIB_EXPORT BOOL GetUserObjectInformationW_Wrapper(HANDLE hObj, LONG nIndex, void* pvInfo, unsigned long nLength, unsigned long* lpnLengthNeeded);

MYLIB_EXPORT HWND GetWindow_Wrapper(HWND hWnd, DWORD uCmd);

MYLIB_EXPORT BOOL GetWindowDisplayAffinity_Wrapper(HWND hWnd, unsigned long* pdwAffinity);

MYLIB_EXPORT BOOL GetWindowInfo_Wrapper(HWND hwnd, WINDOWINFO* pwi);

MYLIB_EXPORT long long GetWindowLongPtrW_Wrapper(HWND hWnd, LONG nIndex);

MYLIB_EXPORT BOOL GetWindowPlacement_Wrapper(HWND hWnd, WINDOWPLACEMENT* lpwndpl);

MYLIB_EXPORT BOOL GetWindowRect_Wrapper(HWND hWnd, RECT* lpRect);

MYLIB_EXPORT int GetWindowTextW_Wrapper(HWND hWnd, PWSTR lpString, int nMaxCount);

MYLIB_EXPORT int GetWindowTextLengthW_Wrapper(HWND hWnd);

MYLIB_EXPORT BOOL HideCaret_Wrapper(HWND hWnd);

MYLIB_EXPORT BOOL InsertMenuW_Wrapper(HMENU hMenu, unsigned long uPosition, DWORD uFlags, unsigned long long uIDNewItem, PCWSTR lpNewItem);

MYLIB_EXPORT BOOL InsertMenuItemW_Wrapper(HMENU hmenu, unsigned long item, BOOL fByPosition, MENUITEMINFOW* lpmi);

MYLIB_EXPORT BOOL IsClipboardFormatAvailable_Wrapper(unsigned long format);

MYLIB_EXPORT BOOL IsImmersiveProcess_Wrapper(HANDLE hProcess);

MYLIB_EXPORT BOOL KillTimer_Wrapper(HWND hWnd, unsigned long long uIDEvent);

MYLIB_EXPORT HACCEL LoadAcceleratorsW_Wrapper(HINSTANCE hInstance, PCWSTR lpTableName);

MYLIB_EXPORT HCURSOR LoadCursorW_Wrapper(HINSTANCE hInstance, PCWSTR lpCursorName);

MYLIB_EXPORT HCURSOR LoadCursorFromFileW_Wrapper(PCWSTR lpFileName);

MYLIB_EXPORT HICON LoadIconW_Wrapper(HINSTANCE hInstance, PCWSTR lpIconName);

MYLIB_EXPORT HANDLE LoadImageW_Wrapper(HINSTANCE hInst, PCWSTR name, DWORD type, int cx, int cy, DWORD fuLoad);

MYLIB_EXPORT HKL LoadKeyboardLayoutW_Wrapper(PCWSTR pwszKLID, DWORD flags);

MYLIB_EXPORT HMENU LoadMenuW_Wrapper(HINSTANCE hInstance, PCWSTR lpMenuName);

MYLIB_EXPORT HMENU LoadMenuIndirectW_Wrapper(void* lpMenuTemplate);

MYLIB_EXPORT int LoadStringW_Wrapper(HINSTANCE hInstance, unsigned long uID, PWSTR lpBuffer, int cchBufferMax);

MYLIB_EXPORT BOOL LockSetForegroundWindow_Wrapper(DWORD uLockCode);

MYLIB_EXPORT BOOL LockWorkStation_Wrapper();

MYLIB_EXPORT int LookupIconIdFromDirectory_Wrapper(unsigned char* presbits, BOOL fIcon);

MYLIB_EXPORT int LookupIconIdFromDirectoryEx_Wrapper(unsigned char* presbits, BOOL fIcon, int cxDesired, int cyDesired, DWORD flags);

MYLIB_EXPORT BOOL MapDialogRect_Wrapper(HWND hDlg, RECT* lpRect);

MYLIB_EXPORT LONG MessageBoxW_Wrapper(HWND hWnd, PCWSTR lpText, PCWSTR lpCaption, DWORD uType);

MYLIB_EXPORT LONG MessageBoxExW_Wrapper(HWND hWnd, PCWSTR lpText, PCWSTR lpCaption, DWORD uType, unsigned short wLanguageId);

MYLIB_EXPORT BOOL ModifyMenuW_Wrapper(HMENU hMnu, unsigned long uPosition, DWORD uFlags, unsigned long long uIDNewItem, PCWSTR lpNewItem);

MYLIB_EXPORT BOOL MoveWindow_Wrapper(HWND hWnd, int x, int y, int nWidth, int nHeight, BOOL bRepaint);

MYLIB_EXPORT DWORD MsgWaitForMultipleObjects_Wrapper(unsigned long nCount, HANDLE* pHandles, BOOL fWaitAll, unsigned long dwMilliseconds, DWORD dwWakeMask);

MYLIB_EXPORT DWORD MsgWaitForMultipleObjectsEx_Wrapper(unsigned long nCount, HANDLE* pHandles, unsigned long dwMilliseconds, DWORD dwWakeMask, DWORD dwFlags);

MYLIB_EXPORT BOOL OpenClipboard_Wrapper(HWND hWndNewOwner);

MYLIB_EXPORT HDESK OpenDesktopW_Wrapper(PCWSTR lpszDesktop, DWORD dwFlags, BOOL fInherit, unsigned long dwDesiredAccess);

MYLIB_EXPORT BOOL OpenIcon_Wrapper(HWND hWnd);

MYLIB_EXPORT HDESK OpenInputDesktop_Wrapper(DWORD dwFlags, BOOL fInherit, DWORD dwDesiredAccess);

MYLIB_EXPORT HWINSTA OpenWindowStationW_Wrapper(PCWSTR lpszWinSta, BOOL fInherit, unsigned long dwDesiredAccess);

MYLIB_EXPORT BOOL PostMessageW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam);

MYLIB_EXPORT BOOL PostThreadMessageW_Wrapper(unsigned long idThread, unsigned long msg, WPARAM wParam, LPARAM lParam);

MYLIB_EXPORT unsigned short RegisterClassW_Wrapper(WNDCLASSW* lpWndClass);

MYLIB_EXPORT unsigned short RegisterClassExW_Wrapper(WNDCLASSEXW* param0);

MYLIB_EXPORT unsigned long RegisterClipboardFormatW_Wrapper(PCWSTR lpszFormat);

MYLIB_EXPORT HDEVNOTIFY RegisterDeviceNotificationW_Wrapper(HANDLE hRecipient, void* notificationFilter, DWORD flags);

MYLIB_EXPORT BOOL RegisterHotKey_Wrapper(HWND hWnd, int id, DWORD fsModifiers, unsigned long vk);

MYLIB_EXPORT HPOWERNOTIFY RegisterPowerSettingNotification_Wrapper(HANDLE hRecipient, GUID* powerSettingGuid, DWORD flags);

MYLIB_EXPORT BOOL RegisterRawInputDevices_Wrapper(RAWINPUTDEVICE* pRawInputDevices, unsigned long uiNumDevices, unsigned long cbSize);

MYLIB_EXPORT BOOL RegisterTouchHitTestingWindow_Wrapper(HWND hwnd, unsigned long value);

MYLIB_EXPORT BOOL RegisterTouchWindow_Wrapper(HWND hwnd, DWORD ulFlags);

MYLIB_EXPORT unsigned long RegisterWindowMessageW_Wrapper(PCWSTR lpString);

MYLIB_EXPORT BOOL ReleaseCapture_Wrapper();

MYLIB_EXPORT BOOL RemoveClipboardFormatListener_Wrapper(HWND hwnd);

MYLIB_EXPORT BOOL RemoveMenu_Wrapper(HMENU hMenu, unsigned long uPosition, DWORD uFlags);

MYLIB_EXPORT HANDLE RemovePropW_Wrapper(HWND hWnd, PCWSTR lpString);

MYLIB_EXPORT BOOL ScrollDC_Wrapper(HDC hDC, int dx, int dy, RECT* lprcScroll, RECT* lprcClip, HRGN hrgnUpdate, RECT* lprcUpdate);

MYLIB_EXPORT BOOL ScrollWindow_Wrapper(HWND hWnd, int xAmount, int yAmount, RECT* lpRect, RECT* lpClipRect);

MYLIB_EXPORT int ScrollWindowEx_Wrapper(HWND hWnd, int dx, int dy, RECT* prcScroll, RECT* prcClip, HRGN hrgnUpdate, RECT* prcUpdate, DWORD flags);

MYLIB_EXPORT unsigned long SendInput_Wrapper(unsigned long cInputs, INPUT* pInputs, int cbSize);

MYLIB_EXPORT LRESULT SendMessageW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam);

MYLIB_EXPORT BOOL SendMessageCallbackW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam, SENDASYNCPROC lpResultCallBack, unsigned long long dwData);

MYLIB_EXPORT LRESULT SendMessageTimeoutW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam, DWORD fuFlags, unsigned long uTimeout, unsigned long long* lpdwResult);

MYLIB_EXPORT BOOL SendNotifyMessageW_Wrapper(HWND hWnd, unsigned long msg, WPARAM wParam, LPARAM lParam);

MYLIB_EXPORT HWND SetActiveWindow_Wrapper(HWND hWnd);

MYLIB_EXPORT BOOL SetCaretBlinkTime_Wrapper(unsigned long uMSeconds);

MYLIB_EXPORT BOOL SetCaretPos_Wrapper(int x, int y);

MYLIB_EXPORT unsigned long long SetClassLongPtrW_Wrapper(HWND hWnd, LONG nIndex, long long dwNewLong);

MYLIB_EXPORT HANDLE SetClipboardData_Wrapper(unsigned long uFormat, HANDLE hMem);

MYLIB_EXPORT HWND SetClipboardViewer_Wrapper(HWND hWndNewViewer);

MYLIB_EXPORT unsigned long long SetCoalescableTimer_Wrapper(HWND hWnd, unsigned long long nIDEvent, unsigned long uElapse, TIMERPROC lpTimerFunc, unsigned long uToleranceDelay);

MYLIB_EXPORT BOOL SetCursorPos_Wrapper(int x, int y);

MYLIB_EXPORT BOOL SetDialogControlDpiChangeBehavior_Wrapper(HWND hWnd, LONG mask, LONG values);

MYLIB_EXPORT BOOL SetDialogDpiChangeBehavior_Wrapper(HWND hDlg, LONG mask, LONG values);

MYLIB_EXPORT BOOL SetDlgItemInt_Wrapper(HWND hDlg, int nIDDlgItem, unsigned long uValue, BOOL bSigned);

MYLIB_EXPORT BOOL SetDlgItemTextW_Wrapper(HWND hDlg, int nIDDlgItem, PCWSTR lpString);

MYLIB_EXPORT BOOL SetDoubleClickTime_Wrapper(unsigned long param0);

MYLIB_EXPORT HWND SetFocus_Wrapper(HWND hWnd);

MYLIB_EXPORT BOOL SetGestureConfig_Wrapper(HWND hwnd, unsigned long dwReserved, unsigned long cIDs, GESTURECONFIG* pGestureConfig, unsigned long cbSize);

MYLIB_EXPORT BOOL SetKeyboardState_Wrapper(unsigned char* lpKeyState);

MYLIB_EXPORT BOOL SetLayeredWindowAttributes_Wrapper(HWND hwnd, COLORREF crKey, unsigned char bAlpha, DWORD dwFlags);

MYLIB_EXPORT BOOL SetMenu_Wrapper(HWND hWnd, HMENU hMenu);

MYLIB_EXPORT BOOL SetMenuDefaultItem_Wrapper(HMENU hMenu, unsigned long uItem, unsigned long fByPos);

MYLIB_EXPORT BOOL SetMenuInfo_Wrapper(HMENU param0, MENUINFO* param1);

MYLIB_EXPORT BOOL SetMenuItemBitmaps_Wrapper(HMENU hMenu, unsigned long uPosition, DWORD uFlags, HBITMAP hBitmapUnchecked, HBITMAP hBitmapChecked);

MYLIB_EXPORT BOOL SetMenuItemInfoW_Wrapper(HMENU hmenu, unsigned long item, BOOL fByPositon, MENUITEMINFOW* lpmii);

MYLIB_EXPORT HWND SetParent_Wrapper(HWND hWndChild, HWND hWndNewParent);

MYLIB_EXPORT BOOL SetPhysicalCursorPos_Wrapper(int x, int y);

MYLIB_EXPORT BOOL SetProcessDpiAwarenessContext_Wrapper(DPI_AWARENESS_CONTEXT value);

MYLIB_EXPORT BOOL SetPropW_Wrapper(HWND hWnd, PCWSTR lpString, HANDLE hData);

MYLIB_EXPORT BOOL SetSysColors_Wrapper(int cElements, int* lpaElements, COLORREF* lpaRgbValues);

MYLIB_EXPORT BOOL SetSystemCursor_Wrapper(HCURSOR hcur, DWORD id);

MYLIB_EXPORT unsigned long long SetTimer_Wrapper(HWND hWnd, unsigned long long nIDEvent, unsigned long uElapse, TIMERPROC lpTimerFunc);

MYLIB_EXPORT BOOL SetUserObjectInformationW_Wrapper(HANDLE hObj, int nIndex, void* pvInfo, unsigned long nLength);

MYLIB_EXPORT BOOL SetWindowDisplayAffinity_Wrapper(HWND hWnd, DWORD dwAffinity);

MYLIB_EXPORT long long SetWindowLongPtrW_Wrapper(HWND hWnd, LONG nIndex, long long dwNewLong);

MYLIB_EXPORT BOOL SetWindowPlacement_Wrapper(HWND hWnd, WINDOWPLACEMENT* lpwndpl);

MYLIB_EXPORT BOOL SetWindowPos_Wrapper(HWND hWnd, HWND hWndInsertAfter, int x, int y, int cx, int cy, DWORD uFlags);

MYLIB_EXPORT HHOOK SetWindowsHookExW_Wrapper(LONG idHook, HOOKPROC lpfn, HINSTANCE hmod, unsigned long dwThreadId);

MYLIB_EXPORT BOOL SetWindowTextW_Wrapper(HWND hWnd, PCWSTR lpString);

MYLIB_EXPORT BOOL ShowCaret_Wrapper(HWND hWnd);

MYLIB_EXPORT BOOL ShowOwnedPopups_Wrapper(HWND hWnd, BOOL fShow);

MYLIB_EXPORT BOOL SkipPointerFrameMessages_Wrapper(unsigned long pointerId);

MYLIB_EXPORT BOOL SwitchDesktop_Wrapper(HDESK hDesktop);

MYLIB_EXPORT BOOL SystemParametersInfoW_Wrapper(DWORD uiAction, unsigned long uiParam, void* pvParam, DWORD fWinIni);

MYLIB_EXPORT BOOL SystemParametersInfoForDpi_Wrapper(unsigned long uiAction, unsigned long uiParam, void* pvParam, unsigned long fWinIni, unsigned long dpi);

MYLIB_EXPORT unsigned short TileWindows_Wrapper(HWND hwndParent, DWORD wHow, RECT* lpRect, unsigned long cKids, HWND* lpKids);

MYLIB_EXPORT BOOL TrackPopupMenu_Wrapper(HMENU hMenu, DWORD uFlags, int x, int y, int nReserved, HWND hWnd, RECT* prcRect);

MYLIB_EXPORT BOOL TrackPopupMenuEx_Wrapper(HMENU hMenu, unsigned long uFlags, int x, int y, HWND hwnd, TPMPARAMS* lptpm);

MYLIB_EXPORT int TranslateAcceleratorW_Wrapper(HWND hWnd, HACCEL hAccTable, MSG* lpMsg);

MYLIB_EXPORT BOOL UnhookWindowsHookEx_Wrapper(HHOOK hhk);

MYLIB_EXPORT BOOL UnloadKeyboardLayout_Wrapper(HKL hkl);

MYLIB_EXPORT BOOL UnregisterClassW_Wrapper(PCWSTR lpClassName, HINSTANCE hInstance);

MYLIB_EXPORT BOOL UnregisterDeviceNotification_Wrapper(HDEVNOTIFY handle);

MYLIB_EXPORT BOOL UnregisterHotKey_Wrapper(HWND hWnd, int id);

MYLIB_EXPORT BOOL UnregisterPowerSettingNotification_Wrapper(HPOWERNOTIFY handle);

MYLIB_EXPORT BOOL UnregisterTouchWindow_Wrapper(HWND hwnd);

MYLIB_EXPORT BOOL UserHandleGrantAccess_Wrapper(HANDLE hUserHandle, HANDLE hJob, BOOL bGrant);

MYLIB_EXPORT BOOL WaitMessage_Wrapper();
