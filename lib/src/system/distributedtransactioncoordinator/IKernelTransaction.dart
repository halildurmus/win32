// IKernelTransaction.dart

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
const IID_IKernelTransaction = '{79427A2B-F895-40E0-BE79-B57DC82ED231}';

/// {@category Interface}
/// {@category com}
class IKernelTransaction extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IKernelTransaction(Pointer<COMObject> ptr) : super(ptr);

  int GetHandle(
    Pointer<IntPtr> pHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> pHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> pHandle,
          )>()(
        ptr.ref.lpVtbl,
        pHandle,
      );
}
