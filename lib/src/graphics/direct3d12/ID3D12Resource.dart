// ID3D12Resource.dart

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

import '../../graphics/direct3d12/ID3D12Pageable.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12Resource = '{696442BE-A72E-4059-BC79-5B5C98040FAD}';

/// {@category Interface}
/// {@category com}
class ID3D12Resource extends ID3D12Pageable {
  // vtable begins at 8, is 7 entries long.
  ID3D12Resource(Pointer<COMObject> ptr) : super(ptr);

  int $Map(
    int Subresource,
    Pointer<D3D12_RANGE> pReadRange,
    Pointer<Pointer> ppData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Subresource,
            Pointer<D3D12_RANGE> pReadRange,
            Pointer<Pointer> ppData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Subresource,
            Pointer<D3D12_RANGE> pReadRange,
            Pointer<Pointer> ppData,
          )>()(
        ptr.ref.lpVtbl,
        Subresource,
        pReadRange,
        ppData,
      );

  void Unmap(
    int Subresource,
    Pointer<D3D12_RANGE> pWrittenRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 Subresource,
            Pointer<D3D12_RANGE> pWrittenRange,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Subresource,
            Pointer<D3D12_RANGE> pWrittenRange,
          )>()(
        ptr.ref.lpVtbl,
        Subresource,
        pWrittenRange,
      );

  D3D12_RESOURCE_DESC GetDesc() => ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      D3D12_RESOURCE_DESC Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D3D12_RESOURCE_DESC Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetGPUVirtualAddress() => ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int WriteToSubresource(
    int DstSubresource,
    Pointer<D3D12_BOX> pDstBox,
    Pointer pSrcData,
    int SrcRowPitch,
    int SrcDepthPitch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 DstSubresource,
            Pointer<D3D12_BOX> pDstBox,
            Pointer pSrcData,
            Uint32 SrcRowPitch,
            Uint32 SrcDepthPitch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DstSubresource,
            Pointer<D3D12_BOX> pDstBox,
            Pointer pSrcData,
            int SrcRowPitch,
            int SrcDepthPitch,
          )>()(
        ptr.ref.lpVtbl,
        DstSubresource,
        pDstBox,
        pSrcData,
        SrcRowPitch,
        SrcDepthPitch,
      );

  int ReadFromSubresource(
    Pointer pDstData,
    int DstRowPitch,
    int DstDepthPitch,
    int SrcSubresource,
    Pointer<D3D12_BOX> pSrcBox,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pDstData,
            Uint32 DstRowPitch,
            Uint32 DstDepthPitch,
            Uint32 SrcSubresource,
            Pointer<D3D12_BOX> pSrcBox,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pDstData,
            int DstRowPitch,
            int DstDepthPitch,
            int SrcSubresource,
            Pointer<D3D12_BOX> pSrcBox,
          )>()(
        ptr.ref.lpVtbl,
        pDstData,
        DstRowPitch,
        DstDepthPitch,
        SrcSubresource,
        pSrcBox,
      );

  int GetHeapProperties(
    Pointer<D3D12_HEAP_PROPERTIES> pHeapProperties,
    Pointer<Uint32> pHeapFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_HEAP_PROPERTIES> pHeapProperties,
            Pointer<Uint32> pHeapFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_HEAP_PROPERTIES> pHeapProperties,
            Pointer<Uint32> pHeapFlags,
          )>()(
        ptr.ref.lpVtbl,
        pHeapProperties,
        pHeapFlags,
      );
}
