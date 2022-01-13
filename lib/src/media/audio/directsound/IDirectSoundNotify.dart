// IDirectSoundNotify.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../media/audio/directsound/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectSoundNotify = '{B0210783-89CD-11D0-AF08-00A0C925CD16}';

/// {@category Interface}
/// {@category com}
class IDirectSoundNotify extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDirectSoundNotify(Pointer<COMObject> ptr) : super(ptr);

  int SetNotificationPositions(
    int dwPositionNotifies,
    Pointer<DSBPOSITIONNOTIFY> pcPositionNotifies,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwPositionNotifies,
            Pointer<DSBPOSITIONNOTIFY> pcPositionNotifies,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwPositionNotifies,
            Pointer<DSBPOSITIONNOTIFY> pcPositionNotifies,
          )>()(
        ptr.ref.lpVtbl,
        dwPositionNotifies,
        pcPositionNotifies,
      );
}
