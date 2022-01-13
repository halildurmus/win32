// ISpatialAudioObjectForHrtf.dart

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

import '../../media/audio/ISpatialAudioObjectBase.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';

/// @nodoc
const IID_ISpatialAudioObjectForHrtf = '{D7436ADE-1978-4E14-ABA0-555BD8EB83B4}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioObjectForHrtf extends ISpatialAudioObjectBase {
  // vtable begins at 7, is 6 entries long.
  ISpatialAudioObjectForHrtf(Pointer<COMObject> ptr) : super(ptr);

  int SetPosition(
    double x,
    double y,
    double z,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float x,
            Float y,
            Float z,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double x,
            double y,
            double z,
          )>()(
        ptr.ref.lpVtbl,
        x,
        y,
        z,
      );

  int SetGain(
    double gain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float gain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double gain,
          )>()(
        ptr.ref.lpVtbl,
        gain,
      );

  int SetOrientation(
    Pointer<Pointer<Float>> orientation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Float>> orientation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Float>> orientation,
          )>()(
        ptr.ref.lpVtbl,
        orientation,
      );

  int SetEnvironment(
    int environment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 environment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int environment,
          )>()(
        ptr.ref.lpVtbl,
        environment,
      );

  int SetDistanceDecay(
    Pointer<SpatialAudioHrtfDistanceDecay> distanceDecay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SpatialAudioHrtfDistanceDecay> distanceDecay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SpatialAudioHrtfDistanceDecay> distanceDecay,
          )>()(
        ptr.ref.lpVtbl,
        distanceDecay,
      );

  int SetDirectivity(
    Pointer<SpatialAudioHrtfDirectivityUnion> directivity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SpatialAudioHrtfDirectivityUnion> directivity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SpatialAudioHrtfDirectivityUnion> directivity,
          )>()(
        ptr.ref.lpVtbl,
        directivity,
      );
}
