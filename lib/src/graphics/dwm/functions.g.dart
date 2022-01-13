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
import '../../graphics/dwm/structs.g.dart';
import '../../ui/controls/structs.g.dart';
import '../../graphics/gdi/structs.g.dart'; // -----------------------------------------------------------------------

// dwmapi.dll
// -----------------------------------------------------------------------
final _dwmapi = DynamicLibrary.open('dwmapi.dll');

int DwmAttachMilContent(
  int hwnd,
) =>
    _DwmAttachMilContent(
      hwnd,
    );

late final _DwmAttachMilContent = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('DwmAttachMilContent');

int DwmDefWindowProc(
  int hWnd,
  int msg,
  int wParam,
  int lParam,
  Pointer<IntPtr> plResult,
) =>
    _DwmDefWindowProc(
      hWnd,
      msg,
      wParam,
      lParam,
      plResult,
    );

late final _DwmDefWindowProc = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Uint32 msg,
  IntPtr wParam,
  IntPtr lParam,
  Pointer<IntPtr> plResult,
),
    int Function(
  int hWnd,
  int msg,
  int wParam,
  int lParam,
  Pointer<IntPtr> plResult,
)>('DwmDefWindowProc');

int DwmDetachMilContent(
  int hwnd,
) =>
    _DwmDetachMilContent(
      hwnd,
    );

late final _DwmDetachMilContent = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('DwmDetachMilContent');

int DwmEnableBlurBehindWindow(
  int hWnd,
  Pointer<DWM_BLURBEHIND> pBlurBehind,
) =>
    _DwmEnableBlurBehindWindow(
      hWnd,
      pBlurBehind,
    );

late final _DwmEnableBlurBehindWindow = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<DWM_BLURBEHIND> pBlurBehind,
),
    int Function(
  int hWnd,
  Pointer<DWM_BLURBEHIND> pBlurBehind,
)>('DwmEnableBlurBehindWindow');

int DwmEnableComposition(
  int uCompositionAction,
) =>
    _DwmEnableComposition(
      uCompositionAction,
    );

late final _DwmEnableComposition = _dwmapi.lookupFunction<
    Int32 Function(
  Uint32 uCompositionAction,
),
    int Function(
  int uCompositionAction,
)>('DwmEnableComposition');

int DwmEnableMMCSS(
  int fEnableMMCSS,
) =>
    _DwmEnableMMCSS(
      fEnableMMCSS,
    );

late final _DwmEnableMMCSS = _dwmapi.lookupFunction<
    Int32 Function(
  Int32 fEnableMMCSS,
),
    int Function(
  int fEnableMMCSS,
)>('DwmEnableMMCSS');

int DwmExtendFrameIntoClientArea(
  int hWnd,
  Pointer<MARGINS> pMarInset,
) =>
    _DwmExtendFrameIntoClientArea(
      hWnd,
      pMarInset,
    );

late final _DwmExtendFrameIntoClientArea = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<MARGINS> pMarInset,
),
    int Function(
  int hWnd,
  Pointer<MARGINS> pMarInset,
)>('DwmExtendFrameIntoClientArea');

int DwmFlush() => _DwmFlush();

late final _DwmFlush =
    _dwmapi.lookupFunction<Int32 Function(), int Function()>('DwmFlush');

int DwmGetColorizationColor(
  Pointer<Uint32> pcrColorization,
  Pointer<Int32> pfOpaqueBlend,
) =>
    _DwmGetColorizationColor(
      pcrColorization,
      pfOpaqueBlend,
    );

late final _DwmGetColorizationColor = _dwmapi.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pcrColorization,
  Pointer<Int32> pfOpaqueBlend,
),
    int Function(
  Pointer<Uint32> pcrColorization,
  Pointer<Int32> pfOpaqueBlend,
)>('DwmGetColorizationColor');

int DwmGetCompositionTimingInfo(
  int hwnd,
  Pointer<DWM_TIMING_INFO> pTimingInfo,
) =>
    _DwmGetCompositionTimingInfo(
      hwnd,
      pTimingInfo,
    );

late final _DwmGetCompositionTimingInfo = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<DWM_TIMING_INFO> pTimingInfo,
),
    int Function(
  int hwnd,
  Pointer<DWM_TIMING_INFO> pTimingInfo,
)>('DwmGetCompositionTimingInfo');

int DwmGetGraphicsStreamClient(
  int uIndex,
  Pointer<GUID> pClientUuid,
) =>
    _DwmGetGraphicsStreamClient(
      uIndex,
      pClientUuid,
    );

late final _DwmGetGraphicsStreamClient = _dwmapi.lookupFunction<
    Int32 Function(
  Uint32 uIndex,
  Pointer<GUID> pClientUuid,
),
    int Function(
  int uIndex,
  Pointer<GUID> pClientUuid,
)>('DwmGetGraphicsStreamClient');

int DwmGetGraphicsStreamTransformHint(
  int uIndex,
  Pointer<MilMatrix3x2D> pTransform,
) =>
    _DwmGetGraphicsStreamTransformHint(
      uIndex,
      pTransform,
    );

late final _DwmGetGraphicsStreamTransformHint = _dwmapi.lookupFunction<
    Int32 Function(
  Uint32 uIndex,
  Pointer<MilMatrix3x2D> pTransform,
),
    int Function(
  int uIndex,
  Pointer<MilMatrix3x2D> pTransform,
)>('DwmGetGraphicsStreamTransformHint');

int DwmGetTransportAttributes(
  Pointer<Int32> pfIsRemoting,
  Pointer<Int32> pfIsConnected,
  Pointer<Uint32> pDwGeneration,
) =>
    _DwmGetTransportAttributes(
      pfIsRemoting,
      pfIsConnected,
      pDwGeneration,
    );

late final _DwmGetTransportAttributes = _dwmapi.lookupFunction<
    Int32 Function(
  Pointer<Int32> pfIsRemoting,
  Pointer<Int32> pfIsConnected,
  Pointer<Uint32> pDwGeneration,
),
    int Function(
  Pointer<Int32> pfIsRemoting,
  Pointer<Int32> pfIsConnected,
  Pointer<Uint32> pDwGeneration,
)>('DwmGetTransportAttributes');

int DwmGetUnmetTabRequirements(
  int appWindow,
  Pointer<Uint32> value,
) =>
    _DwmGetUnmetTabRequirements(
      appWindow,
      value,
    );

late final _DwmGetUnmetTabRequirements = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr appWindow,
  Pointer<Uint32> value,
),
    int Function(
  int appWindow,
  Pointer<Uint32> value,
)>('DwmGetUnmetTabRequirements');

int DwmGetWindowAttribute(
  int hwnd,
  int dwAttribute,
  Pointer pvAttribute,
  int cbAttribute,
) =>
    _DwmGetWindowAttribute(
      hwnd,
      dwAttribute,
      pvAttribute,
      cbAttribute,
    );

late final _DwmGetWindowAttribute = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 dwAttribute,
  Pointer pvAttribute,
  Uint32 cbAttribute,
),
    int Function(
  int hwnd,
  int dwAttribute,
  Pointer pvAttribute,
  int cbAttribute,
)>('DwmGetWindowAttribute');

int DwmInvalidateIconicBitmaps(
  int hwnd,
) =>
    _DwmInvalidateIconicBitmaps(
      hwnd,
    );

late final _DwmInvalidateIconicBitmaps = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('DwmInvalidateIconicBitmaps');

int DwmIsCompositionEnabled(
  Pointer<Int32> pfEnabled,
) =>
    _DwmIsCompositionEnabled(
      pfEnabled,
    );

late final _DwmIsCompositionEnabled = _dwmapi.lookupFunction<
    Int32 Function(
  Pointer<Int32> pfEnabled,
),
    int Function(
  Pointer<Int32> pfEnabled,
)>('DwmIsCompositionEnabled');

int DwmModifyPreviousDxFrameDuration(
  int hwnd,
  int cRefreshes,
  int fRelative,
) =>
    _DwmModifyPreviousDxFrameDuration(
      hwnd,
      cRefreshes,
      fRelative,
    );

late final _DwmModifyPreviousDxFrameDuration = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 cRefreshes,
  Int32 fRelative,
),
    int Function(
  int hwnd,
  int cRefreshes,
  int fRelative,
)>('DwmModifyPreviousDxFrameDuration');

int DwmQueryThumbnailSourceSize(
  int hThumbnail,
  Pointer<SIZE> pSize,
) =>
    _DwmQueryThumbnailSourceSize(
      hThumbnail,
      pSize,
    );

late final _DwmQueryThumbnailSourceSize = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hThumbnail,
  Pointer<SIZE> pSize,
),
    int Function(
  int hThumbnail,
  Pointer<SIZE> pSize,
)>('DwmQueryThumbnailSourceSize');

int DwmRegisterThumbnail(
  int hwndDestination,
  int hwndSource,
  Pointer<IntPtr> phThumbnailId,
) =>
    _DwmRegisterThumbnail(
      hwndDestination,
      hwndSource,
      phThumbnailId,
    );

late final _DwmRegisterThumbnail = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hwndDestination,
  IntPtr hwndSource,
  Pointer<IntPtr> phThumbnailId,
),
    int Function(
  int hwndDestination,
  int hwndSource,
  Pointer<IntPtr> phThumbnailId,
)>('DwmRegisterThumbnail');

int DwmRenderGesture(
  int gt,
  int cContacts,
  Pointer<Uint32> pdwPointerID,
  Pointer<POINT> pPoints,
) =>
    _DwmRenderGesture(
      gt,
      cContacts,
      pdwPointerID,
      pPoints,
    );

late final _DwmRenderGesture = _dwmapi.lookupFunction<
    Int32 Function(
  Int32 gt,
  Uint32 cContacts,
  Pointer<Uint32> pdwPointerID,
  Pointer<POINT> pPoints,
),
    int Function(
  int gt,
  int cContacts,
  Pointer<Uint32> pdwPointerID,
  Pointer<POINT> pPoints,
)>('DwmRenderGesture');

int DwmSetDxFrameDuration(
  int hwnd,
  int cRefreshes,
) =>
    _DwmSetDxFrameDuration(
      hwnd,
      cRefreshes,
    );

late final _DwmSetDxFrameDuration = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 cRefreshes,
),
    int Function(
  int hwnd,
  int cRefreshes,
)>('DwmSetDxFrameDuration');

int DwmSetIconicLivePreviewBitmap(
  int hwnd,
  int hbmp,
  Pointer<POINT> pptClient,
  int dwSITFlags,
) =>
    _DwmSetIconicLivePreviewBitmap(
      hwnd,
      hbmp,
      pptClient,
      dwSITFlags,
    );

late final _DwmSetIconicLivePreviewBitmap = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  IntPtr hbmp,
  Pointer<POINT> pptClient,
  Uint32 dwSITFlags,
),
    int Function(
  int hwnd,
  int hbmp,
  Pointer<POINT> pptClient,
  int dwSITFlags,
)>('DwmSetIconicLivePreviewBitmap');

int DwmSetIconicThumbnail(
  int hwnd,
  int hbmp,
  int dwSITFlags,
) =>
    _DwmSetIconicThumbnail(
      hwnd,
      hbmp,
      dwSITFlags,
    );

late final _DwmSetIconicThumbnail = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  IntPtr hbmp,
  Uint32 dwSITFlags,
),
    int Function(
  int hwnd,
  int hbmp,
  int dwSITFlags,
)>('DwmSetIconicThumbnail');

int DwmSetPresentParameters(
  int hwnd,
  Pointer<DWM_PRESENT_PARAMETERS> pPresentParams,
) =>
    _DwmSetPresentParameters(
      hwnd,
      pPresentParams,
    );

late final _DwmSetPresentParameters = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<DWM_PRESENT_PARAMETERS> pPresentParams,
),
    int Function(
  int hwnd,
  Pointer<DWM_PRESENT_PARAMETERS> pPresentParams,
)>('DwmSetPresentParameters');

int DwmSetWindowAttribute(
  int hwnd,
  int dwAttribute,
  Pointer pvAttribute,
  int cbAttribute,
) =>
    _DwmSetWindowAttribute(
      hwnd,
      dwAttribute,
      pvAttribute,
      cbAttribute,
    );

late final _DwmSetWindowAttribute = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 dwAttribute,
  Pointer pvAttribute,
  Uint32 cbAttribute,
),
    int Function(
  int hwnd,
  int dwAttribute,
  Pointer pvAttribute,
  int cbAttribute,
)>('DwmSetWindowAttribute');

int DwmShowContact(
  int dwPointerID,
  int eShowContact,
) =>
    _DwmShowContact(
      dwPointerID,
      eShowContact,
    );

late final _DwmShowContact = _dwmapi.lookupFunction<
    Int32 Function(
  Uint32 dwPointerID,
  Uint32 eShowContact,
),
    int Function(
  int dwPointerID,
  int eShowContact,
)>('DwmShowContact');

int DwmTetherContact(
  int dwPointerID,
  int fEnable,
  POINT ptTether,
) =>
    _DwmTetherContact(
      dwPointerID,
      fEnable,
      ptTether,
    );

late final _DwmTetherContact = _dwmapi.lookupFunction<
    Int32 Function(
  Uint32 dwPointerID,
  Int32 fEnable,
  POINT ptTether,
),
    int Function(
  int dwPointerID,
  int fEnable,
  POINT ptTether,
)>('DwmTetherContact');

int DwmTransitionOwnedWindow(
  int hwnd,
  int target,
) =>
    _DwmTransitionOwnedWindow(
      hwnd,
      target,
    );

late final _DwmTransitionOwnedWindow = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 target,
),
    int Function(
  int hwnd,
  int target,
)>('DwmTransitionOwnedWindow');

int DwmUnregisterThumbnail(
  int hThumbnailId,
) =>
    _DwmUnregisterThumbnail(
      hThumbnailId,
    );

late final _DwmUnregisterThumbnail = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hThumbnailId,
),
    int Function(
  int hThumbnailId,
)>('DwmUnregisterThumbnail');

int DwmUpdateThumbnailProperties(
  int hThumbnailId,
  Pointer<DWM_THUMBNAIL_PROPERTIES> ptnProperties,
) =>
    _DwmUpdateThumbnailProperties(
      hThumbnailId,
      ptnProperties,
    );

late final _DwmUpdateThumbnailProperties = _dwmapi.lookupFunction<
    Int32 Function(
  IntPtr hThumbnailId,
  Pointer<DWM_THUMBNAIL_PROPERTIES> ptnProperties,
),
    int Function(
  int hThumbnailId,
  Pointer<DWM_THUMBNAIL_PROPERTIES> ptnProperties,
)>('DwmUpdateThumbnailProperties');
