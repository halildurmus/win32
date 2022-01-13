// IIsolatedEnvironmentInterop.dart

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
const IID_IIsolatedEnvironmentInterop =
    '{85713C2E-8E62-46C5-8DE2-C647E1D54636}';

/// {@category Interface}
/// {@category com}
class IIsolatedEnvironmentInterop extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IIsolatedEnvironmentInterop(Pointer<COMObject> ptr) : super(ptr);

  int GetHostHwndInterop(
    int containerHwnd,
    Pointer<IntPtr> hostHwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr containerHwnd,
            Pointer<IntPtr> hostHwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int containerHwnd,
            Pointer<IntPtr> hostHwnd,
          )>()(
        ptr.ref.lpVtbl,
        containerHwnd,
        hostHwnd,
      );
}
