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
import '../../ui/accessibility/structs.g.dart';
import '../../ui/accessibility/IAccessible.dart';
import '../../specialTypes.dart';
import '../../system/com/IUnknown.dart';
import '../../system/com/structs.g.dart';
import '../../ui/accessibility/callbacks.g.dart';
import '../../ui/accessibility/IRawElementProviderSimple.dart';
import '../../ui/accessibility/ITextRangeProvider.dart';
import '../../ui/windowsandmessaging/structs.g.dart'; // -----------------------------------------------------------------------

// oleacc.dll
// -----------------------------------------------------------------------
final _oleacc = DynamicLibrary.open('oleacc.dll');

int AccNotifyTouchInteraction(
  int hwndApp,
  int hwndTarget,
  POINT ptTarget,
) =>
    _AccNotifyTouchInteraction(
      hwndApp,
      hwndTarget,
      ptTarget,
    );

late final _AccNotifyTouchInteraction = _oleacc.lookupFunction<
    Int32 Function(
  IntPtr hwndApp,
  IntPtr hwndTarget,
  POINT ptTarget,
),
    int Function(
  int hwndApp,
  int hwndTarget,
  POINT ptTarget,
)>('AccNotifyTouchInteraction');

int AccSetRunningUtilityState(
  int hwndApp,
  int dwUtilityStateMask,
  int dwUtilityState,
) =>
    _AccSetRunningUtilityState(
      hwndApp,
      dwUtilityStateMask,
      dwUtilityState,
    );

late final _AccSetRunningUtilityState = _oleacc.lookupFunction<
    Int32 Function(
  IntPtr hwndApp,
  Uint32 dwUtilityStateMask,
  Uint32 dwUtilityState,
),
    int Function(
  int hwndApp,
  int dwUtilityStateMask,
  int dwUtilityState,
)>('AccSetRunningUtilityState');

int AccessibleChildren(
  Pointer<COMObject> paccContainer,
  int iChildStart,
  int cChildren,
  Pointer<VARIANT> rgvarChildren,
  Pointer<Int32> pcObtained,
) =>
    _AccessibleChildren(
      paccContainer,
      iChildStart,
      cChildren,
      rgvarChildren,
      pcObtained,
    );

late final _AccessibleChildren = _oleacc.lookupFunction<
    Int32 Function(
  Pointer<COMObject> paccContainer,
  Int32 iChildStart,
  Int32 cChildren,
  Pointer<VARIANT> rgvarChildren,
  Pointer<Int32> pcObtained,
),
    int Function(
  Pointer<COMObject> paccContainer,
  int iChildStart,
  int cChildren,
  Pointer<VARIANT> rgvarChildren,
  Pointer<Int32> pcObtained,
)>('AccessibleChildren');

int AccessibleObjectFromEvent(
  int hwnd,
  int dwId,
  int dwChildId,
  Pointer<Pointer<COMObject>> ppacc,
  Pointer<VARIANT> pvarChild,
) =>
    _AccessibleObjectFromEvent(
      hwnd,
      dwId,
      dwChildId,
      ppacc,
      pvarChild,
    );

late final _AccessibleObjectFromEvent = _oleacc.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Uint32 dwId,
  Uint32 dwChildId,
  Pointer<Pointer<COMObject>> ppacc,
  Pointer<VARIANT> pvarChild,
),
    int Function(
  int hwnd,
  int dwId,
  int dwChildId,
  Pointer<Pointer<COMObject>> ppacc,
  Pointer<VARIANT> pvarChild,
)>('AccessibleObjectFromEvent');

int AccessibleObjectFromPoint(
  POINT ptScreen,
  Pointer<Pointer<COMObject>> ppacc,
  Pointer<VARIANT> pvarChild,
) =>
    _AccessibleObjectFromPoint(
      ptScreen,
      ppacc,
      pvarChild,
    );

late final _AccessibleObjectFromPoint = _oleacc.lookupFunction<
    Int32 Function(
  POINT ptScreen,
  Pointer<Pointer<COMObject>> ppacc,
  Pointer<VARIANT> pvarChild,
),
    int Function(
  POINT ptScreen,
  Pointer<Pointer<COMObject>> ppacc,
  Pointer<VARIANT> pvarChild,
)>('AccessibleObjectFromPoint');

int AccessibleObjectFromWindow(
  int hwnd,
  int dwId,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
) =>
    _AccessibleObjectFromWindow(
      hwnd,
      dwId,
      riid,
      ppvObject,
    );

late final _AccessibleObjectFromWindow = _oleacc.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Uint32 dwId,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
),
    int Function(
  int hwnd,
  int dwId,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
)>('AccessibleObjectFromWindow');

int CreateStdAccessibleObject(
  int hwnd,
  int idObject,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
) =>
    _CreateStdAccessibleObject(
      hwnd,
      idObject,
      riid,
      ppvObject,
    );

late final _CreateStdAccessibleObject = _oleacc.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 idObject,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
),
    int Function(
  int hwnd,
  int idObject,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
)>('CreateStdAccessibleObject');

int CreateStdAccessibleProxy(
  int hwnd,
  Pointer<Utf16> pClassName,
  int idObject,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
) =>
    _CreateStdAccessibleProxy(
      hwnd,
      pClassName,
      idObject,
      riid,
      ppvObject,
    );

late final _CreateStdAccessibleProxy = _oleacc.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Utf16> pClassName,
  Int32 idObject,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
),
    int Function(
  int hwnd,
  Pointer<Utf16> pClassName,
  int idObject,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
)>('CreateStdAccessibleProxyW');

void GetOleaccVersionInfo(
  Pointer<Uint32> pVer,
  Pointer<Uint32> pBuild,
) =>
    _GetOleaccVersionInfo(
      pVer,
      pBuild,
    );

late final _GetOleaccVersionInfo = _oleacc.lookupFunction<
    Void Function(
  Pointer<Uint32> pVer,
  Pointer<Uint32> pBuild,
),
    void Function(
  Pointer<Uint32> pVer,
  Pointer<Uint32> pBuild,
)>('GetOleaccVersionInfo');

int GetRoleText(
  int lRole,
  Pointer<Utf16> lpszRole,
  int cchRoleMax,
) =>
    _GetRoleText(
      lRole,
      lpszRole,
      cchRoleMax,
    );

late final _GetRoleText = _oleacc.lookupFunction<
    Uint32 Function(
  Uint32 lRole,
  Pointer<Utf16> lpszRole,
  Uint32 cchRoleMax,
),
    int Function(
  int lRole,
  Pointer<Utf16> lpszRole,
  int cchRoleMax,
)>('GetRoleTextW');

int GetStateText(
  int lStateBit,
  Pointer<Utf16> lpszState,
  int cchState,
) =>
    _GetStateText(
      lStateBit,
      lpszState,
      cchState,
    );

late final _GetStateText = _oleacc.lookupFunction<
    Uint32 Function(
  Uint32 lStateBit,
  Pointer<Utf16> lpszState,
  Uint32 cchState,
),
    int Function(
  int lStateBit,
  Pointer<Utf16> lpszState,
  int cchState,
)>('GetStateTextW');

int LresultFromObject(
  Pointer<GUID> riid,
  int wParam,
  Pointer<COMObject> punk,
) =>
    _LresultFromObject(
      riid,
      wParam,
      punk,
    );

late final _LresultFromObject = _oleacc.lookupFunction<
    IntPtr Function(
  Pointer<GUID> riid,
  IntPtr wParam,
  Pointer<COMObject> punk,
),
    int Function(
  Pointer<GUID> riid,
  int wParam,
  Pointer<COMObject> punk,
)>('LresultFromObject');

int ObjectFromLresult(
  int lResult,
  Pointer<GUID> riid,
  int wParam,
  Pointer<Pointer> ppvObject,
) =>
    _ObjectFromLresult(
      lResult,
      riid,
      wParam,
      ppvObject,
    );

late final _ObjectFromLresult = _oleacc.lookupFunction<
    Int32 Function(
  IntPtr lResult,
  Pointer<GUID> riid,
  IntPtr wParam,
  Pointer<Pointer> ppvObject,
),
    int Function(
  int lResult,
  Pointer<GUID> riid,
  int wParam,
  Pointer<Pointer> ppvObject,
)>('ObjectFromLresult');

int WindowFromAccessibleObject(
  Pointer<COMObject> param0,
  Pointer<IntPtr> phwnd,
) =>
    _WindowFromAccessibleObject(
      param0,
      phwnd,
    );

late final _WindowFromAccessibleObject = _oleacc.lookupFunction<
    Int32 Function(
  Pointer<COMObject> param0,
  Pointer<IntPtr> phwnd,
),
    int Function(
  Pointer<COMObject> param0,
  Pointer<IntPtr> phwnd,
)>('WindowFromAccessibleObject');

// -----------------------------------------------------------------------
// uiautomationcore.dll
// -----------------------------------------------------------------------
final _uiautomationcore = DynamicLibrary.open('uiautomationcore.dll');

int DockPattern_SetDockPosition(
  int hobj,
  int dockPosition,
) =>
    _DockPattern_SetDockPosition(
      hobj,
      dockPosition,
    );

late final _DockPattern_SetDockPosition = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Int32 dockPosition,
),
    int Function(
  int hobj,
  int dockPosition,
)>('DockPattern_SetDockPosition');

int ExpandCollapsePattern_Collapse(
  int hobj,
) =>
    _ExpandCollapsePattern_Collapse(
      hobj,
    );

late final _ExpandCollapsePattern_Collapse = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
),
    int Function(
  int hobj,
)>('ExpandCollapsePattern_Collapse');

int ExpandCollapsePattern_Expand(
  int hobj,
) =>
    _ExpandCollapsePattern_Expand(
      hobj,
    );

late final _ExpandCollapsePattern_Expand = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
),
    int Function(
  int hobj,
)>('ExpandCollapsePattern_Expand');

int GridPattern_GetItem(
  int hobj,
  int row,
  int column,
  Pointer<IntPtr> pResult,
) =>
    _GridPattern_GetItem(
      hobj,
      row,
      column,
      pResult,
    );

late final _GridPattern_GetItem = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Int32 row,
  Int32 column,
  Pointer<IntPtr> pResult,
),
    int Function(
  int hobj,
  int row,
  int column,
  Pointer<IntPtr> pResult,
)>('GridPattern_GetItem');

int InvokePattern_Invoke(
  int hobj,
) =>
    _InvokePattern_Invoke(
      hobj,
    );

late final _InvokePattern_Invoke = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
),
    int Function(
  int hobj,
)>('InvokePattern_Invoke');

int ItemContainerPattern_FindItemByProperty(
  int hobj,
  int hnodeStartAfter,
  int propertyId,
  VARIANT value,
  Pointer<IntPtr> pFound,
) =>
    _ItemContainerPattern_FindItemByProperty(
      hobj,
      hnodeStartAfter,
      propertyId,
      value,
      pFound,
    );

late final _ItemContainerPattern_FindItemByProperty =
    _uiautomationcore.lookupFunction<
        Int32 Function(
  IntPtr hobj,
  IntPtr hnodeStartAfter,
  Int32 propertyId,
  VARIANT value,
  Pointer<IntPtr> pFound,
),
        int Function(
  int hobj,
  int hnodeStartAfter,
  int propertyId,
  VARIANT value,
  Pointer<IntPtr> pFound,
)>('ItemContainerPattern_FindItemByProperty');

int LegacyIAccessiblePattern_DoDefaultAction(
  int hobj,
) =>
    _LegacyIAccessiblePattern_DoDefaultAction(
      hobj,
    );

late final _LegacyIAccessiblePattern_DoDefaultAction =
    _uiautomationcore.lookupFunction<
        Int32 Function(
  IntPtr hobj,
),
        int Function(
  int hobj,
)>('LegacyIAccessiblePattern_DoDefaultAction');

int LegacyIAccessiblePattern_GetIAccessible(
  int hobj,
  Pointer<Pointer<COMObject>> pAccessible,
) =>
    _LegacyIAccessiblePattern_GetIAccessible(
      hobj,
      pAccessible,
    );

late final _LegacyIAccessiblePattern_GetIAccessible =
    _uiautomationcore.lookupFunction<
        Int32 Function(
  IntPtr hobj,
  Pointer<Pointer<COMObject>> pAccessible,
),
        int Function(
  int hobj,
  Pointer<Pointer<COMObject>> pAccessible,
)>('LegacyIAccessiblePattern_GetIAccessible');

int LegacyIAccessiblePattern_Select(
  int hobj,
  int flagsSelect,
) =>
    _LegacyIAccessiblePattern_Select(
      hobj,
      flagsSelect,
    );

late final _LegacyIAccessiblePattern_Select = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Int32 flagsSelect,
),
    int Function(
  int hobj,
  int flagsSelect,
)>('LegacyIAccessiblePattern_Select');

int LegacyIAccessiblePattern_SetValue(
  int hobj,
  Pointer<Utf16> szValue,
) =>
    _LegacyIAccessiblePattern_SetValue(
      hobj,
      szValue,
    );

late final _LegacyIAccessiblePattern_SetValue =
    _uiautomationcore.lookupFunction<
        Int32 Function(
  IntPtr hobj,
  Pointer<Utf16> szValue,
),
        int Function(
  int hobj,
  Pointer<Utf16> szValue,
)>('LegacyIAccessiblePattern_SetValue');

int MultipleViewPattern_GetViewName(
  int hobj,
  int viewId,
  Pointer<Pointer<Utf16>> ppStr,
) =>
    _MultipleViewPattern_GetViewName(
      hobj,
      viewId,
      ppStr,
    );

late final _MultipleViewPattern_GetViewName = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Int32 viewId,
  Pointer<Pointer<Utf16>> ppStr,
),
    int Function(
  int hobj,
  int viewId,
  Pointer<Pointer<Utf16>> ppStr,
)>('MultipleViewPattern_GetViewName');

int MultipleViewPattern_SetCurrentView(
  int hobj,
  int viewId,
) =>
    _MultipleViewPattern_SetCurrentView(
      hobj,
      viewId,
    );

late final _MultipleViewPattern_SetCurrentView =
    _uiautomationcore.lookupFunction<
        Int32 Function(
  IntPtr hobj,
  Int32 viewId,
),
        int Function(
  int hobj,
  int viewId,
)>('MultipleViewPattern_SetCurrentView');

int RangeValuePattern_SetValue(
  int hobj,
  double val,
) =>
    _RangeValuePattern_SetValue(
      hobj,
      val,
    );

late final _RangeValuePattern_SetValue = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Double val,
),
    int Function(
  int hobj,
  double val,
)>('RangeValuePattern_SetValue');

int ScrollItemPattern_ScrollIntoView(
  int hobj,
) =>
    _ScrollItemPattern_ScrollIntoView(
      hobj,
    );

late final _ScrollItemPattern_ScrollIntoView = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
),
    int Function(
  int hobj,
)>('ScrollItemPattern_ScrollIntoView');

int ScrollPattern_Scroll(
  int hobj,
  int horizontalAmount,
  int verticalAmount,
) =>
    _ScrollPattern_Scroll(
      hobj,
      horizontalAmount,
      verticalAmount,
    );

late final _ScrollPattern_Scroll = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Int32 horizontalAmount,
  Int32 verticalAmount,
),
    int Function(
  int hobj,
  int horizontalAmount,
  int verticalAmount,
)>('ScrollPattern_Scroll');

int ScrollPattern_SetScrollPercent(
  int hobj,
  double horizontalPercent,
  double verticalPercent,
) =>
    _ScrollPattern_SetScrollPercent(
      hobj,
      horizontalPercent,
      verticalPercent,
    );

late final _ScrollPattern_SetScrollPercent = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Double horizontalPercent,
  Double verticalPercent,
),
    int Function(
  int hobj,
  double horizontalPercent,
  double verticalPercent,
)>('ScrollPattern_SetScrollPercent');

int SelectionItemPattern_AddToSelection(
  int hobj,
) =>
    _SelectionItemPattern_AddToSelection(
      hobj,
    );

late final _SelectionItemPattern_AddToSelection =
    _uiautomationcore.lookupFunction<
        Int32 Function(
  IntPtr hobj,
),
        int Function(
  int hobj,
)>('SelectionItemPattern_AddToSelection');

int SelectionItemPattern_RemoveFromSelection(
  int hobj,
) =>
    _SelectionItemPattern_RemoveFromSelection(
      hobj,
    );

late final _SelectionItemPattern_RemoveFromSelection =
    _uiautomationcore.lookupFunction<
        Int32 Function(
  IntPtr hobj,
),
        int Function(
  int hobj,
)>('SelectionItemPattern_RemoveFromSelection');

int SelectionItemPattern_Select(
  int hobj,
) =>
    _SelectionItemPattern_Select(
      hobj,
    );

late final _SelectionItemPattern_Select = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
),
    int Function(
  int hobj,
)>('SelectionItemPattern_Select');

int SynchronizedInputPattern_Cancel(
  int hobj,
) =>
    _SynchronizedInputPattern_Cancel(
      hobj,
    );

late final _SynchronizedInputPattern_Cancel = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
),
    int Function(
  int hobj,
)>('SynchronizedInputPattern_Cancel');

int SynchronizedInputPattern_StartListening(
  int hobj,
  int inputType,
) =>
    _SynchronizedInputPattern_StartListening(
      hobj,
      inputType,
    );

late final _SynchronizedInputPattern_StartListening =
    _uiautomationcore.lookupFunction<
        Int32 Function(
  IntPtr hobj,
  Int32 inputType,
),
        int Function(
  int hobj,
  int inputType,
)>('SynchronizedInputPattern_StartListening');

int TextPattern_GetSelection(
  int hobj,
  Pointer<Pointer<SAFEARRAY>> pRetVal,
) =>
    _TextPattern_GetSelection(
      hobj,
      pRetVal,
    );

late final _TextPattern_GetSelection = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Pointer<Pointer<SAFEARRAY>> pRetVal,
),
    int Function(
  int hobj,
  Pointer<Pointer<SAFEARRAY>> pRetVal,
)>('TextPattern_GetSelection');

int TextPattern_GetVisibleRanges(
  int hobj,
  Pointer<Pointer<SAFEARRAY>> pRetVal,
) =>
    _TextPattern_GetVisibleRanges(
      hobj,
      pRetVal,
    );

late final _TextPattern_GetVisibleRanges = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Pointer<Pointer<SAFEARRAY>> pRetVal,
),
    int Function(
  int hobj,
  Pointer<Pointer<SAFEARRAY>> pRetVal,
)>('TextPattern_GetVisibleRanges');

int TextPattern_RangeFromChild(
  int hobj,
  int hnodeChild,
  Pointer<IntPtr> pRetVal,
) =>
    _TextPattern_RangeFromChild(
      hobj,
      hnodeChild,
      pRetVal,
    );

late final _TextPattern_RangeFromChild = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  IntPtr hnodeChild,
  Pointer<IntPtr> pRetVal,
),
    int Function(
  int hobj,
  int hnodeChild,
  Pointer<IntPtr> pRetVal,
)>('TextPattern_RangeFromChild');

int TextPattern_RangeFromPoint(
  int hobj,
  UiaPoint point,
  Pointer<IntPtr> pRetVal,
) =>
    _TextPattern_RangeFromPoint(
      hobj,
      point,
      pRetVal,
    );

late final _TextPattern_RangeFromPoint = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  UiaPoint point,
  Pointer<IntPtr> pRetVal,
),
    int Function(
  int hobj,
  UiaPoint point,
  Pointer<IntPtr> pRetVal,
)>('TextPattern_RangeFromPoint');

int TextPattern_get_DocumentRange(
  int hobj,
  Pointer<IntPtr> pRetVal,
) =>
    _TextPattern_get_DocumentRange(
      hobj,
      pRetVal,
    );

late final _TextPattern_get_DocumentRange = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Pointer<IntPtr> pRetVal,
),
    int Function(
  int hobj,
  Pointer<IntPtr> pRetVal,
)>('TextPattern_get_DocumentRange');

int TextPattern_get_SupportedTextSelection(
  int hobj,
  Pointer<Int32> pRetVal,
) =>
    _TextPattern_get_SupportedTextSelection(
      hobj,
      pRetVal,
    );

late final _TextPattern_get_SupportedTextSelection =
    _uiautomationcore.lookupFunction<
        Int32 Function(
  IntPtr hobj,
  Pointer<Int32> pRetVal,
),
        int Function(
  int hobj,
  Pointer<Int32> pRetVal,
)>('TextPattern_get_SupportedTextSelection');

int TextRange_AddToSelection(
  int hobj,
) =>
    _TextRange_AddToSelection(
      hobj,
    );

late final _TextRange_AddToSelection = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
),
    int Function(
  int hobj,
)>('TextRange_AddToSelection');

int TextRange_Clone(
  int hobj,
  Pointer<IntPtr> pRetVal,
) =>
    _TextRange_Clone(
      hobj,
      pRetVal,
    );

late final _TextRange_Clone = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Pointer<IntPtr> pRetVal,
),
    int Function(
  int hobj,
  Pointer<IntPtr> pRetVal,
)>('TextRange_Clone');

int TextRange_Compare(
  int hobj,
  int range,
  Pointer<Int32> pRetVal,
) =>
    _TextRange_Compare(
      hobj,
      range,
      pRetVal,
    );

late final _TextRange_Compare = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  IntPtr range,
  Pointer<Int32> pRetVal,
),
    int Function(
  int hobj,
  int range,
  Pointer<Int32> pRetVal,
)>('TextRange_Compare');

int TextRange_CompareEndpoints(
  int hobj,
  int endpoint,
  int targetRange,
  int targetEndpoint,
  Pointer<Int32> pRetVal,
) =>
    _TextRange_CompareEndpoints(
      hobj,
      endpoint,
      targetRange,
      targetEndpoint,
      pRetVal,
    );

late final _TextRange_CompareEndpoints = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Int32 endpoint,
  IntPtr targetRange,
  Int32 targetEndpoint,
  Pointer<Int32> pRetVal,
),
    int Function(
  int hobj,
  int endpoint,
  int targetRange,
  int targetEndpoint,
  Pointer<Int32> pRetVal,
)>('TextRange_CompareEndpoints');

int TextRange_ExpandToEnclosingUnit(
  int hobj,
  int unit,
) =>
    _TextRange_ExpandToEnclosingUnit(
      hobj,
      unit,
    );

late final _TextRange_ExpandToEnclosingUnit = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Int32 unit,
),
    int Function(
  int hobj,
  int unit,
)>('TextRange_ExpandToEnclosingUnit');

int TextRange_FindAttribute(
  int hobj,
  int attributeId,
  VARIANT val,
  int backward,
  Pointer<IntPtr> pRetVal,
) =>
    _TextRange_FindAttribute(
      hobj,
      attributeId,
      val,
      backward,
      pRetVal,
    );

late final _TextRange_FindAttribute = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Int32 attributeId,
  VARIANT val,
  Int32 backward,
  Pointer<IntPtr> pRetVal,
),
    int Function(
  int hobj,
  int attributeId,
  VARIANT val,
  int backward,
  Pointer<IntPtr> pRetVal,
)>('TextRange_FindAttribute');

int TextRange_FindText(
  int hobj,
  Pointer<Utf16> text,
  int backward,
  int ignoreCase,
  Pointer<IntPtr> pRetVal,
) =>
    _TextRange_FindText(
      hobj,
      text,
      backward,
      ignoreCase,
      pRetVal,
    );

late final _TextRange_FindText = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Pointer<Utf16> text,
  Int32 backward,
  Int32 ignoreCase,
  Pointer<IntPtr> pRetVal,
),
    int Function(
  int hobj,
  Pointer<Utf16> text,
  int backward,
  int ignoreCase,
  Pointer<IntPtr> pRetVal,
)>('TextRange_FindText');

int TextRange_GetAttributeValue(
  int hobj,
  int attributeId,
  Pointer<VARIANT> pRetVal,
) =>
    _TextRange_GetAttributeValue(
      hobj,
      attributeId,
      pRetVal,
    );

late final _TextRange_GetAttributeValue = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Int32 attributeId,
  Pointer<VARIANT> pRetVal,
),
    int Function(
  int hobj,
  int attributeId,
  Pointer<VARIANT> pRetVal,
)>('TextRange_GetAttributeValue');

int TextRange_GetBoundingRectangles(
  int hobj,
  Pointer<Pointer<SAFEARRAY>> pRetVal,
) =>
    _TextRange_GetBoundingRectangles(
      hobj,
      pRetVal,
    );

late final _TextRange_GetBoundingRectangles = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Pointer<Pointer<SAFEARRAY>> pRetVal,
),
    int Function(
  int hobj,
  Pointer<Pointer<SAFEARRAY>> pRetVal,
)>('TextRange_GetBoundingRectangles');

int TextRange_GetChildren(
  int hobj,
  Pointer<Pointer<SAFEARRAY>> pRetVal,
) =>
    _TextRange_GetChildren(
      hobj,
      pRetVal,
    );

late final _TextRange_GetChildren = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Pointer<Pointer<SAFEARRAY>> pRetVal,
),
    int Function(
  int hobj,
  Pointer<Pointer<SAFEARRAY>> pRetVal,
)>('TextRange_GetChildren');

int TextRange_GetEnclosingElement(
  int hobj,
  Pointer<IntPtr> pRetVal,
) =>
    _TextRange_GetEnclosingElement(
      hobj,
      pRetVal,
    );

late final _TextRange_GetEnclosingElement = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Pointer<IntPtr> pRetVal,
),
    int Function(
  int hobj,
  Pointer<IntPtr> pRetVal,
)>('TextRange_GetEnclosingElement');

int TextRange_GetText(
  int hobj,
  int maxLength,
  Pointer<Pointer<Utf16>> pRetVal,
) =>
    _TextRange_GetText(
      hobj,
      maxLength,
      pRetVal,
    );

late final _TextRange_GetText = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Int32 maxLength,
  Pointer<Pointer<Utf16>> pRetVal,
),
    int Function(
  int hobj,
  int maxLength,
  Pointer<Pointer<Utf16>> pRetVal,
)>('TextRange_GetText');

int TextRange_Move(
  int hobj,
  int unit,
  int count,
  Pointer<Int32> pRetVal,
) =>
    _TextRange_Move(
      hobj,
      unit,
      count,
      pRetVal,
    );

late final _TextRange_Move = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Int32 unit,
  Int32 count,
  Pointer<Int32> pRetVal,
),
    int Function(
  int hobj,
  int unit,
  int count,
  Pointer<Int32> pRetVal,
)>('TextRange_Move');

int TextRange_MoveEndpointByRange(
  int hobj,
  int endpoint,
  int targetRange,
  int targetEndpoint,
) =>
    _TextRange_MoveEndpointByRange(
      hobj,
      endpoint,
      targetRange,
      targetEndpoint,
    );

late final _TextRange_MoveEndpointByRange = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Int32 endpoint,
  IntPtr targetRange,
  Int32 targetEndpoint,
),
    int Function(
  int hobj,
  int endpoint,
  int targetRange,
  int targetEndpoint,
)>('TextRange_MoveEndpointByRange');

int TextRange_MoveEndpointByUnit(
  int hobj,
  int endpoint,
  int unit,
  int count,
  Pointer<Int32> pRetVal,
) =>
    _TextRange_MoveEndpointByUnit(
      hobj,
      endpoint,
      unit,
      count,
      pRetVal,
    );

late final _TextRange_MoveEndpointByUnit = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Int32 endpoint,
  Int32 unit,
  Int32 count,
  Pointer<Int32> pRetVal,
),
    int Function(
  int hobj,
  int endpoint,
  int unit,
  int count,
  Pointer<Int32> pRetVal,
)>('TextRange_MoveEndpointByUnit');

int TextRange_RemoveFromSelection(
  int hobj,
) =>
    _TextRange_RemoveFromSelection(
      hobj,
    );

late final _TextRange_RemoveFromSelection = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
),
    int Function(
  int hobj,
)>('TextRange_RemoveFromSelection');

int TextRange_ScrollIntoView(
  int hobj,
  int alignToTop,
) =>
    _TextRange_ScrollIntoView(
      hobj,
      alignToTop,
    );

late final _TextRange_ScrollIntoView = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Int32 alignToTop,
),
    int Function(
  int hobj,
  int alignToTop,
)>('TextRange_ScrollIntoView');

int TextRange_Select(
  int hobj,
) =>
    _TextRange_Select(
      hobj,
    );

late final _TextRange_Select = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
),
    int Function(
  int hobj,
)>('TextRange_Select');

int TogglePattern_Toggle(
  int hobj,
) =>
    _TogglePattern_Toggle(
      hobj,
    );

late final _TogglePattern_Toggle = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
),
    int Function(
  int hobj,
)>('TogglePattern_Toggle');

int TransformPattern_Move(
  int hobj,
  double x,
  double y,
) =>
    _TransformPattern_Move(
      hobj,
      x,
      y,
    );

late final _TransformPattern_Move = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Double x,
  Double y,
),
    int Function(
  int hobj,
  double x,
  double y,
)>('TransformPattern_Move');

int TransformPattern_Resize(
  int hobj,
  double width,
  double height,
) =>
    _TransformPattern_Resize(
      hobj,
      width,
      height,
    );

late final _TransformPattern_Resize = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Double width,
  Double height,
),
    int Function(
  int hobj,
  double width,
  double height,
)>('TransformPattern_Resize');

int TransformPattern_Rotate(
  int hobj,
  double degrees,
) =>
    _TransformPattern_Rotate(
      hobj,
      degrees,
    );

late final _TransformPattern_Rotate = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Double degrees,
),
    int Function(
  int hobj,
  double degrees,
)>('TransformPattern_Rotate');

int UiaAddEvent(
  int hnode,
  int eventId,
  Pointer<Pointer<NativeFunction<UiaEventCallback>>> pCallback,
  int scope,
  Pointer<Int32> pProperties,
  int cProperties,
  Pointer<UiaCacheRequest> pRequest,
  Pointer<IntPtr> phEvent,
) =>
    _UiaAddEvent(
      hnode,
      eventId,
      pCallback,
      scope,
      pProperties,
      cProperties,
      pRequest,
      phEvent,
    );

late final _UiaAddEvent = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hnode,
  Int32 eventId,
  Pointer<Pointer<NativeFunction<UiaEventCallback>>> pCallback,
  Int32 scope,
  Pointer<Int32> pProperties,
  Int32 cProperties,
  Pointer<UiaCacheRequest> pRequest,
  Pointer<IntPtr> phEvent,
),
    int Function(
  int hnode,
  int eventId,
  Pointer<Pointer<NativeFunction<UiaEventCallback>>> pCallback,
  int scope,
  Pointer<Int32> pProperties,
  int cProperties,
  Pointer<UiaCacheRequest> pRequest,
  Pointer<IntPtr> phEvent,
)>('UiaAddEvent');

int UiaClientsAreListening() => _UiaClientsAreListening();

late final _UiaClientsAreListening = _uiautomationcore
    .lookupFunction<Int32 Function(), int Function()>('UiaClientsAreListening');

int UiaDisconnectAllProviders() => _UiaDisconnectAllProviders();

late final _UiaDisconnectAllProviders =
    _uiautomationcore.lookupFunction<Int32 Function(), int Function()>(
        'UiaDisconnectAllProviders');

int UiaDisconnectProvider(
  Pointer<COMObject> pProvider,
) =>
    _UiaDisconnectProvider(
      pProvider,
    );

late final _UiaDisconnectProvider = _uiautomationcore.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pProvider,
),
    int Function(
  Pointer<COMObject> pProvider,
)>('UiaDisconnectProvider');

int UiaEventAddWindow(
  int hEvent,
  int hwnd,
) =>
    _UiaEventAddWindow(
      hEvent,
      hwnd,
    );

late final _UiaEventAddWindow = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hEvent,
  IntPtr hwnd,
),
    int Function(
  int hEvent,
  int hwnd,
)>('UiaEventAddWindow');

int UiaEventRemoveWindow(
  int hEvent,
  int hwnd,
) =>
    _UiaEventRemoveWindow(
      hEvent,
      hwnd,
    );

late final _UiaEventRemoveWindow = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hEvent,
  IntPtr hwnd,
),
    int Function(
  int hEvent,
  int hwnd,
)>('UiaEventRemoveWindow');

int UiaFind(
  int hnode,
  Pointer<UiaFindParams> pParams,
  Pointer<UiaCacheRequest> pRequest,
  Pointer<Pointer<SAFEARRAY>> ppRequestedData,
  Pointer<Pointer<SAFEARRAY>> ppOffsets,
  Pointer<Pointer<SAFEARRAY>> ppTreeStructures,
) =>
    _UiaFind(
      hnode,
      pParams,
      pRequest,
      ppRequestedData,
      ppOffsets,
      ppTreeStructures,
    );

late final _UiaFind = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hnode,
  Pointer<UiaFindParams> pParams,
  Pointer<UiaCacheRequest> pRequest,
  Pointer<Pointer<SAFEARRAY>> ppRequestedData,
  Pointer<Pointer<SAFEARRAY>> ppOffsets,
  Pointer<Pointer<SAFEARRAY>> ppTreeStructures,
),
    int Function(
  int hnode,
  Pointer<UiaFindParams> pParams,
  Pointer<UiaCacheRequest> pRequest,
  Pointer<Pointer<SAFEARRAY>> ppRequestedData,
  Pointer<Pointer<SAFEARRAY>> ppOffsets,
  Pointer<Pointer<SAFEARRAY>> ppTreeStructures,
)>('UiaFind');

int UiaGetErrorDescription(
  Pointer<Pointer<Utf16>> pDescription,
) =>
    _UiaGetErrorDescription(
      pDescription,
    );

late final _UiaGetErrorDescription = _uiautomationcore.lookupFunction<
    Int32 Function(
  Pointer<Pointer<Utf16>> pDescription,
),
    int Function(
  Pointer<Pointer<Utf16>> pDescription,
)>('UiaGetErrorDescription');

int UiaGetPatternProvider(
  int hnode,
  int patternId,
  Pointer<IntPtr> phobj,
) =>
    _UiaGetPatternProvider(
      hnode,
      patternId,
      phobj,
    );

late final _UiaGetPatternProvider = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hnode,
  Int32 patternId,
  Pointer<IntPtr> phobj,
),
    int Function(
  int hnode,
  int patternId,
  Pointer<IntPtr> phobj,
)>('UiaGetPatternProvider');

int UiaGetPropertyValue(
  int hnode,
  int propertyId,
  Pointer<VARIANT> pValue,
) =>
    _UiaGetPropertyValue(
      hnode,
      propertyId,
      pValue,
    );

late final _UiaGetPropertyValue = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hnode,
  Int32 propertyId,
  Pointer<VARIANT> pValue,
),
    int Function(
  int hnode,
  int propertyId,
  Pointer<VARIANT> pValue,
)>('UiaGetPropertyValue');

int UiaGetReservedMixedAttributeValue(
  Pointer<Pointer<COMObject>> punkMixedAttributeValue,
) =>
    _UiaGetReservedMixedAttributeValue(
      punkMixedAttributeValue,
    );

late final _UiaGetReservedMixedAttributeValue =
    _uiautomationcore.lookupFunction<
        Int32 Function(
  Pointer<Pointer<COMObject>> punkMixedAttributeValue,
),
        int Function(
  Pointer<Pointer<COMObject>> punkMixedAttributeValue,
)>('UiaGetReservedMixedAttributeValue');

int UiaGetReservedNotSupportedValue(
  Pointer<Pointer<COMObject>> punkNotSupportedValue,
) =>
    _UiaGetReservedNotSupportedValue(
      punkNotSupportedValue,
    );

late final _UiaGetReservedNotSupportedValue = _uiautomationcore.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> punkNotSupportedValue,
),
    int Function(
  Pointer<Pointer<COMObject>> punkNotSupportedValue,
)>('UiaGetReservedNotSupportedValue');

int UiaGetRootNode(
  Pointer<IntPtr> phnode,
) =>
    _UiaGetRootNode(
      phnode,
    );

late final _UiaGetRootNode = _uiautomationcore.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> phnode,
),
    int Function(
  Pointer<IntPtr> phnode,
)>('UiaGetRootNode');

int UiaGetRuntimeId(
  int hnode,
  Pointer<Pointer<SAFEARRAY>> pruntimeId,
) =>
    _UiaGetRuntimeId(
      hnode,
      pruntimeId,
    );

late final _UiaGetRuntimeId = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hnode,
  Pointer<Pointer<SAFEARRAY>> pruntimeId,
),
    int Function(
  int hnode,
  Pointer<Pointer<SAFEARRAY>> pruntimeId,
)>('UiaGetRuntimeId');

int UiaGetUpdatedCache(
  int hnode,
  Pointer<UiaCacheRequest> pRequest,
  int normalizeState,
  Pointer<UiaCondition> pNormalizeCondition,
  Pointer<Pointer<SAFEARRAY>> ppRequestedData,
  Pointer<Pointer<Utf16>> ppTreeStructure,
) =>
    _UiaGetUpdatedCache(
      hnode,
      pRequest,
      normalizeState,
      pNormalizeCondition,
      ppRequestedData,
      ppTreeStructure,
    );

late final _UiaGetUpdatedCache = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hnode,
  Pointer<UiaCacheRequest> pRequest,
  Int32 normalizeState,
  Pointer<UiaCondition> pNormalizeCondition,
  Pointer<Pointer<SAFEARRAY>> ppRequestedData,
  Pointer<Pointer<Utf16>> ppTreeStructure,
),
    int Function(
  int hnode,
  Pointer<UiaCacheRequest> pRequest,
  int normalizeState,
  Pointer<UiaCondition> pNormalizeCondition,
  Pointer<Pointer<SAFEARRAY>> ppRequestedData,
  Pointer<Pointer<Utf16>> ppTreeStructure,
)>('UiaGetUpdatedCache');

int UiaHPatternObjectFromVariant(
  Pointer<VARIANT> pvar,
  Pointer<IntPtr> phobj,
) =>
    _UiaHPatternObjectFromVariant(
      pvar,
      phobj,
    );

late final _UiaHPatternObjectFromVariant = _uiautomationcore.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> pvar,
  Pointer<IntPtr> phobj,
),
    int Function(
  Pointer<VARIANT> pvar,
  Pointer<IntPtr> phobj,
)>('UiaHPatternObjectFromVariant');

int UiaHTextRangeFromVariant(
  Pointer<VARIANT> pvar,
  Pointer<IntPtr> phtextrange,
) =>
    _UiaHTextRangeFromVariant(
      pvar,
      phtextrange,
    );

late final _UiaHTextRangeFromVariant = _uiautomationcore.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> pvar,
  Pointer<IntPtr> phtextrange,
),
    int Function(
  Pointer<VARIANT> pvar,
  Pointer<IntPtr> phtextrange,
)>('UiaHTextRangeFromVariant');

int UiaHUiaNodeFromVariant(
  Pointer<VARIANT> pvar,
  Pointer<IntPtr> phnode,
) =>
    _UiaHUiaNodeFromVariant(
      pvar,
      phnode,
    );

late final _UiaHUiaNodeFromVariant = _uiautomationcore.lookupFunction<
    Int32 Function(
  Pointer<VARIANT> pvar,
  Pointer<IntPtr> phnode,
),
    int Function(
  Pointer<VARIANT> pvar,
  Pointer<IntPtr> phnode,
)>('UiaHUiaNodeFromVariant');

int UiaHasServerSideProvider(
  int hwnd,
) =>
    _UiaHasServerSideProvider(
      hwnd,
    );

late final _UiaHasServerSideProvider = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('UiaHasServerSideProvider');

int UiaHostProviderFromHwnd(
  int hwnd,
  Pointer<Pointer<COMObject>> ppProvider,
) =>
    _UiaHostProviderFromHwnd(
      hwnd,
      ppProvider,
    );

late final _UiaHostProviderFromHwnd = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Pointer<COMObject>> ppProvider,
),
    int Function(
  int hwnd,
  Pointer<Pointer<COMObject>> ppProvider,
)>('UiaHostProviderFromHwnd');

int UiaIAccessibleFromProvider(
  Pointer<COMObject> pProvider,
  int dwFlags,
  Pointer<Pointer<COMObject>> ppAccessible,
  Pointer<VARIANT> pvarChild,
) =>
    _UiaIAccessibleFromProvider(
      pProvider,
      dwFlags,
      ppAccessible,
      pvarChild,
    );

late final _UiaIAccessibleFromProvider = _uiautomationcore.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pProvider,
  Uint32 dwFlags,
  Pointer<Pointer<COMObject>> ppAccessible,
  Pointer<VARIANT> pvarChild,
),
    int Function(
  Pointer<COMObject> pProvider,
  int dwFlags,
  Pointer<Pointer<COMObject>> ppAccessible,
  Pointer<VARIANT> pvarChild,
)>('UiaIAccessibleFromProvider');

int UiaLookupId(
  int type,
  Pointer<GUID> pGuid,
) =>
    _UiaLookupId(
      type,
      pGuid,
    );

late final _UiaLookupId = _uiautomationcore.lookupFunction<
    Int32 Function(
  Int32 type,
  Pointer<GUID> pGuid,
),
    int Function(
  int type,
  Pointer<GUID> pGuid,
)>('UiaLookupId');

int UiaNavigate(
  int hnode,
  int direction,
  Pointer<UiaCondition> pCondition,
  Pointer<UiaCacheRequest> pRequest,
  Pointer<Pointer<SAFEARRAY>> ppRequestedData,
  Pointer<Pointer<Utf16>> ppTreeStructure,
) =>
    _UiaNavigate(
      hnode,
      direction,
      pCondition,
      pRequest,
      ppRequestedData,
      ppTreeStructure,
    );

late final _UiaNavigate = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hnode,
  Int32 direction,
  Pointer<UiaCondition> pCondition,
  Pointer<UiaCacheRequest> pRequest,
  Pointer<Pointer<SAFEARRAY>> ppRequestedData,
  Pointer<Pointer<Utf16>> ppTreeStructure,
),
    int Function(
  int hnode,
  int direction,
  Pointer<UiaCondition> pCondition,
  Pointer<UiaCacheRequest> pRequest,
  Pointer<Pointer<SAFEARRAY>> ppRequestedData,
  Pointer<Pointer<Utf16>> ppTreeStructure,
)>('UiaNavigate');

int UiaNodeFromFocus(
  Pointer<UiaCacheRequest> pRequest,
  Pointer<Pointer<SAFEARRAY>> ppRequestedData,
  Pointer<Pointer<Utf16>> ppTreeStructure,
) =>
    _UiaNodeFromFocus(
      pRequest,
      ppRequestedData,
      ppTreeStructure,
    );

late final _UiaNodeFromFocus = _uiautomationcore.lookupFunction<
    Int32 Function(
  Pointer<UiaCacheRequest> pRequest,
  Pointer<Pointer<SAFEARRAY>> ppRequestedData,
  Pointer<Pointer<Utf16>> ppTreeStructure,
),
    int Function(
  Pointer<UiaCacheRequest> pRequest,
  Pointer<Pointer<SAFEARRAY>> ppRequestedData,
  Pointer<Pointer<Utf16>> ppTreeStructure,
)>('UiaNodeFromFocus');

int UiaNodeFromHandle(
  int hwnd,
  Pointer<IntPtr> phnode,
) =>
    _UiaNodeFromHandle(
      hwnd,
      phnode,
    );

late final _UiaNodeFromHandle = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<IntPtr> phnode,
),
    int Function(
  int hwnd,
  Pointer<IntPtr> phnode,
)>('UiaNodeFromHandle');

int UiaNodeFromPoint(
  double x,
  double y,
  Pointer<UiaCacheRequest> pRequest,
  Pointer<Pointer<SAFEARRAY>> ppRequestedData,
  Pointer<Pointer<Utf16>> ppTreeStructure,
) =>
    _UiaNodeFromPoint(
      x,
      y,
      pRequest,
      ppRequestedData,
      ppTreeStructure,
    );

late final _UiaNodeFromPoint = _uiautomationcore.lookupFunction<
    Int32 Function(
  Double x,
  Double y,
  Pointer<UiaCacheRequest> pRequest,
  Pointer<Pointer<SAFEARRAY>> ppRequestedData,
  Pointer<Pointer<Utf16>> ppTreeStructure,
),
    int Function(
  double x,
  double y,
  Pointer<UiaCacheRequest> pRequest,
  Pointer<Pointer<SAFEARRAY>> ppRequestedData,
  Pointer<Pointer<Utf16>> ppTreeStructure,
)>('UiaNodeFromPoint');

int UiaNodeFromProvider(
  Pointer<COMObject> pProvider,
  Pointer<IntPtr> phnode,
) =>
    _UiaNodeFromProvider(
      pProvider,
      phnode,
    );

late final _UiaNodeFromProvider = _uiautomationcore.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pProvider,
  Pointer<IntPtr> phnode,
),
    int Function(
  Pointer<COMObject> pProvider,
  Pointer<IntPtr> phnode,
)>('UiaNodeFromProvider');

int UiaNodeRelease(
  int hnode,
) =>
    _UiaNodeRelease(
      hnode,
    );

late final _UiaNodeRelease = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hnode,
),
    int Function(
  int hnode,
)>('UiaNodeRelease');

int UiaPatternRelease(
  int hobj,
) =>
    _UiaPatternRelease(
      hobj,
    );

late final _UiaPatternRelease = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
),
    int Function(
  int hobj,
)>('UiaPatternRelease');

int UiaProviderForNonClient(
  int hwnd,
  int idObject,
  int idChild,
  Pointer<Pointer<COMObject>> ppProvider,
) =>
    _UiaProviderForNonClient(
      hwnd,
      idObject,
      idChild,
      ppProvider,
    );

late final _UiaProviderForNonClient = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 idObject,
  Int32 idChild,
  Pointer<Pointer<COMObject>> ppProvider,
),
    int Function(
  int hwnd,
  int idObject,
  int idChild,
  Pointer<Pointer<COMObject>> ppProvider,
)>('UiaProviderForNonClient');

int UiaProviderFromIAccessible(
  Pointer<COMObject> pAccessible,
  int idChild,
  int dwFlags,
  Pointer<Pointer<COMObject>> ppProvider,
) =>
    _UiaProviderFromIAccessible(
      pAccessible,
      idChild,
      dwFlags,
      ppProvider,
    );

late final _UiaProviderFromIAccessible = _uiautomationcore.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pAccessible,
  Int32 idChild,
  Uint32 dwFlags,
  Pointer<Pointer<COMObject>> ppProvider,
),
    int Function(
  Pointer<COMObject> pAccessible,
  int idChild,
  int dwFlags,
  Pointer<Pointer<COMObject>> ppProvider,
)>('UiaProviderFromIAccessible');

int UiaRaiseActiveTextPositionChangedEvent(
  Pointer<COMObject> provider,
  Pointer<COMObject> textRange,
) =>
    _UiaRaiseActiveTextPositionChangedEvent(
      provider,
      textRange,
    );

late final _UiaRaiseActiveTextPositionChangedEvent =
    _uiautomationcore.lookupFunction<
        Int32 Function(
  Pointer<COMObject> provider,
  Pointer<COMObject> textRange,
),
        int Function(
  Pointer<COMObject> provider,
  Pointer<COMObject> textRange,
)>('UiaRaiseActiveTextPositionChangedEvent');

int UiaRaiseAsyncContentLoadedEvent(
  Pointer<COMObject> pProvider,
  int asyncContentLoadedState,
  double percentComplete,
) =>
    _UiaRaiseAsyncContentLoadedEvent(
      pProvider,
      asyncContentLoadedState,
      percentComplete,
    );

late final _UiaRaiseAsyncContentLoadedEvent = _uiautomationcore.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pProvider,
  Int32 asyncContentLoadedState,
  Double percentComplete,
),
    int Function(
  Pointer<COMObject> pProvider,
  int asyncContentLoadedState,
  double percentComplete,
)>('UiaRaiseAsyncContentLoadedEvent');

int UiaRaiseAutomationEvent(
  Pointer<COMObject> pProvider,
  int id,
) =>
    _UiaRaiseAutomationEvent(
      pProvider,
      id,
    );

late final _UiaRaiseAutomationEvent = _uiautomationcore.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pProvider,
  Int32 id,
),
    int Function(
  Pointer<COMObject> pProvider,
  int id,
)>('UiaRaiseAutomationEvent');

int UiaRaiseAutomationPropertyChangedEvent(
  Pointer<COMObject> pProvider,
  int id,
  VARIANT oldValue,
  VARIANT newValue,
) =>
    _UiaRaiseAutomationPropertyChangedEvent(
      pProvider,
      id,
      oldValue,
      newValue,
    );

late final _UiaRaiseAutomationPropertyChangedEvent =
    _uiautomationcore.lookupFunction<
        Int32 Function(
  Pointer<COMObject> pProvider,
  Int32 id,
  VARIANT oldValue,
  VARIANT newValue,
),
        int Function(
  Pointer<COMObject> pProvider,
  int id,
  VARIANT oldValue,
  VARIANT newValue,
)>('UiaRaiseAutomationPropertyChangedEvent');

int UiaRaiseChangesEvent(
  Pointer<COMObject> pProvider,
  int eventIdCount,
  Pointer<UiaChangeInfo> pUiaChanges,
) =>
    _UiaRaiseChangesEvent(
      pProvider,
      eventIdCount,
      pUiaChanges,
    );

late final _UiaRaiseChangesEvent = _uiautomationcore.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pProvider,
  Int32 eventIdCount,
  Pointer<UiaChangeInfo> pUiaChanges,
),
    int Function(
  Pointer<COMObject> pProvider,
  int eventIdCount,
  Pointer<UiaChangeInfo> pUiaChanges,
)>('UiaRaiseChangesEvent');

int UiaRaiseNotificationEvent(
  Pointer<COMObject> provider,
  int notificationKind,
  int notificationProcessing,
  Pointer<Utf16> displayString,
  Pointer<Utf16> activityId,
) =>
    _UiaRaiseNotificationEvent(
      provider,
      notificationKind,
      notificationProcessing,
      displayString,
      activityId,
    );

late final _UiaRaiseNotificationEvent = _uiautomationcore.lookupFunction<
    Int32 Function(
  Pointer<COMObject> provider,
  Int32 notificationKind,
  Int32 notificationProcessing,
  Pointer<Utf16> displayString,
  Pointer<Utf16> activityId,
),
    int Function(
  Pointer<COMObject> provider,
  int notificationKind,
  int notificationProcessing,
  Pointer<Utf16> displayString,
  Pointer<Utf16> activityId,
)>('UiaRaiseNotificationEvent');

int UiaRaiseStructureChangedEvent(
  Pointer<COMObject> pProvider,
  int structureChangeType,
  Pointer<Int32> pRuntimeId,
  int cRuntimeIdLen,
) =>
    _UiaRaiseStructureChangedEvent(
      pProvider,
      structureChangeType,
      pRuntimeId,
      cRuntimeIdLen,
    );

late final _UiaRaiseStructureChangedEvent = _uiautomationcore.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pProvider,
  Int32 structureChangeType,
  Pointer<Int32> pRuntimeId,
  Int32 cRuntimeIdLen,
),
    int Function(
  Pointer<COMObject> pProvider,
  int structureChangeType,
  Pointer<Int32> pRuntimeId,
  int cRuntimeIdLen,
)>('UiaRaiseStructureChangedEvent');

int UiaRaiseTextEditTextChangedEvent(
  Pointer<COMObject> pProvider,
  int textEditChangeType,
  Pointer<SAFEARRAY> pChangedData,
) =>
    _UiaRaiseTextEditTextChangedEvent(
      pProvider,
      textEditChangeType,
      pChangedData,
    );

late final _UiaRaiseTextEditTextChangedEvent = _uiautomationcore.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pProvider,
  Int32 textEditChangeType,
  Pointer<SAFEARRAY> pChangedData,
),
    int Function(
  Pointer<COMObject> pProvider,
  int textEditChangeType,
  Pointer<SAFEARRAY> pChangedData,
)>('UiaRaiseTextEditTextChangedEvent');

void UiaRegisterProviderCallback(
  Pointer<Pointer<NativeFunction<UiaProviderCallback>>> pCallback,
) =>
    _UiaRegisterProviderCallback(
      pCallback,
    );

late final _UiaRegisterProviderCallback = _uiautomationcore.lookupFunction<
    Void Function(
  Pointer<Pointer<NativeFunction<UiaProviderCallback>>> pCallback,
),
    void Function(
  Pointer<Pointer<NativeFunction<UiaProviderCallback>>> pCallback,
)>('UiaRegisterProviderCallback');

int UiaRemoveEvent(
  int hEvent,
) =>
    _UiaRemoveEvent(
      hEvent,
    );

late final _UiaRemoveEvent = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hEvent,
),
    int Function(
  int hEvent,
)>('UiaRemoveEvent');

int UiaReturnRawElementProvider(
  int hwnd,
  int wParam,
  int lParam,
  Pointer<COMObject> el,
) =>
    _UiaReturnRawElementProvider(
      hwnd,
      wParam,
      lParam,
      el,
    );

late final _UiaReturnRawElementProvider = _uiautomationcore.lookupFunction<
    IntPtr Function(
  IntPtr hwnd,
  IntPtr wParam,
  IntPtr lParam,
  Pointer<COMObject> el,
),
    int Function(
  int hwnd,
  int wParam,
  int lParam,
  Pointer<COMObject> el,
)>('UiaReturnRawElementProvider');

int UiaSetFocus(
  int hnode,
) =>
    _UiaSetFocus(
      hnode,
    );

late final _UiaSetFocus = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hnode,
),
    int Function(
  int hnode,
)>('UiaSetFocus');

int UiaTextRangeRelease(
  int hobj,
) =>
    _UiaTextRangeRelease(
      hobj,
    );

late final _UiaTextRangeRelease = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
),
    int Function(
  int hobj,
)>('UiaTextRangeRelease');

int ValuePattern_SetValue(
  int hobj,
  Pointer<Utf16> pVal,
) =>
    _ValuePattern_SetValue(
      hobj,
      pVal,
    );

late final _ValuePattern_SetValue = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Pointer<Utf16> pVal,
),
    int Function(
  int hobj,
  Pointer<Utf16> pVal,
)>('ValuePattern_SetValue');

int VirtualizedItemPattern_Realize(
  int hobj,
) =>
    _VirtualizedItemPattern_Realize(
      hobj,
    );

late final _VirtualizedItemPattern_Realize = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
),
    int Function(
  int hobj,
)>('VirtualizedItemPattern_Realize');

int WindowPattern_Close(
  int hobj,
) =>
    _WindowPattern_Close(
      hobj,
    );

late final _WindowPattern_Close = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
),
    int Function(
  int hobj,
)>('WindowPattern_Close');

int WindowPattern_SetWindowVisualState(
  int hobj,
  int state,
) =>
    _WindowPattern_SetWindowVisualState(
      hobj,
      state,
    );

late final _WindowPattern_SetWindowVisualState =
    _uiautomationcore.lookupFunction<
        Int32 Function(
  IntPtr hobj,
  Int32 state,
),
        int Function(
  int hobj,
  int state,
)>('WindowPattern_SetWindowVisualState');

int WindowPattern_WaitForInputIdle(
  int hobj,
  int milliseconds,
  Pointer<Int32> pResult,
) =>
    _WindowPattern_WaitForInputIdle(
      hobj,
      milliseconds,
      pResult,
    );

late final _WindowPattern_WaitForInputIdle = _uiautomationcore.lookupFunction<
    Int32 Function(
  IntPtr hobj,
  Int32 milliseconds,
  Pointer<Int32> pResult,
),
    int Function(
  int hobj,
  int milliseconds,
  Pointer<Int32> pResult,
)>('WindowPattern_WaitForInputIdle');

// -----------------------------------------------------------------------
// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int IsWinEventHookInstalled(
  int event,
) =>
    _IsWinEventHookInstalled(
      event,
    );

late final _IsWinEventHookInstalled = _user32.lookupFunction<
    Int32 Function(
  Uint32 event,
),
    int Function(
  int event,
)>('IsWinEventHookInstalled');

void NotifyWinEvent(
  int event,
  int hwnd,
  int idObject,
  int idChild,
) =>
    _NotifyWinEvent(
      event,
      hwnd,
      idObject,
      idChild,
    );

late final _NotifyWinEvent = _user32.lookupFunction<
    Void Function(
  Uint32 event,
  IntPtr hwnd,
  Int32 idObject,
  Int32 idChild,
),
    void Function(
  int event,
  int hwnd,
  int idObject,
  int idChild,
)>('NotifyWinEvent');

int RegisterPointerInputTarget(
  int hwnd,
  int pointerType,
) =>
    _RegisterPointerInputTarget(
      hwnd,
      pointerType,
    );

late final _RegisterPointerInputTarget = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 pointerType,
),
    int Function(
  int hwnd,
  int pointerType,
)>('RegisterPointerInputTarget');

int RegisterPointerInputTargetEx(
  int hwnd,
  int pointerType,
  int fObserve,
) =>
    _RegisterPointerInputTargetEx(
      hwnd,
      pointerType,
      fObserve,
    );

late final _RegisterPointerInputTargetEx = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 pointerType,
  Int32 fObserve,
),
    int Function(
  int hwnd,
  int pointerType,
  int fObserve,
)>('RegisterPointerInputTargetEx');

int SetWinEventHook(
  int eventMin,
  int eventMax,
  int hmodWinEventProc,
  Pointer<NativeFunction<WINEVENTPROC>> pfnWinEventProc,
  int idProcess,
  int idThread,
  int dwFlags,
) =>
    _SetWinEventHook(
      eventMin,
      eventMax,
      hmodWinEventProc,
      pfnWinEventProc,
      idProcess,
      idThread,
      dwFlags,
    );

late final _SetWinEventHook = _user32.lookupFunction<
    IntPtr Function(
  Uint32 eventMin,
  Uint32 eventMax,
  IntPtr hmodWinEventProc,
  Pointer<NativeFunction<WINEVENTPROC>> pfnWinEventProc,
  Uint32 idProcess,
  Uint32 idThread,
  Uint32 dwFlags,
),
    int Function(
  int eventMin,
  int eventMax,
  int hmodWinEventProc,
  Pointer<NativeFunction<WINEVENTPROC>> pfnWinEventProc,
  int idProcess,
  int idThread,
  int dwFlags,
)>('SetWinEventHook');

int UnhookWinEvent(
  int hWinEventHook,
) =>
    _UnhookWinEvent(
      hWinEventHook,
    );

late final _UnhookWinEvent = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWinEventHook,
),
    int Function(
  int hWinEventHook,
)>('UnhookWinEvent');

int UnregisterPointerInputTarget(
  int hwnd,
  int pointerType,
) =>
    _UnregisterPointerInputTarget(
      hwnd,
      pointerType,
    );

late final _UnregisterPointerInputTarget = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 pointerType,
),
    int Function(
  int hwnd,
  int pointerType,
)>('UnregisterPointerInputTarget');

int UnregisterPointerInputTargetEx(
  int hwnd,
  int pointerType,
) =>
    _UnregisterPointerInputTargetEx(
      hwnd,
      pointerType,
    );

late final _UnregisterPointerInputTargetEx = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 pointerType,
),
    int Function(
  int hwnd,
  int pointerType,
)>('UnregisterPointerInputTargetEx');
