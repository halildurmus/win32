// IVMRSurfaceAllocator9.dart

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

import '../../system/com/IUnknown.dart';
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DSurface9.dart';
import '../../media/directshow/IVMRSurfaceAllocatorNotify9.dart';

/// @nodoc
const IID_IVMRSurfaceAllocator9 = '{8D5148EA-3F5D-46CF-9DF1-D1B896EEDB1F}';

/// {@category Interface}
/// {@category com}
class IVMRSurfaceAllocator9 extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IVMRSurfaceAllocator9(Pointer<COMObject> ptr) : super(ptr);

  int InitializeDevice(
    int dwUserID,
    Pointer<VMR9AllocationInfo> lpAllocInfo,
    Pointer<Uint32> lpNumBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr dwUserID,
            Pointer<VMR9AllocationInfo> lpAllocInfo,
            Pointer<Uint32> lpNumBuffers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUserID,
            Pointer<VMR9AllocationInfo> lpAllocInfo,
            Pointer<Uint32> lpNumBuffers,
          )>()(
        ptr.ref.lpVtbl,
        dwUserID,
        lpAllocInfo,
        lpNumBuffers,
      );

  int TerminateDevice(
    int dwID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr dwID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwID,
          )>()(
        ptr.ref.lpVtbl,
        dwID,
      );

  int GetSurface(
    int dwUserID,
    int SurfaceIndex,
    int SurfaceFlags,
    Pointer<Pointer<COMObject>> lplpSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr dwUserID,
            Uint32 SurfaceIndex,
            Uint32 SurfaceFlags,
            Pointer<Pointer<COMObject>> lplpSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUserID,
            int SurfaceIndex,
            int SurfaceFlags,
            Pointer<Pointer<COMObject>> lplpSurface,
          )>()(
        ptr.ref.lpVtbl,
        dwUserID,
        SurfaceIndex,
        SurfaceFlags,
        lplpSurface,
      );

  int AdviseNotify(
    Pointer<COMObject> lpIVMRSurfAllocNotify,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpIVMRSurfAllocNotify,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpIVMRSurfAllocNotify,
          )>()(
        ptr.ref.lpVtbl,
        lpIVMRSurfAllocNotify,
      );
}
