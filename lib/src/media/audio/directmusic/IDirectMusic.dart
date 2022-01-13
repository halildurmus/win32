// IDirectMusic.dart

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
import '../../../media/audio/directmusic/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../media/audio/directmusic/IDirectMusicBuffer.dart';
import '../../../specialTypes.dart';
import '../../../media/audio/directmusic/IDirectMusicPort.dart';
import '../../../media/IReferenceClock.dart';
import '../../../media/audio/directsound/IDirectSound.dart';

/// @nodoc
const IID_IDirectMusic = '{6536115A-7B2D-11D2-BA18-0000F875AC12}';

/// {@category Interface}
/// {@category com}
class IDirectMusic extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IDirectMusic(Pointer<COMObject> ptr) : super(ptr);

  int EnumPort(
    int dwIndex,
    Pointer<DMUS_PORTCAPS> pPortCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<DMUS_PORTCAPS> pPortCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<DMUS_PORTCAPS> pPortCaps,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        pPortCaps,
      );

  int CreateMusicBuffer(
    Pointer<DMUS_BUFFERDESC> pBufferDesc,
    Pointer<Pointer<COMObject>> ppBuffer,
    Pointer<COMObject> pUnkOuter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DMUS_BUFFERDESC> pBufferDesc,
            Pointer<Pointer<COMObject>> ppBuffer,
            Pointer<COMObject> pUnkOuter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DMUS_BUFFERDESC> pBufferDesc,
            Pointer<Pointer<COMObject>> ppBuffer,
            Pointer<COMObject> pUnkOuter,
          )>()(
        ptr.ref.lpVtbl,
        pBufferDesc,
        ppBuffer,
        pUnkOuter,
      );

  int CreatePort(
    Pointer<GUID> rclsidPort,
    Pointer<DMUS_PORTPARAMS8> pPortParams,
    Pointer<Pointer<COMObject>> ppPort,
    Pointer<COMObject> pUnkOuter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsidPort,
            Pointer<DMUS_PORTPARAMS8> pPortParams,
            Pointer<Pointer<COMObject>> ppPort,
            Pointer<COMObject> pUnkOuter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsidPort,
            Pointer<DMUS_PORTPARAMS8> pPortParams,
            Pointer<Pointer<COMObject>> ppPort,
            Pointer<COMObject> pUnkOuter,
          )>()(
        ptr.ref.lpVtbl,
        rclsidPort,
        pPortParams,
        ppPort,
        pUnkOuter,
      );

  int EnumMasterClock(
    int dwIndex,
    Pointer<DMUS_CLOCKINFO8> lpClockInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<DMUS_CLOCKINFO8> lpClockInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<DMUS_CLOCKINFO8> lpClockInfo,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        lpClockInfo,
      );

  int GetMasterClock(
    Pointer<GUID> pguidClock,
    Pointer<Pointer<COMObject>> ppReferenceClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidClock,
            Pointer<Pointer<COMObject>> ppReferenceClock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidClock,
            Pointer<Pointer<COMObject>> ppReferenceClock,
          )>()(
        ptr.ref.lpVtbl,
        pguidClock,
        ppReferenceClock,
      );

  int SetMasterClock(
    Pointer<GUID> rguidClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidClock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidClock,
          )>()(
        ptr.ref.lpVtbl,
        rguidClock,
      );

  int Activate(
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int GetDefaultPort(
    Pointer<GUID> pguidPort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidPort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidPort,
          )>()(
        ptr.ref.lpVtbl,
        pguidPort,
      );

  int SetDirectSound(
    Pointer<COMObject> pDirectSound,
    int hWnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDirectSound,
            IntPtr hWnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDirectSound,
            int hWnd,
          )>()(
        ptr.ref.lpVtbl,
        pDirectSound,
        hWnd,
      );
}
