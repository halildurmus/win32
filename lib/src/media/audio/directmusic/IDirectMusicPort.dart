// IDirectMusicPort.dart

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
import '../../../media/audio/directmusic/IDirectMusicBuffer.dart';
import '../../../foundation/structs.g.dart';
import '../../../media/audio/directmusic/IDirectMusicInstrument.dart';
import '../../../media/audio/directmusic/IDirectMusicDownloadedInstrument.dart';
import '../../../media/audio/directmusic/structs.g.dart';
import '../../../media/IReferenceClock.dart';
import '../../../specialTypes.dart';
import '../../../media/audio/directsound/IDirectSound.dart';
import '../../../media/audio/directsound/IDirectSoundBuffer.dart';
import '../../../media/audio/structs.g.dart';

/// @nodoc
const IID_IDirectMusicPort = '{08F2D8C9-37C2-11D2-B9F9-0000F875AC12}';

/// {@category Interface}
/// {@category com}
class IDirectMusicPort extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IDirectMusicPort(Pointer<COMObject> ptr) : super(ptr);

  int PlayBuffer(
    Pointer<COMObject> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
      );

  int SetReadNotificationHandle(
    int hEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hEvent,
          )>()(
        ptr.ref.lpVtbl,
        hEvent,
      );

  int Read(
    Pointer<COMObject> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
      );

  int DownloadInstrument(
    Pointer<COMObject> pInstrument,
    Pointer<Pointer<COMObject>> ppDownloadedInstrument,
    Pointer<DMUS_NOTERANGE> pNoteRanges,
    int dwNumNoteRanges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pInstrument,
            Pointer<Pointer<COMObject>> ppDownloadedInstrument,
            Pointer<DMUS_NOTERANGE> pNoteRanges,
            Uint32 dwNumNoteRanges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pInstrument,
            Pointer<Pointer<COMObject>> ppDownloadedInstrument,
            Pointer<DMUS_NOTERANGE> pNoteRanges,
            int dwNumNoteRanges,
          )>()(
        ptr.ref.lpVtbl,
        pInstrument,
        ppDownloadedInstrument,
        pNoteRanges,
        dwNumNoteRanges,
      );

  int UnloadInstrument(
    Pointer<COMObject> pDownloadedInstrument,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDownloadedInstrument,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDownloadedInstrument,
          )>()(
        ptr.ref.lpVtbl,
        pDownloadedInstrument,
      );

  int GetLatencyClock(
    Pointer<Pointer<COMObject>> ppClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int GetRunningStats(
    Pointer<DMUS_SYNTHSTATS> pStats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DMUS_SYNTHSTATS> pStats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DMUS_SYNTHSTATS> pStats,
          )>()(
        ptr.ref.lpVtbl,
        pStats,
      );

  int Compact() => ptr.ref.lpVtbl.value
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

  int GetCaps(
    Pointer<DMUS_PORTCAPS> pPortCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DMUS_PORTCAPS> pPortCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DMUS_PORTCAPS> pPortCaps,
          )>()(
        ptr.ref.lpVtbl,
        pPortCaps,
      );

  int DeviceIoControl(
    int dwIoControlCode,
    Pointer lpInBuffer,
    int nInBufferSize,
    Pointer lpOutBuffer,
    int nOutBufferSize,
    Pointer<Uint32> lpBytesReturned,
    Pointer<OVERLAPPED> lpOverlapped,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIoControlCode,
            Pointer lpInBuffer,
            Uint32 nInBufferSize,
            Pointer lpOutBuffer,
            Uint32 nOutBufferSize,
            Pointer<Uint32> lpBytesReturned,
            Pointer<OVERLAPPED> lpOverlapped,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIoControlCode,
            Pointer lpInBuffer,
            int nInBufferSize,
            Pointer lpOutBuffer,
            int nOutBufferSize,
            Pointer<Uint32> lpBytesReturned,
            Pointer<OVERLAPPED> lpOverlapped,
          )>()(
        ptr.ref.lpVtbl,
        dwIoControlCode,
        lpInBuffer,
        nInBufferSize,
        lpOutBuffer,
        nOutBufferSize,
        lpBytesReturned,
        lpOverlapped,
      );

  int SetNumChannelGroups(
    int dwChannelGroups,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwChannelGroups,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwChannelGroups,
          )>()(
        ptr.ref.lpVtbl,
        dwChannelGroups,
      );

  int GetNumChannelGroups(
    Pointer<Uint32> pdwChannelGroups,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwChannelGroups,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwChannelGroups,
          )>()(
        ptr.ref.lpVtbl,
        pdwChannelGroups,
      );

  int Activate(
    int fActive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fActive,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fActive,
          )>()(
        ptr.ref.lpVtbl,
        fActive,
      );

  int SetChannelPriority(
    int dwChannelGroup,
    int dwChannel,
    int dwPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwChannelGroup,
            Uint32 dwChannel,
            Uint32 dwPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwChannelGroup,
            int dwChannel,
            int dwPriority,
          )>()(
        ptr.ref.lpVtbl,
        dwChannelGroup,
        dwChannel,
        dwPriority,
      );

  int GetChannelPriority(
    int dwChannelGroup,
    int dwChannel,
    Pointer<Uint32> pdwPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwChannelGroup,
            Uint32 dwChannel,
            Pointer<Uint32> pdwPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwChannelGroup,
            int dwChannel,
            Pointer<Uint32> pdwPriority,
          )>()(
        ptr.ref.lpVtbl,
        dwChannelGroup,
        dwChannel,
        pdwPriority,
      );

  int SetDirectSound(
    Pointer<COMObject> pDirectSound,
    Pointer<COMObject> pDirectSoundBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int GetFormat(
    Pointer<WAVEFORMATEX> pWaveFormatEx,
    Pointer<Uint32> pdwWaveFormatExSize,
    Pointer<Uint32> pdwBufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WAVEFORMATEX> pWaveFormatEx,
            Pointer<Uint32> pdwWaveFormatExSize,
            Pointer<Uint32> pdwBufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WAVEFORMATEX> pWaveFormatEx,
            Pointer<Uint32> pdwWaveFormatExSize,
            Pointer<Uint32> pdwBufferSize,
          )>()(
        ptr.ref.lpVtbl,
        pWaveFormatEx,
        pdwWaveFormatExSize,
        pdwBufferSize,
      );
}
