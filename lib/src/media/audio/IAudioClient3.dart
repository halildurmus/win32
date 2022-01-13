// IAudioClient3.dart

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

import '../../media/audio/IAudioClient2.dart';
import '../../media/audio/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioClient3 = '{7ED4EE07-8E67-4CD4-8C1A-2B7A5987AD42}';

/// {@category Interface}
/// {@category com}
class IAudioClient3 extends IAudioClient2 {
  // vtable begins at 18, is 3 entries long.
  IAudioClient3(Pointer<COMObject> ptr) : super(ptr);

  int GetSharedModeEnginePeriod(
    Pointer<WAVEFORMATEX> pFormat,
    Pointer<Uint32> pDefaultPeriodInFrames,
    Pointer<Uint32> pFundamentalPeriodInFrames,
    Pointer<Uint32> pMinPeriodInFrames,
    Pointer<Uint32> pMaxPeriodInFrames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WAVEFORMATEX> pFormat,
            Pointer<Uint32> pDefaultPeriodInFrames,
            Pointer<Uint32> pFundamentalPeriodInFrames,
            Pointer<Uint32> pMinPeriodInFrames,
            Pointer<Uint32> pMaxPeriodInFrames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WAVEFORMATEX> pFormat,
            Pointer<Uint32> pDefaultPeriodInFrames,
            Pointer<Uint32> pFundamentalPeriodInFrames,
            Pointer<Uint32> pMinPeriodInFrames,
            Pointer<Uint32> pMaxPeriodInFrames,
          )>()(
        ptr.ref.lpVtbl,
        pFormat,
        pDefaultPeriodInFrames,
        pFundamentalPeriodInFrames,
        pMinPeriodInFrames,
        pMaxPeriodInFrames,
      );

  int GetCurrentSharedModeEnginePeriod(
    Pointer<Pointer<WAVEFORMATEX>> ppFormat,
    Pointer<Uint32> pCurrentPeriodInFrames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WAVEFORMATEX>> ppFormat,
            Pointer<Uint32> pCurrentPeriodInFrames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WAVEFORMATEX>> ppFormat,
            Pointer<Uint32> pCurrentPeriodInFrames,
          )>()(
        ptr.ref.lpVtbl,
        ppFormat,
        pCurrentPeriodInFrames,
      );

  int InitializeSharedAudioStream(
    int StreamFlags,
    int PeriodInFrames,
    Pointer<WAVEFORMATEX> pFormat,
    Pointer<GUID> AudioSessionGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StreamFlags,
            Uint32 PeriodInFrames,
            Pointer<WAVEFORMATEX> pFormat,
            Pointer<GUID> AudioSessionGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StreamFlags,
            int PeriodInFrames,
            Pointer<WAVEFORMATEX> pFormat,
            Pointer<GUID> AudioSessionGuid,
          )>()(
        ptr.ref.lpVtbl,
        StreamFlags,
        PeriodInFrames,
        pFormat,
        AudioSessionGuid,
      );
}
