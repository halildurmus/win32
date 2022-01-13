// ID3D12GraphicsCommandList1.dart

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

import '../../graphics/direct3d12/ID3D12GraphicsCommandList.dart';
import '../../graphics/direct3d12/ID3D12Resource.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/common/structs.g.dart';

/// @nodoc
const IID_ID3D12GraphicsCommandList1 = '{553103FB-1FE7-4557-BB38-946D7D0E7CA7}';

/// {@category Interface}
/// {@category com}
class ID3D12GraphicsCommandList1 extends ID3D12GraphicsCommandList {
  // vtable begins at 60, is 6 entries long.
  ID3D12GraphicsCommandList1(Pointer<COMObject> ptr) : super(ptr);

  void AtomicCopyBufferUINT(
    Pointer<COMObject> pDstBuffer,
    int DstOffset,
    Pointer<COMObject> pSrcBuffer,
    int SrcOffset,
    int Dependencies,
    Pointer<Pointer<COMObject>> ppDependentResources,
    Pointer<D3D12_SUBRESOURCE_RANGE_UINT64> pDependentSubresourceRanges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDstBuffer,
            Uint64 DstOffset,
            Pointer<COMObject> pSrcBuffer,
            Uint64 SrcOffset,
            Uint32 Dependencies,
            Pointer<Pointer<COMObject>> ppDependentResources,
            Pointer<D3D12_SUBRESOURCE_RANGE_UINT64> pDependentSubresourceRanges,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDstBuffer,
            int DstOffset,
            Pointer<COMObject> pSrcBuffer,
            int SrcOffset,
            int Dependencies,
            Pointer<Pointer<COMObject>> ppDependentResources,
            Pointer<D3D12_SUBRESOURCE_RANGE_UINT64> pDependentSubresourceRanges,
          )>()(
        ptr.ref.lpVtbl,
        pDstBuffer,
        DstOffset,
        pSrcBuffer,
        SrcOffset,
        Dependencies,
        ppDependentResources,
        pDependentSubresourceRanges,
      );

  void AtomicCopyBufferUINT64(
    Pointer<COMObject> pDstBuffer,
    int DstOffset,
    Pointer<COMObject> pSrcBuffer,
    int SrcOffset,
    int Dependencies,
    Pointer<Pointer<COMObject>> ppDependentResources,
    Pointer<D3D12_SUBRESOURCE_RANGE_UINT64> pDependentSubresourceRanges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDstBuffer,
            Uint64 DstOffset,
            Pointer<COMObject> pSrcBuffer,
            Uint64 SrcOffset,
            Uint32 Dependencies,
            Pointer<Pointer<COMObject>> ppDependentResources,
            Pointer<D3D12_SUBRESOURCE_RANGE_UINT64> pDependentSubresourceRanges,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDstBuffer,
            int DstOffset,
            Pointer<COMObject> pSrcBuffer,
            int SrcOffset,
            int Dependencies,
            Pointer<Pointer<COMObject>> ppDependentResources,
            Pointer<D3D12_SUBRESOURCE_RANGE_UINT64> pDependentSubresourceRanges,
          )>()(
        ptr.ref.lpVtbl,
        pDstBuffer,
        DstOffset,
        pSrcBuffer,
        SrcOffset,
        Dependencies,
        ppDependentResources,
        pDependentSubresourceRanges,
      );

  void OMSetDepthBounds(
    double Min,
    double Max,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Float Min,
            Float Max,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            double Min,
            double Max,
          )>()(
        ptr.ref.lpVtbl,
        Min,
        Max,
      );

  void SetSamplePositions(
    int NumSamplesPerPixel,
    int NumPixels,
    Pointer<D3D12_SAMPLE_POSITION> pSamplePositions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumSamplesPerPixel,
            Uint32 NumPixels,
            Pointer<D3D12_SAMPLE_POSITION> pSamplePositions,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumSamplesPerPixel,
            int NumPixels,
            Pointer<D3D12_SAMPLE_POSITION> pSamplePositions,
          )>()(
        ptr.ref.lpVtbl,
        NumSamplesPerPixel,
        NumPixels,
        pSamplePositions,
      );

  void ResolveSubresourceRegion(
    Pointer<COMObject> pDstResource,
    int DstSubresource,
    int DstX,
    int DstY,
    Pointer<COMObject> pSrcResource,
    int SrcSubresource,
    Pointer<RECT> pSrcRect,
    int Format,
    int ResolveMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDstResource,
            Uint32 DstSubresource,
            Uint32 DstX,
            Uint32 DstY,
            Pointer<COMObject> pSrcResource,
            Uint32 SrcSubresource,
            Pointer<RECT> pSrcRect,
            Uint32 Format,
            Int32 ResolveMode,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDstResource,
            int DstSubresource,
            int DstX,
            int DstY,
            Pointer<COMObject> pSrcResource,
            int SrcSubresource,
            Pointer<RECT> pSrcRect,
            int Format,
            int ResolveMode,
          )>()(
        ptr.ref.lpVtbl,
        pDstResource,
        DstSubresource,
        DstX,
        DstY,
        pSrcResource,
        SrcSubresource,
        pSrcRect,
        Format,
        ResolveMode,
      );

  void SetViewInstanceMask(
    int Mask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 Mask,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Mask,
          )>()(
        ptr.ref.lpVtbl,
        Mask,
      );
}
