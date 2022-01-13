// ISynchronizeEvent.dart

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

import '../../system/com/ISynchronizeHandle.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISynchronizeEvent = '{00000032-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class ISynchronizeEvent extends ISynchronizeHandle {
  // vtable begins at 4, is 1 entries long.
  ISynchronizeEvent(Pointer<COMObject> ptr) : super(ptr);

  int SetEventHandle(
    Pointer<IntPtr> ph,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> ph,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> ph,
          )>()(
        ptr.ref.lpVtbl,
        ph,
      );
}
