// IMFAudioStreamVolume.dart

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

/// @nodoc
const IID_IMFAudioStreamVolume = '{76B1BBDB-4EC8-4F36-B106-70A9316DF593}';

/// {@category Interface}
/// {@category com}
class IMFAudioStreamVolume extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMFAudioStreamVolume(Pointer<COMObject> ptr) : super(ptr);

  int GetChannelCount(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
      );

  int SetChannelVolume(
    int dwIndex,
    double fLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Float fLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            double fLevel,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        fLevel,
      );

  int GetChannelVolume(
    int dwIndex,
    Pointer<Float> pfLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Float> pfLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Float> pfLevel,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        pfLevel,
      );

  int SetAllVolumes(
    int dwCount,
    Pointer<Float> pfVolumes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCount,
            Pointer<Float> pfVolumes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCount,
            Pointer<Float> pfVolumes,
          )>()(
        ptr.ref.lpVtbl,
        dwCount,
        pfVolumes,
      );

  int GetAllVolumes(
    int dwCount,
    Pointer<Float> pfVolumes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCount,
            Pointer<Float> pfVolumes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCount,
            Pointer<Float> pfVolumes,
          )>()(
        ptr.ref.lpVtbl,
        dwCount,
        pfVolumes,
      );
}
