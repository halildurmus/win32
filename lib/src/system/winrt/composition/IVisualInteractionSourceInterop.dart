// IVisualInteractionSourceInterop.dart

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
import '../../../ui/input/pointer/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IVisualInteractionSourceInterop =
    '{11F62CD1-2F9D-42D3-B05F-D6790D9E9F8E}';

/// {@category Interface}
/// {@category com}
class IVisualInteractionSourceInterop extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IVisualInteractionSourceInterop(Pointer<COMObject> ptr) : super(ptr);

  int TryRedirectForManipulation(
    Pointer<POINTER_INFO> pointerInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<POINTER_INFO> pointerInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<POINTER_INFO> pointerInfo,
          )>()(
        ptr.ref.lpVtbl,
        pointerInfo,
      );
}
