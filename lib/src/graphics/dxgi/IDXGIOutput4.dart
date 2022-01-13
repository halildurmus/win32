// IDXGIOutput4.dart

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

import '../../graphics/dxgi/IDXGIOutput3.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIOutput4 = '{DC7DCA35-2196-414D-9F53-617884032A60}';

/// {@category Interface}
/// {@category com}
class IDXGIOutput4 extends IDXGIOutput3 {
  // vtable begins at 25, is 1 entries long.
  IDXGIOutput4(Pointer<COMObject> ptr) : super(ptr);

  int CheckOverlayColorSpaceSupport(
    int Format,
    int ColorSpace,
    Pointer<COMObject> pConcernedDevice,
    Pointer<Uint32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Format,
            Int32 ColorSpace,
            Pointer<COMObject> pConcernedDevice,
            Pointer<Uint32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Format,
            int ColorSpace,
            Pointer<COMObject> pConcernedDevice,
            Pointer<Uint32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        Format,
        ColorSpace,
        pConcernedDevice,
        pFlags,
      );
}
