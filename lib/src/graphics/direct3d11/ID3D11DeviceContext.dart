// ID3D11DeviceContext.dart

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

import '../../graphics/direct3d11/ID3D11DeviceChild.dart';
import '../../graphics/direct3d11/ID3D11Buffer.dart';
import '../../graphics/direct3d11/ID3D11ShaderResourceView.dart';
import '../../graphics/direct3d11/ID3D11PixelShader.dart';
import '../../graphics/direct3d11/ID3D11ClassInstance.dart';
import '../../graphics/direct3d11/ID3D11SamplerState.dart';
import '../../graphics/direct3d11/ID3D11VertexShader.dart';
import '../../graphics/direct3d11/ID3D11Resource.dart';
import '../../graphics/direct3d11/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d11/ID3D11InputLayout.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/direct3d11/ID3D11GeometryShader.dart';
import '../../graphics/direct3d/structs.g.dart';
import '../../graphics/direct3d11/ID3D11Asynchronous.dart';
import '../../graphics/direct3d11/ID3D11Predicate.dart';
import '../../graphics/direct3d11/ID3D11RenderTargetView.dart';
import '../../graphics/direct3d11/ID3D11DepthStencilView.dart';
import '../../graphics/direct3d11/ID3D11UnorderedAccessView.dart';
import '../../graphics/direct3d11/ID3D11BlendState.dart';
import '../../graphics/direct3d11/ID3D11DepthStencilState.dart';
import '../../graphics/direct3d11/ID3D11RasterizerState.dart';
import '../../graphics/direct3d11/ID3D11CommandList.dart';
import '../../graphics/direct3d11/ID3D11HullShader.dart';
import '../../graphics/direct3d11/ID3D11DomainShader.dart';
import '../../graphics/direct3d11/ID3D11ComputeShader.dart';

/// @nodoc
const IID_ID3D11DeviceContext = '{C0BFA96C-E089-44FB-8EAF-26F8796190DA}';

/// {@category Interface}
/// {@category com}
class ID3D11DeviceContext extends ID3D11DeviceChild {
  // vtable begins at 7, is 108 entries long.
  ID3D11DeviceContext(Pointer<COMObject> ptr) : super(ptr);

  void VSSetConstantBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
      );

  void PSSetShaderResources(
    int StartSlot,
    int NumViews,
    Pointer<Pointer<COMObject>> ppShaderResourceViews,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumViews,
        ppShaderResourceViews,
      );

  void PSSetShader(
    Pointer<COMObject> pPixelShader,
    Pointer<Pointer<COMObject>> ppClassInstances,
    int NumClassInstances,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pPixelShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Uint32 NumClassInstances,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pPixelShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            int NumClassInstances,
          )>()(
        ptr.ref.lpVtbl,
        pPixelShader,
        ppClassInstances,
        NumClassInstances,
      );

  void PSSetSamplers(
    int StartSlot,
    int NumSamplers,
    Pointer<Pointer<COMObject>> ppSamplers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumSamplers,
        ppSamplers,
      );

  void VSSetShader(
    Pointer<COMObject> pVertexShader,
    Pointer<Pointer<COMObject>> ppClassInstances,
    int NumClassInstances,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVertexShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Uint32 NumClassInstances,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVertexShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            int NumClassInstances,
          )>()(
        ptr.ref.lpVtbl,
        pVertexShader,
        ppClassInstances,
        NumClassInstances,
      );

  void DrawIndexed(
    int IndexCount,
    int StartIndexLocation,
    int BaseVertexLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 IndexCount,
            Uint32 StartIndexLocation,
            Int32 BaseVertexLocation,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int IndexCount,
            int StartIndexLocation,
            int BaseVertexLocation,
          )>()(
        ptr.ref.lpVtbl,
        IndexCount,
        StartIndexLocation,
        BaseVertexLocation,
      );

  void Draw(
    int VertexCount,
    int StartVertexLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 VertexCount,
            Uint32 StartVertexLocation,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int VertexCount,
            int StartVertexLocation,
          )>()(
        ptr.ref.lpVtbl,
        VertexCount,
        StartVertexLocation,
      );

  int $Map(
    Pointer<COMObject> pResource,
    int Subresource,
    int MapType,
    int MapFlags,
    Pointer<D3D11_MAPPED_SUBRESOURCE> pMappedResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Uint32 Subresource,
            Int32 MapType,
            Uint32 MapFlags,
            Pointer<D3D11_MAPPED_SUBRESOURCE> pMappedResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            int Subresource,
            int MapType,
            int MapFlags,
            Pointer<D3D11_MAPPED_SUBRESOURCE> pMappedResource,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        Subresource,
        MapType,
        MapFlags,
        pMappedResource,
      );

  void Unmap(
    Pointer<COMObject> pResource,
    int Subresource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pResource,
            Uint32 Subresource,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pResource,
            int Subresource,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        Subresource,
      );

  void PSSetConstantBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
      );

  void IASetInputLayout(
    Pointer<COMObject> pInputLayout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pInputLayout,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pInputLayout,
          )>()(
        ptr.ref.lpVtbl,
        pInputLayout,
      );

  void IASetVertexBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppVertexBuffers,
    Pointer<Uint32> pStrides,
    Pointer<Uint32> pOffsets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppVertexBuffers,
            Pointer<Uint32> pStrides,
            Pointer<Uint32> pOffsets,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppVertexBuffers,
            Pointer<Uint32> pStrides,
            Pointer<Uint32> pOffsets,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppVertexBuffers,
        pStrides,
        pOffsets,
      );

  void IASetIndexBuffer(
    Pointer<COMObject> pIndexBuffer,
    int Format,
    int Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pIndexBuffer,
            Uint32 Format,
            Uint32 Offset,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pIndexBuffer,
            int Format,
            int Offset,
          )>()(
        ptr.ref.lpVtbl,
        pIndexBuffer,
        Format,
        Offset,
      );

  void DrawIndexedInstanced(
    int IndexCountPerInstance,
    int InstanceCount,
    int StartIndexLocation,
    int BaseVertexLocation,
    int StartInstanceLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
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

  void DrawInstanced(
    int VertexCountPerInstance,
    int InstanceCount,
    int StartVertexLocation,
    int StartInstanceLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
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

  void GSSetConstantBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
      );

  void GSSetShader(
    Pointer<COMObject> pShader,
    Pointer<Pointer<COMObject>> ppClassInstances,
    int NumClassInstances,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Uint32 NumClassInstances,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            int NumClassInstances,
          )>()(
        ptr.ref.lpVtbl,
        pShader,
        ppClassInstances,
        NumClassInstances,
      );

  void IASetPrimitiveTopology(
    int Topology,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 Topology,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Topology,
          )>()(
        ptr.ref.lpVtbl,
        Topology,
      );

  void VSSetShaderResources(
    int StartSlot,
    int NumViews,
    Pointer<Pointer<COMObject>> ppShaderResourceViews,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumViews,
        ppShaderResourceViews,
      );

  void VSSetSamplers(
    int StartSlot,
    int NumSamplers,
    Pointer<Pointer<COMObject>> ppSamplers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumSamplers,
        ppSamplers,
      );

  void Begin(
    Pointer<COMObject> pAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pAsync,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pAsync,
          )>()(
        ptr.ref.lpVtbl,
        pAsync,
      );

  void End(
    Pointer<COMObject> pAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pAsync,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pAsync,
          )>()(
        ptr.ref.lpVtbl,
        pAsync,
      );

  int GetData(
    Pointer<COMObject> pAsync,
    Pointer pData,
    int DataSize,
    int GetDataFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAsync,
            Pointer pData,
            Uint32 DataSize,
            Uint32 GetDataFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAsync,
            Pointer pData,
            int DataSize,
            int GetDataFlags,
          )>()(
        ptr.ref.lpVtbl,
        pAsync,
        pData,
        DataSize,
        GetDataFlags,
      );

  void SetPredication(
    Pointer<COMObject> pPredicate,
    int PredicateValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pPredicate,
            Int32 PredicateValue,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pPredicate,
            int PredicateValue,
          )>()(
        ptr.ref.lpVtbl,
        pPredicate,
        PredicateValue,
      );

  void GSSetShaderResources(
    int StartSlot,
    int NumViews,
    Pointer<Pointer<COMObject>> ppShaderResourceViews,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumViews,
        ppShaderResourceViews,
      );

  void GSSetSamplers(
    int StartSlot,
    int NumSamplers,
    Pointer<Pointer<COMObject>> ppSamplers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumSamplers,
        ppSamplers,
      );

  void OMSetRenderTargets(
    int NumViews,
    Pointer<Pointer<COMObject>> ppRenderTargetViews,
    Pointer<COMObject> pDepthStencilView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumViews,
            Pointer<Pointer<COMObject>> ppRenderTargetViews,
            Pointer<COMObject> pDepthStencilView,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumViews,
            Pointer<Pointer<COMObject>> ppRenderTargetViews,
            Pointer<COMObject> pDepthStencilView,
          )>()(
        ptr.ref.lpVtbl,
        NumViews,
        ppRenderTargetViews,
        pDepthStencilView,
      );

  void OMSetRenderTargetsAndUnorderedAccessViews(
    int NumRTVs,
    Pointer<Pointer<COMObject>> ppRenderTargetViews,
    Pointer<COMObject> pDepthStencilView,
    int UAVStartSlot,
    int NumUAVs,
    Pointer<Pointer<COMObject>> ppUnorderedAccessViews,
    Pointer<Uint32> pUAVInitialCounts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumRTVs,
            Pointer<Pointer<COMObject>> ppRenderTargetViews,
            Pointer<COMObject> pDepthStencilView,
            Uint32 UAVStartSlot,
            Uint32 NumUAVs,
            Pointer<Pointer<COMObject>> ppUnorderedAccessViews,
            Pointer<Uint32> pUAVInitialCounts,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumRTVs,
            Pointer<Pointer<COMObject>> ppRenderTargetViews,
            Pointer<COMObject> pDepthStencilView,
            int UAVStartSlot,
            int NumUAVs,
            Pointer<Pointer<COMObject>> ppUnorderedAccessViews,
            Pointer<Uint32> pUAVInitialCounts,
          )>()(
        ptr.ref.lpVtbl,
        NumRTVs,
        ppRenderTargetViews,
        pDepthStencilView,
        UAVStartSlot,
        NumUAVs,
        ppUnorderedAccessViews,
        pUAVInitialCounts,
      );

  void OMSetBlendState(
    Pointer<COMObject> pBlendState,
    Pointer<Float> BlendFactor,
    int SampleMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pBlendState,
            Pointer<Float> BlendFactor,
            Uint32 SampleMask,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pBlendState,
            Pointer<Float> BlendFactor,
            int SampleMask,
          )>()(
        ptr.ref.lpVtbl,
        pBlendState,
        BlendFactor,
        SampleMask,
      );

  void OMSetDepthStencilState(
    Pointer<COMObject> pDepthStencilState,
    int StencilRef,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDepthStencilState,
            Uint32 StencilRef,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDepthStencilState,
            int StencilRef,
          )>()(
        ptr.ref.lpVtbl,
        pDepthStencilState,
        StencilRef,
      );

  void SOSetTargets(
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppSOTargets,
    Pointer<Uint32> pOffsets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppSOTargets,
            Pointer<Uint32> pOffsets,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppSOTargets,
            Pointer<Uint32> pOffsets,
          )>()(
        ptr.ref.lpVtbl,
        NumBuffers,
        ppSOTargets,
        pOffsets,
      );

  void DrawAuto() => ptr.ref.lpVtbl.value
          .elementAt(38)
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

  void DrawIndexedInstancedIndirect(
    Pointer<COMObject> pBufferForArgs,
    int AlignedByteOffsetForArgs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pBufferForArgs,
            Uint32 AlignedByteOffsetForArgs,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pBufferForArgs,
            int AlignedByteOffsetForArgs,
          )>()(
        ptr.ref.lpVtbl,
        pBufferForArgs,
        AlignedByteOffsetForArgs,
      );

  void DrawInstancedIndirect(
    Pointer<COMObject> pBufferForArgs,
    int AlignedByteOffsetForArgs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pBufferForArgs,
            Uint32 AlignedByteOffsetForArgs,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pBufferForArgs,
            int AlignedByteOffsetForArgs,
          )>()(
        ptr.ref.lpVtbl,
        pBufferForArgs,
        AlignedByteOffsetForArgs,
      );

  void Dispatch(
    int ThreadGroupCountX,
    int ThreadGroupCountY,
    int ThreadGroupCountZ,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
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

  void DispatchIndirect(
    Pointer<COMObject> pBufferForArgs,
    int AlignedByteOffsetForArgs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pBufferForArgs,
            Uint32 AlignedByteOffsetForArgs,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pBufferForArgs,
            int AlignedByteOffsetForArgs,
          )>()(
        ptr.ref.lpVtbl,
        pBufferForArgs,
        AlignedByteOffsetForArgs,
      );

  void RSSetState(
    Pointer<COMObject> pRasterizerState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pRasterizerState,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pRasterizerState,
          )>()(
        ptr.ref.lpVtbl,
        pRasterizerState,
      );

  void RSSetViewports(
    int NumViewports,
    Pointer<D3D11_VIEWPORT> pViewports,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumViewports,
            Pointer<D3D11_VIEWPORT> pViewports,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumViewports,
            Pointer<D3D11_VIEWPORT> pViewports,
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
          .elementAt(45)
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

  void CopySubresourceRegion(
    Pointer<COMObject> pDstResource,
    int DstSubresource,
    int DstX,
    int DstY,
    int DstZ,
    Pointer<COMObject> pSrcResource,
    int SrcSubresource,
    Pointer<D3D11_BOX> pSrcBox,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDstResource,
            Uint32 DstSubresource,
            Uint32 DstX,
            Uint32 DstY,
            Uint32 DstZ,
            Pointer<COMObject> pSrcResource,
            Uint32 SrcSubresource,
            Pointer<D3D11_BOX> pSrcBox,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDstResource,
            int DstSubresource,
            int DstX,
            int DstY,
            int DstZ,
            Pointer<COMObject> pSrcResource,
            int SrcSubresource,
            Pointer<D3D11_BOX> pSrcBox,
          )>()(
        ptr.ref.lpVtbl,
        pDstResource,
        DstSubresource,
        DstX,
        DstY,
        DstZ,
        pSrcResource,
        SrcSubresource,
        pSrcBox,
      );

  void CopyResource(
    Pointer<COMObject> pDstResource,
    Pointer<COMObject> pSrcResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
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

  void UpdateSubresource(
    Pointer<COMObject> pDstResource,
    int DstSubresource,
    Pointer<D3D11_BOX> pDstBox,
    Pointer pSrcData,
    int SrcRowPitch,
    int SrcDepthPitch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDstResource,
            Uint32 DstSubresource,
            Pointer<D3D11_BOX> pDstBox,
            Pointer pSrcData,
            Uint32 SrcRowPitch,
            Uint32 SrcDepthPitch,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDstResource,
            int DstSubresource,
            Pointer<D3D11_BOX> pDstBox,
            Pointer pSrcData,
            int SrcRowPitch,
            int SrcDepthPitch,
          )>()(
        ptr.ref.lpVtbl,
        pDstResource,
        DstSubresource,
        pDstBox,
        pSrcData,
        SrcRowPitch,
        SrcDepthPitch,
      );

  void CopyStructureCount(
    Pointer<COMObject> pDstBuffer,
    int DstAlignedByteOffset,
    Pointer<COMObject> pSrcView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDstBuffer,
            Uint32 DstAlignedByteOffset,
            Pointer<COMObject> pSrcView,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDstBuffer,
            int DstAlignedByteOffset,
            Pointer<COMObject> pSrcView,
          )>()(
        ptr.ref.lpVtbl,
        pDstBuffer,
        DstAlignedByteOffset,
        pSrcView,
      );

  void ClearRenderTargetView(
    Pointer<COMObject> pRenderTargetView,
    Pointer<Float> ColorRGBA,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pRenderTargetView,
            Pointer<Float> ColorRGBA,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pRenderTargetView,
            Pointer<Float> ColorRGBA,
          )>()(
        ptr.ref.lpVtbl,
        pRenderTargetView,
        ColorRGBA,
      );

  void ClearUnorderedAccessViewUint(
    Pointer<COMObject> pUnorderedAccessView,
    Pointer<Uint32> Values,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pUnorderedAccessView,
            Pointer<Uint32> Values,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pUnorderedAccessView,
            Pointer<Uint32> Values,
          )>()(
        ptr.ref.lpVtbl,
        pUnorderedAccessView,
        Values,
      );

  void ClearUnorderedAccessViewFloat(
    Pointer<COMObject> pUnorderedAccessView,
    Pointer<Float> Values,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pUnorderedAccessView,
            Pointer<Float> Values,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pUnorderedAccessView,
            Pointer<Float> Values,
          )>()(
        ptr.ref.lpVtbl,
        pUnorderedAccessView,
        Values,
      );

  void ClearDepthStencilView(
    Pointer<COMObject> pDepthStencilView,
    int ClearFlags,
    double Depth,
    int Stencil,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDepthStencilView,
            Uint32 ClearFlags,
            Float Depth,
            Uint8 Stencil,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDepthStencilView,
            int ClearFlags,
            double Depth,
            int Stencil,
          )>()(
        ptr.ref.lpVtbl,
        pDepthStencilView,
        ClearFlags,
        Depth,
        Stencil,
      );

  void GenerateMips(
    Pointer<COMObject> pShaderResourceView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pShaderResourceView,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pShaderResourceView,
          )>()(
        ptr.ref.lpVtbl,
        pShaderResourceView,
      );

  void SetResourceMinLOD(
    Pointer<COMObject> pResource,
    double MinLOD,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pResource,
            Float MinLOD,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pResource,
            double MinLOD,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        MinLOD,
      );

  double GetResourceMinLOD(
    Pointer<COMObject> pResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Float Function(
            Pointer,
            Pointer<COMObject> pResource,
          )>>>()
          .value
          .asFunction<
              double Function(
            Pointer,
            Pointer<COMObject> pResource,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
      );

  void ResolveSubresource(
    Pointer<COMObject> pDstResource,
    int DstSubresource,
    Pointer<COMObject> pSrcResource,
    int SrcSubresource,
    int Format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
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

  void ExecuteCommandList(
    Pointer<COMObject> pCommandList,
    int RestoreContextState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pCommandList,
            Int32 RestoreContextState,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pCommandList,
            int RestoreContextState,
          )>()(
        ptr.ref.lpVtbl,
        pCommandList,
        RestoreContextState,
      );

  void HSSetShaderResources(
    int StartSlot,
    int NumViews,
    Pointer<Pointer<COMObject>> ppShaderResourceViews,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumViews,
        ppShaderResourceViews,
      );

  void HSSetShader(
    Pointer<COMObject> pHullShader,
    Pointer<Pointer<COMObject>> ppClassInstances,
    int NumClassInstances,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pHullShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Uint32 NumClassInstances,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pHullShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            int NumClassInstances,
          )>()(
        ptr.ref.lpVtbl,
        pHullShader,
        ppClassInstances,
        NumClassInstances,
      );

  void HSSetSamplers(
    int StartSlot,
    int NumSamplers,
    Pointer<Pointer<COMObject>> ppSamplers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumSamplers,
        ppSamplers,
      );

  void HSSetConstantBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
      );

  void DSSetShaderResources(
    int StartSlot,
    int NumViews,
    Pointer<Pointer<COMObject>> ppShaderResourceViews,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumViews,
        ppShaderResourceViews,
      );

  void DSSetShader(
    Pointer<COMObject> pDomainShader,
    Pointer<Pointer<COMObject>> ppClassInstances,
    int NumClassInstances,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDomainShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Uint32 NumClassInstances,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDomainShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            int NumClassInstances,
          )>()(
        ptr.ref.lpVtbl,
        pDomainShader,
        ppClassInstances,
        NumClassInstances,
      );

  void DSSetSamplers(
    int StartSlot,
    int NumSamplers,
    Pointer<Pointer<COMObject>> ppSamplers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumSamplers,
        ppSamplers,
      );

  void DSSetConstantBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
      );

  void CSSetShaderResources(
    int StartSlot,
    int NumViews,
    Pointer<Pointer<COMObject>> ppShaderResourceViews,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumViews,
        ppShaderResourceViews,
      );

  void CSSetUnorderedAccessViews(
    int StartSlot,
    int NumUAVs,
    Pointer<Pointer<COMObject>> ppUnorderedAccessViews,
    Pointer<Uint32> pUAVInitialCounts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumUAVs,
            Pointer<Pointer<COMObject>> ppUnorderedAccessViews,
            Pointer<Uint32> pUAVInitialCounts,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumUAVs,
            Pointer<Pointer<COMObject>> ppUnorderedAccessViews,
            Pointer<Uint32> pUAVInitialCounts,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumUAVs,
        ppUnorderedAccessViews,
        pUAVInitialCounts,
      );

  void CSSetShader(
    Pointer<COMObject> pComputeShader,
    Pointer<Pointer<COMObject>> ppClassInstances,
    int NumClassInstances,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pComputeShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Uint32 NumClassInstances,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pComputeShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            int NumClassInstances,
          )>()(
        ptr.ref.lpVtbl,
        pComputeShader,
        ppClassInstances,
        NumClassInstances,
      );

  void CSSetSamplers(
    int StartSlot,
    int NumSamplers,
    Pointer<Pointer<COMObject>> ppSamplers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(70)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumSamplers,
        ppSamplers,
      );

  void CSSetConstantBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(71)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
      );

  void VSGetConstantBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(72)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
      );

  void PSGetShaderResources(
    int StartSlot,
    int NumViews,
    Pointer<Pointer<COMObject>> ppShaderResourceViews,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumViews,
        ppShaderResourceViews,
      );

  void PSGetShader(
    Pointer<Pointer<COMObject>> ppPixelShader,
    Pointer<Pointer<COMObject>> ppClassInstances,
    Pointer<Uint32> pNumClassInstances,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(74)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPixelShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Pointer<Uint32> pNumClassInstances,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPixelShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Pointer<Uint32> pNumClassInstances,
          )>()(
        ptr.ref.lpVtbl,
        ppPixelShader,
        ppClassInstances,
        pNumClassInstances,
      );

  void PSGetSamplers(
    int StartSlot,
    int NumSamplers,
    Pointer<Pointer<COMObject>> ppSamplers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(75)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumSamplers,
        ppSamplers,
      );

  void VSGetShader(
    Pointer<Pointer<COMObject>> ppVertexShader,
    Pointer<Pointer<COMObject>> ppClassInstances,
    Pointer<Uint32> pNumClassInstances,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(76)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVertexShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Pointer<Uint32> pNumClassInstances,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVertexShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Pointer<Uint32> pNumClassInstances,
          )>()(
        ptr.ref.lpVtbl,
        ppVertexShader,
        ppClassInstances,
        pNumClassInstances,
      );

  void PSGetConstantBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(77)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
      );

  void IAGetInputLayout(
    Pointer<Pointer<COMObject>> ppInputLayout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(78)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppInputLayout,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppInputLayout,
          )>()(
        ptr.ref.lpVtbl,
        ppInputLayout,
      );

  void IAGetVertexBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppVertexBuffers,
    Pointer<Uint32> pStrides,
    Pointer<Uint32> pOffsets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(79)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppVertexBuffers,
            Pointer<Uint32> pStrides,
            Pointer<Uint32> pOffsets,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppVertexBuffers,
            Pointer<Uint32> pStrides,
            Pointer<Uint32> pOffsets,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppVertexBuffers,
        pStrides,
        pOffsets,
      );

  void IAGetIndexBuffer(
    Pointer<Pointer<COMObject>> pIndexBuffer,
    Pointer<Uint32> Format,
    Pointer<Uint32> Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(80)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> pIndexBuffer,
            Pointer<Uint32> Format,
            Pointer<Uint32> Offset,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> pIndexBuffer,
            Pointer<Uint32> Format,
            Pointer<Uint32> Offset,
          )>()(
        ptr.ref.lpVtbl,
        pIndexBuffer,
        Format,
        Offset,
      );

  void GSGetConstantBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(81)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
      );

  void GSGetShader(
    Pointer<Pointer<COMObject>> ppGeometryShader,
    Pointer<Pointer<COMObject>> ppClassInstances,
    Pointer<Uint32> pNumClassInstances,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(82)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGeometryShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Pointer<Uint32> pNumClassInstances,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGeometryShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Pointer<Uint32> pNumClassInstances,
          )>()(
        ptr.ref.lpVtbl,
        ppGeometryShader,
        ppClassInstances,
        pNumClassInstances,
      );

  void IAGetPrimitiveTopology(
    Pointer<Int32> pTopology,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(83)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Int32> pTopology,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Int32> pTopology,
          )>()(
        ptr.ref.lpVtbl,
        pTopology,
      );

  void VSGetShaderResources(
    int StartSlot,
    int NumViews,
    Pointer<Pointer<COMObject>> ppShaderResourceViews,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(84)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumViews,
        ppShaderResourceViews,
      );

  void VSGetSamplers(
    int StartSlot,
    int NumSamplers,
    Pointer<Pointer<COMObject>> ppSamplers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(85)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumSamplers,
        ppSamplers,
      );

  void GetPredication(
    Pointer<Pointer<COMObject>> ppPredicate,
    Pointer<Int32> pPredicateValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(86)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPredicate,
            Pointer<Int32> pPredicateValue,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPredicate,
            Pointer<Int32> pPredicateValue,
          )>()(
        ptr.ref.lpVtbl,
        ppPredicate,
        pPredicateValue,
      );

  void GSGetShaderResources(
    int StartSlot,
    int NumViews,
    Pointer<Pointer<COMObject>> ppShaderResourceViews,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(87)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumViews,
        ppShaderResourceViews,
      );

  void GSGetSamplers(
    int StartSlot,
    int NumSamplers,
    Pointer<Pointer<COMObject>> ppSamplers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(88)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumSamplers,
        ppSamplers,
      );

  void OMGetRenderTargets(
    int NumViews,
    Pointer<Pointer<COMObject>> ppRenderTargetViews,
    Pointer<Pointer<COMObject>> ppDepthStencilView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(89)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumViews,
            Pointer<Pointer<COMObject>> ppRenderTargetViews,
            Pointer<Pointer<COMObject>> ppDepthStencilView,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumViews,
            Pointer<Pointer<COMObject>> ppRenderTargetViews,
            Pointer<Pointer<COMObject>> ppDepthStencilView,
          )>()(
        ptr.ref.lpVtbl,
        NumViews,
        ppRenderTargetViews,
        ppDepthStencilView,
      );

  void OMGetRenderTargetsAndUnorderedAccessViews(
    int NumRTVs,
    Pointer<Pointer<COMObject>> ppRenderTargetViews,
    Pointer<Pointer<COMObject>> ppDepthStencilView,
    int UAVStartSlot,
    int NumUAVs,
    Pointer<Pointer<COMObject>> ppUnorderedAccessViews,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(90)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumRTVs,
            Pointer<Pointer<COMObject>> ppRenderTargetViews,
            Pointer<Pointer<COMObject>> ppDepthStencilView,
            Uint32 UAVStartSlot,
            Uint32 NumUAVs,
            Pointer<Pointer<COMObject>> ppUnorderedAccessViews,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumRTVs,
            Pointer<Pointer<COMObject>> ppRenderTargetViews,
            Pointer<Pointer<COMObject>> ppDepthStencilView,
            int UAVStartSlot,
            int NumUAVs,
            Pointer<Pointer<COMObject>> ppUnorderedAccessViews,
          )>()(
        ptr.ref.lpVtbl,
        NumRTVs,
        ppRenderTargetViews,
        ppDepthStencilView,
        UAVStartSlot,
        NumUAVs,
        ppUnorderedAccessViews,
      );

  void OMGetBlendState(
    Pointer<Pointer<COMObject>> ppBlendState,
    Pointer<Float> BlendFactor,
    Pointer<Uint32> pSampleMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(91)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBlendState,
            Pointer<Float> BlendFactor,
            Pointer<Uint32> pSampleMask,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBlendState,
            Pointer<Float> BlendFactor,
            Pointer<Uint32> pSampleMask,
          )>()(
        ptr.ref.lpVtbl,
        ppBlendState,
        BlendFactor,
        pSampleMask,
      );

  void OMGetDepthStencilState(
    Pointer<Pointer<COMObject>> ppDepthStencilState,
    Pointer<Uint32> pStencilRef,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(92)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDepthStencilState,
            Pointer<Uint32> pStencilRef,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDepthStencilState,
            Pointer<Uint32> pStencilRef,
          )>()(
        ptr.ref.lpVtbl,
        ppDepthStencilState,
        pStencilRef,
      );

  void SOGetTargets(
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppSOTargets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(93)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppSOTargets,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppSOTargets,
          )>()(
        ptr.ref.lpVtbl,
        NumBuffers,
        ppSOTargets,
      );

  void RSGetState(
    Pointer<Pointer<COMObject>> ppRasterizerState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(94)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRasterizerState,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRasterizerState,
          )>()(
        ptr.ref.lpVtbl,
        ppRasterizerState,
      );

  void RSGetViewports(
    Pointer<Uint32> pNumViewports,
    Pointer<D3D11_VIEWPORT> pViewports,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(95)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Uint32> pNumViewports,
            Pointer<D3D11_VIEWPORT> pViewports,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Uint32> pNumViewports,
            Pointer<D3D11_VIEWPORT> pViewports,
          )>()(
        ptr.ref.lpVtbl,
        pNumViewports,
        pViewports,
      );

  void RSGetScissorRects(
    Pointer<Uint32> pNumRects,
    Pointer<RECT> pRects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(96)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Uint32> pNumRects,
            Pointer<RECT> pRects,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Uint32> pNumRects,
            Pointer<RECT> pRects,
          )>()(
        ptr.ref.lpVtbl,
        pNumRects,
        pRects,
      );

  void HSGetShaderResources(
    int StartSlot,
    int NumViews,
    Pointer<Pointer<COMObject>> ppShaderResourceViews,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(97)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumViews,
        ppShaderResourceViews,
      );

  void HSGetShader(
    Pointer<Pointer<COMObject>> ppHullShader,
    Pointer<Pointer<COMObject>> ppClassInstances,
    Pointer<Uint32> pNumClassInstances,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(98)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppHullShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Pointer<Uint32> pNumClassInstances,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppHullShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Pointer<Uint32> pNumClassInstances,
          )>()(
        ptr.ref.lpVtbl,
        ppHullShader,
        ppClassInstances,
        pNumClassInstances,
      );

  void HSGetSamplers(
    int StartSlot,
    int NumSamplers,
    Pointer<Pointer<COMObject>> ppSamplers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(99)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumSamplers,
        ppSamplers,
      );

  void HSGetConstantBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(100)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
      );

  void DSGetShaderResources(
    int StartSlot,
    int NumViews,
    Pointer<Pointer<COMObject>> ppShaderResourceViews,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(101)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumViews,
        ppShaderResourceViews,
      );

  void DSGetShader(
    Pointer<Pointer<COMObject>> ppDomainShader,
    Pointer<Pointer<COMObject>> ppClassInstances,
    Pointer<Uint32> pNumClassInstances,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(102)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDomainShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Pointer<Uint32> pNumClassInstances,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDomainShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Pointer<Uint32> pNumClassInstances,
          )>()(
        ptr.ref.lpVtbl,
        ppDomainShader,
        ppClassInstances,
        pNumClassInstances,
      );

  void DSGetSamplers(
    int StartSlot,
    int NumSamplers,
    Pointer<Pointer<COMObject>> ppSamplers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(103)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumSamplers,
        ppSamplers,
      );

  void DSGetConstantBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(104)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
      );

  void CSGetShaderResources(
    int StartSlot,
    int NumViews,
    Pointer<Pointer<COMObject>> ppShaderResourceViews,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(105)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumViews,
            Pointer<Pointer<COMObject>> ppShaderResourceViews,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumViews,
        ppShaderResourceViews,
      );

  void CSGetUnorderedAccessViews(
    int StartSlot,
    int NumUAVs,
    Pointer<Pointer<COMObject>> ppUnorderedAccessViews,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(106)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumUAVs,
            Pointer<Pointer<COMObject>> ppUnorderedAccessViews,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumUAVs,
            Pointer<Pointer<COMObject>> ppUnorderedAccessViews,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumUAVs,
        ppUnorderedAccessViews,
      );

  void CSGetShader(
    Pointer<Pointer<COMObject>> ppComputeShader,
    Pointer<Pointer<COMObject>> ppClassInstances,
    Pointer<Uint32> pNumClassInstances,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(107)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppComputeShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Pointer<Uint32> pNumClassInstances,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppComputeShader,
            Pointer<Pointer<COMObject>> ppClassInstances,
            Pointer<Uint32> pNumClassInstances,
          )>()(
        ptr.ref.lpVtbl,
        ppComputeShader,
        ppClassInstances,
        pNumClassInstances,
      );

  void CSGetSamplers(
    int StartSlot,
    int NumSamplers,
    Pointer<Pointer<COMObject>> ppSamplers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(108)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumSamplers,
            Pointer<Pointer<COMObject>> ppSamplers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumSamplers,
        ppSamplers,
      );

  void CSGetConstantBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(109)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
      );

  void ClearState() => ptr.ref.lpVtbl.value
          .elementAt(110)
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

  void Flush() => ptr.ref.lpVtbl.value
          .elementAt(111)
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

  int GetType() => ptr.ref.lpVtbl.value
          .elementAt(112)
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

  int GetContextFlags() => ptr.ref.lpVtbl.value
          .elementAt(113)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int FinishCommandList(
    int RestoreDeferredContextState,
    Pointer<Pointer<COMObject>> ppCommandList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(114)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 RestoreDeferredContextState,
            Pointer<Pointer<COMObject>> ppCommandList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int RestoreDeferredContextState,
            Pointer<Pointer<COMObject>> ppCommandList,
          )>()(
        ptr.ref.lpVtbl,
        RestoreDeferredContextState,
        ppCommandList,
      );
}
