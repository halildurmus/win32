// IDirectMusic8.dart

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

import '../../../media/audio/directmusic/IDirectMusic.dart';
import '../../../media/IReferenceClock.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectMusic8 = '{2D3629F7-813D-4939-8508-F05C6B75FD97}';

/// {@category Interface}
/// {@category com}
class IDirectMusic8 extends IDirectMusic {
  // vtable begins at 12, is 1 entries long.
  IDirectMusic8(Pointer<COMObject> ptr) : super(ptr);

  int SetExternalMasterClock(
    Pointer<COMObject> pClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pClock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pClock,
          )>()(
        ptr.ref.lpVtbl,
        pClock,
      );
}
