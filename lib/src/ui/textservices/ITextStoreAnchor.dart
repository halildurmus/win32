// ITextStoreAnchor.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/structs.g.dart';
import '../../ui/textservices/IAnchor.dart';
import '../../system/com/IDataObject.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_ITextStoreAnchor = '{9B2077B0-5F18-4DEC-BEE9-3CC722F5DFE0}';

/// {@category Interface}
/// {@category com}
class ITextStoreAnchor extends IUnknown {
  // vtable begins at 3, is 27 entries long.
  ITextStoreAnchor(Pointer<COMObject> ptr) : super(ptr);

  int AdviseSink(
    Pointer<GUID> riid,
    Pointer<COMObject> punk,
    int dwMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<COMObject> punk,
            Uint32 dwMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<COMObject> punk,
            int dwMask,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        punk,
        dwMask,
      );

  int UnadviseSink(
    Pointer<COMObject> punk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
          )>()(
        ptr.ref.lpVtbl,
        punk,
      );

  int RequestLock(
    int dwLockFlags,
    Pointer<Int32> phrSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwLockFlags,
            Pointer<Int32> phrSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwLockFlags,
            Pointer<Int32> phrSession,
          )>()(
        ptr.ref.lpVtbl,
        dwLockFlags,
        phrSession,
      );

  int GetStatus(
    Pointer<TS_STATUS> pdcs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TS_STATUS> pdcs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TS_STATUS> pdcs,
          )>()(
        ptr.ref.lpVtbl,
        pdcs,
      );

  int QueryInsert(
    Pointer<COMObject> paTestStart,
    Pointer<COMObject> paTestEnd,
    int cch,
    Pointer<Pointer<COMObject>> ppaResultStart,
    Pointer<Pointer<COMObject>> ppaResultEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> paTestStart,
            Pointer<COMObject> paTestEnd,
            Uint32 cch,
            Pointer<Pointer<COMObject>> ppaResultStart,
            Pointer<Pointer<COMObject>> ppaResultEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> paTestStart,
            Pointer<COMObject> paTestEnd,
            int cch,
            Pointer<Pointer<COMObject>> ppaResultStart,
            Pointer<Pointer<COMObject>> ppaResultEnd,
          )>()(
        ptr.ref.lpVtbl,
        paTestStart,
        paTestEnd,
        cch,
        ppaResultStart,
        ppaResultEnd,
      );

  int GetSelection(
    int ulIndex,
    int ulCount,
    Pointer<TS_SELECTION_ANCHOR> pSelection,
    Pointer<Uint32> pcFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulIndex,
            Uint32 ulCount,
            Pointer<TS_SELECTION_ANCHOR> pSelection,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulIndex,
            int ulCount,
            Pointer<TS_SELECTION_ANCHOR> pSelection,
            Pointer<Uint32> pcFetched,
          )>()(
        ptr.ref.lpVtbl,
        ulIndex,
        ulCount,
        pSelection,
        pcFetched,
      );

  int SetSelection(
    int ulCount,
    Pointer<TS_SELECTION_ANCHOR> pSelection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulCount,
            Pointer<TS_SELECTION_ANCHOR> pSelection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulCount,
            Pointer<TS_SELECTION_ANCHOR> pSelection,
          )>()(
        ptr.ref.lpVtbl,
        ulCount,
        pSelection,
      );

  int GetText(
    int dwFlags,
    Pointer<COMObject> paStart,
    Pointer<COMObject> paEnd,
    Pointer<Utf16> pchText,
    int cchReq,
    Pointer<Uint32> pcch,
    int fUpdateAnchor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> paStart,
            Pointer<COMObject> paEnd,
            Pointer<Utf16> pchText,
            Uint32 cchReq,
            Pointer<Uint32> pcch,
            Int32 fUpdateAnchor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> paStart,
            Pointer<COMObject> paEnd,
            Pointer<Utf16> pchText,
            int cchReq,
            Pointer<Uint32> pcch,
            int fUpdateAnchor,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        paStart,
        paEnd,
        pchText,
        cchReq,
        pcch,
        fUpdateAnchor,
      );

  int SetText(
    int dwFlags,
    Pointer<COMObject> paStart,
    Pointer<COMObject> paEnd,
    Pointer<Utf16> pchText,
    int cch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> paStart,
            Pointer<COMObject> paEnd,
            Pointer<Utf16> pchText,
            Uint32 cch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> paStart,
            Pointer<COMObject> paEnd,
            Pointer<Utf16> pchText,
            int cch,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        paStart,
        paEnd,
        pchText,
        cch,
      );

  int GetFormattedText(
    Pointer<COMObject> paStart,
    Pointer<COMObject> paEnd,
    Pointer<Pointer<COMObject>> ppDataObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> paStart,
            Pointer<COMObject> paEnd,
            Pointer<Pointer<COMObject>> ppDataObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> paStart,
            Pointer<COMObject> paEnd,
            Pointer<Pointer<COMObject>> ppDataObject,
          )>()(
        ptr.ref.lpVtbl,
        paStart,
        paEnd,
        ppDataObject,
      );

  int GetEmbedded(
    int dwFlags,
    Pointer<COMObject> paPos,
    Pointer<GUID> rguidService,
    Pointer<GUID> riid,
    Pointer<Pointer<COMObject>> ppunk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> paPos,
            Pointer<GUID> rguidService,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> paPos,
            Pointer<GUID> rguidService,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunk,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        paPos,
        rguidService,
        riid,
        ppunk,
      );

  int InsertEmbedded(
    int dwFlags,
    Pointer<COMObject> paStart,
    Pointer<COMObject> paEnd,
    Pointer<COMObject> pDataObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> paStart,
            Pointer<COMObject> paEnd,
            Pointer<COMObject> pDataObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> paStart,
            Pointer<COMObject> paEnd,
            Pointer<COMObject> pDataObject,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        paStart,
        paEnd,
        pDataObject,
      );

  int RequestSupportedAttrs(
    int dwFlags,
    int cFilterAttrs,
    Pointer<GUID> paFilterAttrs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Uint32 cFilterAttrs,
            Pointer<GUID> paFilterAttrs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int cFilterAttrs,
            Pointer<GUID> paFilterAttrs,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        cFilterAttrs,
        paFilterAttrs,
      );

  int RequestAttrsAtPosition(
    Pointer<COMObject> paPos,
    int cFilterAttrs,
    Pointer<GUID> paFilterAttrs,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> paPos,
            Uint32 cFilterAttrs,
            Pointer<GUID> paFilterAttrs,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> paPos,
            int cFilterAttrs,
            Pointer<GUID> paFilterAttrs,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        paPos,
        cFilterAttrs,
        paFilterAttrs,
        dwFlags,
      );

  int RequestAttrsTransitioningAtPosition(
    Pointer<COMObject> paPos,
    int cFilterAttrs,
    Pointer<GUID> paFilterAttrs,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> paPos,
            Uint32 cFilterAttrs,
            Pointer<GUID> paFilterAttrs,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> paPos,
            int cFilterAttrs,
            Pointer<GUID> paFilterAttrs,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        paPos,
        cFilterAttrs,
        paFilterAttrs,
        dwFlags,
      );

  int FindNextAttrTransition(
    Pointer<COMObject> paStart,
    Pointer<COMObject> paHalt,
    int cFilterAttrs,
    Pointer<GUID> paFilterAttrs,
    int dwFlags,
    Pointer<Int32> pfFound,
    Pointer<Int32> plFoundOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> paStart,
            Pointer<COMObject> paHalt,
            Uint32 cFilterAttrs,
            Pointer<GUID> paFilterAttrs,
            Uint32 dwFlags,
            Pointer<Int32> pfFound,
            Pointer<Int32> plFoundOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> paStart,
            Pointer<COMObject> paHalt,
            int cFilterAttrs,
            Pointer<GUID> paFilterAttrs,
            int dwFlags,
            Pointer<Int32> pfFound,
            Pointer<Int32> plFoundOffset,
          )>()(
        ptr.ref.lpVtbl,
        paStart,
        paHalt,
        cFilterAttrs,
        paFilterAttrs,
        dwFlags,
        pfFound,
        plFoundOffset,
      );

  int RetrieveRequestedAttrs(
    int ulCount,
    Pointer<TS_ATTRVAL> paAttrVals,
    Pointer<Uint32> pcFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulCount,
            Pointer<TS_ATTRVAL> paAttrVals,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulCount,
            Pointer<TS_ATTRVAL> paAttrVals,
            Pointer<Uint32> pcFetched,
          )>()(
        ptr.ref.lpVtbl,
        ulCount,
        paAttrVals,
        pcFetched,
      );

  int GetStart(
    Pointer<Pointer<COMObject>> ppaStart,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppaStart,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppaStart,
          )>()(
        ptr.ref.lpVtbl,
        ppaStart,
      );

  int GetEnd(
    Pointer<Pointer<COMObject>> ppaEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppaEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppaEnd,
          )>()(
        ptr.ref.lpVtbl,
        ppaEnd,
      );

  int GetActiveView(
    Pointer<Uint32> pvcView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pvcView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pvcView,
          )>()(
        ptr.ref.lpVtbl,
        pvcView,
      );

  int GetAnchorFromPoint(
    int vcView,
    Pointer<POINT> ptScreen,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppaSite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 vcView,
            Pointer<POINT> ptScreen,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppaSite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int vcView,
            Pointer<POINT> ptScreen,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppaSite,
          )>()(
        ptr.ref.lpVtbl,
        vcView,
        ptScreen,
        dwFlags,
        ppaSite,
      );

  int GetTextExt(
    int vcView,
    Pointer<COMObject> paStart,
    Pointer<COMObject> paEnd,
    Pointer<RECT> prc,
    Pointer<Int32> pfClipped,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 vcView,
            Pointer<COMObject> paStart,
            Pointer<COMObject> paEnd,
            Pointer<RECT> prc,
            Pointer<Int32> pfClipped,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int vcView,
            Pointer<COMObject> paStart,
            Pointer<COMObject> paEnd,
            Pointer<RECT> prc,
            Pointer<Int32> pfClipped,
          )>()(
        ptr.ref.lpVtbl,
        vcView,
        paStart,
        paEnd,
        prc,
        pfClipped,
      );

  int GetScreenExt(
    int vcView,
    Pointer<RECT> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 vcView,
            Pointer<RECT> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int vcView,
            Pointer<RECT> prc,
          )>()(
        ptr.ref.lpVtbl,
        vcView,
        prc,
      );

  int GetWnd(
    int vcView,
    Pointer<IntPtr> phwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 vcView,
            Pointer<IntPtr> phwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int vcView,
            Pointer<IntPtr> phwnd,
          )>()(
        ptr.ref.lpVtbl,
        vcView,
        phwnd,
      );

  int QueryInsertEmbedded(
    Pointer<GUID> pguidService,
    Pointer<FORMATETC> pFormatEtc,
    Pointer<Int32> pfInsertable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidService,
            Pointer<FORMATETC> pFormatEtc,
            Pointer<Int32> pfInsertable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidService,
            Pointer<FORMATETC> pFormatEtc,
            Pointer<Int32> pfInsertable,
          )>()(
        ptr.ref.lpVtbl,
        pguidService,
        pFormatEtc,
        pfInsertable,
      );

  int InsertTextAtSelection(
    int dwFlags,
    Pointer<Utf16> pchText,
    int cch,
    Pointer<Pointer<COMObject>> ppaStart,
    Pointer<Pointer<COMObject>> ppaEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Utf16> pchText,
            Uint32 cch,
            Pointer<Pointer<COMObject>> ppaStart,
            Pointer<Pointer<COMObject>> ppaEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Utf16> pchText,
            int cch,
            Pointer<Pointer<COMObject>> ppaStart,
            Pointer<Pointer<COMObject>> ppaEnd,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pchText,
        cch,
        ppaStart,
        ppaEnd,
      );

  int InsertEmbeddedAtSelection(
    int dwFlags,
    Pointer<COMObject> pDataObject,
    Pointer<Pointer<COMObject>> ppaStart,
    Pointer<Pointer<COMObject>> ppaEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> pDataObject,
            Pointer<Pointer<COMObject>> ppaStart,
            Pointer<Pointer<COMObject>> ppaEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> pDataObject,
            Pointer<Pointer<COMObject>> ppaStart,
            Pointer<Pointer<COMObject>> ppaEnd,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pDataObject,
        ppaStart,
        ppaEnd,
      );
}
