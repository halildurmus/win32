// ITfRange.dart

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
import '../../foundation/structs.g.dart';
import '../../system/com/IDataObject.dart';
import '../../specialTypes.dart';
import '../../ui/textservices/structs.g.dart';
import '../../ui/textservices/ITfRange.dart';
import '../../ui/textservices/ITfContext.dart';

/// @nodoc
const IID_ITfRange = '{AA80E7FF-2021-11D2-93E0-0060B067B86E}';

/// {@category Interface}
/// {@category com}
class ITfRange extends IUnknown {
  // vtable begins at 3, is 22 entries long.
  ITfRange(Pointer<COMObject> ptr) : super(ptr);

  int GetText(
    int ec,
    int dwFlags,
    Pointer<Utf16> pchText,
    int cchMax,
    Pointer<Uint32> pcch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Uint32 dwFlags,
            Pointer<Utf16> pchText,
            Uint32 cchMax,
            Pointer<Uint32> pcch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            int dwFlags,
            Pointer<Utf16> pchText,
            int cchMax,
            Pointer<Uint32> pcch,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        dwFlags,
        pchText,
        cchMax,
        pcch,
      );

  int SetText(
    int ec,
    int dwFlags,
    Pointer<Utf16> pchText,
    int cch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Uint32 dwFlags,
            Pointer<Utf16> pchText,
            Int32 cch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            int dwFlags,
            Pointer<Utf16> pchText,
            int cch,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        dwFlags,
        pchText,
        cch,
      );

  int GetFormattedText(
    int ec,
    Pointer<Pointer<COMObject>> ppDataObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<Pointer<COMObject>> ppDataObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<Pointer<COMObject>> ppDataObject,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        ppDataObject,
      );

  int GetEmbedded(
    int ec,
    Pointer<GUID> rguidService,
    Pointer<GUID> riid,
    Pointer<Pointer<COMObject>> ppunk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<GUID> rguidService,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<GUID> rguidService,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunk,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        rguidService,
        riid,
        ppunk,
      );

  int InsertEmbedded(
    int ec,
    int dwFlags,
    Pointer<COMObject> pDataObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Uint32 dwFlags,
            Pointer<COMObject> pDataObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            int dwFlags,
            Pointer<COMObject> pDataObject,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        dwFlags,
        pDataObject,
      );

  int ShiftStart(
    int ec,
    int cchReq,
    Pointer<Int32> pcch,
    Pointer<TF_HALTCOND> pHalt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Int32 cchReq,
            Pointer<Int32> pcch,
            Pointer<TF_HALTCOND> pHalt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            int cchReq,
            Pointer<Int32> pcch,
            Pointer<TF_HALTCOND> pHalt,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        cchReq,
        pcch,
        pHalt,
      );

  int ShiftEnd(
    int ec,
    int cchReq,
    Pointer<Int32> pcch,
    Pointer<TF_HALTCOND> pHalt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Int32 cchReq,
            Pointer<Int32> pcch,
            Pointer<TF_HALTCOND> pHalt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            int cchReq,
            Pointer<Int32> pcch,
            Pointer<TF_HALTCOND> pHalt,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        cchReq,
        pcch,
        pHalt,
      );

  int ShiftStartToRange(
    int ec,
    Pointer<COMObject> pRange,
    int aPos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<COMObject> pRange,
            Int32 aPos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<COMObject> pRange,
            int aPos,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        pRange,
        aPos,
      );

  int ShiftEndToRange(
    int ec,
    Pointer<COMObject> pRange,
    int aPos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<COMObject> pRange,
            Int32 aPos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<COMObject> pRange,
            int aPos,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        pRange,
        aPos,
      );

  int ShiftStartRegion(
    int ec,
    int dir,
    Pointer<Int32> pfNoRegion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Int32 dir,
            Pointer<Int32> pfNoRegion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            int dir,
            Pointer<Int32> pfNoRegion,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        dir,
        pfNoRegion,
      );

  int ShiftEndRegion(
    int ec,
    int dir,
    Pointer<Int32> pfNoRegion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Int32 dir,
            Pointer<Int32> pfNoRegion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            int dir,
            Pointer<Int32> pfNoRegion,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        dir,
        pfNoRegion,
      );

  int IsEmpty(
    int ec,
    Pointer<Int32> pfEmpty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<Int32> pfEmpty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<Int32> pfEmpty,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        pfEmpty,
      );

  int Collapse(
    int ec,
    int aPos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Int32 aPos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            int aPos,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        aPos,
      );

  int IsEqualStart(
    int ec,
    Pointer<COMObject> pWith,
    int aPos,
    Pointer<Int32> pfEqual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<COMObject> pWith,
            Int32 aPos,
            Pointer<Int32> pfEqual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<COMObject> pWith,
            int aPos,
            Pointer<Int32> pfEqual,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        pWith,
        aPos,
        pfEqual,
      );

  int IsEqualEnd(
    int ec,
    Pointer<COMObject> pWith,
    int aPos,
    Pointer<Int32> pfEqual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<COMObject> pWith,
            Int32 aPos,
            Pointer<Int32> pfEqual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<COMObject> pWith,
            int aPos,
            Pointer<Int32> pfEqual,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        pWith,
        aPos,
        pfEqual,
      );

  int CompareStart(
    int ec,
    Pointer<COMObject> pWith,
    int aPos,
    Pointer<Int32> plResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<COMObject> pWith,
            Int32 aPos,
            Pointer<Int32> plResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<COMObject> pWith,
            int aPos,
            Pointer<Int32> plResult,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        pWith,
        aPos,
        plResult,
      );

  int CompareEnd(
    int ec,
    Pointer<COMObject> pWith,
    int aPos,
    Pointer<Int32> plResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<COMObject> pWith,
            Int32 aPos,
            Pointer<Int32> plResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<COMObject> pWith,
            int aPos,
            Pointer<Int32> plResult,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        pWith,
        aPos,
        plResult,
      );

  int AdjustForInsert(
    int ec,
    int cchInsert,
    Pointer<Int32> pfInsertOk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Uint32 cchInsert,
            Pointer<Int32> pfInsertOk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            int cchInsert,
            Pointer<Int32> pfInsertOk,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        cchInsert,
        pfInsertOk,
      );

  int GetGravity(
    Pointer<Int32> pgStart,
    Pointer<Int32> pgEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pgStart,
            Pointer<Int32> pgEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pgStart,
            Pointer<Int32> pgEnd,
          )>()(
        ptr.ref.lpVtbl,
        pgStart,
        pgEnd,
      );

  int SetGravity(
    int ec,
    int gStart,
    int gEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Int32 gStart,
            Int32 gEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            int gStart,
            int gEnd,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        gStart,
        gEnd,
      );

  int Clone(
    Pointer<Pointer<COMObject>> ppClone,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppClone,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppClone,
          )>()(
        ptr.ref.lpVtbl,
        ppClone,
      );

  int GetContext(
    Pointer<Pointer<COMObject>> ppContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContext,
          )>()(
        ptr.ref.lpVtbl,
        ppContext,
      );
}
