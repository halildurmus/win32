// ITfContext.dart

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
import '../../ui/textservices/ITfEditSession.dart';
import '../../ui/textservices/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfRange.dart';
import '../../ui/textservices/ITfContextView.dart';
import '../../ui/textservices/IEnumTfContextViews.dart';
import '../../ui/textservices/ITfProperty.dart';
import '../../ui/textservices/ITfReadOnlyProperty.dart';
import '../../ui/textservices/IEnumTfProperties.dart';
import '../../ui/textservices/ITfDocumentMgr.dart';
import '../../ui/textservices/ITfRangeBackup.dart';

/// @nodoc
const IID_ITfContext = '{AA80E7FD-2021-11D2-93E0-0060B067B86E}';

/// {@category Interface}
/// {@category com}
class ITfContext extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  ITfContext(Pointer<COMObject> ptr) : super(ptr);

  int RequestEditSession(
    int tid,
    Pointer<COMObject> pes,
    int dwFlags,
    Pointer<Int32> phrSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 tid,
            Pointer<COMObject> pes,
            Uint32 dwFlags,
            Pointer<Int32> phrSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tid,
            Pointer<COMObject> pes,
            int dwFlags,
            Pointer<Int32> phrSession,
          )>()(
        ptr.ref.lpVtbl,
        tid,
        pes,
        dwFlags,
        phrSession,
      );

  int InWriteSession(
    int tid,
    Pointer<Int32> pfWriteSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 tid,
            Pointer<Int32> pfWriteSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tid,
            Pointer<Int32> pfWriteSession,
          )>()(
        ptr.ref.lpVtbl,
        tid,
        pfWriteSession,
      );

  int GetSelection(
    int ec,
    int ulIndex,
    int ulCount,
    Pointer<TF_SELECTION> pSelection,
    Pointer<Uint32> pcFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Uint32 ulIndex,
            Uint32 ulCount,
            Pointer<TF_SELECTION> pSelection,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            int ulIndex,
            int ulCount,
            Pointer<TF_SELECTION> pSelection,
            Pointer<Uint32> pcFetched,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        ulIndex,
        ulCount,
        pSelection,
        pcFetched,
      );

  int SetSelection(
    int ec,
    int ulCount,
    Pointer<TF_SELECTION> pSelection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Uint32 ulCount,
            Pointer<TF_SELECTION> pSelection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            int ulCount,
            Pointer<TF_SELECTION> pSelection,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        ulCount,
        pSelection,
      );

  int GetStart(
    int ec,
    Pointer<Pointer<COMObject>> ppStart,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<Pointer<COMObject>> ppStart,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<Pointer<COMObject>> ppStart,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        ppStart,
      );

  int GetEnd(
    int ec,
    Pointer<Pointer<COMObject>> ppEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<Pointer<COMObject>> ppEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<Pointer<COMObject>> ppEnd,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        ppEnd,
      );

  int GetActiveView(
    Pointer<Pointer<COMObject>> ppView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppView,
          )>()(
        ptr.ref.lpVtbl,
        ppView,
      );

  int EnumViews(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int GetStatus(
    Pointer<TS_STATUS> pdcs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int GetProperty(
    Pointer<GUID> guidProp,
    Pointer<Pointer<COMObject>> ppProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidProp,
            Pointer<Pointer<COMObject>> ppProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidProp,
            Pointer<Pointer<COMObject>> ppProp,
          )>()(
        ptr.ref.lpVtbl,
        guidProp,
        ppProp,
      );

  int GetAppProperty(
    Pointer<GUID> guidProp,
    Pointer<Pointer<COMObject>> ppProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidProp,
            Pointer<Pointer<COMObject>> ppProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidProp,
            Pointer<Pointer<COMObject>> ppProp,
          )>()(
        ptr.ref.lpVtbl,
        guidProp,
        ppProp,
      );

  int TrackProperties(
    Pointer<Pointer<GUID>> prgProp,
    int cProp,
    Pointer<Pointer<GUID>> prgAppProp,
    int cAppProp,
    Pointer<Pointer<COMObject>> ppProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<GUID>> prgProp,
            Uint32 cProp,
            Pointer<Pointer<GUID>> prgAppProp,
            Uint32 cAppProp,
            Pointer<Pointer<COMObject>> ppProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<GUID>> prgProp,
            int cProp,
            Pointer<Pointer<GUID>> prgAppProp,
            int cAppProp,
            Pointer<Pointer<COMObject>> ppProperty,
          )>()(
        ptr.ref.lpVtbl,
        prgProp,
        cProp,
        prgAppProp,
        cAppProp,
        ppProperty,
      );

  int EnumProperties(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int GetDocumentMgr(
    Pointer<Pointer<COMObject>> ppDm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDm,
          )>()(
        ptr.ref.lpVtbl,
        ppDm,
      );

  int CreateRangeBackup(
    int ec,
    Pointer<COMObject> pRange,
    Pointer<Pointer<COMObject>> ppBackup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<COMObject> pRange,
            Pointer<Pointer<COMObject>> ppBackup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<COMObject> pRange,
            Pointer<Pointer<COMObject>> ppBackup,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        pRange,
        ppBackup,
      );
}
