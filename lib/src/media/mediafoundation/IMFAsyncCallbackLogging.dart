// IMFAsyncCallbackLogging.dart

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

import '../../media/mediafoundation/IMFAsyncCallback.dart';

/// @nodoc
const IID_IMFAsyncCallbackLogging = '{C7A4DCA1-F5F0-47B6-B92B-BF0106D25791}';

/// {@category Interface}
/// {@category com}
class IMFAsyncCallbackLogging extends IMFAsyncCallback {
  // vtable begins at 5, is 2 entries long.
  IMFAsyncCallbackLogging(Pointer<COMObject> ptr) : super(ptr);

  Pointer GetObjectPointer() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetObjectTag() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
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
