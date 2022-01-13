// IAnchor.dart

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
import '../../ui/textservices/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/IAnchor.dart';

/// @nodoc
const IID_IAnchor = '{0FEB7E34-5A60-4356-8EF7-ABDEC2FF7CF8}';

/// {@category Interface}
/// {@category com}
class IAnchor extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IAnchor(Pointer<COMObject> ptr) : super(ptr);

  int SetGravity(
    int gravity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 gravity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int gravity,
          )>()(
        ptr.ref.lpVtbl,
        gravity,
      );

  int GetGravity(
    Pointer<Int32> pgravity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pgravity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pgravity,
          )>()(
        ptr.ref.lpVtbl,
        pgravity,
      );

  int IsEqual(
    Pointer<COMObject> paWith,
    Pointer<Int32> pfEqual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> paWith,
            Pointer<Int32> pfEqual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> paWith,
            Pointer<Int32> pfEqual,
          )>()(
        ptr.ref.lpVtbl,
        paWith,
        pfEqual,
      );

  int Compare(
    Pointer<COMObject> paWith,
    Pointer<Int32> plResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> paWith,
            Pointer<Int32> plResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> paWith,
            Pointer<Int32> plResult,
          )>()(
        ptr.ref.lpVtbl,
        paWith,
        plResult,
      );

  int Shift(
    int dwFlags,
    int cchReq,
    Pointer<Int32> pcch,
    Pointer<COMObject> paHaltAnchor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Int32 cchReq,
            Pointer<Int32> pcch,
            Pointer<COMObject> paHaltAnchor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int cchReq,
            Pointer<Int32> pcch,
            Pointer<COMObject> paHaltAnchor,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        cchReq,
        pcch,
        paHaltAnchor,
      );

  int ShiftTo(
    Pointer<COMObject> paSite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> paSite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> paSite,
          )>()(
        ptr.ref.lpVtbl,
        paSite,
      );

  int ShiftRegion(
    int dwFlags,
    int dir,
    Pointer<Int32> pfNoRegion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Int32 dir,
            Pointer<Int32> pfNoRegion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int dir,
            Pointer<Int32> pfNoRegion,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        dir,
        pfNoRegion,
      );

  int SetChangeHistoryMask(
    int dwMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMask,
          )>()(
        ptr.ref.lpVtbl,
        dwMask,
      );

  int GetChangeHistory(
    Pointer<Uint32> pdwHistory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwHistory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwHistory,
          )>()(
        ptr.ref.lpVtbl,
        pdwHistory,
      );

  int ClearChangeHistory() => ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Clone(
    Pointer<Pointer<COMObject>> ppaClone,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppaClone,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppaClone,
          )>()(
        ptr.ref.lpVtbl,
        ppaClone,
      );
}
