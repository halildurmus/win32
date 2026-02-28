// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'id3d11blendstate.g.dart';
import 'id3d11buffer.g.dart';
import 'id3d11classlinkage.g.dart';
import 'id3d11computeshader.g.dart';
import 'id3d11counter.g.dart';
import 'id3d11depthstencilstate.g.dart';
import 'id3d11depthstencilview.g.dart';
import 'id3d11devicecontext.g.dart';
import 'id3d11domainshader.g.dart';
import 'id3d11geometryshader.g.dart';
import 'id3d11hullshader.g.dart';
import 'id3d11inputlayout.g.dart';
import 'id3d11pixelshader.g.dart';
import 'id3d11predicate.g.dart';
import 'id3d11query.g.dart';
import 'id3d11rasterizerstate.g.dart';
import 'id3d11rendertargetview.g.dart';
import 'id3d11resource.g.dart';
import 'id3d11samplerstate.g.dart';
import 'id3d11shaderresourceview.g.dart';
import 'id3d11texture1d.g.dart';
import 'id3d11texture2d.g.dart';
import 'id3d11texture3d.g.dart';
import 'id3d11unorderedaccessview.g.dart';
import 'id3d11vertexshader.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11Device = GUID.fromComponents(
  0xdb6f6ddb,
  0xac77,
  0x4e88,
  Uint8List.fromList(const [0x82, 0x53, 0x81, 0x9d, 0xf9, 0xbb, 0xf1, 0x40]),
);

/// Represents a virtual adapter; it is used to create resources.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11device>.
///
/// {@category com}
class ID3D11Device extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11Device] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11Device] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ID3D11Device(super.ptr) : _vtable = ptr.value.cast<ID3D11DeviceVtbl>().ref;

  /// Creates a new instance of [ID3D11Device] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11Device] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11Device.from(IUnknown interface) => interface.queryInterface();

  final ID3D11DeviceVtbl _vtable;
  late final _CreateBufferFn =
      _vtable.CreateBuffer.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_BUFFER_DESC>,
          Pointer<D3D11_SUBRESOURCE_DATA>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateTexture1DFn =
      _vtable.CreateTexture1D.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_TEXTURE1D_DESC>,
          Pointer<D3D11_SUBRESOURCE_DATA>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateTexture2DFn =
      _vtable.CreateTexture2D.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_TEXTURE2D_DESC>,
          Pointer<D3D11_SUBRESOURCE_DATA>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateTexture3DFn =
      _vtable.CreateTexture3D.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_TEXTURE3D_DESC>,
          Pointer<D3D11_SUBRESOURCE_DATA>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateShaderResourceViewFn =
      _vtable.CreateShaderResourceView.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateUnorderedAccessViewFn =
      _vtable.CreateUnorderedAccessView.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_UNORDERED_ACCESS_VIEW_DESC>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateRenderTargetViewFn =
      _vtable.CreateRenderTargetView.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_RENDER_TARGET_VIEW_DESC>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateDepthStencilViewFn =
      _vtable.CreateDepthStencilView.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          Pointer<D3D11_DEPTH_STENCIL_VIEW_DESC>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateInputLayoutFn =
      _vtable.CreateInputLayout.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_INPUT_ELEMENT_DESC>,
          int,
          Pointer,
          int,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateVertexShaderFn =
      _vtable.CreateVertexShader.asFunction<
        int Function(
          VTablePointer,
          Pointer,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateGeometryShaderFn =
      _vtable.CreateGeometryShader.asFunction<
        int Function(
          VTablePointer,
          Pointer,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateGeometryShaderWithStreamOutputFn =
      _vtable.CreateGeometryShaderWithStreamOutput.asFunction<
        int Function(
          VTablePointer,
          Pointer,
          int,
          Pointer<D3D11_SO_DECLARATION_ENTRY>,
          int,
          Pointer<Uint32>,
          int,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreatePixelShaderFn =
      _vtable.CreatePixelShader.asFunction<
        int Function(
          VTablePointer,
          Pointer,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateHullShaderFn =
      _vtable.CreateHullShader.asFunction<
        int Function(
          VTablePointer,
          Pointer,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateDomainShaderFn =
      _vtable.CreateDomainShader.asFunction<
        int Function(
          VTablePointer,
          Pointer,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateComputeShaderFn =
      _vtable.CreateComputeShader.asFunction<
        int Function(
          VTablePointer,
          Pointer,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateClassLinkageFn =
      _vtable.CreateClassLinkage.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateBlendStateFn =
      _vtable.CreateBlendState.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_BLEND_DESC>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateDepthStencilStateFn =
      _vtable.CreateDepthStencilState.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_DEPTH_STENCIL_DESC>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateRasterizerStateFn =
      _vtable.CreateRasterizerState.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_RASTERIZER_DESC>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateSamplerStateFn =
      _vtable.CreateSamplerState.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_SAMPLER_DESC>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateQueryFn =
      _vtable.CreateQuery.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_QUERY_DESC>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreatePredicateFn =
      _vtable.CreatePredicate.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_QUERY_DESC>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateCounterFn =
      _vtable.CreateCounter.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_COUNTER_DESC>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateDeferredContextFn =
      _vtable.CreateDeferredContext.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _OpenSharedResourceFn =
      _vtable.OpenSharedResource.asFunction<
        int Function(VTablePointer, Pointer, Pointer<GUID>, Pointer<Pointer>)
      >();
  late final _CheckFormatSupportFn =
      _vtable.CheckFormatSupport.asFunction<
        int Function(VTablePointer, int, Pointer<Uint32>)
      >();
  late final _CheckMultisampleQualityLevelsFn =
      _vtable.CheckMultisampleQualityLevels.asFunction<
        int Function(VTablePointer, int, int, Pointer<Uint32>)
      >();
  late final _CheckCounterInfoFn =
      _vtable.CheckCounterInfo.asFunction<
        void Function(VTablePointer, Pointer<D3D11_COUNTER_INFO>)
      >();
  late final _CheckCounterFn =
      _vtable.CheckCounter.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_COUNTER_DESC>,
          Pointer<Int32>,
          Pointer<Uint32>,
          Pointer<Utf8>,
          Pointer<Uint32>,
          Pointer<Utf8>,
          Pointer<Uint32>,
          Pointer<Utf8>,
          Pointer<Uint32>,
        )
      >();
  late final _CheckFeatureSupportFn =
      _vtable.CheckFeatureSupport.asFunction<
        int Function(VTablePointer, int, Pointer, int)
      >();
  late final _GetPrivateDataFn =
      _vtable.GetPrivateData.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<Uint32>, Pointer)
      >();
  late final _SetPrivateDataFn =
      _vtable.SetPrivateData.asFunction<
        int Function(VTablePointer, Pointer<GUID>, int, Pointer)
      >();
  late final _SetPrivateDataInterfaceFn =
      _vtable.SetPrivateDataInterface.asFunction<
        int Function(VTablePointer, Pointer<GUID>, VTablePointer)
      >();
  late final _GetFeatureLevelFn =
      _vtable.GetFeatureLevel.asFunction<int Function(VTablePointer)>();
  late final _GetCreationFlagsFn =
      _vtable.GetCreationFlags.asFunction<int Function(VTablePointer)>();
  late final _GetDeviceRemovedReasonFn =
      _vtable.GetDeviceRemovedReason.asFunction<int Function(VTablePointer)>();
  late final _GetImmediateContextFn =
      _vtable.GetImmediateContext.asFunction<
        void Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _SetExceptionModeFn =
      _vtable.SetExceptionMode.asFunction<int Function(VTablePointer, int)>();
  late final _GetExceptionModeFn =
      _vtable.GetExceptionMode.asFunction<int Function(VTablePointer)>();

  /// Creates a buffer (vertex buffer, index buffer, or shader-constant buffer).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createbuffer>.
  @pragma('vm:prefer-inline')
  void createBuffer(
    Pointer<D3D11_BUFFER_DESC> pDesc,
    Pointer<D3D11_SUBRESOURCE_DATA>? pInitialData,
    Pointer<VTablePointer>? ppBuffer,
  ) {
    final hr$ = HRESULT(
      _CreateBufferFn(ptr, pDesc, pInitialData ?? nullptr, ppBuffer ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates an array of 1D textures.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createtexture1d>.
  @pragma('vm:prefer-inline')
  void createTexture1D(
    Pointer<D3D11_TEXTURE1D_DESC> pDesc,
    Pointer<D3D11_SUBRESOURCE_DATA>? pInitialData,
    Pointer<VTablePointer>? ppTexture1D,
  ) {
    final hr$ = HRESULT(
      _CreateTexture1DFn(
        ptr,
        pDesc,
        pInitialData ?? nullptr,
        ppTexture1D ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Create an array of 2D textures.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createtexture2d>.
  @pragma('vm:prefer-inline')
  void createTexture2D(
    Pointer<D3D11_TEXTURE2D_DESC> pDesc,
    Pointer<D3D11_SUBRESOURCE_DATA>? pInitialData,
    Pointer<VTablePointer>? ppTexture2D,
  ) {
    final hr$ = HRESULT(
      _CreateTexture2DFn(
        ptr,
        pDesc,
        pInitialData ?? nullptr,
        ppTexture2D ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Create a single 3D texture.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createtexture3d>.
  @pragma('vm:prefer-inline')
  void createTexture3D(
    Pointer<D3D11_TEXTURE3D_DESC> pDesc,
    Pointer<D3D11_SUBRESOURCE_DATA>? pInitialData,
    Pointer<VTablePointer>? ppTexture3D,
  ) {
    final hr$ = HRESULT(
      _CreateTexture3DFn(
        ptr,
        pDesc,
        pInitialData ?? nullptr,
        ppTexture3D ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Create a shader-resource view for accessing data in a resource.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createshaderresourceview>.
  @pragma('vm:prefer-inline')
  void createShaderResourceView(
    ID3D11Resource? pResource,
    Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC>? pDesc,
    Pointer<VTablePointer>? ppSRView,
  ) {
    final hr$ = HRESULT(
      _CreateShaderResourceViewFn(
        ptr,
        pResource?.ptr ?? nullptr,
        pDesc ?? nullptr,
        ppSRView ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a view for accessing an unordered access resource.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createunorderedaccessview>.
  @pragma('vm:prefer-inline')
  void createUnorderedAccessView(
    ID3D11Resource? pResource,
    Pointer<D3D11_UNORDERED_ACCESS_VIEW_DESC>? pDesc,
    Pointer<VTablePointer>? ppUAView,
  ) {
    final hr$ = HRESULT(
      _CreateUnorderedAccessViewFn(
        ptr,
        pResource?.ptr ?? nullptr,
        pDesc ?? nullptr,
        ppUAView ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a render-target view for accessing resource data.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createrendertargetview>.
  @pragma('vm:prefer-inline')
  void createRenderTargetView(
    ID3D11Resource? pResource,
    Pointer<D3D11_RENDER_TARGET_VIEW_DESC>? pDesc,
    Pointer<VTablePointer>? ppRTView,
  ) {
    final hr$ = HRESULT(
      _CreateRenderTargetViewFn(
        ptr,
        pResource?.ptr ?? nullptr,
        pDesc ?? nullptr,
        ppRTView ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Create a depth-stencil view for accessing resource data.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createdepthstencilview>.
  @pragma('vm:prefer-inline')
  void createDepthStencilView(
    ID3D11Resource? pResource,
    Pointer<D3D11_DEPTH_STENCIL_VIEW_DESC>? pDesc,
    Pointer<VTablePointer>? ppDepthStencilView,
  ) {
    final hr$ = HRESULT(
      _CreateDepthStencilViewFn(
        ptr,
        pResource?.ptr ?? nullptr,
        pDesc ?? nullptr,
        ppDepthStencilView ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Create an input-layout object to describe the input-buffer data for the
  /// input-assembler stage.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createinputlayout>.
  @pragma('vm:prefer-inline')
  void createInputLayout(
    Pointer<D3D11_INPUT_ELEMENT_DESC> pInputElementDescs,
    int numElements,
    Pointer pShaderBytecodeWithInputSignature,
    int bytecodeLength,
    Pointer<VTablePointer>? ppInputLayout,
  ) {
    final hr$ = HRESULT(
      _CreateInputLayoutFn(
        ptr,
        pInputElementDescs,
        numElements,
        pShaderBytecodeWithInputSignature,
        bytecodeLength,
        ppInputLayout ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Create a vertex-shader object from a compiled shader.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createvertexshader>.
  @pragma('vm:prefer-inline')
  void createVertexShader(
    Pointer pShaderBytecode,
    int bytecodeLength,
    ID3D11ClassLinkage? pClassLinkage,
    Pointer<VTablePointer>? ppVertexShader,
  ) {
    final hr$ = HRESULT(
      _CreateVertexShaderFn(
        ptr,
        pShaderBytecode,
        bytecodeLength,
        pClassLinkage?.ptr ?? nullptr,
        ppVertexShader ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Create a geometry shader.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-creategeometryshader>.
  @pragma('vm:prefer-inline')
  void createGeometryShader(
    Pointer pShaderBytecode,
    int bytecodeLength,
    ID3D11ClassLinkage? pClassLinkage,
    Pointer<VTablePointer>? ppGeometryShader,
  ) {
    final hr$ = HRESULT(
      _CreateGeometryShaderFn(
        ptr,
        pShaderBytecode,
        bytecodeLength,
        pClassLinkage?.ptr ?? nullptr,
        ppGeometryShader ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a geometry shader that can write to streaming output buffers.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-creategeometryshaderwithstreamoutput>.
  @pragma('vm:prefer-inline')
  void createGeometryShaderWithStreamOutput(
    Pointer pShaderBytecode,
    int bytecodeLength,
    Pointer<D3D11_SO_DECLARATION_ENTRY>? pSODeclaration,
    int numEntries,
    Pointer<Uint32>? pBufferStrides,
    int numStrides,
    int rasterizedStream,
    ID3D11ClassLinkage? pClassLinkage,
    Pointer<VTablePointer>? ppGeometryShader,
  ) {
    final hr$ = HRESULT(
      _CreateGeometryShaderWithStreamOutputFn(
        ptr,
        pShaderBytecode,
        bytecodeLength,
        pSODeclaration ?? nullptr,
        numEntries,
        pBufferStrides ?? nullptr,
        numStrides,
        rasterizedStream,
        pClassLinkage?.ptr ?? nullptr,
        ppGeometryShader ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Create a pixel shader.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createpixelshader>.
  @pragma('vm:prefer-inline')
  void createPixelShader(
    Pointer pShaderBytecode,
    int bytecodeLength,
    ID3D11ClassLinkage? pClassLinkage,
    Pointer<VTablePointer>? ppPixelShader,
  ) {
    final hr$ = HRESULT(
      _CreatePixelShaderFn(
        ptr,
        pShaderBytecode,
        bytecodeLength,
        pClassLinkage?.ptr ?? nullptr,
        ppPixelShader ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Create a hull shader.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createhullshader>.
  @pragma('vm:prefer-inline')
  void createHullShader(
    Pointer pShaderBytecode,
    int bytecodeLength,
    ID3D11ClassLinkage? pClassLinkage,
    Pointer<VTablePointer>? ppHullShader,
  ) {
    final hr$ = HRESULT(
      _CreateHullShaderFn(
        ptr,
        pShaderBytecode,
        bytecodeLength,
        pClassLinkage?.ptr ?? nullptr,
        ppHullShader ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Create a domain shader.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createdomainshader>.
  @pragma('vm:prefer-inline')
  void createDomainShader(
    Pointer pShaderBytecode,
    int bytecodeLength,
    ID3D11ClassLinkage? pClassLinkage,
    Pointer<VTablePointer>? ppDomainShader,
  ) {
    final hr$ = HRESULT(
      _CreateDomainShaderFn(
        ptr,
        pShaderBytecode,
        bytecodeLength,
        pClassLinkage?.ptr ?? nullptr,
        ppDomainShader ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Create a compute shader.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createcomputeshader>.
  @pragma('vm:prefer-inline')
  void createComputeShader(
    Pointer pShaderBytecode,
    int bytecodeLength,
    ID3D11ClassLinkage? pClassLinkage,
    Pointer<VTablePointer>? ppComputeShader,
  ) {
    final hr$ = HRESULT(
      _CreateComputeShaderFn(
        ptr,
        pShaderBytecode,
        bytecodeLength,
        pClassLinkage?.ptr ?? nullptr,
        ppComputeShader ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates class linkage libraries to enable dynamic shader linkage.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createclasslinkage>.
  ID3D11ClassLinkage? createClassLinkage() {
    final ppLinkage = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateClassLinkageFn(ptr, ppLinkage));
    if (hr$.isError) {
      free(ppLinkage);
      throw WindowsException(hr$);
    }
    final result$ = ppLinkage.value;
    free(ppLinkage);
    if (result$.isNull) return null;
    return ID3D11ClassLinkage(result$);
  }

  /// Create a blend-state object that encapsulates blend state for the
  /// output-merger stage.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createblendstate>.
  @pragma('vm:prefer-inline')
  void createBlendState(
    Pointer<D3D11_BLEND_DESC> pBlendStateDesc,
    Pointer<VTablePointer>? ppBlendState,
  ) {
    final hr$ = HRESULT(
      _CreateBlendStateFn(ptr, pBlendStateDesc, ppBlendState ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Create a depth-stencil state object that encapsulates depth-stencil test
  /// information for the output-merger stage.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createdepthstencilstate>.
  @pragma('vm:prefer-inline')
  void createDepthStencilState(
    Pointer<D3D11_DEPTH_STENCIL_DESC> pDepthStencilDesc,
    Pointer<VTablePointer>? ppDepthStencilState,
  ) {
    final hr$ = HRESULT(
      _CreateDepthStencilStateFn(
        ptr,
        pDepthStencilDesc,
        ppDepthStencilState ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Create a rasterizer state object that tells the rasterizer stage how to
  /// behave.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createrasterizerstate>.
  @pragma('vm:prefer-inline')
  void createRasterizerState(
    Pointer<D3D11_RASTERIZER_DESC> pRasterizerDesc,
    Pointer<VTablePointer>? ppRasterizerState,
  ) {
    final hr$ = HRESULT(
      _CreateRasterizerStateFn(
        ptr,
        pRasterizerDesc,
        ppRasterizerState ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Create a sampler-state object that encapsulates sampling information for a
  /// texture.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createsamplerstate>.
  @pragma('vm:prefer-inline')
  void createSamplerState(
    Pointer<D3D11_SAMPLER_DESC> pSamplerDesc,
    Pointer<VTablePointer>? ppSamplerState,
  ) {
    final hr$ = HRESULT(
      _CreateSamplerStateFn(ptr, pSamplerDesc, ppSamplerState ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// This interface encapsulates methods for querying information from the GPU.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createquery>.
  @pragma('vm:prefer-inline')
  void createQuery(
    Pointer<D3D11_QUERY_DESC> pQueryDesc,
    Pointer<VTablePointer>? ppQuery,
  ) {
    final hr$ = HRESULT(_CreateQueryFn(ptr, pQueryDesc, ppQuery ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a predicate.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createpredicate>.
  @pragma('vm:prefer-inline')
  void createPredicate(
    Pointer<D3D11_QUERY_DESC> pPredicateDesc,
    Pointer<VTablePointer>? ppPredicate,
  ) {
    final hr$ = HRESULT(
      _CreatePredicateFn(ptr, pPredicateDesc, ppPredicate ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Create a counter object for measuring GPU performance.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createcounter>.
  @pragma('vm:prefer-inline')
  void createCounter(
    Pointer<D3D11_COUNTER_DESC> pCounterDesc,
    Pointer<VTablePointer>? ppCounter,
  ) {
    final hr$ = HRESULT(
      _CreateCounterFn(ptr, pCounterDesc, ppCounter ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a deferred context, which can record command lists.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-createdeferredcontext>.
  @pragma('vm:prefer-inline')
  void createDeferredContext(
    int contextFlags,
    Pointer<VTablePointer>? ppDeferredContext,
  ) {
    final hr$ = HRESULT(
      _CreateDeferredContextFn(ptr, contextFlags, ppDeferredContext ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Give a device access to a shared resource created on a different device.
  ///
  /// This method uses the [ComInterface.type] method to retrieve metadata about
  /// the target interface defined by [T], including its IID (Interface ID) and
  /// instantiation logic.
  ///
  /// All COM interfaces provided by this package are pre-registered. Custom COM
  /// interfaces must be registered manually using the [ComInterface.register]
  /// method before calling this method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-opensharedresource>.
  void openSharedResource<T extends IUnknown>(
    HANDLE hResource,
    Pointer<VTablePointer>? ppResource,
  ) {
    final companion = ComInterface.type<T>();
    final returnedInterface = companion.iid.toNative();
    final hr$ = HRESULT(
      _OpenSharedResourceFn(
        ptr,
        hResource,
        returnedInterface,
        ppResource ?? nullptr,
      ),
    );
    free(returnedInterface);
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Get the support of a given format on the installed video device.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-checkformatsupport>.
  int checkFormatSupport(DXGI_FORMAT format) {
    final pFormatSupport = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(_CheckFormatSupportFn(ptr, format, pFormatSupport));
    if (hr$.isError) {
      free(pFormatSupport);
      throw WindowsException(hr$);
    }
    final result$ = pFormatSupport.value;
    free(pFormatSupport);
    return result$;
  }

  /// Get the number of quality levels available during multisampling.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-checkmultisamplequalitylevels>.
  int checkMultisampleQualityLevels(DXGI_FORMAT format, int sampleCount) {
    final pNumQualityLevels = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(
      _CheckMultisampleQualityLevelsFn(
        ptr,
        format,
        sampleCount,
        pNumQualityLevels,
      ),
    );
    if (hr$.isError) {
      free(pNumQualityLevels);
      throw WindowsException(hr$);
    }
    final result$ = pNumQualityLevels.value;
    free(pNumQualityLevels);
    return result$;
  }

  /// Get a counter's information.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-checkcounterinfo>.
  @pragma('vm:prefer-inline')
  void checkCounterInfo(Pointer<D3D11_COUNTER_INFO> pCounterInfo) =>
      _CheckCounterInfoFn(ptr, pCounterInfo);

  /// Get the type, name, units of measure, and a description of an existing
  /// counter.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-checkcounter>.
  @pragma('vm:prefer-inline')
  void checkCounter(
    Pointer<D3D11_COUNTER_DESC> pDesc,
    Pointer<Int32> pType,
    Pointer<Uint32> pActiveCounters,
    PSTR? szName,
    Pointer<Uint32>? pNameLength,
    PSTR? szUnits,
    Pointer<Uint32>? pUnitsLength,
    PSTR? szDescription,
    Pointer<Uint32>? pDescriptionLength,
  ) {
    final hr$ = HRESULT(
      _CheckCounterFn(
        ptr,
        pDesc,
        pType,
        pActiveCounters,
        szName ?? nullptr,
        pNameLength ?? nullptr,
        szUnits ?? nullptr,
        pUnitsLength ?? nullptr,
        szDescription ?? nullptr,
        pDescriptionLength ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets information about the features that are supported by the current
  /// graphics driver.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-checkfeaturesupport>.
  @pragma('vm:prefer-inline')
  void checkFeatureSupport(
    D3D11_FEATURE feature,
    Pointer pFeatureSupportData,
    int featureSupportDataSize,
  ) {
    final hr$ = HRESULT(
      _CheckFeatureSupportFn(
        ptr,
        feature,
        pFeatureSupportData,
        featureSupportDataSize,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Get application-defined data from a device.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-getprivatedata>.
  @pragma('vm:prefer-inline')
  void getPrivateData(
    Pointer<GUID> guid,
    Pointer<Uint32> pDataSize,
    Pointer? pData,
  ) {
    final hr$ = HRESULT(
      _GetPrivateDataFn(ptr, guid, pDataSize, pData ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Set data to a device and associate that data with a guid.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-setprivatedata>.
  @pragma('vm:prefer-inline')
  void setPrivateData(Pointer<GUID> guid, int dataSize, Pointer? pData) {
    final hr$ = HRESULT(
      _SetPrivateDataFn(ptr, guid, dataSize, pData ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Associate an IUnknown-derived interface with this device child and
  /// associate that interface with an application-defined guid.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-setprivatedatainterface>.
  @pragma('vm:prefer-inline')
  void setPrivateDataInterface(Pointer<GUID> guid, IUnknown? pData) {
    final hr$ = HRESULT(
      _SetPrivateDataInterfaceFn(ptr, guid, pData?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the feature level of the hardware device.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-getfeaturelevel>.
  @pragma('vm:prefer-inline')
  D3D_FEATURE_LEVEL getFeatureLevel() =>
      D3D_FEATURE_LEVEL(_GetFeatureLevelFn(ptr));

  /// Get the flags used during the call to create the device with
  /// D3D11CreateDevice.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-getcreationflags>.
  @pragma('vm:prefer-inline')
  int getCreationFlags() => _GetCreationFlagsFn(ptr);

  /// Get the reason why the device was removed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-getdeviceremovedreason>.
  @pragma('vm:prefer-inline')
  void getDeviceRemovedReason() {
    final hr$ = HRESULT(_GetDeviceRemovedReasonFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets an immediate context, which can play back command lists.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-getimmediatecontext>.
  @pragma('vm:prefer-inline')
  void getImmediateContext(Pointer<VTablePointer> ppImmediateContext) =>
      _GetImmediateContextFn(ptr, ppImmediateContext);

  /// Get the exception-mode flags.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-setexceptionmode>.
  @pragma('vm:prefer-inline')
  void setExceptionMode(int raiseFlags) {
    final hr$ = HRESULT(_SetExceptionModeFn(ptr, raiseFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Get the exception-mode flags.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11device-getexceptionmode>.
  @pragma('vm:prefer-inline')
  int getExceptionMode() => _GetExceptionModeFn(ptr);

  @override
  String toString() => 'ID3D11Device(ptr: $ptr)';
}

/// @nodoc
base class ID3D11DeviceVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_BUFFER_DESC> pDesc,
        Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
        Pointer<VTablePointer> ppBuffer,
      )
    >
  >
  CreateBuffer;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_TEXTURE1D_DESC> pDesc,
        Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
        Pointer<VTablePointer> ppTexture1D,
      )
    >
  >
  CreateTexture1D;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_TEXTURE2D_DESC> pDesc,
        Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
        Pointer<VTablePointer> ppTexture2D,
      )
    >
  >
  CreateTexture2D;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_TEXTURE3D_DESC> pDesc,
        Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
        Pointer<VTablePointer> ppTexture3D,
      )
    >
  >
  CreateTexture3D;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pResource,
        Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC> pDesc,
        Pointer<VTablePointer> ppSRView,
      )
    >
  >
  CreateShaderResourceView;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pResource,
        Pointer<D3D11_UNORDERED_ACCESS_VIEW_DESC> pDesc,
        Pointer<VTablePointer> ppUAView,
      )
    >
  >
  CreateUnorderedAccessView;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pResource,
        Pointer<D3D11_RENDER_TARGET_VIEW_DESC> pDesc,
        Pointer<VTablePointer> ppRTView,
      )
    >
  >
  CreateRenderTargetView;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pResource,
        Pointer<D3D11_DEPTH_STENCIL_VIEW_DESC> pDesc,
        Pointer<VTablePointer> ppDepthStencilView,
      )
    >
  >
  CreateDepthStencilView;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_INPUT_ELEMENT_DESC> pInputElementDescs,
        Uint32 numElements,
        Pointer pShaderBytecodeWithInputSignature,
        IntPtr bytecodeLength,
        Pointer<VTablePointer> ppInputLayout,
      )
    >
  >
  CreateInputLayout;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer pShaderBytecode,
        IntPtr bytecodeLength,
        VTablePointer pClassLinkage,
        Pointer<VTablePointer> ppVertexShader,
      )
    >
  >
  CreateVertexShader;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer pShaderBytecode,
        IntPtr bytecodeLength,
        VTablePointer pClassLinkage,
        Pointer<VTablePointer> ppGeometryShader,
      )
    >
  >
  CreateGeometryShader;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer pShaderBytecode,
        IntPtr bytecodeLength,
        Pointer<D3D11_SO_DECLARATION_ENTRY> pSODeclaration,
        Uint32 numEntries,
        Pointer<Uint32> pBufferStrides,
        Uint32 numStrides,
        Uint32 rasterizedStream,
        VTablePointer pClassLinkage,
        Pointer<VTablePointer> ppGeometryShader,
      )
    >
  >
  CreateGeometryShaderWithStreamOutput;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer pShaderBytecode,
        IntPtr bytecodeLength,
        VTablePointer pClassLinkage,
        Pointer<VTablePointer> ppPixelShader,
      )
    >
  >
  CreatePixelShader;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer pShaderBytecode,
        IntPtr bytecodeLength,
        VTablePointer pClassLinkage,
        Pointer<VTablePointer> ppHullShader,
      )
    >
  >
  CreateHullShader;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer pShaderBytecode,
        IntPtr bytecodeLength,
        VTablePointer pClassLinkage,
        Pointer<VTablePointer> ppDomainShader,
      )
    >
  >
  CreateDomainShader;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer pShaderBytecode,
        IntPtr bytecodeLength,
        VTablePointer pClassLinkage,
        Pointer<VTablePointer> ppComputeShader,
      )
    >
  >
  CreateComputeShader;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppLinkage)
    >
  >
  CreateClassLinkage;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_BLEND_DESC> pBlendStateDesc,
        Pointer<VTablePointer> ppBlendState,
      )
    >
  >
  CreateBlendState;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_DEPTH_STENCIL_DESC> pDepthStencilDesc,
        Pointer<VTablePointer> ppDepthStencilState,
      )
    >
  >
  CreateDepthStencilState;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_RASTERIZER_DESC> pRasterizerDesc,
        Pointer<VTablePointer> ppRasterizerState,
      )
    >
  >
  CreateRasterizerState;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_SAMPLER_DESC> pSamplerDesc,
        Pointer<VTablePointer> ppSamplerState,
      )
    >
  >
  CreateSamplerState;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_QUERY_DESC> pQueryDesc,
        Pointer<VTablePointer> ppQuery,
      )
    >
  >
  CreateQuery;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_QUERY_DESC> pPredicateDesc,
        Pointer<VTablePointer> ppPredicate,
      )
    >
  >
  CreatePredicate;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_COUNTER_DESC> pCounterDesc,
        Pointer<VTablePointer> ppCounter,
      )
    >
  >
  CreateCounter;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 contextFlags,
        Pointer<VTablePointer> ppDeferredContext,
      )
    >
  >
  CreateDeferredContext;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer hResource,
        Pointer<GUID> returnedInterface,
        Pointer<Pointer> ppResource,
      )
    >
  >
  OpenSharedResource;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 format,
        Pointer<Uint32> pFormatSupport,
      )
    >
  >
  CheckFormatSupport;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 format,
        Uint32 sampleCount,
        Pointer<Uint32> pNumQualityLevels,
      )
    >
  >
  CheckMultisampleQualityLevels;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<D3D11_COUNTER_INFO> pCounterInfo,
      )
    >
  >
  CheckCounterInfo;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_COUNTER_DESC> pDesc,
        Pointer<Int32> pType,
        Pointer<Uint32> pActiveCounters,
        Pointer<Utf8> szName,
        Pointer<Uint32> pNameLength,
        Pointer<Utf8> szUnits,
        Pointer<Uint32> pUnitsLength,
        Pointer<Utf8> szDescription,
        Pointer<Uint32> pDescriptionLength,
      )
    >
  >
  CheckCounter;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 feature,
        Pointer pFeatureSupportData,
        Uint32 featureSupportDataSize,
      )
    >
  >
  CheckFeatureSupport;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> guid,
        Pointer<Uint32> pDataSize,
        Pointer pData,
      )
    >
  >
  GetPrivateData;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> guid,
        Uint32 dataSize,
        Pointer pData,
      )
    >
  >
  SetPrivateData;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> guid,
        VTablePointer pData,
      )
    >
  >
  SetPrivateDataInterface;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  GetFeatureLevel;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetCreationFlags;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  GetDeviceRemovedReason;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppImmediateContext,
      )
    >
  >
  GetImmediateContext;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 raiseFlags)>
  >
  SetExceptionMode;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetExceptionMode;
}

@internal
final class ID3D11DeviceCompanion extends ComCompanion<ID3D11Device> {
  const ID3D11DeviceCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11Device Function(VTablePointer) get fromPointer => ID3D11Device.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11Device;
}
