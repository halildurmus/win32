// IBanneredBar.dart

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
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IBanneredBar = '{596A9A94-013E-11D1-8D34-00A0C90F2719}';

/// {@category Interface}
/// {@category com}
class IBanneredBar extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IBanneredBar(Pointer<COMObject> ptr) : super(ptr);

  int SetIconSize(
    int iIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIcon,
          )>()(
        ptr.ref.lpVtbl,
        iIcon,
      );

  int GetIconSize(
    Pointer<Uint32> piIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> piIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> piIcon,
          )>()(
        ptr.ref.lpVtbl,
        piIcon,
      );

  int SetBitmap(
    int hBitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hBitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hBitmap,
          )>()(
        ptr.ref.lpVtbl,
        hBitmap,
      );

  int GetBitmap(
    Pointer<IntPtr> phBitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phBitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phBitmap,
          )>()(
        ptr.ref.lpVtbl,
        phBitmap,
      );
}
