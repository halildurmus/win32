// iaudiostreamvolume.dart

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
const IID_IAudioStreamVolume = '{93014887-242d-4068-8a15-cf5e93b90fe3}';

/// The IAudioStreamVolume interface enables a client to control and monitor
/// the volume levels for all of the channels in an audio stream. The client
/// obtains a reference to the [IAudioStreamVolume] interface on a stream
/// object by calling the `IAudioClient::GetService` method with parameter
/// riid set to REFIID [IID_IAudioStreamVolume].
///
/// {@category com}
class IAudioStreamVolume extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAudioStreamVolume(super.ptr);

  factory IAudioStreamVolume.from(IUnknown interface) =>
      IAudioStreamVolume(interface.toInterface(IID_IAudioStreamVolume));

  int getChannelCount(Pointer<Uint32> pdwCount) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pdwCount)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Uint32> pdwCount)>()(
    ptr.ref.lpVtbl,
    pdwCount,
  );

  int setChannelVolume(int dwIndex, double fLevel) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Uint32 dwIndex, Float fLevel)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, int dwIndex, double fLevel)>()(
    ptr.ref.lpVtbl,
    dwIndex,
    fLevel,
  );

  int getChannelVolume(int dwIndex, Pointer<Float> pfLevel) => (ptr.ref.vtable +
          5)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Uint32 dwIndex, Pointer<Float> pfLevel)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, int dwIndex, Pointer<Float> pfLevel)>()(
    ptr.ref.lpVtbl,
    dwIndex,
    pfLevel,
  );

  int setAllVolumes(int dwCount, Pointer<Float> pfVolumes) => (ptr.ref.vtable +
          6)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Uint32 dwCount, Pointer<Float> pfVolumes)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, int dwCount, Pointer<Float> pfVolumes)
      >()(ptr.ref.lpVtbl, dwCount, pfVolumes);

  int getAllVolumes(int dwCount, Pointer<Float> pfVolumes) => (ptr.ref.vtable +
          7)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Uint32 dwCount, Pointer<Float> pfVolumes)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, int dwCount, Pointer<Float> pfVolumes)
      >()(ptr.ref.lpVtbl, dwCount, pfVolumes);
}
