// IVMRImagePresenter9.dart

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
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IVMRImagePresenter9 = '{69188C61-12A3-40F0-8FFC-342E7B433FD7}';

/// {@category Interface}
/// {@category com}
class IVMRImagePresenter9 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IVMRImagePresenter9(Pointer<COMObject> ptr) : super(ptr);

  int StartPresenting(
    int dwUserID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr dwUserID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUserID,
          )>()(
        ptr.ref.lpVtbl,
        dwUserID,
      );

  int StopPresenting(
    int dwUserID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr dwUserID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUserID,
          )>()(
        ptr.ref.lpVtbl,
        dwUserID,
      );

  int PresentImage(
    int dwUserID,
    Pointer<VMR9PresentationInfo> lpPresInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr dwUserID,
            Pointer<VMR9PresentationInfo> lpPresInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUserID,
            Pointer<VMR9PresentationInfo> lpPresInfo,
          )>()(
        ptr.ref.lpVtbl,
        dwUserID,
        lpPresInfo,
      );
}
