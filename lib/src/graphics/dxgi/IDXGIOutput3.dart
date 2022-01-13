// IDXGIOutput3.dart

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

import '../../graphics/dxgi/IDXGIOutput2.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIOutput3 = '{8A6BB301-7E7E-41F4-A8E0-5B32F7F99B18}';

/// {@category Interface}
/// {@category com}
class IDXGIOutput3 extends IDXGIOutput2 {
  // vtable begins at 24, is 1 entries long.
  IDXGIOutput3(Pointer<COMObject> ptr) : super(ptr);

  int CheckOverlaySupport(
    int EnumFormat,
    Pointer<COMObject> pConcernedDevice,
    Pointer<Uint32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 EnumFormat,
            Pointer<COMObject> pConcernedDevice,
            Pointer<Uint32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EnumFormat,
            Pointer<COMObject> pConcernedDevice,
            Pointer<Uint32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        EnumFormat,
        pConcernedDevice,
        pFlags,
      );
}
