// IVMRImagePresenter.dart

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
const IID_IVMRImagePresenter = '{CE704FE7-E71E-41FB-BAA2-C4403E1182F5}';

/// {@category Interface}
/// {@category com}
class IVMRImagePresenter extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IVMRImagePresenter(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<VMRPRESENTATIONINFO> lpPresInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr dwUserID,
            Pointer<VMRPRESENTATIONINFO> lpPresInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUserID,
            Pointer<VMRPRESENTATIONINFO> lpPresInfo,
          )>()(
        ptr.ref.lpVtbl,
        dwUserID,
        lpPresInfo,
      );
}
