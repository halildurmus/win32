// IDirect3DSwapChain9Ex.dart

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

import '../../graphics/direct3d9/IDirect3DSwapChain9.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d9/structs.g.dart';

/// @nodoc
const IID_IDirect3DSwapChain9Ex = '{91886CAF-1C3D-4D2E-A0AB-3E4C7D8D3303}';

/// {@category Interface}
/// {@category com}
class IDirect3DSwapChain9Ex extends IDirect3DSwapChain9 {
  // vtable begins at 10, is 3 entries long.
  IDirect3DSwapChain9Ex(Pointer<COMObject> ptr) : super(ptr);

  int GetLastPresentCount(
    Pointer<Uint32> pLastPresentCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pLastPresentCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pLastPresentCount,
          )>()(
        ptr.ref.lpVtbl,
        pLastPresentCount,
      );

  int GetPresentStats(
    Pointer<D3DPRESENTSTATS> pPresentationStatistics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DPRESENTSTATS> pPresentationStatistics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DPRESENTSTATS> pPresentationStatistics,
          )>()(
        ptr.ref.lpVtbl,
        pPresentationStatistics,
      );

  int GetDisplayModeEx(
    Pointer<D3DDISPLAYMODEEX> pMode,
    Pointer<Int32> pRotation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DDISPLAYMODEEX> pMode,
            Pointer<Int32> pRotation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DDISPLAYMODEEX> pMode,
            Pointer<Int32> pRotation,
          )>()(
        ptr.ref.lpVtbl,
        pMode,
        pRotation,
      );
}
