// IAudioEndpointVolumeEx.dart

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

import '../../../media/audio/endpoints/IAudioEndpointVolume.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioEndpointVolumeEx = '{66E11784-F695-4F28-A505-A7080081A78F}';

/// {@category Interface}
/// {@category com}
class IAudioEndpointVolumeEx extends IAudioEndpointVolume {
  // vtable begins at 21, is 1 entries long.
  IAudioEndpointVolumeEx(Pointer<COMObject> ptr) : super(ptr);

  int GetVolumeRangeChannel(
    int iChannel,
    Pointer<Float> pflVolumeMindB,
    Pointer<Float> pflVolumeMaxdB,
    Pointer<Float> pflVolumeIncrementdB,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iChannel,
            Pointer<Float> pflVolumeMindB,
            Pointer<Float> pflVolumeMaxdB,
            Pointer<Float> pflVolumeIncrementdB,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iChannel,
            Pointer<Float> pflVolumeMindB,
            Pointer<Float> pflVolumeMaxdB,
            Pointer<Float> pflVolumeIncrementdB,
          )>()(
        ptr.ref.lpVtbl,
        iChannel,
        pflVolumeMindB,
        pflVolumeMaxdB,
        pflVolumeIncrementdB,
      );
}
