// IAudioEndpointOffloadStreamVolume.dart

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
import '../../../foundation/structs.g.dart';
import '../../../media/kernelstreaming/structs.g.dart';

/// @nodoc
const IID_IAudioEndpointOffloadStreamVolume =
    '{64F1DD49-71CA-4281-8672-3A9EDDD1D0B6}';

/// {@category Interface}
/// {@category com}
class IAudioEndpointOffloadStreamVolume extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAudioEndpointOffloadStreamVolume(Pointer<COMObject> ptr) : super(ptr);

  int GetVolumeChannelCount(
    Pointer<Uint32> pu32ChannelCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pu32ChannelCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pu32ChannelCount,
          )>()(
        ptr.ref.lpVtbl,
        pu32ChannelCount,
      );

  int SetChannelVolumes(
    int u32ChannelCount,
    Pointer<Float> pf32Volumes,
    int u32CurveType,
    Pointer<Int64> pCurveDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 u32ChannelCount,
            Pointer<Float> pf32Volumes,
            Int32 u32CurveType,
            Pointer<Int64> pCurveDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int u32ChannelCount,
            Pointer<Float> pf32Volumes,
            int u32CurveType,
            Pointer<Int64> pCurveDuration,
          )>()(
        ptr.ref.lpVtbl,
        u32ChannelCount,
        pf32Volumes,
        u32CurveType,
        pCurveDuration,
      );

  int GetChannelVolumes(
    int u32ChannelCount,
    Pointer<Float> pf32Volumes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 u32ChannelCount,
            Pointer<Float> pf32Volumes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int u32ChannelCount,
            Pointer<Float> pf32Volumes,
          )>()(
        ptr.ref.lpVtbl,
        u32ChannelCount,
        pf32Volumes,
      );
}
