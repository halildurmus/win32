// IDirectDrawSurfaceKernel.dart

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
const IID_IDirectDrawSurfaceKernel = '{60755DA0-6A40-11D0-9B06-00A0C903A3B8}';

/// {@category Interface}
/// {@category com}
class IDirectDrawSurfaceKernel extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirectDrawSurfaceKernel(Pointer<COMObject> ptr) : super(ptr);

  int GetKernelHandle(
    Pointer<IntPtr> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int ReleaseKernelHandle() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
