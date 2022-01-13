// IDirectWriterLock.dart

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
const IID_IDirectWriterLock = '{0E6D4D92-6738-11CF-9608-00AA00680DB4}';

/// {@category Interface}
/// {@category com}
class IDirectWriterLock extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDirectWriterLock(Pointer<COMObject> ptr) : super(ptr);

  int WaitForWriteAccess(
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

  int ReleaseWriteAccess() => ptr.ref.lpVtbl.value
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

  int HaveWriteAccess() => ptr.ref.lpVtbl.value
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
