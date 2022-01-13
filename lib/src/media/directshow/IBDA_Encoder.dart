// IBDA_Encoder.dart

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
const IID_IBDA_Encoder = '{3A8BAD59-59FE-4559-A0BA-396CFAA98AE3}';

/// {@category Interface}
/// {@category com}
class IBDA_Encoder extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IBDA_Encoder(Pointer<COMObject> ptr) : super(ptr);

  int QueryCapabilities(
    Pointer<Uint32> NumAudioFmts,
    Pointer<Uint32> NumVideoFmts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> NumAudioFmts,
            Pointer<Uint32> NumVideoFmts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> NumAudioFmts,
            Pointer<Uint32> NumVideoFmts,
          )>()(
        ptr.ref.lpVtbl,
        NumAudioFmts,
        NumVideoFmts,
      );

  int EnumAudioCapability(
    int FmtIndex,
    Pointer<Uint32> MethodID,
    Pointer<Uint32> AlgorithmType,
    Pointer<Uint32> SamplingRate,
    Pointer<Uint32> BitDepth,
    Pointer<Uint32> NumChannels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 FmtIndex,
            Pointer<Uint32> MethodID,
            Pointer<Uint32> AlgorithmType,
            Pointer<Uint32> SamplingRate,
            Pointer<Uint32> BitDepth,
            Pointer<Uint32> NumChannels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int FmtIndex,
            Pointer<Uint32> MethodID,
            Pointer<Uint32> AlgorithmType,
            Pointer<Uint32> SamplingRate,
            Pointer<Uint32> BitDepth,
            Pointer<Uint32> NumChannels,
          )>()(
        ptr.ref.lpVtbl,
        FmtIndex,
        MethodID,
        AlgorithmType,
        SamplingRate,
        BitDepth,
        NumChannels,
      );

  int EnumVideoCapability(
    int FmtIndex,
    Pointer<Uint32> MethodID,
    Pointer<Uint32> AlgorithmType,
    Pointer<Uint32> VerticalSize,
    Pointer<Uint32> HorizontalSize,
    Pointer<Uint32> AspectRatio,
    Pointer<Uint32> FrameRateCode,
    Pointer<Uint32> ProgressiveSequence,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 FmtIndex,
            Pointer<Uint32> MethodID,
            Pointer<Uint32> AlgorithmType,
            Pointer<Uint32> VerticalSize,
            Pointer<Uint32> HorizontalSize,
            Pointer<Uint32> AspectRatio,
            Pointer<Uint32> FrameRateCode,
            Pointer<Uint32> ProgressiveSequence,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int FmtIndex,
            Pointer<Uint32> MethodID,
            Pointer<Uint32> AlgorithmType,
            Pointer<Uint32> VerticalSize,
            Pointer<Uint32> HorizontalSize,
            Pointer<Uint32> AspectRatio,
            Pointer<Uint32> FrameRateCode,
            Pointer<Uint32> ProgressiveSequence,
          )>()(
        ptr.ref.lpVtbl,
        FmtIndex,
        MethodID,
        AlgorithmType,
        VerticalSize,
        HorizontalSize,
        AspectRatio,
        FrameRateCode,
        ProgressiveSequence,
      );

  int SetParameters(
    int AudioBitrateMode,
    int AudioBitrate,
    int AudioMethodID,
    int AudioProgram,
    int VideoBitrateMode,
    int VideoBitrate,
    int VideoMethodID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 AudioBitrateMode,
            Uint32 AudioBitrate,
            Uint32 AudioMethodID,
            Uint32 AudioProgram,
            Uint32 VideoBitrateMode,
            Uint32 VideoBitrate,
            Uint32 VideoMethodID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AudioBitrateMode,
            int AudioBitrate,
            int AudioMethodID,
            int AudioProgram,
            int VideoBitrateMode,
            int VideoBitrate,
            int VideoMethodID,
          )>()(
        ptr.ref.lpVtbl,
        AudioBitrateMode,
        AudioBitrate,
        AudioMethodID,
        AudioProgram,
        VideoBitrateMode,
        VideoBitrate,
        VideoMethodID,
      );

  int GetState(
    Pointer<Uint32> AudioBitrateMax,
    Pointer<Uint32> AudioBitrateMin,
    Pointer<Uint32> AudioBitrateMode,
    Pointer<Uint32> AudioBitrateStepping,
    Pointer<Uint32> AudioBitrate,
    Pointer<Uint32> AudioMethodID,
    Pointer<Uint32> AvailableAudioPrograms,
    Pointer<Uint32> AudioProgram,
    Pointer<Uint32> VideoBitrateMax,
    Pointer<Uint32> VideoBitrateMin,
    Pointer<Uint32> VideoBitrateMode,
    Pointer<Uint32> VideoBitrate,
    Pointer<Uint32> VideoBitrateStepping,
    Pointer<Uint32> VideoMethodID,
    Pointer<Uint32> SignalSourceID,
    Pointer<Uint64> SignalFormat,
    Pointer<Int32> SignalLock,
    Pointer<Int32> SignalLevel,
    Pointer<Uint32> SignalToNoiseRatio,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> AudioBitrateMax,
            Pointer<Uint32> AudioBitrateMin,
            Pointer<Uint32> AudioBitrateMode,
            Pointer<Uint32> AudioBitrateStepping,
            Pointer<Uint32> AudioBitrate,
            Pointer<Uint32> AudioMethodID,
            Pointer<Uint32> AvailableAudioPrograms,
            Pointer<Uint32> AudioProgram,
            Pointer<Uint32> VideoBitrateMax,
            Pointer<Uint32> VideoBitrateMin,
            Pointer<Uint32> VideoBitrateMode,
            Pointer<Uint32> VideoBitrate,
            Pointer<Uint32> VideoBitrateStepping,
            Pointer<Uint32> VideoMethodID,
            Pointer<Uint32> SignalSourceID,
            Pointer<Uint64> SignalFormat,
            Pointer<Int32> SignalLock,
            Pointer<Int32> SignalLevel,
            Pointer<Uint32> SignalToNoiseRatio,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> AudioBitrateMax,
            Pointer<Uint32> AudioBitrateMin,
            Pointer<Uint32> AudioBitrateMode,
            Pointer<Uint32> AudioBitrateStepping,
            Pointer<Uint32> AudioBitrate,
            Pointer<Uint32> AudioMethodID,
            Pointer<Uint32> AvailableAudioPrograms,
            Pointer<Uint32> AudioProgram,
            Pointer<Uint32> VideoBitrateMax,
            Pointer<Uint32> VideoBitrateMin,
            Pointer<Uint32> VideoBitrateMode,
            Pointer<Uint32> VideoBitrate,
            Pointer<Uint32> VideoBitrateStepping,
            Pointer<Uint32> VideoMethodID,
            Pointer<Uint32> SignalSourceID,
            Pointer<Uint64> SignalFormat,
            Pointer<Int32> SignalLock,
            Pointer<Int32> SignalLevel,
            Pointer<Uint32> SignalToNoiseRatio,
          )>()(
        ptr.ref.lpVtbl,
        AudioBitrateMax,
        AudioBitrateMin,
        AudioBitrateMode,
        AudioBitrateStepping,
        AudioBitrate,
        AudioMethodID,
        AvailableAudioPrograms,
        AudioProgram,
        VideoBitrateMax,
        VideoBitrateMin,
        VideoBitrateMode,
        VideoBitrate,
        VideoBitrateStepping,
        VideoMethodID,
        SignalSourceID,
        SignalFormat,
        SignalLock,
        SignalLevel,
        SignalToNoiseRatio,
      );
}
