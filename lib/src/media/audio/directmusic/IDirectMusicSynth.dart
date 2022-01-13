// IDirectMusicSynth.dart

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
import '../../../media/IReferenceClock.dart';
import '../../../media/audio/directmusic/IDirectMusicSynthSink.dart';
import '../../../media/audio/structs.g.dart';

/// @nodoc
const IID_IDirectMusicSynth = '{09823661-5C85-11D2-AFA6-00AA0024D8B6}';

/// {@category Interface}
/// {@category com}
class IDirectMusicSynth extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IDirectMusicSynth(Pointer<COMObject> ptr) : super(ptr);

  int Open(
    Pointer<DMUS_PORTPARAMS8> pPortParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DMUS_PORTPARAMS8> pPortParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DMUS_PORTPARAMS8> pPortParams,
          )>()(
        ptr.ref.lpVtbl,
        pPortParams,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int SetNumChannelGroups(
    int dwGroups,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwGroups,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwGroups,
          )>()(
        ptr.ref.lpVtbl,
        dwGroups,
      );

  int Download(
    Pointer<IntPtr> phDownload,
    Pointer pvData,
    Pointer<Int32> pbFree,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phDownload,
            Pointer pvData,
            Pointer<Int32> pbFree,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phDownload,
            Pointer pvData,
            Pointer<Int32> pbFree,
          )>()(
        ptr.ref.lpVtbl,
        phDownload,
        pvData,
        pbFree,
      );

  int Unload(
    int hDownload,
    int lpFreeHandle,
    int hUserData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDownload,
            IntPtr lpFreeHandle,
            IntPtr hUserData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDownload,
            int lpFreeHandle,
            int hUserData,
          )>()(
        ptr.ref.lpVtbl,
        hDownload,
        lpFreeHandle,
        hUserData,
      );

  int PlayBuffer(
    int rt,
    Pointer<Uint8> pbBuffer,
    int cbBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 rt,
            Pointer<Uint8> pbBuffer,
            Uint32 cbBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rt,
            Pointer<Uint8> pbBuffer,
            int cbBuffer,
          )>()(
        ptr.ref.lpVtbl,
        rt,
        pbBuffer,
        cbBuffer,
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

  int GetPortCaps(
    Pointer<DMUS_PORTCAPS> pCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DMUS_PORTCAPS> pCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DMUS_PORTCAPS> pCaps,
          )>()(
        ptr.ref.lpVtbl,
        pCaps,
      );

  int SetMasterClock(
    Pointer<COMObject> pClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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
          .elementAt(12)
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
          .elementAt(13)
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

  int SetSynthSink(
    Pointer<COMObject> pSynthSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSynthSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSynthSink,
          )>()(
        ptr.ref.lpVtbl,
        pSynthSink,
      );

  int Render(
    Pointer<Int16> pBuffer,
    int dwLength,
    int llPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pBuffer,
            Uint32 dwLength,
            Int64 llPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pBuffer,
            int dwLength,
            int llPosition,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
        dwLength,
        llPosition,
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

  int GetFormat(
    Pointer<WAVEFORMATEX> pWaveFormatEx,
    Pointer<Uint32> pdwWaveFormatExSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WAVEFORMATEX> pWaveFormatEx,
            Pointer<Uint32> pdwWaveFormatExSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WAVEFORMATEX> pWaveFormatEx,
            Pointer<Uint32> pdwWaveFormatExSize,
          )>()(
        ptr.ref.lpVtbl,
        pWaveFormatEx,
        pdwWaveFormatExSize,
      );

  int GetAppend(
    Pointer<Uint32> pdwAppend,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwAppend,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwAppend,
          )>()(
        ptr.ref.lpVtbl,
        pdwAppend,
      );
}
