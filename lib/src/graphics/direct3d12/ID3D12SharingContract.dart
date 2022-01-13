// ID3D12SharingContract.dart

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
import '../../graphics/direct3d12/ID3D12Resource.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d12/ID3D12Fence.dart';

/// @nodoc
const IID_ID3D12SharingContract = '{0ADF7D52-929C-4E61-ADDB-FFED30DE66EF}';

/// {@category Interface}
/// {@category com}
class ID3D12SharingContract extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ID3D12SharingContract(Pointer<COMObject> ptr) : super(ptr);

  void Present(
    Pointer<COMObject> pResource,
    int Subresource,
    int window,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pResource,
            Uint32 Subresource,
            IntPtr window,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pResource,
            int Subresource,
            int window,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        Subresource,
        window,
      );

  void SharedFenceSignal(
    Pointer<COMObject> pFence,
    int FenceValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pFence,
            Uint64 FenceValue,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pFence,
            int FenceValue,
          )>()(
        ptr.ref.lpVtbl,
        pFence,
        FenceValue,
      );

  void BeginCapturableWork(
    Pointer<GUID> guid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<GUID> guid,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<GUID> guid,
          )>()(
        ptr.ref.lpVtbl,
        guid,
      );

  void EndCapturableWork(
    Pointer<GUID> guid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<GUID> guid,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<GUID> guid,
          )>()(
        ptr.ref.lpVtbl,
        guid,
      );
}
