// IDebugHostMemory2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/diagnostics/debug/IDebugHostMemory.dart';
import '../../../system/diagnostics/debug/IDebugHostContext.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugHostMemory2 = '{EEA033DE-38F6-416B-A251-1D3771001270}';

/// {@category Interface}
/// {@category com}
class IDebugHostMemory2 extends IDebugHostMemory {
  // vtable begins at 8, is 1 entries long.
  IDebugHostMemory2(Pointer<COMObject> ptr) : super(ptr);

  int LinearizeLocation(
    Pointer<COMObject> context,
    Location location,
    Pointer<Location> pLinearizedLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> context,
            Location location,
            Pointer<Location> pLinearizedLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> context,
            Location location,
            Pointer<Location> pLinearizedLocation,
          )>()(
        ptr.ref.lpVtbl,
        context,
        location,
        pLinearizedLocation,
      );
}
