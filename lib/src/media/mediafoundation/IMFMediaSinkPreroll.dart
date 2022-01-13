// IMFMediaSinkPreroll.dart

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
const IID_IMFMediaSinkPreroll = '{5DFD4B2A-7674-4110-A4E6-8A68FD5F3688}';

/// {@category Interface}
/// {@category com}
class IMFMediaSinkPreroll extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFMediaSinkPreroll(Pointer<COMObject> ptr) : super(ptr);

  int NotifyPreroll(
    int hnsUpcomingStartTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 hnsUpcomingStartTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hnsUpcomingStartTime,
          )>()(
        ptr.ref.lpVtbl,
        hnsUpcomingStartTime,
      );
}
