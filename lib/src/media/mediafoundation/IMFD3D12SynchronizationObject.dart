// IMFD3D12SynchronizationObject.dart

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
const IID_IMFD3D12SynchronizationObject =
    '{802302B0-82DE-45E1-B421-F19EE5BDAF23}';

/// {@category Interface}
/// {@category com}
class IMFD3D12SynchronizationObject extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFD3D12SynchronizationObject(Pointer<COMObject> ptr) : super(ptr);

  int SignalEventOnFinalResourceRelease(
    int hEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hEvent,
          )>()(
        ptr.ref.lpVtbl,
        hEvent,
      );

  int Reset() => ptr.ref.lpVtbl.value
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
