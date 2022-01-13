// IVMRSurfaceAllocator.dart

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
import '../../graphics/directdraw/IDirectDrawSurface7.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IVMRSurfaceAllocatorNotify.dart';

/// @nodoc
const IID_IVMRSurfaceAllocator = '{31CE832E-4484-458B-8CCA-F4D7E3DB0B52}';

/// {@category Interface}
/// {@category com}
class IVMRSurfaceAllocator extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IVMRSurfaceAllocator(Pointer<COMObject> ptr) : super(ptr);

  int AllocateSurface(
    int dwUserID,
    Pointer<VMRALLOCATIONINFO> lpAllocInfo,
    Pointer<Uint32> lpdwActualBuffers,
    Pointer<Pointer<COMObject>> lplpSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr dwUserID,
            Pointer<VMRALLOCATIONINFO> lpAllocInfo,
            Pointer<Uint32> lpdwActualBuffers,
            Pointer<Pointer<COMObject>> lplpSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUserID,
            Pointer<VMRALLOCATIONINFO> lpAllocInfo,
            Pointer<Uint32> lpdwActualBuffers,
            Pointer<Pointer<COMObject>> lplpSurface,
          )>()(
        ptr.ref.lpVtbl,
        dwUserID,
        lpAllocInfo,
        lpdwActualBuffers,
        lplpSurface,
      );

  int FreeSurface(
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

  int PrepareSurface(
    int dwUserID,
    Pointer<COMObject> lpSurface,
    int dwSurfaceFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr dwUserID,
            Pointer<COMObject> lpSurface,
            Uint32 dwSurfaceFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUserID,
            Pointer<COMObject> lpSurface,
            int dwSurfaceFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwUserID,
        lpSurface,
        dwSurfaceFlags,
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
