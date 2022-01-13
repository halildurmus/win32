// ISpMMSysAudio.dart

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

import '../../media/speech/ISpAudio.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpMMSysAudio = '{15806F6E-1D70-4B48-98E6-3B1A007509AB}';

/// {@category Interface}
/// {@category com}
class ISpMMSysAudio extends ISpAudio {
  // vtable begins at 26, is 5 entries long.
  ISpMMSysAudio(Pointer<COMObject> ptr) : super(ptr);

  int GetDeviceId(
    Pointer<Uint32> puDeviceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puDeviceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puDeviceId,
          )>()(
        ptr.ref.lpVtbl,
        puDeviceId,
      );

  int SetDeviceId(
    int uDeviceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uDeviceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uDeviceId,
          )>()(
        ptr.ref.lpVtbl,
        uDeviceId,
      );

  int GetMMHandle(
    Pointer<Pointer> pHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer> pHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer> pHandle,
          )>()(
        ptr.ref.lpVtbl,
        pHandle,
      );

  int GetLineId(
    Pointer<Uint32> puLineId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puLineId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puLineId,
          )>()(
        ptr.ref.lpVtbl,
        puLineId,
      );

  int SetLineId(
    int uLineId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uLineId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uLineId,
          )>()(
        ptr.ref.lpVtbl,
        uLineId,
      );
}
