// iaudiosessionmanager.dart

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
const IID_IAudioSessionManager = '{bfa971f1-4d5e-40bb-935e-967039bfbee4}';

/// The IAudioSessionManager interface enables a client to access the
/// session controls and volume controls for both cross-process and
/// process-specific audio sessions. The client obtains a reference to an
/// [IAudioSessionManager] interface by calling the `IMMDevice::Activate`
/// method with parameter `iid` set to REFIID [IID_IAudioSessionManager].
///
/// {@category com}
class IAudioSessionManager extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioSessionManager(super.ptr);

  factory IAudioSessionManager.from(IUnknown interface) =>
      IAudioSessionManager(interface.toInterface(IID_IAudioSessionManager));

  int getAudioSessionControl(
    Pointer<GUID> AudioSessionGuid,
    int StreamFlags,
    Pointer<Pointer<COMObject>> SessionControl,
  ) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<GUID> AudioSessionGuid,
              Uint32 StreamFlags,
              Pointer<Pointer<COMObject>> SessionControl,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<GUID> AudioSessionGuid,
          int StreamFlags,
          Pointer<Pointer<COMObject>> SessionControl,
        )
      >()(ptr.ref.lpVtbl, AudioSessionGuid, StreamFlags, SessionControl);

  int getSimpleAudioVolume(
    Pointer<GUID> AudioSessionGuid,
    int StreamFlags,
    Pointer<Pointer<COMObject>> AudioVolume,
  ) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<GUID> AudioSessionGuid,
              Uint32 StreamFlags,
              Pointer<Pointer<COMObject>> AudioVolume,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<GUID> AudioSessionGuid,
          int StreamFlags,
          Pointer<Pointer<COMObject>> AudioVolume,
        )
      >()(ptr.ref.lpVtbl, AudioSessionGuid, StreamFlags, AudioVolume);
}
