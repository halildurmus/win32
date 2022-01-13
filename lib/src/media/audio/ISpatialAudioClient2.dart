// ISpatialAudioClient2.dart

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

import '../../media/audio/ISpatialAudioClient.dart';
import '../../media/audio/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpatialAudioClient2 = '{CAABE452-A66A-4BEE-A93E-E320463F6A53}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioClient2 extends ISpatialAudioClient {
  // vtable begins at 11, is 2 entries long.
  ISpatialAudioClient2(Pointer<COMObject> ptr) : super(ptr);

  int IsOffloadCapable(
    int category,
    Pointer<Int32> isOffloadCapable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 category,
            Pointer<Int32> isOffloadCapable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int category,
            Pointer<Int32> isOffloadCapable,
          )>()(
        ptr.ref.lpVtbl,
        category,
        isOffloadCapable,
      );

  int GetMaxFrameCountForCategory(
    int category,
    int offloadEnabled,
    Pointer<WAVEFORMATEX> objectFormat,
    Pointer<Uint32> frameCountPerBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 category,
            Int32 offloadEnabled,
            Pointer<WAVEFORMATEX> objectFormat,
            Pointer<Uint32> frameCountPerBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int category,
            int offloadEnabled,
            Pointer<WAVEFORMATEX> objectFormat,
            Pointer<Uint32> frameCountPerBuffer,
          )>()(
        ptr.ref.lpVtbl,
        category,
        offloadEnabled,
        objectFormat,
        frameCountPerBuffer,
      );
}
