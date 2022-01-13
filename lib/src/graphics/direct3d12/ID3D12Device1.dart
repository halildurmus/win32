// ID3D12Device1.dart

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

import '../../graphics/direct3d12/ID3D12Device.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d12/ID3D12Fence.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../graphics/direct3d12/ID3D12Pageable.dart';

/// @nodoc
const IID_ID3D12Device1 = '{77ACCE80-638E-4E65-8895-C1F23386863E}';

/// {@category Interface}
/// {@category com}
class ID3D12Device1 extends ID3D12Device {
  // vtable begins at 44, is 3 entries long.
  ID3D12Device1(Pointer<COMObject> ptr) : super(ptr);

  int CreatePipelineLibrary(
    Pointer pLibraryBlob,
    int BlobLength,
    Pointer<GUID> riid,
    Pointer<Pointer> ppPipelineLibrary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pLibraryBlob,
            IntPtr BlobLength,
            Pointer<GUID> riid,
            Pointer<Pointer> ppPipelineLibrary,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pLibraryBlob,
            int BlobLength,
            Pointer<GUID> riid,
            Pointer<Pointer> ppPipelineLibrary,
          )>()(
        ptr.ref.lpVtbl,
        pLibraryBlob,
        BlobLength,
        riid,
        ppPipelineLibrary,
      );

  int SetEventOnMultipleFenceCompletion(
    Pointer<Pointer<COMObject>> ppFences,
    Pointer<Uint64> pFenceValues,
    int NumFences,
    int Flags,
    int hEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppFences,
            Pointer<Uint64> pFenceValues,
            Uint32 NumFences,
            Uint32 Flags,
            IntPtr hEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppFences,
            Pointer<Uint64> pFenceValues,
            int NumFences,
            int Flags,
            int hEvent,
          )>()(
        ptr.ref.lpVtbl,
        ppFences,
        pFenceValues,
        NumFences,
        Flags,
        hEvent,
      );

  int SetResidencyPriority(
    int NumObjects,
    Pointer<Pointer<COMObject>> ppObjects,
    Pointer<Int32> pPriorities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NumObjects,
            Pointer<Pointer<COMObject>> ppObjects,
            Pointer<Int32> pPriorities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NumObjects,
            Pointer<Pointer<COMObject>> ppObjects,
            Pointer<Int32> pPriorities,
          )>()(
        ptr.ref.lpVtbl,
        NumObjects,
        ppObjects,
        pPriorities,
      );
}
