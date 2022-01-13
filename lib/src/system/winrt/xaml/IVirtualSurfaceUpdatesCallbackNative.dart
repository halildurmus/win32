// IVirtualSurfaceUpdatesCallbackNative.dart

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
const IID_IVirtualSurfaceUpdatesCallbackNative =
    '{DBF2E947-8E6C-4254-9EEE-7738F71386C9}';

/// {@category Interface}
/// {@category com}
class IVirtualSurfaceUpdatesCallbackNative extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IVirtualSurfaceUpdatesCallbackNative(Pointer<COMObject> ptr) : super(ptr);

  int UpdatesNeeded() => ptr.ref.lpVtbl.value
          .elementAt(3)
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
