// IMFSinkWriterCallback2.dart

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

import '../../media/mediafoundation/IMFSinkWriterCallback.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFSinkWriterCallback2 = '{2456BD58-C067-4513-84FE-8D0C88FFDC61}';

/// {@category Interface}
/// {@category com}
class IMFSinkWriterCallback2 extends IMFSinkWriterCallback {
  // vtable begins at 5, is 2 entries long.
  IMFSinkWriterCallback2(Pointer<COMObject> ptr) : super(ptr);

  int OnTransformChange() => ptr.ref.lpVtbl.value
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

  int OnStreamError(
    int dwStreamIndex,
    int hrStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Int32 hrStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            int hrStatus,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        hrStatus,
      );
}
