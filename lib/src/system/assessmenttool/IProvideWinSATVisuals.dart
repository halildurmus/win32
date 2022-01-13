// IProvideWinSATVisuals.dart

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
import '../../system/assessmenttool/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IProvideWinSATVisuals = '{A9F4ADE0-871A-42A3-B813-3078D25162C9}';

/// {@category Interface}
/// {@category com}
class IProvideWinSATVisuals extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IProvideWinSATVisuals(Pointer<COMObject> ptr) : super(ptr);

  int get_Bitmap(
    int bitmapSize,
    int state,
    double rating,
    Pointer<IntPtr> pBitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bitmapSize,
            Int32 state,
            Float rating,
            Pointer<IntPtr> pBitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bitmapSize,
            int state,
            double rating,
            Pointer<IntPtr> pBitmap,
          )>()(
        ptr.ref.lpVtbl,
        bitmapSize,
        state,
        rating,
        pBitmap,
      );
}
