// IMFSourceReaderCallback2.dart

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

import '../../media/mediafoundation/IMFSourceReaderCallback.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFSourceReaderCallback2 = '{CF839FE6-8C2A-4DD2-B6EA-C22D6961AF05}';

/// {@category Interface}
/// {@category com}
class IMFSourceReaderCallback2 extends IMFSourceReaderCallback {
  // vtable begins at 6, is 2 entries long.
  IMFSourceReaderCallback2(Pointer<COMObject> ptr) : super(ptr);

  int OnTransformChange() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
          .elementAt(7)
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
