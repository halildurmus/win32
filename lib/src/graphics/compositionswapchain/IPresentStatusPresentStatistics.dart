// IPresentStatusPresentStatistics.dart

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
import '../../graphics/compositionswapchain/structs.g.dart';

/// @nodoc
const IID_IPresentStatusPresentStatistics =
    '{C9ED2A41-79CB-435E-964E-C8553055420C}';

/// {@category Interface}
/// {@category com}
class IPresentStatusPresentStatistics extends IPresentStatistics {
  // vtable begins at 5, is 2 entries long.
  IPresentStatusPresentStatistics(Pointer<COMObject> ptr) : super(ptr);

  int GetCompositionFrameId() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetPresentStatus() => ptr.ref.lpVtbl.value
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
}
