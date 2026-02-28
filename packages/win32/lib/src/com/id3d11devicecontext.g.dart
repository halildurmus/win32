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
import 'id3d11asynchronous.g.dart';
import 'id3d11blendstate.g.dart';
import 'id3d11buffer.g.dart';
import 'id3d11classinstance.g.dart';
import 'id3d11commandlist.g.dart';
import 'id3d11computeshader.g.dart';
import 'id3d11depthstencilstate.g.dart';
import 'id3d11depthstencilview.g.dart';
import 'id3d11devicechild.g.dart';
import 'id3d11domainshader.g.dart';
import 'id3d11geometryshader.g.dart';
import 'id3d11hullshader.g.dart';
import 'id3d11inputlayout.g.dart';
import 'id3d11pixelshader.g.dart';
import 'id3d11predicate.g.dart';
import 'id3d11rasterizerstate.g.dart';
import 'id3d11rendertargetview.g.dart';
import 'id3d11resource.g.dart';
import 'id3d11samplerstate.g.dart';
import 'id3d11shaderresourceview.g.dart';
import 'id3d11unorderedaccessview.g.dart';
import 'id3d11vertexshader.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11DeviceContext = GUID.fromComponents(
  0xc0bfa96c,
  0xe089,
  0x44fb,
  Uint8List.fromList(const [0x8e, 0xaf, 0x26, 0xf8, 0x79, 0x61, 0x90, 0xda]),
);

/// Represents a device context which generates rendering commands.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11devicecontext>.
///
/// {@category com}
class ID3D11DeviceContext extends ID3D11DeviceChild implements ComInterface {
  /// Creates a new instance of [ID3D11DeviceContext] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11DeviceContext]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11DeviceContext(super.ptr)
    : _vtable = ptr.value.cast<ID3D11DeviceContextVtbl>().ref;

  /// Creates a new instance of [ID3D11DeviceContext] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11DeviceContext] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11DeviceContext.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11DeviceContextVtbl _vtable;
  late final _VSSetConstantBuffersFn =
      _vtable.VSSetConstantBuffers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _PSSetShaderResourcesFn =
      _vtable.PSSetShaderResources.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _PSSetShaderFn =
      _vtable.PSSetShader.asFunction<
        void Function(VTablePointer, VTablePointer, Pointer<VTablePointer>, int)
      >();
  late final _PSSetSamplersFn =
      _vtable.PSSetSamplers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _VSSetShaderFn =
      _vtable.VSSetShader.asFunction<
        void Function(VTablePointer, VTablePointer, Pointer<VTablePointer>, int)
      >();
  late final _DrawIndexedFn = _vtable
      .DrawIndexed.asFunction<void Function(VTablePointer, int, int, int)>();
  late final _DrawFn =
      _vtable.Draw.asFunction<void Function(VTablePointer, int, int)>();
  late final _MapFn =
      _vtable.Map.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          int,
          int,
          Pointer<D3D11_MAPPED_SUBRESOURCE>,
        )
      >();
  late final _UnmapFn = _vtable
      .Unmap.asFunction<void Function(VTablePointer, VTablePointer, int)>();
  late final _PSSetConstantBuffersFn =
      _vtable.PSSetConstantBuffers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _IASetInputLayoutFn =
      _vtable.IASetInputLayout.asFunction<
        void Function(VTablePointer, VTablePointer)
      >();
  late final _IASetVertexBuffersFn =
      _vtable.IASetVertexBuffers.asFunction<
        void Function(
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _IASetIndexBufferFn =
      _vtable.IASetIndexBuffer.asFunction<
        void Function(VTablePointer, VTablePointer, int, int)
      >();
  late final _DrawIndexedInstancedFn =
      _vtable.DrawIndexedInstanced.asFunction<
        void Function(VTablePointer, int, int, int, int, int)
      >();
  late final _DrawInstancedFn =
      _vtable.DrawInstanced.asFunction<
        void Function(VTablePointer, int, int, int, int)
      >();
  late final _GSSetConstantBuffersFn =
      _vtable.GSSetConstantBuffers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _GSSetShaderFn =
      _vtable.GSSetShader.asFunction<
        void Function(VTablePointer, VTablePointer, Pointer<VTablePointer>, int)
      >();
  late final _IASetPrimitiveTopologyFn = _vtable
      .IASetPrimitiveTopology.asFunction<void Function(VTablePointer, int)>();
  late final _VSSetShaderResourcesFn =
      _vtable.VSSetShaderResources.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _VSSetSamplersFn =
      _vtable.VSSetSamplers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _BeginFn =
      _vtable.Begin.asFunction<void Function(VTablePointer, VTablePointer)>();
  late final _EndFn =
      _vtable.End.asFunction<void Function(VTablePointer, VTablePointer)>();
  late final _GetDataFn =
      _vtable.GetData.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer, int, int)
      >();
  late final _SetPredicationFn =
      _vtable.SetPredication.asFunction<
        void Function(VTablePointer, VTablePointer, int)
      >();
  late final _GSSetShaderResourcesFn =
      _vtable.GSSetShaderResources.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _GSSetSamplersFn =
      _vtable.GSSetSamplers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _OMSetRenderTargetsFn =
      _vtable.OMSetRenderTargets.asFunction<
        void Function(VTablePointer, int, Pointer<VTablePointer>, VTablePointer)
      >();
  late final _OMSetRenderTargetsAndUnorderedAccessViewsFn =
      _vtable.OMSetRenderTargetsAndUnorderedAccessViews.asFunction<
        void Function(
          VTablePointer,
          int,
          Pointer<VTablePointer>,
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
        )
      >();
  late final _OMSetBlendStateFn =
      _vtable.OMSetBlendState.asFunction<
        void Function(VTablePointer, VTablePointer, Pointer<Float>, int)
      >();
  late final _OMSetDepthStencilStateFn =
      _vtable.OMSetDepthStencilState.asFunction<
        void Function(VTablePointer, VTablePointer, int)
      >();
  late final _SOSetTargetsFn =
      _vtable.SOSetTargets.asFunction<
        void Function(
          VTablePointer,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
        )
      >();
  late final _DrawAutoFn =
      _vtable.DrawAuto.asFunction<void Function(VTablePointer)>();
  late final _DrawIndexedInstancedIndirectFn =
      _vtable.DrawIndexedInstancedIndirect.asFunction<
        void Function(VTablePointer, VTablePointer, int)
      >();
  late final _DrawInstancedIndirectFn =
      _vtable.DrawInstancedIndirect.asFunction<
        void Function(VTablePointer, VTablePointer, int)
      >();
  late final _DispatchFn = _vtable
      .Dispatch.asFunction<void Function(VTablePointer, int, int, int)>();
  late final _DispatchIndirectFn =
      _vtable.DispatchIndirect.asFunction<
        void Function(VTablePointer, VTablePointer, int)
      >();
  late final _RSSetStateFn = _vtable
      .RSSetState.asFunction<void Function(VTablePointer, VTablePointer)>();
  late final _RSSetViewportsFn =
      _vtable.RSSetViewports.asFunction<
        void Function(VTablePointer, int, Pointer<D3D11_VIEWPORT>)
      >();
  late final _RSSetScissorRectsFn =
      _vtable.RSSetScissorRects.asFunction<
        void Function(VTablePointer, int, Pointer<RECT>)
      >();
  late final _CopySubresourceRegionFn =
      _vtable.CopySubresourceRegion.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          int,
          int,
          int,
          VTablePointer,
          int,
          Pointer<D3D11_BOX>,
        )
      >();
  late final _CopyResourceFn =
      _vtable.CopyResource.asFunction<
        void Function(VTablePointer, VTablePointer, VTablePointer)
      >();
  late final _UpdateSubresourceFn =
      _vtable.UpdateSubresource.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<D3D11_BOX>,
          Pointer,
          int,
          int,
        )
      >();
  late final _CopyStructureCountFn =
      _vtable.CopyStructureCount.asFunction<
        void Function(VTablePointer, VTablePointer, int, VTablePointer)
      >();
  late final _ClearRenderTargetViewFn =
      _vtable.ClearRenderTargetView.asFunction<
        void Function(VTablePointer, VTablePointer, Pointer<Float>)
      >();
  late final _ClearUnorderedAccessViewUintFn =
      _vtable.ClearUnorderedAccessViewUint.asFunction<
        void Function(VTablePointer, VTablePointer, Pointer<Uint32>)
      >();
  late final _ClearUnorderedAccessViewFloatFn =
      _vtable.ClearUnorderedAccessViewFloat.asFunction<
        void Function(VTablePointer, VTablePointer, Pointer<Float>)
      >();
  late final _ClearDepthStencilViewFn =
      _vtable.ClearDepthStencilView.asFunction<
        void Function(VTablePointer, VTablePointer, int, double, int)
      >();
  late final _GenerateMipsFn = _vtable
      .GenerateMips.asFunction<void Function(VTablePointer, VTablePointer)>();
  late final _SetResourceMinLODFn =
      _vtable.SetResourceMinLOD.asFunction<
        void Function(VTablePointer, VTablePointer, double)
      >();
  late final _GetResourceMinLODFn =
      _vtable.GetResourceMinLOD.asFunction<
        double Function(VTablePointer, VTablePointer)
      >();
  late final _ResolveSubresourceFn =
      _vtable.ResolveSubresource.asFunction<
        void Function(
          VTablePointer,
          VTablePointer,
          int,
          VTablePointer,
          int,
          int,
        )
      >();
  late final _ExecuteCommandListFn =
      _vtable.ExecuteCommandList.asFunction<
        void Function(VTablePointer, VTablePointer, int)
      >();
  late final _HSSetShaderResourcesFn =
      _vtable.HSSetShaderResources.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _HSSetShaderFn =
      _vtable.HSSetShader.asFunction<
        void Function(VTablePointer, VTablePointer, Pointer<VTablePointer>, int)
      >();
  late final _HSSetSamplersFn =
      _vtable.HSSetSamplers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _HSSetConstantBuffersFn =
      _vtable.HSSetConstantBuffers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _DSSetShaderResourcesFn =
      _vtable.DSSetShaderResources.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _DSSetShaderFn =
      _vtable.DSSetShader.asFunction<
        void Function(VTablePointer, VTablePointer, Pointer<VTablePointer>, int)
      >();
  late final _DSSetSamplersFn =
      _vtable.DSSetSamplers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _DSSetConstantBuffersFn =
      _vtable.DSSetConstantBuffers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _CSSetShaderResourcesFn =
      _vtable.CSSetShaderResources.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _CSSetUnorderedAccessViewsFn =
      _vtable.CSSetUnorderedAccessViews.asFunction<
        void Function(
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
        )
      >();
  late final _CSSetShaderFn =
      _vtable.CSSetShader.asFunction<
        void Function(VTablePointer, VTablePointer, Pointer<VTablePointer>, int)
      >();
  late final _CSSetSamplersFn =
      _vtable.CSSetSamplers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _CSSetConstantBuffersFn =
      _vtable.CSSetConstantBuffers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _VSGetConstantBuffersFn =
      _vtable.VSGetConstantBuffers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _PSGetShaderResourcesFn =
      _vtable.PSGetShaderResources.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _PSGetShaderFn =
      _vtable.PSGetShader.asFunction<
        void Function(
          VTablePointer,
          Pointer<VTablePointer>,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
        )
      >();
  late final _PSGetSamplersFn =
      _vtable.PSGetSamplers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _VSGetShaderFn =
      _vtable.VSGetShader.asFunction<
        void Function(
          VTablePointer,
          Pointer<VTablePointer>,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
        )
      >();
  late final _PSGetConstantBuffersFn =
      _vtable.PSGetConstantBuffers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _IAGetInputLayoutFn =
      _vtable.IAGetInputLayout.asFunction<
        void Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _IAGetVertexBuffersFn =
      _vtable.IAGetVertexBuffers.asFunction<
        void Function(
          VTablePointer,
          int,
          int,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _IAGetIndexBufferFn =
      _vtable.IAGetIndexBuffer.asFunction<
        void Function(
          VTablePointer,
          Pointer<VTablePointer>,
          Pointer<Int32>,
          Pointer<Uint32>,
        )
      >();
  late final _GSGetConstantBuffersFn =
      _vtable.GSGetConstantBuffers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _GSGetShaderFn =
      _vtable.GSGetShader.asFunction<
        void Function(
          VTablePointer,
          Pointer<VTablePointer>,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
        )
      >();
  late final _IAGetPrimitiveTopologyFn =
      _vtable.IAGetPrimitiveTopology.asFunction<
        void Function(VTablePointer, Pointer<Int32>)
      >();
  late final _VSGetShaderResourcesFn =
      _vtable.VSGetShaderResources.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _VSGetSamplersFn =
      _vtable.VSGetSamplers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _GetPredicationFn =
      _vtable.GetPredication.asFunction<
        void Function(VTablePointer, Pointer<VTablePointer>, Pointer<Int32>)
      >();
  late final _GSGetShaderResourcesFn =
      _vtable.GSGetShaderResources.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _GSGetSamplersFn =
      _vtable.GSGetSamplers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _OMGetRenderTargetsFn =
      _vtable.OMGetRenderTargets.asFunction<
        void Function(
          VTablePointer,
          int,
          Pointer<VTablePointer>,
          Pointer<VTablePointer>,
        )
      >();
  late final _OMGetRenderTargetsAndUnorderedAccessViewsFn =
      _vtable.OMGetRenderTargetsAndUnorderedAccessViews.asFunction<
        void Function(
          VTablePointer,
          int,
          Pointer<VTablePointer>,
          Pointer<VTablePointer>,
          int,
          int,
          Pointer<VTablePointer>,
        )
      >();
  late final _OMGetBlendStateFn =
      _vtable.OMGetBlendState.asFunction<
        void Function(
          VTablePointer,
          Pointer<VTablePointer>,
          Pointer<Float>,
          Pointer<Uint32>,
        )
      >();
  late final _OMGetDepthStencilStateFn =
      _vtable.OMGetDepthStencilState.asFunction<
        void Function(VTablePointer, Pointer<VTablePointer>, Pointer<Uint32>)
      >();
  late final _SOGetTargetsFn =
      _vtable.SOGetTargets.asFunction<
        void Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _RSGetStateFn =
      _vtable.RSGetState.asFunction<
        void Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _RSGetViewportsFn =
      _vtable.RSGetViewports.asFunction<
        void Function(VTablePointer, Pointer<Uint32>, Pointer<D3D11_VIEWPORT>)
      >();
  late final _RSGetScissorRectsFn =
      _vtable.RSGetScissorRects.asFunction<
        void Function(VTablePointer, Pointer<Uint32>, Pointer<RECT>)
      >();
  late final _HSGetShaderResourcesFn =
      _vtable.HSGetShaderResources.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _HSGetShaderFn =
      _vtable.HSGetShader.asFunction<
        void Function(
          VTablePointer,
          Pointer<VTablePointer>,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
        )
      >();
  late final _HSGetSamplersFn =
      _vtable.HSGetSamplers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _HSGetConstantBuffersFn =
      _vtable.HSGetConstantBuffers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _DSGetShaderResourcesFn =
      _vtable.DSGetShaderResources.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _DSGetShaderFn =
      _vtable.DSGetShader.asFunction<
        void Function(
          VTablePointer,
          Pointer<VTablePointer>,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
        )
      >();
  late final _DSGetSamplersFn =
      _vtable.DSGetSamplers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _DSGetConstantBuffersFn =
      _vtable.DSGetConstantBuffers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _CSGetShaderResourcesFn =
      _vtable.CSGetShaderResources.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _CSGetUnorderedAccessViewsFn =
      _vtable.CSGetUnorderedAccessViews.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _CSGetShaderFn =
      _vtable.CSGetShader.asFunction<
        void Function(
          VTablePointer,
          Pointer<VTablePointer>,
          Pointer<VTablePointer>,
          Pointer<Uint32>,
        )
      >();
  late final _CSGetSamplersFn =
      _vtable.CSGetSamplers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _CSGetConstantBuffersFn =
      _vtable.CSGetConstantBuffers.asFunction<
        void Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _ClearStateFn =
      _vtable.ClearState.asFunction<void Function(VTablePointer)>();
  late final _FlushFn =
      _vtable.Flush.asFunction<void Function(VTablePointer)>();
  late final _GetTypeFn =
      _vtable.GetType.asFunction<int Function(VTablePointer)>();
  late final _GetContextFlagsFn =
      _vtable.GetContextFlags.asFunction<int Function(VTablePointer)>();
  late final _FinishCommandListFn =
      _vtable.FinishCommandList.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();

  /// Sets the constant buffers used by the vertex shader pipeline stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-vssetconstantbuffers>.
  @pragma('vm:prefer-inline')
  void vSSetConstantBuffers(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
  ) => _VSSetConstantBuffersFn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
  );

  /// Bind an array of shader resources to the pixel shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-pssetshaderresources>.
  @pragma('vm:prefer-inline')
  void pSSetShaderResources(
    int startSlot,
    int numViews,
    Pointer<VTablePointer>? ppShaderResourceViews,
  ) => _PSSetShaderResourcesFn(
    ptr,
    startSlot,
    numViews,
    ppShaderResourceViews ?? nullptr,
  );

  /// Sets a pixel shader to the device.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-pssetshader>.
  @pragma('vm:prefer-inline')
  void pSSetShader(
    ID3D11PixelShader? pPixelShader,
    Pointer<VTablePointer>? ppClassInstances,
    int numClassInstances,
  ) => _PSSetShaderFn(
    ptr,
    pPixelShader?.ptr ?? nullptr,
    ppClassInstances ?? nullptr,
    numClassInstances,
  );

  /// Set an array of sampler states to the pixel shader pipeline stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-pssetsamplers>.
  @pragma('vm:prefer-inline')
  void pSSetSamplers(
    int startSlot,
    int numSamplers,
    Pointer<VTablePointer>? ppSamplers,
  ) => _PSSetSamplersFn(ptr, startSlot, numSamplers, ppSamplers ?? nullptr);

  /// Set a vertex shader to the device.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-vssetshader>.
  @pragma('vm:prefer-inline')
  void vSSetShader(
    ID3D11VertexShader? pVertexShader,
    Pointer<VTablePointer>? ppClassInstances,
    int numClassInstances,
  ) => _VSSetShaderFn(
    ptr,
    pVertexShader?.ptr ?? nullptr,
    ppClassInstances ?? nullptr,
    numClassInstances,
  );

  /// Draw indexed, non-instanced primitives.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-drawindexed>.
  @pragma('vm:prefer-inline')
  void drawIndexed(
    int indexCount,
    int startIndexLocation,
    int baseVertexLocation,
  ) => _DrawIndexedFn(ptr, indexCount, startIndexLocation, baseVertexLocation);

  /// Draw non-indexed, non-instanced primitives.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-draw>.
  @pragma('vm:prefer-inline')
  void draw(int vertexCount, int startVertexLocation) =>
      _DrawFn(ptr, vertexCount, startVertexLocation);

  /// Gets a pointer to the data contained in a subresource, and denies the GPU
  /// access to that subresource.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-map>.
  @pragma('vm:prefer-inline')
  void map(
    ID3D11Resource? pResource,
    int subresource,
    D3D11_MAP mapType,
    int mapFlags,
    Pointer<D3D11_MAPPED_SUBRESOURCE>? pMappedResource,
  ) {
    final hr$ = HRESULT(
      _MapFn(
        ptr,
        pResource?.ptr ?? nullptr,
        subresource,
        mapType,
        mapFlags,
        pMappedResource ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Invalidate the pointer to a resource and reenable the GPU's access to that
  /// resource.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-unmap>.
  @pragma('vm:prefer-inline')
  void unmap(ID3D11Resource? pResource, int subresource) =>
      _UnmapFn(ptr, pResource?.ptr ?? nullptr, subresource);

  /// Sets the constant buffers used by the pixel shader pipeline stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-pssetconstantbuffers>.
  @pragma('vm:prefer-inline')
  void pSSetConstantBuffers(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
  ) => _PSSetConstantBuffersFn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
  );

  /// Bind an input-layout object to the input-assembler stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-iasetinputlayout>.
  @pragma('vm:prefer-inline')
  void iASetInputLayout(ID3D11InputLayout? pInputLayout) =>
      _IASetInputLayoutFn(ptr, pInputLayout?.ptr ?? nullptr);

  /// Bind an array of vertex buffers to the input-assembler stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-iasetvertexbuffers>.
  @pragma('vm:prefer-inline')
  void iASetVertexBuffers(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppVertexBuffers,
    Pointer<Uint32>? pStrides,
    Pointer<Uint32>? pOffsets,
  ) => _IASetVertexBuffersFn(
    ptr,
    startSlot,
    numBuffers,
    ppVertexBuffers ?? nullptr,
    pStrides ?? nullptr,
    pOffsets ?? nullptr,
  );

  /// Bind an index buffer to the input-assembler stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-iasetindexbuffer>.
  @pragma('vm:prefer-inline')
  void iASetIndexBuffer(
    ID3D11Buffer? pIndexBuffer,
    DXGI_FORMAT format,
    int offset,
  ) => _IASetIndexBufferFn(ptr, pIndexBuffer?.ptr ?? nullptr, format, offset);

  /// Draw indexed, instanced primitives.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-drawindexedinstanced>.
  @pragma('vm:prefer-inline')
  void drawIndexedInstanced(
    int indexCountPerInstance,
    int instanceCount,
    int startIndexLocation,
    int baseVertexLocation,
    int startInstanceLocation,
  ) => _DrawIndexedInstancedFn(
    ptr,
    indexCountPerInstance,
    instanceCount,
    startIndexLocation,
    baseVertexLocation,
    startInstanceLocation,
  );

  /// Draw non-indexed, instanced primitives.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-drawinstanced>.
  @pragma('vm:prefer-inline')
  void drawInstanced(
    int vertexCountPerInstance,
    int instanceCount,
    int startVertexLocation,
    int startInstanceLocation,
  ) => _DrawInstancedFn(
    ptr,
    vertexCountPerInstance,
    instanceCount,
    startVertexLocation,
    startInstanceLocation,
  );

  /// Sets the constant buffers used by the geometry shader pipeline stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-gssetconstantbuffers>.
  @pragma('vm:prefer-inline')
  void gSSetConstantBuffers(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
  ) => _GSSetConstantBuffersFn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
  );

  /// Set a geometry shader to the device.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-gssetshader>.
  @pragma('vm:prefer-inline')
  void gSSetShader(
    ID3D11GeometryShader? pShader,
    Pointer<VTablePointer>? ppClassInstances,
    int numClassInstances,
  ) => _GSSetShaderFn(
    ptr,
    pShader?.ptr ?? nullptr,
    ppClassInstances ?? nullptr,
    numClassInstances,
  );

  /// Bind information about the primitive type, and data order that describes
  /// input data for the input assembler stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-iasetprimitivetopology>.
  @pragma('vm:prefer-inline')
  void iASetPrimitiveTopology(D3D_PRIMITIVE_TOPOLOGY topology) =>
      _IASetPrimitiveTopologyFn(ptr, topology);

  /// Bind an array of shader resources to the vertex-shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-vssetshaderresources>.
  @pragma('vm:prefer-inline')
  void vSSetShaderResources(
    int startSlot,
    int numViews,
    Pointer<VTablePointer>? ppShaderResourceViews,
  ) => _VSSetShaderResourcesFn(
    ptr,
    startSlot,
    numViews,
    ppShaderResourceViews ?? nullptr,
  );

  /// Set an array of sampler states to the vertex shader pipeline stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-vssetsamplers>.
  @pragma('vm:prefer-inline')
  void vSSetSamplers(
    int startSlot,
    int numSamplers,
    Pointer<VTablePointer>? ppSamplers,
  ) => _VSSetSamplersFn(ptr, startSlot, numSamplers, ppSamplers ?? nullptr);

  /// Mark the beginning of a series of commands.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-begin>.
  @pragma('vm:prefer-inline')
  void begin(ID3D11Asynchronous? pAsync) =>
      _BeginFn(ptr, pAsync?.ptr ?? nullptr);

  /// Mark the end of a series of commands.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-end>.
  @pragma('vm:prefer-inline')
  void end(ID3D11Asynchronous? pAsync) => _EndFn(ptr, pAsync?.ptr ?? nullptr);

  /// Get data from the graphics processing unit (GPU) asynchronously.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-getdata>.
  @pragma('vm:prefer-inline')
  void getData(
    ID3D11Asynchronous? pAsync,
    Pointer? pData,
    int dataSize,
    int getDataFlags,
  ) {
    final hr$ = HRESULT(
      _GetDataFn(
        ptr,
        pAsync?.ptr ?? nullptr,
        pData ?? nullptr,
        dataSize,
        getDataFlags,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Set a rendering predicate.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-setpredication>.
  @pragma('vm:prefer-inline')
  void setPredication(ID3D11Predicate? pPredicate, bool predicateValue) =>
      _SetPredicationFn(
        ptr,
        pPredicate?.ptr ?? nullptr,
        predicateValue ? TRUE : FALSE,
      );

  /// Bind an array of shader resources to the geometry shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-gssetshaderresources>.
  @pragma('vm:prefer-inline')
  void gSSetShaderResources(
    int startSlot,
    int numViews,
    Pointer<VTablePointer>? ppShaderResourceViews,
  ) => _GSSetShaderResourcesFn(
    ptr,
    startSlot,
    numViews,
    ppShaderResourceViews ?? nullptr,
  );

  /// Set an array of sampler states to the geometry shader pipeline stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-gssetsamplers>.
  @pragma('vm:prefer-inline')
  void gSSetSamplers(
    int startSlot,
    int numSamplers,
    Pointer<VTablePointer>? ppSamplers,
  ) => _GSSetSamplersFn(ptr, startSlot, numSamplers, ppSamplers ?? nullptr);

  /// Bind one or more render targets atomically and the depth-stencil buffer to
  /// the output-merger stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-omsetrendertargets>.
  @pragma('vm:prefer-inline')
  void oMSetRenderTargets(
    int numViews,
    Pointer<VTablePointer>? ppRenderTargetViews,
    ID3D11DepthStencilView? pDepthStencilView,
  ) => _OMSetRenderTargetsFn(
    ptr,
    numViews,
    ppRenderTargetViews ?? nullptr,
    pDepthStencilView?.ptr ?? nullptr,
  );

  /// Binds resources to the output-merger stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-omsetrendertargetsandunorderedaccessviews>.
  @pragma('vm:prefer-inline')
  void oMSetRenderTargetsAndUnorderedAccessViews(
    int numRTVs,
    Pointer<VTablePointer>? ppRenderTargetViews,
    ID3D11DepthStencilView? pDepthStencilView,
    int uAVStartSlot,
    int numUAVs,
    Pointer<VTablePointer>? ppUnorderedAccessViews,
    Pointer<Uint32>? pUAVInitialCounts,
  ) => _OMSetRenderTargetsAndUnorderedAccessViewsFn(
    ptr,
    numRTVs,
    ppRenderTargetViews ?? nullptr,
    pDepthStencilView?.ptr ?? nullptr,
    uAVStartSlot,
    numUAVs,
    ppUnorderedAccessViews ?? nullptr,
    pUAVInitialCounts ?? nullptr,
  );

  /// Set the blend state of the output-merger stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-omsetblendstate>.
  @pragma('vm:prefer-inline')
  void oMSetBlendState(
    ID3D11BlendState? pBlendState,
    Pointer<Float>? blendFactor,
    int sampleMask,
  ) => _OMSetBlendStateFn(
    ptr,
    pBlendState?.ptr ?? nullptr,
    blendFactor ?? nullptr,
    sampleMask,
  );

  /// Sets the depth-stencil state of the output-merger stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-omsetdepthstencilstate>.
  @pragma('vm:prefer-inline')
  void oMSetDepthStencilState(
    ID3D11DepthStencilState? pDepthStencilState,
    int stencilRef,
  ) => _OMSetDepthStencilStateFn(
    ptr,
    pDepthStencilState?.ptr ?? nullptr,
    stencilRef,
  );

  /// Set the target output buffers for the stream-output stage of the pipeline.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-sosettargets>.
  @pragma('vm:prefer-inline')
  void sOSetTargets(
    int numBuffers,
    Pointer<VTablePointer>? ppSOTargets,
    Pointer<Uint32>? pOffsets,
  ) => _SOSetTargetsFn(
    ptr,
    numBuffers,
    ppSOTargets ?? nullptr,
    pOffsets ?? nullptr,
  );

  /// Draw geometry of an unknown size.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-drawauto>.
  @pragma('vm:prefer-inline')
  void drawAuto() => _DrawAutoFn(ptr);

  /// Draw indexed, instanced, GPU-generated primitives.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-drawindexedinstancedindirect>.
  @pragma('vm:prefer-inline')
  void drawIndexedInstancedIndirect(
    ID3D11Buffer? pBufferForArgs,
    int alignedByteOffsetForArgs,
  ) => _DrawIndexedInstancedIndirectFn(
    ptr,
    pBufferForArgs?.ptr ?? nullptr,
    alignedByteOffsetForArgs,
  );

  /// Draw instanced, GPU-generated primitives.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-drawinstancedindirect>.
  @pragma('vm:prefer-inline')
  void drawInstancedIndirect(
    ID3D11Buffer? pBufferForArgs,
    int alignedByteOffsetForArgs,
  ) => _DrawInstancedIndirectFn(
    ptr,
    pBufferForArgs?.ptr ?? nullptr,
    alignedByteOffsetForArgs,
  );

  /// Execute a command list from a thread group.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-dispatch>.
  @pragma('vm:prefer-inline')
  void dispatch(
    int threadGroupCountX,
    int threadGroupCountY,
    int threadGroupCountZ,
  ) =>
      _DispatchFn(ptr, threadGroupCountX, threadGroupCountY, threadGroupCountZ);

  /// Execute a command list over one or more thread groups.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-dispatchindirect>.
  @pragma('vm:prefer-inline')
  void dispatchIndirect(
    ID3D11Buffer? pBufferForArgs,
    int alignedByteOffsetForArgs,
  ) => _DispatchIndirectFn(
    ptr,
    pBufferForArgs?.ptr ?? nullptr,
    alignedByteOffsetForArgs,
  );

  /// Set the rasterizer state for the rasterizer stage of the pipeline.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-rssetstate>.
  @pragma('vm:prefer-inline')
  void rSSetState(ID3D11RasterizerState? pRasterizerState) =>
      _RSSetStateFn(ptr, pRasterizerState?.ptr ?? nullptr);

  /// Bind an array of viewports to the rasterizer stage of the pipeline.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-rssetviewports>.
  @pragma('vm:prefer-inline')
  void rSSetViewports(int numViewports, Pointer<D3D11_VIEWPORT>? pViewports) =>
      _RSSetViewportsFn(ptr, numViewports, pViewports ?? nullptr);

  /// Bind an array of scissor rectangles to the rasterizer stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-rssetscissorrects>.
  @pragma('vm:prefer-inline')
  void rSSetScissorRects(int numRects, Pointer<RECT>? pRects) =>
      _RSSetScissorRectsFn(ptr, numRects, pRects ?? nullptr);

  /// Copy a region from a source resource to a destination resource.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-copysubresourceregion>.
  @pragma('vm:prefer-inline')
  void copySubresourceRegion(
    ID3D11Resource? pDstResource,
    int dstSubresource,
    int dstX,
    int dstY,
    int dstZ,
    ID3D11Resource? pSrcResource,
    int srcSubresource,
    Pointer<D3D11_BOX>? pSrcBox,
  ) => _CopySubresourceRegionFn(
    ptr,
    pDstResource?.ptr ?? nullptr,
    dstSubresource,
    dstX,
    dstY,
    dstZ,
    pSrcResource?.ptr ?? nullptr,
    srcSubresource,
    pSrcBox ?? nullptr,
  );

  /// Copy the entire contents of the source resource to the destination
  /// resource using the GPU.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-copyresource>.
  @pragma('vm:prefer-inline')
  void copyResource(
    ID3D11Resource? pDstResource,
    ID3D11Resource? pSrcResource,
  ) => _CopyResourceFn(
    ptr,
    pDstResource?.ptr ?? nullptr,
    pSrcResource?.ptr ?? nullptr,
  );

  /// The CPU copies data from memory to a subresource created in non-mappable
  /// memory.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-updatesubresource>.
  @pragma('vm:prefer-inline')
  void updateSubresource(
    ID3D11Resource? pDstResource,
    int dstSubresource,
    Pointer<D3D11_BOX>? pDstBox,
    Pointer pSrcData,
    int srcRowPitch,
    int srcDepthPitch,
  ) => _UpdateSubresourceFn(
    ptr,
    pDstResource?.ptr ?? nullptr,
    dstSubresource,
    pDstBox ?? nullptr,
    pSrcData,
    srcRowPitch,
    srcDepthPitch,
  );

  /// Copies data from a buffer holding variable length data.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-copystructurecount>.
  @pragma('vm:prefer-inline')
  void copyStructureCount(
    ID3D11Buffer? pDstBuffer,
    int dstAlignedByteOffset,
    ID3D11UnorderedAccessView? pSrcView,
  ) => _CopyStructureCountFn(
    ptr,
    pDstBuffer?.ptr ?? nullptr,
    dstAlignedByteOffset,
    pSrcView?.ptr ?? nullptr,
  );

  /// Set all the elements in a render target to one value.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-clearrendertargetview>.
  @pragma('vm:prefer-inline')
  void clearRenderTargetView(
    ID3D11RenderTargetView? pRenderTargetView,
    Pointer<Float> colorRGBA,
  ) => _ClearRenderTargetViewFn(
    ptr,
    pRenderTargetView?.ptr ?? nullptr,
    colorRGBA,
  );

  /// Clears an unordered access resource with bit-precise values.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-clearunorderedaccessviewuint>.
  @pragma('vm:prefer-inline')
  void clearUnorderedAccessViewUint(
    ID3D11UnorderedAccessView? pUnorderedAccessView,
    Pointer<Uint32> values,
  ) => _ClearUnorderedAccessViewUintFn(
    ptr,
    pUnorderedAccessView?.ptr ?? nullptr,
    values,
  );

  /// Clears an unordered access resource with a float value.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-clearunorderedaccessviewfloat>.
  @pragma('vm:prefer-inline')
  void clearUnorderedAccessViewFloat(
    ID3D11UnorderedAccessView? pUnorderedAccessView,
    Pointer<Float> values,
  ) => _ClearUnorderedAccessViewFloatFn(
    ptr,
    pUnorderedAccessView?.ptr ?? nullptr,
    values,
  );

  /// Clears the depth-stencil resource.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-cleardepthstencilview>.
  @pragma('vm:prefer-inline')
  void clearDepthStencilView(
    ID3D11DepthStencilView? pDepthStencilView,
    int clearFlags,
    double depth,
    int stencil,
  ) => _ClearDepthStencilViewFn(
    ptr,
    pDepthStencilView?.ptr ?? nullptr,
    clearFlags,
    depth,
    stencil,
  );

  /// Generates mipmaps for the given shader resource.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-generatemips>.
  @pragma('vm:prefer-inline')
  void generateMips(ID3D11ShaderResourceView? pShaderResourceView) =>
      _GenerateMipsFn(ptr, pShaderResourceView?.ptr ?? nullptr);

  /// Sets the minimum level-of-detail (LOD) for a resource.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-setresourceminlod>.
  @pragma('vm:prefer-inline')
  void setResourceMinLOD(ID3D11Resource? pResource, double minLOD) =>
      _SetResourceMinLODFn(ptr, pResource?.ptr ?? nullptr, minLOD);

  /// Gets the minimum level-of-detail (LOD).
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-getresourceminlod>.
  @pragma('vm:prefer-inline')
  double getResourceMinLOD(ID3D11Resource? pResource) =>
      _GetResourceMinLODFn(ptr, pResource?.ptr ?? nullptr);

  /// Copy a multisampled resource into a non-multisampled resource.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-resolvesubresource>.
  @pragma('vm:prefer-inline')
  void resolveSubresource(
    ID3D11Resource? pDstResource,
    int dstSubresource,
    ID3D11Resource? pSrcResource,
    int srcSubresource,
    DXGI_FORMAT format,
  ) => _ResolveSubresourceFn(
    ptr,
    pDstResource?.ptr ?? nullptr,
    dstSubresource,
    pSrcResource?.ptr ?? nullptr,
    srcSubresource,
    format,
  );

  /// Queues commands from a command list onto a device.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-executecommandlist>.
  @pragma('vm:prefer-inline')
  void executeCommandList(
    ID3D11CommandList? pCommandList,
    bool restoreContextState,
  ) => _ExecuteCommandListFn(
    ptr,
    pCommandList?.ptr ?? nullptr,
    restoreContextState ? TRUE : FALSE,
  );

  /// Bind an array of shader resources to the hull-shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-hssetshaderresources>.
  @pragma('vm:prefer-inline')
  void hSSetShaderResources(
    int startSlot,
    int numViews,
    Pointer<VTablePointer>? ppShaderResourceViews,
  ) => _HSSetShaderResourcesFn(
    ptr,
    startSlot,
    numViews,
    ppShaderResourceViews ?? nullptr,
  );

  /// Set a hull shader to the device.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-hssetshader>.
  @pragma('vm:prefer-inline')
  void hSSetShader(
    ID3D11HullShader? pHullShader,
    Pointer<VTablePointer>? ppClassInstances,
    int numClassInstances,
  ) => _HSSetShaderFn(
    ptr,
    pHullShader?.ptr ?? nullptr,
    ppClassInstances ?? nullptr,
    numClassInstances,
  );

  /// Set an array of sampler states to the hull-shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-hssetsamplers>.
  @pragma('vm:prefer-inline')
  void hSSetSamplers(
    int startSlot,
    int numSamplers,
    Pointer<VTablePointer>? ppSamplers,
  ) => _HSSetSamplersFn(ptr, startSlot, numSamplers, ppSamplers ?? nullptr);

  /// Set the constant buffers used by the hull-shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-hssetconstantbuffers>.
  @pragma('vm:prefer-inline')
  void hSSetConstantBuffers(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
  ) => _HSSetConstantBuffersFn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
  );

  /// Bind an array of shader resources to the domain-shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-dssetshaderresources>.
  @pragma('vm:prefer-inline')
  void dSSetShaderResources(
    int startSlot,
    int numViews,
    Pointer<VTablePointer>? ppShaderResourceViews,
  ) => _DSSetShaderResourcesFn(
    ptr,
    startSlot,
    numViews,
    ppShaderResourceViews ?? nullptr,
  );

  /// Set a domain shader to the device.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-dssetshader>.
  @pragma('vm:prefer-inline')
  void dSSetShader(
    ID3D11DomainShader? pDomainShader,
    Pointer<VTablePointer>? ppClassInstances,
    int numClassInstances,
  ) => _DSSetShaderFn(
    ptr,
    pDomainShader?.ptr ?? nullptr,
    ppClassInstances ?? nullptr,
    numClassInstances,
  );

  /// Set an array of sampler states to the domain-shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-dssetsamplers>.
  @pragma('vm:prefer-inline')
  void dSSetSamplers(
    int startSlot,
    int numSamplers,
    Pointer<VTablePointer>? ppSamplers,
  ) => _DSSetSamplersFn(ptr, startSlot, numSamplers, ppSamplers ?? nullptr);

  /// Sets the constant buffers used by the domain-shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-dssetconstantbuffers>.
  @pragma('vm:prefer-inline')
  void dSSetConstantBuffers(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
  ) => _DSSetConstantBuffersFn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
  );

  /// Bind an array of shader resources to the compute-shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-cssetshaderresources>.
  @pragma('vm:prefer-inline')
  void cSSetShaderResources(
    int startSlot,
    int numViews,
    Pointer<VTablePointer>? ppShaderResourceViews,
  ) => _CSSetShaderResourcesFn(
    ptr,
    startSlot,
    numViews,
    ppShaderResourceViews ?? nullptr,
  );

  /// Sets an array of views for an unordered resource.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-cssetunorderedaccessviews>.
  @pragma('vm:prefer-inline')
  void cSSetUnorderedAccessViews(
    int startSlot,
    int numUAVs,
    Pointer<VTablePointer>? ppUnorderedAccessViews,
    Pointer<Uint32>? pUAVInitialCounts,
  ) => _CSSetUnorderedAccessViewsFn(
    ptr,
    startSlot,
    numUAVs,
    ppUnorderedAccessViews ?? nullptr,
    pUAVInitialCounts ?? nullptr,
  );

  /// Set a compute shader to the device.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-cssetshader>.
  @pragma('vm:prefer-inline')
  void cSSetShader(
    ID3D11ComputeShader? pComputeShader,
    Pointer<VTablePointer>? ppClassInstances,
    int numClassInstances,
  ) => _CSSetShaderFn(
    ptr,
    pComputeShader?.ptr ?? nullptr,
    ppClassInstances ?? nullptr,
    numClassInstances,
  );

  /// Set an array of sampler states to the compute-shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-cssetsamplers>.
  @pragma('vm:prefer-inline')
  void cSSetSamplers(
    int startSlot,
    int numSamplers,
    Pointer<VTablePointer>? ppSamplers,
  ) => _CSSetSamplersFn(ptr, startSlot, numSamplers, ppSamplers ?? nullptr);

  /// Sets the constant buffers used by the compute-shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-cssetconstantbuffers>.
  @pragma('vm:prefer-inline')
  void cSSetConstantBuffers(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
  ) => _CSSetConstantBuffersFn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
  );

  /// Get the constant buffers used by the vertex shader pipeline stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-vsgetconstantbuffers>.
  @pragma('vm:prefer-inline')
  void vSGetConstantBuffers(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
  ) => _VSGetConstantBuffersFn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
  );

  /// Get the pixel shader resources.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-psgetshaderresources>.
  @pragma('vm:prefer-inline')
  void pSGetShaderResources(
    int startSlot,
    int numViews,
    Pointer<VTablePointer>? ppShaderResourceViews,
  ) => _PSGetShaderResourcesFn(
    ptr,
    startSlot,
    numViews,
    ppShaderResourceViews ?? nullptr,
  );

  /// Get the pixel shader currently set on the device.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-psgetshader>.
  @pragma('vm:prefer-inline')
  void pSGetShader(
    Pointer<VTablePointer> ppPixelShader,
    Pointer<VTablePointer>? ppClassInstances,
    Pointer<Uint32>? pNumClassInstances,
  ) => _PSGetShaderFn(
    ptr,
    ppPixelShader,
    ppClassInstances ?? nullptr,
    pNumClassInstances ?? nullptr,
  );

  /// Get an array of sampler states from the pixel shader pipeline stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-psgetsamplers>.
  @pragma('vm:prefer-inline')
  void pSGetSamplers(
    int startSlot,
    int numSamplers,
    Pointer<VTablePointer>? ppSamplers,
  ) => _PSGetSamplersFn(ptr, startSlot, numSamplers, ppSamplers ?? nullptr);

  /// Get the vertex shader currently set on the device.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-vsgetshader>.
  @pragma('vm:prefer-inline')
  void vSGetShader(
    Pointer<VTablePointer> ppVertexShader,
    Pointer<VTablePointer>? ppClassInstances,
    Pointer<Uint32>? pNumClassInstances,
  ) => _VSGetShaderFn(
    ptr,
    ppVertexShader,
    ppClassInstances ?? nullptr,
    pNumClassInstances ?? nullptr,
  );

  /// Get the constant buffers used by the pixel shader pipeline stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-psgetconstantbuffers>.
  @pragma('vm:prefer-inline')
  void pSGetConstantBuffers(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
  ) => _PSGetConstantBuffersFn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
  );

  /// Get a pointer to the input-layout object that is bound to the
  /// input-assembler stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-iagetinputlayout>.
  @pragma('vm:prefer-inline')
  void iAGetInputLayout(Pointer<VTablePointer> ppInputLayout) =>
      _IAGetInputLayoutFn(ptr, ppInputLayout);

  /// Get the vertex buffers bound to the input-assembler stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-iagetvertexbuffers>.
  @pragma('vm:prefer-inline')
  void iAGetVertexBuffers(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppVertexBuffers,
    Pointer<Uint32>? pStrides,
    Pointer<Uint32>? pOffsets,
  ) => _IAGetVertexBuffersFn(
    ptr,
    startSlot,
    numBuffers,
    ppVertexBuffers ?? nullptr,
    pStrides ?? nullptr,
    pOffsets ?? nullptr,
  );

  /// Get a pointer to the index buffer that is bound to the input-assembler
  /// stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-iagetindexbuffer>.
  @pragma('vm:prefer-inline')
  void iAGetIndexBuffer(
    Pointer<VTablePointer>? pIndexBuffer,
    Pointer<Int32>? format,
    Pointer<Uint32>? offset,
  ) => _IAGetIndexBufferFn(
    ptr,
    pIndexBuffer ?? nullptr,
    format ?? nullptr,
    offset ?? nullptr,
  );

  /// Get the constant buffers used by the geometry shader pipeline stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-gsgetconstantbuffers>.
  @pragma('vm:prefer-inline')
  void gSGetConstantBuffers(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
  ) => _GSGetConstantBuffersFn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
  );

  /// Get the geometry shader currently set on the device.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-gsgetshader>.
  @pragma('vm:prefer-inline')
  void gSGetShader(
    Pointer<VTablePointer> ppGeometryShader,
    Pointer<VTablePointer>? ppClassInstances,
    Pointer<Uint32>? pNumClassInstances,
  ) => _GSGetShaderFn(
    ptr,
    ppGeometryShader,
    ppClassInstances ?? nullptr,
    pNumClassInstances ?? nullptr,
  );

  /// Get information about the primitive type, and data order that describes
  /// input data for the input assembler stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-iagetprimitivetopology>.
  @pragma('vm:prefer-inline')
  void iAGetPrimitiveTopology(Pointer<Int32> pTopology) =>
      _IAGetPrimitiveTopologyFn(ptr, pTopology);

  /// Get the vertex shader resources.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-vsgetshaderresources>.
  @pragma('vm:prefer-inline')
  void vSGetShaderResources(
    int startSlot,
    int numViews,
    Pointer<VTablePointer>? ppShaderResourceViews,
  ) => _VSGetShaderResourcesFn(
    ptr,
    startSlot,
    numViews,
    ppShaderResourceViews ?? nullptr,
  );

  /// Get an array of sampler states from the vertex shader pipeline stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-vsgetsamplers>.
  @pragma('vm:prefer-inline')
  void vSGetSamplers(
    int startSlot,
    int numSamplers,
    Pointer<VTablePointer>? ppSamplers,
  ) => _VSGetSamplersFn(ptr, startSlot, numSamplers, ppSamplers ?? nullptr);

  /// Get the rendering predicate state.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-getpredication>.
  @pragma('vm:prefer-inline')
  void getPredication(
    Pointer<VTablePointer>? ppPredicate,
    Pointer<Int32>? pPredicateValue,
  ) => _GetPredicationFn(
    ptr,
    ppPredicate ?? nullptr,
    pPredicateValue ?? nullptr,
  );

  /// Get the geometry shader resources.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-gsgetshaderresources>.
  @pragma('vm:prefer-inline')
  void gSGetShaderResources(
    int startSlot,
    int numViews,
    Pointer<VTablePointer>? ppShaderResourceViews,
  ) => _GSGetShaderResourcesFn(
    ptr,
    startSlot,
    numViews,
    ppShaderResourceViews ?? nullptr,
  );

  /// Get an array of sampler state interfaces from the geometry shader pipeline
  /// stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-gsgetsamplers>.
  @pragma('vm:prefer-inline')
  void gSGetSamplers(
    int startSlot,
    int numSamplers,
    Pointer<VTablePointer>? ppSamplers,
  ) => _GSGetSamplersFn(ptr, startSlot, numSamplers, ppSamplers ?? nullptr);

  /// Get pointers to the resources bound to the output-merger stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-omgetrendertargets>.
  @pragma('vm:prefer-inline')
  void oMGetRenderTargets(
    int numViews,
    Pointer<VTablePointer>? ppRenderTargetViews,
    Pointer<VTablePointer>? ppDepthStencilView,
  ) => _OMGetRenderTargetsFn(
    ptr,
    numViews,
    ppRenderTargetViews ?? nullptr,
    ppDepthStencilView ?? nullptr,
  );

  /// Get pointers to the resources bound to the output-merger stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-omgetrendertargetsandunorderedaccessviews>.
  @pragma('vm:prefer-inline')
  void oMGetRenderTargetsAndUnorderedAccessViews(
    int numRTVs,
    Pointer<VTablePointer>? ppRenderTargetViews,
    Pointer<VTablePointer>? ppDepthStencilView,
    int uAVStartSlot,
    int numUAVs,
    Pointer<VTablePointer>? ppUnorderedAccessViews,
  ) => _OMGetRenderTargetsAndUnorderedAccessViewsFn(
    ptr,
    numRTVs,
    ppRenderTargetViews ?? nullptr,
    ppDepthStencilView ?? nullptr,
    uAVStartSlot,
    numUAVs,
    ppUnorderedAccessViews ?? nullptr,
  );

  /// Get the blend state of the output-merger stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-omgetblendstate>.
  @pragma('vm:prefer-inline')
  void oMGetBlendState(
    Pointer<VTablePointer>? ppBlendState,
    Pointer<Float>? blendFactor,
    Pointer<Uint32>? pSampleMask,
  ) => _OMGetBlendStateFn(
    ptr,
    ppBlendState ?? nullptr,
    blendFactor ?? nullptr,
    pSampleMask ?? nullptr,
  );

  /// Gets the depth-stencil state of the output-merger stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-omgetdepthstencilstate>.
  @pragma('vm:prefer-inline')
  void oMGetDepthStencilState(
    Pointer<VTablePointer>? ppDepthStencilState,
    Pointer<Uint32>? pStencilRef,
  ) => _OMGetDepthStencilStateFn(
    ptr,
    ppDepthStencilState ?? nullptr,
    pStencilRef ?? nullptr,
  );

  /// Get the target output buffers for the stream-output stage of the pipeline.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-sogettargets>.
  @pragma('vm:prefer-inline')
  void sOGetTargets(int numBuffers, Pointer<VTablePointer>? ppSOTargets) =>
      _SOGetTargetsFn(ptr, numBuffers, ppSOTargets ?? nullptr);

  /// Get the rasterizer state from the rasterizer stage of the pipeline.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-rsgetstate>.
  @pragma('vm:prefer-inline')
  void rSGetState(Pointer<VTablePointer> ppRasterizerState) =>
      _RSGetStateFn(ptr, ppRasterizerState);

  /// Gets the array of viewports bound to the rasterizer stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-rsgetviewports>.
  @pragma('vm:prefer-inline')
  void rSGetViewports(
    Pointer<Uint32> pNumViewports,
    Pointer<D3D11_VIEWPORT>? pViewports,
  ) => _RSGetViewportsFn(ptr, pNumViewports, pViewports ?? nullptr);

  /// Get the array of scissor rectangles bound to the rasterizer stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-rsgetscissorrects>.
  @pragma('vm:prefer-inline')
  void rSGetScissorRects(Pointer<Uint32> pNumRects, Pointer<RECT>? pRects) =>
      _RSGetScissorRectsFn(ptr, pNumRects, pRects ?? nullptr);

  /// Get the hull-shader resources.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-hsgetshaderresources>.
  @pragma('vm:prefer-inline')
  void hSGetShaderResources(
    int startSlot,
    int numViews,
    Pointer<VTablePointer>? ppShaderResourceViews,
  ) => _HSGetShaderResourcesFn(
    ptr,
    startSlot,
    numViews,
    ppShaderResourceViews ?? nullptr,
  );

  /// Get the hull shader currently set on the device.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-hsgetshader>.
  @pragma('vm:prefer-inline')
  void hSGetShader(
    Pointer<VTablePointer> ppHullShader,
    Pointer<VTablePointer>? ppClassInstances,
    Pointer<Uint32>? pNumClassInstances,
  ) => _HSGetShaderFn(
    ptr,
    ppHullShader,
    ppClassInstances ?? nullptr,
    pNumClassInstances ?? nullptr,
  );

  /// Get an array of sampler state interfaces from the hull-shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-hsgetsamplers>.
  @pragma('vm:prefer-inline')
  void hSGetSamplers(
    int startSlot,
    int numSamplers,
    Pointer<VTablePointer>? ppSamplers,
  ) => _HSGetSamplersFn(ptr, startSlot, numSamplers, ppSamplers ?? nullptr);

  /// Get the constant buffers used by the hull-shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-hsgetconstantbuffers>.
  @pragma('vm:prefer-inline')
  void hSGetConstantBuffers(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
  ) => _HSGetConstantBuffersFn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
  );

  /// Get the domain-shader resources.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-dsgetshaderresources>.
  @pragma('vm:prefer-inline')
  void dSGetShaderResources(
    int startSlot,
    int numViews,
    Pointer<VTablePointer>? ppShaderResourceViews,
  ) => _DSGetShaderResourcesFn(
    ptr,
    startSlot,
    numViews,
    ppShaderResourceViews ?? nullptr,
  );

  /// Get the domain shader currently set on the device.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-dsgetshader>.
  @pragma('vm:prefer-inline')
  void dSGetShader(
    Pointer<VTablePointer> ppDomainShader,
    Pointer<VTablePointer>? ppClassInstances,
    Pointer<Uint32>? pNumClassInstances,
  ) => _DSGetShaderFn(
    ptr,
    ppDomainShader,
    ppClassInstances ?? nullptr,
    pNumClassInstances ?? nullptr,
  );

  /// Get an array of sampler state interfaces from the domain-shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-dsgetsamplers>.
  @pragma('vm:prefer-inline')
  void dSGetSamplers(
    int startSlot,
    int numSamplers,
    Pointer<VTablePointer>? ppSamplers,
  ) => _DSGetSamplersFn(ptr, startSlot, numSamplers, ppSamplers ?? nullptr);

  /// Get the constant buffers used by the domain-shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-dsgetconstantbuffers>.
  @pragma('vm:prefer-inline')
  void dSGetConstantBuffers(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
  ) => _DSGetConstantBuffersFn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
  );

  /// Get the compute-shader resources.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-csgetshaderresources>.
  @pragma('vm:prefer-inline')
  void cSGetShaderResources(
    int startSlot,
    int numViews,
    Pointer<VTablePointer>? ppShaderResourceViews,
  ) => _CSGetShaderResourcesFn(
    ptr,
    startSlot,
    numViews,
    ppShaderResourceViews ?? nullptr,
  );

  /// Gets an array of views for an unordered resource.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-csgetunorderedaccessviews>.
  @pragma('vm:prefer-inline')
  void cSGetUnorderedAccessViews(
    int startSlot,
    int numUAVs,
    Pointer<VTablePointer>? ppUnorderedAccessViews,
  ) => _CSGetUnorderedAccessViewsFn(
    ptr,
    startSlot,
    numUAVs,
    ppUnorderedAccessViews ?? nullptr,
  );

  /// Get the compute shader currently set on the device.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-csgetshader>.
  @pragma('vm:prefer-inline')
  void cSGetShader(
    Pointer<VTablePointer> ppComputeShader,
    Pointer<VTablePointer>? ppClassInstances,
    Pointer<Uint32>? pNumClassInstances,
  ) => _CSGetShaderFn(
    ptr,
    ppComputeShader,
    ppClassInstances ?? nullptr,
    pNumClassInstances ?? nullptr,
  );

  /// Get an array of sampler state interfaces from the compute-shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-csgetsamplers>.
  @pragma('vm:prefer-inline')
  void cSGetSamplers(
    int startSlot,
    int numSamplers,
    Pointer<VTablePointer>? ppSamplers,
  ) => _CSGetSamplersFn(ptr, startSlot, numSamplers, ppSamplers ?? nullptr);

  /// Get the constant buffers used by the compute-shader stage.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-csgetconstantbuffers>.
  @pragma('vm:prefer-inline')
  void cSGetConstantBuffers(
    int startSlot,
    int numBuffers,
    Pointer<VTablePointer>? ppConstantBuffers,
  ) => _CSGetConstantBuffersFn(
    ptr,
    startSlot,
    numBuffers,
    ppConstantBuffers ?? nullptr,
  );

  /// Restore all default settings.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-clearstate>.
  @pragma('vm:prefer-inline')
  void clearState() => _ClearStateFn(ptr);

  /// Sends queued-up commands in the command buffer to the graphics processing
  /// unit (GPU).
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-flush>.
  @pragma('vm:prefer-inline')
  void flush() => _FlushFn(ptr);

  /// Gets the type of device context.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-gettype>.
  @pragma('vm:prefer-inline')
  D3D11_DEVICE_CONTEXT_TYPE getType() =>
      D3D11_DEVICE_CONTEXT_TYPE(_GetTypeFn(ptr));

  /// Gets the initialization flags associated with the current deferred
  /// context.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-getcontextflags>.
  @pragma('vm:prefer-inline')
  int getContextFlags() => _GetContextFlagsFn(ptr);

  /// Create a command list and record graphics commands into it.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11devicecontext-finishcommandlist>.
  @pragma('vm:prefer-inline')
  void finishCommandList(
    bool restoreDeferredContextState,
    Pointer<VTablePointer>? ppCommandList,
  ) {
    final hr$ = HRESULT(
      _FinishCommandListFn(
        ptr,
        restoreDeferredContextState ? TRUE : FALSE,
        ppCommandList ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3D11DeviceContext(ptr: $ptr)';
}

/// @nodoc
base class ID3D11DeviceContextVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
      )
    >
  >
  VSSetConstantBuffers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numViews,
        Pointer<VTablePointer> ppShaderResourceViews,
      )
    >
  >
  PSSetShaderResources;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pPixelShader,
        Pointer<VTablePointer> ppClassInstances,
        Uint32 numClassInstances,
      )
    >
  >
  PSSetShader;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numSamplers,
        Pointer<VTablePointer> ppSamplers,
      )
    >
  >
  PSSetSamplers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pVertexShader,
        Pointer<VTablePointer> ppClassInstances,
        Uint32 numClassInstances,
      )
    >
  >
  VSSetShader;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 indexCount,
        Uint32 startIndexLocation,
        Int32 baseVertexLocation,
      )
    >
  >
  DrawIndexed;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 vertexCount,
        Uint32 startVertexLocation,
      )
    >
  >
  Draw;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pResource,
        Uint32 subresource,
        Int32 mapType,
        Uint32 mapFlags,
        Pointer<D3D11_MAPPED_SUBRESOURCE> pMappedResource,
      )
    >
  >
  Map;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pResource,
        Uint32 subresource,
      )
    >
  >
  Unmap;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
      )
    >
  >
  PSSetConstantBuffers;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, VTablePointer pInputLayout)
    >
  >
  IASetInputLayout;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppVertexBuffers,
        Pointer<Uint32> pStrides,
        Pointer<Uint32> pOffsets,
      )
    >
  >
  IASetVertexBuffers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pIndexBuffer,
        Int32 format,
        Uint32 offset,
      )
    >
  >
  IASetIndexBuffer;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 indexCountPerInstance,
        Uint32 instanceCount,
        Uint32 startIndexLocation,
        Int32 baseVertexLocation,
        Uint32 startInstanceLocation,
      )
    >
  >
  DrawIndexedInstanced;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 vertexCountPerInstance,
        Uint32 instanceCount,
        Uint32 startVertexLocation,
        Uint32 startInstanceLocation,
      )
    >
  >
  DrawInstanced;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
      )
    >
  >
  GSSetConstantBuffers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pShader,
        Pointer<VTablePointer> ppClassInstances,
        Uint32 numClassInstances,
      )
    >
  >
  GSSetShader;
  external Pointer<
    NativeFunction<Void Function(VTablePointer this$, Int32 topology)>
  >
  IASetPrimitiveTopology;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numViews,
        Pointer<VTablePointer> ppShaderResourceViews,
      )
    >
  >
  VSSetShaderResources;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numSamplers,
        Pointer<VTablePointer> ppSamplers,
      )
    >
  >
  VSSetSamplers;
  external Pointer<
    NativeFunction<Void Function(VTablePointer this$, VTablePointer pAsync)>
  >
  Begin;
  external Pointer<
    NativeFunction<Void Function(VTablePointer this$, VTablePointer pAsync)>
  >
  End;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pAsync,
        Pointer pData,
        Uint32 dataSize,
        Uint32 getDataFlags,
      )
    >
  >
  GetData;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pPredicate,
        Int32 predicateValue,
      )
    >
  >
  SetPredication;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numViews,
        Pointer<VTablePointer> ppShaderResourceViews,
      )
    >
  >
  GSSetShaderResources;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numSamplers,
        Pointer<VTablePointer> ppSamplers,
      )
    >
  >
  GSSetSamplers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 numViews,
        Pointer<VTablePointer> ppRenderTargetViews,
        VTablePointer pDepthStencilView,
      )
    >
  >
  OMSetRenderTargets;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 numRTVs,
        Pointer<VTablePointer> ppRenderTargetViews,
        VTablePointer pDepthStencilView,
        Uint32 uAVStartSlot,
        Uint32 numUAVs,
        Pointer<VTablePointer> ppUnorderedAccessViews,
        Pointer<Uint32> pUAVInitialCounts,
      )
    >
  >
  OMSetRenderTargetsAndUnorderedAccessViews;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pBlendState,
        Pointer<Float> blendFactor,
        Uint32 sampleMask,
      )
    >
  >
  OMSetBlendState;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pDepthStencilState,
        Uint32 stencilRef,
      )
    >
  >
  OMSetDepthStencilState;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppSOTargets,
        Pointer<Uint32> pOffsets,
      )
    >
  >
  SOSetTargets;
  external Pointer<NativeFunction<Void Function(VTablePointer this$)>> DrawAuto;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pBufferForArgs,
        Uint32 alignedByteOffsetForArgs,
      )
    >
  >
  DrawIndexedInstancedIndirect;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pBufferForArgs,
        Uint32 alignedByteOffsetForArgs,
      )
    >
  >
  DrawInstancedIndirect;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 threadGroupCountX,
        Uint32 threadGroupCountY,
        Uint32 threadGroupCountZ,
      )
    >
  >
  Dispatch;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pBufferForArgs,
        Uint32 alignedByteOffsetForArgs,
      )
    >
  >
  DispatchIndirect;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, VTablePointer pRasterizerState)
    >
  >
  RSSetState;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 numViewports,
        Pointer<D3D11_VIEWPORT> pViewports,
      )
    >
  >
  RSSetViewports;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Uint32 numRects, Pointer<RECT> pRects)
    >
  >
  RSSetScissorRects;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pDstResource,
        Uint32 dstSubresource,
        Uint32 dstX,
        Uint32 dstY,
        Uint32 dstZ,
        VTablePointer pSrcResource,
        Uint32 srcSubresource,
        Pointer<D3D11_BOX> pSrcBox,
      )
    >
  >
  CopySubresourceRegion;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pDstResource,
        VTablePointer pSrcResource,
      )
    >
  >
  CopyResource;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pDstResource,
        Uint32 dstSubresource,
        Pointer<D3D11_BOX> pDstBox,
        Pointer pSrcData,
        Uint32 srcRowPitch,
        Uint32 srcDepthPitch,
      )
    >
  >
  UpdateSubresource;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pDstBuffer,
        Uint32 dstAlignedByteOffset,
        VTablePointer pSrcView,
      )
    >
  >
  CopyStructureCount;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pRenderTargetView,
        Pointer<Float> colorRGBA,
      )
    >
  >
  ClearRenderTargetView;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pUnorderedAccessView,
        Pointer<Uint32> values,
      )
    >
  >
  ClearUnorderedAccessViewUint;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pUnorderedAccessView,
        Pointer<Float> values,
      )
    >
  >
  ClearUnorderedAccessViewFloat;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pDepthStencilView,
        Uint32 clearFlags,
        Float depth,
        Uint8 stencil,
      )
    >
  >
  ClearDepthStencilView;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, VTablePointer pShaderResourceView)
    >
  >
  GenerateMips;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, VTablePointer pResource, Float minLOD)
    >
  >
  SetResourceMinLOD;
  external Pointer<
    NativeFunction<Float Function(VTablePointer this$, VTablePointer pResource)>
  >
  GetResourceMinLOD;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pDstResource,
        Uint32 dstSubresource,
        VTablePointer pSrcResource,
        Uint32 srcSubresource,
        Int32 format,
      )
    >
  >
  ResolveSubresource;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pCommandList,
        Int32 restoreContextState,
      )
    >
  >
  ExecuteCommandList;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numViews,
        Pointer<VTablePointer> ppShaderResourceViews,
      )
    >
  >
  HSSetShaderResources;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pHullShader,
        Pointer<VTablePointer> ppClassInstances,
        Uint32 numClassInstances,
      )
    >
  >
  HSSetShader;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numSamplers,
        Pointer<VTablePointer> ppSamplers,
      )
    >
  >
  HSSetSamplers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
      )
    >
  >
  HSSetConstantBuffers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numViews,
        Pointer<VTablePointer> ppShaderResourceViews,
      )
    >
  >
  DSSetShaderResources;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pDomainShader,
        Pointer<VTablePointer> ppClassInstances,
        Uint32 numClassInstances,
      )
    >
  >
  DSSetShader;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numSamplers,
        Pointer<VTablePointer> ppSamplers,
      )
    >
  >
  DSSetSamplers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
      )
    >
  >
  DSSetConstantBuffers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numViews,
        Pointer<VTablePointer> ppShaderResourceViews,
      )
    >
  >
  CSSetShaderResources;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numUAVs,
        Pointer<VTablePointer> ppUnorderedAccessViews,
        Pointer<Uint32> pUAVInitialCounts,
      )
    >
  >
  CSSetUnorderedAccessViews;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        VTablePointer pComputeShader,
        Pointer<VTablePointer> ppClassInstances,
        Uint32 numClassInstances,
      )
    >
  >
  CSSetShader;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numSamplers,
        Pointer<VTablePointer> ppSamplers,
      )
    >
  >
  CSSetSamplers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
      )
    >
  >
  CSSetConstantBuffers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
      )
    >
  >
  VSGetConstantBuffers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numViews,
        Pointer<VTablePointer> ppShaderResourceViews,
      )
    >
  >
  PSGetShaderResources;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppPixelShader,
        Pointer<VTablePointer> ppClassInstances,
        Pointer<Uint32> pNumClassInstances,
      )
    >
  >
  PSGetShader;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numSamplers,
        Pointer<VTablePointer> ppSamplers,
      )
    >
  >
  PSGetSamplers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppVertexShader,
        Pointer<VTablePointer> ppClassInstances,
        Pointer<Uint32> pNumClassInstances,
      )
    >
  >
  VSGetShader;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
      )
    >
  >
  PSGetConstantBuffers;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<VTablePointer> ppInputLayout)
    >
  >
  IAGetInputLayout;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppVertexBuffers,
        Pointer<Uint32> pStrides,
        Pointer<Uint32> pOffsets,
      )
    >
  >
  IAGetVertexBuffers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<VTablePointer> pIndexBuffer,
        Pointer<Int32> format,
        Pointer<Uint32> offset,
      )
    >
  >
  IAGetIndexBuffer;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
      )
    >
  >
  GSGetConstantBuffers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppGeometryShader,
        Pointer<VTablePointer> ppClassInstances,
        Pointer<Uint32> pNumClassInstances,
      )
    >
  >
  GSGetShader;
  external Pointer<
    NativeFunction<Void Function(VTablePointer this$, Pointer<Int32> pTopology)>
  >
  IAGetPrimitiveTopology;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numViews,
        Pointer<VTablePointer> ppShaderResourceViews,
      )
    >
  >
  VSGetShaderResources;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numSamplers,
        Pointer<VTablePointer> ppSamplers,
      )
    >
  >
  VSGetSamplers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppPredicate,
        Pointer<Int32> pPredicateValue,
      )
    >
  >
  GetPredication;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numViews,
        Pointer<VTablePointer> ppShaderResourceViews,
      )
    >
  >
  GSGetShaderResources;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numSamplers,
        Pointer<VTablePointer> ppSamplers,
      )
    >
  >
  GSGetSamplers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 numViews,
        Pointer<VTablePointer> ppRenderTargetViews,
        Pointer<VTablePointer> ppDepthStencilView,
      )
    >
  >
  OMGetRenderTargets;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 numRTVs,
        Pointer<VTablePointer> ppRenderTargetViews,
        Pointer<VTablePointer> ppDepthStencilView,
        Uint32 uAVStartSlot,
        Uint32 numUAVs,
        Pointer<VTablePointer> ppUnorderedAccessViews,
      )
    >
  >
  OMGetRenderTargetsAndUnorderedAccessViews;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppBlendState,
        Pointer<Float> blendFactor,
        Pointer<Uint32> pSampleMask,
      )
    >
  >
  OMGetBlendState;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppDepthStencilState,
        Pointer<Uint32> pStencilRef,
      )
    >
  >
  OMGetDepthStencilState;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppSOTargets,
      )
    >
  >
  SOGetTargets;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppRasterizerState,
      )
    >
  >
  RSGetState;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<Uint32> pNumViewports,
        Pointer<D3D11_VIEWPORT> pViewports,
      )
    >
  >
  RSGetViewports;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<Uint32> pNumRects,
        Pointer<RECT> pRects,
      )
    >
  >
  RSGetScissorRects;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numViews,
        Pointer<VTablePointer> ppShaderResourceViews,
      )
    >
  >
  HSGetShaderResources;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppHullShader,
        Pointer<VTablePointer> ppClassInstances,
        Pointer<Uint32> pNumClassInstances,
      )
    >
  >
  HSGetShader;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numSamplers,
        Pointer<VTablePointer> ppSamplers,
      )
    >
  >
  HSGetSamplers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
      )
    >
  >
  HSGetConstantBuffers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numViews,
        Pointer<VTablePointer> ppShaderResourceViews,
      )
    >
  >
  DSGetShaderResources;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppDomainShader,
        Pointer<VTablePointer> ppClassInstances,
        Pointer<Uint32> pNumClassInstances,
      )
    >
  >
  DSGetShader;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numSamplers,
        Pointer<VTablePointer> ppSamplers,
      )
    >
  >
  DSGetSamplers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
      )
    >
  >
  DSGetConstantBuffers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numViews,
        Pointer<VTablePointer> ppShaderResourceViews,
      )
    >
  >
  CSGetShaderResources;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numUAVs,
        Pointer<VTablePointer> ppUnorderedAccessViews,
      )
    >
  >
  CSGetUnorderedAccessViews;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppComputeShader,
        Pointer<VTablePointer> ppClassInstances,
        Pointer<Uint32> pNumClassInstances,
      )
    >
  >
  CSGetShader;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numSamplers,
        Pointer<VTablePointer> ppSamplers,
      )
    >
  >
  CSGetSamplers;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Uint32 startSlot,
        Uint32 numBuffers,
        Pointer<VTablePointer> ppConstantBuffers,
      )
    >
  >
  CSGetConstantBuffers;
  external Pointer<NativeFunction<Void Function(VTablePointer this$)>>
  ClearState;
  external Pointer<NativeFunction<Void Function(VTablePointer this$)>> Flush;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> GetType;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetContextFlags;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 restoreDeferredContextState,
        Pointer<VTablePointer> ppCommandList,
      )
    >
  >
  FinishCommandList;
}

@internal
final class ID3D11DeviceContextCompanion
    extends ComCompanion<ID3D11DeviceContext> {
  const ID3D11DeviceContextCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11DeviceContext Function(VTablePointer) get fromPointer =>
      ID3D11DeviceContext.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11DeviceContext;
}
