// isimpleaudiovolume.dart

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
const IID_ISimpleAudioVolume = '{87ce5498-68d6-44e5-9215-6da47ef883d8}';

/// The ISimpleAudioVolume interface enables a client to control the master
/// volume level of an audio session. The `IAudioClient::Initialize` method
/// initializes a stream object and assigns the stream to an audio session.
/// The client obtains a reference to the [ISimpleAudioVolume] interface on
/// a stream object by calling the `IAudioClient::GetService` method with
/// parameter `riid` set to REFIID [IID_ISimpleAudioVolume].
///
/// {@category com}
class ISimpleAudioVolume extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISimpleAudioVolume(super.ptr);

  factory ISimpleAudioVolume.from(IUnknown interface) =>
      ISimpleAudioVolume(interface.toInterface(IID_ISimpleAudioVolume));

  int setMasterVolume(double fLevel, Pointer<GUID> EventContext) =>
      (ptr.ref.vtable + 3)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Float fLevel,
                  Pointer<GUID> EventContext,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, double fLevel, Pointer<GUID> EventContext)
          >()(ptr.ref.lpVtbl, fLevel, EventContext);

  int getMasterVolume(Pointer<Float> pfLevel) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Float> pfLevel)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Float> pfLevel)>()(
    ptr.ref.lpVtbl,
    pfLevel,
  );

  int setMute(int bMute, Pointer<GUID> EventContext) => (ptr.ref.vtable + 5)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Int32 bMute, Pointer<GUID> EventContext)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, int bMute, Pointer<GUID> EventContext)
      >()(ptr.ref.lpVtbl, bMute, EventContext);

  int getMute(Pointer<Int32> pbMute) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Int32> pbMute)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Int32> pbMute)>()(
    ptr.ref.lpVtbl,
    pbMute,
  );
}
