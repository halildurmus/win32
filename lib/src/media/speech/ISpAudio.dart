// ISpAudio.dart

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

import '../../media/speech/ISpStreamFormat.dart';
import '../../media/speech/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';

/// @nodoc
const IID_ISpAudio = '{C05C768F-FAE8-4EC2-8E07-338321C12452}';

/// {@category Interface}
/// {@category com}
class ISpAudio extends ISpStreamFormat {
  // vtable begins at 15, is 11 entries long.
  ISpAudio(Pointer<COMObject> ptr) : super(ptr);

  int SetState(
    int NewState,
    int ullReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 NewState,
            Uint64 ullReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NewState,
            int ullReserved,
          )>()(
        ptr.ref.lpVtbl,
        NewState,
        ullReserved,
      );

  int SetFormat(
    Pointer<GUID> rguidFmtId,
    Pointer<WAVEFORMATEX> pWaveFormatEx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidFmtId,
            Pointer<WAVEFORMATEX> pWaveFormatEx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidFmtId,
            Pointer<WAVEFORMATEX> pWaveFormatEx,
          )>()(
        ptr.ref.lpVtbl,
        rguidFmtId,
        pWaveFormatEx,
      );

  int GetStatus(
    Pointer<SPAUDIOSTATUS> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPAUDIOSTATUS> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPAUDIOSTATUS> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        pStatus,
      );

  int SetBufferInfo(
    Pointer<SPAUDIOBUFFERINFO> pBuffInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPAUDIOBUFFERINFO> pBuffInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPAUDIOBUFFERINFO> pBuffInfo,
          )>()(
        ptr.ref.lpVtbl,
        pBuffInfo,
      );

  int GetBufferInfo(
    Pointer<SPAUDIOBUFFERINFO> pBuffInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPAUDIOBUFFERINFO> pBuffInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPAUDIOBUFFERINFO> pBuffInfo,
          )>()(
        ptr.ref.lpVtbl,
        pBuffInfo,
      );

  int GetDefaultFormat(
    Pointer<GUID> pFormatId,
    Pointer<Pointer<WAVEFORMATEX>> ppCoMemWaveFormatEx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pFormatId,
            Pointer<Pointer<WAVEFORMATEX>> ppCoMemWaveFormatEx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pFormatId,
            Pointer<Pointer<WAVEFORMATEX>> ppCoMemWaveFormatEx,
          )>()(
        ptr.ref.lpVtbl,
        pFormatId,
        ppCoMemWaveFormatEx,
      );

  int EventHandle() => ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetVolumeLevel(
    Pointer<Uint32> pLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pLevel,
          )>()(
        ptr.ref.lpVtbl,
        pLevel,
      );

  int SetVolumeLevel(
    int Level,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Level,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Level,
          )>()(
        ptr.ref.lpVtbl,
        Level,
      );

  int GetBufferNotifySize(
    Pointer<Uint32> pcbSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbSize,
          )>()(
        ptr.ref.lpVtbl,
        pcbSize,
      );

  int SetBufferNotifySize(
    int cbSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbSize,
          )>()(
        ptr.ref.lpVtbl,
        cbSize,
      );
}
