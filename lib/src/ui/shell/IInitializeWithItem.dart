// IInitializeWithItem.dart

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
import '../../ui/shell/IShellItem.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IInitializeWithItem = '{7F73BE3F-FB79-493C-A6C7-7EE14E245841}';

/// {@category Interface}
/// {@category com}
class IInitializeWithItem extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IInitializeWithItem(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> psi,
    int grfMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
            Uint32 grfMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
            int grfMode,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        grfMode,
      );
}
