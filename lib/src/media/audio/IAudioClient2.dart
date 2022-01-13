// IAudioClient2.dart

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

import '../../media/audio/IAudioClient.dart';
import '../../media/audio/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioClient2 = '{726778CD-F60A-4EDA-82DE-E47610CD78AA}';

/// {@category Interface}
/// {@category com}
class IAudioClient2 extends IAudioClient {
  // vtable begins at 15, is 3 entries long.
  IAudioClient2(Pointer<COMObject> ptr) : super(ptr);

  int IsOffloadCapable(
    int Category,
    Pointer<Int32> pbOffloadCapable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Category,
            Pointer<Int32> pbOffloadCapable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Category,
            Pointer<Int32> pbOffloadCapable,
          )>()(
        ptr.ref.lpVtbl,
        Category,
        pbOffloadCapable,
      );

  int SetClientProperties(
    Pointer<AudioClientProperties> pProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AudioClientProperties> pProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AudioClientProperties> pProperties,
          )>()(
        ptr.ref.lpVtbl,
        pProperties,
      );

  int GetBufferSizeLimits(
    Pointer<WAVEFORMATEX> pFormat,
    int bEventDriven,
    Pointer<Int64> phnsMinBufferDuration,
    Pointer<Int64> phnsMaxBufferDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WAVEFORMATEX> pFormat,
            Int32 bEventDriven,
            Pointer<Int64> phnsMinBufferDuration,
            Pointer<Int64> phnsMaxBufferDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WAVEFORMATEX> pFormat,
            int bEventDriven,
            Pointer<Int64> phnsMinBufferDuration,
            Pointer<Int64> phnsMaxBufferDuration,
          )>()(
        ptr.ref.lpVtbl,
        pFormat,
        bEventDriven,
        phnsMinBufferDuration,
        phnsMaxBufferDuration,
      );
}
