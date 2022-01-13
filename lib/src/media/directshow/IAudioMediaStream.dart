// IAudioMediaStream.dart

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

import '../../media/directshow/IMediaStream.dart';
import '../../media/audio/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IAudioData.dart';
import '../../media/directshow/IAudioStreamSample.dart';

/// @nodoc
const IID_IAudioMediaStream = '{F7537560-A3BE-11D0-8212-00C04FC32C45}';

/// {@category Interface}
/// {@category com}
class IAudioMediaStream extends IMediaStream {
  // vtable begins at 9, is 3 entries long.
  IAudioMediaStream(Pointer<COMObject> ptr) : super(ptr);

  int GetFormat(
    Pointer<WAVEFORMATEX> pWaveFormatCurrent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WAVEFORMATEX> pWaveFormatCurrent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WAVEFORMATEX> pWaveFormatCurrent,
          )>()(
        ptr.ref.lpVtbl,
        pWaveFormatCurrent,
      );

  int SetFormat(
    Pointer<WAVEFORMATEX> lpWaveFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WAVEFORMATEX> lpWaveFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WAVEFORMATEX> lpWaveFormat,
          )>()(
        ptr.ref.lpVtbl,
        lpWaveFormat,
      );

  int CreateSample(
    Pointer<COMObject> pAudioData,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAudioData,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAudioData,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppSample,
          )>()(
        ptr.ref.lpVtbl,
        pAudioData,
        dwFlags,
        ppSample,
      );
}
