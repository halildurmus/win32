// IDirectDrawKernel.dart

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
import '../../graphics/directdraw/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectDrawKernel = '{8D56C120-6A08-11D0-9B06-00A0C903A3B8}';

/// {@category Interface}
/// {@category com}
class IDirectDrawKernel extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDirectDrawKernel(Pointer<COMObject> ptr) : super(ptr);

  int GetCaps(
    Pointer<DDKERNELCAPS> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDKERNELCAPS> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDKERNELCAPS> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetKernelHandle(
    Pointer<IntPtr> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
          .elementAt(5)
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
