// IMSVidStreamBufferSourceEvent3.dart

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

import '../../media/directshow/IMSVidStreamBufferSourceEvent2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidStreamBufferSourceEvent3 =
    '{CEABD6AB-9B90-4570-ADF1-3CE76E00A763}';

/// {@category Interface}
/// {@category com}
class IMSVidStreamBufferSourceEvent3 extends IMSVidStreamBufferSourceEvent2 {
  // vtable begins at 18, is 5 entries long.
  IMSVidStreamBufferSourceEvent3(Pointer<COMObject> ptr) : super(ptr);

  int BroadcastEvent(
    Pointer<Utf16> Guid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Guid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Guid,
          )>()(
        ptr.ref.lpVtbl,
        Guid,
      );

  int BroadcastEventEx(
    Pointer<Utf16> Guid,
    int Param1,
    int Param2,
    int Param3,
    int Param4,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Guid,
            Uint32 Param1,
            Uint32 Param2,
            Uint32 Param3,
            Uint32 Param4,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Guid,
            int Param1,
            int Param2,
            int Param3,
            int Param4,
          )>()(
        ptr.ref.lpVtbl,
        Guid,
        Param1,
        Param2,
        Param3,
        Param4,
      );

  int COPPBlocked() => ptr.ref.lpVtbl.value
          .elementAt(20)
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

  int COPPUnblocked() => ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int ContentPrimarilyAudio() => ptr.ref.lpVtbl.value
          .elementAt(22)
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
}
