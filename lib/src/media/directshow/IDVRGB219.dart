// IDVRGB219.dart

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
const IID_IDVRGB219 = '{58473A19-2BC8-4663-8012-25F81BABDDD1}';

/// {@category Interface}
/// {@category com}
class IDVRGB219 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDVRGB219(Pointer<COMObject> ptr) : super(ptr);

  int SetRGB219(
    int bState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bState,
          )>()(
        ptr.ref.lpVtbl,
        bState,
      );
}
