// ITextStoreACP.dart

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
import '../../system/com/IDataObject.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_ITextStoreACP = '{28888FE3-C2A0-483A-A3EA-8CB1CE51FF3D}';

/// {@category Interface}
/// {@category com}
class ITextStoreACP extends IUnknown {
  // vtable begins at 3, is 26 entries long.
  ITextStoreACP(Pointer<COMObject> ptr) : super(ptr);

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
    int acpTestStart,
    int acpTestEnd,
    int cch,
    Pointer<Int32> pacpResultStart,
    Pointer<Int32> pacpResultEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 acpTestStart,
            Int32 acpTestEnd,
            Uint32 cch,
            Pointer<Int32> pacpResultStart,
            Pointer<Int32> pacpResultEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int acpTestStart,
            int acpTestEnd,
            int cch,
            Pointer<Int32> pacpResultStart,
            Pointer<Int32> pacpResultEnd,
          )>()(
        ptr.ref.lpVtbl,
        acpTestStart,
        acpTestEnd,
        cch,
        pacpResultStart,
        pacpResultEnd,
      );

  int GetSelection(
    int ulIndex,
    int ulCount,
    Pointer<TS_SELECTION_ACP> pSelection,
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
            Pointer<TS_SELECTION_ACP> pSelection,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulIndex,
            int ulCount,
            Pointer<TS_SELECTION_ACP> pSelection,
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
    Pointer<TS_SELECTION_ACP> pSelection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulCount,
            Pointer<TS_SELECTION_ACP> pSelection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulCount,
            Pointer<TS_SELECTION_ACP> pSelection,
          )>()(
        ptr.ref.lpVtbl,
        ulCount,
        pSelection,
      );

  int GetText(
    int acpStart,
    int acpEnd,
    Pointer<Utf16> pchPlain,
    int cchPlainReq,
    Pointer<Uint32> pcchPlainRet,
    Pointer<TS_RUNINFO> prgRunInfo,
    int cRunInfoReq,
    Pointer<Uint32> pcRunInfoRet,
    Pointer<Int32> pacpNext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 acpStart,
            Int32 acpEnd,
            Pointer<Utf16> pchPlain,
            Uint32 cchPlainReq,
            Pointer<Uint32> pcchPlainRet,
            Pointer<TS_RUNINFO> prgRunInfo,
            Uint32 cRunInfoReq,
            Pointer<Uint32> pcRunInfoRet,
            Pointer<Int32> pacpNext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int acpStart,
            int acpEnd,
            Pointer<Utf16> pchPlain,
            int cchPlainReq,
            Pointer<Uint32> pcchPlainRet,
            Pointer<TS_RUNINFO> prgRunInfo,
            int cRunInfoReq,
            Pointer<Uint32> pcRunInfoRet,
            Pointer<Int32> pacpNext,
          )>()(
        ptr.ref.lpVtbl,
        acpStart,
        acpEnd,
        pchPlain,
        cchPlainReq,
        pcchPlainRet,
        prgRunInfo,
        cRunInfoReq,
        pcRunInfoRet,
        pacpNext,
      );

  int SetText(
    int dwFlags,
    int acpStart,
    int acpEnd,
    Pointer<Utf16> pchText,
    int cch,
    Pointer<TS_TEXTCHANGE> pChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Int32 acpStart,
            Int32 acpEnd,
            Pointer<Utf16> pchText,
            Uint32 cch,
            Pointer<TS_TEXTCHANGE> pChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int acpStart,
            int acpEnd,
            Pointer<Utf16> pchText,
            int cch,
            Pointer<TS_TEXTCHANGE> pChange,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        acpStart,
        acpEnd,
        pchText,
        cch,
        pChange,
      );

  int GetFormattedText(
    int acpStart,
    int acpEnd,
    Pointer<Pointer<COMObject>> ppDataObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 acpStart,
            Int32 acpEnd,
            Pointer<Pointer<COMObject>> ppDataObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int acpStart,
            int acpEnd,
            Pointer<Pointer<COMObject>> ppDataObject,
          )>()(
        ptr.ref.lpVtbl,
        acpStart,
        acpEnd,
        ppDataObject,
      );

  int GetEmbedded(
    int acpPos,
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
            Int32 acpPos,
            Pointer<GUID> rguidService,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int acpPos,
            Pointer<GUID> rguidService,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunk,
          )>()(
        ptr.ref.lpVtbl,
        acpPos,
        rguidService,
        riid,
        ppunk,
      );

  int QueryInsertEmbedded(
    Pointer<GUID> pguidService,
    Pointer<FORMATETC> pFormatEtc,
    Pointer<Int32> pfInsertable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int InsertEmbedded(
    int dwFlags,
    int acpStart,
    int acpEnd,
    Pointer<COMObject> pDataObject,
    Pointer<TS_TEXTCHANGE> pChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Int32 acpStart,
            Int32 acpEnd,
            Pointer<COMObject> pDataObject,
            Pointer<TS_TEXTCHANGE> pChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int acpStart,
            int acpEnd,
            Pointer<COMObject> pDataObject,
            Pointer<TS_TEXTCHANGE> pChange,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        acpStart,
        acpEnd,
        pDataObject,
        pChange,
      );

  int InsertTextAtSelection(
    int dwFlags,
    Pointer<Utf16> pchText,
    int cch,
    Pointer<Int32> pacpStart,
    Pointer<Int32> pacpEnd,
    Pointer<TS_TEXTCHANGE> pChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Utf16> pchText,
            Uint32 cch,
            Pointer<Int32> pacpStart,
            Pointer<Int32> pacpEnd,
            Pointer<TS_TEXTCHANGE> pChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Utf16> pchText,
            int cch,
            Pointer<Int32> pacpStart,
            Pointer<Int32> pacpEnd,
            Pointer<TS_TEXTCHANGE> pChange,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pchText,
        cch,
        pacpStart,
        pacpEnd,
        pChange,
      );

  int InsertEmbeddedAtSelection(
    int dwFlags,
    Pointer<COMObject> pDataObject,
    Pointer<Int32> pacpStart,
    Pointer<Int32> pacpEnd,
    Pointer<TS_TEXTCHANGE> pChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> pDataObject,
            Pointer<Int32> pacpStart,
            Pointer<Int32> pacpEnd,
            Pointer<TS_TEXTCHANGE> pChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> pDataObject,
            Pointer<Int32> pacpStart,
            Pointer<Int32> pacpEnd,
            Pointer<TS_TEXTCHANGE> pChange,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pDataObject,
        pacpStart,
        pacpEnd,
        pChange,
      );

  int RequestSupportedAttrs(
    int dwFlags,
    int cFilterAttrs,
    Pointer<GUID> paFilterAttrs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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
    int acpPos,
    int cFilterAttrs,
    Pointer<GUID> paFilterAttrs,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 acpPos,
            Uint32 cFilterAttrs,
            Pointer<GUID> paFilterAttrs,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int acpPos,
            int cFilterAttrs,
            Pointer<GUID> paFilterAttrs,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        acpPos,
        cFilterAttrs,
        paFilterAttrs,
        dwFlags,
      );

  int RequestAttrsTransitioningAtPosition(
    int acpPos,
    int cFilterAttrs,
    Pointer<GUID> paFilterAttrs,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 acpPos,
            Uint32 cFilterAttrs,
            Pointer<GUID> paFilterAttrs,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int acpPos,
            int cFilterAttrs,
            Pointer<GUID> paFilterAttrs,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        acpPos,
        cFilterAttrs,
        paFilterAttrs,
        dwFlags,
      );

  int FindNextAttrTransition(
    int acpStart,
    int acpHalt,
    int cFilterAttrs,
    Pointer<GUID> paFilterAttrs,
    int dwFlags,
    Pointer<Int32> pacpNext,
    Pointer<Int32> pfFound,
    Pointer<Int32> plFoundOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 acpStart,
            Int32 acpHalt,
            Uint32 cFilterAttrs,
            Pointer<GUID> paFilterAttrs,
            Uint32 dwFlags,
            Pointer<Int32> pacpNext,
            Pointer<Int32> pfFound,
            Pointer<Int32> plFoundOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int acpStart,
            int acpHalt,
            int cFilterAttrs,
            Pointer<GUID> paFilterAttrs,
            int dwFlags,
            Pointer<Int32> pacpNext,
            Pointer<Int32> pfFound,
            Pointer<Int32> plFoundOffset,
          )>()(
        ptr.ref.lpVtbl,
        acpStart,
        acpHalt,
        cFilterAttrs,
        paFilterAttrs,
        dwFlags,
        pacpNext,
        pfFound,
        plFoundOffset,
      );

  int RetrieveRequestedAttrs(
    int ulCount,
    Pointer<TS_ATTRVAL> paAttrVals,
    Pointer<Uint32> pcFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
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

  int GetEndACP(
    Pointer<Int32> pacp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pacp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pacp,
          )>()(
        ptr.ref.lpVtbl,
        pacp,
      );

  int GetActiveView(
    Pointer<Uint32> pvcView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
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

  int GetACPFromPoint(
    int vcView,
    Pointer<POINT> ptScreen,
    int dwFlags,
    Pointer<Int32> pacp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 vcView,
            Pointer<POINT> ptScreen,
            Uint32 dwFlags,
            Pointer<Int32> pacp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int vcView,
            Pointer<POINT> ptScreen,
            int dwFlags,
            Pointer<Int32> pacp,
          )>()(
        ptr.ref.lpVtbl,
        vcView,
        ptScreen,
        dwFlags,
        pacp,
      );

  int GetTextExt(
    int vcView,
    int acpStart,
    int acpEnd,
    Pointer<RECT> prc,
    Pointer<Int32> pfClipped,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 vcView,
            Int32 acpStart,
            Int32 acpEnd,
            Pointer<RECT> prc,
            Pointer<Int32> pfClipped,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int vcView,
            int acpStart,
            int acpEnd,
            Pointer<RECT> prc,
            Pointer<Int32> pfClipped,
          )>()(
        ptr.ref.lpVtbl,
        vcView,
        acpStart,
        acpEnd,
        prc,
        pfClipped,
      );

  int GetScreenExt(
    int vcView,
    Pointer<RECT> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
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
          .elementAt(28)
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
}
