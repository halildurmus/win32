// IMFMediaSourceExtensionLiveSeekableRange.dart

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
const IID_IMFMediaSourceExtensionLiveSeekableRange =
    '{5D1ABFD6-450A-4D92-9EFC-D6B6CBC1F4DA}';

/// {@category Interface}
/// {@category com}
class IMFMediaSourceExtensionLiveSeekableRange extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFMediaSourceExtensionLiveSeekableRange(Pointer<COMObject> ptr) : super(ptr);

  int SetLiveSeekableRange(
    double start,
    double end,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double start,
            Double end,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double start,
            double end,
          )>()(
        ptr.ref.lpVtbl,
        start,
        end,
      );

  int ClearLiveSeekableRange() => ptr.ref.lpVtbl.value
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
