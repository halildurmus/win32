// IVMRSurfaceAllocatorNotify9.dart

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
import '../../media/directshow/IVMRSurfaceAllocator9.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DDevice9.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../media/directshow/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DSurface9.dart';

/// @nodoc
const IID_IVMRSurfaceAllocatorNotify9 =
    '{DCA3F5DF-BB3A-4D03-BD81-84614BFBFA0C}';

/// {@category Interface}
/// {@category com}
class IVMRSurfaceAllocatorNotify9 extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IVMRSurfaceAllocatorNotify9(Pointer<COMObject> ptr) : super(ptr);

  int AdviseSurfaceAllocator(
    int dwUserID,
    Pointer<COMObject> lpIVRMSurfaceAllocator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr dwUserID,
            Pointer<COMObject> lpIVRMSurfaceAllocator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUserID,
            Pointer<COMObject> lpIVRMSurfaceAllocator,
          )>()(
        ptr.ref.lpVtbl,
        dwUserID,
        lpIVRMSurfaceAllocator,
      );

  int SetD3DDevice(
    Pointer<COMObject> lpD3DDevice,
    int hMonitor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpD3DDevice,
            IntPtr hMonitor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpD3DDevice,
            int hMonitor,
          )>()(
        ptr.ref.lpVtbl,
        lpD3DDevice,
        hMonitor,
      );

  int ChangeD3DDevice(
    Pointer<COMObject> lpD3DDevice,
    int hMonitor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpD3DDevice,
            IntPtr hMonitor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpD3DDevice,
            int hMonitor,
          )>()(
        ptr.ref.lpVtbl,
        lpD3DDevice,
        hMonitor,
      );

  int AllocateSurfaceHelper(
    Pointer<VMR9AllocationInfo> lpAllocInfo,
    Pointer<Uint32> lpNumBuffers,
    Pointer<Pointer<COMObject>> lplpSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VMR9AllocationInfo> lpAllocInfo,
            Pointer<Uint32> lpNumBuffers,
            Pointer<Pointer<COMObject>> lplpSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VMR9AllocationInfo> lpAllocInfo,
            Pointer<Uint32> lpNumBuffers,
            Pointer<Pointer<COMObject>> lplpSurface,
          )>()(
        ptr.ref.lpVtbl,
        lpAllocInfo,
        lpNumBuffers,
        lplpSurface,
      );

  int NotifyEvent(
    int EventCode,
    int Param1,
    int Param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 EventCode,
            IntPtr Param1,
            IntPtr Param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EventCode,
            int Param1,
            int Param2,
          )>()(
        ptr.ref.lpVtbl,
        EventCode,
        Param1,
        Param2,
      );
}
