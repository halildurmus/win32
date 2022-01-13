// IDirectSoundBuffer.dart

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
import '../../../media/audio/directsound/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../media/audio/structs.g.dart';
import '../../../media/audio/directsound/IDirectSound.dart';

/// @nodoc
const IID_IDirectSoundBuffer = '{279AFA85-4981-11CE-A521-0020AF0BE560}';

/// {@category Interface}
/// {@category com}
class IDirectSoundBuffer extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  IDirectSoundBuffer(Pointer<COMObject> ptr) : super(ptr);

  int GetCaps(
    Pointer<DSBCAPS> pDSBufferCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSBCAPS> pDSBufferCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSBCAPS> pDSBufferCaps,
          )>()(
        ptr.ref.lpVtbl,
        pDSBufferCaps,
      );

  int GetCurrentPosition(
    Pointer<Uint32> pdwCurrentPlayCursor,
    Pointer<Uint32> pdwCurrentWriteCursor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCurrentPlayCursor,
            Pointer<Uint32> pdwCurrentWriteCursor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCurrentPlayCursor,
            Pointer<Uint32> pdwCurrentWriteCursor,
          )>()(
        ptr.ref.lpVtbl,
        pdwCurrentPlayCursor,
        pdwCurrentWriteCursor,
      );

  int GetFormat(
    Pointer<WAVEFORMATEX> pwfxFormat,
    int dwSizeAllocated,
    Pointer<Uint32> pdwSizeWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WAVEFORMATEX> pwfxFormat,
            Uint32 dwSizeAllocated,
            Pointer<Uint32> pdwSizeWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WAVEFORMATEX> pwfxFormat,
            int dwSizeAllocated,
            Pointer<Uint32> pdwSizeWritten,
          )>()(
        ptr.ref.lpVtbl,
        pwfxFormat,
        dwSizeAllocated,
        pdwSizeWritten,
      );

  int GetVolume(
    Pointer<Int32> plVolume,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plVolume,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plVolume,
          )>()(
        ptr.ref.lpVtbl,
        plVolume,
      );

  int GetPan(
    Pointer<Int32> plPan,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plPan,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plPan,
          )>()(
        ptr.ref.lpVtbl,
        plPan,
      );

  int GetFrequency(
    Pointer<Uint32> pdwFrequency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFrequency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFrequency,
          )>()(
        ptr.ref.lpVtbl,
        pdwFrequency,
      );

  int GetStatus(
    Pointer<Uint32> pdwStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
          )>()(
        ptr.ref.lpVtbl,
        pdwStatus,
      );

  int Initialize(
    Pointer<COMObject> pDirectSound,
    Pointer<DSBUFFERDESC> pcDSBufferDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDirectSound,
            Pointer<DSBUFFERDESC> pcDSBufferDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDirectSound,
            Pointer<DSBUFFERDESC> pcDSBufferDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDirectSound,
        pcDSBufferDesc,
      );

  int Lock(
    int dwOffset,
    int dwBytes,
    Pointer<Pointer> ppvAudioPtr1,
    Pointer<Uint32> pdwAudioBytes1,
    Pointer<Pointer> ppvAudioPtr2,
    Pointer<Uint32> pdwAudioBytes2,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOffset,
            Uint32 dwBytes,
            Pointer<Pointer> ppvAudioPtr1,
            Pointer<Uint32> pdwAudioBytes1,
            Pointer<Pointer> ppvAudioPtr2,
            Pointer<Uint32> pdwAudioBytes2,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOffset,
            int dwBytes,
            Pointer<Pointer> ppvAudioPtr1,
            Pointer<Uint32> pdwAudioBytes1,
            Pointer<Pointer> ppvAudioPtr2,
            Pointer<Uint32> pdwAudioBytes2,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwOffset,
        dwBytes,
        ppvAudioPtr1,
        pdwAudioBytes1,
        ppvAudioPtr2,
        pdwAudioBytes2,
        dwFlags,
      );

  int Play(
    int dwReserved1,
    int dwPriority,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwReserved1,
            Uint32 dwPriority,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwReserved1,
            int dwPriority,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwReserved1,
        dwPriority,
        dwFlags,
      );

  int SetCurrentPosition(
    int dwNewPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwNewPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwNewPosition,
          )>()(
        ptr.ref.lpVtbl,
        dwNewPosition,
      );

  int SetFormat(
    Pointer<WAVEFORMATEX> pcfxFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WAVEFORMATEX> pcfxFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WAVEFORMATEX> pcfxFormat,
          )>()(
        ptr.ref.lpVtbl,
        pcfxFormat,
      );

  int SetVolume(
    int lVolume,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lVolume,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lVolume,
          )>()(
        ptr.ref.lpVtbl,
        lVolume,
      );

  int SetPan(
    int lPan,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lPan,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lPan,
          )>()(
        ptr.ref.lpVtbl,
        lPan,
      );

  int SetFrequency(
    int dwFrequency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFrequency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFrequency,
          )>()(
        ptr.ref.lpVtbl,
        dwFrequency,
      );

  int Stop() => ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int Unlock(
    Pointer pvAudioPtr1,
    int dwAudioBytes1,
    Pointer pvAudioPtr2,
    int dwAudioBytes2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pvAudioPtr1,
            Uint32 dwAudioBytes1,
            Pointer pvAudioPtr2,
            Uint32 dwAudioBytes2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pvAudioPtr1,
            int dwAudioBytes1,
            Pointer pvAudioPtr2,
            int dwAudioBytes2,
          )>()(
        ptr.ref.lpVtbl,
        pvAudioPtr1,
        dwAudioBytes1,
        pvAudioPtr2,
        dwAudioBytes2,
      );

  int Restore() => ptr.ref.lpVtbl.value
          .elementAt(20)
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
}
