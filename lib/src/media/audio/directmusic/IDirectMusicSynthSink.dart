// IDirectMusicSynthSink.dart

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
import '../../../media/audio/directmusic/IDirectMusicSynth.dart';
import '../../../foundation/structs.g.dart';
import '../../../media/IReferenceClock.dart';
import '../../../media/audio/directsound/IDirectSound.dart';
import '../../../media/audio/directsound/IDirectSoundBuffer.dart';

/// @nodoc
const IID_IDirectMusicSynthSink = '{09823663-5C85-11D2-AFA6-00AA0024D8B6}';

/// {@category Interface}
/// {@category com}
class IDirectMusicSynthSink extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IDirectMusicSynthSink(Pointer<COMObject> ptr) : super(ptr);

  int Init(
    Pointer<COMObject> pSynth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSynth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSynth,
          )>()(
        ptr.ref.lpVtbl,
        pSynth,
      );

  int SetMasterClock(
    Pointer<COMObject> pClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pClock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pClock,
          )>()(
        ptr.ref.lpVtbl,
        pClock,
      );

  int GetLatencyClock(
    Pointer<Pointer<COMObject>> ppClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppClock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppClock,
          )>()(
        ptr.ref.lpVtbl,
        ppClock,
      );

  int Activate(
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnable,
          )>()(
        ptr.ref.lpVtbl,
        fEnable,
      );

  int SampleToRefTime(
    int llSampleTime,
    Pointer<Int64> prfTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 llSampleTime,
            Pointer<Int64> prfTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int llSampleTime,
            Pointer<Int64> prfTime,
          )>()(
        ptr.ref.lpVtbl,
        llSampleTime,
        prfTime,
      );

  int RefTimeToSample(
    int rfTime,
    Pointer<Int64> pllSampleTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 rfTime,
            Pointer<Int64> pllSampleTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rfTime,
            Pointer<Int64> pllSampleTime,
          )>()(
        ptr.ref.lpVtbl,
        rfTime,
        pllSampleTime,
      );

  int SetDirectSound(
    Pointer<COMObject> pDirectSound,
    Pointer<COMObject> pDirectSoundBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDirectSound,
            Pointer<COMObject> pDirectSoundBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDirectSound,
            Pointer<COMObject> pDirectSoundBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pDirectSound,
        pDirectSoundBuffer,
      );

  int GetDesiredBufferSize(
    Pointer<Uint32> pdwBufferSizeInSamples,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwBufferSizeInSamples,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwBufferSizeInSamples,
          )>()(
        ptr.ref.lpVtbl,
        pdwBufferSizeInSamples,
      );
}
