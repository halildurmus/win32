// IPinFlowControl.dart

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
const IID_IPinFlowControl = '{C56E9858-DBF3-4F6B-8119-384AF2060DEB}';

/// {@category Interface}
/// {@category com}
class IPinFlowControl extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPinFlowControl(Pointer<COMObject> ptr) : super(ptr);

  int Block(
    int dwBlockFlags,
    int hEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwBlockFlags,
            IntPtr hEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwBlockFlags,
            int hEvent,
          )>()(
        ptr.ref.lpVtbl,
        dwBlockFlags,
        hEvent,
      );
}
