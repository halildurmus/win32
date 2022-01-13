// ID3D11Device.dart

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
import '../../graphics/direct3d11/structs.g.dart';
import '../../graphics/direct3d11/ID3D11Buffer.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d11/ID3D11Texture1D.dart';
import '../../graphics/direct3d11/ID3D11Texture2D.dart';
import '../../graphics/direct3d11/ID3D11Texture3D.dart';
import '../../graphics/direct3d11/ID3D11Resource.dart';
import '../../graphics/direct3d11/ID3D11ShaderResourceView.dart';
import '../../graphics/direct3d11/ID3D11UnorderedAccessView.dart';
import '../../graphics/direct3d11/ID3D11RenderTargetView.dart';
import '../../graphics/direct3d11/ID3D11DepthStencilView.dart';
import '../../graphics/direct3d11/ID3D11InputLayout.dart';
import '../../graphics/direct3d11/ID3D11ClassLinkage.dart';
import '../../graphics/direct3d11/ID3D11VertexShader.dart';
import '../../graphics/direct3d11/ID3D11GeometryShader.dart';
import '../../graphics/direct3d11/ID3D11PixelShader.dart';
import '../../graphics/direct3d11/ID3D11HullShader.dart';
import '../../graphics/direct3d11/ID3D11DomainShader.dart';
import '../../graphics/direct3d11/ID3D11ComputeShader.dart';
import '../../graphics/direct3d11/ID3D11BlendState.dart';
import '../../graphics/direct3d11/ID3D11DepthStencilState.dart';
import '../../graphics/direct3d11/ID3D11RasterizerState.dart';
import '../../graphics/direct3d11/ID3D11SamplerState.dart';
import '../../graphics/direct3d11/ID3D11Query.dart';
import '../../graphics/direct3d11/ID3D11Predicate.dart';
import '../../graphics/direct3d11/ID3D11Counter.dart';
import '../../graphics/direct3d11/ID3D11DeviceContext.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../specialTypes.dart';
import '../../graphics/direct3d/structs.g.dart';

/// @nodoc
const IID_ID3D11Device = '{DB6F6DDB-AC77-4E88-8253-819DF9BBF140}';

/// {@category Interface}
/// {@category com}
class ID3D11Device extends IUnknown {
  // vtable begins at 3, is 40 entries long.
  ID3D11Device(Pointer<COMObject> ptr) : super(ptr);

  int CreateBuffer(
    Pointer<D3D11_BUFFER_DESC> pDesc,
    Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
    Pointer<Pointer<COMObject>> ppBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_BUFFER_DESC> pDesc,
            Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_BUFFER_DESC> pDesc,
            Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        pInitialData,
        ppBuffer,
      );

  int CreateTexture1D(
    Pointer<D3D11_TEXTURE1D_DESC> pDesc,
    Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
    Pointer<Pointer<COMObject>> ppTexture1D,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_TEXTURE1D_DESC> pDesc,
            Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppTexture1D,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_TEXTURE1D_DESC> pDesc,
            Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppTexture1D,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        pInitialData,
        ppTexture1D,
      );

  int CreateTexture2D(
    Pointer<D3D11_TEXTURE2D_DESC> pDesc,
    Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
    Pointer<Pointer<COMObject>> ppTexture2D,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_TEXTURE2D_DESC> pDesc,
            Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppTexture2D,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_TEXTURE2D_DESC> pDesc,
            Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppTexture2D,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        pInitialData,
        ppTexture2D,
      );

  int CreateTexture3D(
    Pointer<D3D11_TEXTURE3D_DESC> pDesc,
    Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
    Pointer<Pointer<COMObject>> ppTexture3D,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_TEXTURE3D_DESC> pDesc,
            Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppTexture3D,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_TEXTURE3D_DESC> pDesc,
            Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppTexture3D,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        pInitialData,
        ppTexture3D,
      );

  int CreateShaderResourceView(
    Pointer<COMObject> pResource,
    Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC> pDesc,
    Pointer<Pointer<COMObject>> ppSRView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppSRView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppSRView,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pDesc,
        ppSRView,
      );

  int CreateUnorderedAccessView(
    Pointer<COMObject> pResource,
    Pointer<D3D11_UNORDERED_ACCESS_VIEW_DESC> pDesc,
    Pointer<Pointer<COMObject>> ppUAView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D11_UNORDERED_ACCESS_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppUAView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D11_UNORDERED_ACCESS_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppUAView,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pDesc,
        ppUAView,
      );

  int CreateRenderTargetView(
    Pointer<COMObject> pResource,
    Pointer<D3D11_RENDER_TARGET_VIEW_DESC> pDesc,
    Pointer<Pointer<COMObject>> ppRTView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D11_RENDER_TARGET_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppRTView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D11_RENDER_TARGET_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppRTView,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pDesc,
        ppRTView,
      );

  int CreateDepthStencilView(
    Pointer<COMObject> pResource,
    Pointer<D3D11_DEPTH_STENCIL_VIEW_DESC> pDesc,
    Pointer<Pointer<COMObject>> ppDepthStencilView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D11_DEPTH_STENCIL_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppDepthStencilView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D11_DEPTH_STENCIL_VIEW_DESC> pDesc,
            Pointer<Pointer<COMObject>> ppDepthStencilView,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pDesc,
        ppDepthStencilView,
      );

  int CreateInputLayout(
    Pointer<D3D11_INPUT_ELEMENT_DESC> pInputElementDescs,
    int NumElements,
    Pointer pShaderBytecodeWithInputSignature,
    int BytecodeLength,
    Pointer<Pointer<COMObject>> ppInputLayout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_INPUT_ELEMENT_DESC> pInputElementDescs,
            Uint32 NumElements,
            Pointer pShaderBytecodeWithInputSignature,
            IntPtr BytecodeLength,
            Pointer<Pointer<COMObject>> ppInputLayout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_INPUT_ELEMENT_DESC> pInputElementDescs,
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
    Pointer<COMObject> pClassLinkage,
    Pointer<Pointer<COMObject>> ppVertexShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pShaderBytecode,
            IntPtr BytecodeLength,
            Pointer<COMObject> pClassLinkage,
            Pointer<Pointer<COMObject>> ppVertexShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pShaderBytecode,
            int BytecodeLength,
            Pointer<COMObject> pClassLinkage,
            Pointer<Pointer<COMObject>> ppVertexShader,
          )>()(
        ptr.ref.lpVtbl,
        pShaderBytecode,
        BytecodeLength,
        pClassLinkage,
        ppVertexShader,
      );

  int CreateGeometryShader(
    Pointer pShaderBytecode,
    int BytecodeLength,
    Pointer<COMObject> pClassLinkage,
    Pointer<Pointer<COMObject>> ppGeometryShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pShaderBytecode,
            IntPtr BytecodeLength,
            Pointer<COMObject> pClassLinkage,
            Pointer<Pointer<COMObject>> ppGeometryShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pShaderBytecode,
            int BytecodeLength,
            Pointer<COMObject> pClassLinkage,
            Pointer<Pointer<COMObject>> ppGeometryShader,
          )>()(
        ptr.ref.lpVtbl,
        pShaderBytecode,
        BytecodeLength,
        pClassLinkage,
        ppGeometryShader,
      );

  int CreateGeometryShaderWithStreamOutput(
    Pointer pShaderBytecode,
    int BytecodeLength,
    Pointer<D3D11_SO_DECLARATION_ENTRY> pSODeclaration,
    int NumEntries,
    Pointer<Uint32> pBufferStrides,
    int NumStrides,
    int RasterizedStream,
    Pointer<COMObject> pClassLinkage,
    Pointer<Pointer<COMObject>> ppGeometryShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pShaderBytecode,
            IntPtr BytecodeLength,
            Pointer<D3D11_SO_DECLARATION_ENTRY> pSODeclaration,
            Uint32 NumEntries,
            Pointer<Uint32> pBufferStrides,
            Uint32 NumStrides,
            Uint32 RasterizedStream,
            Pointer<COMObject> pClassLinkage,
            Pointer<Pointer<COMObject>> ppGeometryShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pShaderBytecode,
            int BytecodeLength,
            Pointer<D3D11_SO_DECLARATION_ENTRY> pSODeclaration,
            int NumEntries,
            Pointer<Uint32> pBufferStrides,
            int NumStrides,
            int RasterizedStream,
            Pointer<COMObject> pClassLinkage,
            Pointer<Pointer<COMObject>> ppGeometryShader,
          )>()(
        ptr.ref.lpVtbl,
        pShaderBytecode,
        BytecodeLength,
        pSODeclaration,
        NumEntries,
        pBufferStrides,
        NumStrides,
        RasterizedStream,
        pClassLinkage,
        ppGeometryShader,
      );

  int CreatePixelShader(
    Pointer pShaderBytecode,
    int BytecodeLength,
    Pointer<COMObject> pClassLinkage,
    Pointer<Pointer<COMObject>> ppPixelShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pShaderBytecode,
            IntPtr BytecodeLength,
            Pointer<COMObject> pClassLinkage,
            Pointer<Pointer<COMObject>> ppPixelShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pShaderBytecode,
            int BytecodeLength,
            Pointer<COMObject> pClassLinkage,
            Pointer<Pointer<COMObject>> ppPixelShader,
          )>()(
        ptr.ref.lpVtbl,
        pShaderBytecode,
        BytecodeLength,
        pClassLinkage,
        ppPixelShader,
      );

  int CreateHullShader(
    Pointer pShaderBytecode,
    int BytecodeLength,
    Pointer<COMObject> pClassLinkage,
    Pointer<Pointer<COMObject>> ppHullShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pShaderBytecode,
            IntPtr BytecodeLength,
            Pointer<COMObject> pClassLinkage,
            Pointer<Pointer<COMObject>> ppHullShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pShaderBytecode,
            int BytecodeLength,
            Pointer<COMObject> pClassLinkage,
            Pointer<Pointer<COMObject>> ppHullShader,
          )>()(
        ptr.ref.lpVtbl,
        pShaderBytecode,
        BytecodeLength,
        pClassLinkage,
        ppHullShader,
      );

  int CreateDomainShader(
    Pointer pShaderBytecode,
    int BytecodeLength,
    Pointer<COMObject> pClassLinkage,
    Pointer<Pointer<COMObject>> ppDomainShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pShaderBytecode,
            IntPtr BytecodeLength,
            Pointer<COMObject> pClassLinkage,
            Pointer<Pointer<COMObject>> ppDomainShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pShaderBytecode,
            int BytecodeLength,
            Pointer<COMObject> pClassLinkage,
            Pointer<Pointer<COMObject>> ppDomainShader,
          )>()(
        ptr.ref.lpVtbl,
        pShaderBytecode,
        BytecodeLength,
        pClassLinkage,
        ppDomainShader,
      );

  int CreateComputeShader(
    Pointer pShaderBytecode,
    int BytecodeLength,
    Pointer<COMObject> pClassLinkage,
    Pointer<Pointer<COMObject>> ppComputeShader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pShaderBytecode,
            IntPtr BytecodeLength,
            Pointer<COMObject> pClassLinkage,
            Pointer<Pointer<COMObject>> ppComputeShader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pShaderBytecode,
            int BytecodeLength,
            Pointer<COMObject> pClassLinkage,
            Pointer<Pointer<COMObject>> ppComputeShader,
          )>()(
        ptr.ref.lpVtbl,
        pShaderBytecode,
        BytecodeLength,
        pClassLinkage,
        ppComputeShader,
      );

  int CreateClassLinkage(
    Pointer<Pointer<COMObject>> ppLinkage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLinkage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLinkage,
          )>()(
        ptr.ref.lpVtbl,
        ppLinkage,
      );

  int CreateBlendState(
    Pointer<D3D11_BLEND_DESC> pBlendStateDesc,
    Pointer<Pointer<COMObject>> ppBlendState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_BLEND_DESC> pBlendStateDesc,
            Pointer<Pointer<COMObject>> ppBlendState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_BLEND_DESC> pBlendStateDesc,
            Pointer<Pointer<COMObject>> ppBlendState,
          )>()(
        ptr.ref.lpVtbl,
        pBlendStateDesc,
        ppBlendState,
      );

  int CreateDepthStencilState(
    Pointer<D3D11_DEPTH_STENCIL_DESC> pDepthStencilDesc,
    Pointer<Pointer<COMObject>> ppDepthStencilState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_DEPTH_STENCIL_DESC> pDepthStencilDesc,
            Pointer<Pointer<COMObject>> ppDepthStencilState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_DEPTH_STENCIL_DESC> pDepthStencilDesc,
            Pointer<Pointer<COMObject>> ppDepthStencilState,
          )>()(
        ptr.ref.lpVtbl,
        pDepthStencilDesc,
        ppDepthStencilState,
      );

  int CreateRasterizerState(
    Pointer<D3D11_RASTERIZER_DESC> pRasterizerDesc,
    Pointer<Pointer<COMObject>> ppRasterizerState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_RASTERIZER_DESC> pRasterizerDesc,
            Pointer<Pointer<COMObject>> ppRasterizerState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_RASTERIZER_DESC> pRasterizerDesc,
            Pointer<Pointer<COMObject>> ppRasterizerState,
          )>()(
        ptr.ref.lpVtbl,
        pRasterizerDesc,
        ppRasterizerState,
      );

  int CreateSamplerState(
    Pointer<D3D11_SAMPLER_DESC> pSamplerDesc,
    Pointer<Pointer<COMObject>> ppSamplerState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_SAMPLER_DESC> pSamplerDesc,
            Pointer<Pointer<COMObject>> ppSamplerState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_SAMPLER_DESC> pSamplerDesc,
            Pointer<Pointer<COMObject>> ppSamplerState,
          )>()(
        ptr.ref.lpVtbl,
        pSamplerDesc,
        ppSamplerState,
      );

  int CreateQuery(
    Pointer<D3D11_QUERY_DESC> pQueryDesc,
    Pointer<Pointer<COMObject>> ppQuery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_QUERY_DESC> pQueryDesc,
            Pointer<Pointer<COMObject>> ppQuery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_QUERY_DESC> pQueryDesc,
            Pointer<Pointer<COMObject>> ppQuery,
          )>()(
        ptr.ref.lpVtbl,
        pQueryDesc,
        ppQuery,
      );

  int CreatePredicate(
    Pointer<D3D11_QUERY_DESC> pPredicateDesc,
    Pointer<Pointer<COMObject>> ppPredicate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_QUERY_DESC> pPredicateDesc,
            Pointer<Pointer<COMObject>> ppPredicate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_QUERY_DESC> pPredicateDesc,
            Pointer<Pointer<COMObject>> ppPredicate,
          )>()(
        ptr.ref.lpVtbl,
        pPredicateDesc,
        ppPredicate,
      );

  int CreateCounter(
    Pointer<D3D11_COUNTER_DESC> pCounterDesc,
    Pointer<Pointer<COMObject>> ppCounter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_COUNTER_DESC> pCounterDesc,
            Pointer<Pointer<COMObject>> ppCounter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_COUNTER_DESC> pCounterDesc,
            Pointer<Pointer<COMObject>> ppCounter,
          )>()(
        ptr.ref.lpVtbl,
        pCounterDesc,
        ppCounter,
      );

  int CreateDeferredContext(
    int ContextFlags,
    Pointer<Pointer<COMObject>> ppDeferredContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ContextFlags,
            Pointer<Pointer<COMObject>> ppDeferredContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ContextFlags,
            Pointer<Pointer<COMObject>> ppDeferredContext,
          )>()(
        ptr.ref.lpVtbl,
        ContextFlags,
        ppDeferredContext,
      );

  int OpenSharedResource(
    int hResource,
    Pointer<GUID> ReturnedInterface,
    Pointer<Pointer> ppResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
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

  int CheckFormatSupport(
    int Format,
    Pointer<Uint32> pFormatSupport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
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
          .elementAt(30)
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
    Pointer<D3D11_COUNTER_INFO> pCounterInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D11_COUNTER_INFO> pCounterInfo,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D11_COUNTER_INFO> pCounterInfo,
          )>()(
        ptr.ref.lpVtbl,
        pCounterInfo,
      );

  int CheckCounter(
    Pointer<D3D11_COUNTER_DESC> pDesc,
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
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_COUNTER_DESC> pDesc,
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
            Pointer<D3D11_COUNTER_DESC> pDesc,
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

  int CheckFeatureSupport(
    int Feature,
    Pointer pFeatureSupportData,
    int FeatureSupportDataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Feature,
            Pointer pFeatureSupportData,
            Uint32 FeatureSupportDataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Feature,
            Pointer pFeatureSupportData,
            int FeatureSupportDataSize,
          )>()(
        ptr.ref.lpVtbl,
        Feature,
        pFeatureSupportData,
        FeatureSupportDataSize,
      );

  int GetPrivateData(
    Pointer<GUID> guid,
    Pointer<Uint32> pDataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
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
          .elementAt(35)
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
          .elementAt(36)
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

  int GetFeatureLevel() => ptr.ref.lpVtbl.value
          .elementAt(37)
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

  int GetCreationFlags() => ptr.ref.lpVtbl.value
          .elementAt(38)
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

  int GetDeviceRemovedReason() => ptr.ref.lpVtbl.value
          .elementAt(39)
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

  void GetImmediateContext(
    Pointer<Pointer<COMObject>> ppImmediateContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppImmediateContext,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppImmediateContext,
          )>()(
        ptr.ref.lpVtbl,
        ppImmediateContext,
      );

  int SetExceptionMode(
    int RaiseFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
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
          .elementAt(42)
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
}
