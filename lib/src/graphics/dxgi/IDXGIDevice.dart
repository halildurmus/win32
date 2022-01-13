// IDXGIDevice.dart

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

import '../../graphics/dxgi/IDXGIObject.dart';
import '../../graphics/dxgi/IDXGIAdapter.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../graphics/dxgi/IDXGISurface.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IDXGIDevice = '{54EC77FA-1377-44E6-8C32-88FD5F44C84C}';

/// {@category Interface}
/// {@category com}
class IDXGIDevice extends IDXGIObject {
  // vtable begins at 7, is 5 entries long.
  IDXGIDevice(Pointer<COMObject> ptr) : super(ptr);

  int GetAdapter(
    Pointer<Pointer<COMObject>> pAdapter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pAdapter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pAdapter,
          )>()(
        ptr.ref.lpVtbl,
        pAdapter,
      );

  int CreateSurface(
    Pointer<DXGI_SURFACE_DESC> pDesc,
    int NumSurfaces,
    int Usage,
    Pointer<DXGI_SHARED_RESOURCE> pSharedResource,
    Pointer<Pointer<COMObject>> ppSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_SURFACE_DESC> pDesc,
            Uint32 NumSurfaces,
            Uint32 Usage,
            Pointer<DXGI_SHARED_RESOURCE> pSharedResource,
            Pointer<Pointer<COMObject>> ppSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_SURFACE_DESC> pDesc,
            int NumSurfaces,
            int Usage,
            Pointer<DXGI_SHARED_RESOURCE> pSharedResource,
            Pointer<Pointer<COMObject>> ppSurface,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        NumSurfaces,
        Usage,
        pSharedResource,
        ppSurface,
      );

  int QueryResourceResidency(
    Pointer<Pointer<COMObject>> ppResources,
    Pointer<Int32> pResidencyStatus,
    int NumResources,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResources,
            Pointer<Int32> pResidencyStatus,
            Uint32 NumResources,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResources,
            Pointer<Int32> pResidencyStatus,
            int NumResources,
          )>()(
        ptr.ref.lpVtbl,
        ppResources,
        pResidencyStatus,
        NumResources,
      );

  int SetGPUThreadPriority(
    int Priority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Priority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Priority,
          )>()(
        ptr.ref.lpVtbl,
        Priority,
      );

  int GetGPUThreadPriority(
    Pointer<Int32> pPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pPriority,
          )>()(
        ptr.ref.lpVtbl,
        pPriority,
      );
}
