// IMFMediaEngineNotify.dart

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
const IID_IMFMediaEngineNotify = '{FEE7C112-E776-42B5-9BBF-0048524E2BD5}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngineNotify extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFMediaEngineNotify(Pointer<COMObject> ptr) : super(ptr);

  int EventNotify(
    int event,
    int param1,
    int param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 event,
            IntPtr param1,
            Uint32 param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int event,
            int param1,
            int param2,
          )>()(
        ptr.ref.lpVtbl,
        event,
        param1,
        param2,
      );
}
