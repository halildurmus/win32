// IUIImageFromBitmap.dart

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
import '../../ui/ribbon/structs.g.dart';
import '../../ui/ribbon/IUIImage.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIImageFromBitmap = '{18ABA7F3-4C1C-4BA2-BF6C-F5C3326FA816}';

/// {@category Interface}
/// {@category com}
class IUIImageFromBitmap extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIImageFromBitmap(Pointer<COMObject> ptr) : super(ptr);

  int CreateImage(
    int bitmap,
    int options,
    Pointer<Pointer<COMObject>> image,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr bitmap,
            Int32 options,
            Pointer<Pointer<COMObject>> image,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bitmap,
            int options,
            Pointer<Pointer<COMObject>> image,
          )>()(
        ptr.ref.lpVtbl,
        bitmap,
        options,
        image,
      );
}
