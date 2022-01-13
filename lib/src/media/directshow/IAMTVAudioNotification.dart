// IAMTVAudioNotification.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAMTVAudioNotification = '{83EC1C33-23D1-11D1-99E6-00A0C9560266}';

/// {@category Interface}
/// {@category com}
class IAMTVAudioNotification extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAMTVAudioNotification(Pointer<COMObject> ptr) : super(ptr);

  int OnEvent(
    int Event,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Event,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Event,
          )>()(
        ptr.ref.lpVtbl,
        Event,
      );
}
