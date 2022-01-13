// IDXGIFactory5.dart

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

import '../../graphics/dxgi/IDXGIFactory4.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIFactory5 = '{7632E1F5-EE65-4DCA-87FD-84CD75F8838D}';

/// {@category Interface}
/// {@category com}
class IDXGIFactory5 extends IDXGIFactory4 {
  // vtable begins at 28, is 1 entries long.
  IDXGIFactory5(Pointer<COMObject> ptr) : super(ptr);

  int CheckFeatureSupport(
    int Feature,
    Pointer pFeatureSupportData,
    int FeatureSupportDataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Feature,
            Pointer pFeatureSupportData,
            Uint32 FeatureSupportDataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Feature,
            Pointer pFeatureSupportData,
            int FeatureSupportDataSize,
          )>()(
        ptr.ref.lpVtbl,
        Feature,
        pFeatureSupportData,
        FeatureSupportDataSize,
      );
}
