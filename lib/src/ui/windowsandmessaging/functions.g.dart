// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../ui/windowsandmessaging/callbacks.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../system/power/structs.g.dart'; // -----------------------------------------------------------------------

// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int AdjustWindowRect(
  Pointer<RECT> lpRect,
  int dwStyle,
  int bMenu,
) =>
    _AdjustWindowRect(
      lpRect,
      dwStyle,
      bMenu,
    );

late final _AdjustWindowRect = _user32.lookupFunction<
    Int32 Function(
  Pointer<RECT> lpRect,
  Uint32 dwStyle,
  Int32 bMenu,
),
    int Function(
  Pointer<RECT> lpRect,
  int dwStyle,
  int bMenu,
)>('AdjustWindowRect');

int AdjustWindowRectEx(
  Pointer<RECT> lpRect,
  int dwStyle,
  int bMenu,
  int dwExStyle,
) =>
    _AdjustWindowRectEx(
      lpRect,
      dwStyle,
      bMenu,
      dwExStyle,
    );

late final _AdjustWindowRectEx = _user32.lookupFunction<
    Int32 Function(
  Pointer<RECT> lpRect,
  Uint32 dwStyle,
  Int32 bMenu,
  Uint32 dwExStyle,
),
    int Function(
  Pointer<RECT> lpRect,
  int dwStyle,
  int bMenu,
  int dwExStyle,
)>('AdjustWindowRectEx');

int AllowSetForegroundWindow(
  int dwProcessId,
) =>
    _AllowSetForegroundWindow(
      dwProcessId,
    );

late final _AllowSetForegroundWindow = _user32.lookupFunction<
    Int32 Function(
  Uint32 dwProcessId,
),
    int Function(
  int dwProcessId,
)>('AllowSetForegroundWindow');

int AnimateWindow(
  int hWnd,
  int dwTime,
  int dwFlags,
) =>
    _AnimateWindow(
      hWnd,
      dwTime,
      dwFlags,
    );

late final _AnimateWindow = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Uint32 dwTime,
  Uint32 dwFlags,
),
    int Function(
  int hWnd,
  int dwTime,
  int dwFlags,
)>('AnimateWindow');

int AnyPopup() => _AnyPopup();

late final _AnyPopup =
    _user32.lookupFunction<Int32 Function(), int Function()>('AnyPopup');

int AppendMenu(
  int hMenu,
  int uFlags,
  int uIDNewItem,
  Pointer<Utf16> lpNewItem,
) =>
    _AppendMenu(
      hMenu,
      uFlags,
      uIDNewItem,
      lpNewItem,
    );

late final _AppendMenu = _user32.lookupFunction<
    Int32 Function(
  IntPtr hMenu,
  Uint32 uFlags,
  IntPtr uIDNewItem,
  Pointer<Utf16> lpNewItem,
),
    int Function(
  int hMenu,
  int uFlags,
  int uIDNewItem,
  Pointer<Utf16> lpNewItem,
)>('AppendMenuW');

int ArrangeIconicWindows(
  int hWnd,
) =>
    _ArrangeIconicWindows(
      hWnd,
    );

late final _ArrangeIconicWindows = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('ArrangeIconicWindows');

int BeginDeferWindowPos(
  int nNumWindows,
) =>
    _BeginDeferWindowPos(
      nNumWindows,
    );

late final _BeginDeferWindowPos = _user32.lookupFunction<
    IntPtr Function(
  Int32 nNumWindows,
),
    int Function(
  int nNumWindows,
)>('BeginDeferWindowPos');

int BringWindowToTop(
  int hWnd,
) =>
    _BringWindowToTop(
      hWnd,
    );

late final _BringWindowToTop = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('BringWindowToTop');

int CalculatePopupWindowPosition(
  Pointer<POINT> anchorPoint,
  Pointer<SIZE> windowSize,
  int flags,
  Pointer<RECT> excludeRect,
  Pointer<RECT> popupWindowPosition,
) =>
    _CalculatePopupWindowPosition(
      anchorPoint,
      windowSize,
      flags,
      excludeRect,
      popupWindowPosition,
    );

late final _CalculatePopupWindowPosition = _user32.lookupFunction<
    Int32 Function(
  Pointer<POINT> anchorPoint,
  Pointer<SIZE> windowSize,
  Uint32 flags,
  Pointer<RECT> excludeRect,
  Pointer<RECT> popupWindowPosition,
),
    int Function(
  Pointer<POINT> anchorPoint,
  Pointer<SIZE> windowSize,
  int flags,
  Pointer<RECT> excludeRect,
  Pointer<RECT> popupWindowPosition,
)>('CalculatePopupWindowPosition');

int CallMsgFilter(
  Pointer<MSG> lpMsg,
  int nCode,
) =>
    _CallMsgFilter(
      lpMsg,
      nCode,
    );

late final _CallMsgFilter = _user32.lookupFunction<
    Int32 Function(
  Pointer<MSG> lpMsg,
  Int32 nCode,
),
    int Function(
  Pointer<MSG> lpMsg,
  int nCode,
)>('CallMsgFilterW');

int CallNextHookEx(
  int hhk,
  int nCode,
  int wParam,
  int lParam,
) =>
    _CallNextHookEx(
      hhk,
      nCode,
      wParam,
      lParam,
    );

late final _CallNextHookEx = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hhk,
  Int32 nCode,
  IntPtr wParam,
  IntPtr lParam,
),
    int Function(
  int hhk,
  int nCode,
  int wParam,
  int lParam,
)>('CallNextHookEx');

int CallWindowProc(
  Pointer<NativeFunction<WNDPROC>> lpPrevWndFunc,
  int hWnd,
  int Msg,
  int wParam,
  int lParam,
) =>
    _CallWindowProc(
      lpPrevWndFunc,
      hWnd,
      Msg,
      wParam,
      lParam,
    );

late final _CallWindowProc = _user32.lookupFunction<
    IntPtr Function(
  Pointer<NativeFunction<WNDPROC>> lpPrevWndFunc,
  IntPtr hWnd,
  Uint32 Msg,
  IntPtr wParam,
  IntPtr lParam,
),
    int Function(
  Pointer<NativeFunction<WNDPROC>> lpPrevWndFunc,
  int hWnd,
  int Msg,
  int wParam,
  int lParam,
)>('CallWindowProcW');

int CancelShutdown() => _CancelShutdown();

late final _CancelShutdown =
    _user32.lookupFunction<Int32 Function(), int Function()>('CancelShutdown');

int CascadeWindows(
  int hwndParent,
  int wHow,
  Pointer<RECT> lpRect,
  int cKids,
  Pointer<IntPtr> lpKids,
) =>
    _CascadeWindows(
      hwndParent,
      wHow,
      lpRect,
      cKids,
      lpKids,
    );

late final _CascadeWindows = _user32.lookupFunction<
    Uint16 Function(
  IntPtr hwndParent,
  Uint32 wHow,
  Pointer<RECT> lpRect,
  Uint32 cKids,
  Pointer<IntPtr> lpKids,
),
    int Function(
  int hwndParent,
  int wHow,
  Pointer<RECT> lpRect,
  int cKids,
  Pointer<IntPtr> lpKids,
)>('CascadeWindows');

int ChangeMenu(
  int hMenu,
  int cmd,
  Pointer<Utf16> lpszNewItem,
  int cmdInsert,
  int flags,
) =>
    _ChangeMenu(
      hMenu,
      cmd,
      lpszNewItem,
      cmdInsert,
      flags,
    );

late final _ChangeMenu = _user32.lookupFunction<
    Int32 Function(
  IntPtr hMenu,
  Uint32 cmd,
  Pointer<Utf16> lpszNewItem,
  Uint32 cmdInsert,
  Uint32 flags,
),
    int Function(
  int hMenu,
  int cmd,
  Pointer<Utf16> lpszNewItem,
  int cmdInsert,
  int flags,
)>('ChangeMenuW');

int ChangeWindowMessageFilter(
  int message,
  int dwFlag,
) =>
    _ChangeWindowMessageFilter(
      message,
      dwFlag,
    );

late final _ChangeWindowMessageFilter = _user32.lookupFunction<
    Int32 Function(
  Uint32 message,
  Uint32 dwFlag,
),
    int Function(
  int message,
  int dwFlag,
)>('ChangeWindowMessageFilter');

int ChangeWindowMessageFilterEx(
  int hwnd,
  int message,
  int action,
  Pointer<CHANGEFILTERSTRUCT> pChangeFilterStruct,
) =>
    _ChangeWindowMessageFilterEx(
      hwnd,
      message,
      action,
      pChangeFilterStruct,
    );

late final _ChangeWindowMessageFilterEx = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Uint32 message,
  Uint32 action,
  Pointer<CHANGEFILTERSTRUCT> pChangeFilterStruct,
),
    int Function(
  int hwnd,
  int message,
  int action,
  Pointer<CHANGEFILTERSTRUCT> pChangeFilterStruct,
)>('ChangeWindowMessageFilterEx');

int CharLowerBuff(
  Pointer<Utf16> lpsz,
  int cchLength,
) =>
    _CharLowerBuff(
      lpsz,
      cchLength,
    );

late final _CharLowerBuff = _user32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpsz,
  Uint32 cchLength,
),
    int Function(
  Pointer<Utf16> lpsz,
  int cchLength,
)>('CharLowerBuffW');

Pointer<Utf16> CharLower(
  Pointer<Utf16> lpsz,
) =>
    _CharLower(
      lpsz,
    );

late final _CharLower = _user32.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> lpsz,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> lpsz,
)>('CharLowerW');

Pointer<Utf16> CharNext(
  Pointer<Utf16> lpsz,
) =>
    _CharNext(
      lpsz,
    );

late final _CharNext = _user32.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> lpsz,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> lpsz,
)>('CharNextW');

Pointer<Utf16> CharPrev(
  Pointer<Utf16> lpszStart,
  Pointer<Utf16> lpszCurrent,
) =>
    _CharPrev(
      lpszStart,
      lpszCurrent,
    );

late final _CharPrev = _user32.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> lpszStart,
  Pointer<Utf16> lpszCurrent,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> lpszStart,
  Pointer<Utf16> lpszCurrent,
)>('CharPrevW');

int CharToOemBuff(
  Pointer<Utf16> lpszSrc,
  Pointer<Utf8> lpszDst,
  int cchDstLength,
) =>
    _CharToOemBuff(
      lpszSrc,
      lpszDst,
      cchDstLength,
    );

late final _CharToOemBuff = _user32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszSrc,
  Pointer<Utf8> lpszDst,
  Uint32 cchDstLength,
),
    int Function(
  Pointer<Utf16> lpszSrc,
  Pointer<Utf8> lpszDst,
  int cchDstLength,
)>('CharToOemBuffW');

int CharToOem(
  Pointer<Utf16> pSrc,
  Pointer<Utf8> pDst,
) =>
    _CharToOem(
      pSrc,
      pDst,
    );

late final _CharToOem = _user32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pSrc,
  Pointer<Utf8> pDst,
),
    int Function(
  Pointer<Utf16> pSrc,
  Pointer<Utf8> pDst,
)>('CharToOemW');

int CharUpperBuff(
  Pointer<Utf16> lpsz,
  int cchLength,
) =>
    _CharUpperBuff(
      lpsz,
      cchLength,
    );

late final _CharUpperBuff = _user32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpsz,
  Uint32 cchLength,
),
    int Function(
  Pointer<Utf16> lpsz,
  int cchLength,
)>('CharUpperBuffW');

Pointer<Utf16> CharUpper(
  Pointer<Utf16> lpsz,
) =>
    _CharUpper(
      lpsz,
    );

late final _CharUpper = _user32.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> lpsz,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> lpsz,
)>('CharUpperW');

int CheckMenuItem(
  int hMenu,
  int uIDCheckItem,
  int uCheck,
) =>
    _CheckMenuItem(
      hMenu,
      uIDCheckItem,
      uCheck,
    );

late final _CheckMenuItem = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hMenu,
  Uint32 uIDCheckItem,
  Uint32 uCheck,
),
    int Function(
  int hMenu,
  int uIDCheckItem,
  int uCheck,
)>('CheckMenuItem');

int CheckMenuRadioItem(
  int hmenu,
  int first,
  int last,
  int check,
  int flags,
) =>
    _CheckMenuRadioItem(
      hmenu,
      first,
      last,
      check,
      flags,
    );

late final _CheckMenuRadioItem = _user32.lookupFunction<
    Int32 Function(
  IntPtr hmenu,
  Uint32 first,
  Uint32 last,
  Uint32 check,
  Uint32 flags,
),
    int Function(
  int hmenu,
  int first,
  int last,
  int check,
  int flags,
)>('CheckMenuRadioItem');

int ChildWindowFromPoint(
  int hWndParent,
  POINT Point,
) =>
    _ChildWindowFromPoint(
      hWndParent,
      Point,
    );

late final _ChildWindowFromPoint = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWndParent,
  POINT Point,
),
    int Function(
  int hWndParent,
  POINT Point,
)>('ChildWindowFromPoint');

int ChildWindowFromPointEx(
  int hwnd,
  POINT pt,
  int flags,
) =>
    _ChildWindowFromPointEx(
      hwnd,
      pt,
      flags,
    );

late final _ChildWindowFromPointEx = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hwnd,
  POINT pt,
  Uint32 flags,
),
    int Function(
  int hwnd,
  POINT pt,
  int flags,
)>('ChildWindowFromPointEx');

int ClipCursor(
  Pointer<RECT> lpRect,
) =>
    _ClipCursor(
      lpRect,
    );

late final _ClipCursor = _user32.lookupFunction<
    Int32 Function(
  Pointer<RECT> lpRect,
),
    int Function(
  Pointer<RECT> lpRect,
)>('ClipCursor');

int CloseWindow(
  int hWnd,
) =>
    _CloseWindow(
      hWnd,
    );

late final _CloseWindow = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('CloseWindow');

int CopyAcceleratorTable(
  int hAccelSrc,
  Pointer<ACCEL> lpAccelDst,
  int cAccelEntries,
) =>
    _CopyAcceleratorTable(
      hAccelSrc,
      lpAccelDst,
      cAccelEntries,
    );

late final _CopyAcceleratorTable = _user32.lookupFunction<
    Int32 Function(
  IntPtr hAccelSrc,
  Pointer<ACCEL> lpAccelDst,
  Int32 cAccelEntries,
),
    int Function(
  int hAccelSrc,
  Pointer<ACCEL> lpAccelDst,
  int cAccelEntries,
)>('CopyAcceleratorTableW');

int CopyIcon(
  int hIcon,
) =>
    _CopyIcon(
      hIcon,
    );

late final _CopyIcon = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hIcon,
),
    int Function(
  int hIcon,
)>('CopyIcon');

int CopyImage(
  int h,
  int type,
  int cx,
  int cy,
  int flags,
) =>
    _CopyImage(
      h,
      type,
      cx,
      cy,
      flags,
    );

late final _CopyImage = _user32.lookupFunction<
    IntPtr Function(
  IntPtr h,
  Uint32 type,
  Int32 cx,
  Int32 cy,
  Uint32 flags,
),
    int Function(
  int h,
  int type,
  int cx,
  int cy,
  int flags,
)>('CopyImage');

int CreateAcceleratorTable(
  Pointer<ACCEL> paccel,
  int cAccel,
) =>
    _CreateAcceleratorTable(
      paccel,
      cAccel,
    );

late final _CreateAcceleratorTable = _user32.lookupFunction<
    IntPtr Function(
  Pointer<ACCEL> paccel,
  Int32 cAccel,
),
    int Function(
  Pointer<ACCEL> paccel,
  int cAccel,
)>('CreateAcceleratorTableW');

int CreateCaret(
  int hWnd,
  int hBitmap,
  int nWidth,
  int nHeight,
) =>
    _CreateCaret(
      hWnd,
      hBitmap,
      nWidth,
      nHeight,
    );

late final _CreateCaret = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  IntPtr hBitmap,
  Int32 nWidth,
  Int32 nHeight,
),
    int Function(
  int hWnd,
  int hBitmap,
  int nWidth,
  int nHeight,
)>('CreateCaret');

int CreateCursor(
  int hInst,
  int xHotSpot,
  int yHotSpot,
  int nWidth,
  int nHeight,
  Pointer pvANDPlane,
  Pointer pvXORPlane,
) =>
    _CreateCursor(
      hInst,
      xHotSpot,
      yHotSpot,
      nWidth,
      nHeight,
      pvANDPlane,
      pvXORPlane,
    );

late final _CreateCursor = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hInst,
  Int32 xHotSpot,
  Int32 yHotSpot,
  Int32 nWidth,
  Int32 nHeight,
  Pointer pvANDPlane,
  Pointer pvXORPlane,
),
    int Function(
  int hInst,
  int xHotSpot,
  int yHotSpot,
  int nWidth,
  int nHeight,
  Pointer pvANDPlane,
  Pointer pvXORPlane,
)>('CreateCursor');

int CreateDialogIndirectParam(
  int hInstance,
  Pointer<DLGTEMPLATE> lpTemplate,
  int hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  int dwInitParam,
) =>
    _CreateDialogIndirectParam(
      hInstance,
      lpTemplate,
      hWndParent,
      lpDialogFunc,
      dwInitParam,
    );

late final _CreateDialogIndirectParam = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hInstance,
  Pointer<DLGTEMPLATE> lpTemplate,
  IntPtr hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  IntPtr dwInitParam,
),
    int Function(
  int hInstance,
  Pointer<DLGTEMPLATE> lpTemplate,
  int hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  int dwInitParam,
)>('CreateDialogIndirectParamW');

int CreateDialogParam(
  int hInstance,
  Pointer<Utf16> lpTemplateName,
  int hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  int dwInitParam,
) =>
    _CreateDialogParam(
      hInstance,
      lpTemplateName,
      hWndParent,
      lpDialogFunc,
      dwInitParam,
    );

late final _CreateDialogParam = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hInstance,
  Pointer<Utf16> lpTemplateName,
  IntPtr hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  IntPtr dwInitParam,
),
    int Function(
  int hInstance,
  Pointer<Utf16> lpTemplateName,
  int hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  int dwInitParam,
)>('CreateDialogParamW');

int CreateIcon(
  int hInstance,
  int nWidth,
  int nHeight,
  int cPlanes,
  int cBitsPixel,
  Pointer<Uint8> lpbANDbits,
  Pointer<Uint8> lpbXORbits,
) =>
    _CreateIcon(
      hInstance,
      nWidth,
      nHeight,
      cPlanes,
      cBitsPixel,
      lpbANDbits,
      lpbXORbits,
    );

late final _CreateIcon = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hInstance,
  Int32 nWidth,
  Int32 nHeight,
  Uint8 cPlanes,
  Uint8 cBitsPixel,
  Pointer<Uint8> lpbANDbits,
  Pointer<Uint8> lpbXORbits,
),
    int Function(
  int hInstance,
  int nWidth,
  int nHeight,
  int cPlanes,
  int cBitsPixel,
  Pointer<Uint8> lpbANDbits,
  Pointer<Uint8> lpbXORbits,
)>('CreateIcon');

int CreateIconFromResource(
  Pointer<Uint8> presbits,
  int dwResSize,
  int fIcon,
  int dwVer,
) =>
    _CreateIconFromResource(
      presbits,
      dwResSize,
      fIcon,
      dwVer,
    );

late final _CreateIconFromResource = _user32.lookupFunction<
    IntPtr Function(
  Pointer<Uint8> presbits,
  Uint32 dwResSize,
  Int32 fIcon,
  Uint32 dwVer,
),
    int Function(
  Pointer<Uint8> presbits,
  int dwResSize,
  int fIcon,
  int dwVer,
)>('CreateIconFromResource');

int CreateIconFromResourceEx(
  Pointer<Uint8> presbits,
  int dwResSize,
  int fIcon,
  int dwVer,
  int cxDesired,
  int cyDesired,
  int Flags,
) =>
    _CreateIconFromResourceEx(
      presbits,
      dwResSize,
      fIcon,
      dwVer,
      cxDesired,
      cyDesired,
      Flags,
    );

late final _CreateIconFromResourceEx = _user32.lookupFunction<
    IntPtr Function(
  Pointer<Uint8> presbits,
  Uint32 dwResSize,
  Int32 fIcon,
  Uint32 dwVer,
  Int32 cxDesired,
  Int32 cyDesired,
  Uint32 Flags,
),
    int Function(
  Pointer<Uint8> presbits,
  int dwResSize,
  int fIcon,
  int dwVer,
  int cxDesired,
  int cyDesired,
  int Flags,
)>('CreateIconFromResourceEx');

int CreateIconIndirect(
  Pointer<ICONINFO> piconinfo,
) =>
    _CreateIconIndirect(
      piconinfo,
    );

late final _CreateIconIndirect = _user32.lookupFunction<
    IntPtr Function(
  Pointer<ICONINFO> piconinfo,
),
    int Function(
  Pointer<ICONINFO> piconinfo,
)>('CreateIconIndirect');

int CreateMDIWindow(
  Pointer<Utf16> lpClassName,
  Pointer<Utf16> lpWindowName,
  int dwStyle,
  int X,
  int Y,
  int nWidth,
  int nHeight,
  int hWndParent,
  int hInstance,
  int lParam,
) =>
    _CreateMDIWindow(
      lpClassName,
      lpWindowName,
      dwStyle,
      X,
      Y,
      nWidth,
      nHeight,
      hWndParent,
      hInstance,
      lParam,
    );

late final _CreateMDIWindow = _user32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpClassName,
  Pointer<Utf16> lpWindowName,
  Uint32 dwStyle,
  Int32 X,
  Int32 Y,
  Int32 nWidth,
  Int32 nHeight,
  IntPtr hWndParent,
  IntPtr hInstance,
  IntPtr lParam,
),
    int Function(
  Pointer<Utf16> lpClassName,
  Pointer<Utf16> lpWindowName,
  int dwStyle,
  int X,
  int Y,
  int nWidth,
  int nHeight,
  int hWndParent,
  int hInstance,
  int lParam,
)>('CreateMDIWindowW');

int CreateMenu() => _CreateMenu();

late final _CreateMenu =
    _user32.lookupFunction<IntPtr Function(), int Function()>('CreateMenu');

int CreatePopupMenu() => _CreatePopupMenu();

late final _CreatePopupMenu = _user32
    .lookupFunction<IntPtr Function(), int Function()>('CreatePopupMenu');

int CreateWindowEx(
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
  Pointer lpParam,
) =>
    _CreateWindowEx(
      dwExStyle,
      lpClassName,
      lpWindowName,
      dwStyle,
      X,
      Y,
      nWidth,
      nHeight,
      hWndParent,
      hMenu,
      hInstance,
      lpParam,
    );

late final _CreateWindowEx = _user32.lookupFunction<
    IntPtr Function(
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
  Pointer lpParam,
),
    int Function(
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
  Pointer lpParam,
)>('CreateWindowExW');

int DefDlgProc(
  int hDlg,
  int Msg,
  int wParam,
  int lParam,
) =>
    _DefDlgProc(
      hDlg,
      Msg,
      wParam,
      lParam,
    );

late final _DefDlgProc = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hDlg,
  Uint32 Msg,
  IntPtr wParam,
  IntPtr lParam,
),
    int Function(
  int hDlg,
  int Msg,
  int wParam,
  int lParam,
)>('DefDlgProcW');

int DefFrameProc(
  int hWnd,
  int hWndMDIClient,
  int uMsg,
  int wParam,
  int lParam,
) =>
    _DefFrameProc(
      hWnd,
      hWndMDIClient,
      uMsg,
      wParam,
      lParam,
    );

late final _DefFrameProc = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  IntPtr hWndMDIClient,
  Uint32 uMsg,
  IntPtr wParam,
  IntPtr lParam,
),
    int Function(
  int hWnd,
  int hWndMDIClient,
  int uMsg,
  int wParam,
  int lParam,
)>('DefFrameProcW');

int DefMDIChildProc(
  int hWnd,
  int uMsg,
  int wParam,
  int lParam,
) =>
    _DefMDIChildProc(
      hWnd,
      uMsg,
      wParam,
      lParam,
    );

late final _DefMDIChildProc = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Uint32 uMsg,
  IntPtr wParam,
  IntPtr lParam,
),
    int Function(
  int hWnd,
  int uMsg,
  int wParam,
  int lParam,
)>('DefMDIChildProcW');

int DefWindowProc(
  int hWnd,
  int Msg,
  int wParam,
  int lParam,
) =>
    _DefWindowProc(
      hWnd,
      Msg,
      wParam,
      lParam,
    );

late final _DefWindowProc = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Uint32 Msg,
  IntPtr wParam,
  IntPtr lParam,
),
    int Function(
  int hWnd,
  int Msg,
  int wParam,
  int lParam,
)>('DefWindowProcW');

int DeferWindowPos(
  int hWinPosInfo,
  int hWnd,
  int hWndInsertAfter,
  int x,
  int y,
  int cx,
  int cy,
  int uFlags,
) =>
    _DeferWindowPos(
      hWinPosInfo,
      hWnd,
      hWndInsertAfter,
      x,
      y,
      cx,
      cy,
      uFlags,
    );

late final _DeferWindowPos = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWinPosInfo,
  IntPtr hWnd,
  IntPtr hWndInsertAfter,
  Int32 x,
  Int32 y,
  Int32 cx,
  Int32 cy,
  Uint32 uFlags,
),
    int Function(
  int hWinPosInfo,
  int hWnd,
  int hWndInsertAfter,
  int x,
  int y,
  int cx,
  int cy,
  int uFlags,
)>('DeferWindowPos');

int DeleteMenu(
  int hMenu,
  int uPosition,
  int uFlags,
) =>
    _DeleteMenu(
      hMenu,
      uPosition,
      uFlags,
    );

late final _DeleteMenu = _user32.lookupFunction<
    Int32 Function(
  IntPtr hMenu,
  Uint32 uPosition,
  Uint32 uFlags,
),
    int Function(
  int hMenu,
  int uPosition,
  int uFlags,
)>('DeleteMenu');

int DeregisterShellHookWindow(
  int hwnd,
) =>
    _DeregisterShellHookWindow(
      hwnd,
    );

late final _DeregisterShellHookWindow = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('DeregisterShellHookWindow');

int DestroyAcceleratorTable(
  int hAccel,
) =>
    _DestroyAcceleratorTable(
      hAccel,
    );

late final _DestroyAcceleratorTable = _user32.lookupFunction<
    Int32 Function(
  IntPtr hAccel,
),
    int Function(
  int hAccel,
)>('DestroyAcceleratorTable');

int DestroyCaret() => _DestroyCaret();

late final _DestroyCaret =
    _user32.lookupFunction<Int32 Function(), int Function()>('DestroyCaret');

int DestroyCursor(
  int hCursor,
) =>
    _DestroyCursor(
      hCursor,
    );

late final _DestroyCursor = _user32.lookupFunction<
    Int32 Function(
  IntPtr hCursor,
),
    int Function(
  int hCursor,
)>('DestroyCursor');

int DestroyIcon(
  int hIcon,
) =>
    _DestroyIcon(
      hIcon,
    );

late final _DestroyIcon = _user32.lookupFunction<
    Int32 Function(
  IntPtr hIcon,
),
    int Function(
  int hIcon,
)>('DestroyIcon');

int DestroyMenu(
  int hMenu,
) =>
    _DestroyMenu(
      hMenu,
    );

late final _DestroyMenu = _user32.lookupFunction<
    Int32 Function(
  IntPtr hMenu,
),
    int Function(
  int hMenu,
)>('DestroyMenu');

int DestroyWindow(
  int hWnd,
) =>
    _DestroyWindow(
      hWnd,
    );

late final _DestroyWindow = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('DestroyWindow');

int DialogBoxIndirectParam(
  int hInstance,
  Pointer<DLGTEMPLATE> hDialogTemplate,
  int hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  int dwInitParam,
) =>
    _DialogBoxIndirectParam(
      hInstance,
      hDialogTemplate,
      hWndParent,
      lpDialogFunc,
      dwInitParam,
    );

late final _DialogBoxIndirectParam = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hInstance,
  Pointer<DLGTEMPLATE> hDialogTemplate,
  IntPtr hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  IntPtr dwInitParam,
),
    int Function(
  int hInstance,
  Pointer<DLGTEMPLATE> hDialogTemplate,
  int hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  int dwInitParam,
)>('DialogBoxIndirectParamW');

int DialogBoxParam(
  int hInstance,
  Pointer<Utf16> lpTemplateName,
  int hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  int dwInitParam,
) =>
    _DialogBoxParam(
      hInstance,
      lpTemplateName,
      hWndParent,
      lpDialogFunc,
      dwInitParam,
    );

late final _DialogBoxParam = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hInstance,
  Pointer<Utf16> lpTemplateName,
  IntPtr hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  IntPtr dwInitParam,
),
    int Function(
  int hInstance,
  Pointer<Utf16> lpTemplateName,
  int hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  int dwInitParam,
)>('DialogBoxParamW');

void DisableProcessWindowsGhosting() => _DisableProcessWindowsGhosting();

late final _DisableProcessWindowsGhosting =
    _user32.lookupFunction<Void Function(), void Function()>(
        'DisableProcessWindowsGhosting');

int DispatchMessage(
  Pointer<MSG> lpMsg,
) =>
    _DispatchMessage(
      lpMsg,
    );

late final _DispatchMessage = _user32.lookupFunction<
    IntPtr Function(
  Pointer<MSG> lpMsg,
),
    int Function(
  Pointer<MSG> lpMsg,
)>('DispatchMessageW');

int DragObject(
  int hwndParent,
  int hwndFrom,
  int fmt,
  int data,
  int hcur,
) =>
    _DragObject(
      hwndParent,
      hwndFrom,
      fmt,
      data,
      hcur,
    );

late final _DragObject = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hwndParent,
  IntPtr hwndFrom,
  Uint32 fmt,
  IntPtr data,
  IntPtr hcur,
),
    int Function(
  int hwndParent,
  int hwndFrom,
  int fmt,
  int data,
  int hcur,
)>('DragObject');

int DrawIcon(
  int hDC,
  int X,
  int Y,
  int hIcon,
) =>
    _DrawIcon(
      hDC,
      X,
      Y,
      hIcon,
    );

late final _DrawIcon = _user32.lookupFunction<
    Int32 Function(
  IntPtr hDC,
  Int32 X,
  Int32 Y,
  IntPtr hIcon,
),
    int Function(
  int hDC,
  int X,
  int Y,
  int hIcon,
)>('DrawIcon');

int DrawIconEx(
  int hdc,
  int xLeft,
  int yTop,
  int hIcon,
  int cxWidth,
  int cyWidth,
  int istepIfAniCur,
  int hbrFlickerFreeDraw,
  int diFlags,
) =>
    _DrawIconEx(
      hdc,
      xLeft,
      yTop,
      hIcon,
      cxWidth,
      cyWidth,
      istepIfAniCur,
      hbrFlickerFreeDraw,
      diFlags,
    );

late final _DrawIconEx = _user32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Int32 xLeft,
  Int32 yTop,
  IntPtr hIcon,
  Int32 cxWidth,
  Int32 cyWidth,
  Uint32 istepIfAniCur,
  IntPtr hbrFlickerFreeDraw,
  Uint32 diFlags,
),
    int Function(
  int hdc,
  int xLeft,
  int yTop,
  int hIcon,
  int cxWidth,
  int cyWidth,
  int istepIfAniCur,
  int hbrFlickerFreeDraw,
  int diFlags,
)>('DrawIconEx');

int DrawMenuBar(
  int hWnd,
) =>
    _DrawMenuBar(
      hWnd,
    );

late final _DrawMenuBar = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('DrawMenuBar');

int EnableMenuItem(
  int hMenu,
  int uIDEnableItem,
  int uEnable,
) =>
    _EnableMenuItem(
      hMenu,
      uIDEnableItem,
      uEnable,
    );

late final _EnableMenuItem = _user32.lookupFunction<
    Int32 Function(
  IntPtr hMenu,
  Uint32 uIDEnableItem,
  Uint32 uEnable,
),
    int Function(
  int hMenu,
  int uIDEnableItem,
  int uEnable,
)>('EnableMenuItem');

int EndDeferWindowPos(
  int hWinPosInfo,
) =>
    _EndDeferWindowPos(
      hWinPosInfo,
    );

late final _EndDeferWindowPos = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWinPosInfo,
),
    int Function(
  int hWinPosInfo,
)>('EndDeferWindowPos');

int EndDialog(
  int hDlg,
  int nResult,
) =>
    _EndDialog(
      hDlg,
      nResult,
    );

late final _EndDialog = _user32.lookupFunction<
    Int32 Function(
  IntPtr hDlg,
  IntPtr nResult,
),
    int Function(
  int hDlg,
  int nResult,
)>('EndDialog');

int EndMenu() => _EndMenu();

late final _EndMenu =
    _user32.lookupFunction<Int32 Function(), int Function()>('EndMenu');

int EnumChildWindows(
  int hWndParent,
  Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc,
  int lParam,
) =>
    _EnumChildWindows(
      hWndParent,
      lpEnumFunc,
      lParam,
    );

late final _EnumChildWindows = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWndParent,
  Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc,
  IntPtr lParam,
),
    int Function(
  int hWndParent,
  Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc,
  int lParam,
)>('EnumChildWindows');

int EnumPropsEx(
  int hWnd,
  Pointer<NativeFunction<PROPENUMPROCEXW>> lpEnumFunc,
  int lParam,
) =>
    _EnumPropsEx(
      hWnd,
      lpEnumFunc,
      lParam,
    );

late final _EnumPropsEx = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<NativeFunction<PROPENUMPROCEXW>> lpEnumFunc,
  IntPtr lParam,
),
    int Function(
  int hWnd,
  Pointer<NativeFunction<PROPENUMPROCEXW>> lpEnumFunc,
  int lParam,
)>('EnumPropsExW');

int EnumProps(
  int hWnd,
  Pointer<NativeFunction<PROPENUMPROCW>> lpEnumFunc,
) =>
    _EnumProps(
      hWnd,
      lpEnumFunc,
    );

late final _EnumProps = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<NativeFunction<PROPENUMPROCW>> lpEnumFunc,
),
    int Function(
  int hWnd,
  Pointer<NativeFunction<PROPENUMPROCW>> lpEnumFunc,
)>('EnumPropsW');

int EnumThreadWindows(
  int dwThreadId,
  Pointer<NativeFunction<WNDENUMPROC>> lpfn,
  int lParam,
) =>
    _EnumThreadWindows(
      dwThreadId,
      lpfn,
      lParam,
    );

late final _EnumThreadWindows = _user32.lookupFunction<
    Int32 Function(
  Uint32 dwThreadId,
  Pointer<NativeFunction<WNDENUMPROC>> lpfn,
  IntPtr lParam,
),
    int Function(
  int dwThreadId,
  Pointer<NativeFunction<WNDENUMPROC>> lpfn,
  int lParam,
)>('EnumThreadWindows');

int EnumWindows(
  Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc,
  int lParam,
) =>
    _EnumWindows(
      lpEnumFunc,
      lParam,
    );

late final _EnumWindows = _user32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc,
  IntPtr lParam,
),
    int Function(
  Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc,
  int lParam,
)>('EnumWindows');

int FindWindowEx(
  int hWndParent,
  int hWndChildAfter,
  Pointer<Utf16> lpszClass,
  Pointer<Utf16> lpszWindow,
) =>
    _FindWindowEx(
      hWndParent,
      hWndChildAfter,
      lpszClass,
      lpszWindow,
    );

late final _FindWindowEx = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWndParent,
  IntPtr hWndChildAfter,
  Pointer<Utf16> lpszClass,
  Pointer<Utf16> lpszWindow,
),
    int Function(
  int hWndParent,
  int hWndChildAfter,
  Pointer<Utf16> lpszClass,
  Pointer<Utf16> lpszWindow,
)>('FindWindowExW');

int FindWindow(
  Pointer<Utf16> lpClassName,
  Pointer<Utf16> lpWindowName,
) =>
    _FindWindow(
      lpClassName,
      lpWindowName,
    );

late final _FindWindow = _user32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpClassName,
  Pointer<Utf16> lpWindowName,
),
    int Function(
  Pointer<Utf16> lpClassName,
  Pointer<Utf16> lpWindowName,
)>('FindWindowW');

int FlashWindow(
  int hWnd,
  int bInvert,
) =>
    _FlashWindow(
      hWnd,
      bInvert,
    );

late final _FlashWindow = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Int32 bInvert,
),
    int Function(
  int hWnd,
  int bInvert,
)>('FlashWindow');

int FlashWindowEx(
  Pointer<FLASHWINFO> pfwi,
) =>
    _FlashWindowEx(
      pfwi,
    );

late final _FlashWindowEx = _user32.lookupFunction<
    Int32 Function(
  Pointer<FLASHWINFO> pfwi,
),
    int Function(
  Pointer<FLASHWINFO> pfwi,
)>('FlashWindowEx');

int GetAltTabInfo(
  int hwnd,
  int iItem,
  Pointer<ALTTABINFO> pati,
  Pointer<Utf16> pszItemText,
  int cchItemText,
) =>
    _GetAltTabInfo(
      hwnd,
      iItem,
      pati,
      pszItemText,
      cchItemText,
    );

late final _GetAltTabInfo = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 iItem,
  Pointer<ALTTABINFO> pati,
  Pointer<Utf16> pszItemText,
  Uint32 cchItemText,
),
    int Function(
  int hwnd,
  int iItem,
  Pointer<ALTTABINFO> pati,
  Pointer<Utf16> pszItemText,
  int cchItemText,
)>('GetAltTabInfoW');

int GetAncestor(
  int hwnd,
  int gaFlags,
) =>
    _GetAncestor(
      hwnd,
      gaFlags,
    );

late final _GetAncestor = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hwnd,
  Uint32 gaFlags,
),
    int Function(
  int hwnd,
  int gaFlags,
)>('GetAncestor');

int GetCaretBlinkTime() => _GetCaretBlinkTime();

late final _GetCaretBlinkTime = _user32
    .lookupFunction<Uint32 Function(), int Function()>('GetCaretBlinkTime');

int GetCaretPos(
  Pointer<POINT> lpPoint,
) =>
    _GetCaretPos(
      lpPoint,
    );

late final _GetCaretPos = _user32.lookupFunction<
    Int32 Function(
  Pointer<POINT> lpPoint,
),
    int Function(
  Pointer<POINT> lpPoint,
)>('GetCaretPos');

int GetClassInfoEx(
  int hInstance,
  Pointer<Utf16> lpszClass,
  Pointer<WNDCLASSEX> lpwcx,
) =>
    _GetClassInfoEx(
      hInstance,
      lpszClass,
      lpwcx,
    );

late final _GetClassInfoEx = _user32.lookupFunction<
    Int32 Function(
  IntPtr hInstance,
  Pointer<Utf16> lpszClass,
  Pointer<WNDCLASSEX> lpwcx,
),
    int Function(
  int hInstance,
  Pointer<Utf16> lpszClass,
  Pointer<WNDCLASSEX> lpwcx,
)>('GetClassInfoExW');

int GetClassInfo(
  int hInstance,
  Pointer<Utf16> lpClassName,
  Pointer<WNDCLASS> lpWndClass,
) =>
    _GetClassInfo(
      hInstance,
      lpClassName,
      lpWndClass,
    );

late final _GetClassInfo = _user32.lookupFunction<
    Int32 Function(
  IntPtr hInstance,
  Pointer<Utf16> lpClassName,
  Pointer<WNDCLASS> lpWndClass,
),
    int Function(
  int hInstance,
  Pointer<Utf16> lpClassName,
  Pointer<WNDCLASS> lpWndClass,
)>('GetClassInfoW');

int GetClassLongPtr(
  int hWnd,
  int nIndex,
) =>
    _GetClassLongPtr(
      hWnd,
      nIndex,
    );

late final _GetClassLongPtr = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Int32 nIndex,
),
    int Function(
  int hWnd,
  int nIndex,
)>('GetClassLongPtrW');

int GetClassLong(
  int hWnd,
  int nIndex,
) =>
    _GetClassLong(
      hWnd,
      nIndex,
    );

late final _GetClassLong = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hWnd,
  Int32 nIndex,
),
    int Function(
  int hWnd,
  int nIndex,
)>('GetClassLongW');

int GetClassName(
  int hWnd,
  Pointer<Utf16> lpClassName,
  int nMaxCount,
) =>
    _GetClassName(
      hWnd,
      lpClassName,
      nMaxCount,
    );

late final _GetClassName = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> lpClassName,
  Int32 nMaxCount,
),
    int Function(
  int hWnd,
  Pointer<Utf16> lpClassName,
  int nMaxCount,
)>('GetClassNameW');

int GetClassWord(
  int hWnd,
  int nIndex,
) =>
    _GetClassWord(
      hWnd,
      nIndex,
    );

late final _GetClassWord = _user32.lookupFunction<
    Uint16 Function(
  IntPtr hWnd,
  Int32 nIndex,
),
    int Function(
  int hWnd,
  int nIndex,
)>('GetClassWord');

int GetClientRect(
  int hWnd,
  Pointer<RECT> lpRect,
) =>
    _GetClientRect(
      hWnd,
      lpRect,
    );

late final _GetClientRect = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<RECT> lpRect,
),
    int Function(
  int hWnd,
  Pointer<RECT> lpRect,
)>('GetClientRect');

int GetClipCursor(
  Pointer<RECT> lpRect,
) =>
    _GetClipCursor(
      lpRect,
    );

late final _GetClipCursor = _user32.lookupFunction<
    Int32 Function(
  Pointer<RECT> lpRect,
),
    int Function(
  Pointer<RECT> lpRect,
)>('GetClipCursor');

int GetCursor() => _GetCursor();

late final _GetCursor =
    _user32.lookupFunction<IntPtr Function(), int Function()>('GetCursor');

int GetCursorInfo(
  Pointer<CURSORINFO> pci,
) =>
    _GetCursorInfo(
      pci,
    );

late final _GetCursorInfo = _user32.lookupFunction<
    Int32 Function(
  Pointer<CURSORINFO> pci,
),
    int Function(
  Pointer<CURSORINFO> pci,
)>('GetCursorInfo');

int GetCursorPos(
  Pointer<POINT> lpPoint,
) =>
    _GetCursorPos(
      lpPoint,
    );

late final _GetCursorPos = _user32.lookupFunction<
    Int32 Function(
  Pointer<POINT> lpPoint,
),
    int Function(
  Pointer<POINT> lpPoint,
)>('GetCursorPos');

int GetDesktopWindow() => _GetDesktopWindow();

late final _GetDesktopWindow = _user32
    .lookupFunction<IntPtr Function(), int Function()>('GetDesktopWindow');

int GetDialogBaseUnits() => _GetDialogBaseUnits();

late final _GetDialogBaseUnits = _user32
    .lookupFunction<Int32 Function(), int Function()>('GetDialogBaseUnits');

int GetDlgCtrlID(
  int hWnd,
) =>
    _GetDlgCtrlID(
      hWnd,
    );

late final _GetDlgCtrlID = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('GetDlgCtrlID');

int GetDlgItem(
  int hDlg,
  int nIDDlgItem,
) =>
    _GetDlgItem(
      hDlg,
      nIDDlgItem,
    );

late final _GetDlgItem = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hDlg,
  Int32 nIDDlgItem,
),
    int Function(
  int hDlg,
  int nIDDlgItem,
)>('GetDlgItem');

int GetDlgItemInt(
  int hDlg,
  int nIDDlgItem,
  Pointer<Int32> lpTranslated,
  int bSigned,
) =>
    _GetDlgItemInt(
      hDlg,
      nIDDlgItem,
      lpTranslated,
      bSigned,
    );

late final _GetDlgItemInt = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hDlg,
  Int32 nIDDlgItem,
  Pointer<Int32> lpTranslated,
  Int32 bSigned,
),
    int Function(
  int hDlg,
  int nIDDlgItem,
  Pointer<Int32> lpTranslated,
  int bSigned,
)>('GetDlgItemInt');

int GetDlgItemText(
  int hDlg,
  int nIDDlgItem,
  Pointer<Utf16> lpString,
  int cchMax,
) =>
    _GetDlgItemText(
      hDlg,
      nIDDlgItem,
      lpString,
      cchMax,
    );

late final _GetDlgItemText = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hDlg,
  Int32 nIDDlgItem,
  Pointer<Utf16> lpString,
  Int32 cchMax,
),
    int Function(
  int hDlg,
  int nIDDlgItem,
  Pointer<Utf16> lpString,
  int cchMax,
)>('GetDlgItemTextW');

int GetForegroundWindow() => _GetForegroundWindow();

late final _GetForegroundWindow = _user32
    .lookupFunction<IntPtr Function(), int Function()>('GetForegroundWindow');

int GetGUIThreadInfo(
  int idThread,
  Pointer<GUITHREADINFO> pgui,
) =>
    _GetGUIThreadInfo(
      idThread,
      pgui,
    );

late final _GetGUIThreadInfo = _user32.lookupFunction<
    Int32 Function(
  Uint32 idThread,
  Pointer<GUITHREADINFO> pgui,
),
    int Function(
  int idThread,
  Pointer<GUITHREADINFO> pgui,
)>('GetGUIThreadInfo');

int GetIconInfo(
  int hIcon,
  Pointer<ICONINFO> piconinfo,
) =>
    _GetIconInfo(
      hIcon,
      piconinfo,
    );

late final _GetIconInfo = _user32.lookupFunction<
    Int32 Function(
  IntPtr hIcon,
  Pointer<ICONINFO> piconinfo,
),
    int Function(
  int hIcon,
  Pointer<ICONINFO> piconinfo,
)>('GetIconInfo');

int GetIconInfoEx(
  int hicon,
  Pointer<ICONINFOEX> piconinfo,
) =>
    _GetIconInfoEx(
      hicon,
      piconinfo,
    );

late final _GetIconInfoEx = _user32.lookupFunction<
    Int32 Function(
  IntPtr hicon,
  Pointer<ICONINFOEX> piconinfo,
),
    int Function(
  int hicon,
  Pointer<ICONINFOEX> piconinfo,
)>('GetIconInfoExW');

int GetInputState() => _GetInputState();

late final _GetInputState =
    _user32.lookupFunction<Int32 Function(), int Function()>('GetInputState');

int GetLastActivePopup(
  int hWnd,
) =>
    _GetLastActivePopup(
      hWnd,
    );

late final _GetLastActivePopup = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('GetLastActivePopup');

int GetLayeredWindowAttributes(
  int hwnd,
  Pointer<Uint32> pcrKey,
  Pointer<Uint8> pbAlpha,
  Pointer<Uint32> pdwFlags,
) =>
    _GetLayeredWindowAttributes(
      hwnd,
      pcrKey,
      pbAlpha,
      pdwFlags,
    );

late final _GetLayeredWindowAttributes = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Uint32> pcrKey,
  Pointer<Uint8> pbAlpha,
  Pointer<Uint32> pdwFlags,
),
    int Function(
  int hwnd,
  Pointer<Uint32> pcrKey,
  Pointer<Uint8> pbAlpha,
  Pointer<Uint32> pdwFlags,
)>('GetLayeredWindowAttributes');

int GetMenu(
  int hWnd,
) =>
    _GetMenu(
      hWnd,
    );

late final _GetMenu = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('GetMenu');

int GetMenuBarInfo(
  int hwnd,
  int idObject,
  int idItem,
  Pointer<MENUBARINFO> pmbi,
) =>
    _GetMenuBarInfo(
      hwnd,
      idObject,
      idItem,
      pmbi,
    );

late final _GetMenuBarInfo = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 idObject,
  Int32 idItem,
  Pointer<MENUBARINFO> pmbi,
),
    int Function(
  int hwnd,
  int idObject,
  int idItem,
  Pointer<MENUBARINFO> pmbi,
)>('GetMenuBarInfo');

int GetMenuCheckMarkDimensions() => _GetMenuCheckMarkDimensions();

late final _GetMenuCheckMarkDimensions =
    _user32.lookupFunction<Int32 Function(), int Function()>(
        'GetMenuCheckMarkDimensions');

int GetMenuDefaultItem(
  int hMenu,
  int fByPos,
  int gmdiFlags,
) =>
    _GetMenuDefaultItem(
      hMenu,
      fByPos,
      gmdiFlags,
    );

late final _GetMenuDefaultItem = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hMenu,
  Uint32 fByPos,
  Uint32 gmdiFlags,
),
    int Function(
  int hMenu,
  int fByPos,
  int gmdiFlags,
)>('GetMenuDefaultItem');

int GetMenuInfo(
  int param0,
  Pointer<MENUINFO> param1,
) =>
    _GetMenuInfo(
      param0,
      param1,
    );

late final _GetMenuInfo = _user32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Pointer<MENUINFO> param1,
),
    int Function(
  int param0,
  Pointer<MENUINFO> param1,
)>('GetMenuInfo');

int GetMenuItemCount(
  int hMenu,
) =>
    _GetMenuItemCount(
      hMenu,
    );

late final _GetMenuItemCount = _user32.lookupFunction<
    Int32 Function(
  IntPtr hMenu,
),
    int Function(
  int hMenu,
)>('GetMenuItemCount');

int GetMenuItemID(
  int hMenu,
  int nPos,
) =>
    _GetMenuItemID(
      hMenu,
      nPos,
    );

late final _GetMenuItemID = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hMenu,
  Int32 nPos,
),
    int Function(
  int hMenu,
  int nPos,
)>('GetMenuItemID');

int GetMenuItemInfo(
  int hmenu,
  int item,
  int fByPosition,
  Pointer<MENUITEMINFO> lpmii,
) =>
    _GetMenuItemInfo(
      hmenu,
      item,
      fByPosition,
      lpmii,
    );

late final _GetMenuItemInfo = _user32.lookupFunction<
    Int32 Function(
  IntPtr hmenu,
  Uint32 item,
  Int32 fByPosition,
  Pointer<MENUITEMINFO> lpmii,
),
    int Function(
  int hmenu,
  int item,
  int fByPosition,
  Pointer<MENUITEMINFO> lpmii,
)>('GetMenuItemInfoW');

int GetMenuItemRect(
  int hWnd,
  int hMenu,
  int uItem,
  Pointer<RECT> lprcItem,
) =>
    _GetMenuItemRect(
      hWnd,
      hMenu,
      uItem,
      lprcItem,
    );

late final _GetMenuItemRect = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  IntPtr hMenu,
  Uint32 uItem,
  Pointer<RECT> lprcItem,
),
    int Function(
  int hWnd,
  int hMenu,
  int uItem,
  Pointer<RECT> lprcItem,
)>('GetMenuItemRect');

int GetMenuState(
  int hMenu,
  int uId,
  int uFlags,
) =>
    _GetMenuState(
      hMenu,
      uId,
      uFlags,
    );

late final _GetMenuState = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hMenu,
  Uint32 uId,
  Uint32 uFlags,
),
    int Function(
  int hMenu,
  int uId,
  int uFlags,
)>('GetMenuState');

int GetMenuString(
  int hMenu,
  int uIDItem,
  Pointer<Utf16> lpString,
  int cchMax,
  int flags,
) =>
    _GetMenuString(
      hMenu,
      uIDItem,
      lpString,
      cchMax,
      flags,
    );

late final _GetMenuString = _user32.lookupFunction<
    Int32 Function(
  IntPtr hMenu,
  Uint32 uIDItem,
  Pointer<Utf16> lpString,
  Int32 cchMax,
  Uint32 flags,
),
    int Function(
  int hMenu,
  int uIDItem,
  Pointer<Utf16> lpString,
  int cchMax,
  int flags,
)>('GetMenuStringW');

int GetMessageExtraInfo() => _GetMessageExtraInfo();

late final _GetMessageExtraInfo = _user32
    .lookupFunction<IntPtr Function(), int Function()>('GetMessageExtraInfo');

int GetMessagePos() => _GetMessagePos();

late final _GetMessagePos =
    _user32.lookupFunction<Uint32 Function(), int Function()>('GetMessagePos');

int GetMessageTime() => _GetMessageTime();

late final _GetMessageTime =
    _user32.lookupFunction<Int32 Function(), int Function()>('GetMessageTime');

int GetMessage(
  Pointer<MSG> lpMsg,
  int hWnd,
  int wMsgFilterMin,
  int wMsgFilterMax,
) =>
    _GetMessage(
      lpMsg,
      hWnd,
      wMsgFilterMin,
      wMsgFilterMax,
    );

late final _GetMessage = _user32.lookupFunction<
    Int32 Function(
  Pointer<MSG> lpMsg,
  IntPtr hWnd,
  Uint32 wMsgFilterMin,
  Uint32 wMsgFilterMax,
),
    int Function(
  Pointer<MSG> lpMsg,
  int hWnd,
  int wMsgFilterMin,
  int wMsgFilterMax,
)>('GetMessageW');

int GetNextDlgGroupItem(
  int hDlg,
  int hCtl,
  int bPrevious,
) =>
    _GetNextDlgGroupItem(
      hDlg,
      hCtl,
      bPrevious,
    );

late final _GetNextDlgGroupItem = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hDlg,
  IntPtr hCtl,
  Int32 bPrevious,
),
    int Function(
  int hDlg,
  int hCtl,
  int bPrevious,
)>('GetNextDlgGroupItem');

int GetNextDlgTabItem(
  int hDlg,
  int hCtl,
  int bPrevious,
) =>
    _GetNextDlgTabItem(
      hDlg,
      hCtl,
      bPrevious,
    );

late final _GetNextDlgTabItem = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hDlg,
  IntPtr hCtl,
  Int32 bPrevious,
),
    int Function(
  int hDlg,
  int hCtl,
  int bPrevious,
)>('GetNextDlgTabItem');

int GetParent(
  int hWnd,
) =>
    _GetParent(
      hWnd,
    );

late final _GetParent = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('GetParent');

int GetPhysicalCursorPos(
  Pointer<POINT> lpPoint,
) =>
    _GetPhysicalCursorPos(
      lpPoint,
    );

late final _GetPhysicalCursorPos = _user32.lookupFunction<
    Int32 Function(
  Pointer<POINT> lpPoint,
),
    int Function(
  Pointer<POINT> lpPoint,
)>('GetPhysicalCursorPos');

int GetProcessDefaultLayout(
  Pointer<Uint32> pdwDefaultLayout,
) =>
    _GetProcessDefaultLayout(
      pdwDefaultLayout,
    );

late final _GetProcessDefaultLayout = _user32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pdwDefaultLayout,
),
    int Function(
  Pointer<Uint32> pdwDefaultLayout,
)>('GetProcessDefaultLayout');

int GetProp(
  int hWnd,
  Pointer<Utf16> lpString,
) =>
    _GetProp(
      hWnd,
      lpString,
    );

late final _GetProp = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Pointer<Utf16> lpString,
),
    int Function(
  int hWnd,
  Pointer<Utf16> lpString,
)>('GetPropW');

int GetQueueStatus(
  int flags,
) =>
    _GetQueueStatus(
      flags,
    );

late final _GetQueueStatus = _user32.lookupFunction<
    Uint32 Function(
  Uint32 flags,
),
    int Function(
  int flags,
)>('GetQueueStatus');

int GetScrollBarInfo(
  int hwnd,
  int idObject,
  Pointer<SCROLLBARINFO> psbi,
) =>
    _GetScrollBarInfo(
      hwnd,
      idObject,
      psbi,
    );

late final _GetScrollBarInfo = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 idObject,
  Pointer<SCROLLBARINFO> psbi,
),
    int Function(
  int hwnd,
  int idObject,
  Pointer<SCROLLBARINFO> psbi,
)>('GetScrollBarInfo');

int GetScrollInfo(
  int hwnd,
  int nBar,
  Pointer<SCROLLINFO> lpsi,
) =>
    _GetScrollInfo(
      hwnd,
      nBar,
      lpsi,
    );

late final _GetScrollInfo = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Uint32 nBar,
  Pointer<SCROLLINFO> lpsi,
),
    int Function(
  int hwnd,
  int nBar,
  Pointer<SCROLLINFO> lpsi,
)>('GetScrollInfo');

int GetScrollPos(
  int hWnd,
  int nBar,
) =>
    _GetScrollPos(
      hWnd,
      nBar,
    );

late final _GetScrollPos = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Uint32 nBar,
),
    int Function(
  int hWnd,
  int nBar,
)>('GetScrollPos');

int GetScrollRange(
  int hWnd,
  int nBar,
  Pointer<Int32> lpMinPos,
  Pointer<Int32> lpMaxPos,
) =>
    _GetScrollRange(
      hWnd,
      nBar,
      lpMinPos,
      lpMaxPos,
    );

late final _GetScrollRange = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Uint32 nBar,
  Pointer<Int32> lpMinPos,
  Pointer<Int32> lpMaxPos,
),
    int Function(
  int hWnd,
  int nBar,
  Pointer<Int32> lpMinPos,
  Pointer<Int32> lpMaxPos,
)>('GetScrollRange');

int GetShellWindow() => _GetShellWindow();

late final _GetShellWindow =
    _user32.lookupFunction<IntPtr Function(), int Function()>('GetShellWindow');

int GetSubMenu(
  int hMenu,
  int nPos,
) =>
    _GetSubMenu(
      hMenu,
      nPos,
    );

late final _GetSubMenu = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hMenu,
  Int32 nPos,
),
    int Function(
  int hMenu,
  int nPos,
)>('GetSubMenu');

int GetSysColor(
  int nIndex,
) =>
    _GetSysColor(
      nIndex,
    );

late final _GetSysColor = _user32.lookupFunction<
    Uint32 Function(
  Uint32 nIndex,
),
    int Function(
  int nIndex,
)>('GetSysColor');

int GetSystemMenu(
  int hWnd,
  int bRevert,
) =>
    _GetSystemMenu(
      hWnd,
      bRevert,
    );

late final _GetSystemMenu = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Int32 bRevert,
),
    int Function(
  int hWnd,
  int bRevert,
)>('GetSystemMenu');

int GetSystemMetrics(
  int nIndex,
) =>
    _GetSystemMetrics(
      nIndex,
    );

late final _GetSystemMetrics = _user32.lookupFunction<
    Int32 Function(
  Uint32 nIndex,
),
    int Function(
  int nIndex,
)>('GetSystemMetrics');

int GetTitleBarInfo(
  int hwnd,
  Pointer<TITLEBARINFO> pti,
) =>
    _GetTitleBarInfo(
      hwnd,
      pti,
    );

late final _GetTitleBarInfo = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<TITLEBARINFO> pti,
),
    int Function(
  int hwnd,
  Pointer<TITLEBARINFO> pti,
)>('GetTitleBarInfo');

int GetTopWindow(
  int hWnd,
) =>
    _GetTopWindow(
      hWnd,
    );

late final _GetTopWindow = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('GetTopWindow');

int GetWindow(
  int hWnd,
  int uCmd,
) =>
    _GetWindow(
      hWnd,
      uCmd,
    );

late final _GetWindow = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Uint32 uCmd,
),
    int Function(
  int hWnd,
  int uCmd,
)>('GetWindow');

int GetWindowDisplayAffinity(
  int hWnd,
  Pointer<Uint32> pdwAffinity,
) =>
    _GetWindowDisplayAffinity(
      hWnd,
      pdwAffinity,
    );

late final _GetWindowDisplayAffinity = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Uint32> pdwAffinity,
),
    int Function(
  int hWnd,
  Pointer<Uint32> pdwAffinity,
)>('GetWindowDisplayAffinity');

int GetWindowInfo(
  int hwnd,
  Pointer<WINDOWINFO> pwi,
) =>
    _GetWindowInfo(
      hwnd,
      pwi,
    );

late final _GetWindowInfo = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<WINDOWINFO> pwi,
),
    int Function(
  int hwnd,
  Pointer<WINDOWINFO> pwi,
)>('GetWindowInfo');

int GetWindowLongPtr(
  int hWnd,
  int nIndex,
) =>
    _GetWindowLongPtr(
      hWnd,
      nIndex,
    );

late final _GetWindowLongPtr = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Int32 nIndex,
),
    int Function(
  int hWnd,
  int nIndex,
)>('GetWindowLongPtrW');

int GetWindowLong(
  int hWnd,
  int nIndex,
) =>
    _GetWindowLong(
      hWnd,
      nIndex,
    );

late final _GetWindowLong = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Int32 nIndex,
),
    int Function(
  int hWnd,
  int nIndex,
)>('GetWindowLongW');

int GetWindowModuleFileName(
  int hwnd,
  Pointer<Utf16> pszFileName,
  int cchFileNameMax,
) =>
    _GetWindowModuleFileName(
      hwnd,
      pszFileName,
      cchFileNameMax,
    );

late final _GetWindowModuleFileName = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hwnd,
  Pointer<Utf16> pszFileName,
  Uint32 cchFileNameMax,
),
    int Function(
  int hwnd,
  Pointer<Utf16> pszFileName,
  int cchFileNameMax,
)>('GetWindowModuleFileNameW');

int GetWindowPlacement(
  int hWnd,
  Pointer<WINDOWPLACEMENT> lpwndpl,
) =>
    _GetWindowPlacement(
      hWnd,
      lpwndpl,
    );

late final _GetWindowPlacement = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<WINDOWPLACEMENT> lpwndpl,
),
    int Function(
  int hWnd,
  Pointer<WINDOWPLACEMENT> lpwndpl,
)>('GetWindowPlacement');

int GetWindowRect(
  int hWnd,
  Pointer<RECT> lpRect,
) =>
    _GetWindowRect(
      hWnd,
      lpRect,
    );

late final _GetWindowRect = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<RECT> lpRect,
),
    int Function(
  int hWnd,
  Pointer<RECT> lpRect,
)>('GetWindowRect');

int GetWindowTextLength(
  int hWnd,
) =>
    _GetWindowTextLength(
      hWnd,
    );

late final _GetWindowTextLength = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('GetWindowTextLengthW');

int GetWindowText(
  int hWnd,
  Pointer<Utf16> lpString,
  int nMaxCount,
) =>
    _GetWindowText(
      hWnd,
      lpString,
      nMaxCount,
    );

late final _GetWindowText = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> lpString,
  Int32 nMaxCount,
),
    int Function(
  int hWnd,
  Pointer<Utf16> lpString,
  int nMaxCount,
)>('GetWindowTextW');

int GetWindowThreadProcessId(
  int hWnd,
  Pointer<Uint32> lpdwProcessId,
) =>
    _GetWindowThreadProcessId(
      hWnd,
      lpdwProcessId,
    );

late final _GetWindowThreadProcessId = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hWnd,
  Pointer<Uint32> lpdwProcessId,
),
    int Function(
  int hWnd,
  Pointer<Uint32> lpdwProcessId,
)>('GetWindowThreadProcessId');

int GetWindowWord(
  int hWnd,
  int nIndex,
) =>
    _GetWindowWord(
      hWnd,
      nIndex,
    );

late final _GetWindowWord = _user32.lookupFunction<
    Uint16 Function(
  IntPtr hWnd,
  Int32 nIndex,
),
    int Function(
  int hWnd,
  int nIndex,
)>('GetWindowWord');

int HideCaret(
  int hWnd,
) =>
    _HideCaret(
      hWnd,
    );

late final _HideCaret = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('HideCaret');

int HiliteMenuItem(
  int hWnd,
  int hMenu,
  int uIDHiliteItem,
  int uHilite,
) =>
    _HiliteMenuItem(
      hWnd,
      hMenu,
      uIDHiliteItem,
      uHilite,
    );

late final _HiliteMenuItem = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  IntPtr hMenu,
  Uint32 uIDHiliteItem,
  Uint32 uHilite,
),
    int Function(
  int hWnd,
  int hMenu,
  int uIDHiliteItem,
  int uHilite,
)>('HiliteMenuItem');

int InSendMessage() => _InSendMessage();

late final _InSendMessage =
    _user32.lookupFunction<Int32 Function(), int Function()>('InSendMessage');

int InSendMessageEx(
  Pointer lpReserved,
) =>
    _InSendMessageEx(
      lpReserved,
    );

late final _InSendMessageEx = _user32.lookupFunction<
    Uint32 Function(
  Pointer lpReserved,
),
    int Function(
  Pointer lpReserved,
)>('InSendMessageEx');

int InheritWindowMonitor(
  int hwnd,
  int hwndInherit,
) =>
    _InheritWindowMonitor(
      hwnd,
      hwndInherit,
    );

late final _InheritWindowMonitor = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  IntPtr hwndInherit,
),
    int Function(
  int hwnd,
  int hwndInherit,
)>('InheritWindowMonitor');

int InsertMenuItem(
  int hmenu,
  int item,
  int fByPosition,
  Pointer<MENUITEMINFO> lpmi,
) =>
    _InsertMenuItem(
      hmenu,
      item,
      fByPosition,
      lpmi,
    );

late final _InsertMenuItem = _user32.lookupFunction<
    Int32 Function(
  IntPtr hmenu,
  Uint32 item,
  Int32 fByPosition,
  Pointer<MENUITEMINFO> lpmi,
),
    int Function(
  int hmenu,
  int item,
  int fByPosition,
  Pointer<MENUITEMINFO> lpmi,
)>('InsertMenuItemW');

int InsertMenu(
  int hMenu,
  int uPosition,
  int uFlags,
  int uIDNewItem,
  Pointer<Utf16> lpNewItem,
) =>
    _InsertMenu(
      hMenu,
      uPosition,
      uFlags,
      uIDNewItem,
      lpNewItem,
    );

late final _InsertMenu = _user32.lookupFunction<
    Int32 Function(
  IntPtr hMenu,
  Uint32 uPosition,
  Uint32 uFlags,
  IntPtr uIDNewItem,
  Pointer<Utf16> lpNewItem,
),
    int Function(
  int hMenu,
  int uPosition,
  int uFlags,
  int uIDNewItem,
  Pointer<Utf16> lpNewItem,
)>('InsertMenuW');

int InternalGetWindowText(
  int hWnd,
  Pointer<Utf16> pString,
  int cchMaxCount,
) =>
    _InternalGetWindowText(
      hWnd,
      pString,
      cchMaxCount,
    );

late final _InternalGetWindowText = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> pString,
  Int32 cchMaxCount,
),
    int Function(
  int hWnd,
  Pointer<Utf16> pString,
  int cchMaxCount,
)>('InternalGetWindowText');

int IsCharAlphaNumeric(
  int ch,
) =>
    _IsCharAlphaNumeric(
      ch,
    );

late final _IsCharAlphaNumeric = _user32.lookupFunction<
    Int32 Function(
  Uint16 ch,
),
    int Function(
  int ch,
)>('IsCharAlphaNumericW');

int IsCharAlpha(
  int ch,
) =>
    _IsCharAlpha(
      ch,
    );

late final _IsCharAlpha = _user32.lookupFunction<
    Int32 Function(
  Uint16 ch,
),
    int Function(
  int ch,
)>('IsCharAlphaW');

int IsCharUpper(
  int ch,
) =>
    _IsCharUpper(
      ch,
    );

late final _IsCharUpper = _user32.lookupFunction<
    Int32 Function(
  Uint16 ch,
),
    int Function(
  int ch,
)>('IsCharUpperW');

int IsChild(
  int hWndParent,
  int hWnd,
) =>
    _IsChild(
      hWndParent,
      hWnd,
    );

late final _IsChild = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWndParent,
  IntPtr hWnd,
),
    int Function(
  int hWndParent,
  int hWnd,
)>('IsChild');

int IsDialogMessage(
  int hDlg,
  Pointer<MSG> lpMsg,
) =>
    _IsDialogMessage(
      hDlg,
      lpMsg,
    );

late final _IsDialogMessage = _user32.lookupFunction<
    Int32 Function(
  IntPtr hDlg,
  Pointer<MSG> lpMsg,
),
    int Function(
  int hDlg,
  Pointer<MSG> lpMsg,
)>('IsDialogMessageW');

int IsGUIThread(
  int bConvert,
) =>
    _IsGUIThread(
      bConvert,
    );

late final _IsGUIThread = _user32.lookupFunction<
    Int32 Function(
  Int32 bConvert,
),
    int Function(
  int bConvert,
)>('IsGUIThread');

int IsHungAppWindow(
  int hwnd,
) =>
    _IsHungAppWindow(
      hwnd,
    );

late final _IsHungAppWindow = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('IsHungAppWindow');

int IsIconic(
  int hWnd,
) =>
    _IsIconic(
      hWnd,
    );

late final _IsIconic = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('IsIconic');

int IsMenu(
  int hMenu,
) =>
    _IsMenu(
      hMenu,
    );

late final _IsMenu = _user32.lookupFunction<
    Int32 Function(
  IntPtr hMenu,
),
    int Function(
  int hMenu,
)>('IsMenu');

int IsProcessDPIAware() => _IsProcessDPIAware();

late final _IsProcessDPIAware = _user32
    .lookupFunction<Int32 Function(), int Function()>('IsProcessDPIAware');

int IsWindow(
  int hWnd,
) =>
    _IsWindow(
      hWnd,
    );

late final _IsWindow = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('IsWindow');

int IsWindowUnicode(
  int hWnd,
) =>
    _IsWindowUnicode(
      hWnd,
    );

late final _IsWindowUnicode = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('IsWindowUnicode');

int IsWindowVisible(
  int hWnd,
) =>
    _IsWindowVisible(
      hWnd,
    );

late final _IsWindowVisible = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('IsWindowVisible');

int IsWow64Message() => _IsWow64Message();

late final _IsWow64Message =
    _user32.lookupFunction<Int32 Function(), int Function()>('IsWow64Message');

int IsZoomed(
  int hWnd,
) =>
    _IsZoomed(
      hWnd,
    );

late final _IsZoomed = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('IsZoomed');

int KillTimer(
  int hWnd,
  int uIDEvent,
) =>
    _KillTimer(
      hWnd,
      uIDEvent,
    );

late final _KillTimer = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  IntPtr uIDEvent,
),
    int Function(
  int hWnd,
  int uIDEvent,
)>('KillTimer');

int LoadAccelerators(
  int hInstance,
  Pointer<Utf16> lpTableName,
) =>
    _LoadAccelerators(
      hInstance,
      lpTableName,
    );

late final _LoadAccelerators = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hInstance,
  Pointer<Utf16> lpTableName,
),
    int Function(
  int hInstance,
  Pointer<Utf16> lpTableName,
)>('LoadAcceleratorsW');

int LoadCursorFromFile(
  Pointer<Utf16> lpFileName,
) =>
    _LoadCursorFromFile(
      lpFileName,
    );

late final _LoadCursorFromFile = _user32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpFileName,
),
    int Function(
  Pointer<Utf16> lpFileName,
)>('LoadCursorFromFileW');

int LoadCursor(
  int hInstance,
  Pointer<Utf16> lpCursorName,
) =>
    _LoadCursor(
      hInstance,
      lpCursorName,
    );

late final _LoadCursor = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hInstance,
  Pointer<Utf16> lpCursorName,
),
    int Function(
  int hInstance,
  Pointer<Utf16> lpCursorName,
)>('LoadCursorW');

int LoadIcon(
  int hInstance,
  Pointer<Utf16> lpIconName,
) =>
    _LoadIcon(
      hInstance,
      lpIconName,
    );

late final _LoadIcon = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hInstance,
  Pointer<Utf16> lpIconName,
),
    int Function(
  int hInstance,
  Pointer<Utf16> lpIconName,
)>('LoadIconW');

int LoadImage(
  int hInst,
  Pointer<Utf16> name,
  int type,
  int cx,
  int cy,
  int fuLoad,
) =>
    _LoadImage(
      hInst,
      name,
      type,
      cx,
      cy,
      fuLoad,
    );

late final _LoadImage = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hInst,
  Pointer<Utf16> name,
  Uint32 type,
  Int32 cx,
  Int32 cy,
  Uint32 fuLoad,
),
    int Function(
  int hInst,
  Pointer<Utf16> name,
  int type,
  int cx,
  int cy,
  int fuLoad,
)>('LoadImageW');

int LoadMenuIndirect(
  Pointer lpMenuTemplate,
) =>
    _LoadMenuIndirect(
      lpMenuTemplate,
    );

late final _LoadMenuIndirect = _user32.lookupFunction<
    IntPtr Function(
  Pointer lpMenuTemplate,
),
    int Function(
  Pointer lpMenuTemplate,
)>('LoadMenuIndirectW');

int LoadMenu(
  int hInstance,
  Pointer<Utf16> lpMenuName,
) =>
    _LoadMenu(
      hInstance,
      lpMenuName,
    );

late final _LoadMenu = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hInstance,
  Pointer<Utf16> lpMenuName,
),
    int Function(
  int hInstance,
  Pointer<Utf16> lpMenuName,
)>('LoadMenuW');

int LoadString(
  int hInstance,
  int uID,
  Pointer<Utf16> lpBuffer,
  int cchBufferMax,
) =>
    _LoadString(
      hInstance,
      uID,
      lpBuffer,
      cchBufferMax,
    );

late final _LoadString = _user32.lookupFunction<
    Int32 Function(
  IntPtr hInstance,
  Uint32 uID,
  Pointer<Utf16> lpBuffer,
  Int32 cchBufferMax,
),
    int Function(
  int hInstance,
  int uID,
  Pointer<Utf16> lpBuffer,
  int cchBufferMax,
)>('LoadStringW');

int LockSetForegroundWindow(
  int uLockCode,
) =>
    _LockSetForegroundWindow(
      uLockCode,
    );

late final _LockSetForegroundWindow = _user32.lookupFunction<
    Int32 Function(
  Uint32 uLockCode,
),
    int Function(
  int uLockCode,
)>('LockSetForegroundWindow');

int LogicalToPhysicalPoint(
  int hWnd,
  Pointer<POINT> lpPoint,
) =>
    _LogicalToPhysicalPoint(
      hWnd,
      lpPoint,
    );

late final _LogicalToPhysicalPoint = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<POINT> lpPoint,
),
    int Function(
  int hWnd,
  Pointer<POINT> lpPoint,
)>('LogicalToPhysicalPoint');

int LookupIconIdFromDirectory(
  Pointer<Uint8> presbits,
  int fIcon,
) =>
    _LookupIconIdFromDirectory(
      presbits,
      fIcon,
    );

late final _LookupIconIdFromDirectory = _user32.lookupFunction<
    Int32 Function(
  Pointer<Uint8> presbits,
  Int32 fIcon,
),
    int Function(
  Pointer<Uint8> presbits,
  int fIcon,
)>('LookupIconIdFromDirectory');

int LookupIconIdFromDirectoryEx(
  Pointer<Uint8> presbits,
  int fIcon,
  int cxDesired,
  int cyDesired,
  int Flags,
) =>
    _LookupIconIdFromDirectoryEx(
      presbits,
      fIcon,
      cxDesired,
      cyDesired,
      Flags,
    );

late final _LookupIconIdFromDirectoryEx = _user32.lookupFunction<
    Int32 Function(
  Pointer<Uint8> presbits,
  Int32 fIcon,
  Int32 cxDesired,
  Int32 cyDesired,
  Uint32 Flags,
),
    int Function(
  Pointer<Uint8> presbits,
  int fIcon,
  int cxDesired,
  int cyDesired,
  int Flags,
)>('LookupIconIdFromDirectoryEx');

int MapDialogRect(
  int hDlg,
  Pointer<RECT> lpRect,
) =>
    _MapDialogRect(
      hDlg,
      lpRect,
    );

late final _MapDialogRect = _user32.lookupFunction<
    Int32 Function(
  IntPtr hDlg,
  Pointer<RECT> lpRect,
),
    int Function(
  int hDlg,
  Pointer<RECT> lpRect,
)>('MapDialogRect');

int MenuItemFromPoint(
  int hWnd,
  int hMenu,
  POINT ptScreen,
) =>
    _MenuItemFromPoint(
      hWnd,
      hMenu,
      ptScreen,
    );

late final _MenuItemFromPoint = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  IntPtr hMenu,
  POINT ptScreen,
),
    int Function(
  int hWnd,
  int hMenu,
  POINT ptScreen,
)>('MenuItemFromPoint');

int MessageBoxEx(
  int hWnd,
  Pointer<Utf16> lpText,
  Pointer<Utf16> lpCaption,
  int uType,
  int wLanguageId,
) =>
    _MessageBoxEx(
      hWnd,
      lpText,
      lpCaption,
      uType,
      wLanguageId,
    );

late final _MessageBoxEx = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> lpText,
  Pointer<Utf16> lpCaption,
  Uint32 uType,
  Uint16 wLanguageId,
),
    int Function(
  int hWnd,
  Pointer<Utf16> lpText,
  Pointer<Utf16> lpCaption,
  int uType,
  int wLanguageId,
)>('MessageBoxExW');

int MessageBoxIndirect(
  Pointer<MSGBOXPARAMS> lpmbp,
) =>
    _MessageBoxIndirect(
      lpmbp,
    );

late final _MessageBoxIndirect = _user32.lookupFunction<
    Int32 Function(
  Pointer<MSGBOXPARAMS> lpmbp,
),
    int Function(
  Pointer<MSGBOXPARAMS> lpmbp,
)>('MessageBoxIndirectW');

int MessageBox(
  int hWnd,
  Pointer<Utf16> lpText,
  Pointer<Utf16> lpCaption,
  int uType,
) =>
    _MessageBox(
      hWnd,
      lpText,
      lpCaption,
      uType,
    );

late final _MessageBox = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> lpText,
  Pointer<Utf16> lpCaption,
  Uint32 uType,
),
    int Function(
  int hWnd,
  Pointer<Utf16> lpText,
  Pointer<Utf16> lpCaption,
  int uType,
)>('MessageBoxW');

int ModifyMenu(
  int hMnu,
  int uPosition,
  int uFlags,
  int uIDNewItem,
  Pointer<Utf16> lpNewItem,
) =>
    _ModifyMenu(
      hMnu,
      uPosition,
      uFlags,
      uIDNewItem,
      lpNewItem,
    );

late final _ModifyMenu = _user32.lookupFunction<
    Int32 Function(
  IntPtr hMnu,
  Uint32 uPosition,
  Uint32 uFlags,
  IntPtr uIDNewItem,
  Pointer<Utf16> lpNewItem,
),
    int Function(
  int hMnu,
  int uPosition,
  int uFlags,
  int uIDNewItem,
  Pointer<Utf16> lpNewItem,
)>('ModifyMenuW');

int MoveWindow(
  int hWnd,
  int X,
  int Y,
  int nWidth,
  int nHeight,
  int bRepaint,
) =>
    _MoveWindow(
      hWnd,
      X,
      Y,
      nWidth,
      nHeight,
      bRepaint,
    );

late final _MoveWindow = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Int32 X,
  Int32 Y,
  Int32 nWidth,
  Int32 nHeight,
  Int32 bRepaint,
),
    int Function(
  int hWnd,
  int X,
  int Y,
  int nWidth,
  int nHeight,
  int bRepaint,
)>('MoveWindow');

int MsgWaitForMultipleObjects(
  int nCount,
  Pointer<IntPtr> pHandles,
  int fWaitAll,
  int dwMilliseconds,
  int dwWakeMask,
) =>
    _MsgWaitForMultipleObjects(
      nCount,
      pHandles,
      fWaitAll,
      dwMilliseconds,
      dwWakeMask,
    );

late final _MsgWaitForMultipleObjects = _user32.lookupFunction<
    Uint32 Function(
  Uint32 nCount,
  Pointer<IntPtr> pHandles,
  Int32 fWaitAll,
  Uint32 dwMilliseconds,
  Uint32 dwWakeMask,
),
    int Function(
  int nCount,
  Pointer<IntPtr> pHandles,
  int fWaitAll,
  int dwMilliseconds,
  int dwWakeMask,
)>('MsgWaitForMultipleObjects');

int MsgWaitForMultipleObjectsEx(
  int nCount,
  Pointer<IntPtr> pHandles,
  int dwMilliseconds,
  int dwWakeMask,
  int dwFlags,
) =>
    _MsgWaitForMultipleObjectsEx(
      nCount,
      pHandles,
      dwMilliseconds,
      dwWakeMask,
      dwFlags,
    );

late final _MsgWaitForMultipleObjectsEx = _user32.lookupFunction<
    Uint32 Function(
  Uint32 nCount,
  Pointer<IntPtr> pHandles,
  Uint32 dwMilliseconds,
  Uint32 dwWakeMask,
  Uint32 dwFlags,
),
    int Function(
  int nCount,
  Pointer<IntPtr> pHandles,
  int dwMilliseconds,
  int dwWakeMask,
  int dwFlags,
)>('MsgWaitForMultipleObjectsEx');

int OemToCharBuff(
  Pointer<Utf8> lpszSrc,
  Pointer<Utf16> lpszDst,
  int cchDstLength,
) =>
    _OemToCharBuff(
      lpszSrc,
      lpszDst,
      cchDstLength,
    );

late final _OemToCharBuff = _user32.lookupFunction<
    Int32 Function(
  Pointer<Utf8> lpszSrc,
  Pointer<Utf16> lpszDst,
  Uint32 cchDstLength,
),
    int Function(
  Pointer<Utf8> lpszSrc,
  Pointer<Utf16> lpszDst,
  int cchDstLength,
)>('OemToCharBuffW');

int OemToChar(
  Pointer<Utf8> pSrc,
  Pointer<Utf16> pDst,
) =>
    _OemToChar(
      pSrc,
      pDst,
    );

late final _OemToChar = _user32.lookupFunction<
    Int32 Function(
  Pointer<Utf8> pSrc,
  Pointer<Utf16> pDst,
),
    int Function(
  Pointer<Utf8> pSrc,
  Pointer<Utf16> pDst,
)>('OemToCharW');

int OpenIcon(
  int hWnd,
) =>
    _OpenIcon(
      hWnd,
    );

late final _OpenIcon = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('OpenIcon');

int PeekMessage(
  Pointer<MSG> lpMsg,
  int hWnd,
  int wMsgFilterMin,
  int wMsgFilterMax,
  int wRemoveMsg,
) =>
    _PeekMessage(
      lpMsg,
      hWnd,
      wMsgFilterMin,
      wMsgFilterMax,
      wRemoveMsg,
    );

late final _PeekMessage = _user32.lookupFunction<
    Int32 Function(
  Pointer<MSG> lpMsg,
  IntPtr hWnd,
  Uint32 wMsgFilterMin,
  Uint32 wMsgFilterMax,
  Uint32 wRemoveMsg,
),
    int Function(
  Pointer<MSG> lpMsg,
  int hWnd,
  int wMsgFilterMin,
  int wMsgFilterMax,
  int wRemoveMsg,
)>('PeekMessageW');

int PhysicalToLogicalPoint(
  int hWnd,
  Pointer<POINT> lpPoint,
) =>
    _PhysicalToLogicalPoint(
      hWnd,
      lpPoint,
    );

late final _PhysicalToLogicalPoint = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<POINT> lpPoint,
),
    int Function(
  int hWnd,
  Pointer<POINT> lpPoint,
)>('PhysicalToLogicalPoint');

int PostMessage(
  int hWnd,
  int Msg,
  int wParam,
  int lParam,
) =>
    _PostMessage(
      hWnd,
      Msg,
      wParam,
      lParam,
    );

late final _PostMessage = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Uint32 Msg,
  IntPtr wParam,
  IntPtr lParam,
),
    int Function(
  int hWnd,
  int Msg,
  int wParam,
  int lParam,
)>('PostMessageW');

void PostQuitMessage(
  int nExitCode,
) =>
    _PostQuitMessage(
      nExitCode,
    );

late final _PostQuitMessage = _user32.lookupFunction<
    Void Function(
  Int32 nExitCode,
),
    void Function(
  int nExitCode,
)>('PostQuitMessage');

int PostThreadMessage(
  int idThread,
  int Msg,
  int wParam,
  int lParam,
) =>
    _PostThreadMessage(
      idThread,
      Msg,
      wParam,
      lParam,
    );

late final _PostThreadMessage = _user32.lookupFunction<
    Int32 Function(
  Uint32 idThread,
  Uint32 Msg,
  IntPtr wParam,
  IntPtr lParam,
),
    int Function(
  int idThread,
  int Msg,
  int wParam,
  int lParam,
)>('PostThreadMessageW');

int PrivateExtractIcons(
  Pointer<Utf16> szFileName,
  int nIconIndex,
  int cxIcon,
  int cyIcon,
  Pointer<IntPtr> phicon,
  Pointer<Uint32> piconid,
  int nIcons,
  int flags,
) =>
    _PrivateExtractIcons(
      szFileName,
      nIconIndex,
      cxIcon,
      cyIcon,
      phicon,
      piconid,
      nIcons,
      flags,
    );

late final _PrivateExtractIcons = _user32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szFileName,
  Int32 nIconIndex,
  Int32 cxIcon,
  Int32 cyIcon,
  Pointer<IntPtr> phicon,
  Pointer<Uint32> piconid,
  Uint32 nIcons,
  Uint32 flags,
),
    int Function(
  Pointer<Utf16> szFileName,
  int nIconIndex,
  int cxIcon,
  int cyIcon,
  Pointer<IntPtr> phicon,
  Pointer<Uint32> piconid,
  int nIcons,
  int flags,
)>('PrivateExtractIconsW');

int RealChildWindowFromPoint(
  int hwndParent,
  POINT ptParentClientCoords,
) =>
    _RealChildWindowFromPoint(
      hwndParent,
      ptParentClientCoords,
    );

late final _RealChildWindowFromPoint = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hwndParent,
  POINT ptParentClientCoords,
),
    int Function(
  int hwndParent,
  POINT ptParentClientCoords,
)>('RealChildWindowFromPoint');

int RealGetWindowClass(
  int hwnd,
  Pointer<Utf16> ptszClassName,
  int cchClassNameMax,
) =>
    _RealGetWindowClass(
      hwnd,
      ptszClassName,
      cchClassNameMax,
    );

late final _RealGetWindowClass = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hwnd,
  Pointer<Utf16> ptszClassName,
  Uint32 cchClassNameMax,
),
    int Function(
  int hwnd,
  Pointer<Utf16> ptszClassName,
  int cchClassNameMax,
)>('RealGetWindowClassW');

int RegisterClassEx(
  Pointer<WNDCLASSEX> param0,
) =>
    _RegisterClassEx(
      param0,
    );

late final _RegisterClassEx = _user32.lookupFunction<
    Uint16 Function(
  Pointer<WNDCLASSEX> param0,
),
    int Function(
  Pointer<WNDCLASSEX> param0,
)>('RegisterClassExW');

int RegisterClass(
  Pointer<WNDCLASS> lpWndClass,
) =>
    _RegisterClass(
      lpWndClass,
    );

late final _RegisterClass = _user32.lookupFunction<
    Uint16 Function(
  Pointer<WNDCLASS> lpWndClass,
),
    int Function(
  Pointer<WNDCLASS> lpWndClass,
)>('RegisterClassW');

Pointer RegisterDeviceNotification(
  int hRecipient,
  Pointer NotificationFilter,
  int Flags,
) =>
    _RegisterDeviceNotification(
      hRecipient,
      NotificationFilter,
      Flags,
    );

late final _RegisterDeviceNotification = _user32.lookupFunction<
    Pointer Function(
  IntPtr hRecipient,
  Pointer NotificationFilter,
  Uint32 Flags,
),
    Pointer Function(
  int hRecipient,
  Pointer NotificationFilter,
  int Flags,
)>('RegisterDeviceNotificationW');

int RegisterShellHookWindow(
  int hwnd,
) =>
    _RegisterShellHookWindow(
      hwnd,
    );

late final _RegisterShellHookWindow = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('RegisterShellHookWindow');

int RegisterWindowMessage(
  Pointer<Utf16> lpString,
) =>
    _RegisterWindowMessage(
      lpString,
    );

late final _RegisterWindowMessage = _user32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpString,
),
    int Function(
  Pointer<Utf16> lpString,
)>('RegisterWindowMessageW');

int RemoveMenu(
  int hMenu,
  int uPosition,
  int uFlags,
) =>
    _RemoveMenu(
      hMenu,
      uPosition,
      uFlags,
    );

late final _RemoveMenu = _user32.lookupFunction<
    Int32 Function(
  IntPtr hMenu,
  Uint32 uPosition,
  Uint32 uFlags,
),
    int Function(
  int hMenu,
  int uPosition,
  int uFlags,
)>('RemoveMenu');

int RemoveProp(
  int hWnd,
  Pointer<Utf16> lpString,
) =>
    _RemoveProp(
      hWnd,
      lpString,
    );

late final _RemoveProp = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Pointer<Utf16> lpString,
),
    int Function(
  int hWnd,
  Pointer<Utf16> lpString,
)>('RemovePropW');

int ReplyMessage(
  int lResult,
) =>
    _ReplyMessage(
      lResult,
    );

late final _ReplyMessage = _user32.lookupFunction<
    Int32 Function(
  IntPtr lResult,
),
    int Function(
  int lResult,
)>('ReplyMessage');

int ScrollDC(
  int hDC,
  int dx,
  int dy,
  Pointer<RECT> lprcScroll,
  Pointer<RECT> lprcClip,
  int hrgnUpdate,
  Pointer<RECT> lprcUpdate,
) =>
    _ScrollDC(
      hDC,
      dx,
      dy,
      lprcScroll,
      lprcClip,
      hrgnUpdate,
      lprcUpdate,
    );

late final _ScrollDC = _user32.lookupFunction<
    Int32 Function(
  IntPtr hDC,
  Int32 dx,
  Int32 dy,
  Pointer<RECT> lprcScroll,
  Pointer<RECT> lprcClip,
  IntPtr hrgnUpdate,
  Pointer<RECT> lprcUpdate,
),
    int Function(
  int hDC,
  int dx,
  int dy,
  Pointer<RECT> lprcScroll,
  Pointer<RECT> lprcClip,
  int hrgnUpdate,
  Pointer<RECT> lprcUpdate,
)>('ScrollDC');

int ScrollWindow(
  int hWnd,
  int XAmount,
  int YAmount,
  Pointer<RECT> lpRect,
  Pointer<RECT> lpClipRect,
) =>
    _ScrollWindow(
      hWnd,
      XAmount,
      YAmount,
      lpRect,
      lpClipRect,
    );

late final _ScrollWindow = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Int32 XAmount,
  Int32 YAmount,
  Pointer<RECT> lpRect,
  Pointer<RECT> lpClipRect,
),
    int Function(
  int hWnd,
  int XAmount,
  int YAmount,
  Pointer<RECT> lpRect,
  Pointer<RECT> lpClipRect,
)>('ScrollWindow');

int ScrollWindowEx(
  int hWnd,
  int dx,
  int dy,
  Pointer<RECT> prcScroll,
  Pointer<RECT> prcClip,
  int hrgnUpdate,
  Pointer<RECT> prcUpdate,
  int flags,
) =>
    _ScrollWindowEx(
      hWnd,
      dx,
      dy,
      prcScroll,
      prcClip,
      hrgnUpdate,
      prcUpdate,
      flags,
    );

late final _ScrollWindowEx = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Int32 dx,
  Int32 dy,
  Pointer<RECT> prcScroll,
  Pointer<RECT> prcClip,
  IntPtr hrgnUpdate,
  Pointer<RECT> prcUpdate,
  Uint32 flags,
),
    int Function(
  int hWnd,
  int dx,
  int dy,
  Pointer<RECT> prcScroll,
  Pointer<RECT> prcClip,
  int hrgnUpdate,
  Pointer<RECT> prcUpdate,
  int flags,
)>('ScrollWindowEx');

int SendDlgItemMessage(
  int hDlg,
  int nIDDlgItem,
  int Msg,
  int wParam,
  int lParam,
) =>
    _SendDlgItemMessage(
      hDlg,
      nIDDlgItem,
      Msg,
      wParam,
      lParam,
    );

late final _SendDlgItemMessage = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hDlg,
  Int32 nIDDlgItem,
  Uint32 Msg,
  IntPtr wParam,
  IntPtr lParam,
),
    int Function(
  int hDlg,
  int nIDDlgItem,
  int Msg,
  int wParam,
  int lParam,
)>('SendDlgItemMessageW');

int SendMessageCallback(
  int hWnd,
  int Msg,
  int wParam,
  int lParam,
  Pointer<NativeFunction<SENDASYNCPROC>> lpResultCallBack,
  int dwData,
) =>
    _SendMessageCallback(
      hWnd,
      Msg,
      wParam,
      lParam,
      lpResultCallBack,
      dwData,
    );

late final _SendMessageCallback = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Uint32 Msg,
  IntPtr wParam,
  IntPtr lParam,
  Pointer<NativeFunction<SENDASYNCPROC>> lpResultCallBack,
  IntPtr dwData,
),
    int Function(
  int hWnd,
  int Msg,
  int wParam,
  int lParam,
  Pointer<NativeFunction<SENDASYNCPROC>> lpResultCallBack,
  int dwData,
)>('SendMessageCallbackW');

int SendMessageTimeout(
  int hWnd,
  int Msg,
  int wParam,
  int lParam,
  int fuFlags,
  int uTimeout,
  Pointer<IntPtr> lpdwResult,
) =>
    _SendMessageTimeout(
      hWnd,
      Msg,
      wParam,
      lParam,
      fuFlags,
      uTimeout,
      lpdwResult,
    );

late final _SendMessageTimeout = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Uint32 Msg,
  IntPtr wParam,
  IntPtr lParam,
  Uint32 fuFlags,
  Uint32 uTimeout,
  Pointer<IntPtr> lpdwResult,
),
    int Function(
  int hWnd,
  int Msg,
  int wParam,
  int lParam,
  int fuFlags,
  int uTimeout,
  Pointer<IntPtr> lpdwResult,
)>('SendMessageTimeoutW');

int SendMessage(
  int hWnd,
  int Msg,
  int wParam,
  int lParam,
) =>
    _SendMessage(
      hWnd,
      Msg,
      wParam,
      lParam,
    );

late final _SendMessage = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Uint32 Msg,
  IntPtr wParam,
  IntPtr lParam,
),
    int Function(
  int hWnd,
  int Msg,
  int wParam,
  int lParam,
)>('SendMessageW');

int SendNotifyMessage(
  int hWnd,
  int Msg,
  int wParam,
  int lParam,
) =>
    _SendNotifyMessage(
      hWnd,
      Msg,
      wParam,
      lParam,
    );

late final _SendNotifyMessage = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Uint32 Msg,
  IntPtr wParam,
  IntPtr lParam,
),
    int Function(
  int hWnd,
  int Msg,
  int wParam,
  int lParam,
)>('SendNotifyMessageW');

int SetCaretBlinkTime(
  int uMSeconds,
) =>
    _SetCaretBlinkTime(
      uMSeconds,
    );

late final _SetCaretBlinkTime = _user32.lookupFunction<
    Int32 Function(
  Uint32 uMSeconds,
),
    int Function(
  int uMSeconds,
)>('SetCaretBlinkTime');

int SetCaretPos(
  int X,
  int Y,
) =>
    _SetCaretPos(
      X,
      Y,
    );

late final _SetCaretPos = _user32.lookupFunction<
    Int32 Function(
  Int32 X,
  Int32 Y,
),
    int Function(
  int X,
  int Y,
)>('SetCaretPos');

int SetClassLongPtr(
  int hWnd,
  int nIndex,
  int dwNewLong,
) =>
    _SetClassLongPtr(
      hWnd,
      nIndex,
      dwNewLong,
    );

late final _SetClassLongPtr = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Int32 nIndex,
  IntPtr dwNewLong,
),
    int Function(
  int hWnd,
  int nIndex,
  int dwNewLong,
)>('SetClassLongPtrW');

int SetClassLong(
  int hWnd,
  int nIndex,
  int dwNewLong,
) =>
    _SetClassLong(
      hWnd,
      nIndex,
      dwNewLong,
    );

late final _SetClassLong = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hWnd,
  Int32 nIndex,
  Int32 dwNewLong,
),
    int Function(
  int hWnd,
  int nIndex,
  int dwNewLong,
)>('SetClassLongW');

int SetClassWord(
  int hWnd,
  int nIndex,
  int wNewWord,
) =>
    _SetClassWord(
      hWnd,
      nIndex,
      wNewWord,
    );

late final _SetClassWord = _user32.lookupFunction<
    Uint16 Function(
  IntPtr hWnd,
  Int32 nIndex,
  Uint16 wNewWord,
),
    int Function(
  int hWnd,
  int nIndex,
  int wNewWord,
)>('SetClassWord');

int SetCoalescableTimer(
  int hWnd,
  int nIDEvent,
  int uElapse,
  Pointer<NativeFunction<TIMERPROC>> lpTimerFunc,
  int uToleranceDelay,
) =>
    _SetCoalescableTimer(
      hWnd,
      nIDEvent,
      uElapse,
      lpTimerFunc,
      uToleranceDelay,
    );

late final _SetCoalescableTimer = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  IntPtr nIDEvent,
  Uint32 uElapse,
  Pointer<NativeFunction<TIMERPROC>> lpTimerFunc,
  Uint32 uToleranceDelay,
),
    int Function(
  int hWnd,
  int nIDEvent,
  int uElapse,
  Pointer<NativeFunction<TIMERPROC>> lpTimerFunc,
  int uToleranceDelay,
)>('SetCoalescableTimer');

int SetCursor(
  int hCursor,
) =>
    _SetCursor(
      hCursor,
    );

late final _SetCursor = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hCursor,
),
    int Function(
  int hCursor,
)>('SetCursor');

int SetCursorPos(
  int X,
  int Y,
) =>
    _SetCursorPos(
      X,
      Y,
    );

late final _SetCursorPos = _user32.lookupFunction<
    Int32 Function(
  Int32 X,
  Int32 Y,
),
    int Function(
  int X,
  int Y,
)>('SetCursorPos');

void SetDebugErrorLevel(
  int dwLevel,
) =>
    _SetDebugErrorLevel(
      dwLevel,
    );

late final _SetDebugErrorLevel = _user32.lookupFunction<
    Void Function(
  Uint32 dwLevel,
),
    void Function(
  int dwLevel,
)>('SetDebugErrorLevel');

int SetDlgItemInt(
  int hDlg,
  int nIDDlgItem,
  int uValue,
  int bSigned,
) =>
    _SetDlgItemInt(
      hDlg,
      nIDDlgItem,
      uValue,
      bSigned,
    );

late final _SetDlgItemInt = _user32.lookupFunction<
    Int32 Function(
  IntPtr hDlg,
  Int32 nIDDlgItem,
  Uint32 uValue,
  Int32 bSigned,
),
    int Function(
  int hDlg,
  int nIDDlgItem,
  int uValue,
  int bSigned,
)>('SetDlgItemInt');

int SetDlgItemText(
  int hDlg,
  int nIDDlgItem,
  Pointer<Utf16> lpString,
) =>
    _SetDlgItemText(
      hDlg,
      nIDDlgItem,
      lpString,
    );

late final _SetDlgItemText = _user32.lookupFunction<
    Int32 Function(
  IntPtr hDlg,
  Int32 nIDDlgItem,
  Pointer<Utf16> lpString,
),
    int Function(
  int hDlg,
  int nIDDlgItem,
  Pointer<Utf16> lpString,
)>('SetDlgItemTextW');

int SetForegroundWindow(
  int hWnd,
) =>
    _SetForegroundWindow(
      hWnd,
    );

late final _SetForegroundWindow = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('SetForegroundWindow');

int SetLayeredWindowAttributes(
  int hwnd,
  int crKey,
  int bAlpha,
  int dwFlags,
) =>
    _SetLayeredWindowAttributes(
      hwnd,
      crKey,
      bAlpha,
      dwFlags,
    );

late final _SetLayeredWindowAttributes = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Uint32 crKey,
  Uint8 bAlpha,
  Uint32 dwFlags,
),
    int Function(
  int hwnd,
  int crKey,
  int bAlpha,
  int dwFlags,
)>('SetLayeredWindowAttributes');

int SetMenu(
  int hWnd,
  int hMenu,
) =>
    _SetMenu(
      hWnd,
      hMenu,
    );

late final _SetMenu = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  IntPtr hMenu,
),
    int Function(
  int hWnd,
  int hMenu,
)>('SetMenu');

int SetMenuDefaultItem(
  int hMenu,
  int uItem,
  int fByPos,
) =>
    _SetMenuDefaultItem(
      hMenu,
      uItem,
      fByPos,
    );

late final _SetMenuDefaultItem = _user32.lookupFunction<
    Int32 Function(
  IntPtr hMenu,
  Uint32 uItem,
  Uint32 fByPos,
),
    int Function(
  int hMenu,
  int uItem,
  int fByPos,
)>('SetMenuDefaultItem');

int SetMenuInfo(
  int param0,
  Pointer<MENUINFO> param1,
) =>
    _SetMenuInfo(
      param0,
      param1,
    );

late final _SetMenuInfo = _user32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Pointer<MENUINFO> param1,
),
    int Function(
  int param0,
  Pointer<MENUINFO> param1,
)>('SetMenuInfo');

int SetMenuItemBitmaps(
  int hMenu,
  int uPosition,
  int uFlags,
  int hBitmapUnchecked,
  int hBitmapChecked,
) =>
    _SetMenuItemBitmaps(
      hMenu,
      uPosition,
      uFlags,
      hBitmapUnchecked,
      hBitmapChecked,
    );

late final _SetMenuItemBitmaps = _user32.lookupFunction<
    Int32 Function(
  IntPtr hMenu,
  Uint32 uPosition,
  Uint32 uFlags,
  IntPtr hBitmapUnchecked,
  IntPtr hBitmapChecked,
),
    int Function(
  int hMenu,
  int uPosition,
  int uFlags,
  int hBitmapUnchecked,
  int hBitmapChecked,
)>('SetMenuItemBitmaps');

int SetMenuItemInfo(
  int hmenu,
  int item,
  int fByPositon,
  Pointer<MENUITEMINFO> lpmii,
) =>
    _SetMenuItemInfo(
      hmenu,
      item,
      fByPositon,
      lpmii,
    );

late final _SetMenuItemInfo = _user32.lookupFunction<
    Int32 Function(
  IntPtr hmenu,
  Uint32 item,
  Int32 fByPositon,
  Pointer<MENUITEMINFO> lpmii,
),
    int Function(
  int hmenu,
  int item,
  int fByPositon,
  Pointer<MENUITEMINFO> lpmii,
)>('SetMenuItemInfoW');

int SetMessageExtraInfo(
  int lParam,
) =>
    _SetMessageExtraInfo(
      lParam,
    );

late final _SetMessageExtraInfo = _user32.lookupFunction<
    IntPtr Function(
  IntPtr lParam,
),
    int Function(
  int lParam,
)>('SetMessageExtraInfo');

int SetMessageQueue(
  int cMessagesMax,
) =>
    _SetMessageQueue(
      cMessagesMax,
    );

late final _SetMessageQueue = _user32.lookupFunction<
    Int32 Function(
  Int32 cMessagesMax,
),
    int Function(
  int cMessagesMax,
)>('SetMessageQueue');

int SetParent(
  int hWndChild,
  int hWndNewParent,
) =>
    _SetParent(
      hWndChild,
      hWndNewParent,
    );

late final _SetParent = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWndChild,
  IntPtr hWndNewParent,
),
    int Function(
  int hWndChild,
  int hWndNewParent,
)>('SetParent');

int SetPhysicalCursorPos(
  int X,
  int Y,
) =>
    _SetPhysicalCursorPos(
      X,
      Y,
    );

late final _SetPhysicalCursorPos = _user32.lookupFunction<
    Int32 Function(
  Int32 X,
  Int32 Y,
),
    int Function(
  int X,
  int Y,
)>('SetPhysicalCursorPos');

int SetProcessDPIAware() => _SetProcessDPIAware();

late final _SetProcessDPIAware = _user32
    .lookupFunction<Int32 Function(), int Function()>('SetProcessDPIAware');

int SetProcessDefaultLayout(
  int dwDefaultLayout,
) =>
    _SetProcessDefaultLayout(
      dwDefaultLayout,
    );

late final _SetProcessDefaultLayout = _user32.lookupFunction<
    Int32 Function(
  Uint32 dwDefaultLayout,
),
    int Function(
  int dwDefaultLayout,
)>('SetProcessDefaultLayout');

int SetProp(
  int hWnd,
  Pointer<Utf16> lpString,
  int hData,
) =>
    _SetProp(
      hWnd,
      lpString,
      hData,
    );

late final _SetProp = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> lpString,
  IntPtr hData,
),
    int Function(
  int hWnd,
  Pointer<Utf16> lpString,
  int hData,
)>('SetPropW');

int SetSysColors(
  int cElements,
  Pointer<Int32> lpaElements,
  Pointer<Uint32> lpaRgbValues,
) =>
    _SetSysColors(
      cElements,
      lpaElements,
      lpaRgbValues,
    );

late final _SetSysColors = _user32.lookupFunction<
    Int32 Function(
  Int32 cElements,
  Pointer<Int32> lpaElements,
  Pointer<Uint32> lpaRgbValues,
),
    int Function(
  int cElements,
  Pointer<Int32> lpaElements,
  Pointer<Uint32> lpaRgbValues,
)>('SetSysColors');

int SetSystemCursor(
  int hcur,
  int id,
) =>
    _SetSystemCursor(
      hcur,
      id,
    );

late final _SetSystemCursor = _user32.lookupFunction<
    Int32 Function(
  IntPtr hcur,
  Uint32 id,
),
    int Function(
  int hcur,
  int id,
)>('SetSystemCursor');

int SetTimer(
  int hWnd,
  int nIDEvent,
  int uElapse,
  Pointer<NativeFunction<TIMERPROC>> lpTimerFunc,
) =>
    _SetTimer(
      hWnd,
      nIDEvent,
      uElapse,
      lpTimerFunc,
    );

late final _SetTimer = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  IntPtr nIDEvent,
  Uint32 uElapse,
  Pointer<NativeFunction<TIMERPROC>> lpTimerFunc,
),
    int Function(
  int hWnd,
  int nIDEvent,
  int uElapse,
  Pointer<NativeFunction<TIMERPROC>> lpTimerFunc,
)>('SetTimer');

int SetWindowDisplayAffinity(
  int hWnd,
  int dwAffinity,
) =>
    _SetWindowDisplayAffinity(
      hWnd,
      dwAffinity,
    );

late final _SetWindowDisplayAffinity = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Uint32 dwAffinity,
),
    int Function(
  int hWnd,
  int dwAffinity,
)>('SetWindowDisplayAffinity');

int SetWindowLongPtr(
  int hWnd,
  int nIndex,
  int dwNewLong,
) =>
    _SetWindowLongPtr(
      hWnd,
      nIndex,
      dwNewLong,
    );

late final _SetWindowLongPtr = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Int32 nIndex,
  IntPtr dwNewLong,
),
    int Function(
  int hWnd,
  int nIndex,
  int dwNewLong,
)>('SetWindowLongPtrW');

int SetWindowLong(
  int hWnd,
  int nIndex,
  int dwNewLong,
) =>
    _SetWindowLong(
      hWnd,
      nIndex,
      dwNewLong,
    );

late final _SetWindowLong = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Int32 nIndex,
  Int32 dwNewLong,
),
    int Function(
  int hWnd,
  int nIndex,
  int dwNewLong,
)>('SetWindowLongW');

int SetWindowPlacement(
  int hWnd,
  Pointer<WINDOWPLACEMENT> lpwndpl,
) =>
    _SetWindowPlacement(
      hWnd,
      lpwndpl,
    );

late final _SetWindowPlacement = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<WINDOWPLACEMENT> lpwndpl,
),
    int Function(
  int hWnd,
  Pointer<WINDOWPLACEMENT> lpwndpl,
)>('SetWindowPlacement');

int SetWindowPos(
  int hWnd,
  int hWndInsertAfter,
  int X,
  int Y,
  int cx,
  int cy,
  int uFlags,
) =>
    _SetWindowPos(
      hWnd,
      hWndInsertAfter,
      X,
      Y,
      cx,
      cy,
      uFlags,
    );

late final _SetWindowPos = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  IntPtr hWndInsertAfter,
  Int32 X,
  Int32 Y,
  Int32 cx,
  Int32 cy,
  Uint32 uFlags,
),
    int Function(
  int hWnd,
  int hWndInsertAfter,
  int X,
  int Y,
  int cx,
  int cy,
  int uFlags,
)>('SetWindowPos');

int SetWindowText(
  int hWnd,
  Pointer<Utf16> lpString,
) =>
    _SetWindowText(
      hWnd,
      lpString,
    );

late final _SetWindowText = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> lpString,
),
    int Function(
  int hWnd,
  Pointer<Utf16> lpString,
)>('SetWindowTextW');

int SetWindowWord(
  int hWnd,
  int nIndex,
  int wNewWord,
) =>
    _SetWindowWord(
      hWnd,
      nIndex,
      wNewWord,
    );

late final _SetWindowWord = _user32.lookupFunction<
    Uint16 Function(
  IntPtr hWnd,
  Int32 nIndex,
  Uint16 wNewWord,
),
    int Function(
  int hWnd,
  int nIndex,
  int wNewWord,
)>('SetWindowWord');

int SetWindowsHookEx(
  int idHook,
  Pointer<NativeFunction<HOOKPROC>> lpfn,
  int hmod,
  int dwThreadId,
) =>
    _SetWindowsHookEx(
      idHook,
      lpfn,
      hmod,
      dwThreadId,
    );

late final _SetWindowsHookEx = _user32.lookupFunction<
    IntPtr Function(
  Int32 idHook,
  Pointer<NativeFunction<HOOKPROC>> lpfn,
  IntPtr hmod,
  Uint32 dwThreadId,
),
    int Function(
  int idHook,
  Pointer<NativeFunction<HOOKPROC>> lpfn,
  int hmod,
  int dwThreadId,
)>('SetWindowsHookExW');

int SetWindowsHook(
  int nFilterType,
  Pointer<NativeFunction<HOOKPROC>> pfnFilterProc,
) =>
    _SetWindowsHook(
      nFilterType,
      pfnFilterProc,
    );

late final _SetWindowsHook = _user32.lookupFunction<
    IntPtr Function(
  Int32 nFilterType,
  Pointer<NativeFunction<HOOKPROC>> pfnFilterProc,
),
    int Function(
  int nFilterType,
  Pointer<NativeFunction<HOOKPROC>> pfnFilterProc,
)>('SetWindowsHookW');

int ShowCaret(
  int hWnd,
) =>
    _ShowCaret(
      hWnd,
    );

late final _ShowCaret = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('ShowCaret');

int ShowCursor(
  int bShow,
) =>
    _ShowCursor(
      bShow,
    );

late final _ShowCursor = _user32.lookupFunction<
    Int32 Function(
  Int32 bShow,
),
    int Function(
  int bShow,
)>('ShowCursor');

int ShowOwnedPopups(
  int hWnd,
  int fShow,
) =>
    _ShowOwnedPopups(
      hWnd,
      fShow,
    );

late final _ShowOwnedPopups = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Int32 fShow,
),
    int Function(
  int hWnd,
  int fShow,
)>('ShowOwnedPopups');

int ShowWindow(
  int hWnd,
  int nCmdShow,
) =>
    _ShowWindow(
      hWnd,
      nCmdShow,
    );

late final _ShowWindow = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Uint32 nCmdShow,
),
    int Function(
  int hWnd,
  int nCmdShow,
)>('ShowWindow');

int ShowWindowAsync(
  int hWnd,
  int nCmdShow,
) =>
    _ShowWindowAsync(
      hWnd,
      nCmdShow,
    );

late final _ShowWindowAsync = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Uint32 nCmdShow,
),
    int Function(
  int hWnd,
  int nCmdShow,
)>('ShowWindowAsync');

int SoundSentry() => _SoundSentry();

late final _SoundSentry =
    _user32.lookupFunction<Int32 Function(), int Function()>('SoundSentry');

void SwitchToThisWindow(
  int hwnd,
  int fUnknown,
) =>
    _SwitchToThisWindow(
      hwnd,
      fUnknown,
    );

late final _SwitchToThisWindow = _user32.lookupFunction<
    Void Function(
  IntPtr hwnd,
  Int32 fUnknown,
),
    void Function(
  int hwnd,
  int fUnknown,
)>('SwitchToThisWindow');

int SystemParametersInfo(
  int uiAction,
  int uiParam,
  Pointer pvParam,
  int fWinIni,
) =>
    _SystemParametersInfo(
      uiAction,
      uiParam,
      pvParam,
      fWinIni,
    );

late final _SystemParametersInfo = _user32.lookupFunction<
    Int32 Function(
  Uint32 uiAction,
  Uint32 uiParam,
  Pointer pvParam,
  Uint32 fWinIni,
),
    int Function(
  int uiAction,
  int uiParam,
  Pointer pvParam,
  int fWinIni,
)>('SystemParametersInfoW');

int TileWindows(
  int hwndParent,
  int wHow,
  Pointer<RECT> lpRect,
  int cKids,
  Pointer<IntPtr> lpKids,
) =>
    _TileWindows(
      hwndParent,
      wHow,
      lpRect,
      cKids,
      lpKids,
    );

late final _TileWindows = _user32.lookupFunction<
    Uint16 Function(
  IntPtr hwndParent,
  Uint32 wHow,
  Pointer<RECT> lpRect,
  Uint32 cKids,
  Pointer<IntPtr> lpKids,
),
    int Function(
  int hwndParent,
  int wHow,
  Pointer<RECT> lpRect,
  int cKids,
  Pointer<IntPtr> lpKids,
)>('TileWindows');

int TrackPopupMenu(
  int hMenu,
  int uFlags,
  int x,
  int y,
  int nReserved,
  int hWnd,
  Pointer<RECT> prcRect,
) =>
    _TrackPopupMenu(
      hMenu,
      uFlags,
      x,
      y,
      nReserved,
      hWnd,
      prcRect,
    );

late final _TrackPopupMenu = _user32.lookupFunction<
    Int32 Function(
  IntPtr hMenu,
  Uint32 uFlags,
  Int32 x,
  Int32 y,
  Int32 nReserved,
  IntPtr hWnd,
  Pointer<RECT> prcRect,
),
    int Function(
  int hMenu,
  int uFlags,
  int x,
  int y,
  int nReserved,
  int hWnd,
  Pointer<RECT> prcRect,
)>('TrackPopupMenu');

int TrackPopupMenuEx(
  int hMenu,
  int uFlags,
  int x,
  int y,
  int hwnd,
  Pointer<TPMPARAMS> lptpm,
) =>
    _TrackPopupMenuEx(
      hMenu,
      uFlags,
      x,
      y,
      hwnd,
      lptpm,
    );

late final _TrackPopupMenuEx = _user32.lookupFunction<
    Int32 Function(
  IntPtr hMenu,
  Uint32 uFlags,
  Int32 x,
  Int32 y,
  IntPtr hwnd,
  Pointer<TPMPARAMS> lptpm,
),
    int Function(
  int hMenu,
  int uFlags,
  int x,
  int y,
  int hwnd,
  Pointer<TPMPARAMS> lptpm,
)>('TrackPopupMenuEx');

int TranslateAccelerator(
  int hWnd,
  int hAccTable,
  Pointer<MSG> lpMsg,
) =>
    _TranslateAccelerator(
      hWnd,
      hAccTable,
      lpMsg,
    );

late final _TranslateAccelerator = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  IntPtr hAccTable,
  Pointer<MSG> lpMsg,
),
    int Function(
  int hWnd,
  int hAccTable,
  Pointer<MSG> lpMsg,
)>('TranslateAcceleratorW');

int TranslateMDISysAccel(
  int hWndClient,
  Pointer<MSG> lpMsg,
) =>
    _TranslateMDISysAccel(
      hWndClient,
      lpMsg,
    );

late final _TranslateMDISysAccel = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWndClient,
  Pointer<MSG> lpMsg,
),
    int Function(
  int hWndClient,
  Pointer<MSG> lpMsg,
)>('TranslateMDISysAccel');

int TranslateMessage(
  Pointer<MSG> lpMsg,
) =>
    _TranslateMessage(
      lpMsg,
    );

late final _TranslateMessage = _user32.lookupFunction<
    Int32 Function(
  Pointer<MSG> lpMsg,
),
    int Function(
  Pointer<MSG> lpMsg,
)>('TranslateMessage');

int UnhookWindowsHook(
  int nCode,
  Pointer<NativeFunction<HOOKPROC>> pfnFilterProc,
) =>
    _UnhookWindowsHook(
      nCode,
      pfnFilterProc,
    );

late final _UnhookWindowsHook = _user32.lookupFunction<
    Int32 Function(
  Int32 nCode,
  Pointer<NativeFunction<HOOKPROC>> pfnFilterProc,
),
    int Function(
  int nCode,
  Pointer<NativeFunction<HOOKPROC>> pfnFilterProc,
)>('UnhookWindowsHook');

int UnhookWindowsHookEx(
  int hhk,
) =>
    _UnhookWindowsHookEx(
      hhk,
    );

late final _UnhookWindowsHookEx = _user32.lookupFunction<
    Int32 Function(
  IntPtr hhk,
),
    int Function(
  int hhk,
)>('UnhookWindowsHookEx');

int UnregisterClass(
  Pointer<Utf16> lpClassName,
  int hInstance,
) =>
    _UnregisterClass(
      lpClassName,
      hInstance,
    );

late final _UnregisterClass = _user32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpClassName,
  IntPtr hInstance,
),
    int Function(
  Pointer<Utf16> lpClassName,
  int hInstance,
)>('UnregisterClassW');

int UpdateLayeredWindow(
  int hWnd,
  int hdcDst,
  Pointer<POINT> pptDst,
  Pointer<SIZE> psize,
  int hdcSrc,
  Pointer<POINT> pptSrc,
  int crKey,
  Pointer<BLENDFUNCTION> pblend,
  int dwFlags,
) =>
    _UpdateLayeredWindow(
      hWnd,
      hdcDst,
      pptDst,
      psize,
      hdcSrc,
      pptSrc,
      crKey,
      pblend,
      dwFlags,
    );

late final _UpdateLayeredWindow = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  IntPtr hdcDst,
  Pointer<POINT> pptDst,
  Pointer<SIZE> psize,
  IntPtr hdcSrc,
  Pointer<POINT> pptSrc,
  Uint32 crKey,
  Pointer<BLENDFUNCTION> pblend,
  Uint32 dwFlags,
),
    int Function(
  int hWnd,
  int hdcDst,
  Pointer<POINT> pptDst,
  Pointer<SIZE> psize,
  int hdcSrc,
  Pointer<POINT> pptSrc,
  int crKey,
  Pointer<BLENDFUNCTION> pblend,
  int dwFlags,
)>('UpdateLayeredWindow');

int UpdateLayeredWindowIndirect(
  int hWnd,
  Pointer<UPDATELAYEREDWINDOWINFO> pULWInfo,
) =>
    _UpdateLayeredWindowIndirect(
      hWnd,
      pULWInfo,
    );

late final _UpdateLayeredWindowIndirect = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<UPDATELAYEREDWINDOWINFO> pULWInfo,
),
    int Function(
  int hWnd,
  Pointer<UPDATELAYEREDWINDOWINFO> pULWInfo,
)>('UpdateLayeredWindowIndirect');

int WaitMessage() => _WaitMessage();

late final _WaitMessage =
    _user32.lookupFunction<Int32 Function(), int Function()>('WaitMessage');

int WindowFromPhysicalPoint(
  POINT Point,
) =>
    _WindowFromPhysicalPoint(
      Point,
    );

late final _WindowFromPhysicalPoint = _user32.lookupFunction<
    IntPtr Function(
  POINT Point,
),
    int Function(
  POINT Point,
)>('WindowFromPhysicalPoint');

int WindowFromPoint(
  POINT Point,
) =>
    _WindowFromPoint(
      Point,
    );

late final _WindowFromPoint = _user32.lookupFunction<
    IntPtr Function(
  POINT Point,
),
    int Function(
  POINT Point,
)>('WindowFromPoint');

int wsprintf(
  Pointer<Utf16> param0,
  Pointer<Utf16> param1,
) =>
    _wsprintf(
      param0,
      param1,
    );

late final _wsprintf = _user32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> param0,
  Pointer<Utf16> param1,
),
    int Function(
  Pointer<Utf16> param0,
  Pointer<Utf16> param1,
)>('wsprintfW');

int wvsprintf(
  Pointer<Utf16> param0,
  Pointer<Utf16> param1,
  Pointer<Int8> arglist,
) =>
    _wvsprintf(
      param0,
      param1,
      arglist,
    );

late final _wvsprintf = _user32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> param0,
  Pointer<Utf16> param1,
  Pointer<Int8> arglist,
),
    int Function(
  Pointer<Utf16> param0,
  Pointer<Utf16> param1,
  Pointer<Int8> arglist,
)>('wvsprintfW');

// -----------------------------------------------------------------------
// mrmsupport.dll
// -----------------------------------------------------------------------
final _mrmsupport = DynamicLibrary.open('mrmsupport.dll');

int CreateResourceIndexer(
  Pointer<Utf16> projectRoot,
  Pointer<Utf16> extensionDllPath,
  Pointer<Pointer> ppResourceIndexer,
) =>
    _CreateResourceIndexer(
      projectRoot,
      extensionDllPath,
      ppResourceIndexer,
    );

late final _CreateResourceIndexer = _mrmsupport.lookupFunction<
    Int32 Function(
  Pointer<Utf16> projectRoot,
  Pointer<Utf16> extensionDllPath,
  Pointer<Pointer> ppResourceIndexer,
),
    int Function(
  Pointer<Utf16> projectRoot,
  Pointer<Utf16> extensionDllPath,
  Pointer<Pointer> ppResourceIndexer,
)>('CreateResourceIndexer');

void DestroyIndexedResults(
  Pointer<Utf16> resourceUri,
  int qualifierCount,
  Pointer<IndexedResourceQualifier> qualifiers,
) =>
    _DestroyIndexedResults(
      resourceUri,
      qualifierCount,
      qualifiers,
    );

late final _DestroyIndexedResults = _mrmsupport.lookupFunction<
    Void Function(
  Pointer<Utf16> resourceUri,
  Uint32 qualifierCount,
  Pointer<IndexedResourceQualifier> qualifiers,
),
    void Function(
  Pointer<Utf16> resourceUri,
  int qualifierCount,
  Pointer<IndexedResourceQualifier> qualifiers,
)>('DestroyIndexedResults');

void DestroyResourceIndexer(
  Pointer resourceIndexer,
) =>
    _DestroyResourceIndexer(
      resourceIndexer,
    );

late final _DestroyResourceIndexer = _mrmsupport.lookupFunction<
    Void Function(
  Pointer resourceIndexer,
),
    void Function(
  Pointer resourceIndexer,
)>('DestroyResourceIndexer');

int IndexFilePath(
  Pointer resourceIndexer,
  Pointer<Utf16> filePath,
  Pointer<Pointer<Utf16>> ppResourceUri,
  Pointer<Uint32> pQualifierCount,
  Pointer<Pointer<IndexedResourceQualifier>> ppQualifiers,
) =>
    _IndexFilePath(
      resourceIndexer,
      filePath,
      ppResourceUri,
      pQualifierCount,
      ppQualifiers,
    );

late final _IndexFilePath = _mrmsupport.lookupFunction<
    Int32 Function(
  Pointer resourceIndexer,
  Pointer<Utf16> filePath,
  Pointer<Pointer<Utf16>> ppResourceUri,
  Pointer<Uint32> pQualifierCount,
  Pointer<Pointer<IndexedResourceQualifier>> ppQualifiers,
),
    int Function(
  Pointer resourceIndexer,
  Pointer<Utf16> filePath,
  Pointer<Pointer<Utf16>> ppResourceUri,
  Pointer<Uint32> pQualifierCount,
  Pointer<Pointer<IndexedResourceQualifier>> ppQualifiers,
)>('IndexFilePath');

int MrmCreateConfig(
  int platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Utf16> outputXmlFile,
) =>
    _MrmCreateConfig(
      platformVersion,
      defaultQualifiers,
      outputXmlFile,
    );

late final _MrmCreateConfig = _mrmsupport.lookupFunction<
    Int32 Function(
  Int32 platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Utf16> outputXmlFile,
),
    int Function(
  int platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Utf16> outputXmlFile,
)>('MrmCreateConfig');

int MrmCreateConfigInMemory(
  int platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Pointer<Uint8>> outputXmlData,
  Pointer<Uint32> outputXmlSize,
) =>
    _MrmCreateConfigInMemory(
      platformVersion,
      defaultQualifiers,
      outputXmlData,
      outputXmlSize,
    );

late final _MrmCreateConfigInMemory = _mrmsupport.lookupFunction<
    Int32 Function(
  Int32 platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Pointer<Uint8>> outputXmlData,
  Pointer<Uint32> outputXmlSize,
),
    int Function(
  int platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Pointer<Uint8>> outputXmlData,
  Pointer<Uint32> outputXmlSize,
)>('MrmCreateConfigInMemory');

int MrmCreateResourceFile(
  MrmResourceIndexerHandle indexer,
  int packagingMode,
  int packagingOptions,
  Pointer<Utf16> outputDirectory,
) =>
    _MrmCreateResourceFile(
      indexer,
      packagingMode,
      packagingOptions,
      outputDirectory,
    );

late final _MrmCreateResourceFile = _mrmsupport.lookupFunction<
    Int32 Function(
  MrmResourceIndexerHandle indexer,
  Int32 packagingMode,
  Int32 packagingOptions,
  Pointer<Utf16> outputDirectory,
),
    int Function(
  MrmResourceIndexerHandle indexer,
  int packagingMode,
  int packagingOptions,
  Pointer<Utf16> outputDirectory,
)>('MrmCreateResourceFile');

int MrmCreateResourceFileInMemory(
  MrmResourceIndexerHandle indexer,
  int packagingMode,
  int packagingOptions,
  Pointer<Pointer<Uint8>> outputPriData,
  Pointer<Uint32> outputPriSize,
) =>
    _MrmCreateResourceFileInMemory(
      indexer,
      packagingMode,
      packagingOptions,
      outputPriData,
      outputPriSize,
    );

late final _MrmCreateResourceFileInMemory = _mrmsupport.lookupFunction<
    Int32 Function(
  MrmResourceIndexerHandle indexer,
  Int32 packagingMode,
  Int32 packagingOptions,
  Pointer<Pointer<Uint8>> outputPriData,
  Pointer<Uint32> outputPriSize,
),
    int Function(
  MrmResourceIndexerHandle indexer,
  int packagingMode,
  int packagingOptions,
  Pointer<Pointer<Uint8>> outputPriData,
  Pointer<Uint32> outputPriSize,
)>('MrmCreateResourceFileInMemory');

int MrmCreateResourceFileWithChecksum(
  MrmResourceIndexerHandle indexer,
  int packagingMode,
  int packagingOptions,
  int checksum,
  Pointer<Utf16> outputDirectory,
) =>
    _MrmCreateResourceFileWithChecksum(
      indexer,
      packagingMode,
      packagingOptions,
      checksum,
      outputDirectory,
    );

late final _MrmCreateResourceFileWithChecksum = _mrmsupport.lookupFunction<
    Int32 Function(
  MrmResourceIndexerHandle indexer,
  Int32 packagingMode,
  Int32 packagingOptions,
  Uint32 checksum,
  Pointer<Utf16> outputDirectory,
),
    int Function(
  MrmResourceIndexerHandle indexer,
  int packagingMode,
  int packagingOptions,
  int checksum,
  Pointer<Utf16> outputDirectory,
)>('MrmCreateResourceFileWithChecksum');

int MrmCreateResourceIndexer(
  Pointer<Utf16> packageFamilyName,
  Pointer<Utf16> projectRoot,
  int platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<MrmResourceIndexerHandle> indexer,
) =>
    _MrmCreateResourceIndexer(
      packageFamilyName,
      projectRoot,
      platformVersion,
      defaultQualifiers,
      indexer,
    );

late final _MrmCreateResourceIndexer = _mrmsupport.lookupFunction<
    Int32 Function(
  Pointer<Utf16> packageFamilyName,
  Pointer<Utf16> projectRoot,
  Int32 platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<MrmResourceIndexerHandle> indexer,
),
    int Function(
  Pointer<Utf16> packageFamilyName,
  Pointer<Utf16> projectRoot,
  int platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<MrmResourceIndexerHandle> indexer,
)>('MrmCreateResourceIndexer');

int MrmCreateResourceIndexerFromPreviousPriData(
  Pointer<Utf16> projectRoot,
  int platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Uint8> priData,
  int priSize,
  Pointer<MrmResourceIndexerHandle> indexer,
) =>
    _MrmCreateResourceIndexerFromPreviousPriData(
      projectRoot,
      platformVersion,
      defaultQualifiers,
      priData,
      priSize,
      indexer,
    );

late final _MrmCreateResourceIndexerFromPreviousPriData =
    _mrmsupport.lookupFunction<
        Int32 Function(
  Pointer<Utf16> projectRoot,
  Int32 platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Uint8> priData,
  Uint32 priSize,
  Pointer<MrmResourceIndexerHandle> indexer,
),
        int Function(
  Pointer<Utf16> projectRoot,
  int platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Uint8> priData,
  int priSize,
  Pointer<MrmResourceIndexerHandle> indexer,
)>('MrmCreateResourceIndexerFromPreviousPriData');

int MrmCreateResourceIndexerFromPreviousPriFile(
  Pointer<Utf16> projectRoot,
  int platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Utf16> priFile,
  Pointer<MrmResourceIndexerHandle> indexer,
) =>
    _MrmCreateResourceIndexerFromPreviousPriFile(
      projectRoot,
      platformVersion,
      defaultQualifiers,
      priFile,
      indexer,
    );

late final _MrmCreateResourceIndexerFromPreviousPriFile =
    _mrmsupport.lookupFunction<
        Int32 Function(
  Pointer<Utf16> projectRoot,
  Int32 platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Utf16> priFile,
  Pointer<MrmResourceIndexerHandle> indexer,
),
        int Function(
  Pointer<Utf16> projectRoot,
  int platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Utf16> priFile,
  Pointer<MrmResourceIndexerHandle> indexer,
)>('MrmCreateResourceIndexerFromPreviousPriFile');

int MrmCreateResourceIndexerFromPreviousSchemaData(
  Pointer<Utf16> projectRoot,
  int platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Uint8> schemaXmlData,
  int schemaXmlSize,
  Pointer<MrmResourceIndexerHandle> indexer,
) =>
    _MrmCreateResourceIndexerFromPreviousSchemaData(
      projectRoot,
      platformVersion,
      defaultQualifiers,
      schemaXmlData,
      schemaXmlSize,
      indexer,
    );

late final _MrmCreateResourceIndexerFromPreviousSchemaData =
    _mrmsupport.lookupFunction<
        Int32 Function(
  Pointer<Utf16> projectRoot,
  Int32 platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Uint8> schemaXmlData,
  Uint32 schemaXmlSize,
  Pointer<MrmResourceIndexerHandle> indexer,
),
        int Function(
  Pointer<Utf16> projectRoot,
  int platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Uint8> schemaXmlData,
  int schemaXmlSize,
  Pointer<MrmResourceIndexerHandle> indexer,
)>('MrmCreateResourceIndexerFromPreviousSchemaData');

int MrmCreateResourceIndexerFromPreviousSchemaFile(
  Pointer<Utf16> projectRoot,
  int platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Utf16> schemaFile,
  Pointer<MrmResourceIndexerHandle> indexer,
) =>
    _MrmCreateResourceIndexerFromPreviousSchemaFile(
      projectRoot,
      platformVersion,
      defaultQualifiers,
      schemaFile,
      indexer,
    );

late final _MrmCreateResourceIndexerFromPreviousSchemaFile =
    _mrmsupport.lookupFunction<
        Int32 Function(
  Pointer<Utf16> projectRoot,
  Int32 platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Utf16> schemaFile,
  Pointer<MrmResourceIndexerHandle> indexer,
),
        int Function(
  Pointer<Utf16> projectRoot,
  int platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Pointer<Utf16> schemaFile,
  Pointer<MrmResourceIndexerHandle> indexer,
)>('MrmCreateResourceIndexerFromPreviousSchemaFile');

int MrmCreateResourceIndexerWithFlags(
  Pointer<Utf16> packageFamilyName,
  Pointer<Utf16> projectRoot,
  int platformVersion,
  Pointer<Utf16> defaultQualifiers,
  int flags,
  Pointer<MrmResourceIndexerHandle> indexer,
) =>
    _MrmCreateResourceIndexerWithFlags(
      packageFamilyName,
      projectRoot,
      platformVersion,
      defaultQualifiers,
      flags,
      indexer,
    );

late final _MrmCreateResourceIndexerWithFlags = _mrmsupport.lookupFunction<
    Int32 Function(
  Pointer<Utf16> packageFamilyName,
  Pointer<Utf16> projectRoot,
  Int32 platformVersion,
  Pointer<Utf16> defaultQualifiers,
  Int32 flags,
  Pointer<MrmResourceIndexerHandle> indexer,
),
    int Function(
  Pointer<Utf16> packageFamilyName,
  Pointer<Utf16> projectRoot,
  int platformVersion,
  Pointer<Utf16> defaultQualifiers,
  int flags,
  Pointer<MrmResourceIndexerHandle> indexer,
)>('MrmCreateResourceIndexerWithFlags');

int MrmDestroyIndexerAndMessages(
  MrmResourceIndexerHandle indexer,
) =>
    _MrmDestroyIndexerAndMessages(
      indexer,
    );

late final _MrmDestroyIndexerAndMessages = _mrmsupport.lookupFunction<
    Int32 Function(
  MrmResourceIndexerHandle indexer,
),
    int Function(
  MrmResourceIndexerHandle indexer,
)>('MrmDestroyIndexerAndMessages');

int MrmDumpPriDataInMemory(
  Pointer<Uint8> inputPriData,
  int inputPriSize,
  Pointer<Uint8> schemaPriData,
  int schemaPriSize,
  int dumpType,
  Pointer<Pointer<Uint8>> outputXmlData,
  Pointer<Uint32> outputXmlSize,
) =>
    _MrmDumpPriDataInMemory(
      inputPriData,
      inputPriSize,
      schemaPriData,
      schemaPriSize,
      dumpType,
      outputXmlData,
      outputXmlSize,
    );

late final _MrmDumpPriDataInMemory = _mrmsupport.lookupFunction<
    Int32 Function(
  Pointer<Uint8> inputPriData,
  Uint32 inputPriSize,
  Pointer<Uint8> schemaPriData,
  Uint32 schemaPriSize,
  Int32 dumpType,
  Pointer<Pointer<Uint8>> outputXmlData,
  Pointer<Uint32> outputXmlSize,
),
    int Function(
  Pointer<Uint8> inputPriData,
  int inputPriSize,
  Pointer<Uint8> schemaPriData,
  int schemaPriSize,
  int dumpType,
  Pointer<Pointer<Uint8>> outputXmlData,
  Pointer<Uint32> outputXmlSize,
)>('MrmDumpPriDataInMemory');

int MrmDumpPriFile(
  Pointer<Utf16> indexFileName,
  Pointer<Utf16> schemaPriFile,
  int dumpType,
  Pointer<Utf16> outputXmlFile,
) =>
    _MrmDumpPriFile(
      indexFileName,
      schemaPriFile,
      dumpType,
      outputXmlFile,
    );

late final _MrmDumpPriFile = _mrmsupport.lookupFunction<
    Int32 Function(
  Pointer<Utf16> indexFileName,
  Pointer<Utf16> schemaPriFile,
  Int32 dumpType,
  Pointer<Utf16> outputXmlFile,
),
    int Function(
  Pointer<Utf16> indexFileName,
  Pointer<Utf16> schemaPriFile,
  int dumpType,
  Pointer<Utf16> outputXmlFile,
)>('MrmDumpPriFile');

int MrmDumpPriFileInMemory(
  Pointer<Utf16> indexFileName,
  Pointer<Utf16> schemaPriFile,
  int dumpType,
  Pointer<Pointer<Uint8>> outputXmlData,
  Pointer<Uint32> outputXmlSize,
) =>
    _MrmDumpPriFileInMemory(
      indexFileName,
      schemaPriFile,
      dumpType,
      outputXmlData,
      outputXmlSize,
    );

late final _MrmDumpPriFileInMemory = _mrmsupport.lookupFunction<
    Int32 Function(
  Pointer<Utf16> indexFileName,
  Pointer<Utf16> schemaPriFile,
  Int32 dumpType,
  Pointer<Pointer<Uint8>> outputXmlData,
  Pointer<Uint32> outputXmlSize,
),
    int Function(
  Pointer<Utf16> indexFileName,
  Pointer<Utf16> schemaPriFile,
  int dumpType,
  Pointer<Pointer<Uint8>> outputXmlData,
  Pointer<Uint32> outputXmlSize,
)>('MrmDumpPriFileInMemory');

int MrmFreeMemory(
  Pointer<Uint8> data,
) =>
    _MrmFreeMemory(
      data,
    );

late final _MrmFreeMemory = _mrmsupport.lookupFunction<
    Int32 Function(
  Pointer<Uint8> data,
),
    int Function(
  Pointer<Uint8> data,
)>('MrmFreeMemory');

int MrmGetPriFileContentChecksum(
  Pointer<Utf16> priFile,
  Pointer<Uint32> checksum,
) =>
    _MrmGetPriFileContentChecksum(
      priFile,
      checksum,
    );

late final _MrmGetPriFileContentChecksum = _mrmsupport.lookupFunction<
    Int32 Function(
  Pointer<Utf16> priFile,
  Pointer<Uint32> checksum,
),
    int Function(
  Pointer<Utf16> priFile,
  Pointer<Uint32> checksum,
)>('MrmGetPriFileContentChecksum');

int MrmIndexEmbeddedData(
  MrmResourceIndexerHandle indexer,
  Pointer<Utf16> resourceUri,
  Pointer<Uint8> embeddedData,
  int embeddedDataSize,
  Pointer<Utf16> qualifiers,
) =>
    _MrmIndexEmbeddedData(
      indexer,
      resourceUri,
      embeddedData,
      embeddedDataSize,
      qualifiers,
    );

late final _MrmIndexEmbeddedData = _mrmsupport.lookupFunction<
    Int32 Function(
  MrmResourceIndexerHandle indexer,
  Pointer<Utf16> resourceUri,
  Pointer<Uint8> embeddedData,
  Uint32 embeddedDataSize,
  Pointer<Utf16> qualifiers,
),
    int Function(
  MrmResourceIndexerHandle indexer,
  Pointer<Utf16> resourceUri,
  Pointer<Uint8> embeddedData,
  int embeddedDataSize,
  Pointer<Utf16> qualifiers,
)>('MrmIndexEmbeddedData');

int MrmIndexFile(
  MrmResourceIndexerHandle indexer,
  Pointer<Utf16> resourceUri,
  Pointer<Utf16> filePath,
  Pointer<Utf16> qualifiers,
) =>
    _MrmIndexFile(
      indexer,
      resourceUri,
      filePath,
      qualifiers,
    );

late final _MrmIndexFile = _mrmsupport.lookupFunction<
    Int32 Function(
  MrmResourceIndexerHandle indexer,
  Pointer<Utf16> resourceUri,
  Pointer<Utf16> filePath,
  Pointer<Utf16> qualifiers,
),
    int Function(
  MrmResourceIndexerHandle indexer,
  Pointer<Utf16> resourceUri,
  Pointer<Utf16> filePath,
  Pointer<Utf16> qualifiers,
)>('MrmIndexFile');

int MrmIndexFileAutoQualifiers(
  MrmResourceIndexerHandle indexer,
  Pointer<Utf16> filePath,
) =>
    _MrmIndexFileAutoQualifiers(
      indexer,
      filePath,
    );

late final _MrmIndexFileAutoQualifiers = _mrmsupport.lookupFunction<
    Int32 Function(
  MrmResourceIndexerHandle indexer,
  Pointer<Utf16> filePath,
),
    int Function(
  MrmResourceIndexerHandle indexer,
  Pointer<Utf16> filePath,
)>('MrmIndexFileAutoQualifiers');

int MrmIndexResourceContainerAutoQualifiers(
  MrmResourceIndexerHandle indexer,
  Pointer<Utf16> containerPath,
) =>
    _MrmIndexResourceContainerAutoQualifiers(
      indexer,
      containerPath,
    );

late final _MrmIndexResourceContainerAutoQualifiers =
    _mrmsupport.lookupFunction<
        Int32 Function(
  MrmResourceIndexerHandle indexer,
  Pointer<Utf16> containerPath,
),
        int Function(
  MrmResourceIndexerHandle indexer,
  Pointer<Utf16> containerPath,
)>('MrmIndexResourceContainerAutoQualifiers');

int MrmIndexString(
  MrmResourceIndexerHandle indexer,
  Pointer<Utf16> resourceUri,
  Pointer<Utf16> resourceString,
  Pointer<Utf16> qualifiers,
) =>
    _MrmIndexString(
      indexer,
      resourceUri,
      resourceString,
      qualifiers,
    );

late final _MrmIndexString = _mrmsupport.lookupFunction<
    Int32 Function(
  MrmResourceIndexerHandle indexer,
  Pointer<Utf16> resourceUri,
  Pointer<Utf16> resourceString,
  Pointer<Utf16> qualifiers,
),
    int Function(
  MrmResourceIndexerHandle indexer,
  Pointer<Utf16> resourceUri,
  Pointer<Utf16> resourceString,
  Pointer<Utf16> qualifiers,
)>('MrmIndexString');

int MrmPeekResourceIndexerMessages(
  MrmResourceIndexerHandle handle,
  Pointer<Pointer<MrmResourceIndexerMessage>> messages,
  Pointer<Uint32> numMsgs,
) =>
    _MrmPeekResourceIndexerMessages(
      handle,
      messages,
      numMsgs,
    );

late final _MrmPeekResourceIndexerMessages = _mrmsupport.lookupFunction<
    Int32 Function(
  MrmResourceIndexerHandle handle,
  Pointer<Pointer<MrmResourceIndexerMessage>> messages,
  Pointer<Uint32> numMsgs,
),
    int Function(
  MrmResourceIndexerHandle handle,
  Pointer<Pointer<MrmResourceIndexerMessage>> messages,
  Pointer<Uint32> numMsgs,
)>('MrmPeekResourceIndexerMessages');
