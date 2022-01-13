// IDXGIFactory6.dart

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

import '../../graphics/dxgi/IDXGIFactory5.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIFactory6 = '{C1B6694F-FF09-44A9-B03C-77900A0A1D17}';

/// {@category Interface}
/// {@category com}
class IDXGIFactory6 extends IDXGIFactory5 {
  // vtable begins at 29, is 1 entries long.
  IDXGIFactory6(Pointer<COMObject> ptr) : super(ptr);

  int EnumAdapterByGpuPreference(
    int Adapter,
    int GpuPreference,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvAdapter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Adapter,
            Int32 GpuPreference,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvAdapter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            int GpuPreference,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvAdapter,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        GpuPreference,
        riid,
        ppvAdapter,
      );
}
