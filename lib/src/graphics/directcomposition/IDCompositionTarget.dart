// IDCompositionTarget.dart

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
import '../../graphics/directcomposition/IDCompositionVisual.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDCompositionTarget = '{EACDD04C-117E-4E17-88F4-D1B12B0E3D89}';

/// {@category Interface}
/// {@category com}
class IDCompositionTarget extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDCompositionTarget(Pointer<COMObject> ptr) : super(ptr);

  int SetRoot(
    Pointer<COMObject> visual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> visual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> visual,
          )>()(
        ptr.ref.lpVtbl,
        visual,
      );
}
