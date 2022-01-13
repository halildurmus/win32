// IXAudio2SourceVoice.dart

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

import '../../../media/audio/xaudio2/IXAudio2Voice.dart';
import '../../../foundation/structs.g.dart';
import '../../../media/audio/xaudio2/structs.g.dart';

/// @nodoc
const IID_IXAudio2SourceVoice = 'null';

/// {@category Interface}
/// {@category com}
class IXAudio2SourceVoice extends IXAudio2Voice {
  // vtable begins at 19, is 10 entries long.
  IXAudio2SourceVoice(Pointer<COMObject> ptr) : super(ptr);

  int Start(
    int Flags,
    int OperationSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Uint32 OperationSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            int OperationSet,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        OperationSet,
      );

  int Stop(
    int Flags,
    int OperationSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Uint32 OperationSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            int OperationSet,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        OperationSet,
      );

  int SubmitSourceBuffer(
    Pointer<XAUDIO2_BUFFER> pBuffer,
    Pointer<XAUDIO2_BUFFER_WMA> pBufferWMA,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XAUDIO2_BUFFER> pBuffer,
            Pointer<XAUDIO2_BUFFER_WMA> pBufferWMA,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XAUDIO2_BUFFER> pBuffer,
            Pointer<XAUDIO2_BUFFER_WMA> pBufferWMA,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
        pBufferWMA,
      );

  int FlushSourceBuffers() => ptr.ref.lpVtbl.value
          .elementAt(22)
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

  int Discontinuity() => ptr.ref.lpVtbl.value
          .elementAt(23)
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

  int ExitLoop(
    int OperationSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OperationSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OperationSet,
          )>()(
        ptr.ref.lpVtbl,
        OperationSet,
      );

  void GetState(
    Pointer<XAUDIO2_VOICE_STATE> pVoiceState,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<XAUDIO2_VOICE_STATE> pVoiceState,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<XAUDIO2_VOICE_STATE> pVoiceState,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        pVoiceState,
        Flags,
      );

  int SetFrequencyRatio(
    double Ratio,
    int OperationSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float Ratio,
            Uint32 OperationSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Ratio,
            int OperationSet,
          )>()(
        ptr.ref.lpVtbl,
        Ratio,
        OperationSet,
      );

  void GetFrequencyRatio(
    Pointer<Float> pRatio,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Float> pRatio,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Float> pRatio,
          )>()(
        ptr.ref.lpVtbl,
        pRatio,
      );

  int SetSourceSampleRate(
    int NewSourceSampleRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NewSourceSampleRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NewSourceSampleRate,
          )>()(
        ptr.ref.lpVtbl,
        NewSourceSampleRate,
      );
}
