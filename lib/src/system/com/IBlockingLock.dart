// IBlockingLock.dart

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
const IID_IBlockingLock = '{30F3D47A-6447-11D1-8E3C-00C04FB9386D}';

/// {@category Interface}
/// {@category com}
class IBlockingLock extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IBlockingLock(Pointer<COMObject> ptr) : super(ptr);

  int Lock(
    int dwTimeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTimeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTimeout,
          )>()(
        ptr.ref.lpVtbl,
        dwTimeout,
      );

  int Unlock() => ptr.ref.lpVtbl.value
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
