// IDirectSoundCaptureBuffer.dart

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
import '../../../media/audio/directsound/IDirectSoundCapture.dart';

/// @nodoc
const IID_IDirectSoundCaptureBuffer = '{B0210782-89CD-11D0-AF08-00A0C925CD16}';

/// {@category Interface}
/// {@category com}
class IDirectSoundCaptureBuffer extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IDirectSoundCaptureBuffer(Pointer<COMObject> ptr) : super(ptr);

  int GetCaps(
    Pointer<DSCBCAPS> pDSCBCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSCBCAPS> pDSCBCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSCBCAPS> pDSCBCaps,
          )>()(
        ptr.ref.lpVtbl,
        pDSCBCaps,
      );

  int GetCurrentPosition(
    Pointer<Uint32> pdwCapturePosition,
    Pointer<Uint32> pdwReadPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCapturePosition,
            Pointer<Uint32> pdwReadPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCapturePosition,
            Pointer<Uint32> pdwReadPosition,
          )>()(
        ptr.ref.lpVtbl,
        pdwCapturePosition,
        pdwReadPosition,
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

  int GetStatus(
    Pointer<Uint32> pdwStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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
    Pointer<COMObject> pDirectSoundCapture,
    Pointer<DSCBUFFERDESC> pcDSCBufferDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDirectSoundCapture,
            Pointer<DSCBUFFERDESC> pcDSCBufferDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDirectSoundCapture,
            Pointer<DSCBUFFERDESC> pcDSCBufferDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDirectSoundCapture,
        pcDSCBufferDesc,
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
          .elementAt(8)
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

  int Start(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );

  int Stop() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
          .elementAt(11)
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
}
