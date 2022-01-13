// IObjectWithCancelEvent.dart

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
const IID_IObjectWithCancelEvent = '{F279B885-0AE9-4B85-AC06-DDECF9408941}';

/// {@category Interface}
/// {@category com}
class IObjectWithCancelEvent extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IObjectWithCancelEvent(Pointer<COMObject> ptr) : super(ptr);

  int GetCancelEvent(
    Pointer<IntPtr> phEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phEvent,
          )>()(
        ptr.ref.lpVtbl,
        phEvent,
      );
}
