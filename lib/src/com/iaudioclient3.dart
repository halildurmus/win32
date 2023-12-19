// iaudioclient3.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iaudioclient2.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAudioClient3 = '{7ed4ee07-8e67-4cd4-8c1a-2b7a5987ad42}';

/// The IAudioClient3 interface is derived from the IAudioClient2 interface,
/// with a set of additional methods that enable a Windows Audio Session API
/// (WASAPI) audio client to query for the audio engine's supported
/// periodicities and current periodicity as well as request initialization
/// of a shared audio stream with a specified periodicity.
///
/// {@category com}
class IAudioClient3 extends IAudioClient2 {
  // vtable begins at 18, is 3 entries long.
  IAudioClient3(super.ptr);

  factory IAudioClient3.from(IUnknown interface) =>
      IAudioClient3(interface.toInterface(IID_IAudioClient3));

  int getSharedModeEnginePeriod(
          Pointer<WAVEFORMATEX> pFormat,
          Pointer<Uint32> pDefaultPeriodInFrames,
          Pointer<Uint32> pFundamentalPeriodInFrames,
          Pointer<Uint32> pMinPeriodInFrames,
          Pointer<Uint32> pMaxPeriodInFrames) =>
      ptr.ref.vtable
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
                              Pointer<Uint32> pMaxPeriodInFrames)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<WAVEFORMATEX> pFormat,
                      Pointer<Uint32> pDefaultPeriodInFrames,
                      Pointer<Uint32> pFundamentalPeriodInFrames,
                      Pointer<Uint32> pMinPeriodInFrames,
                      Pointer<Uint32> pMaxPeriodInFrames)>()(
          ptr.ref.lpVtbl,
          pFormat,
          pDefaultPeriodInFrames,
          pFundamentalPeriodInFrames,
          pMinPeriodInFrames,
          pMaxPeriodInFrames);

  int getCurrentSharedModeEnginePeriod(Pointer<Pointer<WAVEFORMATEX>> ppFormat,
          Pointer<Uint32> pCurrentPeriodInFrames) =>
      ptr.ref.vtable
              .elementAt(19)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer<WAVEFORMATEX>> ppFormat,
                              Pointer<Uint32> pCurrentPeriodInFrames)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<WAVEFORMATEX>> ppFormat,
                      Pointer<Uint32> pCurrentPeriodInFrames)>()(
          ptr.ref.lpVtbl, ppFormat, pCurrentPeriodInFrames);

  int initializeSharedAudioStream(int StreamFlags, int PeriodInFrames,
          Pointer<WAVEFORMATEX> pFormat, Pointer<GUID> AudioSessionGuid) =>
      ptr.ref.vtable
              .elementAt(20)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 StreamFlags,
                              Uint32 PeriodInFrames,
                              Pointer<WAVEFORMATEX> pFormat,
                              Pointer<GUID> AudioSessionGuid)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int StreamFlags,
                      int PeriodInFrames,
                      Pointer<WAVEFORMATEX> pFormat,
                      Pointer<GUID> AudioSessionGuid)>()(ptr.ref.lpVtbl,
          StreamFlags, PeriodInFrames, pFormat, AudioSessionGuid);
}
