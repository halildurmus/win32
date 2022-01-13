// ICompositorDesktopInterop.dart

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
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICompositorDesktopInterop = '{29E691FA-4567-4DCA-B319-D0F207EB6807}';

/// {@category Interface}
/// {@category com}
class ICompositorDesktopInterop extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ICompositorDesktopInterop(Pointer<COMObject> ptr) : super(ptr);

  int CreateDesktopWindowTarget(
    int hwndTarget,
    int isTopmost,
    Pointer<Pointer<COMObject>> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndTarget,
            Int32 isTopmost,
            Pointer<Pointer<COMObject>> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndTarget,
            int isTopmost,
            Pointer<Pointer<COMObject>> result,
          )>()(
        ptr.ref.lpVtbl,
        hwndTarget,
        isTopmost,
        result,
      );

  int EnsureOnThread(
    int threadId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 threadId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int threadId,
          )>()(
        ptr.ref.lpVtbl,
        threadId,
      );
}
