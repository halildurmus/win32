// ID3D12GraphicsCommandList.dart

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

import '../../graphics/direct3d12/ID3D12CommandList.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d12/ID3D12CommandAllocator.dart';
import '../../graphics/direct3d12/ID3D12PipelineState.dart';
import '../../graphics/direct3d12/ID3D12Resource.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/direct3d/structs.g.dart';
import '../../graphics/direct3d12/ID3D12GraphicsCommandList.dart';
import '../../graphics/direct3d12/ID3D12DescriptorHeap.dart';
import '../../graphics/direct3d12/ID3D12RootSignature.dart';
import '../../graphics/direct3d12/ID3D12QueryHeap.dart';
import '../../graphics/direct3d12/ID3D12CommandSignature.dart';

/// @nodoc
const IID_ID3D12GraphicsCommandList = '{5B160D0F-AC1B-4185-8BA8-B3AE42A5A455}';

/// {@category Interface}
/// {@category com}
class ID3D12GraphicsCommandList extends ID3D12CommandList {
  // vtable begins at 9, is 51 entries long.
  ID3D12GraphicsCommandList(Pointer<COMObject> ptr) : super(ptr);

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Reset(
    Pointer<COMObject> pAllocator,
    Pointer<COMObject> pInitialState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAllocator,
            Pointer<COMObject> pInitialState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAllocator,
            Pointer<COMObject> pInitialState,
          )>()(
        ptr.ref.lpVtbl,
        pAllocator,
        pInitialState,
      );

  void ClearState(
    Pointer<COMObject> pPipelineState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pPipelineState,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pPipelineState,
          )>()(
        ptr.ref.lpVtbl,
        pPipelineState,
      );

  void DrawInstanced(
    int VertexCountPerInstance,
    int InstanceCount,
    int StartVertexLocation,
    int StartInstanceLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 VertexCountPerInstance,
            Uint32 InstanceCount,
            Uint32 StartVertexLocation,
            Uint32 StartInstanceLocation,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int VertexCountPerInstance,
            int InstanceCount,
            int StartVertexLocation,
            int StartInstanceLocation,
          )>()(
        ptr.ref.lpVtbl,
        VertexCountPerInstance,
        InstanceCount,
        StartVertexLocation,
        StartInstanceLocation,
      );

  void DrawIndexedInstanced(
    int IndexCountPerInstance,
    int InstanceCount,
    int StartIndexLocation,
    int BaseVertexLocation,
    int StartInstanceLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 IndexCountPerInstance,
            Uint32 InstanceCount,
            Uint32 StartIndexLocation,
            Int32 BaseVertexLocation,
            Uint32 StartInstanceLocation,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int IndexCountPerInstance,
            int InstanceCount,
            int StartIndexLocation,
            int BaseVertexLocation,
            int StartInstanceLocation,
          )>()(
        ptr.ref.lpVtbl,
        IndexCountPerInstance,
        InstanceCount,
        StartIndexLocation,
        BaseVertexLocation,
        StartInstanceLocation,
      );

  void Dispatch(
    int ThreadGroupCountX,
    int ThreadGroupCountY,
    int ThreadGroupCountZ,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 ThreadGroupCountX,
            Uint32 ThreadGroupCountY,
            Uint32 ThreadGroupCountZ,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int ThreadGroupCountX,
            int ThreadGroupCountY,
            int ThreadGroupCountZ,
          )>()(
        ptr.ref.lpVtbl,
        ThreadGroupCountX,
        ThreadGroupCountY,
        ThreadGroupCountZ,
      );

  void CopyBufferRegion(
    Pointer<COMObject> pDstBuffer,
    int DstOffset,
    Pointer<COMObject> pSrcBuffer,
    int SrcOffset,
    int NumBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDstBuffer,
            Uint64 DstOffset,
            Pointer<COMObject> pSrcBuffer,
            Uint64 SrcOffset,
            Uint64 NumBytes,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDstBuffer,
            int DstOffset,
            Pointer<COMObject> pSrcBuffer,
            int SrcOffset,
            int NumBytes,
          )>()(
        ptr.ref.lpVtbl,
        pDstBuffer,
        DstOffset,
        pSrcBuffer,
        SrcOffset,
        NumBytes,
      );

  void CopyTextureRegion(
    Pointer<D3D12_TEXTURE_COPY_LOCATION> pDst,
    int DstX,
    int DstY,
    int DstZ,
    Pointer<D3D12_TEXTURE_COPY_LOCATION> pSrc,
    Pointer<D3D12_BOX> pSrcBox,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D12_TEXTURE_COPY_LOCATION> pDst,
            Uint32 DstX,
            Uint32 DstY,
            Uint32 DstZ,
            Pointer<D3D12_TEXTURE_COPY_LOCATION> pSrc,
            Pointer<D3D12_BOX> pSrcBox,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D12_TEXTURE_COPY_LOCATION> pDst,
            int DstX,
            int DstY,
            int DstZ,
            Pointer<D3D12_TEXTURE_COPY_LOCATION> pSrc,
            Pointer<D3D12_BOX> pSrcBox,
          )>()(
        ptr.ref.lpVtbl,
        pDst,
        DstX,
        DstY,
        DstZ,
        pSrc,
        pSrcBox,
      );

  void CopyResource(
    Pointer<COMObject> pDstResource,
    Pointer<COMObject> pSrcResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDstResource,
            Pointer<COMObject> pSrcResource,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDstResource,
            Pointer<COMObject> pSrcResource,
          )>()(
        ptr.ref.lpVtbl,
        pDstResource,
        pSrcResource,
      );

  void CopyTiles(
    Pointer<COMObject> pTiledResource,
    Pointer<D3D12_TILED_RESOURCE_COORDINATE> pTileRegionStartCoordinate,
    Pointer<D3D12_TILE_REGION_SIZE> pTileRegionSize,
    Pointer<COMObject> pBuffer,
    int BufferStartOffsetInBytes,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pTiledResource,
            Pointer<D3D12_TILED_RESOURCE_COORDINATE> pTileRegionStartCoordinate,
            Pointer<D3D12_TILE_REGION_SIZE> pTileRegionSize,
            Pointer<COMObject> pBuffer,
            Uint64 BufferStartOffsetInBytes,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pTiledResource,
            Pointer<D3D12_TILED_RESOURCE_COORDINATE> pTileRegionStartCoordinate,
            Pointer<D3D12_TILE_REGION_SIZE> pTileRegionSize,
            Pointer<COMObject> pBuffer,
            int BufferStartOffsetInBytes,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        pTiledResource,
        pTileRegionStartCoordinate,
        pTileRegionSize,
        pBuffer,
        BufferStartOffsetInBytes,
        Flags,
      );

  void ResolveSubresource(
    Pointer<COMObject> pDstResource,
    int DstSubresource,
    Pointer<COMObject> pSrcResource,
    int SrcSubresource,
    int Format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDstResource,
            Uint32 DstSubresource,
            Pointer<COMObject> pSrcResource,
            Uint32 SrcSubresource,
            Uint32 Format,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDstResource,
            int DstSubresource,
            Pointer<COMObject> pSrcResource,
            int SrcSubresource,
            int Format,
          )>()(
        ptr.ref.lpVtbl,
        pDstResource,
        DstSubresource,
        pSrcResource,
        SrcSubresource,
        Format,
      );

  void IASetPrimitiveTopology(
    int PrimitiveTopology,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 PrimitiveTopology,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int PrimitiveTopology,
          )>()(
        ptr.ref.lpVtbl,
        PrimitiveTopology,
      );

  void RSSetViewports(
    int NumViewports,
    Pointer<D3D12_VIEWPORT> pViewports,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumViewports,
            Pointer<D3D12_VIEWPORT> pViewports,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumViewports,
            Pointer<D3D12_VIEWPORT> pViewports,
          )>()(
        ptr.ref.lpVtbl,
        NumViewports,
        pViewports,
      );

  void RSSetScissorRects(
    int NumRects,
    Pointer<RECT> pRects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumRects,
            Pointer<RECT> pRects,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumRects,
            Pointer<RECT> pRects,
          )>()(
        ptr.ref.lpVtbl,
        NumRects,
        pRects,
      );

  void OMSetBlendFactor(
    Pointer<Float> BlendFactor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Float> BlendFactor,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Float> BlendFactor,
          )>()(
        ptr.ref.lpVtbl,
        BlendFactor,
      );

  void OMSetStencilRef(
    int StencilRef,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StencilRef,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StencilRef,
          )>()(
        ptr.ref.lpVtbl,
        StencilRef,
      );

  void SetPipelineState(
    Pointer<COMObject> pPipelineState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pPipelineState,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pPipelineState,
          )>()(
        ptr.ref.lpVtbl,
        pPipelineState,
      );

  void ResourceBarrier(
    int NumBarriers,
    Pointer<D3D12_RESOURCE_BARRIER> pBarriers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumBarriers,
            Pointer<D3D12_RESOURCE_BARRIER> pBarriers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumBarriers,
            Pointer<D3D12_RESOURCE_BARRIER> pBarriers,
          )>()(
        ptr.ref.lpVtbl,
        NumBarriers,
        pBarriers,
      );

  void ExecuteBundle(
    Pointer<COMObject> pCommandList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pCommandList,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pCommandList,
          )>()(
        ptr.ref.lpVtbl,
        pCommandList,
      );

  void SetDescriptorHeaps(
    int NumDescriptorHeaps,
    Pointer<Pointer<COMObject>> ppDescriptorHeaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumDescriptorHeaps,
            Pointer<Pointer<COMObject>> ppDescriptorHeaps,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumDescriptorHeaps,
            Pointer<Pointer<COMObject>> ppDescriptorHeaps,
          )>()(
        ptr.ref.lpVtbl,
        NumDescriptorHeaps,
        ppDescriptorHeaps,
      );

  void SetComputeRootSignature(
    Pointer<COMObject> pRootSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pRootSignature,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pRootSignature,
          )>()(
        ptr.ref.lpVtbl,
        pRootSignature,
      );

  void SetGraphicsRootSignature(
    Pointer<COMObject> pRootSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pRootSignature,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pRootSignature,
          )>()(
        ptr.ref.lpVtbl,
        pRootSignature,
      );

  void SetComputeRootDescriptorTable(
    int RootParameterIndex,
    D3D12_GPU_DESCRIPTOR_HANDLE BaseDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 RootParameterIndex,
            D3D12_GPU_DESCRIPTOR_HANDLE BaseDescriptor,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int RootParameterIndex,
            D3D12_GPU_DESCRIPTOR_HANDLE BaseDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        RootParameterIndex,
        BaseDescriptor,
      );

  void SetGraphicsRootDescriptorTable(
    int RootParameterIndex,
    D3D12_GPU_DESCRIPTOR_HANDLE BaseDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 RootParameterIndex,
            D3D12_GPU_DESCRIPTOR_HANDLE BaseDescriptor,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int RootParameterIndex,
            D3D12_GPU_DESCRIPTOR_HANDLE BaseDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        RootParameterIndex,
        BaseDescriptor,
      );

  void SetComputeRoot32BitConstant(
    int RootParameterIndex,
    int SrcData,
    int DestOffsetIn32BitValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 RootParameterIndex,
            Uint32 SrcData,
            Uint32 DestOffsetIn32BitValues,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int RootParameterIndex,
            int SrcData,
            int DestOffsetIn32BitValues,
          )>()(
        ptr.ref.lpVtbl,
        RootParameterIndex,
        SrcData,
        DestOffsetIn32BitValues,
      );

  void SetGraphicsRoot32BitConstant(
    int RootParameterIndex,
    int SrcData,
    int DestOffsetIn32BitValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 RootParameterIndex,
            Uint32 SrcData,
            Uint32 DestOffsetIn32BitValues,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int RootParameterIndex,
            int SrcData,
            int DestOffsetIn32BitValues,
          )>()(
        ptr.ref.lpVtbl,
        RootParameterIndex,
        SrcData,
        DestOffsetIn32BitValues,
      );

  void SetComputeRoot32BitConstants(
    int RootParameterIndex,
    int Num32BitValuesToSet,
    Pointer pSrcData,
    int DestOffsetIn32BitValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 RootParameterIndex,
            Uint32 Num32BitValuesToSet,
            Pointer pSrcData,
            Uint32 DestOffsetIn32BitValues,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int RootParameterIndex,
            int Num32BitValuesToSet,
            Pointer pSrcData,
            int DestOffsetIn32BitValues,
          )>()(
        ptr.ref.lpVtbl,
        RootParameterIndex,
        Num32BitValuesToSet,
        pSrcData,
        DestOffsetIn32BitValues,
      );

  void SetGraphicsRoot32BitConstants(
    int RootParameterIndex,
    int Num32BitValuesToSet,
    Pointer pSrcData,
    int DestOffsetIn32BitValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 RootParameterIndex,
            Uint32 Num32BitValuesToSet,
            Pointer pSrcData,
            Uint32 DestOffsetIn32BitValues,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int RootParameterIndex,
            int Num32BitValuesToSet,
            Pointer pSrcData,
            int DestOffsetIn32BitValues,
          )>()(
        ptr.ref.lpVtbl,
        RootParameterIndex,
        Num32BitValuesToSet,
        pSrcData,
        DestOffsetIn32BitValues,
      );

  void SetComputeRootConstantBufferView(
    int RootParameterIndex,
    int BufferLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 RootParameterIndex,
            Uint64 BufferLocation,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int RootParameterIndex,
            int BufferLocation,
          )>()(
        ptr.ref.lpVtbl,
        RootParameterIndex,
        BufferLocation,
      );

  void SetGraphicsRootConstantBufferView(
    int RootParameterIndex,
    int BufferLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 RootParameterIndex,
            Uint64 BufferLocation,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int RootParameterIndex,
            int BufferLocation,
          )>()(
        ptr.ref.lpVtbl,
        RootParameterIndex,
        BufferLocation,
      );

  void SetComputeRootShaderResourceView(
    int RootParameterIndex,
    int BufferLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 RootParameterIndex,
            Uint64 BufferLocation,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int RootParameterIndex,
            int BufferLocation,
          )>()(
        ptr.ref.lpVtbl,
        RootParameterIndex,
        BufferLocation,
      );

  void SetGraphicsRootShaderResourceView(
    int RootParameterIndex,
    int BufferLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 RootParameterIndex,
            Uint64 BufferLocation,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int RootParameterIndex,
            int BufferLocation,
          )>()(
        ptr.ref.lpVtbl,
        RootParameterIndex,
        BufferLocation,
      );

  void SetComputeRootUnorderedAccessView(
    int RootParameterIndex,
    int BufferLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 RootParameterIndex,
            Uint64 BufferLocation,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int RootParameterIndex,
            int BufferLocation,
          )>()(
        ptr.ref.lpVtbl,
        RootParameterIndex,
        BufferLocation,
      );

  void SetGraphicsRootUnorderedAccessView(
    int RootParameterIndex,
    int BufferLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 RootParameterIndex,
            Uint64 BufferLocation,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int RootParameterIndex,
            int BufferLocation,
          )>()(
        ptr.ref.lpVtbl,
        RootParameterIndex,
        BufferLocation,
      );

  void IASetIndexBuffer(
    Pointer<D3D12_INDEX_BUFFER_VIE> pView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D12_INDEX_BUFFER_VIE> pView,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D12_INDEX_BUFFER_VIE> pView,
          )>()(
        ptr.ref.lpVtbl,
        pView,
      );

  void IASetVertexBuffers(
    int StartSlot,
    int NumViews,
    Pointer<D3D12_VERTEX_BUFFER_VIE> pViews,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumViews,
            Pointer<D3D12_VERTEX_BUFFER_VIE> pViews,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumViews,
            Pointer<D3D12_VERTEX_BUFFER_VIE> pViews,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumViews,
        pViews,
      );

  void SOSetTargets(
    int StartSlot,
    int NumViews,
    Pointer<D3D12_STREAM_OUTPUT_BUFFER_VIE> pViews,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumViews,
            Pointer<D3D12_STREAM_OUTPUT_BUFFER_VIE> pViews,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumViews,
            Pointer<D3D12_STREAM_OUTPUT_BUFFER_VIE> pViews,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumViews,
        pViews,
      );

  void OMSetRenderTargets(
    int NumRenderTargetDescriptors,
    Pointer<D3D12_CPU_DESCRIPTOR_HANDLE> pRenderTargetDescriptors,
    int RTsSingleHandleToDescriptorRange,
    Pointer<D3D12_CPU_DESCRIPTOR_HANDLE> pDepthStencilDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumRenderTargetDescriptors,
            Pointer<D3D12_CPU_DESCRIPTOR_HANDLE> pRenderTargetDescriptors,
            Int32 RTsSingleHandleToDescriptorRange,
            Pointer<D3D12_CPU_DESCRIPTOR_HANDLE> pDepthStencilDescriptor,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumRenderTargetDescriptors,
            Pointer<D3D12_CPU_DESCRIPTOR_HANDLE> pRenderTargetDescriptors,
            int RTsSingleHandleToDescriptorRange,
            Pointer<D3D12_CPU_DESCRIPTOR_HANDLE> pDepthStencilDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        NumRenderTargetDescriptors,
        pRenderTargetDescriptors,
        RTsSingleHandleToDescriptorRange,
        pDepthStencilDescriptor,
      );

  void ClearDepthStencilView(
    D3D12_CPU_DESCRIPTOR_HANDLE DepthStencilView,
    int ClearFlags,
    double Depth,
    int Stencil,
    int NumRects,
    Pointer<RECT> pRects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            D3D12_CPU_DESCRIPTOR_HANDLE DepthStencilView,
            Uint32 ClearFlags,
            Float Depth,
            Uint8 Stencil,
            Uint32 NumRects,
            Pointer<RECT> pRects,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            D3D12_CPU_DESCRIPTOR_HANDLE DepthStencilView,
            int ClearFlags,
            double Depth,
            int Stencil,
            int NumRects,
            Pointer<RECT> pRects,
          )>()(
        ptr.ref.lpVtbl,
        DepthStencilView,
        ClearFlags,
        Depth,
        Stencil,
        NumRects,
        pRects,
      );

  void ClearRenderTargetView(
    D3D12_CPU_DESCRIPTOR_HANDLE RenderTargetView,
    Pointer<Float> ColorRGBA,
    int NumRects,
    Pointer<RECT> pRects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            D3D12_CPU_DESCRIPTOR_HANDLE RenderTargetView,
            Pointer<Float> ColorRGBA,
            Uint32 NumRects,
            Pointer<RECT> pRects,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            D3D12_CPU_DESCRIPTOR_HANDLE RenderTargetView,
            Pointer<Float> ColorRGBA,
            int NumRects,
            Pointer<RECT> pRects,
          )>()(
        ptr.ref.lpVtbl,
        RenderTargetView,
        ColorRGBA,
        NumRects,
        pRects,
      );

  void ClearUnorderedAccessViewUint(
    D3D12_GPU_DESCRIPTOR_HANDLE ViewGPUHandleInCurrentHeap,
    D3D12_CPU_DESCRIPTOR_HANDLE ViewCPUHandle,
    Pointer<COMObject> pResource,
    Pointer<Uint32> Values,
    int NumRects,
    Pointer<RECT> pRects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            D3D12_GPU_DESCRIPTOR_HANDLE ViewGPUHandleInCurrentHeap,
            D3D12_CPU_DESCRIPTOR_HANDLE ViewCPUHandle,
            Pointer<COMObject> pResource,
            Pointer<Uint32> Values,
            Uint32 NumRects,
            Pointer<RECT> pRects,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            D3D12_GPU_DESCRIPTOR_HANDLE ViewGPUHandleInCurrentHeap,
            D3D12_CPU_DESCRIPTOR_HANDLE ViewCPUHandle,
            Pointer<COMObject> pResource,
            Pointer<Uint32> Values,
            int NumRects,
            Pointer<RECT> pRects,
          )>()(
        ptr.ref.lpVtbl,
        ViewGPUHandleInCurrentHeap,
        ViewCPUHandle,
        pResource,
        Values,
        NumRects,
        pRects,
      );

  void ClearUnorderedAccessViewFloat(
    D3D12_GPU_DESCRIPTOR_HANDLE ViewGPUHandleInCurrentHeap,
    D3D12_CPU_DESCRIPTOR_HANDLE ViewCPUHandle,
    Pointer<COMObject> pResource,
    Pointer<Float> Values,
    int NumRects,
    Pointer<RECT> pRects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            D3D12_GPU_DESCRIPTOR_HANDLE ViewGPUHandleInCurrentHeap,
            D3D12_CPU_DESCRIPTOR_HANDLE ViewCPUHandle,
            Pointer<COMObject> pResource,
            Pointer<Float> Values,
            Uint32 NumRects,
            Pointer<RECT> pRects,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            D3D12_GPU_DESCRIPTOR_HANDLE ViewGPUHandleInCurrentHeap,
            D3D12_CPU_DESCRIPTOR_HANDLE ViewCPUHandle,
            Pointer<COMObject> pResource,
            Pointer<Float> Values,
            int NumRects,
            Pointer<RECT> pRects,
          )>()(
        ptr.ref.lpVtbl,
        ViewGPUHandleInCurrentHeap,
        ViewCPUHandle,
        pResource,
        Values,
        NumRects,
        pRects,
      );

  void DiscardResource(
    Pointer<COMObject> pResource,
    Pointer<D3D12_DISCARD_REGION> pRegion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D12_DISCARD_REGION> pRegion,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D12_DISCARD_REGION> pRegion,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pRegion,
      );

  void BeginQuery(
    Pointer<COMObject> pQueryHeap,
    int Type,
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pQueryHeap,
            Int32 Type,
            Uint32 Index,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pQueryHeap,
            int Type,
            int Index,
          )>()(
        ptr.ref.lpVtbl,
        pQueryHeap,
        Type,
        Index,
      );

  void EndQuery(
    Pointer<COMObject> pQueryHeap,
    int Type,
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pQueryHeap,
            Int32 Type,
            Uint32 Index,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pQueryHeap,
            int Type,
            int Index,
          )>()(
        ptr.ref.lpVtbl,
        pQueryHeap,
        Type,
        Index,
      );

  void ResolveQueryData(
    Pointer<COMObject> pQueryHeap,
    int Type,
    int StartIndex,
    int NumQueries,
    Pointer<COMObject> pDestinationBuffer,
    int AlignedDestinationBufferOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pQueryHeap,
            Int32 Type,
            Uint32 StartIndex,
            Uint32 NumQueries,
            Pointer<COMObject> pDestinationBuffer,
            Uint64 AlignedDestinationBufferOffset,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pQueryHeap,
            int Type,
            int StartIndex,
            int NumQueries,
            Pointer<COMObject> pDestinationBuffer,
            int AlignedDestinationBufferOffset,
          )>()(
        ptr.ref.lpVtbl,
        pQueryHeap,
        Type,
        StartIndex,
        NumQueries,
        pDestinationBuffer,
        AlignedDestinationBufferOffset,
      );

  void SetPredication(
    Pointer<COMObject> pBuffer,
    int AlignedBufferOffset,
    int Operation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pBuffer,
            Uint64 AlignedBufferOffset,
            Int32 Operation,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pBuffer,
            int AlignedBufferOffset,
            int Operation,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
        AlignedBufferOffset,
        Operation,
      );

  void SetMarker(
    int Metadata,
    Pointer pData,
    int Size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 Metadata,
            Pointer pData,
            Uint32 Size,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Metadata,
            Pointer pData,
            int Size,
          )>()(
        ptr.ref.lpVtbl,
        Metadata,
        pData,
        Size,
      );

  void BeginEvent(
    int Metadata,
    Pointer pData,
    int Size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 Metadata,
            Pointer pData,
            Uint32 Size,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Metadata,
            Pointer pData,
            int Size,
          )>()(
        ptr.ref.lpVtbl,
        Metadata,
        pData,
        Size,
      );

  void EndEvent() => ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void ExecuteIndirect(
    Pointer<COMObject> pCommandSignature,
    int MaxCommandCount,
    Pointer<COMObject> pArgumentBuffer,
    int ArgumentBufferOffset,
    Pointer<COMObject> pCountBuffer,
    int CountBufferOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pCommandSignature,
            Uint32 MaxCommandCount,
            Pointer<COMObject> pArgumentBuffer,
            Uint64 ArgumentBufferOffset,
            Pointer<COMObject> pCountBuffer,
            Uint64 CountBufferOffset,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pCommandSignature,
            int MaxCommandCount,
            Pointer<COMObject> pArgumentBuffer,
            int ArgumentBufferOffset,
            Pointer<COMObject> pCountBuffer,
            int CountBufferOffset,
          )>()(
        ptr.ref.lpVtbl,
        pCommandSignature,
        MaxCommandCount,
        pArgumentBuffer,
        ArgumentBufferOffset,
        pCountBuffer,
        CountBufferOffset,
      );
}
