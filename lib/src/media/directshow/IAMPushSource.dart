// IAMPushSource.dart

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

import '../../media/directshow/IAMLatency.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAMPushSource = '{F185FE76-E64E-11D2-B76E-00C04FB6BD3D}';

/// {@category Interface}
/// {@category com}
class IAMPushSource extends IAMLatency {
  // vtable begins at 4, is 6 entries long.
  IAMPushSource(Pointer<COMObject> ptr) : super(ptr);

  int GetPushSourceFlags(
    Pointer<Uint32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pFlags,
      );

  int SetPushSourceFlags(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );

  int SetStreamOffset(
    int rtOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 rtOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rtOffset,
          )>()(
        ptr.ref.lpVtbl,
        rtOffset,
      );

  int GetStreamOffset(
    Pointer<Int64> prtOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> prtOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> prtOffset,
          )>()(
        ptr.ref.lpVtbl,
        prtOffset,
      );

  int GetMaxStreamOffset(
    Pointer<Int64> prtMaxOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> prtMaxOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> prtMaxOffset,
          )>()(
        ptr.ref.lpVtbl,
        prtMaxOffset,
      );

  int SetMaxStreamOffset(
    int rtMaxOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 rtMaxOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rtMaxOffset,
          )>()(
        ptr.ref.lpVtbl,
        rtMaxOffset,
      );
}
