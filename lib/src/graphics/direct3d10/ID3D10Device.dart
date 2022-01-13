// ID3D10Device.dart

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
import '../../graphics/direct3d10/ID3D10Buffer.dart';
import '../../graphics/direct3d10/ID3D10ShaderResourceView.dart';
import '../../graphics/direct3d10/ID3D10PixelShader.dart';
import '../../graphics/direct3d10/ID3D10SamplerState.dart';
import '../../graphics/direct3d10/ID3D10VertexShader.dart';
import '../../graphics/direct3d10/ID3D10InputLayout.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/direct3d10/ID3D10GeometryShader.dart';
import '../../graphics/direct3d/structs.g.dart';
import '../../graphics/direct3d10/ID3D10Predicate.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d10/ID3D10RenderTargetView.dart';
import '../../graphics/direct3d10/ID3D10DepthStencilView.dart';
import '../../graphics/direct3d10/ID3D10BlendState.dart';
import '../../graphics/direct3d10/ID3D10DepthStencilState.dart';
import '../../graphics/direct3d10/ID3D10RasterizerState.dart';
import '../../graphics/direct3d10/structs.g.dart';
import '../../graphics/direct3d10/ID3D10Resource.dart';
import '../../specialTypes.dart';
import '../../graphics/direct3d10/ID3D10Texture1D.dart';
import '../../graphics/direct3d10/ID3D10Texture2D.dart';
import '../../graphics/direct3d10/ID3D10Texture3D.dart';
import '../../graphics/direct3d10/ID3D10Query.dart';
import '../../graphics/direct3d10/ID3D10Counter.dart';

/// @nodoc
const IID_ID3D10Device = '{9B7E4C0F-342C-4106-A19F-4F2704F689F0}';

/// {@category Interface}
/// {@category com}
class ID3D10Device extends IUnknown {
  // vtable begins at 3, is 95 entries long.
  ID3D10Device(Pointer<COMObject> ptr) : super(ptr);

  void VSSetConstantBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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
          .elementAt(4)
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
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pPixelShader,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pPixelShader,
          )>()(
        ptr.ref.lpVtbl,
        pPixelShader,
      );

  void PSSetSamplers(
    int StartSlot,
    int NumSamplers,
    Pointer<Pointer<COMObject>> ppSamplers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVertexShader,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVertexShader,
          )>()(
        ptr.ref.lpVtbl,
        pVertexShader,
      );

  void DrawIndexed(
    int IndexCount,
    int StartIndexLocation,
    int BaseVertexLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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
          .elementAt(9)
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

  void PSSetConstantBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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
          .elementAt(11)
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
          .elementAt(12)
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
          .elementAt(13)
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
          .elementAt(14)
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
          .elementAt(15)
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

  void GSSetShader(
    Pointer<COMObject> pShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pShader,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pShader,
          )>()(
        ptr.ref.lpVtbl,
        pShader,
      );

  void IASetPrimitiveTopology(
    int Topology,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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
          .elementAt(19)
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
          .elementAt(20)
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

  void SetPredication(
    Pointer<COMObject> pPredicate,
    int PredicateValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
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
          .elementAt(22)
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
          .elementAt(23)
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
          .elementAt(24)
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

  void OMSetBlendState(
    Pointer<COMObject> pBlendState,
    Pointer<Float> BlendFactor,
    int SampleMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
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
          .elementAt(26)
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
          .elementAt(27)
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
          .elementAt(28)
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

  void RSSetState(
    Pointer<COMObject> pRasterizerState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
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
    Pointer<D3D10_VIEWPORT> pViewports,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumViewports,
            Pointer<D3D10_VIEWPORT> pViewports,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumViewports,
            Pointer<D3D10_VIEWPORT> pViewports,
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
          .elementAt(31)
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
    Pointer<D3D10_BOX> pSrcBox,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
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
            Pointer<D3D10_BOX> pSrcBox,
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
            Pointer<D3D10_BOX> pSrcBox,
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
          .elementAt(33)
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
    Pointer<D3D10_BOX> pDstBox,
    Pointer pSrcData,
    int SrcRowPitch,
    int SrcDepthPitch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDstResource,
            Uint32 DstSubresource,
            Pointer<D3D10_BOX> pDstBox,
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
            Pointer<D3D10_BOX> pDstBox,
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

  void ClearRenderTargetView(
    Pointer<COMObject> pRenderTargetView,
    Pointer<Float> ColorRGBA,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
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

  void ClearDepthStencilView(
    Pointer<COMObject> pDepthStencilView,
    int ClearFlags,
    double Depth,
    int Stencil,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
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
          .elementAt(37)
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

  void ResolveSubresource(
    Pointer<COMObject> pDstResource,
    int DstSubresource,
    Pointer<COMObject> pSrcResource,
    int SrcSubresource,
    int Format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
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

  void VSGetConstantBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
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
          .elementAt(40)
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
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPixelShader,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPixelShader,
          )>()(
        ptr.ref.lpVtbl,
        ppPixelShader,
      );

  void PSGetSamplers(
    int StartSlot,
    int NumSamplers,
    Pointer<Pointer<COMObject>> ppSamplers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
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
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVertexShader,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVertexShader,
          )>()(
        ptr.ref.lpVtbl,
        ppVertexShader,
      );

  void PSGetConstantBuffers(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
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
          .elementAt(45)
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
          .elementAt(46)
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
          .elementAt(47)
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
          .elementAt(48)
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
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGeometryShader,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGeometryShader,
          )>()(
        ptr.ref.lpVtbl,
        ppGeometryShader,
      );

  void IAGetPrimitiveTopology(
    Pointer<Int32> pTopology,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
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
          .elementAt(51)
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
          .elementAt(52)
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
          .elementAt(53)
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
          .elementAt(54)
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
          .elementAt(55)
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
          .elementAt(56)
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

  void OMGetBlendState(
    Pointer<Pointer<COMObject>> ppBlendState,
    Pointer<Float> BlendFactor,
    Pointer<Uint32> pSampleMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
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
          .elementAt(58)
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
    Pointer<Uint32> pOffsets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
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

  void RSGetState(
    Pointer<Pointer<COMObject>> ppRasterizerState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
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
    Pointer<Uint32> NumViewports,
    Pointer<D3D10_VIEWPORT> pViewports,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Uint32> NumViewports,
            Pointer<D3D10_VIEWPORT> pViewports,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Uint32> NumViewports,
            Pointer<D3D10_VIEWPORT> pViewports,
          )>()(
        ptr.ref.lpVtbl,
        NumViewports,
        pViewports,
      );

  void RSGetScissorRects(
    Pointer<Uint32> NumRects,
    Pointer<RECT> pRects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Uint32> NumRects,
            Pointer<RECT> pRects,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Uint32> NumRects,
            Pointer<RECT> pRects,
          )>()(
        ptr.ref.lpVtbl,
        NumRects,
        pRects,
      );

  int GetDeviceRemovedReason() => ptr.ref.lpVtbl.value
          .elementAt(63)
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

  int SetExceptionMode(
    int RaiseFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 RaiseFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int RaiseFlags,
          )>()(
        ptr.ref.lpVtbl,
        RaiseFlags,
      );

  int GetExceptionMode() => ptr.ref.lpVtbl.value
          .elementAt(65)
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

  int GetPrivateData(
    Pointer<GUID> guid,
    Pointer<Uint32> pDataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<Uint32> pDataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<Uint32> pDataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        guid,
        pDataSize,
        pData,
      );

  int SetPrivateData(
    Pointer<GUID> guid,
    int DataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guid,
            Uint32 DataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guid,
            int DataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        guid,
        DataSize,
        pData,
      );

  int SetPrivateDataInterface(
    Pointer<GUID> guid,
    Pointer<COMObject> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<COMObject> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<COMObject> pData,
          )>()(
        ptr.ref.lpVtbl,
        guid,
        pData,
      );

  void ClearState() => ptr.ref.lpVtbl.value
          .elementAt(69)
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
          .elementAt(70)
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

  int CreateBuffer(
    Pointer<D3D10_BUFFER_DESC> pDesc,
    Pointer<D3D10_SUBRESOURCE_DATA> pInitialData,
    Pointer<Pointer<COMObject>> ppBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(71)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_BUFFER_DESC> pDesc,
            Pointer<D3D10_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_BUFFER_DESC> pDesc,
            Pointer<D3D10_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        pInitialData,
        ppBuffer,
      );

  int CreateTexture1D(
    Pointer<D3D10_TEXTURE1D_DESC> pDesc,
    Pointer<D3D10_SUBRESOURCE_DATA> pInitialData,
    Pointer<Pointer<COMObject>> ppTexture1D,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(72)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_TEXTURE1D_DESC> pDesc,
            Pointer<D3D10_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppTexture1D,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_TEXTURE1D_DESC> pDesc,
            Pointer<D3D10_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppTexture1D,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        pInitialData,
        ppTexture1D,
      );

  int CreateTexture2D(
    Pointer<D3D10_TEXTURE2D_DESC> pDesc,
    Pointer<D3D10_SUBRESOURCE_DATA> pInitialData,
    Pointer<Pointer<COMObject>> ppTexture2D,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_TEXTURE2D_DESC> pDesc,
            Pointer<D3D10_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppTexture2D,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_TEXTURE2D_DESC> pDesc,
            Pointer<D3D10_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppTexture2D,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        pInitialData,
        ppTexture2D,
      );

  int CreateTexture3D(
    Pointer<D3D10_TEXTURE3D_DESC> pDesc,
    Pointer<D3D10_SUBRESOURCE_DATA> pInitialData,
    Pointer<Pointer<COMObject>> ppTexture3D,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(74)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_TEXTURE3D_DESC> pDesc,
            Pointer<D3D10_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppTexture3D,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_TEXTURE3D_DESC> pDesc,
            Pointer<D3D10_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppTexture3D,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        pInitialData,
        ppTexture3D,
      );

  int CreateShaderResourceView(
    Pointer<COMObject> pResource,
    Pointer<D3D10_SHADER_RESOURCE_VIEW_DESC> pDesc,
    Pointer<Pointer<COMObject>> ppSRView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(75)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D10_SHADER_RESOURCE_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppSRView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D10_SHADER_RESOURCE_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppSRView,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pDesc,
        ppSRView,
      );

  int CreateRenderTargetView(
    Pointer<COMObject> pResource,
    Pointer<D3D10_RENDER_TARGET_VIEW_DESC> pDesc,
    Pointer<Pointer<COMObject>> ppRTView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(76)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D10_RENDER_TARGET_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppRTView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D10_RENDER_TARGET_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppRTView,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pDesc,
        ppRTView,
      );

  int CreateDepthStencilView(
    Pointer<COMObject> pResource,
    Pointer<D3D10_DEPTH_STENCIL_VIEW_DESC> pDesc,
    Pointer<Pointer<COMObject>> ppDepthStencilView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(77)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D10_DEPTH_STENCIL_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppDepthStencilView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D10_DEPTH_STENCIL_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppDepthStencilView,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pDesc,
        ppDepthStencilView,
      );

  int CreateInputLayout(
    Pointer<D3D10_INPUT_ELEMENT_DESC> pInputElementDescs,
    int NumElements,
    Pointer pShaderBytecodeWithInputSignature,
    int BytecodeLength,
    Pointer<Pointer<COMObject>> ppInputLayout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(78)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_INPUT_ELEMENT_DESC> pInputElementDescs,
            Uint32 NumElements,
            Pointer pShaderBytecodeWithInputSignature,
            IntPtr BytecodeLength,
            Pointer<Pointer<COMObject>> ppInputLayout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_INPUT_ELEMENT_DESC> pInputElementDescs,
            int NumElements,
            Pointer pShaderBytecodeWithInputSignature,
            int BytecodeLength,
            Pointer<Pointer<COMObject>> ppInputLayout,
          )>()(
        ptr.ref.lpVtbl,
        pInputElementDescs,
        NumElements,
        pShaderBytecodeWithInputSignature,
        BytecodeLength,
        ppInputLayout,
      );

  int CreateVertexShader(
    Pointer pShaderBytecode,
    int BytecodeLength,
    Pointer<Pointer<COMObject>> ppVertexShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(79)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pShaderBytecode,
            IntPtr BytecodeLength,
            Pointer<Pointer<COMObject>> ppVertexShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pShaderBytecode,
            int BytecodeLength,
            Pointer<Pointer<COMObject>> ppVertexShader,
          )>()(
        ptr.ref.lpVtbl,
        pShaderBytecode,
        BytecodeLength,
        ppVertexShader,
      );

  int CreateGeometryShader(
    Pointer pShaderBytecode,
    int BytecodeLength,
    Pointer<Pointer<COMObject>> ppGeometryShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(80)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pShaderBytecode,
            IntPtr BytecodeLength,
            Pointer<Pointer<COMObject>> ppGeometryShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pShaderBytecode,
            int BytecodeLength,
            Pointer<Pointer<COMObject>> ppGeometryShader,
          )>()(
        ptr.ref.lpVtbl,
        pShaderBytecode,
        BytecodeLength,
        ppGeometryShader,
      );

  int CreateGeometryShaderWithStreamOutput(
    Pointer pShaderBytecode,
    int BytecodeLength,
    Pointer<D3D10_SO_DECLARATION_ENTRY> pSODeclaration,
    int NumEntries,
    int OutputStreamStride,
    Pointer<Pointer<COMObject>> ppGeometryShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(81)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pShaderBytecode,
            IntPtr BytecodeLength,
            Pointer<D3D10_SO_DECLARATION_ENTRY> pSODeclaration,
            Uint32 NumEntries,
            Uint32 OutputStreamStride,
            Pointer<Pointer<COMObject>> ppGeometryShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pShaderBytecode,
            int BytecodeLength,
            Pointer<D3D10_SO_DECLARATION_ENTRY> pSODeclaration,
            int NumEntries,
            int OutputStreamStride,
            Pointer<Pointer<COMObject>> ppGeometryShader,
          )>()(
        ptr.ref.lpVtbl,
        pShaderBytecode,
        BytecodeLength,
        pSODeclaration,
        NumEntries,
        OutputStreamStride,
        ppGeometryShader,
      );

  int CreatePixelShader(
    Pointer pShaderBytecode,
    int BytecodeLength,
    Pointer<Pointer<COMObject>> ppPixelShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(82)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pShaderBytecode,
            IntPtr BytecodeLength,
            Pointer<Pointer<COMObject>> ppPixelShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pShaderBytecode,
            int BytecodeLength,
            Pointer<Pointer<COMObject>> ppPixelShader,
          )>()(
        ptr.ref.lpVtbl,
        pShaderBytecode,
        BytecodeLength,
        ppPixelShader,
      );

  int CreateBlendState(
    Pointer<D3D10_BLEND_DESC> pBlendStateDesc,
    Pointer<Pointer<COMObject>> ppBlendState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(83)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_BLEND_DESC> pBlendStateDesc,
            Pointer<Pointer<COMObject>> ppBlendState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_BLEND_DESC> pBlendStateDesc,
            Pointer<Pointer<COMObject>> ppBlendState,
          )>()(
        ptr.ref.lpVtbl,
        pBlendStateDesc,
        ppBlendState,
      );

  int CreateDepthStencilState(
    Pointer<D3D10_DEPTH_STENCIL_DESC> pDepthStencilDesc,
    Pointer<Pointer<COMObject>> ppDepthStencilState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(84)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_DEPTH_STENCIL_DESC> pDepthStencilDesc,
            Pointer<Pointer<COMObject>> ppDepthStencilState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_DEPTH_STENCIL_DESC> pDepthStencilDesc,
            Pointer<Pointer<COMObject>> ppDepthStencilState,
          )>()(
        ptr.ref.lpVtbl,
        pDepthStencilDesc,
        ppDepthStencilState,
      );

  int CreateRasterizerState(
    Pointer<D3D10_RASTERIZER_DESC> pRasterizerDesc,
    Pointer<Pointer<COMObject>> ppRasterizerState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(85)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_RASTERIZER_DESC> pRasterizerDesc,
            Pointer<Pointer<COMObject>> ppRasterizerState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_RASTERIZER_DESC> pRasterizerDesc,
            Pointer<Pointer<COMObject>> ppRasterizerState,
          )>()(
        ptr.ref.lpVtbl,
        pRasterizerDesc,
        ppRasterizerState,
      );

  int CreateSamplerState(
    Pointer<D3D10_SAMPLER_DESC> pSamplerDesc,
    Pointer<Pointer<COMObject>> ppSamplerState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(86)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_SAMPLER_DESC> pSamplerDesc,
            Pointer<Pointer<COMObject>> ppSamplerState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_SAMPLER_DESC> pSamplerDesc,
            Pointer<Pointer<COMObject>> ppSamplerState,
          )>()(
        ptr.ref.lpVtbl,
        pSamplerDesc,
        ppSamplerState,
      );

  int CreateQuery(
    Pointer<D3D10_QUERY_DESC> pQueryDesc,
    Pointer<Pointer<COMObject>> ppQuery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(87)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_QUERY_DESC> pQueryDesc,
            Pointer<Pointer<COMObject>> ppQuery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_QUERY_DESC> pQueryDesc,
            Pointer<Pointer<COMObject>> ppQuery,
          )>()(
        ptr.ref.lpVtbl,
        pQueryDesc,
        ppQuery,
      );

  int CreatePredicate(
    Pointer<D3D10_QUERY_DESC> pPredicateDesc,
    Pointer<Pointer<COMObject>> ppPredicate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(88)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_QUERY_DESC> pPredicateDesc,
            Pointer<Pointer<COMObject>> ppPredicate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_QUERY_DESC> pPredicateDesc,
            Pointer<Pointer<COMObject>> ppPredicate,
          )>()(
        ptr.ref.lpVtbl,
        pPredicateDesc,
        ppPredicate,
      );

  int CreateCounter(
    Pointer<D3D10_COUNTER_DESC> pCounterDesc,
    Pointer<Pointer<COMObject>> ppCounter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(89)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_COUNTER_DESC> pCounterDesc,
            Pointer<Pointer<COMObject>> ppCounter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_COUNTER_DESC> pCounterDesc,
            Pointer<Pointer<COMObject>> ppCounter,
          )>()(
        ptr.ref.lpVtbl,
        pCounterDesc,
        ppCounter,
      );

  int CheckFormatSupport(
    int Format,
    Pointer<Uint32> pFormatSupport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(90)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Format,
            Pointer<Uint32> pFormatSupport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Format,
            Pointer<Uint32> pFormatSupport,
          )>()(
        ptr.ref.lpVtbl,
        Format,
        pFormatSupport,
      );

  int CheckMultisampleQualityLevels(
    int Format,
    int SampleCount,
    Pointer<Uint32> pNumQualityLevels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(91)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Format,
            Uint32 SampleCount,
            Pointer<Uint32> pNumQualityLevels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Format,
            int SampleCount,
            Pointer<Uint32> pNumQualityLevels,
          )>()(
        ptr.ref.lpVtbl,
        Format,
        SampleCount,
        pNumQualityLevels,
      );

  void CheckCounterInfo(
    Pointer<D3D10_COUNTER_INFO> pCounterInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(92)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D10_COUNTER_INFO> pCounterInfo,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D10_COUNTER_INFO> pCounterInfo,
          )>()(
        ptr.ref.lpVtbl,
        pCounterInfo,
      );

  int CheckCounter(
    Pointer<D3D10_COUNTER_DESC> pDesc,
    Pointer<Int32> pType,
    Pointer<Uint32> pActiveCounters,
    Pointer<Utf8> szName,
    Pointer<Uint32> pNameLength,
    Pointer<Utf8> szUnits,
    Pointer<Uint32> pUnitsLength,
    Pointer<Utf8> szDescription,
    Pointer<Uint32> pDescriptionLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(93)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D10_COUNTER_DESC> pDesc,
            Pointer<Int32> pType,
            Pointer<Uint32> pActiveCounters,
            Pointer<Utf8> szName,
            Pointer<Uint32> pNameLength,
            Pointer<Utf8> szUnits,
            Pointer<Uint32> pUnitsLength,
            Pointer<Utf8> szDescription,
            Pointer<Uint32> pDescriptionLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D10_COUNTER_DESC> pDesc,
            Pointer<Int32> pType,
            Pointer<Uint32> pActiveCounters,
            Pointer<Utf8> szName,
            Pointer<Uint32> pNameLength,
            Pointer<Utf8> szUnits,
            Pointer<Uint32> pUnitsLength,
            Pointer<Utf8> szDescription,
            Pointer<Uint32> pDescriptionLength,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        pType,
        pActiveCounters,
        szName,
        pNameLength,
        szUnits,
        pUnitsLength,
        szDescription,
        pDescriptionLength,
      );

  int GetCreationFlags() => ptr.ref.lpVtbl.value
          .elementAt(94)
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

  int OpenSharedResource(
    int hResource,
    Pointer<GUID> ReturnedInterface,
    Pointer<Pointer> ppResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(95)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hResource,
            Pointer<GUID> ReturnedInterface,
            Pointer<Pointer> ppResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hResource,
            Pointer<GUID> ReturnedInterface,
            Pointer<Pointer> ppResource,
          )>()(
        ptr.ref.lpVtbl,
        hResource,
        ReturnedInterface,
        ppResource,
      );

  void SetTextFilterSize(
    int Width,
    int Height,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(96)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 Width,
            Uint32 Height,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Width,
            int Height,
          )>()(
        ptr.ref.lpVtbl,
        Width,
        Height,
      );

  void GetTextFilterSize(
    Pointer<Uint32> pWidth,
    Pointer<Uint32> pHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(97)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Uint32> pWidth,
            Pointer<Uint32> pHeight,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Uint32> pWidth,
            Pointer<Uint32> pHeight,
          )>()(
        ptr.ref.lpVtbl,
        pWidth,
        pHeight,
      );
}
