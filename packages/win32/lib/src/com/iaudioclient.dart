// iaudioclient.dart

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
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAudioClient = '{1cb9ad4c-dbfa-4c32-b178-c2f568a703b2}';

/// The IAudioClient interface enables a client to create and initialize an
/// audio stream between an audio application and the audio engine (for a
/// shared-mode stream) or the hardware buffer of an audio endpoint device
/// (for an exclusive-mode stream).
///
/// {@category com}
class IAudioClient extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IAudioClient(super.ptr);

  factory IAudioClient.from(IUnknown interface) =>
      IAudioClient(interface.toInterface(IID_IAudioClient));

  int initialize(
    int ShareMode,
    int StreamFlags,
    int hnsBufferDuration,
    int hnsPeriodicity,
    Pointer<WAVEFORMATEX> pFormat,
    Pointer<GUID> AudioSessionGuid,
  ) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Int32 ShareMode,
              Uint32 StreamFlags,
              Int64 hnsBufferDuration,
              Int64 hnsPeriodicity,
              Pointer<WAVEFORMATEX> pFormat,
              Pointer<GUID> AudioSessionGuid,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int ShareMode,
          int StreamFlags,
          int hnsBufferDuration,
          int hnsPeriodicity,
          Pointer<WAVEFORMATEX> pFormat,
          Pointer<GUID> AudioSessionGuid,
        )
      >()(
    ptr.ref.lpVtbl,
    ShareMode,
    StreamFlags,
    hnsBufferDuration,
    hnsPeriodicity,
    pFormat,
    AudioSessionGuid,
  );

  int getBufferSize(Pointer<Uint32> pNumBufferFrames) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Uint32> pNumBufferFrames)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Uint32> pNumBufferFrames)>()(
    ptr.ref.lpVtbl,
    pNumBufferFrames,
  );

  int getStreamLatency(Pointer<Int64> phnsLatency) => (ptr.ref.vtable + 5)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int64> phnsLatency)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Int64> phnsLatency)>()(
    ptr.ref.lpVtbl,
    phnsLatency,
  );

  int getCurrentPadding(Pointer<Uint32> pNumPaddingFrames) => (ptr.ref.vtable +
          6)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Uint32> pNumPaddingFrames)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Uint32> pNumPaddingFrames)>()(
    ptr.ref.lpVtbl,
    pNumPaddingFrames,
  );

  int isFormatSupported(
    int ShareMode,
    Pointer<WAVEFORMATEX> pFormat,
    Pointer<Pointer<WAVEFORMATEX>> ppClosestMatch,
  ) => (ptr.ref.vtable + 7)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Int32 ShareMode,
              Pointer<WAVEFORMATEX> pFormat,
              Pointer<Pointer<WAVEFORMATEX>> ppClosestMatch,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int ShareMode,
          Pointer<WAVEFORMATEX> pFormat,
          Pointer<Pointer<WAVEFORMATEX>> ppClosestMatch,
        )
      >()(ptr.ref.lpVtbl, ShareMode, pFormat, ppClosestMatch);

  int getMixFormat(Pointer<Pointer<WAVEFORMATEX>> ppDeviceFormat) =>
      (ptr.ref.vtable + 8)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Pointer<WAVEFORMATEX>> ppDeviceFormat,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Pointer<WAVEFORMATEX>> ppDeviceFormat)
          >()(ptr.ref.lpVtbl, ppDeviceFormat);

  int getDevicePeriod(
    Pointer<Int64> phnsDefaultDevicePeriod,
    Pointer<Int64> phnsMinimumDevicePeriod,
  ) => (ptr.ref.vtable + 9)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Int64> phnsDefaultDevicePeriod,
              Pointer<Int64> phnsMinimumDevicePeriod,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Int64> phnsDefaultDevicePeriod,
          Pointer<Int64> phnsMinimumDevicePeriod,
        )
      >()(ptr.ref.lpVtbl, phnsDefaultDevicePeriod, phnsMinimumDevicePeriod);

  int start() => (ptr.ref.vtable + 10)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int stop() => (ptr.ref.vtable + 11)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int reset() => (ptr.ref.vtable + 12)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int setEventHandle(int eventHandle) => (ptr.ref.vtable + 13)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, IntPtr eventHandle)>>
      >()
      .value
      .asFunction<int Function(Pointer, int eventHandle)>()(
    ptr.ref.lpVtbl,
    eventHandle,
  );

  int getService(Pointer<GUID> riid, Pointer<Pointer> ppv) => (ptr.ref.vtable +
          14)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<GUID> riid, Pointer<Pointer> ppv)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer<GUID> riid, Pointer<Pointer> ppv)
      >()(ptr.ref.lpVtbl, riid, ppv);
}
