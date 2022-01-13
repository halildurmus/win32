// IAudioVolumeDuckNotification.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioVolumeDuckNotification =
    '{C3B284D4-6D39-4359-B3CF-B56DDB3BB39C}';

/// {@category Interface}
/// {@category com}
class IAudioVolumeDuckNotification extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioVolumeDuckNotification(Pointer<COMObject> ptr) : super(ptr);

  int OnVolumeDuckNotification(
    Pointer<Utf16> sessionID,
    int countCommunicationSessions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> sessionID,
            Uint32 countCommunicationSessions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> sessionID,
            int countCommunicationSessions,
          )>()(
        ptr.ref.lpVtbl,
        sessionID,
        countCommunicationSessions,
      );

  int OnVolumeUnduckNotification(
    Pointer<Utf16> sessionID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> sessionID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> sessionID,
          )>()(
        ptr.ref.lpVtbl,
        sessionID,
      );
}
