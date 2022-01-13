// IDirectSound3DListener.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../media/audio/directsound/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../graphics/direct3d/structs.g.dart';

/// @nodoc
const IID_IDirectSound3DListener = '{279AFA84-4981-11CE-A521-0020AF0BE560}';

/// {@category Interface}
/// {@category com}
class IDirectSound3DListener extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IDirectSound3DListener(Pointer<COMObject> ptr) : super(ptr);

  int GetAllParameters(
    Pointer<DS3DLISTENER> pListener,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DS3DLISTENER> pListener,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DS3DLISTENER> pListener,
          )>()(
        ptr.ref.lpVtbl,
        pListener,
      );

  int GetDistanceFactor(
    Pointer<Float> pflDistanceFactor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pflDistanceFactor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pflDistanceFactor,
          )>()(
        ptr.ref.lpVtbl,
        pflDistanceFactor,
      );

  int GetDopplerFactor(
    Pointer<Float> pflDopplerFactor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pflDopplerFactor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pflDopplerFactor,
          )>()(
        ptr.ref.lpVtbl,
        pflDopplerFactor,
      );

  int GetOrientation(
    Pointer<D3DVECTOR> pvOrientFront,
    Pointer<D3DVECTOR> pvOrientTop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DVECTOR> pvOrientFront,
            Pointer<D3DVECTOR> pvOrientTop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DVECTOR> pvOrientFront,
            Pointer<D3DVECTOR> pvOrientTop,
          )>()(
        ptr.ref.lpVtbl,
        pvOrientFront,
        pvOrientTop,
      );

  int GetPosition(
    Pointer<D3DVECTOR> pvPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DVECTOR> pvPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DVECTOR> pvPosition,
          )>()(
        ptr.ref.lpVtbl,
        pvPosition,
      );

  int GetRolloffFactor(
    Pointer<Float> pflRolloffFactor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pflRolloffFactor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pflRolloffFactor,
          )>()(
        ptr.ref.lpVtbl,
        pflRolloffFactor,
      );

  int GetVelocity(
    Pointer<D3DVECTOR> pvVelocity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DVECTOR> pvVelocity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DVECTOR> pvVelocity,
          )>()(
        ptr.ref.lpVtbl,
        pvVelocity,
      );

  int SetAllParameters(
    Pointer<DS3DLISTENER> pcListener,
    int dwApply,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DS3DLISTENER> pcListener,
            Uint32 dwApply,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DS3DLISTENER> pcListener,
            int dwApply,
          )>()(
        ptr.ref.lpVtbl,
        pcListener,
        dwApply,
      );

  int SetDistanceFactor(
    double flDistanceFactor,
    int dwApply,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float flDistanceFactor,
            Uint32 dwApply,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double flDistanceFactor,
            int dwApply,
          )>()(
        ptr.ref.lpVtbl,
        flDistanceFactor,
        dwApply,
      );

  int SetDopplerFactor(
    double flDopplerFactor,
    int dwApply,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float flDopplerFactor,
            Uint32 dwApply,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double flDopplerFactor,
            int dwApply,
          )>()(
        ptr.ref.lpVtbl,
        flDopplerFactor,
        dwApply,
      );

  int SetOrientation(
    double xFront,
    double yFront,
    double zFront,
    double xTop,
    double yTop,
    double zTop,
    int dwApply,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float xFront,
            Float yFront,
            Float zFront,
            Float xTop,
            Float yTop,
            Float zTop,
            Uint32 dwApply,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double xFront,
            double yFront,
            double zFront,
            double xTop,
            double yTop,
            double zTop,
            int dwApply,
          )>()(
        ptr.ref.lpVtbl,
        xFront,
        yFront,
        zFront,
        xTop,
        yTop,
        zTop,
        dwApply,
      );

  int SetPosition(
    double x,
    double y,
    double z,
    int dwApply,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float x,
            Float y,
            Float z,
            Uint32 dwApply,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double x,
            double y,
            double z,
            int dwApply,
          )>()(
        ptr.ref.lpVtbl,
        x,
        y,
        z,
        dwApply,
      );

  int SetRolloffFactor(
    double flRolloffFactor,
    int dwApply,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float flRolloffFactor,
            Uint32 dwApply,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double flRolloffFactor,
            int dwApply,
          )>()(
        ptr.ref.lpVtbl,
        flRolloffFactor,
        dwApply,
      );

  int SetVelocity(
    double x,
    double y,
    double z,
    int dwApply,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float x,
            Float y,
            Float z,
            Uint32 dwApply,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double x,
            double y,
            double z,
            int dwApply,
          )>()(
        ptr.ref.lpVtbl,
        x,
        y,
        z,
        dwApply,
      );

  int CommitDeferredSettings() => ptr.ref.lpVtbl.value
          .elementAt(17)
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
