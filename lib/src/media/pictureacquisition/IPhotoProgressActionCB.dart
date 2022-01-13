// IPhotoProgressActionCB.dart

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
const IID_IPhotoProgressActionCB = '{00F242D0-B206-4E7D-B4C1-4755BCBB9C9F}';

/// {@category Interface}
/// {@category com}
class IPhotoProgressActionCB extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPhotoProgressActionCB(Pointer<COMObject> ptr) : super(ptr);

  int DoAction(
    int hWndParent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWndParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWndParent,
          )>()(
        ptr.ref.lpVtbl,
        hWndParent,
      );
}
