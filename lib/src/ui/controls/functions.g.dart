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
import '../../ui/controls/structs.g.dart';
import '../../ui/controls/callbacks.g.dart';
import '../../system/com/IStream.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../system/com/IUnknown.dart'; // -----------------------------------------------------------------------

// comctl32.dll
// -----------------------------------------------------------------------
final _comctl32 = DynamicLibrary.open('comctl32.dll');

int CreateMappedBitmap(
  int hInstance,
  int idBitmap,
  int wFlags,
  Pointer<COLORMAP> lpColorMap,
  int iNumMaps,
) =>
    _CreateMappedBitmap(
      hInstance,
      idBitmap,
      wFlags,
      lpColorMap,
      iNumMaps,
    );

late final _CreateMappedBitmap = _comctl32.lookupFunction<
    IntPtr Function(
  IntPtr hInstance,
  IntPtr idBitmap,
  Uint32 wFlags,
  Pointer<COLORMAP> lpColorMap,
  Int32 iNumMaps,
),
    int Function(
  int hInstance,
  int idBitmap,
  int wFlags,
  Pointer<COLORMAP> lpColorMap,
  int iNumMaps,
)>('CreateMappedBitmap');

int CreatePropertySheetPage(
  Pointer<PROPSHEETPAGE> constPropSheetPagePointer,
) =>
    _CreatePropertySheetPage(
      constPropSheetPagePointer,
    );

late final _CreatePropertySheetPage = _comctl32.lookupFunction<
    IntPtr Function(
  Pointer<PROPSHEETPAGE> constPropSheetPagePointer,
),
    int Function(
  Pointer<PROPSHEETPAGE> constPropSheetPagePointer,
)>('CreatePropertySheetPageW');

int CreateStatusWindow(
  int style,
  Pointer<Utf16> lpszText,
  int hwndParent,
  int wID,
) =>
    _CreateStatusWindow(
      style,
      lpszText,
      hwndParent,
      wID,
    );

late final _CreateStatusWindow = _comctl32.lookupFunction<
    IntPtr Function(
  Int32 style,
  Pointer<Utf16> lpszText,
  IntPtr hwndParent,
  Uint32 wID,
),
    int Function(
  int style,
  Pointer<Utf16> lpszText,
  int hwndParent,
  int wID,
)>('CreateStatusWindowW');

int CreateToolbarEx(
  int hwnd,
  int ws,
  int wID,
  int nBitmaps,
  int hBMInst,
  int wBMID,
  Pointer<TBBUTTON> lpButtons,
  int iNumButtons,
  int dxButton,
  int dyButton,
  int dxBitmap,
  int dyBitmap,
  int uStructSize,
) =>
    _CreateToolbarEx(
      hwnd,
      ws,
      wID,
      nBitmaps,
      hBMInst,
      wBMID,
      lpButtons,
      iNumButtons,
      dxButton,
      dyButton,
      dxBitmap,
      dyBitmap,
      uStructSize,
    );

late final _CreateToolbarEx = _comctl32.lookupFunction<
    IntPtr Function(
  IntPtr hwnd,
  Uint32 ws,
  Uint32 wID,
  Int32 nBitmaps,
  IntPtr hBMInst,
  IntPtr wBMID,
  Pointer<TBBUTTON> lpButtons,
  Int32 iNumButtons,
  Int32 dxButton,
  Int32 dyButton,
  Int32 dxBitmap,
  Int32 dyBitmap,
  Uint32 uStructSize,
),
    int Function(
  int hwnd,
  int ws,
  int wID,
  int nBitmaps,
  int hBMInst,
  int wBMID,
  Pointer<TBBUTTON> lpButtons,
  int iNumButtons,
  int dxButton,
  int dyButton,
  int dxBitmap,
  int dyBitmap,
  int uStructSize,
)>('CreateToolbarEx');

int CreateUpDownControl(
  int dwStyle,
  int x,
  int y,
  int cx,
  int cy,
  int hParent,
  int nID,
  int hInst,
  int hBuddy,
  int nUpper,
  int nLower,
  int nPos,
) =>
    _CreateUpDownControl(
      dwStyle,
      x,
      y,
      cx,
      cy,
      hParent,
      nID,
      hInst,
      hBuddy,
      nUpper,
      nLower,
      nPos,
    );

late final _CreateUpDownControl = _comctl32.lookupFunction<
    IntPtr Function(
  Uint32 dwStyle,
  Int32 x,
  Int32 y,
  Int32 cx,
  Int32 cy,
  IntPtr hParent,
  Int32 nID,
  IntPtr hInst,
  IntPtr hBuddy,
  Int32 nUpper,
  Int32 nLower,
  Int32 nPos,
),
    int Function(
  int dwStyle,
  int x,
  int y,
  int cx,
  int cy,
  int hParent,
  int nID,
  int hInst,
  int hBuddy,
  int nUpper,
  int nLower,
  int nPos,
)>('CreateUpDownControl');

int DPA_Clone(
  int hdpa,
  int hdpaNew,
) =>
    _DPA_Clone(
      hdpa,
      hdpaNew,
    );

late final _DPA_Clone = _comctl32.lookupFunction<
    IntPtr Function(
  IntPtr hdpa,
  IntPtr hdpaNew,
),
    int Function(
  int hdpa,
  int hdpaNew,
)>('DPA_Clone');

int DPA_Create(
  int cItemGrow,
) =>
    _DPA_Create(
      cItemGrow,
    );

late final _DPA_Create = _comctl32.lookupFunction<
    IntPtr Function(
  Int32 cItemGrow,
),
    int Function(
  int cItemGrow,
)>('DPA_Create');

int DPA_CreateEx(
  int cpGrow,
  int hheap,
) =>
    _DPA_CreateEx(
      cpGrow,
      hheap,
    );

late final _DPA_CreateEx = _comctl32.lookupFunction<
    IntPtr Function(
  Int32 cpGrow,
  IntPtr hheap,
),
    int Function(
  int cpGrow,
  int hheap,
)>('DPA_CreateEx');

int DPA_DeleteAllPtrs(
  int hdpa,
) =>
    _DPA_DeleteAllPtrs(
      hdpa,
    );

late final _DPA_DeleteAllPtrs = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hdpa,
),
    int Function(
  int hdpa,
)>('DPA_DeleteAllPtrs');

Pointer DPA_DeletePtr(
  int hdpa,
  int i,
) =>
    _DPA_DeletePtr(
      hdpa,
      i,
    );

late final _DPA_DeletePtr = _comctl32.lookupFunction<
    Pointer Function(
  IntPtr hdpa,
  Int32 i,
),
    Pointer Function(
  int hdpa,
  int i,
)>('DPA_DeletePtr');

int DPA_Destroy(
  int hdpa,
) =>
    _DPA_Destroy(
      hdpa,
    );

late final _DPA_Destroy = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hdpa,
),
    int Function(
  int hdpa,
)>('DPA_Destroy');

void DPA_DestroyCallback(
  int hdpa,
  Pointer<NativeFunction<PFNDAENUMCALLBACK>> pfnCB,
  Pointer pData,
) =>
    _DPA_DestroyCallback(
      hdpa,
      pfnCB,
      pData,
    );

late final _DPA_DestroyCallback = _comctl32.lookupFunction<
    Void Function(
  IntPtr hdpa,
  Pointer<NativeFunction<PFNDAENUMCALLBACK>> pfnCB,
  Pointer pData,
),
    void Function(
  int hdpa,
  Pointer<NativeFunction<PFNDAENUMCALLBACK>> pfnCB,
  Pointer pData,
)>('DPA_DestroyCallback');

void DPA_EnumCallback(
  int hdpa,
  Pointer<NativeFunction<PFNDAENUMCALLBACK>> pfnCB,
  Pointer pData,
) =>
    _DPA_EnumCallback(
      hdpa,
      pfnCB,
      pData,
    );

late final _DPA_EnumCallback = _comctl32.lookupFunction<
    Void Function(
  IntPtr hdpa,
  Pointer<NativeFunction<PFNDAENUMCALLBACK>> pfnCB,
  Pointer pData,
),
    void Function(
  int hdpa,
  Pointer<NativeFunction<PFNDAENUMCALLBACK>> pfnCB,
  Pointer pData,
)>('DPA_EnumCallback');

Pointer DPA_GetPtr(
  int hdpa,
  int i,
) =>
    _DPA_GetPtr(
      hdpa,
      i,
    );

late final _DPA_GetPtr = _comctl32.lookupFunction<
    Pointer Function(
  IntPtr hdpa,
  IntPtr i,
),
    Pointer Function(
  int hdpa,
  int i,
)>('DPA_GetPtr');

int DPA_GetPtrIndex(
  int hdpa,
  Pointer p,
) =>
    _DPA_GetPtrIndex(
      hdpa,
      p,
    );

late final _DPA_GetPtrIndex = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hdpa,
  Pointer p,
),
    int Function(
  int hdpa,
  Pointer p,
)>('DPA_GetPtrIndex');

int DPA_GetSize(
  int hdpa,
) =>
    _DPA_GetSize(
      hdpa,
    );

late final _DPA_GetSize = _comctl32.lookupFunction<
    Uint64 Function(
  IntPtr hdpa,
),
    int Function(
  int hdpa,
)>('DPA_GetSize');

int DPA_Grow(
  int pdpa,
  int cp,
) =>
    _DPA_Grow(
      pdpa,
      cp,
    );

late final _DPA_Grow = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr pdpa,
  Int32 cp,
),
    int Function(
  int pdpa,
  int cp,
)>('DPA_Grow');

int DPA_InsertPtr(
  int hdpa,
  int i,
  Pointer p,
) =>
    _DPA_InsertPtr(
      hdpa,
      i,
      p,
    );

late final _DPA_InsertPtr = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hdpa,
  Int32 i,
  Pointer p,
),
    int Function(
  int hdpa,
  int i,
  Pointer p,
)>('DPA_InsertPtr');

int DPA_LoadStream(
  Pointer<IntPtr> phdpa,
  Pointer<NativeFunction<PFNDPASTREAM>> pfn,
  Pointer<COMObject> pstream,
  Pointer pvInstData,
) =>
    _DPA_LoadStream(
      phdpa,
      pfn,
      pstream,
      pvInstData,
    );

late final _DPA_LoadStream = _comctl32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> phdpa,
  Pointer<NativeFunction<PFNDPASTREAM>> pfn,
  Pointer<COMObject> pstream,
  Pointer pvInstData,
),
    int Function(
  Pointer<IntPtr> phdpa,
  Pointer<NativeFunction<PFNDPASTREAM>> pfn,
  Pointer<COMObject> pstream,
  Pointer pvInstData,
)>('DPA_LoadStream');

int DPA_Merge(
  int hdpaDest,
  int hdpaSrc,
  int dwFlags,
  Pointer<NativeFunction<PFNDACOMPARE>> pfnCompare,
  Pointer<NativeFunction<PFNDPAMERGE>> pfnMerge,
  int lParam,
) =>
    _DPA_Merge(
      hdpaDest,
      hdpaSrc,
      dwFlags,
      pfnCompare,
      pfnMerge,
      lParam,
    );

late final _DPA_Merge = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hdpaDest,
  IntPtr hdpaSrc,
  Uint32 dwFlags,
  Pointer<NativeFunction<PFNDACOMPARE>> pfnCompare,
  Pointer<NativeFunction<PFNDPAMERGE>> pfnMerge,
  IntPtr lParam,
),
    int Function(
  int hdpaDest,
  int hdpaSrc,
  int dwFlags,
  Pointer<NativeFunction<PFNDACOMPARE>> pfnCompare,
  Pointer<NativeFunction<PFNDPAMERGE>> pfnMerge,
  int lParam,
)>('DPA_Merge');

int DPA_SaveStream(
  int hdpa,
  Pointer<NativeFunction<PFNDPASTREAM>> pfn,
  Pointer<COMObject> pstream,
  Pointer pvInstData,
) =>
    _DPA_SaveStream(
      hdpa,
      pfn,
      pstream,
      pvInstData,
    );

late final _DPA_SaveStream = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hdpa,
  Pointer<NativeFunction<PFNDPASTREAM>> pfn,
  Pointer<COMObject> pstream,
  Pointer pvInstData,
),
    int Function(
  int hdpa,
  Pointer<NativeFunction<PFNDPASTREAM>> pfn,
  Pointer<COMObject> pstream,
  Pointer pvInstData,
)>('DPA_SaveStream');

int DPA_Search(
  int hdpa,
  Pointer pFind,
  int iStart,
  Pointer<NativeFunction<PFNDACOMPARE>> pfnCompare,
  int lParam,
  int options,
) =>
    _DPA_Search(
      hdpa,
      pFind,
      iStart,
      pfnCompare,
      lParam,
      options,
    );

late final _DPA_Search = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hdpa,
  Pointer pFind,
  Int32 iStart,
  Pointer<NativeFunction<PFNDACOMPARE>> pfnCompare,
  IntPtr lParam,
  Uint32 options,
),
    int Function(
  int hdpa,
  Pointer pFind,
  int iStart,
  Pointer<NativeFunction<PFNDACOMPARE>> pfnCompare,
  int lParam,
  int options,
)>('DPA_Search');

int DPA_SetPtr(
  int hdpa,
  int i,
  Pointer p,
) =>
    _DPA_SetPtr(
      hdpa,
      i,
      p,
    );

late final _DPA_SetPtr = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hdpa,
  Int32 i,
  Pointer p,
),
    int Function(
  int hdpa,
  int i,
  Pointer p,
)>('DPA_SetPtr');

int DPA_Sort(
  int hdpa,
  Pointer<NativeFunction<PFNDACOMPARE>> pfnCompare,
  int lParam,
) =>
    _DPA_Sort(
      hdpa,
      pfnCompare,
      lParam,
    );

late final _DPA_Sort = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hdpa,
  Pointer<NativeFunction<PFNDACOMPARE>> pfnCompare,
  IntPtr lParam,
),
    int Function(
  int hdpa,
  Pointer<NativeFunction<PFNDACOMPARE>> pfnCompare,
  int lParam,
)>('DPA_Sort');

int DSA_Clone(
  int hdsa,
) =>
    _DSA_Clone(
      hdsa,
    );

late final _DSA_Clone = _comctl32.lookupFunction<
    IntPtr Function(
  IntPtr hdsa,
),
    int Function(
  int hdsa,
)>('DSA_Clone');

int DSA_Create(
  int cbItem,
  int cItemGrow,
) =>
    _DSA_Create(
      cbItem,
      cItemGrow,
    );

late final _DSA_Create = _comctl32.lookupFunction<
    IntPtr Function(
  Int32 cbItem,
  Int32 cItemGrow,
),
    int Function(
  int cbItem,
  int cItemGrow,
)>('DSA_Create');

int DSA_DeleteAllItems(
  int hdsa,
) =>
    _DSA_DeleteAllItems(
      hdsa,
    );

late final _DSA_DeleteAllItems = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hdsa,
),
    int Function(
  int hdsa,
)>('DSA_DeleteAllItems');

int DSA_DeleteItem(
  int hdsa,
  int i,
) =>
    _DSA_DeleteItem(
      hdsa,
      i,
    );

late final _DSA_DeleteItem = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hdsa,
  Int32 i,
),
    int Function(
  int hdsa,
  int i,
)>('DSA_DeleteItem');

int DSA_Destroy(
  int hdsa,
) =>
    _DSA_Destroy(
      hdsa,
    );

late final _DSA_Destroy = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hdsa,
),
    int Function(
  int hdsa,
)>('DSA_Destroy');

void DSA_DestroyCallback(
  int hdsa,
  Pointer<NativeFunction<PFNDAENUMCALLBACK>> pfnCB,
  Pointer pData,
) =>
    _DSA_DestroyCallback(
      hdsa,
      pfnCB,
      pData,
    );

late final _DSA_DestroyCallback = _comctl32.lookupFunction<
    Void Function(
  IntPtr hdsa,
  Pointer<NativeFunction<PFNDAENUMCALLBACK>> pfnCB,
  Pointer pData,
),
    void Function(
  int hdsa,
  Pointer<NativeFunction<PFNDAENUMCALLBACK>> pfnCB,
  Pointer pData,
)>('DSA_DestroyCallback');

void DSA_EnumCallback(
  int hdsa,
  Pointer<NativeFunction<PFNDAENUMCALLBACK>> pfnCB,
  Pointer pData,
) =>
    _DSA_EnumCallback(
      hdsa,
      pfnCB,
      pData,
    );

late final _DSA_EnumCallback = _comctl32.lookupFunction<
    Void Function(
  IntPtr hdsa,
  Pointer<NativeFunction<PFNDAENUMCALLBACK>> pfnCB,
  Pointer pData,
),
    void Function(
  int hdsa,
  Pointer<NativeFunction<PFNDAENUMCALLBACK>> pfnCB,
  Pointer pData,
)>('DSA_EnumCallback');

int DSA_GetItem(
  int hdsa,
  int i,
  Pointer pitem,
) =>
    _DSA_GetItem(
      hdsa,
      i,
      pitem,
    );

late final _DSA_GetItem = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hdsa,
  Int32 i,
  Pointer pitem,
),
    int Function(
  int hdsa,
  int i,
  Pointer pitem,
)>('DSA_GetItem');

Pointer DSA_GetItemPtr(
  int hdsa,
  int i,
) =>
    _DSA_GetItemPtr(
      hdsa,
      i,
    );

late final _DSA_GetItemPtr = _comctl32.lookupFunction<
    Pointer Function(
  IntPtr hdsa,
  Int32 i,
),
    Pointer Function(
  int hdsa,
  int i,
)>('DSA_GetItemPtr');

int DSA_GetSize(
  int hdsa,
) =>
    _DSA_GetSize(
      hdsa,
    );

late final _DSA_GetSize = _comctl32.lookupFunction<
    Uint64 Function(
  IntPtr hdsa,
),
    int Function(
  int hdsa,
)>('DSA_GetSize');

int DSA_InsertItem(
  int hdsa,
  int i,
  Pointer pitem,
) =>
    _DSA_InsertItem(
      hdsa,
      i,
      pitem,
    );

late final _DSA_InsertItem = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hdsa,
  Int32 i,
  Pointer pitem,
),
    int Function(
  int hdsa,
  int i,
  Pointer pitem,
)>('DSA_InsertItem');

int DSA_SetItem(
  int hdsa,
  int i,
  Pointer pitem,
) =>
    _DSA_SetItem(
      hdsa,
      i,
      pitem,
    );

late final _DSA_SetItem = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hdsa,
  Int32 i,
  Pointer pitem,
),
    int Function(
  int hdsa,
  int i,
  Pointer pitem,
)>('DSA_SetItem');

int DSA_Sort(
  int pdsa,
  Pointer<NativeFunction<PFNDACOMPARE>> pfnCompare,
  int lParam,
) =>
    _DSA_Sort(
      pdsa,
      pfnCompare,
      lParam,
    );

late final _DSA_Sort = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr pdsa,
  Pointer<NativeFunction<PFNDACOMPARE>> pfnCompare,
  IntPtr lParam,
),
    int Function(
  int pdsa,
  Pointer<NativeFunction<PFNDACOMPARE>> pfnCompare,
  int lParam,
)>('DSA_Sort');

int DestroyPropertySheetPage(
  int param0,
) =>
    _DestroyPropertySheetPage(
      param0,
    );

late final _DestroyPropertySheetPage = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('DestroyPropertySheetPage');

void DrawInsert(
  int handParent,
  int hLB,
  int nItem,
) =>
    _DrawInsert(
      handParent,
      hLB,
      nItem,
    );

late final _DrawInsert = _comctl32.lookupFunction<
    Void Function(
  IntPtr handParent,
  IntPtr hLB,
  Int32 nItem,
),
    void Function(
  int handParent,
  int hLB,
  int nItem,
)>('DrawInsert');

int DrawShadowText(
  int hdc,
  Pointer<Utf16> pszText,
  int cch,
  Pointer<RECT> prc,
  int dwFlags,
  int crText,
  int crShadow,
  int ixOffset,
  int iyOffset,
) =>
    _DrawShadowText(
      hdc,
      pszText,
      cch,
      prc,
      dwFlags,
      crText,
      crShadow,
      ixOffset,
      iyOffset,
    );

late final _DrawShadowText = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<Utf16> pszText,
  Uint32 cch,
  Pointer<RECT> prc,
  Uint32 dwFlags,
  Uint32 crText,
  Uint32 crShadow,
  Int32 ixOffset,
  Int32 iyOffset,
),
    int Function(
  int hdc,
  Pointer<Utf16> pszText,
  int cch,
  Pointer<RECT> prc,
  int dwFlags,
  int crText,
  int crShadow,
  int ixOffset,
  int iyOffset,
)>('DrawShadowText');

void DrawStatusText(
  int hDC,
  Pointer<RECT> lprc,
  Pointer<Utf16> pszText,
  int uFlags,
) =>
    _DrawStatusText(
      hDC,
      lprc,
      pszText,
      uFlags,
    );

late final _DrawStatusText = _comctl32.lookupFunction<
    Void Function(
  IntPtr hDC,
  Pointer<RECT> lprc,
  Pointer<Utf16> pszText,
  Uint32 uFlags,
),
    void Function(
  int hDC,
  Pointer<RECT> lprc,
  Pointer<Utf16> pszText,
  int uFlags,
)>('DrawStatusTextW');

int FlatSB_EnableScrollBar(
  int param0,
  int param1,
  int param2,
) =>
    _FlatSB_EnableScrollBar(
      param0,
      param1,
      param2,
    );

late final _FlatSB_EnableScrollBar = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Int32 param1,
  Uint32 param2,
),
    int Function(
  int param0,
  int param1,
  int param2,
)>('FlatSB_EnableScrollBar');

int FlatSB_GetScrollInfo(
  int param0,
  int code,
  Pointer<SCROLLINFO> param2,
) =>
    _FlatSB_GetScrollInfo(
      param0,
      code,
      param2,
    );

late final _FlatSB_GetScrollInfo = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 code,
  Pointer<SCROLLINFO> param2,
),
    int Function(
  int param0,
  int code,
  Pointer<SCROLLINFO> param2,
)>('FlatSB_GetScrollInfo');

int FlatSB_GetScrollPos(
  int param0,
  int code,
) =>
    _FlatSB_GetScrollPos(
      param0,
      code,
    );

late final _FlatSB_GetScrollPos = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 code,
),
    int Function(
  int param0,
  int code,
)>('FlatSB_GetScrollPos');

int FlatSB_GetScrollProp(
  int param0,
  int propIndex,
  Pointer<Int32> param2,
) =>
    _FlatSB_GetScrollProp(
      param0,
      propIndex,
      param2,
    );

late final _FlatSB_GetScrollProp = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Int32 propIndex,
  Pointer<Int32> param2,
),
    int Function(
  int param0,
  int propIndex,
  Pointer<Int32> param2,
)>('FlatSB_GetScrollProp');

int FlatSB_GetScrollRange(
  int param0,
  int code,
  Pointer<Int32> param2,
  Pointer<Int32> param3,
) =>
    _FlatSB_GetScrollRange(
      param0,
      code,
      param2,
      param3,
    );

late final _FlatSB_GetScrollRange = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 code,
  Pointer<Int32> param2,
  Pointer<Int32> param3,
),
    int Function(
  int param0,
  int code,
  Pointer<Int32> param2,
  Pointer<Int32> param3,
)>('FlatSB_GetScrollRange');

int FlatSB_SetScrollInfo(
  int param0,
  int code,
  Pointer<SCROLLINFO> psi,
  int fRedraw,
) =>
    _FlatSB_SetScrollInfo(
      param0,
      code,
      psi,
      fRedraw,
    );

late final _FlatSB_SetScrollInfo = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 code,
  Pointer<SCROLLINFO> psi,
  Int32 fRedraw,
),
    int Function(
  int param0,
  int code,
  Pointer<SCROLLINFO> psi,
  int fRedraw,
)>('FlatSB_SetScrollInfo');

int FlatSB_SetScrollPos(
  int param0,
  int code,
  int pos,
  int fRedraw,
) =>
    _FlatSB_SetScrollPos(
      param0,
      code,
      pos,
      fRedraw,
    );

late final _FlatSB_SetScrollPos = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 code,
  Int32 pos,
  Int32 fRedraw,
),
    int Function(
  int param0,
  int code,
  int pos,
  int fRedraw,
)>('FlatSB_SetScrollPos');

int FlatSB_SetScrollProp(
  int param0,
  int index,
  int newValue,
  int param3,
) =>
    _FlatSB_SetScrollProp(
      param0,
      index,
      newValue,
      param3,
    );

late final _FlatSB_SetScrollProp = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Int32 index,
  IntPtr newValue,
  Int32 param3,
),
    int Function(
  int param0,
  int index,
  int newValue,
  int param3,
)>('FlatSB_SetScrollProp');

int FlatSB_SetScrollRange(
  int param0,
  int code,
  int min,
  int max,
  int fRedraw,
) =>
    _FlatSB_SetScrollRange(
      param0,
      code,
      min,
      max,
      fRedraw,
    );

late final _FlatSB_SetScrollRange = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 code,
  Int32 min,
  Int32 max,
  Int32 fRedraw,
),
    int Function(
  int param0,
  int code,
  int min,
  int max,
  int fRedraw,
)>('FlatSB_SetScrollRange');

int FlatSB_ShowScrollBar(
  int param0,
  int code,
  int param2,
) =>
    _FlatSB_ShowScrollBar(
      param0,
      code,
      param2,
    );

late final _FlatSB_ShowScrollBar = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 code,
  Int32 param2,
),
    int Function(
  int param0,
  int code,
  int param2,
)>('FlatSB_ShowScrollBar');

void GetEffectiveClientRect(
  int hWnd,
  Pointer<RECT> lprc,
  Pointer<Int32> lpInfo,
) =>
    _GetEffectiveClientRect(
      hWnd,
      lprc,
      lpInfo,
    );

late final _GetEffectiveClientRect = _comctl32.lookupFunction<
    Void Function(
  IntPtr hWnd,
  Pointer<RECT> lprc,
  Pointer<Int32> lpInfo,
),
    void Function(
  int hWnd,
  Pointer<RECT> lprc,
  Pointer<Int32> lpInfo,
)>('GetEffectiveClientRect');

int GetMUILanguage() => _GetMUILanguage();

late final _GetMUILanguage = _comctl32
    .lookupFunction<Uint16 Function(), int Function()>('GetMUILanguage');

int HIMAGELIST_QueryInterface(
  int himl,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _HIMAGELIST_QueryInterface(
      himl,
      riid,
      ppv,
    );

late final _HIMAGELIST_QueryInterface = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himl,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  int himl,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('HIMAGELIST_QueryInterface');

int ImageList_Add(
  int himl,
  int hbmImage,
  int hbmMask,
) =>
    _ImageList_Add(
      himl,
      hbmImage,
      hbmMask,
    );

late final _ImageList_Add = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himl,
  IntPtr hbmImage,
  IntPtr hbmMask,
),
    int Function(
  int himl,
  int hbmImage,
  int hbmMask,
)>('ImageList_Add');

int ImageList_AddMasked(
  int himl,
  int hbmImage,
  int crMask,
) =>
    _ImageList_AddMasked(
      himl,
      hbmImage,
      crMask,
    );

late final _ImageList_AddMasked = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himl,
  IntPtr hbmImage,
  Uint32 crMask,
),
    int Function(
  int himl,
  int hbmImage,
  int crMask,
)>('ImageList_AddMasked');

int ImageList_BeginDrag(
  int himlTrack,
  int iTrack,
  int dxHotspot,
  int dyHotspot,
) =>
    _ImageList_BeginDrag(
      himlTrack,
      iTrack,
      dxHotspot,
      dyHotspot,
    );

late final _ImageList_BeginDrag = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himlTrack,
  Int32 iTrack,
  Int32 dxHotspot,
  Int32 dyHotspot,
),
    int Function(
  int himlTrack,
  int iTrack,
  int dxHotspot,
  int dyHotspot,
)>('ImageList_BeginDrag');

int ImageList_CoCreateInstance(
  Pointer<GUID> rclsid,
  Pointer<COMObject> punkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _ImageList_CoCreateInstance(
      rclsid,
      punkOuter,
      riid,
      ppv,
    );

late final _ImageList_CoCreateInstance = _comctl32.lookupFunction<
    Int32 Function(
  Pointer<GUID> rclsid,
  Pointer<COMObject> punkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<GUID> rclsid,
  Pointer<COMObject> punkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('ImageList_CoCreateInstance');

int ImageList_Copy(
  int himlDst,
  int iDst,
  int himlSrc,
  int iSrc,
  int uFlags,
) =>
    _ImageList_Copy(
      himlDst,
      iDst,
      himlSrc,
      iSrc,
      uFlags,
    );

late final _ImageList_Copy = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himlDst,
  Int32 iDst,
  IntPtr himlSrc,
  Int32 iSrc,
  Uint32 uFlags,
),
    int Function(
  int himlDst,
  int iDst,
  int himlSrc,
  int iSrc,
  int uFlags,
)>('ImageList_Copy');

int ImageList_Create(
  int cx,
  int cy,
  int flags,
  int cInitial,
  int cGrow,
) =>
    _ImageList_Create(
      cx,
      cy,
      flags,
      cInitial,
      cGrow,
    );

late final _ImageList_Create = _comctl32.lookupFunction<
    IntPtr Function(
  Int32 cx,
  Int32 cy,
  Uint32 flags,
  Int32 cInitial,
  Int32 cGrow,
),
    int Function(
  int cx,
  int cy,
  int flags,
  int cInitial,
  int cGrow,
)>('ImageList_Create');

int ImageList_Destroy(
  int himl,
) =>
    _ImageList_Destroy(
      himl,
    );

late final _ImageList_Destroy = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himl,
),
    int Function(
  int himl,
)>('ImageList_Destroy');

int ImageList_DragEnter(
  int hwndLock,
  int x,
  int y,
) =>
    _ImageList_DragEnter(
      hwndLock,
      x,
      y,
    );

late final _ImageList_DragEnter = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hwndLock,
  Int32 x,
  Int32 y,
),
    int Function(
  int hwndLock,
  int x,
  int y,
)>('ImageList_DragEnter');

int ImageList_DragLeave(
  int hwndLock,
) =>
    _ImageList_DragLeave(
      hwndLock,
    );

late final _ImageList_DragLeave = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hwndLock,
),
    int Function(
  int hwndLock,
)>('ImageList_DragLeave');

int ImageList_DragMove(
  int x,
  int y,
) =>
    _ImageList_DragMove(
      x,
      y,
    );

late final _ImageList_DragMove = _comctl32.lookupFunction<
    Int32 Function(
  Int32 x,
  Int32 y,
),
    int Function(
  int x,
  int y,
)>('ImageList_DragMove');

int ImageList_DragShowNolock(
  int fShow,
) =>
    _ImageList_DragShowNolock(
      fShow,
    );

late final _ImageList_DragShowNolock = _comctl32.lookupFunction<
    Int32 Function(
  Int32 fShow,
),
    int Function(
  int fShow,
)>('ImageList_DragShowNolock');

int ImageList_Draw(
  int himl,
  int i,
  int hdcDst,
  int x,
  int y,
  int fStyle,
) =>
    _ImageList_Draw(
      himl,
      i,
      hdcDst,
      x,
      y,
      fStyle,
    );

late final _ImageList_Draw = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himl,
  Int32 i,
  IntPtr hdcDst,
  Int32 x,
  Int32 y,
  Uint32 fStyle,
),
    int Function(
  int himl,
  int i,
  int hdcDst,
  int x,
  int y,
  int fStyle,
)>('ImageList_Draw');

int ImageList_DrawEx(
  int himl,
  int i,
  int hdcDst,
  int x,
  int y,
  int dx,
  int dy,
  int rgbBk,
  int rgbFg,
  int fStyle,
) =>
    _ImageList_DrawEx(
      himl,
      i,
      hdcDst,
      x,
      y,
      dx,
      dy,
      rgbBk,
      rgbFg,
      fStyle,
    );

late final _ImageList_DrawEx = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himl,
  Int32 i,
  IntPtr hdcDst,
  Int32 x,
  Int32 y,
  Int32 dx,
  Int32 dy,
  Uint32 rgbBk,
  Uint32 rgbFg,
  Uint32 fStyle,
),
    int Function(
  int himl,
  int i,
  int hdcDst,
  int x,
  int y,
  int dx,
  int dy,
  int rgbBk,
  int rgbFg,
  int fStyle,
)>('ImageList_DrawEx');

int ImageList_DrawIndirect(
  Pointer<IMAGELISTDRAWPARAMS> pimldp,
) =>
    _ImageList_DrawIndirect(
      pimldp,
    );

late final _ImageList_DrawIndirect = _comctl32.lookupFunction<
    Int32 Function(
  Pointer<IMAGELISTDRAWPARAMS> pimldp,
),
    int Function(
  Pointer<IMAGELISTDRAWPARAMS> pimldp,
)>('ImageList_DrawIndirect');

int ImageList_Duplicate(
  int himl,
) =>
    _ImageList_Duplicate(
      himl,
    );

late final _ImageList_Duplicate = _comctl32.lookupFunction<
    IntPtr Function(
  IntPtr himl,
),
    int Function(
  int himl,
)>('ImageList_Duplicate');

void ImageList_EndDrag() => _ImageList_EndDrag();

late final _ImageList_EndDrag = _comctl32
    .lookupFunction<Void Function(), void Function()>('ImageList_EndDrag');

int ImageList_GetBkColor(
  int himl,
) =>
    _ImageList_GetBkColor(
      himl,
    );

late final _ImageList_GetBkColor = _comctl32.lookupFunction<
    Uint32 Function(
  IntPtr himl,
),
    int Function(
  int himl,
)>('ImageList_GetBkColor');

int ImageList_GetDragImage(
  Pointer<POINT> ppt,
  Pointer<POINT> pptHotspot,
) =>
    _ImageList_GetDragImage(
      ppt,
      pptHotspot,
    );

late final _ImageList_GetDragImage = _comctl32.lookupFunction<
    IntPtr Function(
  Pointer<POINT> ppt,
  Pointer<POINT> pptHotspot,
),
    int Function(
  Pointer<POINT> ppt,
  Pointer<POINT> pptHotspot,
)>('ImageList_GetDragImage');

int ImageList_GetIcon(
  int himl,
  int i,
  int flags,
) =>
    _ImageList_GetIcon(
      himl,
      i,
      flags,
    );

late final _ImageList_GetIcon = _comctl32.lookupFunction<
    IntPtr Function(
  IntPtr himl,
  Int32 i,
  Uint32 flags,
),
    int Function(
  int himl,
  int i,
  int flags,
)>('ImageList_GetIcon');

int ImageList_GetIconSize(
  int himl,
  Pointer<Int32> cx,
  Pointer<Int32> cy,
) =>
    _ImageList_GetIconSize(
      himl,
      cx,
      cy,
    );

late final _ImageList_GetIconSize = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himl,
  Pointer<Int32> cx,
  Pointer<Int32> cy,
),
    int Function(
  int himl,
  Pointer<Int32> cx,
  Pointer<Int32> cy,
)>('ImageList_GetIconSize');

int ImageList_GetImageCount(
  int himl,
) =>
    _ImageList_GetImageCount(
      himl,
    );

late final _ImageList_GetImageCount = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himl,
),
    int Function(
  int himl,
)>('ImageList_GetImageCount');

int ImageList_GetImageInfo(
  int himl,
  int i,
  Pointer<IMAGEINFO> pImageInfo,
) =>
    _ImageList_GetImageInfo(
      himl,
      i,
      pImageInfo,
    );

late final _ImageList_GetImageInfo = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himl,
  Int32 i,
  Pointer<IMAGEINFO> pImageInfo,
),
    int Function(
  int himl,
  int i,
  Pointer<IMAGEINFO> pImageInfo,
)>('ImageList_GetImageInfo');

int ImageList_LoadImage(
  int hi,
  Pointer<Utf16> lpbmp,
  int cx,
  int cGrow,
  int crMask,
  int uType,
  int uFlags,
) =>
    _ImageList_LoadImage(
      hi,
      lpbmp,
      cx,
      cGrow,
      crMask,
      uType,
      uFlags,
    );

late final _ImageList_LoadImage = _comctl32.lookupFunction<
    IntPtr Function(
  IntPtr hi,
  Pointer<Utf16> lpbmp,
  Int32 cx,
  Int32 cGrow,
  Uint32 crMask,
  Uint32 uType,
  Uint32 uFlags,
),
    int Function(
  int hi,
  Pointer<Utf16> lpbmp,
  int cx,
  int cGrow,
  int crMask,
  int uType,
  int uFlags,
)>('ImageList_LoadImageW');

int ImageList_Merge(
  int himl1,
  int i1,
  int himl2,
  int i2,
  int dx,
  int dy,
) =>
    _ImageList_Merge(
      himl1,
      i1,
      himl2,
      i2,
      dx,
      dy,
    );

late final _ImageList_Merge = _comctl32.lookupFunction<
    IntPtr Function(
  IntPtr himl1,
  Int32 i1,
  IntPtr himl2,
  Int32 i2,
  Int32 dx,
  Int32 dy,
),
    int Function(
  int himl1,
  int i1,
  int himl2,
  int i2,
  int dx,
  int dy,
)>('ImageList_Merge');

int ImageList_Read(
  Pointer<COMObject> pstm,
) =>
    _ImageList_Read(
      pstm,
    );

late final _ImageList_Read = _comctl32.lookupFunction<
    IntPtr Function(
  Pointer<COMObject> pstm,
),
    int Function(
  Pointer<COMObject> pstm,
)>('ImageList_Read');

int ImageList_ReadEx(
  int dwFlags,
  Pointer<COMObject> pstm,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _ImageList_ReadEx(
      dwFlags,
      pstm,
      riid,
      ppv,
    );

late final _ImageList_ReadEx = _comctl32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<COMObject> pstm,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  int dwFlags,
  Pointer<COMObject> pstm,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('ImageList_ReadEx');

int ImageList_Remove(
  int himl,
  int i,
) =>
    _ImageList_Remove(
      himl,
      i,
    );

late final _ImageList_Remove = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himl,
  Int32 i,
),
    int Function(
  int himl,
  int i,
)>('ImageList_Remove');

int ImageList_Replace(
  int himl,
  int i,
  int hbmImage,
  int hbmMask,
) =>
    _ImageList_Replace(
      himl,
      i,
      hbmImage,
      hbmMask,
    );

late final _ImageList_Replace = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himl,
  Int32 i,
  IntPtr hbmImage,
  IntPtr hbmMask,
),
    int Function(
  int himl,
  int i,
  int hbmImage,
  int hbmMask,
)>('ImageList_Replace');

int ImageList_ReplaceIcon(
  int himl,
  int i,
  int hicon,
) =>
    _ImageList_ReplaceIcon(
      himl,
      i,
      hicon,
    );

late final _ImageList_ReplaceIcon = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himl,
  Int32 i,
  IntPtr hicon,
),
    int Function(
  int himl,
  int i,
  int hicon,
)>('ImageList_ReplaceIcon');

int ImageList_SetBkColor(
  int himl,
  int clrBk,
) =>
    _ImageList_SetBkColor(
      himl,
      clrBk,
    );

late final _ImageList_SetBkColor = _comctl32.lookupFunction<
    Uint32 Function(
  IntPtr himl,
  Uint32 clrBk,
),
    int Function(
  int himl,
  int clrBk,
)>('ImageList_SetBkColor');

int ImageList_SetDragCursorImage(
  int himlDrag,
  int iDrag,
  int dxHotspot,
  int dyHotspot,
) =>
    _ImageList_SetDragCursorImage(
      himlDrag,
      iDrag,
      dxHotspot,
      dyHotspot,
    );

late final _ImageList_SetDragCursorImage = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himlDrag,
  Int32 iDrag,
  Int32 dxHotspot,
  Int32 dyHotspot,
),
    int Function(
  int himlDrag,
  int iDrag,
  int dxHotspot,
  int dyHotspot,
)>('ImageList_SetDragCursorImage');

int ImageList_SetIconSize(
  int himl,
  int cx,
  int cy,
) =>
    _ImageList_SetIconSize(
      himl,
      cx,
      cy,
    );

late final _ImageList_SetIconSize = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himl,
  Int32 cx,
  Int32 cy,
),
    int Function(
  int himl,
  int cx,
  int cy,
)>('ImageList_SetIconSize');

int ImageList_SetImageCount(
  int himl,
  int uNewCount,
) =>
    _ImageList_SetImageCount(
      himl,
      uNewCount,
    );

late final _ImageList_SetImageCount = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himl,
  Uint32 uNewCount,
),
    int Function(
  int himl,
  int uNewCount,
)>('ImageList_SetImageCount');

int ImageList_SetOverlayImage(
  int himl,
  int iImage,
  int iOverlay,
) =>
    _ImageList_SetOverlayImage(
      himl,
      iImage,
      iOverlay,
    );

late final _ImageList_SetOverlayImage = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himl,
  Int32 iImage,
  Int32 iOverlay,
),
    int Function(
  int himl,
  int iImage,
  int iOverlay,
)>('ImageList_SetOverlayImage');

int ImageList_Write(
  int himl,
  Pointer<COMObject> pstm,
) =>
    _ImageList_Write(
      himl,
      pstm,
    );

late final _ImageList_Write = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himl,
  Pointer<COMObject> pstm,
),
    int Function(
  int himl,
  Pointer<COMObject> pstm,
)>('ImageList_Write');

int ImageList_WriteEx(
  int himl,
  int dwFlags,
  Pointer<COMObject> pstm,
) =>
    _ImageList_WriteEx(
      himl,
      dwFlags,
      pstm,
    );

late final _ImageList_WriteEx = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr himl,
  Uint32 dwFlags,
  Pointer<COMObject> pstm,
),
    int Function(
  int himl,
  int dwFlags,
  Pointer<COMObject> pstm,
)>('ImageList_WriteEx');

void InitCommonControls() => _InitCommonControls();

late final _InitCommonControls = _comctl32
    .lookupFunction<Void Function(), void Function()>('InitCommonControls');

int InitCommonControlsEx(
  Pointer<INITCOMMONCONTROLSEX> picce,
) =>
    _InitCommonControlsEx(
      picce,
    );

late final _InitCommonControlsEx = _comctl32.lookupFunction<
    Int32 Function(
  Pointer<INITCOMMONCONTROLSEX> picce,
),
    int Function(
  Pointer<INITCOMMONCONTROLSEX> picce,
)>('InitCommonControlsEx');

void InitMUILanguage(
  int uiLang,
) =>
    _InitMUILanguage(
      uiLang,
    );

late final _InitMUILanguage = _comctl32.lookupFunction<
    Void Function(
  Uint16 uiLang,
),
    void Function(
  int uiLang,
)>('InitMUILanguage');

int InitializeFlatSB(
  int param0,
) =>
    _InitializeFlatSB(
      param0,
    );

late final _InitializeFlatSB = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('InitializeFlatSB');

int LBItemFromPt(
  int hLB,
  POINT pt,
  int bAutoScroll,
) =>
    _LBItemFromPt(
      hLB,
      pt,
      bAutoScroll,
    );

late final _LBItemFromPt = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hLB,
  POINT pt,
  Int32 bAutoScroll,
),
    int Function(
  int hLB,
  POINT pt,
  int bAutoScroll,
)>('LBItemFromPt');

int LoadIconMetric(
  int hinst,
  Pointer<Utf16> pszName,
  int lims,
  Pointer<IntPtr> phico,
) =>
    _LoadIconMetric(
      hinst,
      pszName,
      lims,
      phico,
    );

late final _LoadIconMetric = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hinst,
  Pointer<Utf16> pszName,
  Int32 lims,
  Pointer<IntPtr> phico,
),
    int Function(
  int hinst,
  Pointer<Utf16> pszName,
  int lims,
  Pointer<IntPtr> phico,
)>('LoadIconMetric');

int LoadIconWithScaleDown(
  int hinst,
  Pointer<Utf16> pszName,
  int cx,
  int cy,
  Pointer<IntPtr> phico,
) =>
    _LoadIconWithScaleDown(
      hinst,
      pszName,
      cx,
      cy,
      phico,
    );

late final _LoadIconWithScaleDown = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hinst,
  Pointer<Utf16> pszName,
  Int32 cx,
  Int32 cy,
  Pointer<IntPtr> phico,
),
    int Function(
  int hinst,
  Pointer<Utf16> pszName,
  int cx,
  int cy,
  Pointer<IntPtr> phico,
)>('LoadIconWithScaleDown');

int MakeDragList(
  int hLB,
) =>
    _MakeDragList(
      hLB,
    );

late final _MakeDragList = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hLB,
),
    int Function(
  int hLB,
)>('MakeDragList');

void MenuHelp(
  int uMsg,
  int wParam,
  int lParam,
  int hMainMenu,
  int hInst,
  int hwndStatus,
  Pointer<Uint32> lpwIDs,
) =>
    _MenuHelp(
      uMsg,
      wParam,
      lParam,
      hMainMenu,
      hInst,
      hwndStatus,
      lpwIDs,
    );

late final _MenuHelp = _comctl32.lookupFunction<
    Void Function(
  Uint32 uMsg,
  IntPtr wParam,
  IntPtr lParam,
  IntPtr hMainMenu,
  IntPtr hInst,
  IntPtr hwndStatus,
  Pointer<Uint32> lpwIDs,
),
    void Function(
  int uMsg,
  int wParam,
  int lParam,
  int hMainMenu,
  int hInst,
  int hwndStatus,
  Pointer<Uint32> lpwIDs,
)>('MenuHelp');

int PropertySheet(
  Pointer<PROPSHEETHEADERW_V2> param0,
) =>
    _PropertySheet(
      param0,
    );

late final _PropertySheet = _comctl32.lookupFunction<
    IntPtr Function(
  Pointer<PROPSHEETHEADERW_V2> param0,
),
    int Function(
  Pointer<PROPSHEETHEADERW_V2> param0,
)>('PropertySheetW');

int ShowHideMenuCtl(
  int hWnd,
  int uFlags,
  Pointer<Int32> lpInfo,
) =>
    _ShowHideMenuCtl(
      hWnd,
      uFlags,
      lpInfo,
    );

late final _ShowHideMenuCtl = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  IntPtr uFlags,
  Pointer<Int32> lpInfo,
),
    int Function(
  int hWnd,
  int uFlags,
  Pointer<Int32> lpInfo,
)>('ShowHideMenuCtl');

int Str_SetPtr(
  Pointer<Pointer<Utf16>> ppsz,
  Pointer<Utf16> psz,
) =>
    _Str_SetPtr(
      ppsz,
      psz,
    );

late final _Str_SetPtr = _comctl32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<Utf16>> ppsz,
  Pointer<Utf16> psz,
),
    int Function(
  Pointer<Pointer<Utf16>> ppsz,
  Pointer<Utf16> psz,
)>('Str_SetPtrW');

int TaskDialog(
  int hwndOwner,
  int hInstance,
  Pointer<Utf16> pszWindowTitle,
  Pointer<Utf16> pszMainInstruction,
  Pointer<Utf16> pszContent,
  int dwCommonButtons,
  Pointer<Utf16> pszIcon,
  Pointer<Int32> pnButton,
) =>
    _TaskDialog(
      hwndOwner,
      hInstance,
      pszWindowTitle,
      pszMainInstruction,
      pszContent,
      dwCommonButtons,
      pszIcon,
      pnButton,
    );

late final _TaskDialog = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hwndOwner,
  IntPtr hInstance,
  Pointer<Utf16> pszWindowTitle,
  Pointer<Utf16> pszMainInstruction,
  Pointer<Utf16> pszContent,
  Int32 dwCommonButtons,
  Pointer<Utf16> pszIcon,
  Pointer<Int32> pnButton,
),
    int Function(
  int hwndOwner,
  int hInstance,
  Pointer<Utf16> pszWindowTitle,
  Pointer<Utf16> pszMainInstruction,
  Pointer<Utf16> pszContent,
  int dwCommonButtons,
  Pointer<Utf16> pszIcon,
  Pointer<Int32> pnButton,
)>('TaskDialog');

int TaskDialogIndirect(
  Pointer<TASKDIALOGCONFIG> pTaskConfig,
  Pointer<Int32> pnButton,
  Pointer<Int32> pnRadioButton,
  Pointer<Int32> pfVerificationFlagChecked,
) =>
    _TaskDialogIndirect(
      pTaskConfig,
      pnButton,
      pnRadioButton,
      pfVerificationFlagChecked,
    );

late final _TaskDialogIndirect = _comctl32.lookupFunction<
    Int32 Function(
  Pointer<TASKDIALOGCONFIG> pTaskConfig,
  Pointer<Int32> pnButton,
  Pointer<Int32> pnRadioButton,
  Pointer<Int32> pfVerificationFlagChecked,
),
    int Function(
  Pointer<TASKDIALOGCONFIG> pTaskConfig,
  Pointer<Int32> pnButton,
  Pointer<Int32> pnRadioButton,
  Pointer<Int32> pfVerificationFlagChecked,
)>('TaskDialogIndirect');

int UninitializeFlatSB(
  int param0,
) =>
    _UninitializeFlatSB(
      param0,
    );

late final _UninitializeFlatSB = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('UninitializeFlatSB');

// -----------------------------------------------------------------------
// uxtheme.dll
// -----------------------------------------------------------------------
final _uxtheme = DynamicLibrary.open('uxtheme.dll');

int BeginBufferedAnimation(
  int hwnd,
  int hdcTarget,
  Pointer<RECT> prcTarget,
  int dwFormat,
  Pointer<BP_PAINTPARAMS> pPaintParams,
  Pointer<BP_ANIMATIONPARAMS> pAnimationParams,
  Pointer<IntPtr> phdcFrom,
  Pointer<IntPtr> phdcTo,
) =>
    _BeginBufferedAnimation(
      hwnd,
      hdcTarget,
      prcTarget,
      dwFormat,
      pPaintParams,
      pAnimationParams,
      phdcFrom,
      phdcTo,
    );

late final _BeginBufferedAnimation = _uxtheme.lookupFunction<
    IntPtr Function(
  IntPtr hwnd,
  IntPtr hdcTarget,
  Pointer<RECT> prcTarget,
  Int32 dwFormat,
  Pointer<BP_PAINTPARAMS> pPaintParams,
  Pointer<BP_ANIMATIONPARAMS> pAnimationParams,
  Pointer<IntPtr> phdcFrom,
  Pointer<IntPtr> phdcTo,
),
    int Function(
  int hwnd,
  int hdcTarget,
  Pointer<RECT> prcTarget,
  int dwFormat,
  Pointer<BP_PAINTPARAMS> pPaintParams,
  Pointer<BP_ANIMATIONPARAMS> pAnimationParams,
  Pointer<IntPtr> phdcFrom,
  Pointer<IntPtr> phdcTo,
)>('BeginBufferedAnimation');

int BeginBufferedPaint(
  int hdcTarget,
  Pointer<RECT> prcTarget,
  int dwFormat,
  Pointer<BP_PAINTPARAMS> pPaintParams,
  Pointer<IntPtr> phdc,
) =>
    _BeginBufferedPaint(
      hdcTarget,
      prcTarget,
      dwFormat,
      pPaintParams,
      phdc,
    );

late final _BeginBufferedPaint = _uxtheme.lookupFunction<
    IntPtr Function(
  IntPtr hdcTarget,
  Pointer<RECT> prcTarget,
  Int32 dwFormat,
  Pointer<BP_PAINTPARAMS> pPaintParams,
  Pointer<IntPtr> phdc,
),
    int Function(
  int hdcTarget,
  Pointer<RECT> prcTarget,
  int dwFormat,
  Pointer<BP_PAINTPARAMS> pPaintParams,
  Pointer<IntPtr> phdc,
)>('BeginBufferedPaint');

int BeginPanningFeedback(
  int hwnd,
) =>
    _BeginPanningFeedback(
      hwnd,
    );

late final _BeginPanningFeedback = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('BeginPanningFeedback');

int BufferedPaintClear(
  int hBufferedPaint,
  Pointer<RECT> prc,
) =>
    _BufferedPaintClear(
      hBufferedPaint,
      prc,
    );

late final _BufferedPaintClear = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hBufferedPaint,
  Pointer<RECT> prc,
),
    int Function(
  int hBufferedPaint,
  Pointer<RECT> prc,
)>('BufferedPaintClear');

int BufferedPaintInit() => _BufferedPaintInit();

late final _BufferedPaintInit = _uxtheme
    .lookupFunction<Int32 Function(), int Function()>('BufferedPaintInit');

int BufferedPaintRenderAnimation(
  int hwnd,
  int hdcTarget,
) =>
    _BufferedPaintRenderAnimation(
      hwnd,
      hdcTarget,
    );

late final _BufferedPaintRenderAnimation = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  IntPtr hdcTarget,
),
    int Function(
  int hwnd,
  int hdcTarget,
)>('BufferedPaintRenderAnimation');

int BufferedPaintSetAlpha(
  int hBufferedPaint,
  Pointer<RECT> prc,
  int alpha,
) =>
    _BufferedPaintSetAlpha(
      hBufferedPaint,
      prc,
      alpha,
    );

late final _BufferedPaintSetAlpha = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hBufferedPaint,
  Pointer<RECT> prc,
  Uint8 alpha,
),
    int Function(
  int hBufferedPaint,
  Pointer<RECT> prc,
  int alpha,
)>('BufferedPaintSetAlpha');

int BufferedPaintStopAllAnimations(
  int hwnd,
) =>
    _BufferedPaintStopAllAnimations(
      hwnd,
    );

late final _BufferedPaintStopAllAnimations = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('BufferedPaintStopAllAnimations');

int BufferedPaintUnInit() => _BufferedPaintUnInit();

late final _BufferedPaintUnInit = _uxtheme
    .lookupFunction<Int32 Function(), int Function()>('BufferedPaintUnInit');

int CloseThemeData(
  int hTheme,
) =>
    _CloseThemeData(
      hTheme,
    );

late final _CloseThemeData = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
),
    int Function(
  int hTheme,
)>('CloseThemeData');

int DrawThemeBackground(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pRect,
  Pointer<RECT> pClipRect,
) =>
    _DrawThemeBackground(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      pRect,
      pClipRect,
    );

late final _DrawThemeBackground = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  IntPtr hdc,
  Int32 iPartId,
  Int32 iStateId,
  Pointer<RECT> pRect,
  Pointer<RECT> pClipRect,
),
    int Function(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pRect,
  Pointer<RECT> pClipRect,
)>('DrawThemeBackground');

int DrawThemeBackgroundEx(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pRect,
  Pointer<DTBGOPTS> pOptions,
) =>
    _DrawThemeBackgroundEx(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      pRect,
      pOptions,
    );

late final _DrawThemeBackgroundEx = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  IntPtr hdc,
  Int32 iPartId,
  Int32 iStateId,
  Pointer<RECT> pRect,
  Pointer<DTBGOPTS> pOptions,
),
    int Function(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pRect,
  Pointer<DTBGOPTS> pOptions,
)>('DrawThemeBackgroundEx');

int DrawThemeEdge(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pDestRect,
  int uEdge,
  int uFlags,
  Pointer<RECT> pContentRect,
) =>
    _DrawThemeEdge(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      pDestRect,
      uEdge,
      uFlags,
      pContentRect,
    );

late final _DrawThemeEdge = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  IntPtr hdc,
  Int32 iPartId,
  Int32 iStateId,
  Pointer<RECT> pDestRect,
  Uint32 uEdge,
  Uint32 uFlags,
  Pointer<RECT> pContentRect,
),
    int Function(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pDestRect,
  int uEdge,
  int uFlags,
  Pointer<RECT> pContentRect,
)>('DrawThemeEdge');

int DrawThemeIcon(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pRect,
  int himl,
  int iImageIndex,
) =>
    _DrawThemeIcon(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      pRect,
      himl,
      iImageIndex,
    );

late final _DrawThemeIcon = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  IntPtr hdc,
  Int32 iPartId,
  Int32 iStateId,
  Pointer<RECT> pRect,
  IntPtr himl,
  Int32 iImageIndex,
),
    int Function(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pRect,
  int himl,
  int iImageIndex,
)>('DrawThemeIcon');

int DrawThemeParentBackground(
  int hwnd,
  int hdc,
  Pointer<RECT> prc,
) =>
    _DrawThemeParentBackground(
      hwnd,
      hdc,
      prc,
    );

late final _DrawThemeParentBackground = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  IntPtr hdc,
  Pointer<RECT> prc,
),
    int Function(
  int hwnd,
  int hdc,
  Pointer<RECT> prc,
)>('DrawThemeParentBackground');

int DrawThemeParentBackgroundEx(
  int hwnd,
  int hdc,
  int dwFlags,
  Pointer<RECT> prc,
) =>
    _DrawThemeParentBackgroundEx(
      hwnd,
      hdc,
      dwFlags,
      prc,
    );

late final _DrawThemeParentBackgroundEx = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  IntPtr hdc,
  Uint32 dwFlags,
  Pointer<RECT> prc,
),
    int Function(
  int hwnd,
  int hdc,
  int dwFlags,
  Pointer<RECT> prc,
)>('DrawThemeParentBackgroundEx');

int DrawThemeText(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<Utf16> pszText,
  int cchText,
  int dwTextFlags,
  int dwTextFlags2,
  Pointer<RECT> pRect,
) =>
    _DrawThemeText(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      pszText,
      cchText,
      dwTextFlags,
      dwTextFlags2,
      pRect,
    );

late final _DrawThemeText = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  IntPtr hdc,
  Int32 iPartId,
  Int32 iStateId,
  Pointer<Utf16> pszText,
  Int32 cchText,
  Uint32 dwTextFlags,
  Uint32 dwTextFlags2,
  Pointer<RECT> pRect,
),
    int Function(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<Utf16> pszText,
  int cchText,
  int dwTextFlags,
  int dwTextFlags2,
  Pointer<RECT> pRect,
)>('DrawThemeText');

int DrawThemeTextEx(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<Utf16> pszText,
  int cchText,
  int dwTextFlags,
  Pointer<RECT> pRect,
  Pointer<DTTOPTS> pOptions,
) =>
    _DrawThemeTextEx(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      pszText,
      cchText,
      dwTextFlags,
      pRect,
      pOptions,
    );

late final _DrawThemeTextEx = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  IntPtr hdc,
  Int32 iPartId,
  Int32 iStateId,
  Pointer<Utf16> pszText,
  Int32 cchText,
  Uint32 dwTextFlags,
  Pointer<RECT> pRect,
  Pointer<DTTOPTS> pOptions,
),
    int Function(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<Utf16> pszText,
  int cchText,
  int dwTextFlags,
  Pointer<RECT> pRect,
  Pointer<DTTOPTS> pOptions,
)>('DrawThemeTextEx');

int EnableThemeDialogTexture(
  int hwnd,
  int dwFlags,
) =>
    _EnableThemeDialogTexture(
      hwnd,
      dwFlags,
    );

late final _EnableThemeDialogTexture = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Uint32 dwFlags,
),
    int Function(
  int hwnd,
  int dwFlags,
)>('EnableThemeDialogTexture');

int EnableTheming(
  int fEnable,
) =>
    _EnableTheming(
      fEnable,
    );

late final _EnableTheming = _uxtheme.lookupFunction<
    Int32 Function(
  Int32 fEnable,
),
    int Function(
  int fEnable,
)>('EnableTheming');

int EndBufferedAnimation(
  int hbpAnimation,
  int fUpdateTarget,
) =>
    _EndBufferedAnimation(
      hbpAnimation,
      fUpdateTarget,
    );

late final _EndBufferedAnimation = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hbpAnimation,
  Int32 fUpdateTarget,
),
    int Function(
  int hbpAnimation,
  int fUpdateTarget,
)>('EndBufferedAnimation');

int EndBufferedPaint(
  int hBufferedPaint,
  int fUpdateTarget,
) =>
    _EndBufferedPaint(
      hBufferedPaint,
      fUpdateTarget,
    );

late final _EndBufferedPaint = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hBufferedPaint,
  Int32 fUpdateTarget,
),
    int Function(
  int hBufferedPaint,
  int fUpdateTarget,
)>('EndBufferedPaint');

int EndPanningFeedback(
  int hwnd,
  int fAnimateBack,
) =>
    _EndPanningFeedback(
      hwnd,
      fAnimateBack,
    );

late final _EndPanningFeedback = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 fAnimateBack,
),
    int Function(
  int hwnd,
  int fAnimateBack,
)>('EndPanningFeedback');

int GetBufferedPaintBits(
  int hBufferedPaint,
  Pointer<Pointer<RGBQUAD>> ppbBuffer,
  Pointer<Int32> pcxRow,
) =>
    _GetBufferedPaintBits(
      hBufferedPaint,
      ppbBuffer,
      pcxRow,
    );

late final _GetBufferedPaintBits = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hBufferedPaint,
  Pointer<Pointer<RGBQUAD>> ppbBuffer,
  Pointer<Int32> pcxRow,
),
    int Function(
  int hBufferedPaint,
  Pointer<Pointer<RGBQUAD>> ppbBuffer,
  Pointer<Int32> pcxRow,
)>('GetBufferedPaintBits');

int GetBufferedPaintDC(
  int hBufferedPaint,
) =>
    _GetBufferedPaintDC(
      hBufferedPaint,
    );

late final _GetBufferedPaintDC = _uxtheme.lookupFunction<
    IntPtr Function(
  IntPtr hBufferedPaint,
),
    int Function(
  int hBufferedPaint,
)>('GetBufferedPaintDC');

int GetBufferedPaintTargetDC(
  int hBufferedPaint,
) =>
    _GetBufferedPaintTargetDC(
      hBufferedPaint,
    );

late final _GetBufferedPaintTargetDC = _uxtheme.lookupFunction<
    IntPtr Function(
  IntPtr hBufferedPaint,
),
    int Function(
  int hBufferedPaint,
)>('GetBufferedPaintTargetDC');

int GetBufferedPaintTargetRect(
  int hBufferedPaint,
  Pointer<RECT> prc,
) =>
    _GetBufferedPaintTargetRect(
      hBufferedPaint,
      prc,
    );

late final _GetBufferedPaintTargetRect = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hBufferedPaint,
  Pointer<RECT> prc,
),
    int Function(
  int hBufferedPaint,
  Pointer<RECT> prc,
)>('GetBufferedPaintTargetRect');

int GetCurrentThemeName(
  Pointer<Utf16> pszThemeFileName,
  int cchMaxNameChars,
  Pointer<Utf16> pszColorBuff,
  int cchMaxColorChars,
  Pointer<Utf16> pszSizeBuff,
  int cchMaxSizeChars,
) =>
    _GetCurrentThemeName(
      pszThemeFileName,
      cchMaxNameChars,
      pszColorBuff,
      cchMaxColorChars,
      pszSizeBuff,
      cchMaxSizeChars,
    );

late final _GetCurrentThemeName = _uxtheme.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszThemeFileName,
  Int32 cchMaxNameChars,
  Pointer<Utf16> pszColorBuff,
  Int32 cchMaxColorChars,
  Pointer<Utf16> pszSizeBuff,
  Int32 cchMaxSizeChars,
),
    int Function(
  Pointer<Utf16> pszThemeFileName,
  int cchMaxNameChars,
  Pointer<Utf16> pszColorBuff,
  int cchMaxColorChars,
  Pointer<Utf16> pszSizeBuff,
  int cchMaxSizeChars,
)>('GetCurrentThemeName');

int GetThemeAnimationProperty(
  int hTheme,
  int iStoryboardId,
  int iTargetId,
  int eProperty,
  Pointer pvProperty,
  int cbSize,
  Pointer<Uint32> pcbSizeOut,
) =>
    _GetThemeAnimationProperty(
      hTheme,
      iStoryboardId,
      iTargetId,
      eProperty,
      pvProperty,
      cbSize,
      pcbSizeOut,
    );

late final _GetThemeAnimationProperty = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iStoryboardId,
  Int32 iTargetId,
  Int32 eProperty,
  Pointer pvProperty,
  Uint32 cbSize,
  Pointer<Uint32> pcbSizeOut,
),
    int Function(
  int hTheme,
  int iStoryboardId,
  int iTargetId,
  int eProperty,
  Pointer pvProperty,
  int cbSize,
  Pointer<Uint32> pcbSizeOut,
)>('GetThemeAnimationProperty');

int GetThemeAnimationTransform(
  int hTheme,
  int iStoryboardId,
  int iTargetId,
  int dwTransformIndex,
  Pointer<TA_TRANSFORM> pTransform,
  int cbSize,
  Pointer<Uint32> pcbSizeOut,
) =>
    _GetThemeAnimationTransform(
      hTheme,
      iStoryboardId,
      iTargetId,
      dwTransformIndex,
      pTransform,
      cbSize,
      pcbSizeOut,
    );

late final _GetThemeAnimationTransform = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iStoryboardId,
  Int32 iTargetId,
  Uint32 dwTransformIndex,
  Pointer<TA_TRANSFORM> pTransform,
  Uint32 cbSize,
  Pointer<Uint32> pcbSizeOut,
),
    int Function(
  int hTheme,
  int iStoryboardId,
  int iTargetId,
  int dwTransformIndex,
  Pointer<TA_TRANSFORM> pTransform,
  int cbSize,
  Pointer<Uint32> pcbSizeOut,
)>('GetThemeAnimationTransform');

int GetThemeAppProperties() => _GetThemeAppProperties();

late final _GetThemeAppProperties = _uxtheme
    .lookupFunction<Uint32 Function(), int Function()>('GetThemeAppProperties');

int GetThemeBackgroundContentRect(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pBoundingRect,
  Pointer<RECT> pContentRect,
) =>
    _GetThemeBackgroundContentRect(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      pBoundingRect,
      pContentRect,
    );

late final _GetThemeBackgroundContentRect = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  IntPtr hdc,
  Int32 iPartId,
  Int32 iStateId,
  Pointer<RECT> pBoundingRect,
  Pointer<RECT> pContentRect,
),
    int Function(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pBoundingRect,
  Pointer<RECT> pContentRect,
)>('GetThemeBackgroundContentRect');

int GetThemeBackgroundExtent(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pContentRect,
  Pointer<RECT> pExtentRect,
) =>
    _GetThemeBackgroundExtent(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      pContentRect,
      pExtentRect,
    );

late final _GetThemeBackgroundExtent = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  IntPtr hdc,
  Int32 iPartId,
  Int32 iStateId,
  Pointer<RECT> pContentRect,
  Pointer<RECT> pExtentRect,
),
    int Function(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pContentRect,
  Pointer<RECT> pExtentRect,
)>('GetThemeBackgroundExtent');

int GetThemeBackgroundRegion(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pRect,
  Pointer<IntPtr> pRegion,
) =>
    _GetThemeBackgroundRegion(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      pRect,
      pRegion,
    );

late final _GetThemeBackgroundRegion = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  IntPtr hdc,
  Int32 iPartId,
  Int32 iStateId,
  Pointer<RECT> pRect,
  Pointer<IntPtr> pRegion,
),
    int Function(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pRect,
  Pointer<IntPtr> pRegion,
)>('GetThemeBackgroundRegion');

int GetThemeBitmap(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  int dwFlags,
  Pointer<IntPtr> phBitmap,
) =>
    _GetThemeBitmap(
      hTheme,
      iPartId,
      iStateId,
      iPropId,
      dwFlags,
      phBitmap,
    );

late final _GetThemeBitmap = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iPartId,
  Int32 iStateId,
  Uint32 iPropId,
  Uint32 dwFlags,
  Pointer<IntPtr> phBitmap,
),
    int Function(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  int dwFlags,
  Pointer<IntPtr> phBitmap,
)>('GetThemeBitmap');

int GetThemeBool(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Int32> pfVal,
) =>
    _GetThemeBool(
      hTheme,
      iPartId,
      iStateId,
      iPropId,
      pfVal,
    );

late final _GetThemeBool = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iPartId,
  Int32 iStateId,
  Uint32 iPropId,
  Pointer<Int32> pfVal,
),
    int Function(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Int32> pfVal,
)>('GetThemeBool');

int GetThemeColor(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Uint32> pColor,
) =>
    _GetThemeColor(
      hTheme,
      iPartId,
      iStateId,
      iPropId,
      pColor,
    );

late final _GetThemeColor = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iPartId,
  Int32 iStateId,
  Int32 iPropId,
  Pointer<Uint32> pColor,
),
    int Function(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Uint32> pColor,
)>('GetThemeColor');

int GetThemeDocumentationProperty(
  Pointer<Utf16> pszThemeName,
  Pointer<Utf16> pszPropertyName,
  Pointer<Utf16> pszValueBuff,
  int cchMaxValChars,
) =>
    _GetThemeDocumentationProperty(
      pszThemeName,
      pszPropertyName,
      pszValueBuff,
      cchMaxValChars,
    );

late final _GetThemeDocumentationProperty = _uxtheme.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszThemeName,
  Pointer<Utf16> pszPropertyName,
  Pointer<Utf16> pszValueBuff,
  Int32 cchMaxValChars,
),
    int Function(
  Pointer<Utf16> pszThemeName,
  Pointer<Utf16> pszPropertyName,
  Pointer<Utf16> pszValueBuff,
  int cchMaxValChars,
)>('GetThemeDocumentationProperty');

int GetThemeEnumValue(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Int32> piVal,
) =>
    _GetThemeEnumValue(
      hTheme,
      iPartId,
      iStateId,
      iPropId,
      piVal,
    );

late final _GetThemeEnumValue = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iPartId,
  Int32 iStateId,
  Int32 iPropId,
  Pointer<Int32> piVal,
),
    int Function(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Int32> piVal,
)>('GetThemeEnumValue');

int GetThemeFilename(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Utf16> pszThemeFileName,
  int cchMaxBuffChars,
) =>
    _GetThemeFilename(
      hTheme,
      iPartId,
      iStateId,
      iPropId,
      pszThemeFileName,
      cchMaxBuffChars,
    );

late final _GetThemeFilename = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iPartId,
  Int32 iStateId,
  Int32 iPropId,
  Pointer<Utf16> pszThemeFileName,
  Int32 cchMaxBuffChars,
),
    int Function(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Utf16> pszThemeFileName,
  int cchMaxBuffChars,
)>('GetThemeFilename');

int GetThemeFont(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<LOGFONT> pFont,
) =>
    _GetThemeFont(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      iPropId,
      pFont,
    );

late final _GetThemeFont = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  IntPtr hdc,
  Int32 iPartId,
  Int32 iStateId,
  Int32 iPropId,
  Pointer<LOGFONT> pFont,
),
    int Function(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<LOGFONT> pFont,
)>('GetThemeFont');

int GetThemeInt(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Int32> piVal,
) =>
    _GetThemeInt(
      hTheme,
      iPartId,
      iStateId,
      iPropId,
      piVal,
    );

late final _GetThemeInt = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iPartId,
  Int32 iStateId,
  Int32 iPropId,
  Pointer<Int32> piVal,
),
    int Function(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Int32> piVal,
)>('GetThemeInt');

int GetThemeIntList(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<INTLIST> pIntList,
) =>
    _GetThemeIntList(
      hTheme,
      iPartId,
      iStateId,
      iPropId,
      pIntList,
    );

late final _GetThemeIntList = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iPartId,
  Int32 iStateId,
  Int32 iPropId,
  Pointer<INTLIST> pIntList,
),
    int Function(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<INTLIST> pIntList,
)>('GetThemeIntList');

int GetThemeMargins(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<RECT> prc,
  Pointer<MARGINS> pMargins,
) =>
    _GetThemeMargins(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      iPropId,
      prc,
      pMargins,
    );

late final _GetThemeMargins = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  IntPtr hdc,
  Int32 iPartId,
  Int32 iStateId,
  Int32 iPropId,
  Pointer<RECT> prc,
  Pointer<MARGINS> pMargins,
),
    int Function(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<RECT> prc,
  Pointer<MARGINS> pMargins,
)>('GetThemeMargins');

int GetThemeMetric(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Int32> piVal,
) =>
    _GetThemeMetric(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      iPropId,
      piVal,
    );

late final _GetThemeMetric = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  IntPtr hdc,
  Int32 iPartId,
  Int32 iStateId,
  Uint32 iPropId,
  Pointer<Int32> piVal,
),
    int Function(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Int32> piVal,
)>('GetThemeMetric');

int GetThemePartSize(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> prc,
  int eSize,
  Pointer<SIZE> psz,
) =>
    _GetThemePartSize(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      prc,
      eSize,
      psz,
    );

late final _GetThemePartSize = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  IntPtr hdc,
  Int32 iPartId,
  Int32 iStateId,
  Pointer<RECT> prc,
  Int32 eSize,
  Pointer<SIZE> psz,
),
    int Function(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> prc,
  int eSize,
  Pointer<SIZE> psz,
)>('GetThemePartSize');

int GetThemePosition(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<POINT> pPoint,
) =>
    _GetThemePosition(
      hTheme,
      iPartId,
      iStateId,
      iPropId,
      pPoint,
    );

late final _GetThemePosition = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iPartId,
  Int32 iStateId,
  Int32 iPropId,
  Pointer<POINT> pPoint,
),
    int Function(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<POINT> pPoint,
)>('GetThemePosition');

int GetThemePropertyOrigin(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Int32> pOrigin,
) =>
    _GetThemePropertyOrigin(
      hTheme,
      iPartId,
      iStateId,
      iPropId,
      pOrigin,
    );

late final _GetThemePropertyOrigin = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iPartId,
  Int32 iStateId,
  Int32 iPropId,
  Pointer<Int32> pOrigin,
),
    int Function(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Int32> pOrigin,
)>('GetThemePropertyOrigin');

int GetThemeRect(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<RECT> pRect,
) =>
    _GetThemeRect(
      hTheme,
      iPartId,
      iStateId,
      iPropId,
      pRect,
    );

late final _GetThemeRect = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iPartId,
  Int32 iStateId,
  Int32 iPropId,
  Pointer<RECT> pRect,
),
    int Function(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<RECT> pRect,
)>('GetThemeRect');

int GetThemeStream(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Pointer> ppvStream,
  Pointer<Uint32> pcbStream,
  int hInst,
) =>
    _GetThemeStream(
      hTheme,
      iPartId,
      iStateId,
      iPropId,
      ppvStream,
      pcbStream,
      hInst,
    );

late final _GetThemeStream = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iPartId,
  Int32 iStateId,
  Int32 iPropId,
  Pointer<Pointer> ppvStream,
  Pointer<Uint32> pcbStream,
  IntPtr hInst,
),
    int Function(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Pointer> ppvStream,
  Pointer<Uint32> pcbStream,
  int hInst,
)>('GetThemeStream');

int GetThemeString(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Utf16> pszBuff,
  int cchMaxBuffChars,
) =>
    _GetThemeString(
      hTheme,
      iPartId,
      iStateId,
      iPropId,
      pszBuff,
      cchMaxBuffChars,
    );

late final _GetThemeString = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iPartId,
  Int32 iStateId,
  Int32 iPropId,
  Pointer<Utf16> pszBuff,
  Int32 cchMaxBuffChars,
),
    int Function(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Utf16> pszBuff,
  int cchMaxBuffChars,
)>('GetThemeString');

int GetThemeSysBool(
  int hTheme,
  int iBoolId,
) =>
    _GetThemeSysBool(
      hTheme,
      iBoolId,
    );

late final _GetThemeSysBool = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iBoolId,
),
    int Function(
  int hTheme,
  int iBoolId,
)>('GetThemeSysBool');

int GetThemeSysColor(
  int hTheme,
  int iColorId,
) =>
    _GetThemeSysColor(
      hTheme,
      iColorId,
    );

late final _GetThemeSysColor = _uxtheme.lookupFunction<
    Uint32 Function(
  IntPtr hTheme,
  Int32 iColorId,
),
    int Function(
  int hTheme,
  int iColorId,
)>('GetThemeSysColor');

int GetThemeSysColorBrush(
  int hTheme,
  int iColorId,
) =>
    _GetThemeSysColorBrush(
      hTheme,
      iColorId,
    );

late final _GetThemeSysColorBrush = _uxtheme.lookupFunction<
    IntPtr Function(
  IntPtr hTheme,
  Uint32 iColorId,
),
    int Function(
  int hTheme,
  int iColorId,
)>('GetThemeSysColorBrush');

int GetThemeSysFont(
  int hTheme,
  int iFontId,
  Pointer<LOGFONT> plf,
) =>
    _GetThemeSysFont(
      hTheme,
      iFontId,
      plf,
    );

late final _GetThemeSysFont = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Uint32 iFontId,
  Pointer<LOGFONT> plf,
),
    int Function(
  int hTheme,
  int iFontId,
  Pointer<LOGFONT> plf,
)>('GetThemeSysFont');

int GetThemeSysInt(
  int hTheme,
  int iIntId,
  Pointer<Int32> piValue,
) =>
    _GetThemeSysInt(
      hTheme,
      iIntId,
      piValue,
    );

late final _GetThemeSysInt = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iIntId,
  Pointer<Int32> piValue,
),
    int Function(
  int hTheme,
  int iIntId,
  Pointer<Int32> piValue,
)>('GetThemeSysInt');

int GetThemeSysSize(
  int hTheme,
  int iSizeId,
) =>
    _GetThemeSysSize(
      hTheme,
      iSizeId,
    );

late final _GetThemeSysSize = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iSizeId,
),
    int Function(
  int hTheme,
  int iSizeId,
)>('GetThemeSysSize');

int GetThemeSysString(
  int hTheme,
  int iStringId,
  Pointer<Utf16> pszStringBuff,
  int cchMaxStringChars,
) =>
    _GetThemeSysString(
      hTheme,
      iStringId,
      pszStringBuff,
      cchMaxStringChars,
    );

late final _GetThemeSysString = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Uint32 iStringId,
  Pointer<Utf16> pszStringBuff,
  Int32 cchMaxStringChars,
),
    int Function(
  int hTheme,
  int iStringId,
  Pointer<Utf16> pszStringBuff,
  int cchMaxStringChars,
)>('GetThemeSysString');

int GetThemeTextExtent(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<Utf16> pszText,
  int cchCharCount,
  int dwTextFlags,
  Pointer<RECT> pBoundingRect,
  Pointer<RECT> pExtentRect,
) =>
    _GetThemeTextExtent(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      pszText,
      cchCharCount,
      dwTextFlags,
      pBoundingRect,
      pExtentRect,
    );

late final _GetThemeTextExtent = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  IntPtr hdc,
  Int32 iPartId,
  Int32 iStateId,
  Pointer<Utf16> pszText,
  Int32 cchCharCount,
  Uint32 dwTextFlags,
  Pointer<RECT> pBoundingRect,
  Pointer<RECT> pExtentRect,
),
    int Function(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<Utf16> pszText,
  int cchCharCount,
  int dwTextFlags,
  Pointer<RECT> pBoundingRect,
  Pointer<RECT> pExtentRect,
)>('GetThemeTextExtent');

int GetThemeTextMetrics(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<TEXTMETRIC> ptm,
) =>
    _GetThemeTextMetrics(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      ptm,
    );

late final _GetThemeTextMetrics = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  IntPtr hdc,
  Int32 iPartId,
  Int32 iStateId,
  Pointer<TEXTMETRIC> ptm,
),
    int Function(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<TEXTMETRIC> ptm,
)>('GetThemeTextMetrics');

int GetThemeTimingFunction(
  int hTheme,
  int iTimingFunctionId,
  Pointer<TA_TIMINGFUNCTION> pTimingFunction,
  int cbSize,
  Pointer<Uint32> pcbSizeOut,
) =>
    _GetThemeTimingFunction(
      hTheme,
      iTimingFunctionId,
      pTimingFunction,
      cbSize,
      pcbSizeOut,
    );

late final _GetThemeTimingFunction = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iTimingFunctionId,
  Pointer<TA_TIMINGFUNCTION> pTimingFunction,
  Uint32 cbSize,
  Pointer<Uint32> pcbSizeOut,
),
    int Function(
  int hTheme,
  int iTimingFunctionId,
  Pointer<TA_TIMINGFUNCTION> pTimingFunction,
  int cbSize,
  Pointer<Uint32> pcbSizeOut,
)>('GetThemeTimingFunction');

int GetThemeTransitionDuration(
  int hTheme,
  int iPartId,
  int iStateIdFrom,
  int iStateIdTo,
  int iPropId,
  Pointer<Uint32> pdwDuration,
) =>
    _GetThemeTransitionDuration(
      hTheme,
      iPartId,
      iStateIdFrom,
      iStateIdTo,
      iPropId,
      pdwDuration,
    );

late final _GetThemeTransitionDuration = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iPartId,
  Int32 iStateIdFrom,
  Int32 iStateIdTo,
  Int32 iPropId,
  Pointer<Uint32> pdwDuration,
),
    int Function(
  int hTheme,
  int iPartId,
  int iStateIdFrom,
  int iStateIdTo,
  int iPropId,
  Pointer<Uint32> pdwDuration,
)>('GetThemeTransitionDuration');

int GetWindowTheme(
  int hwnd,
) =>
    _GetWindowTheme(
      hwnd,
    );

late final _GetWindowTheme = _uxtheme.lookupFunction<
    IntPtr Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('GetWindowTheme');

int HitTestThemeBackground(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  int dwOptions,
  Pointer<RECT> pRect,
  int hrgn,
  POINT ptTest,
  Pointer<Uint16> pwHitTestCode,
) =>
    _HitTestThemeBackground(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      dwOptions,
      pRect,
      hrgn,
      ptTest,
      pwHitTestCode,
    );

late final _HitTestThemeBackground = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  IntPtr hdc,
  Int32 iPartId,
  Int32 iStateId,
  Uint32 dwOptions,
  Pointer<RECT> pRect,
  IntPtr hrgn,
  POINT ptTest,
  Pointer<Uint16> pwHitTestCode,
),
    int Function(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  int dwOptions,
  Pointer<RECT> pRect,
  int hrgn,
  POINT ptTest,
  Pointer<Uint16> pwHitTestCode,
)>('HitTestThemeBackground');

int IsAppThemed() => _IsAppThemed();

late final _IsAppThemed =
    _uxtheme.lookupFunction<Int32 Function(), int Function()>('IsAppThemed');

int IsCompositionActive() => _IsCompositionActive();

late final _IsCompositionActive = _uxtheme
    .lookupFunction<Int32 Function(), int Function()>('IsCompositionActive');

int IsThemeActive() => _IsThemeActive();

late final _IsThemeActive =
    _uxtheme.lookupFunction<Int32 Function(), int Function()>('IsThemeActive');

int IsThemeBackgroundPartiallyTransparent(
  int hTheme,
  int iPartId,
  int iStateId,
) =>
    _IsThemeBackgroundPartiallyTransparent(
      hTheme,
      iPartId,
      iStateId,
    );

late final _IsThemeBackgroundPartiallyTransparent = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iPartId,
  Int32 iStateId,
),
    int Function(
  int hTheme,
  int iPartId,
  int iStateId,
)>('IsThemeBackgroundPartiallyTransparent');

int IsThemeDialogTextureEnabled(
  int hwnd,
) =>
    _IsThemeDialogTextureEnabled(
      hwnd,
    );

late final _IsThemeDialogTextureEnabled = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('IsThemeDialogTextureEnabled');

int IsThemePartDefined(
  int hTheme,
  int iPartId,
  int iStateId,
) =>
    _IsThemePartDefined(
      hTheme,
      iPartId,
      iStateId,
    );

late final _IsThemePartDefined = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hTheme,
  Int32 iPartId,
  Int32 iStateId,
),
    int Function(
  int hTheme,
  int iPartId,
  int iStateId,
)>('IsThemePartDefined');

int OpenThemeData(
  int hwnd,
  Pointer<Utf16> pszClassList,
) =>
    _OpenThemeData(
      hwnd,
      pszClassList,
    );

late final _OpenThemeData = _uxtheme.lookupFunction<
    IntPtr Function(
  IntPtr hwnd,
  Pointer<Utf16> pszClassList,
),
    int Function(
  int hwnd,
  Pointer<Utf16> pszClassList,
)>('OpenThemeData');

int OpenThemeDataEx(
  int hwnd,
  Pointer<Utf16> pszClassList,
  int dwFlags,
) =>
    _OpenThemeDataEx(
      hwnd,
      pszClassList,
      dwFlags,
    );

late final _OpenThemeDataEx = _uxtheme.lookupFunction<
    IntPtr Function(
  IntPtr hwnd,
  Pointer<Utf16> pszClassList,
  Uint32 dwFlags,
),
    int Function(
  int hwnd,
  Pointer<Utf16> pszClassList,
  int dwFlags,
)>('OpenThemeDataEx');

void SetThemeAppProperties(
  int dwFlags,
) =>
    _SetThemeAppProperties(
      dwFlags,
    );

late final _SetThemeAppProperties = _uxtheme.lookupFunction<
    Void Function(
  Uint32 dwFlags,
),
    void Function(
  int dwFlags,
)>('SetThemeAppProperties');

int SetWindowTheme(
  int hwnd,
  Pointer<Utf16> pszSubAppName,
  Pointer<Utf16> pszSubIdList,
) =>
    _SetWindowTheme(
      hwnd,
      pszSubAppName,
      pszSubIdList,
    );

late final _SetWindowTheme = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Utf16> pszSubAppName,
  Pointer<Utf16> pszSubIdList,
),
    int Function(
  int hwnd,
  Pointer<Utf16> pszSubAppName,
  Pointer<Utf16> pszSubIdList,
)>('SetWindowTheme');

int SetWindowThemeAttribute(
  int hwnd,
  int eAttribute,
  Pointer pvAttribute,
  int cbAttribute,
) =>
    _SetWindowThemeAttribute(
      hwnd,
      eAttribute,
      pvAttribute,
      cbAttribute,
    );

late final _SetWindowThemeAttribute = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 eAttribute,
  Pointer pvAttribute,
  Uint32 cbAttribute,
),
    int Function(
  int hwnd,
  int eAttribute,
  Pointer pvAttribute,
  int cbAttribute,
)>('SetWindowThemeAttribute');

int UpdatePanningFeedback(
  int hwnd,
  int lTotalOverpanOffsetX,
  int lTotalOverpanOffsetY,
  int fInInertia,
) =>
    _UpdatePanningFeedback(
      hwnd,
      lTotalOverpanOffsetX,
      lTotalOverpanOffsetY,
      fInInertia,
    );

late final _UpdatePanningFeedback = _uxtheme.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 lTotalOverpanOffsetX,
  Int32 lTotalOverpanOffsetY,
  Int32 fInInertia,
),
    int Function(
  int hwnd,
  int lTotalOverpanOffsetX,
  int lTotalOverpanOffsetY,
  int fInInertia,
)>('UpdatePanningFeedback');

// -----------------------------------------------------------------------
// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int CheckDlgButton(
  int hDlg,
  int nIDButton,
  int uCheck,
) =>
    _CheckDlgButton(
      hDlg,
      nIDButton,
      uCheck,
    );

late final _CheckDlgButton = _user32.lookupFunction<
    Int32 Function(
  IntPtr hDlg,
  Int32 nIDButton,
  Uint32 uCheck,
),
    int Function(
  int hDlg,
  int nIDButton,
  int uCheck,
)>('CheckDlgButton');

int CheckRadioButton(
  int hDlg,
  int nIDFirstButton,
  int nIDLastButton,
  int nIDCheckButton,
) =>
    _CheckRadioButton(
      hDlg,
      nIDFirstButton,
      nIDLastButton,
      nIDCheckButton,
    );

late final _CheckRadioButton = _user32.lookupFunction<
    Int32 Function(
  IntPtr hDlg,
  Int32 nIDFirstButton,
  Int32 nIDLastButton,
  Int32 nIDCheckButton,
),
    int Function(
  int hDlg,
  int nIDFirstButton,
  int nIDLastButton,
  int nIDCheckButton,
)>('CheckRadioButton');

int CreateSyntheticPointerDevice(
  int pointerType,
  int maxCount,
  int mode,
) =>
    _CreateSyntheticPointerDevice(
      pointerType,
      maxCount,
      mode,
    );

late final _CreateSyntheticPointerDevice = _user32.lookupFunction<
    IntPtr Function(
  Int32 pointerType,
  Uint32 maxCount,
  Int32 mode,
),
    int Function(
  int pointerType,
  int maxCount,
  int mode,
)>('CreateSyntheticPointerDevice');

void DestroySyntheticPointerDevice(
  int device,
) =>
    _DestroySyntheticPointerDevice(
      device,
    );

late final _DestroySyntheticPointerDevice = _user32.lookupFunction<
    Void Function(
  IntPtr device,
),
    void Function(
  int device,
)>('DestroySyntheticPointerDevice');

int DlgDirListComboBox(
  int hDlg,
  Pointer<Utf16> lpPathSpec,
  int nIDComboBox,
  int nIDStaticPath,
  int uFiletype,
) =>
    _DlgDirListComboBox(
      hDlg,
      lpPathSpec,
      nIDComboBox,
      nIDStaticPath,
      uFiletype,
    );

late final _DlgDirListComboBox = _user32.lookupFunction<
    Int32 Function(
  IntPtr hDlg,
  Pointer<Utf16> lpPathSpec,
  Int32 nIDComboBox,
  Int32 nIDStaticPath,
  Uint32 uFiletype,
),
    int Function(
  int hDlg,
  Pointer<Utf16> lpPathSpec,
  int nIDComboBox,
  int nIDStaticPath,
  int uFiletype,
)>('DlgDirListComboBoxW');

int DlgDirList(
  int hDlg,
  Pointer<Utf16> lpPathSpec,
  int nIDListBox,
  int nIDStaticPath,
  int uFileType,
) =>
    _DlgDirList(
      hDlg,
      lpPathSpec,
      nIDListBox,
      nIDStaticPath,
      uFileType,
    );

late final _DlgDirList = _user32.lookupFunction<
    Int32 Function(
  IntPtr hDlg,
  Pointer<Utf16> lpPathSpec,
  Int32 nIDListBox,
  Int32 nIDStaticPath,
  Uint32 uFileType,
),
    int Function(
  int hDlg,
  Pointer<Utf16> lpPathSpec,
  int nIDListBox,
  int nIDStaticPath,
  int uFileType,
)>('DlgDirListW');

int DlgDirSelectComboBoxEx(
  int hwndDlg,
  Pointer<Utf16> lpString,
  int cchOut,
  int idComboBox,
) =>
    _DlgDirSelectComboBoxEx(
      hwndDlg,
      lpString,
      cchOut,
      idComboBox,
    );

late final _DlgDirSelectComboBoxEx = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwndDlg,
  Pointer<Utf16> lpString,
  Int32 cchOut,
  Int32 idComboBox,
),
    int Function(
  int hwndDlg,
  Pointer<Utf16> lpString,
  int cchOut,
  int idComboBox,
)>('DlgDirSelectComboBoxExW');

int DlgDirSelectEx(
  int hwndDlg,
  Pointer<Utf16> lpString,
  int chCount,
  int idListBox,
) =>
    _DlgDirSelectEx(
      hwndDlg,
      lpString,
      chCount,
      idListBox,
    );

late final _DlgDirSelectEx = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwndDlg,
  Pointer<Utf16> lpString,
  Int32 chCount,
  Int32 idListBox,
),
    int Function(
  int hwndDlg,
  Pointer<Utf16> lpString,
  int chCount,
  int idListBox,
)>('DlgDirSelectExW');

int EnableScrollBar(
  int hWnd,
  int wSBflags,
  int wArrows,
) =>
    _EnableScrollBar(
      hWnd,
      wSBflags,
      wArrows,
    );

late final _EnableScrollBar = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Uint32 wSBflags,
  Uint32 wArrows,
),
    int Function(
  int hWnd,
  int wSBflags,
  int wArrows,
)>('EnableScrollBar');

int EvaluateProximityToPolygon(
  int numVertices,
  Pointer<POINT> controlPolygon,
  Pointer<TOUCH_HIT_TESTING_INPUT> pHitTestingInput,
  Pointer<TOUCH_HIT_TESTING_PROXIMITY_EVALUATION> pProximityEval,
) =>
    _EvaluateProximityToPolygon(
      numVertices,
      controlPolygon,
      pHitTestingInput,
      pProximityEval,
    );

late final _EvaluateProximityToPolygon = _user32.lookupFunction<
    Int32 Function(
  Uint32 numVertices,
  Pointer<POINT> controlPolygon,
  Pointer<TOUCH_HIT_TESTING_INPUT> pHitTestingInput,
  Pointer<TOUCH_HIT_TESTING_PROXIMITY_EVALUATION> pProximityEval,
),
    int Function(
  int numVertices,
  Pointer<POINT> controlPolygon,
  Pointer<TOUCH_HIT_TESTING_INPUT> pHitTestingInput,
  Pointer<TOUCH_HIT_TESTING_PROXIMITY_EVALUATION> pProximityEval,
)>('EvaluateProximityToPolygon');

int EvaluateProximityToRect(
  Pointer<RECT> controlBoundingBox,
  Pointer<TOUCH_HIT_TESTING_INPUT> pHitTestingInput,
  Pointer<TOUCH_HIT_TESTING_PROXIMITY_EVALUATION> pProximityEval,
) =>
    _EvaluateProximityToRect(
      controlBoundingBox,
      pHitTestingInput,
      pProximityEval,
    );

late final _EvaluateProximityToRect = _user32.lookupFunction<
    Int32 Function(
  Pointer<RECT> controlBoundingBox,
  Pointer<TOUCH_HIT_TESTING_INPUT> pHitTestingInput,
  Pointer<TOUCH_HIT_TESTING_PROXIMITY_EVALUATION> pProximityEval,
),
    int Function(
  Pointer<RECT> controlBoundingBox,
  Pointer<TOUCH_HIT_TESTING_INPUT> pHitTestingInput,
  Pointer<TOUCH_HIT_TESTING_PROXIMITY_EVALUATION> pProximityEval,
)>('EvaluateProximityToRect');

int GetComboBoxInfo(
  int hwndCombo,
  Pointer<COMBOBOXINFO> pcbi,
) =>
    _GetComboBoxInfo(
      hwndCombo,
      pcbi,
    );

late final _GetComboBoxInfo = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwndCombo,
  Pointer<COMBOBOXINFO> pcbi,
),
    int Function(
  int hwndCombo,
  Pointer<COMBOBOXINFO> pcbi,
)>('GetComboBoxInfo');

int GetListBoxInfo(
  int hwnd,
) =>
    _GetListBoxInfo(
      hwnd,
    );

late final _GetListBoxInfo = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('GetListBoxInfo');

int GetWindowFeedbackSetting(
  int hwnd,
  int feedback,
  int dwFlags,
  Pointer<Uint32> pSize,
  Pointer config,
) =>
    _GetWindowFeedbackSetting(
      hwnd,
      feedback,
      dwFlags,
      pSize,
      config,
    );

late final _GetWindowFeedbackSetting = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 feedback,
  Uint32 dwFlags,
  Pointer<Uint32> pSize,
  Pointer config,
),
    int Function(
  int hwnd,
  int feedback,
  int dwFlags,
  Pointer<Uint32> pSize,
  Pointer config,
)>('GetWindowFeedbackSetting');

int IsCharLower(
  int ch,
) =>
    _IsCharLower(
      ch,
    );

late final _IsCharLower = _user32.lookupFunction<
    Int32 Function(
  Uint16 ch,
),
    int Function(
  int ch,
)>('IsCharLowerW');

int IsDlgButtonChecked(
  int hDlg,
  int nIDButton,
) =>
    _IsDlgButtonChecked(
      hDlg,
      nIDButton,
    );

late final _IsDlgButtonChecked = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hDlg,
  Int32 nIDButton,
),
    int Function(
  int hDlg,
  int nIDButton,
)>('IsDlgButtonChecked');

int PackTouchHitTestingProximityEvaluation(
  Pointer<TOUCH_HIT_TESTING_INPUT> pHitTestingInput,
  Pointer<TOUCH_HIT_TESTING_PROXIMITY_EVALUATION> pProximityEval,
) =>
    _PackTouchHitTestingProximityEvaluation(
      pHitTestingInput,
      pProximityEval,
    );

late final _PackTouchHitTestingProximityEvaluation = _user32.lookupFunction<
    IntPtr Function(
  Pointer<TOUCH_HIT_TESTING_INPUT> pHitTestingInput,
  Pointer<TOUCH_HIT_TESTING_PROXIMITY_EVALUATION> pProximityEval,
),
    int Function(
  Pointer<TOUCH_HIT_TESTING_INPUT> pHitTestingInput,
  Pointer<TOUCH_HIT_TESTING_PROXIMITY_EVALUATION> pProximityEval,
)>('PackTouchHitTestingProximityEvaluation');

int RegisterPointerDeviceNotifications(
  int window,
  int notifyRange,
) =>
    _RegisterPointerDeviceNotifications(
      window,
      notifyRange,
    );

late final _RegisterPointerDeviceNotifications = _user32.lookupFunction<
    Int32 Function(
  IntPtr window,
  Int32 notifyRange,
),
    int Function(
  int window,
  int notifyRange,
)>('RegisterPointerDeviceNotifications');

int RegisterTouchHitTestingWindow(
  int hwnd,
  int value,
) =>
    _RegisterTouchHitTestingWindow(
      hwnd,
      value,
    );

late final _RegisterTouchHitTestingWindow = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Uint32 value,
),
    int Function(
  int hwnd,
  int value,
)>('RegisterTouchHitTestingWindow');

int SetScrollInfo(
  int hwnd,
  int nBar,
  Pointer<SCROLLINFO> lpsi,
  int redraw,
) =>
    _SetScrollInfo(
      hwnd,
      nBar,
      lpsi,
      redraw,
    );

late final _SetScrollInfo = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Uint32 nBar,
  Pointer<SCROLLINFO> lpsi,
  Int32 redraw,
),
    int Function(
  int hwnd,
  int nBar,
  Pointer<SCROLLINFO> lpsi,
  int redraw,
)>('SetScrollInfo');

int SetScrollPos(
  int hWnd,
  int nBar,
  int nPos,
  int bRedraw,
) =>
    _SetScrollPos(
      hWnd,
      nBar,
      nPos,
      bRedraw,
    );

late final _SetScrollPos = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Uint32 nBar,
  Int32 nPos,
  Int32 bRedraw,
),
    int Function(
  int hWnd,
  int nBar,
  int nPos,
  int bRedraw,
)>('SetScrollPos');

int SetScrollRange(
  int hWnd,
  int nBar,
  int nMinPos,
  int nMaxPos,
  int bRedraw,
) =>
    _SetScrollRange(
      hWnd,
      nBar,
      nMinPos,
      nMaxPos,
      bRedraw,
    );

late final _SetScrollRange = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Uint32 nBar,
  Int32 nMinPos,
  Int32 nMaxPos,
  Int32 bRedraw,
),
    int Function(
  int hWnd,
  int nBar,
  int nMinPos,
  int nMaxPos,
  int bRedraw,
)>('SetScrollRange');

int SetWindowFeedbackSetting(
  int hwnd,
  int feedback,
  int dwFlags,
  int size,
  Pointer configuration,
) =>
    _SetWindowFeedbackSetting(
      hwnd,
      feedback,
      dwFlags,
      size,
      configuration,
    );

late final _SetWindowFeedbackSetting = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 feedback,
  Uint32 dwFlags,
  Uint32 size,
  Pointer configuration,
),
    int Function(
  int hwnd,
  int feedback,
  int dwFlags,
  int size,
  Pointer configuration,
)>('SetWindowFeedbackSetting');

int ShowScrollBar(
  int hWnd,
  int wBar,
  int bShow,
) =>
    _ShowScrollBar(
      hWnd,
      wBar,
      bShow,
    );

late final _ShowScrollBar = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Uint32 wBar,
  Int32 bShow,
),
    int Function(
  int hWnd,
  int wBar,
  int bShow,
)>('ShowScrollBar');
