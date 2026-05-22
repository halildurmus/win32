// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: specify_nonobvious_property_types, unused_import

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('user32.dll', () {
    test('ActivateKeyboardLayout can be instantiated', () {
      check(_ActivateKeyboardLayout).isA<Function>();
    });
    test('AddClipboardFormatListener can be instantiated', () {
      check(_AddClipboardFormatListener).isA<Function>();
    });
    test('AdjustWindowRect can be instantiated', () {
      check(_AdjustWindowRect).isA<Function>();
    });
    test('AdjustWindowRectEx can be instantiated', () {
      check(_AdjustWindowRectEx).isA<Function>();
    });
    test(
      'AdjustWindowRectExForDpi can be instantiated',
      skip: 14393 > windowsBuildNumber,
      () {
        check(_AdjustWindowRectExForDpi).isA<Function>();
      },
    );
    test('AllowSetForegroundWindow can be instantiated', () {
      check(_AllowSetForegroundWindow).isA<Function>();
    });
    test('AnimateWindow can be instantiated', () {
      check(_AnimateWindow).isA<Function>();
    });
    test('AnyPopup can be instantiated', () {
      check(_AnyPopup).isA<Function>();
    });
    test('AppendMenu can be instantiated', () {
      check(_AppendMenu).isA<Function>();
    });
    test(
      'AreDpiAwarenessContextsEqual can be instantiated',
      skip: 14393 > windowsBuildNumber,
      () {
        check(_AreDpiAwarenessContextsEqual).isA<Function>();
      },
    );
    test('ArrangeIconicWindows can be instantiated', () {
      check(_ArrangeIconicWindows).isA<Function>();
    });
    test('AttachThreadInput can be instantiated', () {
      check(_AttachThreadInput).isA<Function>();
    });
    test('BeginDeferWindowPos can be instantiated', () {
      check(_BeginDeferWindowPos).isA<Function>();
    });
    test('BeginPaint can be instantiated', () {
      check(_BeginPaint).isA<Function>();
    });
    test('BlockInput can be instantiated', () {
      check(_BlockInput).isA<Function>();
    });
    test('BringWindowToTop can be instantiated', () {
      check(_BringWindowToTop).isA<Function>();
    });
    test('BroadcastSystemMessage can be instantiated', () {
      check(_BroadcastSystemMessage).isA<Function>();
    });
    test('BroadcastSystemMessageEx can be instantiated', () {
      check(_BroadcastSystemMessageEx).isA<Function>();
    });
    test('CalculatePopupWindowPosition can be instantiated', () {
      check(_CalculatePopupWindowPosition).isA<Function>();
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
      check(_CascadeWindows).isA<Function>();
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
      check(_ChangeWindowMessageFilter).isA<Function>();
    });
    test('ChangeWindowMessageFilterEx can be instantiated', () {
      check(_ChangeWindowMessageFilterEx).isA<Function>();
    });
    test('CheckDlgButton can be instantiated', () {
      check(_CheckDlgButton).isA<Function>();
    });
    test('CheckRadioButton can be instantiated', () {
      check(_CheckRadioButton).isA<Function>();
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
      check(_ClipCursor).isA<Function>();
    });
    test('CloseClipboard can be instantiated', () {
      check(_CloseClipboard).isA<Function>();
    });
    test('CloseDesktop can be instantiated', () {
      check(_CloseDesktop).isA<Function>();
    });
    test('CloseGestureInfoHandle can be instantiated', () {
      check(_CloseGestureInfoHandle).isA<Function>();
    });
    test('CloseTouchInputHandle can be instantiated', () {
      check(_CloseTouchInputHandle).isA<Function>();
    });
    test('CloseWindow can be instantiated', () {
      check(_CloseWindow).isA<Function>();
    });
    test('CloseWindowStation can be instantiated', () {
      check(_CloseWindowStation).isA<Function>();
    });
    test('CopyAcceleratorTable can be instantiated', () {
      check(_CopyAcceleratorTable).isA<Function>();
    });
    test('CopyIcon can be instantiated', () {
      check(_CopyIcon).isA<Function>();
    });
    test('CopyImage can be instantiated', () {
      check(_CopyImage).isA<Function>();
    });
    test('CopyRect can be instantiated', () {
      check(_CopyRect).isA<Function>();
    });
    test('CountClipboardFormats can be instantiated', () {
      check(_CountClipboardFormats).isA<Function>();
    });
    test('CreateAcceleratorTable can be instantiated', () {
      check(_CreateAcceleratorTable).isA<Function>();
    });
    test('CreateCaret can be instantiated', () {
      check(_CreateCaret).isA<Function>();
    });
    test('CreateCursor can be instantiated', () {
      check(_CreateCursor).isA<Function>();
    });
    test('CreateDesktop can be instantiated', () {
      check(_CreateDesktop).isA<Function>();
    });
    test('CreateDesktopEx can be instantiated', () {
      check(_CreateDesktopEx).isA<Function>();
    });
    test('CreateDialogIndirectParam can be instantiated', () {
      check(_CreateDialogIndirectParam).isA<Function>();
    });
    test('CreateIcon can be instantiated', () {
      check(_CreateIcon).isA<Function>();
    });
    test('CreateIconFromResource can be instantiated', () {
      check(_CreateIconFromResource).isA<Function>();
    });
    test('CreateIconFromResourceEx can be instantiated', () {
      check(_CreateIconFromResourceEx).isA<Function>();
    });
    test('CreateIconIndirect can be instantiated', () {
      check(_CreateIconIndirect).isA<Function>();
    });
    test('CreateMDIWindow can be instantiated', () {
      check(_CreateMDIWindow).isA<Function>();
    });
    test('CreateMenu can be instantiated', () {
      check(_CreateMenu).isA<Function>();
    });
    test('CreatePopupMenu can be instantiated', () {
      check(_CreatePopupMenu).isA<Function>();
    });
    test('CreateWindowEx can be instantiated', () {
      check(_CreateWindowEx).isA<Function>();
    });
    test('CreateWindowStation can be instantiated', () {
      check(_CreateWindowStation).isA<Function>();
    });
    test('DeferWindowPos can be instantiated', () {
      check(_DeferWindowPos).isA<Function>();
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
      check(_DeleteMenu).isA<Function>();
    });
    test('DestroyAcceleratorTable can be instantiated', () {
      check(_DestroyAcceleratorTable).isA<Function>();
    });
    test('DestroyCaret can be instantiated', () {
      check(_DestroyCaret).isA<Function>();
    });
    test('DestroyCursor can be instantiated', () {
      check(_DestroyCursor).isA<Function>();
    });
    test('DestroyIcon can be instantiated', () {
      check(_DestroyIcon).isA<Function>();
    });
    test('DestroyMenu can be instantiated', () {
      check(_DestroyMenu).isA<Function>();
    });
    test('DestroyWindow can be instantiated', () {
      check(_DestroyWindow).isA<Function>();
    });
    test('DialogBoxIndirectParam can be instantiated', () {
      check(_DialogBoxIndirectParam).isA<Function>();
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
      check(_DrawIcon).isA<Function>();
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
      check(_EmptyClipboard).isA<Function>();
    });
    test('EnableMenuItem can be instantiated', () {
      check(_EnableMenuItem).isA<Function>();
    });
    test('EnableMouseInPointer can be instantiated', () {
      check(_EnableMouseInPointer).isA<Function>();
    });
    test(
      'EnableNonClientDpiScaling can be instantiated',
      skip: 14393 > windowsBuildNumber,
      () {
        check(_EnableNonClientDpiScaling).isA<Function>();
      },
    );
    test('EnableScrollBar can be instantiated', () {
      check(_EnableScrollBar).isA<Function>();
    });
    test('EnableWindow can be instantiated', () {
      check(_EnableWindow).isA<Function>();
    });
    test('EndDeferWindowPos can be instantiated', () {
      check(_EndDeferWindowPos).isA<Function>();
    });
    test('EndDialog can be instantiated', () {
      check(_EndDialog).isA<Function>();
    });
    test('EndMenu can be instantiated', () {
      check(_EndMenu).isA<Function>();
    });
    test('EndPaint can be instantiated', () {
      check(_EndPaint).isA<Function>();
    });
    test('EnumChildWindows can be instantiated', () {
      check(_EnumChildWindows).isA<Function>();
    });
    test('EnumClipboardFormats can be instantiated', () {
      check(_EnumClipboardFormats).isA<Function>();
    });
    test('EnumDesktopWindows can be instantiated', () {
      check(_EnumDesktopWindows).isA<Function>();
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
      check(_EnumWindows).isA<Function>();
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
      check(_FindWindow).isA<Function>();
    });
    test('FindWindowEx can be instantiated', () {
      check(_FindWindowEx).isA<Function>();
    });
    test('FrameRect can be instantiated', () {
      check(_FrameRect).isA<Function>();
    });
    test('GetActiveWindow can be instantiated', () {
      check(_GetActiveWindow).isA<Function>();
    });
    test('GetAltTabInfo can be instantiated', () {
      check(_GetAltTabInfo).isA<Function>();
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
      check(_GetCaretBlinkTime).isA<Function>();
    });
    test('GetCaretPos can be instantiated', () {
      check(_GetCaretPos).isA<Function>();
    });
    test('GetClassInfo can be instantiated', () {
      check(_GetClassInfo).isA<Function>();
    });
    test('GetClassInfoEx can be instantiated', () {
      check(_GetClassInfoEx).isA<Function>();
    });
    test('GetClassLongPtr can be instantiated', () {
      check(_GetClassLongPtr).isA<Function>();
    });
    test('GetClassName can be instantiated', () {
      check(_GetClassName).isA<Function>();
    });
    test('GetClientRect can be instantiated', () {
      check(_GetClientRect).isA<Function>();
    });
    test('GetClipboardData can be instantiated', () {
      check(_GetClipboardData).isA<Function>();
    });
    test('GetClipboardFormatName can be instantiated', () {
      check(_GetClipboardFormatName).isA<Function>();
    });
    test('GetClipboardOwner can be instantiated', () {
      check(_GetClipboardOwner).isA<Function>();
    });
    test('GetClipboardSequenceNumber can be instantiated', () {
      check(_GetClipboardSequenceNumber).isA<Function>();
    });
    test('GetClipboardViewer can be instantiated', () {
      check(_GetClipboardViewer).isA<Function>();
    });
    test('GetClipCursor can be instantiated', () {
      check(_GetClipCursor).isA<Function>();
    });
    test('GetCursor can be instantiated', () {
      check(_GetCursor).isA<Function>();
    });
    test('GetCursorInfo can be instantiated', () {
      check(_GetCursorInfo).isA<Function>();
    });
    test('GetCursorPos can be instantiated', () {
      check(_GetCursorPos).isA<Function>();
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
        check(_GetDialogControlDpiChangeBehavior).isA<Function>();
      },
    );
    test(
      'GetDialogDpiChangeBehavior can be instantiated',
      skip: 15063 > windowsBuildNumber,
      () {
        check(_GetDialogDpiChangeBehavior).isA<Function>();
      },
    );
    test('GetDisplayAutoRotationPreferences can be instantiated', () {
      check(_GetDisplayAutoRotationPreferences).isA<Function>();
    });
    test('GetDlgItem can be instantiated', () {
      check(_GetDlgItem).isA<Function>();
    });
    test('GetDlgItemInt can be instantiated', () {
      check(_GetDlgItemInt).isA<Function>();
    });
    test('GetDlgItemText can be instantiated', () {
      check(_GetDlgItemText).isA<Function>();
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
      check(_GetGestureConfig).isA<Function>();
    });
    test('GetGestureExtraArgs can be instantiated', () {
      check(_GetGestureExtraArgs).isA<Function>();
    });
    test('GetGestureInfo can be instantiated', () {
      check(_GetGestureInfo).isA<Function>();
    });
    test('GetGUIThreadInfo can be instantiated', () {
      check(_GetGUIThreadInfo).isA<Function>();
    });
    test('GetIconInfo can be instantiated', () {
      check(_GetIconInfo).isA<Function>();
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
      check(_GetKeyboardLayoutList).isA<Function>();
    });
    test('GetKeyboardLayoutName can be instantiated', () {
      check(_GetKeyboardLayoutName).isA<Function>();
    });
    test('GetKeyboardState can be instantiated', () {
      check(_GetKeyboardState).isA<Function>();
    });
    test('GetKeyboardType can be instantiated', () {
      check(_GetKeyboardType).isA<Function>();
    });
    test('GetKeyNameText can be instantiated', () {
      check(_GetKeyNameText).isA<Function>();
    });
    test('GetKeyState can be instantiated', () {
      check(_GetKeyState).isA<Function>();
    });
    test('GetLastInputInfo can be instantiated', () {
      check(_GetLastInputInfo).isA<Function>();
    });
    test('GetLayeredWindowAttributes can be instantiated', () {
      check(_GetLayeredWindowAttributes).isA<Function>();
    });
    test('GetMenu can be instantiated', () {
      check(_GetMenu).isA<Function>();
    });
    test('GetMenuBarInfo can be instantiated', () {
      check(_GetMenuBarInfo).isA<Function>();
    });
    test('GetMenuDefaultItem can be instantiated', () {
      check(_GetMenuDefaultItem).isA<Function>();
    });
    test('GetMenuInfo can be instantiated', () {
      check(_GetMenuInfo).isA<Function>();
    });
    test('GetMenuItemCount can be instantiated', () {
      check(_GetMenuItemCount).isA<Function>();
    });
    test('GetMenuItemID can be instantiated', () {
      check(_GetMenuItemID).isA<Function>();
    });
    test('GetMenuItemInfo can be instantiated', () {
      check(_GetMenuItemInfo).isA<Function>();
    });
    test('GetMenuItemRect can be instantiated', () {
      check(_GetMenuItemRect).isA<Function>();
    });
    test('GetMenuState can be instantiated', () {
      check(_GetMenuState).isA<Function>();
    });
    test('GetMenuString can be instantiated', () {
      check(_GetMenuString).isA<Function>();
    });
    test('GetMessage can be instantiated', () {
      check(_GetMessage).isA<Function>();
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
      check(_GetMouseMovePointsEx).isA<Function>();
    });
    test('GetNextDlgGroupItem can be instantiated', () {
      check(_GetNextDlgGroupItem).isA<Function>();
    });
    test('GetNextDlgTabItem can be instantiated', () {
      check(_GetNextDlgTabItem).isA<Function>();
    });
    test('GetOpenClipboardWindow can be instantiated', () {
      check(_GetOpenClipboardWindow).isA<Function>();
    });
    test('GetParent can be instantiated', () {
      check(_GetParent).isA<Function>();
    });
    test('GetPhysicalCursorPos can be instantiated', () {
      check(_GetPhysicalCursorPos).isA<Function>();
    });
    test('GetPointerCursorId can be instantiated', () {
      check(_GetPointerCursorId).isA<Function>();
    });
    test('GetPointerFrameInfo can be instantiated', () {
      check(_GetPointerFrameInfo).isA<Function>();
    });
    test('GetPointerFrameInfoHistory can be instantiated', () {
      check(_GetPointerFrameInfoHistory).isA<Function>();
    });
    test('GetPointerFramePenInfo can be instantiated', () {
      check(_GetPointerFramePenInfo).isA<Function>();
    });
    test('GetPointerFramePenInfoHistory can be instantiated', () {
      check(_GetPointerFramePenInfoHistory).isA<Function>();
    });
    test('GetPointerFrameTouchInfo can be instantiated', () {
      check(_GetPointerFrameTouchInfo).isA<Function>();
    });
    test('GetPointerFrameTouchInfoHistory can be instantiated', () {
      check(_GetPointerFrameTouchInfoHistory).isA<Function>();
    });
    test('GetPointerInfo can be instantiated', () {
      check(_GetPointerInfo).isA<Function>();
    });
    test('GetPointerInfoHistory can be instantiated', () {
      check(_GetPointerInfoHistory).isA<Function>();
    });
    test('GetPointerInputTransform can be instantiated', () {
      check(_GetPointerInputTransform).isA<Function>();
    });
    test('GetPointerPenInfo can be instantiated', () {
      check(_GetPointerPenInfo).isA<Function>();
    });
    test('GetPointerPenInfoHistory can be instantiated', () {
      check(_GetPointerPenInfoHistory).isA<Function>();
    });
    test('GetPointerTouchInfo can be instantiated', () {
      check(_GetPointerTouchInfo).isA<Function>();
    });
    test('GetPointerTouchInfoHistory can be instantiated', () {
      check(_GetPointerTouchInfoHistory).isA<Function>();
    });
    test('GetPointerType can be instantiated', () {
      check(_GetPointerType).isA<Function>();
    });
    test('GetPriorityClipboardFormat can be instantiated', () {
      check(_GetPriorityClipboardFormat).isA<Function>();
    });
    test('GetProcessWindowStation can be instantiated', () {
      check(_GetProcessWindowStation).isA<Function>();
    });
    test('GetProp can be instantiated', () {
      check(_GetProp).isA<Function>();
    });
    test('GetRawInputBuffer can be instantiated', () {
      check(_GetRawInputBuffer).isA<Function>();
    });
    test('GetRawInputData can be instantiated', () {
      check(_GetRawInputData).isA<Function>();
    });
    test('GetRawInputDeviceInfo can be instantiated', () {
      check(_GetRawInputDeviceInfo).isA<Function>();
    });
    test('GetRawInputDeviceList can be instantiated', () {
      check(_GetRawInputDeviceList).isA<Function>();
    });
    test('GetRegisteredRawInputDevices can be instantiated', () {
      check(_GetRegisteredRawInputDevices).isA<Function>();
    });
    test('GetScrollBarInfo can be instantiated', () {
      check(_GetScrollBarInfo).isA<Function>();
    });
    test('GetScrollInfo can be instantiated', () {
      check(_GetScrollInfo).isA<Function>();
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
        check(_GetSystemMetricsForDpi).isA<Function>();
      },
    );
    test('GetTabbedTextExtent can be instantiated', () {
      check(_GetTabbedTextExtent).isA<Function>();
    });
    test('GetThreadDesktop can be instantiated', () {
      check(_GetThreadDesktop).isA<Function>();
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
      check(_GetTitleBarInfo).isA<Function>();
    });
    test('GetTopWindow can be instantiated', () {
      check(_GetTopWindow).isA<Function>();
    });
    test('GetTouchInputInfo can be instantiated', () {
      check(_GetTouchInputInfo).isA<Function>();
    });
    test('GetUnpredictedMessagePos can be instantiated', () {
      check(_GetUnpredictedMessagePos).isA<Function>();
    });
    test('GetUpdatedClipboardFormats can be instantiated', () {
      check(_GetUpdatedClipboardFormats).isA<Function>();
    });
    test('GetUpdateRect can be instantiated', () {
      check(_GetUpdateRect).isA<Function>();
    });
    test('GetUpdateRgn can be instantiated', () {
      check(_GetUpdateRgn).isA<Function>();
    });
    test('GetUserObjectInformation can be instantiated', () {
      check(_GetUserObjectInformation).isA<Function>();
    });
    test('GetWindow can be instantiated', () {
      check(_GetWindow).isA<Function>();
    });
    test('GetWindowDC can be instantiated', () {
      check(_GetWindowDC).isA<Function>();
    });
    test('GetWindowDisplayAffinity can be instantiated', () {
      check(_GetWindowDisplayAffinity).isA<Function>();
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
      check(_GetWindowInfo).isA<Function>();
    });
    test('GetWindowLongPtr can be instantiated', () {
      check(_GetWindowLongPtr).isA<Function>();
    });
    test('GetWindowModuleFileName can be instantiated', () {
      check(_GetWindowModuleFileName).isA<Function>();
    });
    test('GetWindowPlacement can be instantiated', () {
      check(_GetWindowPlacement).isA<Function>();
    });
    test('GetWindowRect can be instantiated', () {
      check(_GetWindowRect).isA<Function>();
    });
    test('GetWindowRgn can be instantiated', () {
      check(_GetWindowRgn).isA<Function>();
    });
    test('GetWindowRgnBox can be instantiated', () {
      check(_GetWindowRgnBox).isA<Function>();
    });
    test('GetWindowText can be instantiated', () {
      check(_GetWindowText).isA<Function>();
    });
    test('GetWindowTextLength can be instantiated', () {
      check(_GetWindowTextLength).isA<Function>();
    });
    test('GetWindowThreadProcessId can be instantiated', () {
      check(_GetWindowThreadProcessId).isA<Function>();
    });
    test('GrayString can be instantiated', () {
      check(_GrayString).isA<Function>();
    });
    test('HideCaret can be instantiated', () {
      check(_HideCaret).isA<Function>();
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
      check(_InsertMenu).isA<Function>();
    });
    test('InsertMenuItem can be instantiated', () {
      check(_InsertMenuItem).isA<Function>();
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
      check(_IsClipboardFormatAvailable).isA<Function>();
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
      check(_IsImmersiveProcess).isA<Function>();
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
      check(_KillTimer).isA<Function>();
    });
    test('LoadAccelerators can be instantiated', () {
      check(_LoadAccelerators).isA<Function>();
    });
    test('LoadCursor can be instantiated', () {
      check(_LoadCursor).isA<Function>();
    });
    test('LoadCursorFromFile can be instantiated', () {
      check(_LoadCursorFromFile).isA<Function>();
    });
    test('LoadIcon can be instantiated', () {
      check(_LoadIcon).isA<Function>();
    });
    test('LoadImage can be instantiated', () {
      check(_LoadImage).isA<Function>();
    });
    test('LoadKeyboardLayout can be instantiated', () {
      check(_LoadKeyboardLayout).isA<Function>();
    });
    test('LoadMenu can be instantiated', () {
      check(_LoadMenu).isA<Function>();
    });
    test('LoadMenuIndirect can be instantiated', () {
      check(_LoadMenuIndirect).isA<Function>();
    });
    test('LoadString can be instantiated', () {
      check(_LoadString).isA<Function>();
    });
    test('LockSetForegroundWindow can be instantiated', () {
      check(_LockSetForegroundWindow).isA<Function>();
    });
    test('LockWindowUpdate can be instantiated', () {
      check(_LockWindowUpdate).isA<Function>();
    });
    test('LockWorkStation can be instantiated', () {
      check(_LockWorkStation).isA<Function>();
    });
    test('LogicalToPhysicalPoint can be instantiated', () {
      check(_LogicalToPhysicalPoint).isA<Function>();
    });
    test('LogicalToPhysicalPointForPerMonitorDPI can be instantiated', () {
      check(_LogicalToPhysicalPointForPerMonitorDPI).isA<Function>();
    });
    test('LookupIconIdFromDirectory can be instantiated', () {
      check(_LookupIconIdFromDirectory).isA<Function>();
    });
    test('LookupIconIdFromDirectoryEx can be instantiated', () {
      check(_LookupIconIdFromDirectoryEx).isA<Function>();
    });
    test('MapDialogRect can be instantiated', () {
      check(_MapDialogRect).isA<Function>();
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
    test('MessageBeep can be instantiated', () {
      check(_MessageBeep).isA<Function>();
    });
    test('MessageBox can be instantiated', () {
      check(_MessageBox).isA<Function>();
    });
    test('MessageBoxEx can be instantiated', () {
      check(_MessageBoxEx).isA<Function>();
    });
    test('ModifyMenu can be instantiated', () {
      check(_ModifyMenu).isA<Function>();
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
      check(_MoveWindow).isA<Function>();
    });
    test('MsgWaitForMultipleObjects can be instantiated', () {
      check(_MsgWaitForMultipleObjects).isA<Function>();
    });
    test('MsgWaitForMultipleObjectsEx can be instantiated', () {
      check(_MsgWaitForMultipleObjectsEx).isA<Function>();
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
      check(_OpenClipboard).isA<Function>();
    });
    test('OpenDesktop can be instantiated', () {
      check(_OpenDesktop).isA<Function>();
    });
    test('OpenIcon can be instantiated', () {
      check(_OpenIcon).isA<Function>();
    });
    test('OpenInputDesktop can be instantiated', () {
      check(_OpenInputDesktop).isA<Function>();
    });
    test('OpenWindowStation can be instantiated', () {
      check(_OpenWindowStation).isA<Function>();
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
      check(_PostMessage).isA<Function>();
    });
    test('PostQuitMessage can be instantiated', () {
      check(_PostQuitMessage).isA<Function>();
    });
    test('PostThreadMessage can be instantiated', () {
      check(_PostThreadMessage).isA<Function>();
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
      check(_RegisterClass).isA<Function>();
    });
    test('RegisterClassEx can be instantiated', () {
      check(_RegisterClassEx).isA<Function>();
    });
    test('RegisterClipboardFormat can be instantiated', () {
      check(_RegisterClipboardFormat).isA<Function>();
    });
    test('RegisterDeviceNotification can be instantiated', () {
      check(_RegisterDeviceNotification).isA<Function>();
    });
    test('RegisterHotKey can be instantiated', () {
      check(_RegisterHotKey).isA<Function>();
    });
    test('RegisterPowerSettingNotification can be instantiated', () {
      check(_RegisterPowerSettingNotification).isA<Function>();
    });
    test('RegisterRawInputDevices can be instantiated', () {
      check(_RegisterRawInputDevices).isA<Function>();
    });
    test('RegisterTouchHitTestingWindow can be instantiated', () {
      check(_RegisterTouchHitTestingWindow).isA<Function>();
    });
    test('RegisterTouchWindow can be instantiated', () {
      check(_RegisterTouchWindow).isA<Function>();
    });
    test('RegisterWindowMessage can be instantiated', () {
      check(_RegisterWindowMessage).isA<Function>();
    });
    test('ReleaseCapture can be instantiated', () {
      check(_ReleaseCapture).isA<Function>();
    });
    test('ReleaseDC can be instantiated', () {
      check(_ReleaseDC).isA<Function>();
    });
    test('RemoveClipboardFormatListener can be instantiated', () {
      check(_RemoveClipboardFormatListener).isA<Function>();
    });
    test('RemoveMenu can be instantiated', () {
      check(_RemoveMenu).isA<Function>();
    });
    test('RemoveProp can be instantiated', () {
      check(_RemoveProp).isA<Function>();
    });
    test('ReplyMessage can be instantiated', () {
      check(_ReplyMessage).isA<Function>();
    });
    test('ScreenToClient can be instantiated', () {
      check(_ScreenToClient).isA<Function>();
    });
    test('ScrollDC can be instantiated', () {
      check(_ScrollDC).isA<Function>();
    });
    test('ScrollWindow can be instantiated', () {
      check(_ScrollWindow).isA<Function>();
    });
    test('ScrollWindowEx can be instantiated', () {
      check(_ScrollWindowEx).isA<Function>();
    });
    test('SendDlgItemMessage can be instantiated', () {
      check(_SendDlgItemMessage).isA<Function>();
    });
    test('SendInput can be instantiated', () {
      check(_SendInput).isA<Function>();
    });
    test('SendMessage can be instantiated', () {
      check(_SendMessage).isA<Function>();
    });
    test('SendMessageCallback can be instantiated', () {
      check(_SendMessageCallback).isA<Function>();
    });
    test('SendMessageTimeout can be instantiated', () {
      check(_SendMessageTimeout).isA<Function>();
    });
    test('SendNotifyMessage can be instantiated', () {
      check(_SendNotifyMessage).isA<Function>();
    });
    test('SetActiveWindow can be instantiated', () {
      check(_SetActiveWindow).isA<Function>();
    });
    test('SetCapture can be instantiated', () {
      check(_SetCapture).isA<Function>();
    });
    test('SetCaretBlinkTime can be instantiated', () {
      check(_SetCaretBlinkTime).isA<Function>();
    });
    test('SetCaretPos can be instantiated', () {
      check(_SetCaretPos).isA<Function>();
    });
    test('SetClassLongPtr can be instantiated', () {
      check(_SetClassLongPtr).isA<Function>();
    });
    test('SetClipboardData can be instantiated', () {
      check(_SetClipboardData).isA<Function>();
    });
    test('SetClipboardViewer can be instantiated', () {
      check(_SetClipboardViewer).isA<Function>();
    });
    test('SetCoalescableTimer can be instantiated', () {
      check(_SetCoalescableTimer).isA<Function>();
    });
    test('SetCursor can be instantiated', () {
      check(_SetCursor).isA<Function>();
    });
    test('SetCursorPos can be instantiated', () {
      check(_SetCursorPos).isA<Function>();
    });
    test(
      'SetDialogControlDpiChangeBehavior can be instantiated',
      skip: 15063 > windowsBuildNumber,
      () {
        check(_SetDialogControlDpiChangeBehavior).isA<Function>();
      },
    );
    test(
      'SetDialogDpiChangeBehavior can be instantiated',
      skip: 15063 > windowsBuildNumber,
      () {
        check(_SetDialogDpiChangeBehavior).isA<Function>();
      },
    );
    test('SetDisplayAutoRotationPreferences can be instantiated', () {
      check(_SetDisplayAutoRotationPreferences).isA<Function>();
    });
    test('SetDisplayConfig can be instantiated', () {
      check(_SetDisplayConfig).isA<Function>();
    });
    test('SetDlgItemInt can be instantiated', () {
      check(_SetDlgItemInt).isA<Function>();
    });
    test('SetDlgItemText can be instantiated', () {
      check(_SetDlgItemText).isA<Function>();
    });
    test('SetDoubleClickTime can be instantiated', () {
      check(_SetDoubleClickTime).isA<Function>();
    });
    test('SetFocus can be instantiated', () {
      check(_SetFocus).isA<Function>();
    });
    test('SetForegroundWindow can be instantiated', () {
      check(_SetForegroundWindow).isA<Function>();
    });
    test('SetGestureConfig can be instantiated', () {
      check(_SetGestureConfig).isA<Function>();
    });
    test('SetKeyboardState can be instantiated', () {
      check(_SetKeyboardState).isA<Function>();
    });
    test('SetLayeredWindowAttributes can be instantiated', () {
      check(_SetLayeredWindowAttributes).isA<Function>();
    });
    test('SetMenu can be instantiated', () {
      check(_SetMenu).isA<Function>();
    });
    test('SetMenuDefaultItem can be instantiated', () {
      check(_SetMenuDefaultItem).isA<Function>();
    });
    test('SetMenuInfo can be instantiated', () {
      check(_SetMenuInfo).isA<Function>();
    });
    test('SetMenuItemBitmaps can be instantiated', () {
      check(_SetMenuItemBitmaps).isA<Function>();
    });
    test('SetMenuItemInfo can be instantiated', () {
      check(_SetMenuItemInfo).isA<Function>();
    });
    test('SetMessageExtraInfo can be instantiated', () {
      check(_SetMessageExtraInfo).isA<Function>();
    });
    test('SetParent can be instantiated', () {
      check(_SetParent).isA<Function>();
    });
    test('SetPhysicalCursorPos can be instantiated', () {
      check(_SetPhysicalCursorPos).isA<Function>();
    });
    test('SetProcessDPIAware can be instantiated', () {
      check(_SetProcessDPIAware).isA<Function>();
    });
    test(
      'SetProcessDpiAwarenessContext can be instantiated',
      skip: 15063 > windowsBuildNumber,
      () {
        check(_SetProcessDpiAwarenessContext).isA<Function>();
      },
    );
    test('SetProp can be instantiated', skip: 14393 > windowsBuildNumber, () {
      check(_SetProp).isA<Function>();
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
      check(_SetSysColors).isA<Function>();
    });
    test('SetSystemCursor can be instantiated', () {
      check(_SetSystemCursor).isA<Function>();
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
      check(_SetTimer).isA<Function>();
    });
    test('SetUserObjectInformation can be instantiated', () {
      check(_SetUserObjectInformation).isA<Function>();
    });
    test('SetWindowDisplayAffinity can be instantiated', () {
      check(_SetWindowDisplayAffinity).isA<Function>();
    });
    test('SetWindowLongPtr can be instantiated', () {
      check(_SetWindowLongPtr).isA<Function>();
    });
    test('SetWindowPlacement can be instantiated', () {
      check(_SetWindowPlacement).isA<Function>();
    });
    test('SetWindowPos can be instantiated', () {
      check(_SetWindowPos).isA<Function>();
    });
    test('SetWindowRgn can be instantiated', () {
      check(_SetWindowRgn).isA<Function>();
    });
    test('SetWindowsHookEx can be instantiated', () {
      check(_SetWindowsHookEx).isA<Function>();
    });
    test('SetWindowText can be instantiated', () {
      check(_SetWindowText).isA<Function>();
    });
    test('ShowCaret can be instantiated', () {
      check(_ShowCaret).isA<Function>();
    });
    test('ShowCursor can be instantiated', () {
      check(_ShowCursor).isA<Function>();
    });
    test('ShowOwnedPopups can be instantiated', () {
      check(_ShowOwnedPopups).isA<Function>();
    });
    test('ShowWindow can be instantiated', () {
      check(_ShowWindow).isA<Function>();
    });
    test('ShowWindowAsync can be instantiated', () {
      check(_ShowWindowAsync).isA<Function>();
    });
    test('SkipPointerFrameMessages can be instantiated', () {
      check(_SkipPointerFrameMessages).isA<Function>();
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
      check(_SwitchDesktop).isA<Function>();
    });
    test('SwitchToThisWindow can be instantiated', () {
      check(_SwitchToThisWindow).isA<Function>();
    });
    test('SystemParametersInfo can be instantiated', () {
      check(_SystemParametersInfo).isA<Function>();
    });
    test(
      'SystemParametersInfoForDpi can be instantiated',
      skip: 14393 > windowsBuildNumber,
      () {
        check(_SystemParametersInfoForDpi).isA<Function>();
      },
    );
    test('TabbedTextOut can be instantiated', () {
      check(_TabbedTextOut).isA<Function>();
    });
    test('TileWindows can be instantiated', () {
      check(_TileWindows).isA<Function>();
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
      check(_TrackPopupMenu).isA<Function>();
    });
    test('TrackPopupMenuEx can be instantiated', () {
      check(_TrackPopupMenuEx).isA<Function>();
    });
    test('TranslateAccelerator can be instantiated', () {
      check(_TranslateAccelerator).isA<Function>();
    });
    test('TranslateMDISysAccel can be instantiated', () {
      check(_TranslateMDISysAccel).isA<Function>();
    });
    test('TranslateMessage can be instantiated', () {
      check(_TranslateMessage).isA<Function>();
    });
    test('UnhookWindowsHookEx can be instantiated', () {
      check(_UnhookWindowsHookEx).isA<Function>();
    });
    test('UnionRect can be instantiated', () {
      check(_UnionRect).isA<Function>();
    });
    test('UnloadKeyboardLayout can be instantiated', () {
      check(_UnloadKeyboardLayout).isA<Function>();
    });
    test('UnregisterClass can be instantiated', () {
      check(_UnregisterClass).isA<Function>();
    });
    test('UnregisterDeviceNotification can be instantiated', () {
      check(_UnregisterDeviceNotification).isA<Function>();
    });
    test('UnregisterHotKey can be instantiated', () {
      check(_UnregisterHotKey).isA<Function>();
    });
    test('UnregisterPowerSettingNotification can be instantiated', () {
      check(_UnregisterPowerSettingNotification).isA<Function>();
    });
    test('UnregisterTouchWindow can be instantiated', () {
      check(_UnregisterTouchWindow).isA<Function>();
    });
    test('UpdateLayeredWindowIndirect can be instantiated', () {
      check(_UpdateLayeredWindowIndirect).isA<Function>();
    });
    test('UpdateWindow can be instantiated', () {
      check(_UpdateWindow).isA<Function>();
    });
    test('UserHandleGrantAccess can be instantiated', () {
      check(_UserHandleGrantAccess).isA<Function>();
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
      check(_WaitMessage).isA<Function>();
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

final _user32 = DynamicLibrary.open('user32.dll');

final _ActivateKeyboardLayout = _user32
    .lookupFunction<
      Pointer Function(Pointer, Uint32),
      Pointer Function(Pointer, int)
    >('ActivateKeyboardLayout');

final _AddClipboardFormatListener = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'AddClipboardFormatListener',
    );

final _AdjustWindowRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Uint32, Int32),
      int Function(Pointer<RECT>, int, int)
    >('AdjustWindowRect');

final _AdjustWindowRectEx = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Uint32, Int32, Uint32),
      int Function(Pointer<RECT>, int, int, int)
    >('AdjustWindowRectEx');

final _AdjustWindowRectExForDpi = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Uint32, Int32, Uint32, Uint32),
      int Function(Pointer<RECT>, int, int, int, int)
    >('AdjustWindowRectExForDpi');

final _AllowSetForegroundWindow = _user32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>(
      'AllowSetForegroundWindow',
    );

final _AnimateWindow = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('AnimateWindow');

final _AnyPopup = _user32.lookupFunction<Int32 Function(), int Function()>(
  'AnyPopup',
);

final _AppendMenu = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, IntPtr, Pointer<Utf16>),
      int Function(Pointer, int, int, Pointer<Utf16>)
    >('AppendMenuW');

final _AreDpiAwarenessContextsEqual = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('AreDpiAwarenessContextsEqual');

final _ArrangeIconicWindows = _user32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'ArrangeIconicWindows',
    );

final _AttachThreadInput = _user32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, Int32),
      int Function(int, int, int)
    >('AttachThreadInput');

final _BeginDeferWindowPos = _user32
    .lookupFunction<Pointer Function(Int32), Pointer Function(int)>(
      'BeginDeferWindowPos',
    );

final _BeginPaint = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<PAINTSTRUCT>),
      Pointer Function(Pointer, Pointer<PAINTSTRUCT>)
    >('BeginPaint');

final _BlockInput = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>('BlockInput');

final _BringWindowToTop = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'BringWindowToTop',
    );

final _BroadcastSystemMessage = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>, Uint32, IntPtr, IntPtr),
      int Function(int, Pointer<Uint32>, int, int, int)
    >('BroadcastSystemMessageW');

final _BroadcastSystemMessageEx = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Pointer<Uint32>,
        Uint32,
        IntPtr,
        IntPtr,
        Pointer<BSMINFO>,
      ),
      int Function(int, Pointer<Uint32>, int, int, int, Pointer<BSMINFO>)
    >('BroadcastSystemMessageExW');

final _CalculatePopupWindowPosition = _user32
    .lookupFunction<
      Int32 Function(
        Pointer<POINT>,
        Pointer<SIZE>,
        Uint32,
        Pointer<RECT>,
        Pointer<RECT>,
      ),
      int Function(
        Pointer<POINT>,
        Pointer<SIZE>,
        int,
        Pointer<RECT>,
        Pointer<RECT>,
      )
    >('CalculatePopupWindowPosition');

final _CallMsgFilter = _user32
    .lookupFunction<
      Int32 Function(Pointer<MSG>, Int32),
      int Function(Pointer<MSG>, int)
    >('CallMsgFilterW');

final _CallNextHookEx = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Int32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('CallNextHookEx');

final _CallWindowProc = _user32
    .lookupFunction<
      IntPtr Function(
        Pointer<NativeFunction<WNDPROC>>,
        Pointer,
        Uint32,
        IntPtr,
        IntPtr,
      ),
      int Function(Pointer<NativeFunction<WNDPROC>>, Pointer, int, int, int)
    >('CallWindowProcW');

final _CascadeWindows = _user32
    .lookupFunction<
      Uint16 Function(Pointer, Uint32, Pointer<RECT>, Uint32, Pointer<Pointer>),
      int Function(Pointer, int, Pointer<RECT>, int, Pointer<Pointer>)
    >('CascadeWindows');

final _ChangeClipboardChain = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('ChangeClipboardChain');

final _ChangeDisplaySettings = _user32
    .lookupFunction<
      Int32 Function(Pointer<DEVMODE>, Uint32),
      int Function(Pointer<DEVMODE>, int)
    >('ChangeDisplaySettingsW');

final _ChangeDisplaySettingsEx = _user32
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<DEVMODE>,
        Pointer,
        Uint32,
        Pointer,
      ),
      int Function(Pointer<Utf16>, Pointer<DEVMODE>, Pointer, int, Pointer)
    >('ChangeDisplaySettingsExW');

final _ChangeWindowMessageFilter = _user32
    .lookupFunction<Int32 Function(Uint32, Uint32), int Function(int, int)>(
      'ChangeWindowMessageFilter',
    );

final _ChangeWindowMessageFilterEx = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Pointer<CHANGEFILTERSTRUCT>),
      int Function(Pointer, int, int, Pointer<CHANGEFILTERSTRUCT>)
    >('ChangeWindowMessageFilterEx');

final _CheckDlgButton = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Uint32),
      int Function(Pointer, int, int)
    >('CheckDlgButton');

final _CheckRadioButton = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Int32),
      int Function(Pointer, int, int, int)
    >('CheckRadioButton');

final _ChildWindowFromPoint = _user32
    .lookupFunction<
      Pointer Function(Pointer, POINT),
      Pointer Function(Pointer, POINT)
    >('ChildWindowFromPoint');

final _ChildWindowFromPointEx = _user32
    .lookupFunction<
      Pointer Function(Pointer, POINT, Uint32),
      Pointer Function(Pointer, POINT, int)
    >('ChildWindowFromPointEx');

final _ClientToScreen = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>),
      int Function(Pointer, Pointer<POINT>)
    >('ClientToScreen');

final _ClipCursor = _user32
    .lookupFunction<Int32 Function(Pointer<RECT>), int Function(Pointer<RECT>)>(
      'ClipCursor',
    );

final _CloseClipboard = _user32
    .lookupFunction<Int32 Function(), int Function()>('CloseClipboard');

final _CloseDesktop = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CloseDesktop',
    );

final _CloseGestureInfoHandle = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CloseGestureInfoHandle',
    );

final _CloseTouchInputHandle = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CloseTouchInputHandle',
    );

final _CloseWindow = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CloseWindow',
    );

final _CloseWindowStation = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CloseWindowStation',
    );

final _CopyAcceleratorTable = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<ACCEL>, Int32),
      int Function(Pointer, Pointer<ACCEL>, int)
    >('CopyAcceleratorTableW');

final _CopyIcon = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'CopyIcon',
    );

final _CopyImage = _user32
    .lookupFunction<
      Pointer Function(Pointer, Uint32, Int32, Int32, Uint32),
      Pointer Function(Pointer, int, int, int, int)
    >('CopyImage');

final _CopyRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Pointer<RECT>),
      int Function(Pointer<RECT>, Pointer<RECT>)
    >('CopyRect');

final _CountClipboardFormats = _user32
    .lookupFunction<Int32 Function(), int Function()>('CountClipboardFormats');

final _CreateAcceleratorTable = _user32
    .lookupFunction<
      Pointer Function(Pointer<ACCEL>, Int32),
      Pointer Function(Pointer<ACCEL>, int)
    >('CreateAcceleratorTableW');

final _CreateCaret = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Int32, Int32),
      int Function(Pointer, Pointer, int, int)
    >('CreateCaret');

final _CreateCursor = _user32
    .lookupFunction<
      Pointer Function(Pointer, Int32, Int32, Int32, Int32, Pointer, Pointer),
      Pointer Function(Pointer, int, int, int, int, Pointer, Pointer)
    >('CreateCursor');

final _CreateDesktop = _user32
    .lookupFunction<
      Pointer Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<DEVMODE>,
        Uint32,
        Uint32,
        Pointer<SECURITY_ATTRIBUTES>,
      ),
      Pointer Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<DEVMODE>,
        int,
        int,
        Pointer<SECURITY_ATTRIBUTES>,
      )
    >('CreateDesktopW');

final _CreateDesktopEx = _user32
    .lookupFunction<
      Pointer Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<DEVMODE>,
        Uint32,
        Uint32,
        Pointer<SECURITY_ATTRIBUTES>,
        Uint32,
        Pointer,
      ),
      Pointer Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<DEVMODE>,
        int,
        int,
        Pointer<SECURITY_ATTRIBUTES>,
        int,
        Pointer,
      )
    >('CreateDesktopExW');

final _CreateDialogIndirectParam = _user32
    .lookupFunction<
      Pointer Function(
        Pointer,
        Pointer<DLGTEMPLATE>,
        Pointer,
        Pointer<NativeFunction<DLGPROC>>,
        IntPtr,
      ),
      Pointer Function(
        Pointer,
        Pointer<DLGTEMPLATE>,
        Pointer,
        Pointer<NativeFunction<DLGPROC>>,
        int,
      )
    >('CreateDialogIndirectParamW');

final _CreateIcon = _user32
    .lookupFunction<
      Pointer Function(
        Pointer,
        Int32,
        Int32,
        Uint8,
        Uint8,
        Pointer<Uint8>,
        Pointer<Uint8>,
      ),
      Pointer Function(
        Pointer,
        int,
        int,
        int,
        int,
        Pointer<Uint8>,
        Pointer<Uint8>,
      )
    >('CreateIcon');

final _CreateIconFromResource = _user32
    .lookupFunction<
      Pointer Function(Pointer<Uint8>, Uint32, Int32, Uint32),
      Pointer Function(Pointer<Uint8>, int, int, int)
    >('CreateIconFromResource');

final _CreateIconFromResourceEx = _user32
    .lookupFunction<
      Pointer Function(
        Pointer<Uint8>,
        Uint32,
        Int32,
        Uint32,
        Int32,
        Int32,
        Uint32,
      ),
      Pointer Function(Pointer<Uint8>, int, int, int, int, int, int)
    >('CreateIconFromResourceEx');

final _CreateIconIndirect = _user32
    .lookupFunction<
      Pointer Function(Pointer<ICONINFO>),
      Pointer Function(Pointer<ICONINFO>)
    >('CreateIconIndirect');

final _CreateMDIWindow = _user32
    .lookupFunction<
      Pointer Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Uint32,
        Int32,
        Int32,
        Int32,
        Int32,
        Pointer,
        Pointer,
        IntPtr,
      ),
      Pointer Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
        int,
        int,
        int,
        int,
        Pointer,
        Pointer,
        int,
      )
    >('CreateMDIWindowW');

final _CreateMenu = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>('CreateMenu');

final _CreatePopupMenu = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>('CreatePopupMenu');

final _CreateWindowEx = _user32
    .lookupFunction<
      Pointer Function(
        Uint32,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Uint32,
        Int32,
        Int32,
        Int32,
        Int32,
        Pointer,
        Pointer,
        Pointer,
        Pointer,
      ),
      Pointer Function(
        int,
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
        int,
        int,
        int,
        int,
        Pointer,
        Pointer,
        Pointer,
        Pointer,
      )
    >('CreateWindowExW');

final _CreateWindowStation = _user32
    .lookupFunction<
      Pointer Function(
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer<SECURITY_ATTRIBUTES>,
      ),
      Pointer Function(Pointer<Utf16>, int, int, Pointer<SECURITY_ATTRIBUTES>)
    >('CreateWindowStationW');

final _DeferWindowPos = _user32
    .lookupFunction<
      Pointer Function(
        Pointer,
        Pointer,
        Pointer,
        Int32,
        Int32,
        Int32,
        Int32,
        Uint32,
      ),
      Pointer Function(Pointer, Pointer, Pointer, int, int, int, int, int)
    >('DeferWindowPos');

final _DefMDIChildProc = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('DefMDIChildProcW');

final _DefRawInputProc = _user32
    .lookupFunction<
      IntPtr Function(Pointer<Pointer<RAWINPUT>>, Int32, Uint32),
      int Function(Pointer<Pointer<RAWINPUT>>, int, int)
    >('DefRawInputProc');

final _DefWindowProc = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('DefWindowProcW');

final _DeleteMenu = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('DeleteMenu');

final _DestroyAcceleratorTable = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DestroyAcceleratorTable',
    );

final _DestroyCaret = _user32.lookupFunction<Int32 Function(), int Function()>(
  'DestroyCaret',
);

final _DestroyCursor = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DestroyCursor',
    );

final _DestroyIcon = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DestroyIcon',
    );

final _DestroyMenu = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DestroyMenu',
    );

final _DestroyWindow = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DestroyWindow',
    );

final _DialogBoxIndirectParam = _user32
    .lookupFunction<
      IntPtr Function(
        Pointer,
        Pointer<DLGTEMPLATE>,
        Pointer,
        Pointer<NativeFunction<DLGPROC>>,
        IntPtr,
      ),
      int Function(
        Pointer,
        Pointer<DLGTEMPLATE>,
        Pointer,
        Pointer<NativeFunction<DLGPROC>>,
        int,
      )
    >('DialogBoxIndirectParamW');

final _DisableProcessWindowsGhosting = _user32
    .lookupFunction<Void Function(), void Function()>(
      'DisableProcessWindowsGhosting',
    );

final _DispatchMessage = _user32
    .lookupFunction<IntPtr Function(Pointer<MSG>), int Function(Pointer<MSG>)>(
      'DispatchMessageW',
    );

final _DragDetect = _user32
    .lookupFunction<
      Int32 Function(Pointer, POINT),
      int Function(Pointer, POINT)
    >('DragDetect');

final _DrawAnimatedRects = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer<RECT>, Pointer<RECT>),
      int Function(Pointer, int, Pointer<RECT>, Pointer<RECT>)
    >('DrawAnimatedRects');

final _DrawCaption = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<RECT>, Uint32),
      int Function(Pointer, Pointer, Pointer<RECT>, int)
    >('DrawCaption');

final _DrawEdge = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>, Uint32, Uint32),
      int Function(Pointer, Pointer<RECT>, int, int)
    >('DrawEdge');

final _DrawFocusRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('DrawFocusRect');

final _DrawFrameControl = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>, Uint32, Uint32),
      int Function(Pointer, Pointer<RECT>, int, int)
    >('DrawFrameControl');

final _DrawIcon = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer),
      int Function(Pointer, int, int, Pointer)
    >('DrawIcon');

final _DrawState = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer,
        Pointer<NativeFunction<DRAWSTATEPROC>>,
        IntPtr,
        IntPtr,
        Int32,
        Int32,
        Int32,
        Int32,
        Uint32,
      ),
      int Function(
        Pointer,
        Pointer,
        Pointer<NativeFunction<DRAWSTATEPROC>>,
        int,
        int,
        int,
        int,
        int,
        int,
        int,
      )
    >('DrawStateW');

final _DrawText = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Int32, Pointer<RECT>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int, Pointer<RECT>, int)
    >('DrawTextW');

final _DrawTextEx = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Utf16>,
        Int32,
        Pointer<RECT>,
        Uint32,
        Pointer<DRAWTEXTPARAMS>,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        int,
        Pointer<RECT>,
        int,
        Pointer<DRAWTEXTPARAMS>,
      )
    >('DrawTextExW');

final _EmptyClipboard = _user32
    .lookupFunction<Int32 Function(), int Function()>('EmptyClipboard');

final _EnableMenuItem = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('EnableMenuItem');

final _EnableMouseInPointer = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'EnableMouseInPointer',
    );

final _EnableNonClientDpiScaling = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'EnableNonClientDpiScaling',
    );

final _EnableScrollBar = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('EnableScrollBar');

final _EnableWindow = _user32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'EnableWindow',
    );

final _EndDeferWindowPos = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'EndDeferWindowPos',
    );

final _EndDialog = _user32
    .lookupFunction<
      Int32 Function(Pointer, IntPtr),
      int Function(Pointer, int)
    >('EndDialog');

final _EndMenu = _user32.lookupFunction<Int32 Function(), int Function()>(
  'EndMenu',
);

final _EndPaint = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<PAINTSTRUCT>),
      int Function(Pointer, Pointer<PAINTSTRUCT>)
    >('EndPaint');

final _EnumChildWindows = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<NativeFunction<WNDENUMPROC>>, IntPtr),
      int Function(Pointer, Pointer<NativeFunction<WNDENUMPROC>>, int)
    >('EnumChildWindows');

final _EnumClipboardFormats = _user32
    .lookupFunction<Uint32 Function(Uint32), int Function(int)>(
      'EnumClipboardFormats',
    );

final _EnumDesktopWindows = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<NativeFunction<WNDENUMPROC>>, IntPtr),
      int Function(Pointer, Pointer<NativeFunction<WNDENUMPROC>>, int)
    >('EnumDesktopWindows');

final _EnumDisplayDevices = _user32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Pointer<DISPLAY_DEVICE>, Uint32),
      int Function(Pointer<Utf16>, int, Pointer<DISPLAY_DEVICE>, int)
    >('EnumDisplayDevicesW');

final _EnumDisplayMonitors = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<RECT>,
        Pointer<NativeFunction<MONITORENUMPROC>>,
        IntPtr,
      ),
      int Function(
        Pointer,
        Pointer<RECT>,
        Pointer<NativeFunction<MONITORENUMPROC>>,
        int,
      )
    >('EnumDisplayMonitors');

final _EnumDisplaySettings = _user32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Pointer<DEVMODE>),
      int Function(Pointer<Utf16>, int, Pointer<DEVMODE>)
    >('EnumDisplaySettingsW');

final _EnumDisplaySettingsEx = _user32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Pointer<DEVMODE>, Uint32),
      int Function(Pointer<Utf16>, int, Pointer<DEVMODE>, int)
    >('EnumDisplaySettingsExW');

final _EnumThreadWindows = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<NativeFunction<WNDENUMPROC>>, IntPtr),
      int Function(int, Pointer<NativeFunction<WNDENUMPROC>>, int)
    >('EnumThreadWindows');

final _EnumWindows = _user32
    .lookupFunction<
      Int32 Function(Pointer<NativeFunction<WNDENUMPROC>>, IntPtr),
      int Function(Pointer<NativeFunction<WNDENUMPROC>>, int)
    >('EnumWindows');

final _EqualRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Pointer<RECT>),
      int Function(Pointer<RECT>, Pointer<RECT>)
    >('EqualRect');

final _ExcludeUpdateRgn = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('ExcludeUpdateRgn');

final _FillRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>, Pointer),
      int Function(Pointer, Pointer<RECT>, Pointer)
    >('FillRect');

final _FindWindow = _user32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Pointer<Utf16>),
      Pointer Function(Pointer<Utf16>, Pointer<Utf16>)
    >('FindWindowW');

final _FindWindowEx = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer, Pointer<Utf16>, Pointer<Utf16>),
      Pointer Function(Pointer, Pointer, Pointer<Utf16>, Pointer<Utf16>)
    >('FindWindowExW');

final _FrameRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>, Pointer),
      int Function(Pointer, Pointer<RECT>, Pointer)
    >('FrameRect');

final _GetActiveWindow = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetActiveWindow');

final _GetAltTabInfo = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Pointer<ALTTABINFO>,
        Pointer<Utf16>,
        Uint32,
      ),
      int Function(Pointer, int, Pointer<ALTTABINFO>, Pointer<Utf16>, int)
    >('GetAltTabInfoW');

final _GetAncestor = _user32
    .lookupFunction<
      Pointer Function(Pointer, Uint32),
      Pointer Function(Pointer, int)
    >('GetAncestor');

final _GetAsyncKeyState = _user32
    .lookupFunction<Int16 Function(Int32), int Function(int)>(
      'GetAsyncKeyState',
    );

final _GetAwarenessFromDpiAwarenessContext = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'GetAwarenessFromDpiAwarenessContext',
    );

final _GetCapture = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetCapture');

final _GetCaretBlinkTime = _user32
    .lookupFunction<Uint32 Function(), int Function()>('GetCaretBlinkTime');

final _GetCaretPos = _user32
    .lookupFunction<
      Int32 Function(Pointer<POINT>),
      int Function(Pointer<POINT>)
    >('GetCaretPos');

final _GetClassInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer<WNDCLASS>),
      int Function(Pointer, Pointer<Utf16>, Pointer<WNDCLASS>)
    >('GetClassInfoW');

final _GetClassInfoEx = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer<WNDCLASSEX>),
      int Function(Pointer, Pointer<Utf16>, Pointer<WNDCLASSEX>)
    >('GetClassInfoExW');

final _GetClassLongPtr = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Int32),
      int Function(Pointer, int)
    >('GetClassLongPtrW');

final _GetClassName = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Int32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('GetClassNameW');

final _GetClientRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('GetClientRect');

final _GetClipboardData = _user32
    .lookupFunction<Pointer Function(Uint32), Pointer Function(int)>(
      'GetClipboardData',
    );

final _GetClipboardFormatName = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Utf16>, Int32),
      int Function(int, Pointer<Utf16>, int)
    >('GetClipboardFormatNameW');

final _GetClipboardOwner = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>(
      'GetClipboardOwner',
    );

final _GetClipboardSequenceNumber = _user32
    .lookupFunction<Uint32 Function(), int Function()>(
      'GetClipboardSequenceNumber',
    );

final _GetClipboardViewer = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>(
      'GetClipboardViewer',
    );

final _GetClipCursor = _user32
    .lookupFunction<Int32 Function(Pointer<RECT>), int Function(Pointer<RECT>)>(
      'GetClipCursor',
    );

final _GetCursor = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetCursor');

final _GetCursorInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer<CURSORINFO>),
      int Function(Pointer<CURSORINFO>)
    >('GetCursorInfo');

final _GetCursorPos = _user32
    .lookupFunction<
      Int32 Function(Pointer<POINT>),
      int Function(Pointer<POINT>)
    >('GetCursorPos');

final _GetDC = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GetDC',
    );

final _GetDCEx = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer, Uint32),
      Pointer Function(Pointer, Pointer, int)
    >('GetDCEx');

final _GetDesktopWindow = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetDesktopWindow');

final _GetDialogBaseUnits = _user32
    .lookupFunction<Int32 Function(), int Function()>('GetDialogBaseUnits');

final _GetDialogControlDpiChangeBehavior = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'GetDialogControlDpiChangeBehavior',
    );

final _GetDialogDpiChangeBehavior = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'GetDialogDpiChangeBehavior',
    );

final _GetDisplayAutoRotationPreferences = _user32
    .lookupFunction<
      Int32 Function(Pointer<Int32>),
      int Function(Pointer<Int32>)
    >('GetDisplayAutoRotationPreferences');

final _GetDlgItem = _user32
    .lookupFunction<
      Pointer Function(Pointer, Int32),
      Pointer Function(Pointer, int)
    >('GetDlgItem');

final _GetDlgItemInt = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Pointer<Int32>, Int32),
      int Function(Pointer, int, Pointer<Int32>, int)
    >('GetDlgItemInt');

final _GetDlgItemText = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Pointer<Utf16>, Int32),
      int Function(Pointer, int, Pointer<Utf16>, int)
    >('GetDlgItemTextW');

final _GetDoubleClickTime = _user32
    .lookupFunction<Uint32 Function(), int Function()>('GetDoubleClickTime');

final _GetDpiForSystem = _user32
    .lookupFunction<Uint32 Function(), int Function()>('GetDpiForSystem');

final _GetDpiForWindow = _user32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'GetDpiForWindow',
    );

final _GetDpiFromDpiAwarenessContext = _user32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'GetDpiFromDpiAwarenessContext',
    );

final _GetFocus = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetFocus');

final _GetForegroundWindow = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>(
      'GetForegroundWindow',
    );

final _GetGestureConfig = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        Uint32,
        Pointer<Uint32>,
        Pointer<GESTURECONFIG>,
        Uint32,
      ),
      int Function(
        Pointer,
        int,
        int,
        Pointer<Uint32>,
        Pointer<GESTURECONFIG>,
        int,
      )
    >('GetGestureConfig');

final _GetGestureExtraArgs = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Uint8>),
      int Function(Pointer, int, Pointer<Uint8>)
    >('GetGestureExtraArgs');

final _GetGestureInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<GESTUREINFO>),
      int Function(Pointer, Pointer<GESTUREINFO>)
    >('GetGestureInfo');

final _GetGUIThreadInfo = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<GUITHREADINFO>),
      int Function(int, Pointer<GUITHREADINFO>)
    >('GetGUIThreadInfo');

final _GetIconInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<ICONINFO>),
      int Function(Pointer, Pointer<ICONINFO>)
    >('GetIconInfo');

final _GetIconInfoEx = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<ICONINFOEX>),
      int Function(Pointer, Pointer<ICONINFOEX>)
    >('GetIconInfoExW');

final _GetInputState = _user32.lookupFunction<Int32 Function(), int Function()>(
  'GetInputState',
);

final _GetKeyboardLayout = _user32
    .lookupFunction<Pointer Function(Uint32), Pointer Function(int)>(
      'GetKeyboardLayout',
    );

final _GetKeyboardLayoutList = _user32
    .lookupFunction<
      Int32 Function(Int32, Pointer<Pointer>),
      int Function(int, Pointer<Pointer>)
    >('GetKeyboardLayoutList');

final _GetKeyboardLayoutName = _user32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('GetKeyboardLayoutNameW');

final _GetKeyboardState = _user32
    .lookupFunction<
      Int32 Function(Pointer<Uint8>),
      int Function(Pointer<Uint8>)
    >('GetKeyboardState');

final _GetKeyboardType = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'GetKeyboardType',
    );

final _GetKeyNameText = _user32
    .lookupFunction<
      Int32 Function(Int32, Pointer<Utf16>, Int32),
      int Function(int, Pointer<Utf16>, int)
    >('GetKeyNameTextW');

final _GetKeyState = _user32
    .lookupFunction<Int16 Function(Int32), int Function(int)>('GetKeyState');

final _GetLastInputInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer<LASTINPUTINFO>),
      int Function(Pointer<LASTINPUTINFO>)
    >('GetLastInputInfo');

final _GetLayeredWindowAttributes = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>, Pointer<Uint8>, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>, Pointer<Uint8>, Pointer<Uint32>)
    >('GetLayeredWindowAttributes');

final _GetMenu = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GetMenu',
    );

final _GetMenuBarInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer<MENUBARINFO>),
      int Function(Pointer, int, int, Pointer<MENUBARINFO>)
    >('GetMenuBarInfo');

final _GetMenuDefaultItem = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('GetMenuDefaultItem');

final _GetMenuInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MENUINFO>),
      int Function(Pointer, Pointer<MENUINFO>)
    >('GetMenuInfo');

final _GetMenuItemCount = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'GetMenuItemCount',
    );

final _GetMenuItemID = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Int32),
      int Function(Pointer, int)
    >('GetMenuItemID');

final _GetMenuItemInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Int32, Pointer<MENUITEMINFO>),
      int Function(Pointer, int, int, Pointer<MENUITEMINFO>)
    >('GetMenuItemInfoW');

final _GetMenuItemRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Uint32, Pointer<RECT>),
      int Function(Pointer, Pointer, int, Pointer<RECT>)
    >('GetMenuItemRect');

final _GetMenuState = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('GetMenuState');

final _GetMenuString = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Utf16>, Int32, Uint32),
      int Function(Pointer, int, Pointer<Utf16>, int, int)
    >('GetMenuStringW');

final _GetMessage = _user32
    .lookupFunction<
      Int32 Function(Pointer<MSG>, Pointer, Uint32, Uint32),
      int Function(Pointer<MSG>, Pointer, int, int)
    >('GetMessageW');

final _GetMessageExtraInfo = _user32
    .lookupFunction<IntPtr Function(), int Function()>('GetMessageExtraInfo');

final _GetMessagePos = _user32
    .lookupFunction<Uint32 Function(), int Function()>('GetMessagePos');

final _GetMessageTime = _user32
    .lookupFunction<Int32 Function(), int Function()>('GetMessageTime');

final _GetMonitorInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MONITORINFO>),
      int Function(Pointer, Pointer<MONITORINFO>)
    >('GetMonitorInfoW');

final _GetMouseMovePointsEx = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Pointer<MOUSEMOVEPOINT>,
        Pointer<MOUSEMOVEPOINT>,
        Int32,
        Uint32,
      ),
      int Function(
        int,
        Pointer<MOUSEMOVEPOINT>,
        Pointer<MOUSEMOVEPOINT>,
        int,
        int,
      )
    >('GetMouseMovePointsEx');

final _GetNextDlgGroupItem = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer, Int32),
      Pointer Function(Pointer, Pointer, int)
    >('GetNextDlgGroupItem');

final _GetNextDlgTabItem = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer, Int32),
      Pointer Function(Pointer, Pointer, int)
    >('GetNextDlgTabItem');

final _GetOpenClipboardWindow = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>(
      'GetOpenClipboardWindow',
    );

final _GetParent = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GetParent',
    );

final _GetPhysicalCursorPos = _user32
    .lookupFunction<
      Int32 Function(Pointer<POINT>),
      int Function(Pointer<POINT>)
    >('GetPhysicalCursorPos');

final _GetPointerCursorId = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>),
      int Function(int, Pointer<Uint32>)
    >('GetPointerCursorId');

final _GetPointerFrameInfo = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>, Pointer<POINTER_INFO>),
      int Function(int, Pointer<Uint32>, Pointer<POINTER_INFO>)
    >('GetPointerFrameInfo');

final _GetPointerFrameInfoHistory = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<POINTER_INFO>,
      ),
      int Function(int, Pointer<Uint32>, Pointer<Uint32>, Pointer<POINTER_INFO>)
    >('GetPointerFrameInfoHistory');

final _GetPointerFramePenInfo = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>, Pointer<POINTER_PEN_INFO>),
      int Function(int, Pointer<Uint32>, Pointer<POINTER_PEN_INFO>)
    >('GetPointerFramePenInfo');

final _GetPointerFramePenInfoHistory = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<POINTER_PEN_INFO>,
      ),
      int Function(
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<POINTER_PEN_INFO>,
      )
    >('GetPointerFramePenInfoHistory');

final _GetPointerFrameTouchInfo = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>, Pointer<POINTER_TOUCH_INFO>),
      int Function(int, Pointer<Uint32>, Pointer<POINTER_TOUCH_INFO>)
    >('GetPointerFrameTouchInfo');

final _GetPointerFrameTouchInfoHistory = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<POINTER_TOUCH_INFO>,
      ),
      int Function(
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<POINTER_TOUCH_INFO>,
      )
    >('GetPointerFrameTouchInfoHistory');

final _GetPointerInfo = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<POINTER_INFO>),
      int Function(int, Pointer<POINTER_INFO>)
    >('GetPointerInfo');

final _GetPointerInfoHistory = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>, Pointer<POINTER_INFO>),
      int Function(int, Pointer<Uint32>, Pointer<POINTER_INFO>)
    >('GetPointerInfoHistory');

final _GetPointerInputTransform = _user32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, Pointer<INPUT_TRANSFORM>),
      int Function(int, int, Pointer<INPUT_TRANSFORM>)
    >('GetPointerInputTransform');

final _GetPointerPenInfo = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<POINTER_PEN_INFO>),
      int Function(int, Pointer<POINTER_PEN_INFO>)
    >('GetPointerPenInfo');

final _GetPointerPenInfoHistory = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>, Pointer<POINTER_PEN_INFO>),
      int Function(int, Pointer<Uint32>, Pointer<POINTER_PEN_INFO>)
    >('GetPointerPenInfoHistory');

final _GetPointerTouchInfo = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<POINTER_TOUCH_INFO>),
      int Function(int, Pointer<POINTER_TOUCH_INFO>)
    >('GetPointerTouchInfo');

final _GetPointerTouchInfoHistory = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>, Pointer<POINTER_TOUCH_INFO>),
      int Function(int, Pointer<Uint32>, Pointer<POINTER_TOUCH_INFO>)
    >('GetPointerTouchInfoHistory');

final _GetPointerType = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Int32>),
      int Function(int, Pointer<Int32>)
    >('GetPointerType');

final _GetPriorityClipboardFormat = _user32
    .lookupFunction<
      Int32 Function(Pointer<Uint32>, Int32),
      int Function(Pointer<Uint32>, int)
    >('GetPriorityClipboardFormat');

final _GetProcessWindowStation = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>(
      'GetProcessWindowStation',
    );

final _GetProp = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>),
      Pointer Function(Pointer, Pointer<Utf16>)
    >('GetPropW');

final _GetRawInputBuffer = _user32
    .lookupFunction<
      Uint32 Function(Pointer<RAWINPUT>, Pointer<Uint32>, Uint32),
      int Function(Pointer<RAWINPUT>, Pointer<Uint32>, int)
    >('GetRawInputBuffer');

final _GetRawInputData = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Pointer, Pointer<Uint32>, Uint32),
      int Function(Pointer, int, Pointer, Pointer<Uint32>, int)
    >('GetRawInputData');

final _GetRawInputDeviceInfo = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Pointer, Pointer<Uint32>),
      int Function(Pointer, int, Pointer, Pointer<Uint32>)
    >('GetRawInputDeviceInfoW');

final _GetRawInputDeviceList = _user32
    .lookupFunction<
      Uint32 Function(Pointer<RAWINPUTDEVICELIST>, Pointer<Uint32>, Uint32),
      int Function(Pointer<RAWINPUTDEVICELIST>, Pointer<Uint32>, int)
    >('GetRawInputDeviceList');

final _GetRegisteredRawInputDevices = _user32
    .lookupFunction<
      Uint32 Function(Pointer<RAWINPUTDEVICE>, Pointer<Uint32>, Uint32),
      int Function(Pointer<RAWINPUTDEVICE>, Pointer<Uint32>, int)
    >('GetRegisteredRawInputDevices');

final _GetScrollBarInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer<SCROLLBARINFO>),
      int Function(Pointer, int, Pointer<SCROLLBARINFO>)
    >('GetScrollBarInfo');

final _GetScrollInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer<SCROLLINFO>),
      int Function(Pointer, int, Pointer<SCROLLINFO>)
    >('GetScrollInfo');

final _GetShellWindow = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetShellWindow');

final _GetSubMenu = _user32
    .lookupFunction<
      Pointer Function(Pointer, Int32),
      Pointer Function(Pointer, int)
    >('GetSubMenu');

final _GetSysColor = _user32
    .lookupFunction<Uint32 Function(Int32), int Function(int)>('GetSysColor');

final _GetSysColorBrush = _user32
    .lookupFunction<Pointer Function(Int32), Pointer Function(int)>(
      'GetSysColorBrush',
    );

final _GetSystemDpiForProcess = _user32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'GetSystemDpiForProcess',
    );

final _GetSystemMenu = _user32
    .lookupFunction<
      Pointer Function(Pointer, Int32),
      Pointer Function(Pointer, int)
    >('GetSystemMenu');

final _GetSystemMetrics = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'GetSystemMetrics',
    );

final _GetSystemMetricsForDpi = _user32
    .lookupFunction<Int32 Function(Int32, Uint32), int Function(int, int)>(
      'GetSystemMetricsForDpi',
    );

final _GetTabbedTextExtent = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Int32, Int32, Pointer<Int32>),
      int Function(Pointer, Pointer<Utf16>, int, int, Pointer<Int32>)
    >('GetTabbedTextExtentW');

final _GetThreadDesktop = _user32
    .lookupFunction<Pointer Function(Uint32), Pointer Function(int)>(
      'GetThreadDesktop',
    );

final _GetThreadDpiAwarenessContext = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>(
      'GetThreadDpiAwarenessContext',
    );

final _GetThreadDpiHostingBehavior = _user32
    .lookupFunction<Int32 Function(), int Function()>(
      'GetThreadDpiHostingBehavior',
    );

final _GetTitleBarInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<TITLEBARINFO>),
      int Function(Pointer, Pointer<TITLEBARINFO>)
    >('GetTitleBarInfo');

final _GetTopWindow = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GetTopWindow',
    );

final _GetTouchInputInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<TOUCHINPUT>, Int32),
      int Function(Pointer, int, Pointer<TOUCHINPUT>, int)
    >('GetTouchInputInfo');

final _GetUnpredictedMessagePos = _user32
    .lookupFunction<Uint32 Function(), int Function()>(
      'GetUnpredictedMessagePos',
    );

final _GetUpdatedClipboardFormats = _user32
    .lookupFunction<
      Int32 Function(Pointer<Uint32>, Uint32, Pointer<Uint32>),
      int Function(Pointer<Uint32>, int, Pointer<Uint32>)
    >('GetUpdatedClipboardFormats');

final _GetUpdateRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>, Int32),
      int Function(Pointer, Pointer<RECT>, int)
    >('GetUpdateRect');

final _GetUpdateRgn = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Int32),
      int Function(Pointer, Pointer, int)
    >('GetUpdateRgn');

final _GetUserObjectInformation = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer, int, Pointer<Uint32>)
    >('GetUserObjectInformationW');

final _GetWindow = _user32
    .lookupFunction<
      Pointer Function(Pointer, Uint32),
      Pointer Function(Pointer, int)
    >('GetWindow');

final _GetWindowDC = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GetWindowDC',
    );

final _GetWindowDisplayAffinity = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetWindowDisplayAffinity');

final _GetWindowDpiAwarenessContext = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GetWindowDpiAwarenessContext',
    );

final _GetWindowDpiHostingBehavior = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'GetWindowDpiHostingBehavior',
    );

final _GetWindowInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<WINDOWINFO>),
      int Function(Pointer, Pointer<WINDOWINFO>)
    >('GetWindowInfo');

final _GetWindowLongPtr = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Int32),
      int Function(Pointer, int)
    >('GetWindowLongPtrW');

final _GetWindowModuleFileName = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('GetWindowModuleFileNameW');

final _GetWindowPlacement = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<WINDOWPLACEMENT>),
      int Function(Pointer, Pointer<WINDOWPLACEMENT>)
    >('GetWindowPlacement');

final _GetWindowRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('GetWindowRect');

final _GetWindowRgn = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('GetWindowRgn');

final _GetWindowRgnBox = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('GetWindowRgnBox');

final _GetWindowText = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Int32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('GetWindowTextW');

final _GetWindowTextLength = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'GetWindowTextLengthW',
    );

final _GetWindowThreadProcessId = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetWindowThreadProcessId');

final _GrayString = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer,
        Pointer<NativeFunction<GRAYSTRINGPROC>>,
        IntPtr,
        Int32,
        Int32,
        Int32,
        Int32,
        Int32,
      ),
      int Function(
        Pointer,
        Pointer,
        Pointer<NativeFunction<GRAYSTRINGPROC>>,
        int,
        int,
        int,
        int,
        int,
        int,
      )
    >('GrayStringW');

final _HideCaret = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'HideCaret',
    );

final _HiliteMenuItem = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Uint32, Uint32),
      int Function(Pointer, Pointer, int, int)
    >('HiliteMenuItem');

final _InflateRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Int32, Int32),
      int Function(Pointer<RECT>, int, int)
    >('InflateRect');

final _InSendMessage = _user32.lookupFunction<Int32 Function(), int Function()>(
  'InSendMessage',
);

final _InSendMessageEx = _user32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'InSendMessageEx',
    );

final _InsertMenu = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, IntPtr, Pointer<Utf16>),
      int Function(Pointer, int, int, int, Pointer<Utf16>)
    >('InsertMenuW');

final _InsertMenuItem = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Int32, Pointer<MENUITEMINFO>),
      int Function(Pointer, int, int, Pointer<MENUITEMINFO>)
    >('InsertMenuItemW');

final _IntersectRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>),
      int Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>)
    >('IntersectRect');

final _InvalidateRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>, Int32),
      int Function(Pointer, Pointer<RECT>, int)
    >('InvalidateRect');

final _InvalidateRgn = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Int32),
      int Function(Pointer, Pointer, int)
    >('InvalidateRgn');

final _InvertRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('InvertRect');

final _IsChild = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('IsChild');

final _IsClipboardFormatAvailable = _user32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>(
      'IsClipboardFormatAvailable',
    );

final _IsDialogMessage = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MSG>),
      int Function(Pointer, Pointer<MSG>)
    >('IsDialogMessageW');

final _IsDlgButtonChecked = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Int32),
      int Function(Pointer, int)
    >('IsDlgButtonChecked');

final _IsGUIThread = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>('IsGUIThread');

final _IsHungAppWindow = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'IsHungAppWindow',
    );

final _IsIconic = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('IsIconic');

final _IsImmersiveProcess = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'IsImmersiveProcess',
    );

final _IsMenu = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('IsMenu');

final _IsMouseInPointerEnabled = _user32
    .lookupFunction<Int32 Function(), int Function()>(
      'IsMouseInPointerEnabled',
    );

final _IsProcessDPIAware = _user32
    .lookupFunction<Int32 Function(), int Function()>('IsProcessDPIAware');

final _IsRectEmpty = _user32
    .lookupFunction<Int32 Function(Pointer<RECT>), int Function(Pointer<RECT>)>(
      'IsRectEmpty',
    );

final _IsTouchWindow = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('IsTouchWindow');

final _IsValidDpiAwarenessContext = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'IsValidDpiAwarenessContext',
    );

final _IsWindow = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('IsWindow');

final _IsWindowEnabled = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'IsWindowEnabled',
    );

final _IsWindowUnicode = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'IsWindowUnicode',
    );

final _IsWindowVisible = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'IsWindowVisible',
    );

final _IsWow64Message = _user32
    .lookupFunction<Int32 Function(), int Function()>('IsWow64Message');

final _IsZoomed = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('IsZoomed');

final _KillTimer = _user32
    .lookupFunction<
      Int32 Function(Pointer, IntPtr),
      int Function(Pointer, int)
    >('KillTimer');

final _LoadAccelerators = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>),
      Pointer Function(Pointer, Pointer<Utf16>)
    >('LoadAcceleratorsW');

final _LoadCursor = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>),
      Pointer Function(Pointer, Pointer<Utf16>)
    >('LoadCursorW');

final _LoadCursorFromFile = _user32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>),
      Pointer Function(Pointer<Utf16>)
    >('LoadCursorFromFileW');

final _LoadIcon = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>),
      Pointer Function(Pointer, Pointer<Utf16>)
    >('LoadIconW');

final _LoadImage = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>, Uint32, Int32, Int32, Uint32),
      Pointer Function(Pointer, Pointer<Utf16>, int, int, int, int)
    >('LoadImageW');

final _LoadKeyboardLayout = _user32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Uint32),
      Pointer Function(Pointer<Utf16>, int)
    >('LoadKeyboardLayoutW');

final _LoadMenu = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>),
      Pointer Function(Pointer, Pointer<Utf16>)
    >('LoadMenuW');

final _LoadMenuIndirect = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'LoadMenuIndirectW',
    );

final _LoadString = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Utf16>, Int32),
      int Function(Pointer, int, Pointer<Utf16>, int)
    >('LoadStringW');

final _LockSetForegroundWindow = _user32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>(
      'LockSetForegroundWindow',
    );

final _LockWindowUpdate = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'LockWindowUpdate',
    );

final _LockWorkStation = _user32
    .lookupFunction<Int32 Function(), int Function()>('LockWorkStation');

final _LogicalToPhysicalPoint = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>),
      int Function(Pointer, Pointer<POINT>)
    >('LogicalToPhysicalPoint');

final _LogicalToPhysicalPointForPerMonitorDPI = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>),
      int Function(Pointer, Pointer<POINT>)
    >('LogicalToPhysicalPointForPerMonitorDPI');

final _LookupIconIdFromDirectory = _user32
    .lookupFunction<
      Int32 Function(Pointer<Uint8>, Int32),
      int Function(Pointer<Uint8>, int)
    >('LookupIconIdFromDirectory');

final _LookupIconIdFromDirectoryEx = _user32
    .lookupFunction<
      Int32 Function(Pointer<Uint8>, Int32, Int32, Int32, Uint32),
      int Function(Pointer<Uint8>, int, int, int, int)
    >('LookupIconIdFromDirectoryEx');

final _MapDialogRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('MapDialogRect');

final _MapVirtualKey = _user32
    .lookupFunction<Uint32 Function(Uint32, Uint32), int Function(int, int)>(
      'MapVirtualKeyW',
    );

final _MapVirtualKeyEx = _user32
    .lookupFunction<
      Uint32 Function(Uint32, Uint32, Pointer),
      int Function(int, int, Pointer)
    >('MapVirtualKeyExW');

final _MapWindowPoints = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<POINT>, Uint32),
      int Function(Pointer, Pointer, Pointer<POINT>, int)
    >('MapWindowPoints');

final _MenuItemFromPoint = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, POINT),
      int Function(Pointer, Pointer, POINT)
    >('MenuItemFromPoint');

final _MessageBeep = _user32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>('MessageBeep');

final _MessageBox = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, int)
    >('MessageBoxW');

final _MessageBoxEx = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Uint32, Uint16),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, int, int)
    >('MessageBoxExW');

final _ModifyMenu = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, IntPtr, Pointer<Utf16>),
      int Function(Pointer, int, int, int, Pointer<Utf16>)
    >('ModifyMenuW');

final _MonitorFromPoint = _user32
    .lookupFunction<
      Pointer Function(POINT, Uint32),
      Pointer Function(POINT, int)
    >('MonitorFromPoint');

final _MonitorFromRect = _user32
    .lookupFunction<
      Pointer Function(Pointer<RECT>, Uint32),
      Pointer Function(Pointer<RECT>, int)
    >('MonitorFromRect');

final _MonitorFromWindow = _user32
    .lookupFunction<
      Pointer Function(Pointer, Uint32),
      Pointer Function(Pointer, int)
    >('MonitorFromWindow');

final _MoveWindow = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Int32, Int32, Int32),
      int Function(Pointer, int, int, int, int, int)
    >('MoveWindow');

final _MsgWaitForMultipleObjects = _user32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Pointer>, Int32, Uint32, Uint32),
      int Function(int, Pointer<Pointer>, int, int, int)
    >('MsgWaitForMultipleObjects');

final _MsgWaitForMultipleObjectsEx = _user32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Pointer>, Uint32, Uint32, Uint32),
      int Function(int, Pointer<Pointer>, int, int, int)
    >('MsgWaitForMultipleObjectsEx');

final _NotifyWinEvent = _user32
    .lookupFunction<
      Void Function(Uint32, Pointer, Int32, Int32),
      void Function(int, Pointer, int, int)
    >('NotifyWinEvent');

final _OemKeyScan = _user32
    .lookupFunction<Uint32 Function(Uint16), int Function(int)>('OemKeyScan');

final _OffsetRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Int32, Int32),
      int Function(Pointer<RECT>, int, int)
    >('OffsetRect');

final _OpenClipboard = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'OpenClipboard',
    );

final _OpenDesktop = _user32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Uint32, Int32, Uint32),
      Pointer Function(Pointer<Utf16>, int, int, int)
    >('OpenDesktopW');

final _OpenIcon = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('OpenIcon');

final _OpenInputDesktop = _user32
    .lookupFunction<
      Pointer Function(Uint32, Int32, Uint32),
      Pointer Function(int, int, int)
    >('OpenInputDesktop');

final _OpenWindowStation = _user32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Int32, Uint32),
      Pointer Function(Pointer<Utf16>, int, int)
    >('OpenWindowStationW');

final _PaintDesktop = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'PaintDesktop',
    );

final _PeekMessage = _user32
    .lookupFunction<
      Int32 Function(Pointer<MSG>, Pointer, Uint32, Uint32, Uint32),
      int Function(Pointer<MSG>, Pointer, int, int, int)
    >('PeekMessageW');

final _PhysicalToLogicalPoint = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>),
      int Function(Pointer, Pointer<POINT>)
    >('PhysicalToLogicalPoint');

final _PhysicalToLogicalPointForPerMonitorDPI = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>),
      int Function(Pointer, Pointer<POINT>)
    >('PhysicalToLogicalPointForPerMonitorDPI');

final _PostMessage = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('PostMessageW');

final _PostQuitMessage = _user32
    .lookupFunction<Void Function(Int32), void Function(int)>(
      'PostQuitMessage',
    );

final _PostThreadMessage = _user32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, IntPtr, IntPtr),
      int Function(int, int, int, int)
    >('PostThreadMessageW');

final _PrintWindow = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Uint32),
      int Function(Pointer, Pointer, int)
    >('PrintWindow');

final _PrivateExtractIcons = _user32
    .lookupFunction<
      Uint32 Function(
        Pointer<Utf16>,
        Int32,
        Int32,
        Int32,
        Pointer<Pointer>,
        Pointer<Uint32>,
        Uint32,
        Uint32,
      ),
      int Function(
        Pointer<Utf16>,
        int,
        int,
        int,
        Pointer<Pointer>,
        Pointer<Uint32>,
        int,
        int,
      )
    >('PrivateExtractIconsW');

final _PtInRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, POINT),
      int Function(Pointer<RECT>, POINT)
    >('PtInRect');

final _RedrawWindow = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>, Pointer, Uint32),
      int Function(Pointer, Pointer<RECT>, Pointer, int)
    >('RedrawWindow');

final _RegisterClass = _user32
    .lookupFunction<
      Uint16 Function(Pointer<WNDCLASS>),
      int Function(Pointer<WNDCLASS>)
    >('RegisterClassW');

final _RegisterClassEx = _user32
    .lookupFunction<
      Uint16 Function(Pointer<WNDCLASSEX>),
      int Function(Pointer<WNDCLASSEX>)
    >('RegisterClassExW');

final _RegisterClipboardFormat = _user32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('RegisterClipboardFormatW');

final _RegisterDeviceNotification = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer, Uint32),
      Pointer Function(Pointer, Pointer, int)
    >('RegisterDeviceNotificationW');

final _RegisterHotKey = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Uint32, Uint32),
      int Function(Pointer, int, int, int)
    >('RegisterHotKey');

final _RegisterPowerSettingNotification = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Pointer<GUID>, Uint32),
      int Function(Pointer, Pointer<GUID>, int)
    >('RegisterPowerSettingNotification');

final _RegisterRawInputDevices = _user32
    .lookupFunction<
      Int32 Function(Pointer<RAWINPUTDEVICE>, Uint32, Uint32),
      int Function(Pointer<RAWINPUTDEVICE>, int, int)
    >('RegisterRawInputDevices');

final _RegisterTouchHitTestingWindow = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('RegisterTouchHitTestingWindow');

final _RegisterTouchWindow = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('RegisterTouchWindow');

final _RegisterWindowMessage = _user32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('RegisterWindowMessageW');

final _ReleaseCapture = _user32
    .lookupFunction<Int32 Function(), int Function()>('ReleaseCapture');

final _ReleaseDC = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('ReleaseDC');

final _RemoveClipboardFormatListener = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'RemoveClipboardFormatListener',
    );

final _RemoveMenu = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('RemoveMenu');

final _RemoveProp = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>),
      Pointer Function(Pointer, Pointer<Utf16>)
    >('RemovePropW');

final _ReplyMessage = _user32
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>('ReplyMessage');

final _ScreenToClient = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>),
      int Function(Pointer, Pointer<POINT>)
    >('ScreenToClient');

final _ScrollDC = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Int32,
        Pointer<RECT>,
        Pointer<RECT>,
        Pointer,
        Pointer<RECT>,
      ),
      int Function(
        Pointer,
        int,
        int,
        Pointer<RECT>,
        Pointer<RECT>,
        Pointer,
        Pointer<RECT>,
      )
    >('ScrollDC');

final _ScrollWindow = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer<RECT>, Pointer<RECT>),
      int Function(Pointer, int, int, Pointer<RECT>, Pointer<RECT>)
    >('ScrollWindow');

final _ScrollWindowEx = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Int32,
        Pointer<RECT>,
        Pointer<RECT>,
        Pointer,
        Pointer<RECT>,
        Uint32,
      ),
      int Function(
        Pointer,
        int,
        int,
        Pointer<RECT>,
        Pointer<RECT>,
        Pointer,
        Pointer<RECT>,
        int,
      )
    >('ScrollWindowEx');

final _SendDlgItemMessage = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Int32, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int, int)
    >('SendDlgItemMessageW');

final _SendInput = _user32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<INPUT>, Int32),
      int Function(int, Pointer<INPUT>, int)
    >('SendInput');

final _SendMessage = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('SendMessageW');

final _SendMessageCallback = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        IntPtr,
        IntPtr,
        Pointer<NativeFunction<SENDASYNCPROC>>,
        IntPtr,
      ),
      int Function(
        Pointer,
        int,
        int,
        int,
        Pointer<NativeFunction<SENDASYNCPROC>>,
        int,
      )
    >('SendMessageCallbackW');

final _SendMessageTimeout = _user32
    .lookupFunction<
      IntPtr Function(
        Pointer,
        Uint32,
        IntPtr,
        IntPtr,
        Uint32,
        Uint32,
        Pointer<IntPtr>,
      ),
      int Function(Pointer, int, int, int, int, int, Pointer<IntPtr>)
    >('SendMessageTimeoutW');

final _SendNotifyMessage = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('SendNotifyMessageW');

final _SetActiveWindow = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'SetActiveWindow',
    );

final _SetCapture = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'SetCapture',
    );

final _SetCaretBlinkTime = _user32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>(
      'SetCaretBlinkTime',
    );

final _SetCaretPos = _user32
    .lookupFunction<Int32 Function(Int32, Int32), int Function(int, int)>(
      'SetCaretPos',
    );

final _SetClassLongPtr = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Int32, IntPtr),
      int Function(Pointer, int, int)
    >('SetClassLongPtrW');

final _SetClipboardData = _user32
    .lookupFunction<
      Pointer Function(Uint32, Pointer),
      Pointer Function(int, Pointer)
    >('SetClipboardData');

final _SetClipboardViewer = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'SetClipboardViewer',
    );

final _SetCoalescableTimer = _user32
    .lookupFunction<
      IntPtr Function(
        Pointer,
        IntPtr,
        Uint32,
        Pointer<NativeFunction<TIMERPROC>>,
        Uint32,
      ),
      int Function(Pointer, int, int, Pointer<NativeFunction<TIMERPROC>>, int)
    >('SetCoalescableTimer');

final _SetCursor = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'SetCursor',
    );

final _SetCursorPos = _user32
    .lookupFunction<Int32 Function(Int32, Int32), int Function(int, int)>(
      'SetCursorPos',
    );

final _SetDialogControlDpiChangeBehavior = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32),
      int Function(Pointer, int, int)
    >('SetDialogControlDpiChangeBehavior');

final _SetDialogDpiChangeBehavior = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32),
      int Function(Pointer, int, int)
    >('SetDialogDpiChangeBehavior');

final _SetDisplayAutoRotationPreferences = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'SetDisplayAutoRotationPreferences',
    );

final _SetDisplayConfig = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Pointer<DISPLAYCONFIG_PATH_INFO>,
        Uint32,
        Pointer<DISPLAYCONFIG_MODE_INFO>,
        Uint32,
      ),
      int Function(
        int,
        Pointer<DISPLAYCONFIG_PATH_INFO>,
        int,
        Pointer<DISPLAYCONFIG_MODE_INFO>,
        int,
      )
    >('SetDisplayConfig');

final _SetDlgItemInt = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Uint32, Int32),
      int Function(Pointer, int, int, int)
    >('SetDlgItemInt');

final _SetDlgItemText = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer<Utf16>),
      int Function(Pointer, int, Pointer<Utf16>)
    >('SetDlgItemTextW');

final _SetDoubleClickTime = _user32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>(
      'SetDoubleClickTime',
    );

final _SetFocus = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'SetFocus',
    );

final _SetForegroundWindow = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'SetForegroundWindow',
    );

final _SetGestureConfig = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Pointer<GESTURECONFIG>, Uint32),
      int Function(Pointer, int, int, Pointer<GESTURECONFIG>, int)
    >('SetGestureConfig');

final _SetKeyboardState = _user32
    .lookupFunction<
      Int32 Function(Pointer<Uint8>),
      int Function(Pointer<Uint8>)
    >('SetKeyboardState');

final _SetLayeredWindowAttributes = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint8, Uint32),
      int Function(Pointer, int, int, int)
    >('SetLayeredWindowAttributes');

final _SetMenu = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('SetMenu');

final _SetMenuDefaultItem = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('SetMenuDefaultItem');

final _SetMenuInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MENUINFO>),
      int Function(Pointer, Pointer<MENUINFO>)
    >('SetMenuInfo');

final _SetMenuItemBitmaps = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Pointer, Pointer),
      int Function(Pointer, int, int, Pointer, Pointer)
    >('SetMenuItemBitmaps');

final _SetMenuItemInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Int32, Pointer<MENUITEMINFO>),
      int Function(Pointer, int, int, Pointer<MENUITEMINFO>)
    >('SetMenuItemInfoW');

final _SetMessageExtraInfo = _user32
    .lookupFunction<IntPtr Function(IntPtr), int Function(int)>(
      'SetMessageExtraInfo',
    );

final _SetParent = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer),
      Pointer Function(Pointer, Pointer)
    >('SetParent');

final _SetPhysicalCursorPos = _user32
    .lookupFunction<Int32 Function(Int32, Int32), int Function(int, int)>(
      'SetPhysicalCursorPos',
    );

final _SetProcessDPIAware = _user32
    .lookupFunction<Int32 Function(), int Function()>('SetProcessDPIAware');

final _SetProcessDpiAwarenessContext = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'SetProcessDpiAwarenessContext',
    );

final _SetProp = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer),
      int Function(Pointer, Pointer<Utf16>, Pointer)
    >('SetPropW');

final _SetRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Int32, Int32, Int32, Int32),
      int Function(Pointer<RECT>, int, int, int, int)
    >('SetRect');

final _SetRectEmpty = _user32
    .lookupFunction<Int32 Function(Pointer<RECT>), int Function(Pointer<RECT>)>(
      'SetRectEmpty',
    );

final _SetScrollInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer<SCROLLINFO>, Int32),
      int Function(Pointer, int, Pointer<SCROLLINFO>, int)
    >('SetScrollInfo');

final _SetSysColors = _user32
    .lookupFunction<
      Int32 Function(Int32, Pointer<Int32>, Pointer<Uint32>),
      int Function(int, Pointer<Int32>, Pointer<Uint32>)
    >('SetSysColors');

final _SetSystemCursor = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SetSystemCursor');

final _SetThreadDpiAwarenessContext = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'SetThreadDpiAwarenessContext',
    );

final _SetThreadDpiHostingBehavior = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'SetThreadDpiHostingBehavior',
    );

final _SetTimer = _user32
    .lookupFunction<
      IntPtr Function(
        Pointer,
        IntPtr,
        Uint32,
        Pointer<NativeFunction<TIMERPROC>>,
      ),
      int Function(Pointer, int, int, Pointer<NativeFunction<TIMERPROC>>)
    >('SetTimer');

final _SetUserObjectInformation = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, Uint32),
      int Function(Pointer, int, Pointer, int)
    >('SetUserObjectInformationW');

final _SetWindowDisplayAffinity = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SetWindowDisplayAffinity');

final _SetWindowLongPtr = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Int32, IntPtr),
      int Function(Pointer, int, int)
    >('SetWindowLongPtrW');

final _SetWindowPlacement = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<WINDOWPLACEMENT>),
      int Function(Pointer, Pointer<WINDOWPLACEMENT>)
    >('SetWindowPlacement');

final _SetWindowPos = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Int32, Int32, Int32, Int32, Uint32),
      int Function(Pointer, Pointer, int, int, int, int, int)
    >('SetWindowPos');

final _SetWindowRgn = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Int32),
      int Function(Pointer, Pointer, int)
    >('SetWindowRgn');

final _SetWindowsHookEx = _user32
    .lookupFunction<
      Pointer Function(
        Int32,
        Pointer<NativeFunction<HOOKPROC>>,
        Pointer,
        Uint32,
      ),
      Pointer Function(int, Pointer<NativeFunction<HOOKPROC>>, Pointer, int)
    >('SetWindowsHookExW');

final _SetWindowText = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('SetWindowTextW');

final _ShowCaret = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'ShowCaret',
    );

final _ShowCursor = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>('ShowCursor');

final _ShowOwnedPopups = _user32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'ShowOwnedPopups',
    );

final _ShowWindow = _user32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'ShowWindow',
    );

final _ShowWindowAsync = _user32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'ShowWindowAsync',
    );

final _SkipPointerFrameMessages = _user32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>(
      'SkipPointerFrameMessages',
    );

final _SoundSentry = _user32.lookupFunction<Int32 Function(), int Function()>(
  'SoundSentry',
);

final _SubtractRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>),
      int Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>)
    >('SubtractRect');

final _SwapMouseButton = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'SwapMouseButton',
    );

final _SwitchDesktop = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'SwitchDesktop',
    );

final _SwitchToThisWindow = _user32
    .lookupFunction<Void Function(Pointer, Int32), void Function(Pointer, int)>(
      'SwitchToThisWindow',
    );

final _SystemParametersInfo = _user32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, Pointer, Uint32),
      int Function(int, int, Pointer, int)
    >('SystemParametersInfoW');

final _SystemParametersInfoForDpi = _user32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, Pointer, Uint32, Uint32),
      int Function(int, int, Pointer, int, int)
    >('SystemParametersInfoForDpi');

final _TabbedTextOut = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Int32,
        Pointer<Utf16>,
        Int32,
        Int32,
        Pointer<Int32>,
        Int32,
      ),
      int Function(
        Pointer,
        int,
        int,
        Pointer<Utf16>,
        int,
        int,
        Pointer<Int32>,
        int,
      )
    >('TabbedTextOutW');

final _TileWindows = _user32
    .lookupFunction<
      Uint16 Function(Pointer, Uint32, Pointer<RECT>, Uint32, Pointer<Pointer>),
      int Function(Pointer, int, Pointer<RECT>, int, Pointer<Pointer>)
    >('TileWindows');

final _ToAscii = _user32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, Pointer<Uint8>, Pointer<Uint16>, Uint32),
      int Function(int, int, Pointer<Uint8>, Pointer<Uint16>, int)
    >('ToAscii');

final _ToAsciiEx = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Uint32,
        Pointer<Uint8>,
        Pointer<Uint16>,
        Uint32,
        Pointer,
      ),
      int Function(int, int, Pointer<Uint8>, Pointer<Uint16>, int, Pointer)
    >('ToAsciiEx');

final _ToUnicode = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Uint32,
        Pointer<Uint8>,
        Pointer<Utf16>,
        Int32,
        Uint32,
      ),
      int Function(int, int, Pointer<Uint8>, Pointer<Utf16>, int, int)
    >('ToUnicode');

final _ToUnicodeEx = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Uint32,
        Pointer<Uint8>,
        Pointer<Utf16>,
        Int32,
        Uint32,
        Pointer,
      ),
      int Function(int, int, Pointer<Uint8>, Pointer<Utf16>, int, int, Pointer)
    >('ToUnicodeEx');

final _TrackPopupMenu = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        Int32,
        Int32,
        Int32,
        Pointer,
        Pointer<RECT>,
      ),
      int Function(Pointer, int, int, int, int, Pointer, Pointer<RECT>)
    >('TrackPopupMenu');

final _TrackPopupMenuEx = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        Int32,
        Int32,
        Pointer,
        Pointer<TPMPARAMS>,
      ),
      int Function(Pointer, int, int, int, Pointer, Pointer<TPMPARAMS>)
    >('TrackPopupMenuEx');

final _TranslateAccelerator = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<MSG>),
      int Function(Pointer, Pointer, Pointer<MSG>)
    >('TranslateAcceleratorW');

final _TranslateMDISysAccel = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MSG>),
      int Function(Pointer, Pointer<MSG>)
    >('TranslateMDISysAccel');

final _TranslateMessage = _user32
    .lookupFunction<Int32 Function(Pointer<MSG>), int Function(Pointer<MSG>)>(
      'TranslateMessage',
    );

final _UnhookWindowsHookEx = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'UnhookWindowsHookEx',
    );

final _UnionRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>),
      int Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>)
    >('UnionRect');

final _UnloadKeyboardLayout = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'UnloadKeyboardLayout',
    );

final _UnregisterClass = _user32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer),
      int Function(Pointer<Utf16>, Pointer)
    >('UnregisterClassW');

final _UnregisterDeviceNotification = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'UnregisterDeviceNotification',
    );

final _UnregisterHotKey = _user32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'UnregisterHotKey',
    );

final _UnregisterPowerSettingNotification = _user32
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>(
      'UnregisterPowerSettingNotification',
    );

final _UnregisterTouchWindow = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'UnregisterTouchWindow',
    );

final _UpdateLayeredWindowIndirect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<UPDATELAYEREDWINDOWINFO>),
      int Function(Pointer, Pointer<UPDATELAYEREDWINDOWINFO>)
    >('UpdateLayeredWindowIndirect');

final _UpdateWindow = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'UpdateWindow',
    );

final _UserHandleGrantAccess = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Int32),
      int Function(Pointer, Pointer, int)
    >('UserHandleGrantAccess');

final _ValidateRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('ValidateRect');

final _ValidateRgn = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('ValidateRgn');

final _VkKeyScan = _user32
    .lookupFunction<Int16 Function(Uint16), int Function(int)>('VkKeyScanW');

final _VkKeyScanEx = _user32
    .lookupFunction<
      Int16 Function(Uint16, Pointer),
      int Function(int, Pointer)
    >('VkKeyScanExW');

final _WaitForInputIdle = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('WaitForInputIdle');

final _WaitMessage = _user32.lookupFunction<Int32 Function(), int Function()>(
  'WaitMessage',
);

final _WindowFromDC = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'WindowFromDC',
    );

final _WindowFromPhysicalPoint = _user32
    .lookupFunction<Pointer Function(POINT), Pointer Function(POINT)>(
      'WindowFromPhysicalPoint',
    );

final _WindowFromPoint = _user32
    .lookupFunction<Pointer Function(POINT), Pointer Function(POINT)>(
      'WindowFromPoint',
    );
