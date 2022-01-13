// IUIImage.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIImage = '{23C8C838-4DE6-436B-AB01-5554BB7C30DD}';

/// {@category Interface}
/// {@category com}
class IUIImage extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIImage(Pointer<COMObject> ptr) : super(ptr);

  int GetBitmap(
    Pointer<IntPtr> bitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> bitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> bitmap,
          )>()(
        ptr.ref.lpVtbl,
        bitmap,
      );
}
