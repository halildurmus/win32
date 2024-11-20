// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import,
// ignore_for_file: unused_local_variable

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/src/_internal/user32.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('user32.dll', () {
    test('ActivateKeyboardLayout can be instantiated', () {
      check(ActivateKeyboardLayout_Wrapper).isA<Function>();
    });
    test('AddClipboardFormatListener can be instantiated', () {
      check(AddClipboardFormatListener_Wrapper).isA<Function>();
    });
    test('AdjustWindowRect can be instantiated', () {
      check(AdjustWindowRect_Wrapper).isA<Function>();
    });
    test('AdjustWindowRectEx can be instantiated', () {
      check(AdjustWindowRectEx_Wrapper).isA<Function>();
    });
    test(
      'AdjustWindowRectExForDpi can be instantiated',
      skip: 14393 > windowsBuildNumber,
      () {
        check(AdjustWindowRectExForDpi_Wrapper).isA<Function>();
      },
    );
    test('AllowSetForegroundWindow can be instantiated', () {
      check(AllowSetForegroundWindow_Wrapper).isA<Function>();
    });
    test('AnimateWindow can be instantiated', () {
      check(AnimateWindow_Wrapper).isA<Function>();
    });
    test('AnyPopup can be instantiated', () {
      check(_AnyPopup).isA<Function>();
    });
    test('AppendMenu can be instantiated', () {
      check(AppendMenuW_Wrapper).isA<Function>();
    });
    test(
      'AreDpiAwarenessContextsEqual can be instantiated',
      skip: 14393 > windowsBuildNumber,
      () {
        check(_AreDpiAwarenessContextsEqual).isA<Function>();
      },
    );
    test('ArrangeIconicWindows can be instantiated', () {
      check(ArrangeIconicWindows_Wrapper).isA<Function>();
    });
    test('AttachThreadInput can be instantiated', () {
      check(_AttachThreadInput).isA<Function>();
    });
    test('BeginDeferWindowPos can be instantiated', () {
      check(BeginDeferWindowPos_Wrapper).isA<Function>();
    });
    test('BeginPaint can be instantiated', () {
      check(_BeginPaint).isA<Function>();
    });
    test('BlockInput can be instantiated', () {
      check(BlockInput_Wrapper).isA<Function>();
    });
    test('BringWindowToTop can be instantiated', () {
      check(BringWindowToTop_Wrapper).isA<Function>();
    });
    test('BroadcastSystemMessage can be instantiated', () {
      check(BroadcastSystemMessageW_Wrapper).isA<Function>();
    });
    test('BroadcastSystemMessageEx can be instantiated', () {
      check(BroadcastSystemMessageExW_Wrapper).isA<Function>();
    });
    test('CalculatePopupWindowPosition can be instantiated', () {
      check(CalculatePopupWindowPosition_Wrapper).isA<Function>();
    });
    test('CallMsgFilter can be instantiated', () {
      check(_CallMsgFilter).isA<Function>();
    });
    test('CallNextHookEx can be instantiated', () {
      check(_CallNextHookEx).isA<Function>();
    });
    test('CallWindowProc can be instantiated', () {
      check(_CallWindowProc).isA<Function>();
    });
    test('CascadeWindows can be instantiated', () {
      check(CascadeWindows_Wrapper).isA<Function>();
    });
    test('ChangeClipboardChain can be instantiated', () {
      check(_ChangeClipboardChain).isA<Function>();
    });
    test('ChangeDisplaySettings can be instantiated', () {
      check(_ChangeDisplaySettings).isA<Function>();
    });
    test('ChangeDisplaySettingsEx can be instantiated', () {
      check(_ChangeDisplaySettingsEx).isA<Function>();
    });
    test('ChangeWindowMessageFilter can be instantiated', () {
      check(ChangeWindowMessageFilter_Wrapper).isA<Function>();
    });
    test('ChangeWindowMessageFilterEx can be instantiated', () {
      check(ChangeWindowMessageFilterEx_Wrapper).isA<Function>();
    });
    test('CheckDlgButton can be instantiated', () {
      check(CheckDlgButton_Wrapper).isA<Function>();
    });
    test('CheckRadioButton can be instantiated', () {
      check(CheckRadioButton_Wrapper).isA<Function>();
    });
    test('ChildWindowFromPoint can be instantiated', () {
      check(_ChildWindowFromPoint).isA<Function>();
    });
    test('ChildWindowFromPointEx can be instantiated', () {
      check(_ChildWindowFromPointEx).isA<Function>();
    });
    test('ClientToScreen can be instantiated', () {
      check(_ClientToScreen).isA<Function>();
    });
    test('ClipCursor can be instantiated', () {
      check(ClipCursor_Wrapper).isA<Function>();
    });
    test('CloseClipboard can be instantiated', () {
      check(CloseClipboard_Wrapper).isA<Function>();
    });
    test('CloseGestureInfoHandle can be instantiated', () {
      check(CloseGestureInfoHandle_Wrapper).isA<Function>();
    });
    test('CloseTouchInputHandle can be instantiated', () {
      check(CloseTouchInputHandle_Wrapper).isA<Function>();
    });
    test('CloseWindow can be instantiated', () {
      check(CloseWindow_Wrapper).isA<Function>();
    });
    test('CopyAcceleratorTable can be instantiated', () {
      check(_CopyAcceleratorTable).isA<Function>();
    });
    test('CopyIcon can be instantiated', () {
      check(CopyIcon_Wrapper).isA<Function>();
    });
    test('CopyImage can be instantiated', () {
      check(CopyImage_Wrapper).isA<Function>();
    });
    test('CopyRect can be instantiated', () {
      check(_CopyRect).isA<Function>();
    });
    test('CountClipboardFormats can be instantiated', () {
      check(CountClipboardFormats_Wrapper).isA<Function>();
    });
    test('CreateAcceleratorTable can be instantiated', () {
      check(CreateAcceleratorTableW_Wrapper).isA<Function>();
    });
    test('CreateCaret can be instantiated', () {
      check(CreateCaret_Wrapper).isA<Function>();
    });
    test('CreateCursor can be instantiated', () {
      check(CreateCursor_Wrapper).isA<Function>();
    });
    test('CreateDesktop can be instantiated', () {
      check(CreateDesktopW_Wrapper).isA<Function>();
    });
    test('CreateDesktopEx can be instantiated', () {
      check(CreateDesktopExW_Wrapper).isA<Function>();
    });
    test('CreateDialogIndirectParam can be instantiated', () {
      check(CreateDialogIndirectParamW_Wrapper).isA<Function>();
    });
    test('CreateIcon can be instantiated', () {
      check(CreateIcon_Wrapper).isA<Function>();
    });
    test('CreateIconFromResource can be instantiated', () {
      check(CreateIconFromResource_Wrapper).isA<Function>();
    });
    test('CreateIconFromResourceEx can be instantiated', () {
      check(CreateIconFromResourceEx_Wrapper).isA<Function>();
    });
    test('CreateIconIndirect can be instantiated', () {
      check(CreateIconIndirect_Wrapper).isA<Function>();
    });
    test('CreateMDIWindow can be instantiated', () {
      check(CreateMDIWindowW_Wrapper).isA<Function>();
    });
    test('CreateMenu can be instantiated', () {
      check(CreateMenu_Wrapper).isA<Function>();
    });
    test('CreatePopupMenu can be instantiated', () {
      check(CreatePopupMenu_Wrapper).isA<Function>();
    });
    test('CreateWindowEx can be instantiated', () {
      check(CreateWindowExW_Wrapper).isA<Function>();
    });
    test('CreateWindowStation can be instantiated', () {
      check(CreateWindowStationW_Wrapper).isA<Function>();
    });
    test('DeferWindowPos can be instantiated', () {
      check(DeferWindowPos_Wrapper).isA<Function>();
    });
    test('DefMDIChildProc can be instantiated', () {
      check(_DefMDIChildProc).isA<Function>();
    });
    test('DefRawInputProc can be instantiated', () {
      check(_DefRawInputProc).isA<Function>();
    });
    test('DefWindowProc can be instantiated', () {
      check(_DefWindowProc).isA<Function>();
    });
    test('DeleteMenu can be instantiated', () {
      check(DeleteMenu_Wrapper).isA<Function>();
    });
    test('DestroyAcceleratorTable can be instantiated', () {
      check(_DestroyAcceleratorTable).isA<Function>();
    });
    test('DestroyCaret can be instantiated', () {
      check(DestroyCaret_Wrapper).isA<Function>();
    });
    test('DestroyCursor can be instantiated', () {
      check(DestroyCursor_Wrapper).isA<Function>();
    });
    test('DestroyIcon can be instantiated', () {
      check(DestroyIcon_Wrapper).isA<Function>();
    });
    test('DestroyMenu can be instantiated', () {
      check(DestroyMenu_Wrapper).isA<Function>();
    });
    test('DestroyWindow can be instantiated', () {
      check(DestroyWindow_Wrapper).isA<Function>();
    });
    test('DialogBoxIndirectParam can be instantiated', () {
      check(DialogBoxIndirectParamW_Wrapper).isA<Function>();
    });
    test('DisableProcessWindowsGhosting can be instantiated', () {
      check(_DisableProcessWindowsGhosting).isA<Function>();
    });
    test('DispatchMessage can be instantiated', () {
      check(_DispatchMessage).isA<Function>();
    });
    test('DragDetect can be instantiated', () {
      check(_DragDetect).isA<Function>();
    });
    test('DrawAnimatedRects can be instantiated', () {
      check(_DrawAnimatedRects).isA<Function>();
    });
    test('DrawCaption can be instantiated', () {
      check(_DrawCaption).isA<Function>();
    });
    test('DrawEdge can be instantiated', () {
      check(_DrawEdge).isA<Function>();
    });
    test('DrawFocusRect can be instantiated', () {
      check(_DrawFocusRect).isA<Function>();
    });
    test('DrawFrameControl can be instantiated', () {
      check(_DrawFrameControl).isA<Function>();
    });
    test('DrawIcon can be instantiated', () {
      check(DrawIcon_Wrapper).isA<Function>();
    });
    test('DrawState can be instantiated', () {
      check(_DrawState).isA<Function>();
    });
    test('DrawText can be instantiated', () {
      check(_DrawText).isA<Function>();
    });
    test('DrawTextEx can be instantiated', () {
      check(_DrawTextEx).isA<Function>();
    });
    test('EmptyClipboard can be instantiated', () {
      check(EmptyClipboard_Wrapper).isA<Function>();
    });
    test('EnableMenuItem can be instantiated', () {
      check(_EnableMenuItem).isA<Function>();
    });
    test('EnableMouseInPointer can be instantiated', () {
      check(EnableMouseInPointer_Wrapper).isA<Function>();
    });
    test(
      'EnableNonClientDpiScaling can be instantiated',
      skip: 14393 > windowsBuildNumber,
      () {
        check(EnableNonClientDpiScaling_Wrapper).isA<Function>();
      },
    );
    test('EnableScrollBar can be instantiated', () {
      check(EnableScrollBar_Wrapper).isA<Function>();
    });
    test('EnableWindow can be instantiated', () {
      check(_EnableWindow).isA<Function>();
    });
    test('EndDeferWindowPos can be instantiated', () {
      check(EndDeferWindowPos_Wrapper).isA<Function>();
    });
    test('EndDialog can be instantiated', () {
      check(EndDialog_Wrapper).isA<Function>();
    });
    test('EndMenu can be instantiated', () {
      check(EndMenu_Wrapper).isA<Function>();
    });
    test('EndPaint can be instantiated', () {
      check(_EndPaint).isA<Function>();
    });
    test('EnumChildWindows can be instantiated', () {
      check(_EnumChildWindows).isA<Function>();
    });
    test('EnumClipboardFormats can be instantiated', () {
      check(EnumClipboardFormats_Wrapper).isA<Function>();
    });
    test('EnumDesktopWindows can be instantiated', () {
      check(EnumDesktopWindows_Wrapper).isA<Function>();
    });
    test('EnumDisplayDevices can be instantiated', () {
      check(_EnumDisplayDevices).isA<Function>();
    });
    test('EnumDisplayMonitors can be instantiated', () {
      check(_EnumDisplayMonitors).isA<Function>();
    });
    test('EnumDisplaySettings can be instantiated', () {
      check(_EnumDisplaySettings).isA<Function>();
    });
    test('EnumDisplaySettingsEx can be instantiated', () {
      check(_EnumDisplaySettingsEx).isA<Function>();
    });
    test('EnumThreadWindows can be instantiated', () {
      check(_EnumThreadWindows).isA<Function>();
    });
    test('EnumWindows can be instantiated', () {
      check(EnumWindows_Wrapper).isA<Function>();
    });
    test('EqualRect can be instantiated', () {
      check(_EqualRect).isA<Function>();
    });
    test('ExcludeUpdateRgn can be instantiated', () {
      check(_ExcludeUpdateRgn).isA<Function>();
    });
    test('FillRect can be instantiated', () {
      check(_FillRect).isA<Function>();
    });
    test('FindWindow can be instantiated', () {
      check(FindWindowW_Wrapper).isA<Function>();
    });
    test('FindWindowEx can be instantiated', () {
      check(FindWindowExW_Wrapper).isA<Function>();
    });
    test('FrameRect can be instantiated', () {
      check(_FrameRect).isA<Function>();
    });
    test('GetActiveWindow can be instantiated', () {
      check(_GetActiveWindow).isA<Function>();
    });
    test('GetAltTabInfo can be instantiated', () {
      check(GetAltTabInfoW_Wrapper).isA<Function>();
    });
    test('GetAncestor can be instantiated', () {
      check(_GetAncestor).isA<Function>();
    });
    test('GetAsyncKeyState can be instantiated', () {
      check(_GetAsyncKeyState).isA<Function>();
    });
    test(
      'GetAwarenessFromDpiAwarenessContext can be instantiated',
      skip: 14393 > windowsBuildNumber,
      () {
        check(_GetAwarenessFromDpiAwarenessContext).isA<Function>();
      },
    );
    test('GetCapture can be instantiated', () {
      check(_GetCapture).isA<Function>();
    });
    test('GetCaretBlinkTime can be instantiated', () {
      check(GetCaretBlinkTime_Wrapper).isA<Function>();
    });
    test('GetCaretPos can be instantiated', () {
      check(GetCaretPos_Wrapper).isA<Function>();
    });
    test('GetClassInfo can be instantiated', () {
      check(GetClassInfoW_Wrapper).isA<Function>();
    });
    test('GetClassInfoEx can be instantiated', () {
      check(GetClassInfoExW_Wrapper).isA<Function>();
    });
    test('GetClassLongPtr can be instantiated', () {
      check(GetClassLongPtrW_Wrapper).isA<Function>();
    });
    test('GetClassName can be instantiated', () {
      check(GetClassNameW_Wrapper).isA<Function>();
    });
    test('GetClientRect can be instantiated', () {
      check(GetClientRect_Wrapper).isA<Function>();
    });
    test('GetClipboardData can be instantiated', () {
      check(GetClipboardData_Wrapper).isA<Function>();
    });
    test('GetClipboardFormatName can be instantiated', () {
      check(GetClipboardFormatNameW_Wrapper).isA<Function>();
    });
    test('GetClipboardOwner can be instantiated', () {
      check(GetClipboardOwner_Wrapper).isA<Function>();
    });
    test('GetClipboardSequenceNumber can be instantiated', () {
      check(_GetClipboardSequenceNumber).isA<Function>();
    });
    test('GetClipboardViewer can be instantiated', () {
      check(GetClipboardViewer_Wrapper).isA<Function>();
    });
    test('GetClipCursor can be instantiated', () {
      check(GetClipCursor_Wrapper).isA<Function>();
    });
    test('GetCursor can be instantiated', () {
      check(_GetCursor).isA<Function>();
    });
    test('GetCursorInfo can be instantiated', () {
      check(GetCursorInfo_Wrapper).isA<Function>();
    });
    test('GetCursorPos can be instantiated', () {
      check(GetCursorPos_Wrapper).isA<Function>();
    });
    test('GetDC can be instantiated', () {
      check(_GetDC).isA<Function>();
    });
    test('GetDCEx can be instantiated', () {
      check(_GetDCEx).isA<Function>();
    });
    test('GetDesktopWindow can be instantiated', () {
      check(_GetDesktopWindow).isA<Function>();
    });
    test('GetDialogBaseUnits can be instantiated', () {
      check(_GetDialogBaseUnits).isA<Function>();
    });
    test(
      'GetDialogControlDpiChangeBehavior can be instantiated',
      skip: 15063 > windowsBuildNumber,
      () {
        check(GetDialogControlDpiChangeBehavior_Wrapper).isA<Function>();
      },
    );
    test(
      'GetDialogDpiChangeBehavior can be instantiated',
      skip: 15063 > windowsBuildNumber,
      () {
        check(GetDialogDpiChangeBehavior_Wrapper).isA<Function>();
      },
    );
    test('GetDisplayAutoRotationPreferences can be instantiated', () {
      check(_GetDisplayAutoRotationPreferences).isA<Function>();
    });
    test('GetDlgItem can be instantiated', () {
      check(GetDlgItem_Wrapper).isA<Function>();
    });
    test('GetDlgItemInt can be instantiated', () {
      check(GetDlgItemInt_Wrapper).isA<Function>();
    });
    test('GetDlgItemText can be instantiated', () {
      check(GetDlgItemTextW_Wrapper).isA<Function>();
    });
    test('GetDoubleClickTime can be instantiated', () {
      check(_GetDoubleClickTime).isA<Function>();
    });
    test(
      'GetDpiForSystem can be instantiated',
      skip: 14393 > windowsBuildNumber,
      () {
        check(_GetDpiForSystem).isA<Function>();
      },
    );
    test(
      'GetDpiForWindow can be instantiated',
      skip: 14393 > windowsBuildNumber,
      () {
        check(_GetDpiForWindow).isA<Function>();
      },
    );
    test(
      'GetDpiFromDpiAwarenessContext can be instantiated',
      skip: 17134 > windowsBuildNumber,
      () {
        check(_GetDpiFromDpiAwarenessContext).isA<Function>();
      },
    );
    test('GetFocus can be instantiated', () {
      check(_GetFocus).isA<Function>();
    });
    test('GetForegroundWindow can be instantiated', () {
      check(_GetForegroundWindow).isA<Function>();
    });
    test('GetGestureConfig can be instantiated', () {
      check(GetGestureConfig_Wrapper).isA<Function>();
    });
    test('GetGestureExtraArgs can be instantiated', () {
      check(GetGestureExtraArgs_Wrapper).isA<Function>();
    });
    test('GetGestureInfo can be instantiated', () {
      check(GetGestureInfo_Wrapper).isA<Function>();
    });
    test('GetGUIThreadInfo can be instantiated', () {
      check(GetGUIThreadInfo_Wrapper).isA<Function>();
    });
    test('GetIconInfo can be instantiated', () {
      check(GetIconInfo_Wrapper).isA<Function>();
    });
    test('GetIconInfoEx can be instantiated', () {
      check(_GetIconInfoEx).isA<Function>();
    });
    test('GetInputState can be instantiated', () {
      check(_GetInputState).isA<Function>();
    });
    test('GetKeyboardLayout can be instantiated', () {
      check(_GetKeyboardLayout).isA<Function>();
    });
    test('GetKeyboardLayoutList can be instantiated', () {
      check(GetKeyboardLayoutList_Wrapper).isA<Function>();
    });
    test('GetKeyboardLayoutName can be instantiated', () {
      check(GetKeyboardLayoutNameW_Wrapper).isA<Function>();
    });
    test('GetKeyboardState can be instantiated', () {
      check(GetKeyboardState_Wrapper).isA<Function>();
    });
    test('GetKeyboardType can be instantiated', () {
      check(GetKeyboardType_Wrapper).isA<Function>();
    });
    test('GetKeyNameText can be instantiated', () {
      check(GetKeyNameTextW_Wrapper).isA<Function>();
    });
    test('GetKeyState can be instantiated', () {
      check(_GetKeyState).isA<Function>();
    });
    test('GetLastInputInfo can be instantiated', () {
      check(_GetLastInputInfo).isA<Function>();
    });
    test('GetLayeredWindowAttributes can be instantiated', () {
      check(GetLayeredWindowAttributes_Wrapper).isA<Function>();
    });
    test('GetMenu can be instantiated', () {
      check(_GetMenu).isA<Function>();
    });
    test('GetMenuBarInfo can be instantiated', () {
      check(GetMenuBarInfo_Wrapper).isA<Function>();
    });
    test('GetMenuDefaultItem can be instantiated', () {
      check(GetMenuDefaultItem_Wrapper).isA<Function>();
    });
    test('GetMenuInfo can be instantiated', () {
      check(GetMenuInfo_Wrapper).isA<Function>();
    });
    test('GetMenuItemCount can be instantiated', () {
      check(GetMenuItemCount_Wrapper).isA<Function>();
    });
    test('GetMenuItemID can be instantiated', () {
      check(_GetMenuItemID).isA<Function>();
    });
    test('GetMenuItemInfo can be instantiated', () {
      check(GetMenuItemInfoW_Wrapper).isA<Function>();
    });
    test('GetMenuItemRect can be instantiated', () {
      check(GetMenuItemRect_Wrapper).isA<Function>();
    });
    test('GetMenuState can be instantiated', () {
      check(_GetMenuState).isA<Function>();
    });
    test('GetMenuString can be instantiated', () {
      check(_GetMenuString).isA<Function>();
    });
    test('GetMessage can be instantiated', () {
      check(GetMessageW_Wrapper).isA<Function>();
    });
    test('GetMessageExtraInfo can be instantiated', () {
      check(_GetMessageExtraInfo).isA<Function>();
    });
    test('GetMessagePos can be instantiated', () {
      check(_GetMessagePos).isA<Function>();
    });
    test('GetMessageTime can be instantiated', () {
      check(_GetMessageTime).isA<Function>();
    });
    test('GetMonitorInfo can be instantiated', () {
      check(_GetMonitorInfo).isA<Function>();
    });
    test('GetMouseMovePointsEx can be instantiated', () {
      check(GetMouseMovePointsEx_Wrapper).isA<Function>();
    });
    test('GetNextDlgGroupItem can be instantiated', () {
      check(GetNextDlgGroupItem_Wrapper).isA<Function>();
    });
    test('GetNextDlgTabItem can be instantiated', () {
      check(GetNextDlgTabItem_Wrapper).isA<Function>();
    });
    test('GetOpenClipboardWindow can be instantiated', () {
      check(GetOpenClipboardWindow_Wrapper).isA<Function>();
    });
    test('GetParent can be instantiated', () {
      check(GetParent_Wrapper).isA<Function>();
    });
    test('GetPhysicalCursorPos can be instantiated', () {
      check(GetPhysicalCursorPos_Wrapper).isA<Function>();
    });
    test('GetPointerCursorId can be instantiated', () {
      check(GetPointerCursorId_Wrapper).isA<Function>();
    });
    test('GetPointerFrameInfo can be instantiated', () {
      check(GetPointerFrameInfo_Wrapper).isA<Function>();
    });
    test('GetPointerFrameInfoHistory can be instantiated', () {
      check(GetPointerFrameInfoHistory_Wrapper).isA<Function>();
    });
    test('GetPointerFramePenInfo can be instantiated', () {
      check(GetPointerFramePenInfo_Wrapper).isA<Function>();
    });
    test('GetPointerFramePenInfoHistory can be instantiated', () {
      check(GetPointerFramePenInfoHistory_Wrapper).isA<Function>();
    });
    test('GetPointerFrameTouchInfo can be instantiated', () {
      check(GetPointerFrameTouchInfo_Wrapper).isA<Function>();
    });
    test('GetPointerFrameTouchInfoHistory can be instantiated', () {
      check(GetPointerFrameTouchInfoHistory_Wrapper).isA<Function>();
    });
    test('GetPointerInfo can be instantiated', () {
      check(GetPointerInfo_Wrapper).isA<Function>();
    });
    test('GetPointerInfoHistory can be instantiated', () {
      check(GetPointerInfoHistory_Wrapper).isA<Function>();
    });
    test('GetPointerInputTransform can be instantiated', () {
      check(GetPointerInputTransform_Wrapper).isA<Function>();
    });
    test('GetPointerPenInfo can be instantiated', () {
      check(GetPointerPenInfo_Wrapper).isA<Function>();
    });
    test('GetPointerPenInfoHistory can be instantiated', () {
      check(GetPointerPenInfoHistory_Wrapper).isA<Function>();
    });
    test('GetPointerTouchInfo can be instantiated', () {
      check(GetPointerTouchInfo_Wrapper).isA<Function>();
    });
    test('GetPointerTouchInfoHistory can be instantiated', () {
      check(GetPointerTouchInfoHistory_Wrapper).isA<Function>();
    });
    test('GetPointerType can be instantiated', () {
      check(GetPointerType_Wrapper).isA<Function>();
    });
    test('GetPriorityClipboardFormat can be instantiated', () {
      check(GetPriorityClipboardFormat_Wrapper).isA<Function>();
    });
    test('GetProcessWindowStation can be instantiated', () {
      check(GetProcessWindowStation_Wrapper).isA<Function>();
    });
    test('GetProp can be instantiated', () {
      check(_GetProp).isA<Function>();
    });
    test('GetRawInputBuffer can be instantiated', () {
      check(GetRawInputBuffer_Wrapper).isA<Function>();
    });
    test('GetRawInputData can be instantiated', () {
      check(_GetRawInputData).isA<Function>();
    });
    test('GetRawInputDeviceInfo can be instantiated', () {
      check(GetRawInputDeviceInfoW_Wrapper).isA<Function>();
    });
    test('GetRawInputDeviceList can be instantiated', () {
      check(GetRawInputDeviceList_Wrapper).isA<Function>();
    });
    test('GetRegisteredRawInputDevices can be instantiated', () {
      check(GetRegisteredRawInputDevices_Wrapper).isA<Function>();
    });
    test('GetScrollBarInfo can be instantiated', () {
      check(GetScrollBarInfo_Wrapper).isA<Function>();
    });
    test('GetScrollInfo can be instantiated', () {
      check(GetScrollInfo_Wrapper).isA<Function>();
    });
    test('GetShellWindow can be instantiated', () {
      check(_GetShellWindow).isA<Function>();
    });
    test('GetSubMenu can be instantiated', () {
      check(_GetSubMenu).isA<Function>();
    });
    test('GetSysColor can be instantiated', () {
      check(_GetSysColor).isA<Function>();
    });
    test('GetSysColorBrush can be instantiated', () {
      check(_GetSysColorBrush).isA<Function>();
    });
    test(
      'GetSystemDpiForProcess can be instantiated',
      skip: 17134 > windowsBuildNumber,
      () {
        check(_GetSystemDpiForProcess).isA<Function>();
      },
    );
    test('GetSystemMenu can be instantiated', () {
      check(_GetSystemMenu).isA<Function>();
    });
    test('GetSystemMetrics can be instantiated', () {
      check(_GetSystemMetrics).isA<Function>();
    });
    test(
      'GetSystemMetricsForDpi can be instantiated',
      skip: 14393 > windowsBuildNumber,
      () {
        check(GetSystemMetricsForDpi_Wrapper).isA<Function>();
      },
    );
    test('GetTabbedTextExtent can be instantiated', () {
      check(_GetTabbedTextExtent).isA<Function>();
    });
    test('GetThreadDesktop can be instantiated', () {
      check(GetThreadDesktop_Wrapper).isA<Function>();
    });
    test(
      'GetThreadDpiAwarenessContext can be instantiated',
      skip: 14393 > windowsBuildNumber,
      () {
        check(_GetThreadDpiAwarenessContext).isA<Function>();
      },
    );
    test(
      'GetThreadDpiHostingBehavior can be instantiated',
      skip: 17134 > windowsBuildNumber,
      () {
        check(_GetThreadDpiHostingBehavior).isA<Function>();
      },
    );
    test('GetTitleBarInfo can be instantiated', () {
      check(GetTitleBarInfo_Wrapper).isA<Function>();
    });
    test('GetTopWindow can be instantiated', () {
      check(GetTopWindow_Wrapper).isA<Function>();
    });
    test('GetTouchInputInfo can be instantiated', () {
      check(GetTouchInputInfo_Wrapper).isA<Function>();
    });
    test('GetUnpredictedMessagePos can be instantiated', () {
      check(_GetUnpredictedMessagePos).isA<Function>();
    });
    test('GetUpdatedClipboardFormats can be instantiated', () {
      check(GetUpdatedClipboardFormats_Wrapper).isA<Function>();
    });
    test('GetUpdateRect can be instantiated', () {
      check(_GetUpdateRect).isA<Function>();
    });
    test('GetUpdateRgn can be instantiated', () {
      check(_GetUpdateRgn).isA<Function>();
    });
    test('GetUserObjectInformation can be instantiated', () {
      check(GetUserObjectInformationW_Wrapper).isA<Function>();
    });
    test('GetWindow can be instantiated', () {
      check(GetWindow_Wrapper).isA<Function>();
    });
    test('GetWindowDC can be instantiated', () {
      check(_GetWindowDC).isA<Function>();
    });
    test('GetWindowDisplayAffinity can be instantiated', () {
      check(GetWindowDisplayAffinity_Wrapper).isA<Function>();
    });
    test(
      'GetWindowDpiAwarenessContext can be instantiated',
      skip: 14393 > windowsBuildNumber,
      () {
        check(_GetWindowDpiAwarenessContext).isA<Function>();
      },
    );
    test(
      'GetWindowDpiHostingBehavior can be instantiated',
      skip: 17134 > windowsBuildNumber,
      () {
        check(_GetWindowDpiHostingBehavior).isA<Function>();
      },
    );
    test('GetWindowInfo can be instantiated', () {
      check(GetWindowInfo_Wrapper).isA<Function>();
    });
    test('GetWindowLongPtr can be instantiated', () {
      check(GetWindowLongPtrW_Wrapper).isA<Function>();
    });
    test('GetWindowModuleFileName can be instantiated', () {
      check(_GetWindowModuleFileName).isA<Function>();
    });
    test('GetWindowPlacement can be instantiated', () {
      check(GetWindowPlacement_Wrapper).isA<Function>();
    });
    test('GetWindowRect can be instantiated', () {
      check(GetWindowRect_Wrapper).isA<Function>();
    });
    test('GetWindowRgn can be instantiated', () {
      check(_GetWindowRgn).isA<Function>();
    });
    test('GetWindowRgnBox can be instantiated', () {
      check(_GetWindowRgnBox).isA<Function>();
    });
    test('GetWindowText can be instantiated', () {
      check(GetWindowTextW_Wrapper).isA<Function>();
    });
    test('GetWindowTextLength can be instantiated', () {
      check(GetWindowTextLengthW_Wrapper).isA<Function>();
    });
    test('GetWindowThreadProcessId can be instantiated', () {
      check(_GetWindowThreadProcessId).isA<Function>();
    });
    test('GrayString can be instantiated', () {
      check(_GrayString).isA<Function>();
    });
    test('HideCaret can be instantiated', () {
      check(HideCaret_Wrapper).isA<Function>();
    });
    test('HiliteMenuItem can be instantiated', () {
      check(_HiliteMenuItem).isA<Function>();
    });
    test('InflateRect can be instantiated', () {
      check(_InflateRect).isA<Function>();
    });
    test('InSendMessage can be instantiated', () {
      check(_InSendMessage).isA<Function>();
    });
    test('InSendMessageEx can be instantiated', () {
      check(_InSendMessageEx).isA<Function>();
    });
    test('InsertMenu can be instantiated', () {
      check(InsertMenuW_Wrapper).isA<Function>();
    });
    test('InsertMenuItem can be instantiated', () {
      check(InsertMenuItemW_Wrapper).isA<Function>();
    });
    test('IntersectRect can be instantiated', () {
      check(_IntersectRect).isA<Function>();
    });
    test('InvalidateRect can be instantiated', () {
      check(_InvalidateRect).isA<Function>();
    });
    test('InvalidateRgn can be instantiated', () {
      check(_InvalidateRgn).isA<Function>();
    });
    test('InvertRect can be instantiated', () {
      check(_InvertRect).isA<Function>();
    });
    test('IsChild can be instantiated', () {
      check(_IsChild).isA<Function>();
    });
    test('IsClipboardFormatAvailable can be instantiated', () {
      check(IsClipboardFormatAvailable_Wrapper).isA<Function>();
    });
    test('IsDialogMessage can be instantiated', () {
      check(_IsDialogMessage).isA<Function>();
    });
    test('IsDlgButtonChecked can be instantiated', () {
      check(_IsDlgButtonChecked).isA<Function>();
    });
    test('IsGUIThread can be instantiated', () {
      check(_IsGUIThread).isA<Function>();
    });
    test('IsHungAppWindow can be instantiated', () {
      check(_IsHungAppWindow).isA<Function>();
    });
    test('IsIconic can be instantiated', () {
      check(_IsIconic).isA<Function>();
    });
    test('IsImmersiveProcess can be instantiated', () {
      check(IsImmersiveProcess_Wrapper).isA<Function>();
    });
    test('IsMenu can be instantiated', () {
      check(_IsMenu).isA<Function>();
    });
    test('IsMouseInPointerEnabled can be instantiated', () {
      check(_IsMouseInPointerEnabled).isA<Function>();
    });
    test('IsProcessDPIAware can be instantiated', () {
      check(_IsProcessDPIAware).isA<Function>();
    });
    test('IsRectEmpty can be instantiated', () {
      check(_IsRectEmpty).isA<Function>();
    });
    test('IsTouchWindow can be instantiated', () {
      check(_IsTouchWindow).isA<Function>();
    });
    test(
      'IsValidDpiAwarenessContext can be instantiated',
      skip: 14393 > windowsBuildNumber,
      () {
        check(_IsValidDpiAwarenessContext).isA<Function>();
      },
    );
    test('IsWindow can be instantiated', () {
      check(_IsWindow).isA<Function>();
    });
    test('IsWindowEnabled can be instantiated', () {
      check(_IsWindowEnabled).isA<Function>();
    });
    test('IsWindowUnicode can be instantiated', () {
      check(_IsWindowUnicode).isA<Function>();
    });
    test('IsWindowVisible can be instantiated', () {
      check(_IsWindowVisible).isA<Function>();
    });
    test('IsWow64Message can be instantiated', () {
      check(_IsWow64Message).isA<Function>();
    });
    test('IsZoomed can be instantiated', () {
      check(_IsZoomed).isA<Function>();
    });
    test('KillTimer can be instantiated', () {
      check(KillTimer_Wrapper).isA<Function>();
    });
    test('LoadAccelerators can be instantiated', () {
      check(LoadAcceleratorsW_Wrapper).isA<Function>();
    });
    test('LoadCursor can be instantiated', () {
      check(LoadCursorW_Wrapper).isA<Function>();
    });
    test('LoadCursorFromFile can be instantiated', () {
      check(LoadCursorFromFileW_Wrapper).isA<Function>();
    });
    test('LoadIcon can be instantiated', () {
      check(LoadIconW_Wrapper).isA<Function>();
    });
    test('LoadImage can be instantiated', () {
      check(LoadImageW_Wrapper).isA<Function>();
    });
    test('LoadKeyboardLayout can be instantiated', () {
      check(LoadKeyboardLayoutW_Wrapper).isA<Function>();
    });
    test('LoadMenu can be instantiated', () {
      check(LoadMenuW_Wrapper).isA<Function>();
    });
    test('LoadMenuIndirect can be instantiated', () {
      check(LoadMenuIndirectW_Wrapper).isA<Function>();
    });
    test('LoadString can be instantiated', () {
      check(LoadStringW_Wrapper).isA<Function>();
    });
    test('LockSetForegroundWindow can be instantiated', () {
      check(LockSetForegroundWindow_Wrapper).isA<Function>();
    });
    test('LockWindowUpdate can be instantiated', () {
      check(_LockWindowUpdate).isA<Function>();
    });
    test('LockWorkStation can be instantiated', () {
      check(LockWorkStation_Wrapper).isA<Function>();
    });
    test('LogicalToPhysicalPoint can be instantiated', () {
      check(_LogicalToPhysicalPoint).isA<Function>();
    });
    test('LogicalToPhysicalPointForPerMonitorDPI can be instantiated', () {
      check(_LogicalToPhysicalPointForPerMonitorDPI).isA<Function>();
    });
    test('LookupIconIdFromDirectory can be instantiated', () {
      check(LookupIconIdFromDirectory_Wrapper).isA<Function>();
    });
    test('LookupIconIdFromDirectoryEx can be instantiated', () {
      check(LookupIconIdFromDirectoryEx_Wrapper).isA<Function>();
    });
    test('MapDialogRect can be instantiated', () {
      check(MapDialogRect_Wrapper).isA<Function>();
    });
    test('MapVirtualKey can be instantiated', () {
      check(_MapVirtualKey).isA<Function>();
    });
    test('MapVirtualKeyEx can be instantiated', () {
      check(_MapVirtualKeyEx).isA<Function>();
    });
    test('MapWindowPoints can be instantiated', () {
      check(_MapWindowPoints).isA<Function>();
    });
    test('MenuItemFromPoint can be instantiated', () {
      check(_MenuItemFromPoint).isA<Function>();
    });
    test('MessageBox can be instantiated', () {
      check(MessageBoxW_Wrapper).isA<Function>();
    });
    test('MessageBoxEx can be instantiated', () {
      check(MessageBoxExW_Wrapper).isA<Function>();
    });
    test('ModifyMenu can be instantiated', () {
      check(ModifyMenuW_Wrapper).isA<Function>();
    });
    test('MonitorFromPoint can be instantiated', () {
      check(_MonitorFromPoint).isA<Function>();
    });
    test('MonitorFromRect can be instantiated', () {
      check(_MonitorFromRect).isA<Function>();
    });
    test('MonitorFromWindow can be instantiated', () {
      check(_MonitorFromWindow).isA<Function>();
    });
    test('MoveWindow can be instantiated', () {
      check(MoveWindow_Wrapper).isA<Function>();
    });
    test('MsgWaitForMultipleObjects can be instantiated', () {
      check(MsgWaitForMultipleObjects_Wrapper).isA<Function>();
    });
    test('MsgWaitForMultipleObjectsEx can be instantiated', () {
      check(MsgWaitForMultipleObjectsEx_Wrapper).isA<Function>();
    });
    test('NotifyWinEvent can be instantiated', () {
      check(_NotifyWinEvent).isA<Function>();
    });
    test('OemKeyScan can be instantiated', () {
      check(_OemKeyScan).isA<Function>();
    });
    test('OffsetRect can be instantiated', () {
      check(_OffsetRect).isA<Function>();
    });
    test('OpenClipboard can be instantiated', () {
      check(OpenClipboard_Wrapper).isA<Function>();
    });
    test('OpenDesktop can be instantiated', () {
      check(OpenDesktopW_Wrapper).isA<Function>();
    });
    test('OpenIcon can be instantiated', () {
      check(OpenIcon_Wrapper).isA<Function>();
    });
    test('OpenInputDesktop can be instantiated', () {
      check(OpenInputDesktop_Wrapper).isA<Function>();
    });
    test('OpenWindowStation can be instantiated', () {
      check(OpenWindowStationW_Wrapper).isA<Function>();
    });
    test('PaintDesktop can be instantiated', () {
      check(_PaintDesktop).isA<Function>();
    });
    test('PeekMessage can be instantiated', () {
      check(_PeekMessage).isA<Function>();
    });
    test('PhysicalToLogicalPoint can be instantiated', () {
      check(_PhysicalToLogicalPoint).isA<Function>();
    });
    test('PhysicalToLogicalPointForPerMonitorDPI can be instantiated', () {
      check(_PhysicalToLogicalPointForPerMonitorDPI).isA<Function>();
    });
    test('PostMessage can be instantiated', () {
      check(PostMessageW_Wrapper).isA<Function>();
    });
    test('PostQuitMessage can be instantiated', () {
      check(_PostQuitMessage).isA<Function>();
    });
    test('PostThreadMessage can be instantiated', () {
      check(PostThreadMessageW_Wrapper).isA<Function>();
    });
    test('PrintWindow can be instantiated', () {
      check(_PrintWindow).isA<Function>();
    });
    test('PrivateExtractIcons can be instantiated', () {
      check(_PrivateExtractIcons).isA<Function>();
    });
    test('PtInRect can be instantiated', () {
      check(_PtInRect).isA<Function>();
    });
    test('RedrawWindow can be instantiated', () {
      check(_RedrawWindow).isA<Function>();
    });
    test('RegisterClass can be instantiated', () {
      check(RegisterClassW_Wrapper).isA<Function>();
    });
    test('RegisterClassEx can be instantiated', () {
      check(RegisterClassExW_Wrapper).isA<Function>();
    });
    test('RegisterClipboardFormat can be instantiated', () {
      check(RegisterClipboardFormatW_Wrapper).isA<Function>();
    });
    test('RegisterDeviceNotification can be instantiated', () {
      check(RegisterDeviceNotificationW_Wrapper).isA<Function>();
    });
    test('RegisterHotKey can be instantiated', () {
      check(RegisterHotKey_Wrapper).isA<Function>();
    });
    test('RegisterPowerSettingNotification can be instantiated', () {
      check(RegisterPowerSettingNotification_Wrapper).isA<Function>();
    });
    test('RegisterRawInputDevices can be instantiated', () {
      check(RegisterRawInputDevices_Wrapper).isA<Function>();
    });
    test('RegisterTouchHitTestingWindow can be instantiated', () {
      check(RegisterTouchHitTestingWindow_Wrapper).isA<Function>();
    });
    test('RegisterTouchWindow can be instantiated', () {
      check(RegisterTouchWindow_Wrapper).isA<Function>();
    });
    test('RegisterWindowMessage can be instantiated', () {
      check(RegisterWindowMessageW_Wrapper).isA<Function>();
    });
    test('ReleaseCapture can be instantiated', () {
      check(ReleaseCapture_Wrapper).isA<Function>();
    });
    test('ReleaseDC can be instantiated', () {
      check(_ReleaseDC).isA<Function>();
    });
    test('RemoveClipboardFormatListener can be instantiated', () {
      check(RemoveClipboardFormatListener_Wrapper).isA<Function>();
    });
    test('RemoveMenu can be instantiated', () {
      check(RemoveMenu_Wrapper).isA<Function>();
    });
    test('RemoveProp can be instantiated', () {
      check(RemovePropW_Wrapper).isA<Function>();
    });
    test('ReplyMessage can be instantiated', () {
      check(_ReplyMessage).isA<Function>();
    });
    test('ScreenToClient can be instantiated', () {
      check(_ScreenToClient).isA<Function>();
    });
    test('ScrollDC can be instantiated', () {
      check(ScrollDC_Wrapper).isA<Function>();
    });
    test('ScrollWindow can be instantiated', () {
      check(ScrollWindow_Wrapper).isA<Function>();
    });
    test('ScrollWindowEx can be instantiated', () {
      check(ScrollWindowEx_Wrapper).isA<Function>();
    });
    test('SendDlgItemMessage can be instantiated', () {
      check(_SendDlgItemMessage).isA<Function>();
    });
    test('SendInput can be instantiated', () {
      check(SendInput_Wrapper).isA<Function>();
    });
    test('SendMessage can be instantiated', () {
      check(SendMessageW_Wrapper).isA<Function>();
    });
    test('SendMessageCallback can be instantiated', () {
      check(SendMessageCallbackW_Wrapper).isA<Function>();
    });
    test('SendMessageTimeout can be instantiated', () {
      check(SendMessageTimeoutW_Wrapper).isA<Function>();
    });
    test('SendNotifyMessage can be instantiated', () {
      check(SendNotifyMessageW_Wrapper).isA<Function>();
    });
    test('SetActiveWindow can be instantiated', () {
      check(SetActiveWindow_Wrapper).isA<Function>();
    });
    test('SetCapture can be instantiated', () {
      check(_SetCapture).isA<Function>();
    });
    test('SetCaretBlinkTime can be instantiated', () {
      check(SetCaretBlinkTime_Wrapper).isA<Function>();
    });
    test('SetCaretPos can be instantiated', () {
      check(SetCaretPos_Wrapper).isA<Function>();
    });
    test('SetClassLongPtr can be instantiated', () {
      check(SetClassLongPtrW_Wrapper).isA<Function>();
    });
    test('SetClipboardData can be instantiated', () {
      check(SetClipboardData_Wrapper).isA<Function>();
    });
    test('SetClipboardViewer can be instantiated', () {
      check(SetClipboardViewer_Wrapper).isA<Function>();
    });
    test('SetCoalescableTimer can be instantiated', () {
      check(SetCoalescableTimer_Wrapper).isA<Function>();
    });
    test('SetCursor can be instantiated', () {
      check(_SetCursor).isA<Function>();
    });
    test('SetCursorPos can be instantiated', () {
      check(SetCursorPos_Wrapper).isA<Function>();
    });
    test(
      'SetDialogControlDpiChangeBehavior can be instantiated',
      skip: 15063 > windowsBuildNumber,
      () {
        check(SetDialogControlDpiChangeBehavior_Wrapper).isA<Function>();
      },
    );
    test(
      'SetDialogDpiChangeBehavior can be instantiated',
      skip: 15063 > windowsBuildNumber,
      () {
        check(SetDialogDpiChangeBehavior_Wrapper).isA<Function>();
      },
    );
    test('SetDisplayAutoRotationPreferences can be instantiated', () {
      check(_SetDisplayAutoRotationPreferences).isA<Function>();
    });
    test('SetDisplayConfig can be instantiated', () {
      check(_SetDisplayConfig).isA<Function>();
    });
    test('SetDlgItemInt can be instantiated', () {
      check(SetDlgItemInt_Wrapper).isA<Function>();
    });
    test('SetDlgItemText can be instantiated', () {
      check(SetDlgItemTextW_Wrapper).isA<Function>();
    });
    test('SetDoubleClickTime can be instantiated', () {
      check(SetDoubleClickTime_Wrapper).isA<Function>();
    });
    test('SetFocus can be instantiated', () {
      check(SetFocus_Wrapper).isA<Function>();
    });
    test('SetForegroundWindow can be instantiated', () {
      check(_SetForegroundWindow).isA<Function>();
    });
    test('SetGestureConfig can be instantiated', () {
      check(SetGestureConfig_Wrapper).isA<Function>();
    });
    test('SetKeyboardState can be instantiated', () {
      check(SetKeyboardState_Wrapper).isA<Function>();
    });
    test('SetLayeredWindowAttributes can be instantiated', () {
      check(SetLayeredWindowAttributes_Wrapper).isA<Function>();
    });
    test('SetMenu can be instantiated', () {
      check(SetMenu_Wrapper).isA<Function>();
    });
    test('SetMenuDefaultItem can be instantiated', () {
      check(SetMenuDefaultItem_Wrapper).isA<Function>();
    });
    test('SetMenuInfo can be instantiated', () {
      check(SetMenuInfo_Wrapper).isA<Function>();
    });
    test('SetMenuItemBitmaps can be instantiated', () {
      check(SetMenuItemBitmaps_Wrapper).isA<Function>();
    });
    test('SetMenuItemInfo can be instantiated', () {
      check(SetMenuItemInfoW_Wrapper).isA<Function>();
    });
    test('SetMessageExtraInfo can be instantiated', () {
      check(_SetMessageExtraInfo).isA<Function>();
    });
    test('SetParent can be instantiated', () {
      check(SetParent_Wrapper).isA<Function>();
    });
    test('SetPhysicalCursorPos can be instantiated', () {
      check(SetPhysicalCursorPos_Wrapper).isA<Function>();
    });
    test('SetProcessDPIAware can be instantiated', () {
      check(_SetProcessDPIAware).isA<Function>();
    });
    test(
      'SetProcessDpiAwarenessContext can be instantiated',
      skip: 15063 > windowsBuildNumber,
      () {
        check(SetProcessDpiAwarenessContext_Wrapper).isA<Function>();
      },
    );
    test('SetProp can be instantiated', skip: 14393 > windowsBuildNumber, () {
      check(SetPropW_Wrapper).isA<Function>();
    });
    test('SetRect can be instantiated', () {
      check(_SetRect).isA<Function>();
    });
    test('SetRectEmpty can be instantiated', () {
      check(_SetRectEmpty).isA<Function>();
    });
    test('SetScrollInfo can be instantiated', () {
      check(_SetScrollInfo).isA<Function>();
    });
    test('SetSysColors can be instantiated', () {
      check(SetSysColors_Wrapper).isA<Function>();
    });
    test('SetSystemCursor can be instantiated', () {
      check(SetSystemCursor_Wrapper).isA<Function>();
    });
    test(
      'SetThreadDpiAwarenessContext can be instantiated',
      skip: 14393 > windowsBuildNumber,
      () {
        check(_SetThreadDpiAwarenessContext).isA<Function>();
      },
    );
    test(
      'SetThreadDpiHostingBehavior can be instantiated',
      skip: 17134 > windowsBuildNumber,
      () {
        check(_SetThreadDpiHostingBehavior).isA<Function>();
      },
    );
    test('SetTimer can be instantiated', () {
      check(SetTimer_Wrapper).isA<Function>();
    });
    test('SetUserObjectInformation can be instantiated', () {
      check(SetUserObjectInformationW_Wrapper).isA<Function>();
    });
    test('SetWindowDisplayAffinity can be instantiated', () {
      check(SetWindowDisplayAffinity_Wrapper).isA<Function>();
    });
    test('SetWindowLongPtr can be instantiated', () {
      check(SetWindowLongPtrW_Wrapper).isA<Function>();
    });
    test('SetWindowPlacement can be instantiated', () {
      check(SetWindowPlacement_Wrapper).isA<Function>();
    });
    test('SetWindowPos can be instantiated', () {
      check(SetWindowPos_Wrapper).isA<Function>();
    });
    test('SetWindowRgn can be instantiated', () {
      check(_SetWindowRgn).isA<Function>();
    });
    test('SetWindowsHookEx can be instantiated', () {
      check(SetWindowsHookExW_Wrapper).isA<Function>();
    });
    test('SetWindowText can be instantiated', () {
      check(SetWindowTextW_Wrapper).isA<Function>();
    });
    test('ShowCaret can be instantiated', () {
      check(ShowCaret_Wrapper).isA<Function>();
    });
    test('ShowCursor can be instantiated', () {
      check(_ShowCursor).isA<Function>();
    });
    test('ShowOwnedPopups can be instantiated', () {
      check(ShowOwnedPopups_Wrapper).isA<Function>();
    });
    test('ShowWindow can be instantiated', () {
      check(_ShowWindow).isA<Function>();
    });
    test('ShowWindowAsync can be instantiated', () {
      check(_ShowWindowAsync).isA<Function>();
    });
    test('SkipPointerFrameMessages can be instantiated', () {
      check(SkipPointerFrameMessages_Wrapper).isA<Function>();
    });
    test('SoundSentry can be instantiated', () {
      check(_SoundSentry).isA<Function>();
    });
    test('SubtractRect can be instantiated', () {
      check(_SubtractRect).isA<Function>();
    });
    test('SwapMouseButton can be instantiated', () {
      check(_SwapMouseButton).isA<Function>();
    });
    test('SwitchDesktop can be instantiated', () {
      check(SwitchDesktop_Wrapper).isA<Function>();
    });
    test('SwitchToThisWindow can be instantiated', () {
      check(_SwitchToThisWindow).isA<Function>();
    });
    test('SystemParametersInfo can be instantiated', () {
      check(SystemParametersInfoW_Wrapper).isA<Function>();
    });
    test(
      'SystemParametersInfoForDpi can be instantiated',
      skip: 14393 > windowsBuildNumber,
      () {
        check(SystemParametersInfoForDpi_Wrapper).isA<Function>();
      },
    );
    test('TabbedTextOut can be instantiated', () {
      check(_TabbedTextOut).isA<Function>();
    });
    test('TileWindows can be instantiated', () {
      check(TileWindows_Wrapper).isA<Function>();
    });
    test('ToAscii can be instantiated', () {
      check(_ToAscii).isA<Function>();
    });
    test('ToAsciiEx can be instantiated', () {
      check(_ToAsciiEx).isA<Function>();
    });
    test('ToUnicode can be instantiated', () {
      check(_ToUnicode).isA<Function>();
    });
    test('ToUnicodeEx can be instantiated', () {
      check(_ToUnicodeEx).isA<Function>();
    });
    test('TrackPopupMenu can be instantiated', () {
      check(TrackPopupMenu_Wrapper).isA<Function>();
    });
    test('TrackPopupMenuEx can be instantiated', () {
      check(TrackPopupMenuEx_Wrapper).isA<Function>();
    });
    test('TranslateAccelerator can be instantiated', () {
      check(TranslateAcceleratorW_Wrapper).isA<Function>();
    });
    test('TranslateMDISysAccel can be instantiated', () {
      check(_TranslateMDISysAccel).isA<Function>();
    });
    test('TranslateMessage can be instantiated', () {
      check(_TranslateMessage).isA<Function>();
    });
    test('UnhookWindowsHookEx can be instantiated', () {
      check(UnhookWindowsHookEx_Wrapper).isA<Function>();
    });
    test('UnionRect can be instantiated', () {
      check(_UnionRect).isA<Function>();
    });
    test('UnloadKeyboardLayout can be instantiated', () {
      check(UnloadKeyboardLayout_Wrapper).isA<Function>();
    });
    test('UnregisterClass can be instantiated', () {
      check(UnregisterClassW_Wrapper).isA<Function>();
    });
    test('UnregisterDeviceNotification can be instantiated', () {
      check(UnregisterDeviceNotification_Wrapper).isA<Function>();
    });
    test('UnregisterHotKey can be instantiated', () {
      check(UnregisterHotKey_Wrapper).isA<Function>();
    });
    test('UnregisterPowerSettingNotification can be instantiated', () {
      check(UnregisterPowerSettingNotification_Wrapper).isA<Function>();
    });
    test('UnregisterTouchWindow can be instantiated', () {
      check(UnregisterTouchWindow_Wrapper).isA<Function>();
    });
    test('UpdateLayeredWindowIndirect can be instantiated', () {
      check(_UpdateLayeredWindowIndirect).isA<Function>();
    });
    test('UpdateWindow can be instantiated', () {
      check(_UpdateWindow).isA<Function>();
    });
    test('UserHandleGrantAccess can be instantiated', () {
      check(UserHandleGrantAccess_Wrapper).isA<Function>();
    });
    test('ValidateRect can be instantiated', () {
      check(_ValidateRect).isA<Function>();
    });
    test('ValidateRgn can be instantiated', () {
      check(_ValidateRgn).isA<Function>();
    });
    test('VkKeyScan can be instantiated', () {
      check(_VkKeyScan).isA<Function>();
    });
    test('VkKeyScanEx can be instantiated', () {
      check(_VkKeyScanEx).isA<Function>();
    });
    test('WaitForInputIdle can be instantiated', () {
      check(_WaitForInputIdle).isA<Function>();
    });
    test('WaitMessage can be instantiated', () {
      check(WaitMessage_Wrapper).isA<Function>();
    });
    test('WindowFromDC can be instantiated', () {
      check(_WindowFromDC).isA<Function>();
    });
    test('WindowFromPhysicalPoint can be instantiated', () {
      check(_WindowFromPhysicalPoint).isA<Function>();
    });
    test('WindowFromPoint can be instantiated', () {
      check(_WindowFromPoint).isA<Function>();
    });
  });
}

@Native<BOOL Function()>(symbol: 'AnyPopup')
external int _AnyPopup();

@Native<BOOL Function(DPI_AWARENESS_CONTEXT, DPI_AWARENESS_CONTEXT)>(
  symbol: 'AreDpiAwarenessContextsEqual',
)
external int _AreDpiAwarenessContextsEqual(int dpiContextA, int dpiContextB);

@Native<BOOL Function(Uint32, Uint32, BOOL)>(symbol: 'AttachThreadInput')
external int _AttachThreadInput(int idAttach, int idAttachTo, int fAttach);

@Native<HDC Function(HWND, Pointer<PAINTSTRUCT>)>(symbol: 'BeginPaint')
external int _BeginPaint(int hWnd, Pointer<PAINTSTRUCT> lpPaint);

@Native<BOOL Function(Pointer<MSG>, Int32)>(symbol: 'CallMsgFilterW')
external int _CallMsgFilter(Pointer<MSG> lpMsg, int nCode);

@Native<LRESULT Function(HHOOK, Int32, WPARAM, LPARAM)>(
  symbol: 'CallNextHookEx',
)
external int _CallNextHookEx(int hhk, int nCode, int wParam, int lParam);

@Native<
  LRESULT Function(
    Pointer<NativeFunction<WNDPROC>>,
    HWND,
    Uint32,
    WPARAM,
    LPARAM,
  )
>(symbol: 'CallWindowProcW')
external int _CallWindowProc(
  Pointer<NativeFunction<WNDPROC>> lpPrevWndFunc,
  int hWnd,
  int msg,
  int wParam,
  int lParam,
);

@Native<BOOL Function(HWND, HWND)>(symbol: 'ChangeClipboardChain')
external int _ChangeClipboardChain(int hWndRemove, int hWndNewNext);

@Native<Int32 Function(Pointer<DEVMODE>, Uint32)>(
  symbol: 'ChangeDisplaySettingsW',
)
external int _ChangeDisplaySettings(Pointer<DEVMODE> lpDevMode, int dwFlags);

@Native<Int32 Function(PCWSTR, Pointer<DEVMODE>, HWND, Uint32, Pointer)>(
  symbol: 'ChangeDisplaySettingsExW',
)
external int _ChangeDisplaySettingsEx(
  PCWSTR lpszDeviceName,
  Pointer<DEVMODE> lpDevMode,
  int hwnd,
  int dwflags,
  Pointer lParam,
);

@Native<HWND Function(HWND, POINT)>(symbol: 'ChildWindowFromPoint')
external int _ChildWindowFromPoint(int hWndParent, POINT point);

@Native<HWND Function(HWND, POINT, Uint32)>(symbol: 'ChildWindowFromPointEx')
external int _ChildWindowFromPointEx(int hwnd, POINT pt, int flags);

@Native<BOOL Function(HWND, Pointer<POINT>)>(symbol: 'ClientToScreen')
external int _ClientToScreen(int hWnd, Pointer<POINT> lpPoint);

@Native<Int32 Function(HACCEL, Pointer<ACCEL>, Int32)>(
  symbol: 'CopyAcceleratorTableW',
)
external int _CopyAcceleratorTable(
  int hAccelSrc,
  Pointer<ACCEL> lpAccelDst,
  int cAccelEntries,
);

@Native<BOOL Function(Pointer<RECT>, Pointer<RECT>)>(symbol: 'CopyRect')
external int _CopyRect(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc);

@Native<LRESULT Function(HWND, Uint32, WPARAM, LPARAM)>(
  symbol: 'DefMDIChildProcW',
)
external int _DefMDIChildProc(int hWnd, int uMsg, int wParam, int lParam);

@Native<LRESULT Function(Pointer<Pointer<RAWINPUT>>, Int32, Uint32)>(
  symbol: 'DefRawInputProc',
)
external int _DefRawInputProc(
  Pointer<Pointer<RAWINPUT>> paRawInput,
  int nInput,
  int cbSizeHeader,
);

@Native<LRESULT Function(HWND, Uint32, WPARAM, LPARAM)>(
  symbol: 'DefWindowProcW',
)
external int _DefWindowProc(int hWnd, int msg, int wParam, int lParam);

@Native<BOOL Function(HACCEL)>(symbol: 'DestroyAcceleratorTable')
external int _DestroyAcceleratorTable(int hAccel);

@Native<Void Function()>(symbol: 'DisableProcessWindowsGhosting')
external void _DisableProcessWindowsGhosting();

@Native<LRESULT Function(Pointer<MSG>)>(symbol: 'DispatchMessageW')
external int _DispatchMessage(Pointer<MSG> lpMsg);

@Native<BOOL Function(HWND, POINT)>(symbol: 'DragDetect')
external int _DragDetect(int hwnd, POINT pt);

@Native<BOOL Function(HWND, Int32, Pointer<RECT>, Pointer<RECT>)>(
  symbol: 'DrawAnimatedRects',
)
external int _DrawAnimatedRects(
  int hwnd,
  int idAni,
  Pointer<RECT> lprcFrom,
  Pointer<RECT> lprcTo,
);

@Native<BOOL Function(HWND, HDC, Pointer<RECT>, Uint32)>(symbol: 'DrawCaption')
external int _DrawCaption(int hwnd, int hdc, Pointer<RECT> lprect, int flags);

@Native<BOOL Function(HDC, Pointer<RECT>, Uint32, Uint32)>(symbol: 'DrawEdge')
external int _DrawEdge(int hdc, Pointer<RECT> qrc, int edge, int grfFlags);

@Native<BOOL Function(HDC, Pointer<RECT>)>(symbol: 'DrawFocusRect')
external int _DrawFocusRect(int hDC, Pointer<RECT> lprc);

@Native<BOOL Function(HDC, Pointer<RECT>, Uint32, Uint32)>(
  symbol: 'DrawFrameControl',
)
external int _DrawFrameControl(
  int param0,
  Pointer<RECT> param1,
  int param2,
  int param3,
);

@Native<
  BOOL Function(
    HDC,
    HBRUSH,
    Pointer<NativeFunction<DRAWSTATEPROC>>,
    LPARAM,
    WPARAM,
    Int32,
    Int32,
    Int32,
    Int32,
    Uint32,
  )
>(symbol: 'DrawStateW')
external int _DrawState(
  int hdc,
  int hbrFore,
  Pointer<NativeFunction<DRAWSTATEPROC>> qfnCallBack,
  int lData,
  int wData,
  int x,
  int y,
  int cx,
  int cy,
  int uFlags,
);

@Native<Int32 Function(HDC, PCWSTR, Int32, Pointer<RECT>, Uint32)>(
  symbol: 'DrawTextW',
)
external int _DrawText(
  int hdc,
  PCWSTR lpchText,
  int cchText,
  Pointer<RECT> lprc,
  int format,
);

@Native<
  Int32 Function(
    HDC,
    PWSTR,
    Int32,
    Pointer<RECT>,
    Uint32,
    Pointer<DRAWTEXTPARAMS>,
  )
>(symbol: 'DrawTextExW')
external int _DrawTextEx(
  int hdc,
  PWSTR lpchText,
  int cchText,
  Pointer<RECT> lprc,
  int format,
  Pointer<DRAWTEXTPARAMS> lpdtp,
);

@Native<BOOL Function(HMENU, Uint32, Uint32)>(symbol: 'EnableMenuItem')
external int _EnableMenuItem(int hMenu, int uIDEnableItem, int uEnable);

@Native<BOOL Function(HWND, BOOL)>(symbol: 'EnableWindow')
external int _EnableWindow(int hWnd, int bEnable);

@Native<BOOL Function(HWND, Pointer<PAINTSTRUCT>)>(symbol: 'EndPaint')
external int _EndPaint(int hWnd, Pointer<PAINTSTRUCT> lpPaint);

@Native<BOOL Function(HWND, Pointer<NativeFunction<WNDENUMPROC>>, LPARAM)>(
  symbol: 'EnumChildWindows',
)
external int _EnumChildWindows(
  int hWndParent,
  Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc,
  int lParam,
);

@Native<BOOL Function(PCWSTR, Uint32, Pointer<DISPLAY_DEVICE>, Uint32)>(
  symbol: 'EnumDisplayDevicesW',
)
external int _EnumDisplayDevices(
  PCWSTR lpDevice,
  int iDevNum,
  Pointer<DISPLAY_DEVICE> lpDisplayDevice,
  int dwFlags,
);

@Native<
  BOOL Function(
    HDC,
    Pointer<RECT>,
    Pointer<NativeFunction<MONITORENUMPROC>>,
    LPARAM,
  )
>(symbol: 'EnumDisplayMonitors')
external int _EnumDisplayMonitors(
  int hdc,
  Pointer<RECT> lprcClip,
  Pointer<NativeFunction<MONITORENUMPROC>> lpfnEnum,
  int dwData,
);

@Native<BOOL Function(PCWSTR, Uint32, Pointer<DEVMODE>)>(
  symbol: 'EnumDisplaySettingsW',
)
external int _EnumDisplaySettings(
  PCWSTR lpszDeviceName,
  int iModeNum,
  Pointer<DEVMODE> lpDevMode,
);

@Native<BOOL Function(PCWSTR, Uint32, Pointer<DEVMODE>, Uint32)>(
  symbol: 'EnumDisplaySettingsExW',
)
external int _EnumDisplaySettingsEx(
  PCWSTR lpszDeviceName,
  int iModeNum,
  Pointer<DEVMODE> lpDevMode,
  int dwFlags,
);

@Native<BOOL Function(Uint32, Pointer<NativeFunction<WNDENUMPROC>>, LPARAM)>(
  symbol: 'EnumThreadWindows',
)
external int _EnumThreadWindows(
  int dwThreadId,
  Pointer<NativeFunction<WNDENUMPROC>> lpfn,
  int lParam,
);

@Native<BOOL Function(Pointer<RECT>, Pointer<RECT>)>(symbol: 'EqualRect')
external int _EqualRect(Pointer<RECT> lprc1, Pointer<RECT> lprc2);

@Native<Int32 Function(HDC, HWND)>(symbol: 'ExcludeUpdateRgn')
external int _ExcludeUpdateRgn(int hDC, int hWnd);

@Native<Int32 Function(HDC, Pointer<RECT>, HBRUSH)>(symbol: 'FillRect')
external int _FillRect(int hDC, Pointer<RECT> lprc, int hbr);

@Native<Int32 Function(HDC, Pointer<RECT>, HBRUSH)>(symbol: 'FrameRect')
external int _FrameRect(int hDC, Pointer<RECT> lprc, int hbr);

@Native<HWND Function()>(symbol: 'GetActiveWindow')
external int _GetActiveWindow();

@Native<HWND Function(HWND, Uint32)>(symbol: 'GetAncestor')
external int _GetAncestor(int hwnd, int gaFlags);

@Native<Int16 Function(Int32)>(symbol: 'GetAsyncKeyState')
external int _GetAsyncKeyState(int vKey);

@Native<Int32 Function(DPI_AWARENESS_CONTEXT)>(
  symbol: 'GetAwarenessFromDpiAwarenessContext',
)
external int _GetAwarenessFromDpiAwarenessContext(int value);

@Native<HWND Function()>(symbol: 'GetCapture')
external int _GetCapture();

@Native<Uint32 Function()>(symbol: 'GetClipboardSequenceNumber')
external int _GetClipboardSequenceNumber();

@Native<HCURSOR Function()>(symbol: 'GetCursor')
external int _GetCursor();

@Native<HDC Function(HWND)>(symbol: 'GetDC')
external int _GetDC(int hWnd);

@Native<HDC Function(HWND, HRGN, Uint32)>(symbol: 'GetDCEx')
external int _GetDCEx(int hWnd, int hrgnClip, int flags);

@Native<HWND Function()>(symbol: 'GetDesktopWindow')
external int _GetDesktopWindow();

@Native<Int32 Function()>(symbol: 'GetDialogBaseUnits')
external int _GetDialogBaseUnits();

@Native<BOOL Function(Pointer<Int32>)>(
  symbol: 'GetDisplayAutoRotationPreferences',
)
external int _GetDisplayAutoRotationPreferences(Pointer<Int32> pOrientation);

@Native<Uint32 Function()>(symbol: 'GetDoubleClickTime')
external int _GetDoubleClickTime();

@Native<Uint32 Function()>(symbol: 'GetDpiForSystem')
external int _GetDpiForSystem();

@Native<Uint32 Function(HWND)>(symbol: 'GetDpiForWindow')
external int _GetDpiForWindow(int hwnd);

@Native<Uint32 Function(DPI_AWARENESS_CONTEXT)>(
  symbol: 'GetDpiFromDpiAwarenessContext',
)
external int _GetDpiFromDpiAwarenessContext(int value);

@Native<HWND Function()>(symbol: 'GetFocus')
external int _GetFocus();

@Native<HWND Function()>(symbol: 'GetForegroundWindow')
external int _GetForegroundWindow();

@Native<BOOL Function(HICON, Pointer<ICONINFOEX>)>(symbol: 'GetIconInfoExW')
external int _GetIconInfoEx(int hicon, Pointer<ICONINFOEX> piconinfo);

@Native<BOOL Function()>(symbol: 'GetInputState')
external int _GetInputState();

@Native<HKL Function(Uint32)>(symbol: 'GetKeyboardLayout')
external int _GetKeyboardLayout(int idThread);

@Native<Int16 Function(Int32)>(symbol: 'GetKeyState')
external int _GetKeyState(int nVirtKey);

@Native<BOOL Function(Pointer<LASTINPUTINFO>)>(symbol: 'GetLastInputInfo')
external int _GetLastInputInfo(Pointer<LASTINPUTINFO> plii);

@Native<HMENU Function(HWND)>(symbol: 'GetMenu')
external int _GetMenu(int hWnd);

@Native<Uint32 Function(HMENU, Int32)>(symbol: 'GetMenuItemID')
external int _GetMenuItemID(int hMenu, int nPos);

@Native<Uint32 Function(HMENU, Uint32, Uint32)>(symbol: 'GetMenuState')
external int _GetMenuState(int hMenu, int uId, int uFlags);

@Native<Int32 Function(HMENU, Uint32, PWSTR, Int32, Uint32)>(
  symbol: 'GetMenuStringW',
)
external int _GetMenuString(
  int hMenu,
  int uIDItem,
  PWSTR lpString,
  int cchMax,
  int flags,
);

@Native<LPARAM Function()>(symbol: 'GetMessageExtraInfo')
external int _GetMessageExtraInfo();

@Native<Uint32 Function()>(symbol: 'GetMessagePos')
external int _GetMessagePos();

@Native<Int32 Function()>(symbol: 'GetMessageTime')
external int _GetMessageTime();

@Native<BOOL Function(HMONITOR, Pointer<MONITORINFO>)>(
  symbol: 'GetMonitorInfoW',
)
external int _GetMonitorInfo(int hMonitor, Pointer<MONITORINFO> lpmi);

@Native<HANDLE Function(HWND, PCWSTR)>(symbol: 'GetPropW')
external int _GetProp(int hWnd, PCWSTR lpString);

@Native<Uint32 Function(HRAWINPUT, Uint32, Pointer, Pointer<Uint32>, Uint32)>(
  symbol: 'GetRawInputData',
)
external int _GetRawInputData(
  int hRawInput,
  int uiCommand,
  Pointer pData,
  Pointer<Uint32> pcbSize,
  int cbSizeHeader,
);

@Native<HWND Function()>(symbol: 'GetShellWindow')
external int _GetShellWindow();

@Native<HMENU Function(HMENU, Int32)>(symbol: 'GetSubMenu')
external int _GetSubMenu(int hMenu, int nPos);

@Native<Uint32 Function(Int32)>(symbol: 'GetSysColor')
external int _GetSysColor(int nIndex);

@Native<HBRUSH Function(Int32)>(symbol: 'GetSysColorBrush')
external int _GetSysColorBrush(int nIndex);

@Native<Uint32 Function(HANDLE)>(symbol: 'GetSystemDpiForProcess')
external int _GetSystemDpiForProcess(int hProcess);

@Native<HMENU Function(HWND, BOOL)>(symbol: 'GetSystemMenu')
external int _GetSystemMenu(int hWnd, int bRevert);

@Native<Int32 Function(Int32)>(symbol: 'GetSystemMetrics')
external int _GetSystemMetrics(int nIndex);

@Native<Uint32 Function(HDC, PCWSTR, Int32, Int32, Pointer<Int32>)>(
  symbol: 'GetTabbedTextExtentW',
)
external int _GetTabbedTextExtent(
  int hdc,
  PCWSTR lpString,
  int chCount,
  int nTabPositions,
  Pointer<Int32> lpnTabStopPositions,
);

@Native<DPI_AWARENESS_CONTEXT Function()>(
  symbol: 'GetThreadDpiAwarenessContext',
)
external int _GetThreadDpiAwarenessContext();

@Native<Int32 Function()>(symbol: 'GetThreadDpiHostingBehavior')
external int _GetThreadDpiHostingBehavior();

@Native<Uint32 Function()>(symbol: 'GetUnpredictedMessagePos')
external int _GetUnpredictedMessagePos();

@Native<BOOL Function(HWND, Pointer<RECT>, BOOL)>(symbol: 'GetUpdateRect')
external int _GetUpdateRect(int hWnd, Pointer<RECT> lpRect, int bErase);

@Native<Int32 Function(HWND, HRGN, BOOL)>(symbol: 'GetUpdateRgn')
external int _GetUpdateRgn(int hWnd, int hRgn, int bErase);

@Native<HDC Function(HWND)>(symbol: 'GetWindowDC')
external int _GetWindowDC(int hWnd);

@Native<DPI_AWARENESS_CONTEXT Function(HWND)>(
  symbol: 'GetWindowDpiAwarenessContext',
)
external int _GetWindowDpiAwarenessContext(int hwnd);

@Native<Int32 Function(HWND)>(symbol: 'GetWindowDpiHostingBehavior')
external int _GetWindowDpiHostingBehavior(int hwnd);

@Native<Uint32 Function(HWND, PWSTR, Uint32)>(
  symbol: 'GetWindowModuleFileNameW',
)
external int _GetWindowModuleFileName(
  int hwnd,
  PWSTR pszFileName,
  int cchFileNameMax,
);

@Native<Int32 Function(HWND, HRGN)>(symbol: 'GetWindowRgn')
external int _GetWindowRgn(int hWnd, int hRgn);

@Native<Int32 Function(HWND, Pointer<RECT>)>(symbol: 'GetWindowRgnBox')
external int _GetWindowRgnBox(int hWnd, Pointer<RECT> lprc);

@Native<Uint32 Function(HWND, Pointer<Uint32>)>(
  symbol: 'GetWindowThreadProcessId',
)
external int _GetWindowThreadProcessId(int hWnd, Pointer<Uint32> lpdwProcessId);

@Native<
  BOOL Function(
    HDC,
    HBRUSH,
    Pointer<NativeFunction<GRAYSTRINGPROC>>,
    LPARAM,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
  )
>(symbol: 'GrayStringW')
external int _GrayString(
  int hDC,
  int hBrush,
  Pointer<NativeFunction<GRAYSTRINGPROC>> lpOutputFunc,
  int lpData,
  int nCount,
  int x,
  int y,
  int nWidth,
  int nHeight,
);

@Native<BOOL Function(HWND, HMENU, Uint32, Uint32)>(symbol: 'HiliteMenuItem')
external int _HiliteMenuItem(
  int hWnd,
  int hMenu,
  int uIDHiliteItem,
  int uHilite,
);

@Native<BOOL Function(Pointer<RECT>, Int32, Int32)>(symbol: 'InflateRect')
external int _InflateRect(Pointer<RECT> lprc, int dx, int dy);

@Native<BOOL Function()>(symbol: 'InSendMessage')
external int _InSendMessage();

@Native<Uint32 Function(Pointer)>(symbol: 'InSendMessageEx')
external int _InSendMessageEx(Pointer lpReserved);

@Native<BOOL Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>)>(
  symbol: 'IntersectRect',
)
external int _IntersectRect(
  Pointer<RECT> lprcDst,
  Pointer<RECT> lprcSrc1,
  Pointer<RECT> lprcSrc2,
);

@Native<BOOL Function(HWND, Pointer<RECT>, BOOL)>(symbol: 'InvalidateRect')
external int _InvalidateRect(int hWnd, Pointer<RECT> lpRect, int bErase);

@Native<BOOL Function(HWND, HRGN, BOOL)>(symbol: 'InvalidateRgn')
external int _InvalidateRgn(int hWnd, int hRgn, int bErase);

@Native<BOOL Function(HDC, Pointer<RECT>)>(symbol: 'InvertRect')
external int _InvertRect(int hDC, Pointer<RECT> lprc);

@Native<BOOL Function(HWND, HWND)>(symbol: 'IsChild')
external int _IsChild(int hWndParent, int hWnd);

@Native<BOOL Function(HWND, Pointer<MSG>)>(symbol: 'IsDialogMessageW')
external int _IsDialogMessage(int hDlg, Pointer<MSG> lpMsg);

@Native<Uint32 Function(HWND, Int32)>(symbol: 'IsDlgButtonChecked')
external int _IsDlgButtonChecked(int hDlg, int nIDButton);

@Native<BOOL Function(BOOL)>(symbol: 'IsGUIThread')
external int _IsGUIThread(int bConvert);

@Native<BOOL Function(HWND)>(symbol: 'IsHungAppWindow')
external int _IsHungAppWindow(int hwnd);

@Native<BOOL Function(HWND)>(symbol: 'IsIconic')
external int _IsIconic(int hWnd);

@Native<BOOL Function(HMENU)>(symbol: 'IsMenu')
external int _IsMenu(int hMenu);

@Native<BOOL Function()>(symbol: 'IsMouseInPointerEnabled')
external int _IsMouseInPointerEnabled();

@Native<BOOL Function()>(symbol: 'IsProcessDPIAware')
external int _IsProcessDPIAware();

@Native<BOOL Function(Pointer<RECT>)>(symbol: 'IsRectEmpty')
external int _IsRectEmpty(Pointer<RECT> lprc);

@Native<BOOL Function(HWND, Pointer<Uint32>)>(symbol: 'IsTouchWindow')
external int _IsTouchWindow(int hwnd, Pointer<Uint32> pulFlags);

@Native<BOOL Function(DPI_AWARENESS_CONTEXT)>(
  symbol: 'IsValidDpiAwarenessContext',
)
external int _IsValidDpiAwarenessContext(int value);

@Native<BOOL Function(HWND)>(symbol: 'IsWindow')
external int _IsWindow(int hWnd);

@Native<BOOL Function(HWND)>(symbol: 'IsWindowEnabled')
external int _IsWindowEnabled(int hWnd);

@Native<BOOL Function(HWND)>(symbol: 'IsWindowUnicode')
external int _IsWindowUnicode(int hWnd);

@Native<BOOL Function(HWND)>(symbol: 'IsWindowVisible')
external int _IsWindowVisible(int hWnd);

@Native<BOOL Function()>(symbol: 'IsWow64Message')
external int _IsWow64Message();

@Native<BOOL Function(HWND)>(symbol: 'IsZoomed')
external int _IsZoomed(int hWnd);

@Native<BOOL Function(HWND)>(symbol: 'LockWindowUpdate')
external int _LockWindowUpdate(int hWndLock);

@Native<BOOL Function(HWND, Pointer<POINT>)>(symbol: 'LogicalToPhysicalPoint')
external int _LogicalToPhysicalPoint(int hWnd, Pointer<POINT> lpPoint);

@Native<BOOL Function(HWND, Pointer<POINT>)>(
  symbol: 'LogicalToPhysicalPointForPerMonitorDPI',
)
external int _LogicalToPhysicalPointForPerMonitorDPI(
  int hWnd,
  Pointer<POINT> lpPoint,
);

@Native<Uint32 Function(Uint32, Uint32)>(symbol: 'MapVirtualKeyW')
external int _MapVirtualKey(int uCode, int uMapType);

@Native<Uint32 Function(Uint32, Uint32, HKL)>(symbol: 'MapVirtualKeyExW')
external int _MapVirtualKeyEx(int uCode, int uMapType, int dwhkl);

@Native<Int32 Function(HWND, HWND, Pointer<POINT>, Uint32)>(
  symbol: 'MapWindowPoints',
)
external int _MapWindowPoints(
  int hWndFrom,
  int hWndTo,
  Pointer<POINT> lpPoints,
  int cPoints,
);

@Native<Int32 Function(HWND, HMENU, POINT)>(symbol: 'MenuItemFromPoint')
external int _MenuItemFromPoint(int hWnd, int hMenu, POINT ptScreen);

@Native<HMONITOR Function(POINT, Uint32)>(symbol: 'MonitorFromPoint')
external int _MonitorFromPoint(POINT pt, int dwFlags);

@Native<HMONITOR Function(Pointer<RECT>, Uint32)>(symbol: 'MonitorFromRect')
external int _MonitorFromRect(Pointer<RECT> lprc, int dwFlags);

@Native<HMONITOR Function(HWND, Uint32)>(symbol: 'MonitorFromWindow')
external int _MonitorFromWindow(int hwnd, int dwFlags);

@Native<Void Function(Uint32, HWND, Int32, Int32)>(symbol: 'NotifyWinEvent')
external void _NotifyWinEvent(int event, int hwnd, int idObject, int idChild);

@Native<Uint32 Function(Uint16)>(symbol: 'OemKeyScan')
external int _OemKeyScan(int wOemChar);

@Native<BOOL Function(Pointer<RECT>, Int32, Int32)>(symbol: 'OffsetRect')
external int _OffsetRect(Pointer<RECT> lprc, int dx, int dy);

@Native<BOOL Function(HDC)>(symbol: 'PaintDesktop')
external int _PaintDesktop(int hdc);

@Native<BOOL Function(Pointer<MSG>, HWND, Uint32, Uint32, Uint32)>(
  symbol: 'PeekMessageW',
)
external int _PeekMessage(
  Pointer<MSG> lpMsg,
  int hWnd,
  int wMsgFilterMin,
  int wMsgFilterMax,
  int wRemoveMsg,
);

@Native<BOOL Function(HWND, Pointer<POINT>)>(symbol: 'PhysicalToLogicalPoint')
external int _PhysicalToLogicalPoint(int hWnd, Pointer<POINT> lpPoint);

@Native<BOOL Function(HWND, Pointer<POINT>)>(
  symbol: 'PhysicalToLogicalPointForPerMonitorDPI',
)
external int _PhysicalToLogicalPointForPerMonitorDPI(
  int hWnd,
  Pointer<POINT> lpPoint,
);

@Native<Void Function(Int32)>(symbol: 'PostQuitMessage')
external void _PostQuitMessage(int nExitCode);

@Native<BOOL Function(HWND, HDC, Uint32)>(symbol: 'PrintWindow')
external int _PrintWindow(int hwnd, int hdcBlt, int nFlags);

@Native<
  Uint32 Function(
    PCWSTR,
    Int32,
    Int32,
    Int32,
    Pointer<HICON>,
    Pointer<Uint32>,
    Uint32,
    Uint32,
  )
>(symbol: 'PrivateExtractIconsW')
external int _PrivateExtractIcons(
  PCWSTR szFileName,
  int nIconIndex,
  int cxIcon,
  int cyIcon,
  Pointer<HICON> phicon,
  Pointer<Uint32> piconid,
  int nIcons,
  int flags,
);

@Native<BOOL Function(Pointer<RECT>, POINT)>(symbol: 'PtInRect')
external int _PtInRect(Pointer<RECT> lprc, POINT pt);

@Native<BOOL Function(HWND, Pointer<RECT>, HRGN, Uint32)>(
  symbol: 'RedrawWindow',
)
external int _RedrawWindow(
  int hWnd,
  Pointer<RECT> lprcUpdate,
  int hrgnUpdate,
  int flags,
);

@Native<Int32 Function(HWND, HDC)>(symbol: 'ReleaseDC')
external int _ReleaseDC(int hWnd, int hDC);

@Native<BOOL Function(LRESULT)>(symbol: 'ReplyMessage')
external int _ReplyMessage(int lResult);

@Native<BOOL Function(HWND, Pointer<POINT>)>(symbol: 'ScreenToClient')
external int _ScreenToClient(int hWnd, Pointer<POINT> lpPoint);

@Native<LRESULT Function(HWND, Int32, Uint32, WPARAM, LPARAM)>(
  symbol: 'SendDlgItemMessageW',
)
external int _SendDlgItemMessage(
  int hDlg,
  int nIDDlgItem,
  int msg,
  int wParam,
  int lParam,
);

@Native<HWND Function(HWND)>(symbol: 'SetCapture')
external int _SetCapture(int hWnd);

@Native<HCURSOR Function(HCURSOR)>(symbol: 'SetCursor')
external int _SetCursor(int hCursor);

@Native<BOOL Function(Int32)>(symbol: 'SetDisplayAutoRotationPreferences')
external int _SetDisplayAutoRotationPreferences(int orientation);

@Native<
  Int32 Function(
    Uint32,
    Pointer<DISPLAYCONFIG_PATH_INFO>,
    Uint32,
    Pointer<DISPLAYCONFIG_MODE_INFO>,
    Uint32,
  )
>(symbol: 'SetDisplayConfig')
external int _SetDisplayConfig(
  int numPathArrayElements,
  Pointer<DISPLAYCONFIG_PATH_INFO> pathArray,
  int numModeInfoArrayElements,
  Pointer<DISPLAYCONFIG_MODE_INFO> modeInfoArray,
  int flags,
);

@Native<BOOL Function(HWND)>(symbol: 'SetForegroundWindow')
external int _SetForegroundWindow(int hWnd);

@Native<LPARAM Function(LPARAM)>(symbol: 'SetMessageExtraInfo')
external int _SetMessageExtraInfo(int lParam);

@Native<BOOL Function()>(symbol: 'SetProcessDPIAware')
external int _SetProcessDPIAware();

@Native<BOOL Function(Pointer<RECT>, Int32, Int32, Int32, Int32)>(
  symbol: 'SetRect',
)
external int _SetRect(
  Pointer<RECT> lprc,
  int xLeft,
  int yTop,
  int xRight,
  int yBottom,
);

@Native<BOOL Function(Pointer<RECT>)>(symbol: 'SetRectEmpty')
external int _SetRectEmpty(Pointer<RECT> lprc);

@Native<Int32 Function(HWND, Int32, Pointer<SCROLLINFO>, BOOL)>(
  symbol: 'SetScrollInfo',
)
external int _SetScrollInfo(
  int hwnd,
  int nBar,
  Pointer<SCROLLINFO> lpsi,
  int redraw,
);

@Native<DPI_AWARENESS_CONTEXT Function(DPI_AWARENESS_CONTEXT)>(
  symbol: 'SetThreadDpiAwarenessContext',
)
external int _SetThreadDpiAwarenessContext(int dpiContext);

@Native<Int32 Function(Int32)>(symbol: 'SetThreadDpiHostingBehavior')
external int _SetThreadDpiHostingBehavior(int value);

@Native<Int32 Function(HWND, HRGN, BOOL)>(symbol: 'SetWindowRgn')
external int _SetWindowRgn(int hWnd, int hRgn, int bRedraw);

@Native<Int32 Function(BOOL)>(symbol: 'ShowCursor')
external int _ShowCursor(int bShow);

@Native<BOOL Function(HWND, Int32)>(symbol: 'ShowWindow')
external int _ShowWindow(int hWnd, int nCmdShow);

@Native<BOOL Function(HWND, Int32)>(symbol: 'ShowWindowAsync')
external int _ShowWindowAsync(int hWnd, int nCmdShow);

@Native<BOOL Function()>(symbol: 'SoundSentry')
external int _SoundSentry();

@Native<BOOL Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>)>(
  symbol: 'SubtractRect',
)
external int _SubtractRect(
  Pointer<RECT> lprcDst,
  Pointer<RECT> lprcSrc1,
  Pointer<RECT> lprcSrc2,
);

@Native<BOOL Function(BOOL)>(symbol: 'SwapMouseButton')
external int _SwapMouseButton(int fSwap);

@Native<Void Function(HWND, BOOL)>(symbol: 'SwitchToThisWindow')
external void _SwitchToThisWindow(int hwnd, int fUnknown);

@Native<
  Int32 Function(HDC, Int32, Int32, PCWSTR, Int32, Int32, Pointer<Int32>, Int32)
>(symbol: 'TabbedTextOutW')
external int _TabbedTextOut(
  int hdc,
  int x,
  int y,
  PCWSTR lpString,
  int chCount,
  int nTabPositions,
  Pointer<Int32> lpnTabStopPositions,
  int nTabOrigin,
);

@Native<
  Int32 Function(Uint32, Uint32, Pointer<Uint8>, Pointer<Uint16>, Uint32)
>(symbol: 'ToAscii')
external int _ToAscii(
  int uVirtKey,
  int uScanCode,
  Pointer<Uint8> lpKeyState,
  Pointer<Uint16> lpChar,
  int uFlags,
);

@Native<
  Int32 Function(Uint32, Uint32, Pointer<Uint8>, Pointer<Uint16>, Uint32, HKL)
>(symbol: 'ToAsciiEx')
external int _ToAsciiEx(
  int uVirtKey,
  int uScanCode,
  Pointer<Uint8> lpKeyState,
  Pointer<Uint16> lpChar,
  int uFlags,
  int dwhkl,
);

@Native<Int32 Function(Uint32, Uint32, Pointer<Uint8>, PWSTR, Int32, Uint32)>(
  symbol: 'ToUnicode',
)
external int _ToUnicode(
  int wVirtKey,
  int wScanCode,
  Pointer<Uint8> lpKeyState,
  PWSTR pwszBuff,
  int cchBuff,
  int wFlags,
);

@Native<
  Int32 Function(Uint32, Uint32, Pointer<Uint8>, PWSTR, Int32, Uint32, HKL)
>(symbol: 'ToUnicodeEx')
external int _ToUnicodeEx(
  int wVirtKey,
  int wScanCode,
  Pointer<Uint8> lpKeyState,
  PWSTR pwszBuff,
  int cchBuff,
  int wFlags,
  int dwhkl,
);

@Native<BOOL Function(HWND, Pointer<MSG>)>(symbol: 'TranslateMDISysAccel')
external int _TranslateMDISysAccel(int hWndClient, Pointer<MSG> lpMsg);

@Native<BOOL Function(Pointer<MSG>)>(symbol: 'TranslateMessage')
external int _TranslateMessage(Pointer<MSG> lpMsg);

@Native<BOOL Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>)>(
  symbol: 'UnionRect',
)
external int _UnionRect(
  Pointer<RECT> lprcDst,
  Pointer<RECT> lprcSrc1,
  Pointer<RECT> lprcSrc2,
);

@Native<BOOL Function(HWND, Pointer<UPDATELAYEREDWINDOWINFO>)>(
  symbol: 'UpdateLayeredWindowIndirect',
)
external int _UpdateLayeredWindowIndirect(
  int hWnd,
  Pointer<UPDATELAYEREDWINDOWINFO> pULWInfo,
);

@Native<BOOL Function(HWND)>(symbol: 'UpdateWindow')
external int _UpdateWindow(int hWnd);

@Native<BOOL Function(HWND, Pointer<RECT>)>(symbol: 'ValidateRect')
external int _ValidateRect(int hWnd, Pointer<RECT> lpRect);

@Native<BOOL Function(HWND, HRGN)>(symbol: 'ValidateRgn')
external int _ValidateRgn(int hWnd, int hRgn);

@Native<Int16 Function(Uint16)>(symbol: 'VkKeyScanW')
external int _VkKeyScan(int ch);

@Native<Int16 Function(Uint16, HKL)>(symbol: 'VkKeyScanExW')
external int _VkKeyScanEx(int ch, int dwhkl);

@Native<Uint32 Function(HANDLE, Uint32)>(symbol: 'WaitForInputIdle')
external int _WaitForInputIdle(int hProcess, int dwMilliseconds);

@Native<HWND Function(HDC)>(symbol: 'WindowFromDC')
external int _WindowFromDC(int hDC);

@Native<HWND Function(POINT)>(symbol: 'WindowFromPhysicalPoint')
external int _WindowFromPhysicalPoint(POINT point);

@Native<HWND Function(POINT)>(symbol: 'WindowFromPoint')
external int _WindowFromPoint(POINT point);
