// IMFSimpleAudioVolume.dart

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
const IID_IMFSimpleAudioVolume = '{089EDF13-CF71-4338-8D13-9E569DBDC319}';

/// {@category Interface}
/// {@category com}
class IMFSimpleAudioVolume extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMFSimpleAudioVolume(Pointer<COMObject> ptr) : super(ptr);

  int SetMasterVolume(
    double fLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float fLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double fLevel,
          )>()(
        ptr.ref.lpVtbl,
        fLevel,
      );

  int GetMasterVolume(
    Pointer<Float> pfLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pfLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pfLevel,
          )>()(
        ptr.ref.lpVtbl,
        pfLevel,
      );

  int SetMute(
    int bMute,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bMute,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bMute,
          )>()(
        ptr.ref.lpVtbl,
        bMute,
      );

  int GetMute(
    Pointer<Int32> pbMute,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbMute,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbMute,
          )>()(
        ptr.ref.lpVtbl,
        pbMute,
      );
}
