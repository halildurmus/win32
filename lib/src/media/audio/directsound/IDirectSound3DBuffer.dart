// IDirectSound3DBuffer.dart

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
const IID_IDirectSound3DBuffer = '{279AFA86-4981-11CE-A521-0020AF0BE560}';

/// {@category Interface}
/// {@category com}
class IDirectSound3DBuffer extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  IDirectSound3DBuffer(Pointer<COMObject> ptr) : super(ptr);

  int GetAllParameters(
    Pointer<DS3DBUFFER> pDs3dBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DS3DBUFFER> pDs3dBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DS3DBUFFER> pDs3dBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pDs3dBuffer,
      );

  int GetConeAngles(
    Pointer<Uint32> pdwInsideConeAngle,
    Pointer<Uint32> pdwOutsideConeAngle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwInsideConeAngle,
            Pointer<Uint32> pdwOutsideConeAngle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwInsideConeAngle,
            Pointer<Uint32> pdwOutsideConeAngle,
          )>()(
        ptr.ref.lpVtbl,
        pdwInsideConeAngle,
        pdwOutsideConeAngle,
      );

  int GetConeOrientation(
    Pointer<D3DVECTOR> pvOrientation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DVECTOR> pvOrientation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DVECTOR> pvOrientation,
          )>()(
        ptr.ref.lpVtbl,
        pvOrientation,
      );

  int GetConeOutsideVolume(
    Pointer<Int32> plConeOutsideVolume,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plConeOutsideVolume,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plConeOutsideVolume,
          )>()(
        ptr.ref.lpVtbl,
        plConeOutsideVolume,
      );

  int GetMaxDistance(
    Pointer<Float> pflMaxDistance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pflMaxDistance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pflMaxDistance,
          )>()(
        ptr.ref.lpVtbl,
        pflMaxDistance,
      );

  int GetMinDistance(
    Pointer<Float> pflMinDistance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pflMinDistance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pflMinDistance,
          )>()(
        ptr.ref.lpVtbl,
        pflMinDistance,
      );

  int GetMode(
    Pointer<Uint32> pdwMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMode,
          )>()(
        ptr.ref.lpVtbl,
        pdwMode,
      );

  int GetPosition(
    Pointer<D3DVECTOR> pvPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int GetVelocity(
    Pointer<D3DVECTOR> pvVelocity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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
    Pointer<DS3DBUFFER> pcDs3dBuffer,
    int dwApply,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DS3DBUFFER> pcDs3dBuffer,
            Uint32 dwApply,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DS3DBUFFER> pcDs3dBuffer,
            int dwApply,
          )>()(
        ptr.ref.lpVtbl,
        pcDs3dBuffer,
        dwApply,
      );

  int SetConeAngles(
    int dwInsideConeAngle,
    int dwOutsideConeAngle,
    int dwApply,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInsideConeAngle,
            Uint32 dwOutsideConeAngle,
            Uint32 dwApply,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInsideConeAngle,
            int dwOutsideConeAngle,
            int dwApply,
          )>()(
        ptr.ref.lpVtbl,
        dwInsideConeAngle,
        dwOutsideConeAngle,
        dwApply,
      );

  int SetConeOrientation(
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

  int SetConeOutsideVolume(
    int lConeOutsideVolume,
    int dwApply,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lConeOutsideVolume,
            Uint32 dwApply,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lConeOutsideVolume,
            int dwApply,
          )>()(
        ptr.ref.lpVtbl,
        lConeOutsideVolume,
        dwApply,
      );

  int SetMaxDistance(
    double flMaxDistance,
    int dwApply,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float flMaxDistance,
            Uint32 dwApply,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double flMaxDistance,
            int dwApply,
          )>()(
        ptr.ref.lpVtbl,
        flMaxDistance,
        dwApply,
      );

  int SetMinDistance(
    double flMinDistance,
    int dwApply,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float flMinDistance,
            Uint32 dwApply,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double flMinDistance,
            int dwApply,
          )>()(
        ptr.ref.lpVtbl,
        flMinDistance,
        dwApply,
      );

  int SetMode(
    int dwMode,
    int dwApply,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMode,
            Uint32 dwApply,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMode,
            int dwApply,
          )>()(
        ptr.ref.lpVtbl,
        dwMode,
        dwApply,
      );

  int SetPosition(
    double x,
    double y,
    double z,
    int dwApply,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int SetVelocity(
    double x,
    double y,
    double z,
    int dwApply,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
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
}
