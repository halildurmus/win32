// IAudioSessionManager2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../media/audio/IAudioSessionManager.dart';
import '../../media/audio/IAudioSessionEnumerator.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/IAudioSessionNotification.dart';
import '../../media/audio/IAudioVolumeDuckNotification.dart';

/// @nodoc
const IID_IAudioSessionManager2 = '{77AA99A0-1BD6-484F-8BC7-2C654C9A9B6F}';

/// {@category Interface}
/// {@category com}
class IAudioSessionManager2 extends IAudioSessionManager {
  // vtable begins at 5, is 5 entries long.
  IAudioSessionManager2(Pointer<COMObject> ptr) : super(ptr);

  int GetSessionEnumerator(
    Pointer<Pointer<COMObject>> SessionEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> SessionEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> SessionEnum,
          )>()(
        ptr.ref.lpVtbl,
        SessionEnum,
      );

  int RegisterSessionNotification(
    Pointer<COMObject> SessionNotification,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> SessionNotification,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> SessionNotification,
          )>()(
        ptr.ref.lpVtbl,
        SessionNotification,
      );

  int UnregisterSessionNotification(
    Pointer<COMObject> SessionNotification,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> SessionNotification,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> SessionNotification,
          )>()(
        ptr.ref.lpVtbl,
        SessionNotification,
      );

  int RegisterDuckNotification(
    Pointer<Utf16> sessionID,
    Pointer<COMObject> duckNotification,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> sessionID,
            Pointer<COMObject> duckNotification,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> sessionID,
            Pointer<COMObject> duckNotification,
          )>()(
        ptr.ref.lpVtbl,
        sessionID,
        duckNotification,
      );

  int UnregisterDuckNotification(
    Pointer<COMObject> duckNotification,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> duckNotification,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> duckNotification,
          )>()(
        ptr.ref.lpVtbl,
        duckNotification,
      );
}
