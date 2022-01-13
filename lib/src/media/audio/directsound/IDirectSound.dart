// IDirectSound.dart

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
import '../../../media/audio/directsound/IDirectSoundBuffer.dart';
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectSound = '{279AFA83-4981-11CE-A521-0020AF0BE560}';

/// {@category Interface}
/// {@category com}
class IDirectSound extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IDirectSound(Pointer<COMObject> ptr) : super(ptr);

  int CreateSoundBuffer(
    Pointer<DSBUFFERDESC> pcDSBufferDesc,
    Pointer<Pointer<COMObject>> ppDSBuffer,
    Pointer<COMObject> pUnkOuter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSBUFFERDESC> pcDSBufferDesc,
            Pointer<Pointer<COMObject>> ppDSBuffer,
            Pointer<COMObject> pUnkOuter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSBUFFERDESC> pcDSBufferDesc,
            Pointer<Pointer<COMObject>> ppDSBuffer,
            Pointer<COMObject> pUnkOuter,
          )>()(
        ptr.ref.lpVtbl,
        pcDSBufferDesc,
        ppDSBuffer,
        pUnkOuter,
      );

  int GetCaps(
    Pointer<DSCAPS> pDSCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSCAPS> pDSCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSCAPS> pDSCaps,
          )>()(
        ptr.ref.lpVtbl,
        pDSCaps,
      );

  int DuplicateSoundBuffer(
    Pointer<COMObject> pDSBufferOriginal,
    Pointer<Pointer<COMObject>> ppDSBufferDuplicate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDSBufferOriginal,
            Pointer<Pointer<COMObject>> ppDSBufferDuplicate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDSBufferOriginal,
            Pointer<Pointer<COMObject>> ppDSBufferDuplicate,
          )>()(
        ptr.ref.lpVtbl,
        pDSBufferOriginal,
        ppDSBufferDuplicate,
      );

  int SetCooperativeLevel(
    int hwnd,
    int dwLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Uint32 dwLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int dwLevel,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        dwLevel,
      );

  int Compact() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int GetSpeakerConfig(
    Pointer<Uint32> pdwSpeakerConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwSpeakerConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwSpeakerConfig,
          )>()(
        ptr.ref.lpVtbl,
        pdwSpeakerConfig,
      );

  int SetSpeakerConfig(
    int dwSpeakerConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSpeakerConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSpeakerConfig,
          )>()(
        ptr.ref.lpVtbl,
        dwSpeakerConfig,
      );

  int Initialize(
    Pointer<GUID> pcGuidDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pcGuidDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pcGuidDevice,
          )>()(
        ptr.ref.lpVtbl,
        pcGuidDevice,
      );
}
