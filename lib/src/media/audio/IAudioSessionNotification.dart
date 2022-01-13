// IAudioSessionNotification.dart

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
import '../../media/audio/IAudioSessionControl.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioSessionNotification = '{641DD20B-4D41-49CC-ABA3-174B9477BB08}';

/// {@category Interface}
/// {@category com}
class IAudioSessionNotification extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAudioSessionNotification(Pointer<COMObject> ptr) : super(ptr);

  int OnSessionCreated(
    Pointer<COMObject> NewSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> NewSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> NewSession,
          )>()(
        ptr.ref.lpVtbl,
        NewSession,
      );
}
