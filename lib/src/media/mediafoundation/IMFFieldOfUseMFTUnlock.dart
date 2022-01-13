// IMFFieldOfUseMFTUnlock.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFFieldOfUseMFTUnlock = '{508E71D3-EC66-4FC3-8775-B4B9ED6BA847}';

/// {@category Interface}
/// {@category com}
class IMFFieldOfUseMFTUnlock extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFFieldOfUseMFTUnlock(Pointer<COMObject> ptr) : super(ptr);

  int Unlock(
    Pointer<COMObject> pUnkMFT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkMFT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkMFT,
          )>()(
        ptr.ref.lpVtbl,
        pUnkMFT,
      );
}
