// IDirect3DDevice9On12.dart

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
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DResource9.dart';
import '../../graphics/direct3d12/ID3D12CommandQueue.dart';
import '../../graphics/direct3d12/ID3D12Fence.dart';

/// @nodoc
const IID_IDirect3DDevice9On12 = '{E7FDA234-B589-4049-940D-8878977531C8}';

/// {@category Interface}
/// {@category com}
class IDirect3DDevice9On12 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDirect3DDevice9On12(Pointer<COMObject> ptr) : super(ptr);

  int GetD3D12Device(
    Pointer<GUID> riid,
    Pointer<Pointer> ppvDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvDevice,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppvDevice,
      );

  int UnwrapUnderlyingResource(
    Pointer<COMObject> pResource,
    Pointer<COMObject> pCommandQueue,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvResource12,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<COMObject> pCommandQueue,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvResource12,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<COMObject> pCommandQueue,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvResource12,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pCommandQueue,
        riid,
        ppvResource12,
      );

  int ReturnUnderlyingResource(
    Pointer<COMObject> pResource,
    int NumSync,
    Pointer<Uint64> pSignalValues,
    Pointer<Pointer<COMObject>> ppFences,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Uint32 NumSync,
            Pointer<Uint64> pSignalValues,
            Pointer<Pointer<COMObject>> ppFences,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            int NumSync,
            Pointer<Uint64> pSignalValues,
            Pointer<Pointer<COMObject>> ppFences,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        NumSync,
        pSignalValues,
        ppFences,
      );
}
