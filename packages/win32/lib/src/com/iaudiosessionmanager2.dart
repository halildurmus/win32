// iaudiosessionmanager2.dart

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
import 'iaudiosessionmanager.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAudioSessionManager2 = '{77aa99a0-1bd6-484f-8bc7-2c654c9a9b6f}';

/// The IAudioSessionManager2 interface enables an application to manage
/// submixes for the audio device.
///
/// {@category com}
class IAudioSessionManager2 extends IAudioSessionManager {
  // vtable begins at 5, is 5 entries long.
  IAudioSessionManager2(super.ptr);

  factory IAudioSessionManager2.from(IUnknown interface) =>
      IAudioSessionManager2(interface.toInterface(IID_IAudioSessionManager2));

  int getSessionEnumerator(Pointer<Pointer<COMObject>> SessionEnum) =>
      (ptr.ref.vtable + 5)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<Pointer<COMObject>> SessionEnum)
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Pointer<COMObject>> SessionEnum)
          >()(ptr.ref.lpVtbl, SessionEnum);

  int registerSessionNotification(Pointer<COMObject> SessionNotification) =>
      (ptr.ref.vtable + 6)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<COMObject> SessionNotification)
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<COMObject> SessionNotification)
          >()(ptr.ref.lpVtbl, SessionNotification);

  int unregisterSessionNotification(Pointer<COMObject> SessionNotification) =>
      (ptr.ref.vtable + 7)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<COMObject> SessionNotification)
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<COMObject> SessionNotification)
          >()(ptr.ref.lpVtbl, SessionNotification);

  int registerDuckNotification(
    Pointer<Utf16> sessionID,
    Pointer<COMObject> duckNotification,
  ) => (ptr.ref.vtable + 8)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> sessionID,
              Pointer<COMObject> duckNotification,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> sessionID,
          Pointer<COMObject> duckNotification,
        )
      >()(ptr.ref.lpVtbl, sessionID, duckNotification);

  int unregisterDuckNotification(Pointer<COMObject> duckNotification) =>
      (ptr.ref.vtable + 9)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<COMObject> duckNotification)
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<COMObject> duckNotification)
          >()(ptr.ref.lpVtbl, duckNotification);
}
