// IIndependentFlipFramePresentStatistics.dart

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

import '../../graphics/compositionswapchain/IPresentStatistics.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/compositionswapchain/structs.g.dart';

/// @nodoc
const IID_IIndependentFlipFramePresentStatistics =
    '{8C93BE27-AD94-4DA0-8FD4-2413132D124E}';

/// {@category Interface}
/// {@category com}
class IIndependentFlipFramePresentStatistics extends IPresentStatistics {
  // vtable begins at 5, is 5 entries long.
  IIndependentFlipFramePresentStatistics(Pointer<COMObject> ptr) : super(ptr);

  LUID GetOutputAdapterLUID() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      LUID Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              LUID Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetOutputVidPnSourceId() => ptr.ref.lpVtbl.value
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

  int GetContentTag() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  SystemInterruptTime GetDisplayedTime() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      SystemInterruptTime Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              SystemInterruptTime Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  SystemInterruptTime GetPresentDuration() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      SystemInterruptTime Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              SystemInterruptTime Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
