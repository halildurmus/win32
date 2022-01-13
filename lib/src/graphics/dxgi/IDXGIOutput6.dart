// IDXGIOutput6.dart

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

import '../../graphics/dxgi/IDXGIOutput5.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIOutput6 = '{068346E8-AAEC-4B84-ADD7-137F513F77A1}';

/// {@category Interface}
/// {@category com}
class IDXGIOutput6 extends IDXGIOutput5 {
  // vtable begins at 27, is 2 entries long.
  IDXGIOutput6(Pointer<COMObject> ptr) : super(ptr);

  int GetDesc1(
    Pointer<DXGI_OUTPUT_DESC1> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_OUTPUT_DESC1> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_OUTPUT_DESC1> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  int CheckHardwareCompositionSupport(
    Pointer<Uint32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pFlags,
      );
}
