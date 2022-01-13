// IDCompositionCompositeEffect.dart

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

import '../../graphics/directcomposition/IDCompositionFilterEffect.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDCompositionCompositeEffect =
    '{576616C0-A231-494D-A38D-00FD5EC4DB46}';

/// {@category Interface}
/// {@category com}
class IDCompositionCompositeEffect extends IDCompositionFilterEffect {
  // vtable begins at 4, is 1 entries long.
  IDCompositionCompositeEffect(Pointer<COMObject> ptr) : super(ptr);

  int SetMode(
    int mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int mode,
          )>()(
        ptr.ref.lpVtbl,
        mode,
      );
}
