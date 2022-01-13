// IVMRSurfaceAllocatorEx9.dart

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

import '../../media/directshow/IVMRSurfaceAllocator9.dart';
import '../../graphics/direct3d9/IDirect3DSurface9.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVMRSurfaceAllocatorEx9 = '{6DE9A68A-A928-4522-BF57-655AE3866456}';

/// {@category Interface}
/// {@category com}
class IVMRSurfaceAllocatorEx9 extends IVMRSurfaceAllocator9 {
  // vtable begins at 7, is 1 entries long.
  IVMRSurfaceAllocatorEx9(Pointer<COMObject> ptr) : super(ptr);

  int GetSurfaceEx(
    int dwUserID,
    int SurfaceIndex,
    int SurfaceFlags,
    Pointer<Pointer<COMObject>> lplpSurface,
    Pointer<RECT> lprcDst,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr dwUserID,
            Uint32 SurfaceIndex,
            Uint32 SurfaceFlags,
            Pointer<Pointer<COMObject>> lplpSurface,
            Pointer<RECT> lprcDst,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUserID,
            int SurfaceIndex,
            int SurfaceFlags,
            Pointer<Pointer<COMObject>> lplpSurface,
            Pointer<RECT> lprcDst,
          )>()(
        ptr.ref.lpVtbl,
        dwUserID,
        SurfaceIndex,
        SurfaceFlags,
        lplpSurface,
        lprcDst,
      );
}
