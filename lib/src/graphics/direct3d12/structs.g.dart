// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d12/ID3D12GraphicsCommandList.dart';
import '../../graphics/direct3d12/ID3D12CommandQueue.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/direct3d12/ID3D12RootSignature.dart';
import '../../specialTypes.dart';
import '../../system/com/IUnknown.dart';
import '../../graphics/direct3d12/ID3D12StateObject.dart';
import '../../graphics/direct3d/structs.g.dart';
import '../../graphics/direct3d12/ID3D12Resource.dart';

/// {@category Struct}
class D3D12_AUTO_BREADCRUMB_NODE extends Struct {
  external Pointer<Uint8> pCommandListDebugNameA;

  external Pointer<Utf16> pCommandListDebugNameW;

  external Pointer<Uint8> pCommandQueueDebugNameA;

  external Pointer<Utf16> pCommandQueueDebugNameW;

  external Pointer<COMObject> pCommandList;

  external Pointer<COMObject> pCommandQueue;

  @Uint32()
  external int BreadcrumbCount;

  external Pointer<Uint32> pLastBreadcrumbValue;

  external Pointer<Int32> pCommandHistory;

  external Pointer<D3D12_AUTO_BREADCRUMB_NODE> pNext;
}

/// {@category Struct}
class D3D12_AUTO_BREADCRUMB_NODE1 extends Struct {
  external Pointer<Uint8> pCommandListDebugNameA;

  external Pointer<Utf16> pCommandListDebugNameW;

  external Pointer<Uint8> pCommandQueueDebugNameA;

  external Pointer<Utf16> pCommandQueueDebugNameW;

  external Pointer<COMObject> pCommandList;

  external Pointer<COMObject> pCommandQueue;

  @Uint32()
  external int BreadcrumbCount;

  external Pointer<Uint32> pLastBreadcrumbValue;

  external Pointer<Int32> pCommandHistory;

  external Pointer<D3D12_AUTO_BREADCRUMB_NODE1> pNext;

  @Uint32()
  external int BreadcrumbContextsCount;

  external Pointer<D3D12_DRED_BREADCRUMB_CONTEXT> pBreadcrumbContexts;
}

/// {@category Struct}
class D3D12_BLEND_DESC extends Struct {
  @Int32()
  external int AlphaToCoverageEnable;

  @Int32()
  external int IndependentBlendEnable;

  @Array(8)
  external Array<D3D12_RENDER_TARGET_BLEND_DESC> RenderTarget;
}

/// {@category Struct}
class D3D12_BOX extends Struct {
  @Uint32()
  external int left;

  @Uint32()
  external int top;

  @Uint32()
  external int front;

  @Uint32()
  external int right;

  @Uint32()
  external int bottom;

  @Uint32()
  external int back;
}

/// {@category Struct}
class D3D12_BUFFER_RTV extends Struct {
  @Uint64()
  external int FirstElement;

  @Uint32()
  external int NumElements;
}

/// {@category Struct}
class D3D12_BUFFER_SRV extends Struct {
  @Uint64()
  external int FirstElement;

  @Uint32()
  external int NumElements;

  @Uint32()
  external int StructureByteStride;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class D3D12_BUFFER_UAV extends Struct {
  @Uint64()
  external int FirstElement;

  @Uint32()
  external int NumElements;

  @Uint32()
  external int StructureByteStride;

  @Uint64()
  external int CounterOffsetInBytes;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_DESC extends Struct {
  @Uint64()
  external int DestAccelerationStructureData;

  external D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_INPUTS Inputs;

  @Uint64()
  external int SourceAccelerationStructureData;

  @Uint64()
  external int ScratchAccelerationStructureData;
}

/// {@category Struct}
class D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_INPUTS extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Flags;

  @Uint32()
  external int NumDescs;

  @Int32()
  external int DescsLayout;

  external _D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_INPUTS__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_INPUTS__Anonymous_e__Union
    extends Union {
  @Uint64()
  external int InstanceDescs;

  external Pointer<D3D12_RAYTRACING_GEOMETRY_DESC> pGeometryDescs;

  external Pointer<Pointer<D3D12_RAYTRACING_GEOMETRY_DESC>> ppGeometryDescs;
}

extension D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_INPUTS_Extension
    on D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_INPUTS {
  int get InstanceDescs => this.Anonymous.InstanceDescs;
  set InstanceDescs(int value) => this.Anonymous.InstanceDescs = value;

  Pointer<D3D12_RAYTRACING_GEOMETRY_DESC> get pGeometryDescs =>
      this.Anonymous.pGeometryDescs;
  set pGeometryDescs(Pointer<D3D12_RAYTRACING_GEOMETRY_DESC> value) =>
      this.Anonymous.pGeometryDescs = value;

  Pointer<Pointer<D3D12_RAYTRACING_GEOMETRY_DESC>> get ppGeometryDescs =>
      this.Anonymous.ppGeometryDescs;
  set ppGeometryDescs(Pointer<Pointer<D3D12_RAYTRACING_GEOMETRY_DESC>> value) =>
      this.Anonymous.ppGeometryDescs = value;
}

/// {@category Struct}
class D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_TOOLS_VISUALIZATION_HEADER
    extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int NumDescs;
}

/// {@category Struct}
class D3D12_CACHED_PIPELINE_STATE extends Struct {
  external Pointer pCachedBlob;

  @IntPtr()
  external int CachedBlobSizeInBytes;
}

/// {@category Struct}
class D3D12_CLEAR_VALUE extends Struct {
  @Uint32()
  external int Format;

  external _D3D12_CLEAR_VALUE__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D12_CLEAR_VALUE__Anonymous_e__Union extends Union {
  @Array(4)
  external Array<Float> Color;

  external D3D12_DEPTH_STENCIL_VALUE DepthStencil;
}

extension D3D12_CLEAR_VALUE_Extension on D3D12_CLEAR_VALUE {
  Array<Float> get Color => this.Anonymous.Color;
  set Color(Array<Float> value) => this.Anonymous.Color = value;

  D3D12_DEPTH_STENCIL_VALUE get DepthStencil => this.Anonymous.DepthStencil;
  set DepthStencil(D3D12_DEPTH_STENCIL_VALUE value) =>
      this.Anonymous.DepthStencil = value;
}

/// {@category Struct}
class D3D12_COMMAND_QUEUE_DESC extends Struct {
  @Int32()
  external int Type;

  @Int32()
  external int Priority;

  @Uint32()
  external int Flags;

  @Uint32()
  external int NodeMask;
}

/// {@category Struct}
class D3D12_COMMAND_SIGNATURE_DESC extends Struct {
  @Uint32()
  external int ByteStride;

  @Uint32()
  external int NumArgumentDescs;

  external Pointer<D3D12_INDIRECT_ARGUMENT_DESC> pArgumentDescs;

  @Uint32()
  external int NodeMask;
}

/// {@category Struct}
class D3D12_COMPUTE_PIPELINE_STATE_DESC extends Struct {
  external Pointer<COMObject> pRootSignature;

  external D3D12_SHADER_BYTECODE CS;

  @Uint32()
  external int NodeMask;

  external D3D12_CACHED_PIPELINE_STATE CachedPSO;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class D3D12_CONSTANT_BUFFER_VIEW_DESC extends Struct {
  @Uint64()
  external int BufferLocation;

  @Uint32()
  external int SizeInBytes;
}

/// {@category Struct}
class D3D12_CPU_DESCRIPTOR_HANDLE extends Struct {
  @IntPtr()
  external int ptr;
}

/// {@category Struct}
class D3D12_DEBUG_COMMAND_LIST_GPU_BASED_VALIDATION_SETTINGS extends Struct {
  @Int32()
  external int ShaderPatchMode;
}

/// {@category Struct}
class D3D12_DEBUG_DEVICE_GPU_BASED_VALIDATION_SETTINGS extends Struct {
  @Uint32()
  external int MaxMessagesPerCommandList;

  @Int32()
  external int DefaultShaderPatchMode;

  @Int32()
  external int PipelineStateCreateFlags;
}

/// {@category Struct}
class D3D12_DEBUG_DEVICE_GPU_SLOWDOWN_PERFORMANCE_FACTOR extends Struct {
  @Float()
  external double SlowdownFactor;
}

/// {@category Struct}
class D3D12_DEPTH_STENCILOP_DESC extends Struct {
  @Int32()
  external int StencilFailOp;

  @Int32()
  external int StencilDepthFailOp;

  @Int32()
  external int StencilPassOp;

  @Int32()
  external int StencilFunc;
}

/// {@category Struct}
class D3D12_DEPTH_STENCIL_DESC extends Struct {
  @Int32()
  external int DepthEnable;

  @Int32()
  external int DepthWriteMask;

  @Int32()
  external int DepthFunc;

  @Int32()
  external int StencilEnable;

  @Uint8()
  external int StencilReadMask;

  @Uint8()
  external int StencilWriteMask;

  external D3D12_DEPTH_STENCILOP_DESC FrontFace;

  external D3D12_DEPTH_STENCILOP_DESC BackFace;
}

/// {@category Struct}
class D3D12_DEPTH_STENCIL_DESC1 extends Struct {
  @Int32()
  external int DepthEnable;

  @Int32()
  external int DepthWriteMask;

  @Int32()
  external int DepthFunc;

  @Int32()
  external int StencilEnable;

  @Uint8()
  external int StencilReadMask;

  @Uint8()
  external int StencilWriteMask;

  external D3D12_DEPTH_STENCILOP_DESC FrontFace;

  external D3D12_DEPTH_STENCILOP_DESC BackFace;

  @Int32()
  external int DepthBoundsTestEnable;
}

/// {@category Struct}
class D3D12_DEPTH_STENCIL_VALUE extends Struct {
  @Float()
  external double Depth;

  @Uint8()
  external int Stencil;
}

/// {@category Struct}
class D3D12_DEPTH_STENCIL_VIEW_DESC extends Struct {
  @Uint32()
  external int Format;

  @Int32()
  external int ViewDimension;

  @Uint32()
  external int Flags;

  external _D3D12_DEPTH_STENCIL_VIEW_DESC__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D12_DEPTH_STENCIL_VIEW_DESC__Anonymous_e__Union extends Union {
  external D3D12_TEX1D_DSV Texture1D;

  external D3D12_TEX1D_ARRAY_DSV Texture1DArray;

  external D3D12_TEX2D_DSV Texture2D;

  external D3D12_TEX2D_ARRAY_DSV Texture2DArray;

  external D3D12_TEX2DMS_DSV Texture2DMS;

  external D3D12_TEX2DMS_ARRAY_DSV Texture2DMSArray;
}

extension D3D12_DEPTH_STENCIL_VIEW_DESC_Extension
    on D3D12_DEPTH_STENCIL_VIEW_DESC {
  D3D12_TEX1D_DSV get Texture1D => this.Anonymous.Texture1D;
  set Texture1D(D3D12_TEX1D_DSV value) => this.Anonymous.Texture1D = value;

  D3D12_TEX1D_ARRAY_DSV get Texture1DArray => this.Anonymous.Texture1DArray;
  set Texture1DArray(D3D12_TEX1D_ARRAY_DSV value) =>
      this.Anonymous.Texture1DArray = value;

  D3D12_TEX2D_DSV get Texture2D => this.Anonymous.Texture2D;
  set Texture2D(D3D12_TEX2D_DSV value) => this.Anonymous.Texture2D = value;

  D3D12_TEX2D_ARRAY_DSV get Texture2DArray => this.Anonymous.Texture2DArray;
  set Texture2DArray(D3D12_TEX2D_ARRAY_DSV value) =>
      this.Anonymous.Texture2DArray = value;

  D3D12_TEX2DMS_DSV get Texture2DMS => this.Anonymous.Texture2DMS;
  set Texture2DMS(D3D12_TEX2DMS_DSV value) =>
      this.Anonymous.Texture2DMS = value;

  D3D12_TEX2DMS_ARRAY_DSV get Texture2DMSArray =>
      this.Anonymous.Texture2DMSArray;
  set Texture2DMSArray(D3D12_TEX2DMS_ARRAY_DSV value) =>
      this.Anonymous.Texture2DMSArray = value;
}

/// {@category Struct}
class D3D12_DESCRIPTOR_HEAP_DESC extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int NumDescriptors;

  @Uint32()
  external int Flags;

  @Uint32()
  external int NodeMask;
}

/// {@category Struct}
class D3D12_DESCRIPTOR_RANGE extends Struct {
  @Int32()
  external int RangeType;

  @Uint32()
  external int NumDescriptors;

  @Uint32()
  external int BaseShaderRegister;

  @Uint32()
  external int RegisterSpace;

  @Uint32()
  external int OffsetInDescriptorsFromTableStart;
}

/// {@category Struct}
class D3D12_DESCRIPTOR_RANGE1 extends Struct {
  @Int32()
  external int RangeType;

  @Uint32()
  external int NumDescriptors;

  @Uint32()
  external int BaseShaderRegister;

  @Uint32()
  external int RegisterSpace;

  @Uint32()
  external int Flags;

  @Uint32()
  external int OffsetInDescriptorsFromTableStart;
}

/// {@category Struct}
class D3D12_DEVICE_REMOVED_EXTENDED_DATA extends Struct {
  @Uint32()
  external int Flags;

  external Pointer<D3D12_AUTO_BREADCRUMB_NODE> pHeadAutoBreadcrumbNode;
}

/// {@category Struct}
class D3D12_DEVICE_REMOVED_EXTENDED_DATA1 extends Struct {
  @Int32()
  external int DeviceRemovedReason;

  external D3D12_DRED_AUTO_BREADCRUMBS_OUTPUT AutoBreadcrumbsOutput;

  external D3D12_DRED_PAGE_FAULT_OUTPUT PageFaultOutput;
}

/// {@category Struct}
class D3D12_DEVICE_REMOVED_EXTENDED_DATA2 extends Struct {
  @Int32()
  external int DeviceRemovedReason;

  external D3D12_DRED_AUTO_BREADCRUMBS_OUTPUT1 AutoBreadcrumbsOutput;

  external D3D12_DRED_PAGE_FAULT_OUTPUT1 PageFaultOutput;
}

/// {@category Struct}
class D3D12_DEVICE_REMOVED_EXTENDED_DATA3 extends Struct {
  @Int32()
  external int DeviceRemovedReason;

  external D3D12_DRED_AUTO_BREADCRUMBS_OUTPUT1 AutoBreadcrumbsOutput;

  external D3D12_DRED_PAGE_FAULT_OUTPUT2 PageFaultOutput;

  @Int32()
  external int DeviceState;
}

/// {@category Struct}
class D3D12_DISCARD_REGION extends Struct {
  @Uint32()
  external int NumRects;

  external Pointer<RECT> pRects;

  @Uint32()
  external int FirstSubresource;

  @Uint32()
  external int NumSubresources;
}

/// {@category Struct}
class D3D12_DISPATCH_ARGUMENTS extends Struct {
  @Uint32()
  external int ThreadGroupCountX;

  @Uint32()
  external int ThreadGroupCountY;

  @Uint32()
  external int ThreadGroupCountZ;
}

/// {@category Struct}
class D3D12_DISPATCH_MESH_ARGUMENTS extends Struct {
  @Uint32()
  external int ThreadGroupCountX;

  @Uint32()
  external int ThreadGroupCountY;

  @Uint32()
  external int ThreadGroupCountZ;
}

/// {@category Struct}
class D3D12_DISPATCH_RAYS_DESC extends Struct {
  external D3D12_GPU_VIRTUAL_ADDRESS_RANGE RayGenerationShaderRecord;

  external D3D12_GPU_VIRTUAL_ADDRESS_RANGE_AND_STRIDE MissShaderTable;

  external D3D12_GPU_VIRTUAL_ADDRESS_RANGE_AND_STRIDE HitGroupTable;

  external D3D12_GPU_VIRTUAL_ADDRESS_RANGE_AND_STRIDE CallableShaderTable;

  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  @Uint32()
  external int Depth;
}

/// {@category Struct}
class D3D12_DRAW_ARGUMENTS extends Struct {
  @Uint32()
  external int VertexCountPerInstance;

  @Uint32()
  external int InstanceCount;

  @Uint32()
  external int StartVertexLocation;

  @Uint32()
  external int StartInstanceLocation;
}

/// {@category Struct}
class D3D12_DRAW_INDEXED_ARGUMENTS extends Struct {
  @Uint32()
  external int IndexCountPerInstance;

  @Uint32()
  external int InstanceCount;

  @Uint32()
  external int StartIndexLocation;

  @Int32()
  external int BaseVertexLocation;

  @Uint32()
  external int StartInstanceLocation;
}

/// {@category Struct}
class D3D12_DRED_ALLOCATION_NODE extends Struct {
  external Pointer<Uint8> ObjectNameA;

  external Pointer<Utf16> ObjectNameW;

  @Int32()
  external int AllocationType;

  external Pointer<D3D12_DRED_ALLOCATION_NODE> pNext;
}

/// {@category Struct}
class D3D12_DRED_ALLOCATION_NODE1 extends Struct {
  external Pointer<Uint8> ObjectNameA;

  external Pointer<Utf16> ObjectNameW;

  @Int32()
  external int AllocationType;

  external Pointer<D3D12_DRED_ALLOCATION_NODE1> pNext;

  external Pointer<COMObject> pObject;
}

/// {@category Struct}
class D3D12_DRED_AUTO_BREADCRUMBS_OUTPUT extends Struct {
  external Pointer<D3D12_AUTO_BREADCRUMB_NODE> pHeadAutoBreadcrumbNode;
}

/// {@category Struct}
class D3D12_DRED_AUTO_BREADCRUMBS_OUTPUT1 extends Struct {
  external Pointer<D3D12_AUTO_BREADCRUMB_NODE1> pHeadAutoBreadcrumbNode;
}

/// {@category Struct}
class D3D12_DRED_BREADCRUMB_CONTEXT extends Struct {
  @Uint32()
  external int BreadcrumbIndex;

  external Pointer<Utf16> pContextString;
}

/// {@category Struct}
class D3D12_DRED_PAGE_FAULT_OUTPUT extends Struct {
  @Uint64()
  external int PageFaultVA;

  external Pointer<D3D12_DRED_ALLOCATION_NODE> pHeadExistingAllocationNode;

  external Pointer<D3D12_DRED_ALLOCATION_NODE> pHeadRecentFreedAllocationNode;
}

/// {@category Struct}
class D3D12_DRED_PAGE_FAULT_OUTPUT1 extends Struct {
  @Uint64()
  external int PageFaultVA;

  external Pointer<D3D12_DRED_ALLOCATION_NODE1> pHeadExistingAllocationNode;

  external Pointer<D3D12_DRED_ALLOCATION_NODE1> pHeadRecentFreedAllocationNode;
}

/// {@category Struct}
class D3D12_DRED_PAGE_FAULT_OUTPUT2 extends Struct {
  @Uint64()
  external int PageFaultVA;

  external Pointer<D3D12_DRED_ALLOCATION_NODE1> pHeadExistingAllocationNode;

  external Pointer<D3D12_DRED_ALLOCATION_NODE1> pHeadRecentFreedAllocationNode;

  @Uint32()
  external int PageFaultFlags;
}

/// {@category Struct}
class D3D12_DXIL_LIBRARY_DESC extends Struct {
  external D3D12_SHADER_BYTECODE DXILLibrary;

  @Uint32()
  external int NumExports;

  external Pointer<D3D12_EXPORT_DESC> pExports;
}

/// {@category Struct}
class D3D12_DXIL_SUBOBJECT_TO_EXPORTS_ASSOCIATION extends Struct {
  external Pointer<Utf16> SubobjectToAssociate;

  @Uint32()
  external int NumExports;

  external Pointer<Pointer<Utf16>> pExports;
}

/// {@category Struct}
class D3D12_EXISTING_COLLECTION_DESC extends Struct {
  external Pointer<COMObject> pExistingCollection;

  @Uint32()
  external int NumExports;

  external Pointer<D3D12_EXPORT_DESC> pExports;
}

/// {@category Struct}
class D3D12_EXPORT_DESC extends Struct {
  external Pointer<Utf16> Name;

  external Pointer<Utf16> ExportToRename;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_ARCHITECTURE extends Struct {
  @Uint32()
  external int NodeIndex;

  @Int32()
  external int TileBasedRenderer;

  @Int32()
  external int UMA;

  @Int32()
  external int CacheCoherentUMA;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_ARCHITECTURE1 extends Struct {
  @Uint32()
  external int NodeIndex;

  @Int32()
  external int TileBasedRenderer;

  @Int32()
  external int UMA;

  @Int32()
  external int CacheCoherentUMA;

  @Int32()
  external int IsolatedMMU;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_COMMAND_QUEUE_PRIORITY extends Struct {
  @Int32()
  external int CommandListType;

  @Uint32()
  external int Priority;

  @Int32()
  external int PriorityForTypeIsSupported;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_CROSS_NODE extends Struct {
  @Int32()
  external int SharingTier;

  @Int32()
  external int AtomicShaderInstructions;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_D3D12_OPTIONS extends Struct {
  @Int32()
  external int DoublePrecisionFloatShaderOps;

  @Int32()
  external int OutputMergerLogicOp;

  @Uint32()
  external int MinPrecisionSupport;

  @Int32()
  external int TiledResourcesTier;

  @Int32()
  external int ResourceBindingTier;

  @Int32()
  external int PSSpecifiedStencilRefSupported;

  @Int32()
  external int TypedUAVLoadAdditionalFormats;

  @Int32()
  external int ROVsSupported;

  @Int32()
  external int ConservativeRasterizationTier;

  @Uint32()
  external int MaxGPUVirtualAddressBitsPerResource;

  @Int32()
  external int StandardSwizzle64KBSupported;

  @Int32()
  external int CrossNodeSharingTier;

  @Int32()
  external int CrossAdapterRowMajorTextureSupported;

  @Int32()
  external int
      VPAndRTArrayIndexFromAnyShaderFeedingRasterizerSupportedWithoutGSEmulation;

  @Int32()
  external int ResourceHeapTier;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_D3D12_OPTIONS1 extends Struct {
  @Int32()
  external int WaveOps;

  @Uint32()
  external int WaveLaneCountMin;

  @Uint32()
  external int WaveLaneCountMax;

  @Uint32()
  external int TotalLaneCount;

  @Int32()
  external int ExpandedComputeResourceStates;

  @Int32()
  external int Int64ShaderOps;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_D3D12_OPTIONS10 extends Struct {
  @Int32()
  external int VariableRateShadingSumCombinerSupported;

  @Int32()
  external int MeshShaderPerPrimitiveShadingRateSupported;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_D3D12_OPTIONS11 extends Struct {
  @Int32()
  external int AtomicInt64OnDescriptorHeapResourceSupported;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_D3D12_OPTIONS2 extends Struct {
  @Int32()
  external int DepthBoundsTestSupported;

  @Int32()
  external int ProgrammableSamplePositionsTier;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_D3D12_OPTIONS3 extends Struct {
  @Int32()
  external int CopyQueueTimestampQueriesSupported;

  @Int32()
  external int CastingFullyTypedFormatSupported;

  @Uint32()
  external int WriteBufferImmediateSupportFlags;

  @Int32()
  external int ViewInstancingTier;

  @Int32()
  external int BarycentricsSupported;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_D3D12_OPTIONS4 extends Struct {
  @Int32()
  external int MSAA64KBAlignedTextureSupported;

  @Int32()
  external int SharedResourceCompatibilityTier;

  @Int32()
  external int Native16BitShaderOpsSupported;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_D3D12_OPTIONS5 extends Struct {
  @Int32()
  external int SRVOnlyTiledResourceTier3;

  @Int32()
  external int RenderPassesTier;

  @Int32()
  external int RaytracingTier;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_D3D12_OPTIONS6 extends Struct {
  @Int32()
  external int AdditionalShadingRatesSupported;

  @Int32()
  external int PerPrimitiveShadingRateSupportedWithViewportIndexing;

  @Int32()
  external int VariableShadingRateTier;

  @Uint32()
  external int ShadingRateImageTileSize;

  @Int32()
  external int BackgroundProcessingSupported;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_D3D12_OPTIONS7 extends Struct {
  @Int32()
  external int MeshShaderTier;

  @Int32()
  external int SamplerFeedbackTier;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_D3D12_OPTIONS8 extends Struct {
  @Int32()
  external int UnalignedBlockTexturesSupported;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_D3D12_OPTIONS9 extends Struct {
  @Int32()
  external int MeshShaderPipelineStatsSupported;

  @Int32()
  external int MeshShaderSupportsFullRangeRenderTargetArrayIndex;

  @Int32()
  external int AtomicInt64OnTypedResourceSupported;

  @Int32()
  external int AtomicInt64OnGroupSharedSupported;

  @Int32()
  external int DerivativesInMeshAndAmplificationShadersSupported;

  @Int32()
  external int WaveMMATier;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_DISPLAYABLE extends Struct {
  @Int32()
  external int DisplayableTexture;

  @Int32()
  external int SharedResourceCompatibilityTier;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_EXISTING_HEAPS extends Struct {
  @Int32()
  external int Supported;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_FEATURE_LEVELS extends Struct {
  @Uint32()
  external int NumFeatureLevels;

  external Pointer<Int32> pFeatureLevelsRequested;

  @Int32()
  external int MaxSupportedFeatureLevel;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_FORMAT_INFO extends Struct {
  @Uint32()
  external int Format;

  @Uint8()
  external int PlaneCount;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_FORMAT_SUPPORT extends Struct {
  @Uint32()
  external int Format;

  @Uint32()
  external int Support1;

  @Uint32()
  external int Support2;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_GPU_VIRTUAL_ADDRESS_SUPPORT extends Struct {
  @Uint32()
  external int MaxGPUVirtualAddressBitsPerResource;

  @Uint32()
  external int MaxGPUVirtualAddressBitsPerProcess;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_MULTISAMPLE_QUALITY_LEVELS extends Struct {
  @Uint32()
  external int Format;

  @Uint32()
  external int SampleCount;

  @Uint32()
  external int Flags;

  @Uint32()
  external int NumQualityLevels;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_PROTECTED_RESOURCE_SESSION_SUPPORT extends Struct {
  @Uint32()
  external int NodeIndex;

  @Uint32()
  external int Support;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_PROTECTED_RESOURCE_SESSION_TYPES extends Struct {
  @Uint32()
  external int NodeIndex;

  @Uint32()
  external int Count;

  external Pointer<GUID> pTypes;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_PROTECTED_RESOURCE_SESSION_TYPE_COUNT extends Struct {
  @Uint32()
  external int NodeIndex;

  @Uint32()
  external int Count;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_QUERY_META_COMMAND extends Struct {
  external GUID CommandId;

  @Uint32()
  external int NodeMask;

  external Pointer pQueryInputData;

  @IntPtr()
  external int QueryInputDataSizeInBytes;

  external Pointer pQueryOutputData;

  @IntPtr()
  external int QueryOutputDataSizeInBytes;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_ROOT_SIGNATURE extends Struct {
  @Int32()
  external int HighestVersion;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_SERIALIZATION extends Struct {
  @Uint32()
  external int NodeIndex;

  @Int32()
  external int HeapSerializationTier;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_SHADER_CACHE extends Struct {
  @Uint32()
  external int SupportFlags;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_SHADER_MODEL extends Struct {
  @Int32()
  external int HighestShaderModel;
}

/// {@category Struct}
class D3D12_FUNCTION_DESC extends Struct {
  @Uint32()
  external int Version;

  external Pointer<Utf8> Creator;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ConstantBuffers;

  @Uint32()
  external int BoundResources;

  @Uint32()
  external int InstructionCount;

  @Uint32()
  external int TempRegisterCount;

  @Uint32()
  external int TempArrayCount;

  @Uint32()
  external int DefCount;

  @Uint32()
  external int DclCount;

  @Uint32()
  external int TextureNormalInstructions;

  @Uint32()
  external int TextureLoadInstructions;

  @Uint32()
  external int TextureCompInstructions;

  @Uint32()
  external int TextureBiasInstructions;

  @Uint32()
  external int TextureGradientInstructions;

  @Uint32()
  external int FloatInstructionCount;

  @Uint32()
  external int IntInstructionCount;

  @Uint32()
  external int UintInstructionCount;

  @Uint32()
  external int StaticFlowControlCount;

  @Uint32()
  external int DynamicFlowControlCount;

  @Uint32()
  external int MacroInstructionCount;

  @Uint32()
  external int ArrayInstructionCount;

  @Uint32()
  external int MovInstructionCount;

  @Uint32()
  external int MovcInstructionCount;

  @Uint32()
  external int ConversionInstructionCount;

  @Uint32()
  external int BitwiseInstructionCount;

  @Int32()
  external int MinFeatureLevel;

  @Uint64()
  external int RequiredFeatureFlags;

  external Pointer<Utf8> Name;

  @Int32()
  external int FunctionParameterCount;

  @Int32()
  external int HasReturn;

  @Int32()
  external int Has10Level9VertexShader;

  @Int32()
  external int Has10Level9PixelShader;
}

/// {@category Struct}
class D3D12_GLOBAL_ROOT_SIGNATURE extends Struct {
  external Pointer<COMObject> pGlobalRootSignature;
}

/// {@category Struct}
class D3D12_GPU_DESCRIPTOR_HANDLE extends Struct {
  @Uint64()
  external int ptr;
}

/// {@category Struct}
class D3D12_GPU_VIRTUAL_ADDRESS_AND_STRIDE extends Struct {
  @Uint64()
  external int StartAddress;

  @Uint64()
  external int StrideInBytes;
}

/// {@category Struct}
class D3D12_GPU_VIRTUAL_ADDRESS_RANGE extends Struct {
  @Uint64()
  external int StartAddress;

  @Uint64()
  external int SizeInBytes;
}

/// {@category Struct}
class D3D12_GPU_VIRTUAL_ADDRESS_RANGE_AND_STRIDE extends Struct {
  @Uint64()
  external int StartAddress;

  @Uint64()
  external int SizeInBytes;

  @Uint64()
  external int StrideInBytes;
}

/// {@category Struct}
class D3D12_GRAPHICS_PIPELINE_STATE_DESC extends Struct {
  external Pointer<COMObject> pRootSignature;

  external D3D12_SHADER_BYTECODE VS;

  external D3D12_SHADER_BYTECODE PS;

  external D3D12_SHADER_BYTECODE DS;

  external D3D12_SHADER_BYTECODE HS;

  external D3D12_SHADER_BYTECODE GS;

  external D3D12_STREAM_OUTPUT_DESC StreamOutput;

  external D3D12_BLEND_DESC BlendState;

  @Uint32()
  external int SampleMask;

  external D3D12_RASTERIZER_DESC RasterizerState;

  external D3D12_DEPTH_STENCIL_DESC DepthStencilState;

  external D3D12_INPUT_LAYOUT_DESC InputLayout;

  @Int32()
  external int IBStripCutValue;

  @Int32()
  external int PrimitiveTopologyType;

  @Uint32()
  external int NumRenderTargets;

  @Array(8)
  external Array<Uint32> RTVFormats;

  @Uint32()
  external int DSVFormat;

  external DXGI_SAMPLE_DESC SampleDesc;

  @Uint32()
  external int NodeMask;

  external D3D12_CACHED_PIPELINE_STATE CachedPSO;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class D3D12_HEAP_DESC extends Struct {
  @Uint64()
  external int SizeInBytes;

  external D3D12_HEAP_PROPERTIES Properties;

  @Uint64()
  external int Alignment;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class D3D12_HEAP_PROPERTIES extends Struct {
  @Int32()
  external int Type;

  @Int32()
  external int CPUPageProperty;

  @Int32()
  external int MemoryPoolPreference;

  @Uint32()
  external int CreationNodeMask;

  @Uint32()
  external int VisibleNodeMask;
}

/// {@category Struct}
class D3D12_HIT_GROUP_DESC extends Struct {
  external Pointer<Utf16> HitGroupExport;

  @Int32()
  external int Type;

  external Pointer<Utf16> AnyHitShaderImport;

  external Pointer<Utf16> ClosestHitShaderImport;

  external Pointer<Utf16> IntersectionShaderImport;
}

/// {@category Struct}
class D3D12_INDEX_BUFFER_VIE extends Struct {
  @Uint64()
  external int BufferLocation;

  @Uint32()
  external int SizeInBytes;

  @Uint32()
  external int Format;
}

/// {@category Struct}
class D3D12_INDIRECT_ARGUMENT_DESC extends Struct {
  @Int32()
  external int Type;

  external _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union extends Union {
  external _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__VertexBuffer_e__Struct
      VertexBuffer;

  external _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__Constant_e__Struct
      Constant;

  external _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__ConstantBufferView_e__Struct
      ConstantBufferView;

  external _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__ShaderResourceView_e__Struct
      ShaderResourceView;

  external _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__UnorderedAccessView_e__Struct
      UnorderedAccessView;
}

/// {@category Struct}
class _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__VertexBuffer_e__Struct
    extends Struct {
  @Uint32()
  external int Slot;
}

extension D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union_Extension
    on D3D12_INDIRECT_ARGUMENT_DESC {
  int get Slot => this.Anonymous.VertexBuffer.Slot;
  set Slot(int value) => this.Anonymous.VertexBuffer.Slot = value;
}

/// {@category Struct}
class _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__Constant_e__Struct
    extends Struct {
  @Uint32()
  external int RootParameterIndex;

  @Uint32()
  external int DestOffsetIn32BitValues;

  @Uint32()
  external int Num32BitValuesToSet;
}

extension D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union_Extension_1
    on D3D12_INDIRECT_ARGUMENT_DESC {
  int get RootParameterIndex => this.Anonymous.Constant.RootParameterIndex;
  set RootParameterIndex(int value) =>
      this.Anonymous.Constant.RootParameterIndex = value;

  int get DestOffsetIn32BitValues =>
      this.Anonymous.Constant.DestOffsetIn32BitValues;
  set DestOffsetIn32BitValues(int value) =>
      this.Anonymous.Constant.DestOffsetIn32BitValues = value;

  int get Num32BitValuesToSet => this.Anonymous.Constant.Num32BitValuesToSet;
  set Num32BitValuesToSet(int value) =>
      this.Anonymous.Constant.Num32BitValuesToSet = value;
}

/// {@category Struct}
class _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__ConstantBufferView_e__Struct
    extends Struct {
  @Uint32()
  external int RootParameterIndex;
}

extension D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union_Extension_2
    on D3D12_INDIRECT_ARGUMENT_DESC {
  int get RootParameterIndex =>
      this.Anonymous.ConstantBufferView.RootParameterIndex;
  set RootParameterIndex(int value) =>
      this.Anonymous.ConstantBufferView.RootParameterIndex = value;
}

/// {@category Struct}
class _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__ShaderResourceView_e__Struct
    extends Struct {
  @Uint32()
  external int RootParameterIndex;
}

extension D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union_Extension_3
    on D3D12_INDIRECT_ARGUMENT_DESC {
  int get RootParameterIndex =>
      this.Anonymous.ShaderResourceView.RootParameterIndex;
  set RootParameterIndex(int value) =>
      this.Anonymous.ShaderResourceView.RootParameterIndex = value;
}

/// {@category Struct}
class _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__UnorderedAccessView_e__Struct
    extends Struct {
  @Uint32()
  external int RootParameterIndex;
}

extension D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union_Extension_4
    on D3D12_INDIRECT_ARGUMENT_DESC {
  int get RootParameterIndex =>
      this.Anonymous.UnorderedAccessView.RootParameterIndex;
  set RootParameterIndex(int value) =>
      this.Anonymous.UnorderedAccessView.RootParameterIndex = value;
}

extension D3D12_INDIRECT_ARGUMENT_DESC_Extension
    on D3D12_INDIRECT_ARGUMENT_DESC {
  _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__VertexBuffer_e__Struct
      get VertexBuffer => this.Anonymous.VertexBuffer;
  set VertexBuffer(
          _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__VertexBuffer_e__Struct
              value) =>
      this.Anonymous.VertexBuffer = value;

  _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__Constant_e__Struct
      get Constant => this.Anonymous.Constant;
  set Constant(
          _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__Constant_e__Struct
              value) =>
      this.Anonymous.Constant = value;

  _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__ConstantBufferView_e__Struct
      get ConstantBufferView => this.Anonymous.ConstantBufferView;
  set ConstantBufferView(
          _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__ConstantBufferView_e__Struct
              value) =>
      this.Anonymous.ConstantBufferView = value;

  _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__ShaderResourceView_e__Struct
      get ShaderResourceView => this.Anonymous.ShaderResourceView;
  set ShaderResourceView(
          _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__ShaderResourceView_e__Struct
              value) =>
      this.Anonymous.ShaderResourceView = value;

  _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__UnorderedAccessView_e__Struct
      get UnorderedAccessView => this.Anonymous.UnorderedAccessView;
  set UnorderedAccessView(
          _D3D12_INDIRECT_ARGUMENT_DESC__Anonymous_e__Union__UnorderedAccessView_e__Struct
              value) =>
      this.Anonymous.UnorderedAccessView = value;
}

/// {@category Struct}
class D3D12_INFO_QUEUE_FILTER extends Struct {
  external D3D12_INFO_QUEUE_FILTER_DESC AllowList;

  external D3D12_INFO_QUEUE_FILTER_DESC DenyList;
}

/// {@category Struct}
class D3D12_INFO_QUEUE_FILTER_DESC extends Struct {
  @Uint32()
  external int NumCategories;

  external Pointer<Int32> pCategoryList;

  @Uint32()
  external int NumSeverities;

  external Pointer<Int32> pSeverityList;

  @Uint32()
  external int NumIDs;

  external Pointer<Int32> pIDList;
}

/// {@category Struct}
class D3D12_INPUT_ELEMENT_DESC extends Struct {
  external Pointer<Utf8> SemanticName;

  @Uint32()
  external int SemanticIndex;

  @Uint32()
  external int Format;

  @Uint32()
  external int InputSlot;

  @Uint32()
  external int AlignedByteOffset;

  @Int32()
  external int InputSlotClass;

  @Uint32()
  external int InstanceDataStepRate;
}

/// {@category Struct}
class D3D12_INPUT_LAYOUT_DESC extends Struct {
  external Pointer<D3D12_INPUT_ELEMENT_DESC> pInputElementDescs;

  @Uint32()
  external int NumElements;
}

/// {@category Struct}
class D3D12_LIBRARY_DESC extends Struct {
  external Pointer<Utf8> Creator;

  @Uint32()
  external int Flags;

  @Uint32()
  external int FunctionCount;
}

/// {@category Struct}
class D3D12_LOCAL_ROOT_SIGNATURE extends Struct {
  external Pointer<COMObject> pLocalRootSignature;
}

/// {@category Struct}
class D3D12_MEMCPY_DEST extends Struct {
  external Pointer pData;

  @IntPtr()
  external int RowPitch;

  @IntPtr()
  external int SlicePitch;
}

/// {@category Struct}
class D3D12_MESSAGE extends Struct {
  @Int32()
  external int Category;

  @Int32()
  external int Severity;

  @Int32()
  external int ID;

  external Pointer<Uint8> pDescription;

  @IntPtr()
  external int DescriptionByteLength;
}

/// {@category Struct}
class D3D12_META_COMMAND_DESC extends Struct {
  external GUID Id;

  external Pointer<Utf16> Name;

  @Uint32()
  external int InitializationDirtyState;

  @Uint32()
  external int ExecutionDirtyState;
}

/// {@category Struct}
class D3D12_META_COMMAND_PARAMETER_DESC extends Struct {
  external Pointer<Utf16> Name;

  @Int32()
  external int Type;

  @Uint32()
  external int Flags;

  @Uint32()
  external int RequiredResourceState;

  @Uint32()
  external int StructureOffset;
}

/// {@category Struct}
class D3D12_MIP_REGION extends Struct {
  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  @Uint32()
  external int Depth;
}

/// {@category Struct}
class D3D12_NODE_MASK extends Struct {
  @Uint32()
  external int NodeMask;
}

/// {@category Struct}
class D3D12_PACKED_MIP_INFO extends Struct {
  @Uint8()
  external int NumStandardMips;

  @Uint8()
  external int NumPackedMips;

  @Uint32()
  external int NumTilesForPackedMips;

  @Uint32()
  external int StartTileIndexInOverallResource;
}

/// {@category Struct}
class D3D12_PARAMETER_DESC extends Struct {
  external Pointer<Utf8> Name;

  external Pointer<Utf8> SemanticName;

  @Int32()
  external int Type;

  @Int32()
  external int Class;

  @Uint32()
  external int Rows;

  @Uint32()
  external int Columns;

  @Int32()
  external int InterpolationMode;

  @Int32()
  external int Flags;

  @Uint32()
  external int FirstInRegister;

  @Uint32()
  external int FirstInComponent;

  @Uint32()
  external int FirstOutRegister;

  @Uint32()
  external int FirstOutComponent;
}

/// {@category Struct}
class D3D12_PIPELINE_STATE_STREAM_DESC extends Struct {
  @IntPtr()
  external int SizeInBytes;

  external Pointer pPipelineStateSubobjectStream;
}

/// {@category Struct}
class D3D12_PLACED_SUBRESOURCE_FOOTPRINT extends Struct {
  @Uint64()
  external int Offset;

  external D3D12_SUBRESOURCE_FOOTPRINT Footprint;
}

/// {@category Struct}
class D3D12_PROTECTED_RESOURCE_SESSION_DESC extends Struct {
  @Uint32()
  external int NodeMask;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class D3D12_PROTECTED_RESOURCE_SESSION_DESC1 extends Struct {
  @Uint32()
  external int NodeMask;

  @Uint32()
  external int Flags;

  external GUID ProtectionType;
}

/// {@category Struct}
class D3D12_QUERY_DATA_PIPELINE_STATISTICS extends Struct {
  @Uint64()
  external int IAVertices;

  @Uint64()
  external int IAPrimitives;

  @Uint64()
  external int VSInvocations;

  @Uint64()
  external int GSInvocations;

  @Uint64()
  external int GSPrimitives;

  @Uint64()
  external int CInvocations;

  @Uint64()
  external int CPrimitives;

  @Uint64()
  external int PSInvocations;

  @Uint64()
  external int HSInvocations;

  @Uint64()
  external int DSInvocations;

  @Uint64()
  external int CSInvocations;
}

/// {@category Struct}
class D3D12_QUERY_DATA_PIPELINE_STATISTICS1 extends Struct {
  @Uint64()
  external int IAVertices;

  @Uint64()
  external int IAPrimitives;

  @Uint64()
  external int VSInvocations;

  @Uint64()
  external int GSInvocations;

  @Uint64()
  external int GSPrimitives;

  @Uint64()
  external int CInvocations;

  @Uint64()
  external int CPrimitives;

  @Uint64()
  external int PSInvocations;

  @Uint64()
  external int HSInvocations;

  @Uint64()
  external int DSInvocations;

  @Uint64()
  external int CSInvocations;

  @Uint64()
  external int ASInvocations;

  @Uint64()
  external int MSInvocations;

  @Uint64()
  external int MSPrimitives;
}

/// {@category Struct}
class D3D12_QUERY_DATA_SO_STATISTICS extends Struct {
  @Uint64()
  external int NumPrimitivesWritten;

  @Uint64()
  external int PrimitivesStorageNeeded;
}

/// {@category Struct}
class D3D12_QUERY_HEAP_DESC extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Count;

  @Uint32()
  external int NodeMask;
}

/// {@category Struct}
class D3D12_RANGE extends Struct {
  @IntPtr()
  external int Begin;

  @IntPtr()
  external int End;
}

/// {@category Struct}
class D3D12_RANGE_UINT64 extends Struct {
  @Uint64()
  external int Begin;

  @Uint64()
  external int End;
}

/// {@category Struct}
class D3D12_RASTERIZER_DESC extends Struct {
  @Int32()
  external int FillMode;

  @Int32()
  external int CullMode;

  @Int32()
  external int FrontCounterClockwise;

  @Int32()
  external int DepthBias;

  @Float()
  external double DepthBiasClamp;

  @Float()
  external double SlopeScaledDepthBias;

  @Int32()
  external int DepthClipEnable;

  @Int32()
  external int MultisampleEnable;

  @Int32()
  external int AntialiasedLineEnable;

  @Uint32()
  external int ForcedSampleCount;

  @Int32()
  external int ConservativeRaster;
}

/// {@category Struct}
class D3D12_RAYTRACING_AABB extends Struct {
  @Float()
  external double MinX;

  @Float()
  external double MinY;

  @Float()
  external double MinZ;

  @Float()
  external double MaxX;

  @Float()
  external double MaxY;

  @Float()
  external double MaxZ;
}

/// {@category Struct}
class D3D12_RAYTRACING_ACCELERATION_STRUCTURE_POSTBUILD_INFO_COMPACTED_SIZE_DESC
    extends Struct {
  @Uint64()
  external int CompactedSizeInBytes;
}

/// {@category Struct}
class D3D12_RAYTRACING_ACCELERATION_STRUCTURE_POSTBUILD_INFO_CURRENT_SIZE_DESC
    extends Struct {
  @Uint64()
  external int CurrentSizeInBytes;
}

/// {@category Struct}
class D3D12_RAYTRACING_ACCELERATION_STRUCTURE_POSTBUILD_INFO_DESC
    extends Struct {
  @Uint64()
  external int DestBuffer;

  @Int32()
  external int InfoType;
}

/// {@category Struct}
class D3D12_RAYTRACING_ACCELERATION_STRUCTURE_POSTBUILD_INFO_SERIALIZATION_DESC
    extends Struct {
  @Uint64()
  external int SerializedSizeInBytes;

  @Uint64()
  external int NumBottomLevelAccelerationStructurePointers;
}

/// {@category Struct}
class D3D12_RAYTRACING_ACCELERATION_STRUCTURE_POSTBUILD_INFO_TOOLS_VISUALIZATION_DESC
    extends Struct {
  @Uint64()
  external int DecodedSizeInBytes;
}

/// {@category Struct}
class D3D12_RAYTRACING_ACCELERATION_STRUCTURE_PREBUILD_INFO extends Struct {
  @Uint64()
  external int ResultDataMaxSizeInBytes;

  @Uint64()
  external int ScratchDataSizeInBytes;

  @Uint64()
  external int UpdateScratchDataSizeInBytes;
}

/// {@category Struct}
class D3D12_RAYTRACING_ACCELERATION_STRUCTURE_SRV extends Struct {
  @Uint64()
  external int Location;
}

/// {@category Struct}
class D3D12_RAYTRACING_GEOMETRY_AABBS_DESC extends Struct {
  @Uint64()
  external int AABBCount;

  external D3D12_GPU_VIRTUAL_ADDRESS_AND_STRIDE AABBs;
}

/// {@category Struct}
class D3D12_RAYTRACING_GEOMETRY_DESC extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Flags;

  external _D3D12_RAYTRACING_GEOMETRY_DESC__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D12_RAYTRACING_GEOMETRY_DESC__Anonymous_e__Union extends Union {
  external D3D12_RAYTRACING_GEOMETRY_TRIANGLES_DESC Triangles;

  external D3D12_RAYTRACING_GEOMETRY_AABBS_DESC AABBs;
}

extension D3D12_RAYTRACING_GEOMETRY_DESC_Extension
    on D3D12_RAYTRACING_GEOMETRY_DESC {
  D3D12_RAYTRACING_GEOMETRY_TRIANGLES_DESC get Triangles =>
      this.Anonymous.Triangles;
  set Triangles(D3D12_RAYTRACING_GEOMETRY_TRIANGLES_DESC value) =>
      this.Anonymous.Triangles = value;

  D3D12_RAYTRACING_GEOMETRY_AABBS_DESC get AABBs => this.Anonymous.AABBs;
  set AABBs(D3D12_RAYTRACING_GEOMETRY_AABBS_DESC value) =>
      this.Anonymous.AABBs = value;
}

/// {@category Struct}
class D3D12_RAYTRACING_GEOMETRY_TRIANGLES_DESC extends Struct {
  @Uint64()
  external int Transform3x4;

  @Uint32()
  external int IndexFormat;

  @Uint32()
  external int VertexFormat;

  @Uint32()
  external int IndexCount;

  @Uint32()
  external int VertexCount;

  @Uint64()
  external int IndexBuffer;

  external D3D12_GPU_VIRTUAL_ADDRESS_AND_STRIDE VertexBuffer;
}

/// {@category Struct}
class D3D12_RAYTRACING_INSTANCE_DESC extends Struct {
  @Array(12)
  external Array<Float> Transform;

  @Uint32()
  external int bitfield1;

  @Uint32()
  external int bitfield2;

  @Uint64()
  external int AccelerationStructure;
}

/// {@category Struct}
class D3D12_RAYTRACING_PIPELINE_CONFIG extends Struct {
  @Uint32()
  external int MaxTraceRecursionDepth;
}

/// {@category Struct}
class D3D12_RAYTRACING_PIPELINE_CONFIG1 extends Struct {
  @Uint32()
  external int MaxTraceRecursionDepth;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class D3D12_RAYTRACING_SHADER_CONFIG extends Struct {
  @Uint32()
  external int MaxPayloadSizeInBytes;

  @Uint32()
  external int MaxAttributeSizeInBytes;
}

/// {@category Struct}
class D3D12_RENDER_PASS_BEGINNING_ACCESS extends Struct {
  @Int32()
  external int Type;

  external _D3D12_RENDER_PASS_BEGINNING_ACCESS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D12_RENDER_PASS_BEGINNING_ACCESS__Anonymous_e__Union extends Union {
  external D3D12_RENDER_PASS_BEGINNING_ACCESS_CLEAR_PARAMETERS Clear;
}

extension D3D12_RENDER_PASS_BEGINNING_ACCESS_Extension
    on D3D12_RENDER_PASS_BEGINNING_ACCESS {
  D3D12_RENDER_PASS_BEGINNING_ACCESS_CLEAR_PARAMETERS get Clear =>
      this.Anonymous.Clear;
  set Clear(D3D12_RENDER_PASS_BEGINNING_ACCESS_CLEAR_PARAMETERS value) =>
      this.Anonymous.Clear = value;
}

/// {@category Struct}
class D3D12_RENDER_PASS_BEGINNING_ACCESS_CLEAR_PARAMETERS extends Struct {
  external D3D12_CLEAR_VALUE ClearValue;
}

/// {@category Struct}
class D3D12_RENDER_PASS_DEPTH_STENCIL_DESC extends Struct {
  external D3D12_CPU_DESCRIPTOR_HANDLE cpuDescriptor;

  external D3D12_RENDER_PASS_BEGINNING_ACCESS DepthBeginningAccess;

  external D3D12_RENDER_PASS_BEGINNING_ACCESS StencilBeginningAccess;

  external D3D12_RENDER_PASS_ENDING_ACCESS DepthEndingAccess;

  external D3D12_RENDER_PASS_ENDING_ACCESS StencilEndingAccess;
}

/// {@category Struct}
class D3D12_RENDER_PASS_ENDING_ACCESS extends Struct {
  @Int32()
  external int Type;

  external _D3D12_RENDER_PASS_ENDING_ACCESS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D12_RENDER_PASS_ENDING_ACCESS__Anonymous_e__Union extends Union {
  external D3D12_RENDER_PASS_ENDING_ACCESS_RESOLVE_PARAMETERS Resolve;
}

extension D3D12_RENDER_PASS_ENDING_ACCESS_Extension
    on D3D12_RENDER_PASS_ENDING_ACCESS {
  D3D12_RENDER_PASS_ENDING_ACCESS_RESOLVE_PARAMETERS get Resolve =>
      this.Anonymous.Resolve;
  set Resolve(D3D12_RENDER_PASS_ENDING_ACCESS_RESOLVE_PARAMETERS value) =>
      this.Anonymous.Resolve = value;
}

/// {@category Struct}
class D3D12_RENDER_PASS_ENDING_ACCESS_RESOLVE_PARAMETERS extends Struct {
  external Pointer<COMObject> pSrcResource;

  external Pointer<COMObject> pDstResource;

  @Uint32()
  external int SubresourceCount;

  external Pointer<
          D3D12_RENDER_PASS_ENDING_ACCESS_RESOLVE_SUBRESOURCE_PARAMETERS>
      pSubresourceParameters;

  @Uint32()
  external int Format;

  @Int32()
  external int ResolveMode;

  @Int32()
  external int PreserveResolveSource;
}

/// {@category Struct}
class D3D12_RENDER_PASS_ENDING_ACCESS_RESOLVE_SUBRESOURCE_PARAMETERS
    extends Struct {
  @Uint32()
  external int SrcSubresource;

  @Uint32()
  external int DstSubresource;

  @Uint32()
  external int DstX;

  @Uint32()
  external int DstY;

  external RECT SrcRect;
}

/// {@category Struct}
class D3D12_RENDER_PASS_RENDER_TARGET_DESC extends Struct {
  external D3D12_CPU_DESCRIPTOR_HANDLE cpuDescriptor;

  external D3D12_RENDER_PASS_BEGINNING_ACCESS BeginningAccess;

  external D3D12_RENDER_PASS_ENDING_ACCESS EndingAccess;
}

/// {@category Struct}
class D3D12_RENDER_TARGET_BLEND_DESC extends Struct {
  @Int32()
  external int BlendEnable;

  @Int32()
  external int LogicOpEnable;

  @Int32()
  external int SrcBlend;

  @Int32()
  external int DestBlend;

  @Int32()
  external int BlendOp;

  @Int32()
  external int SrcBlendAlpha;

  @Int32()
  external int DestBlendAlpha;

  @Int32()
  external int BlendOpAlpha;

  @Int32()
  external int LogicOp;

  @Uint8()
  external int RenderTargetWriteMask;
}

/// {@category Struct}
class D3D12_RENDER_TARGET_VIEW_DESC extends Struct {
  @Uint32()
  external int Format;

  @Int32()
  external int ViewDimension;

  external _D3D12_RENDER_TARGET_VIEW_DESC__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D12_RENDER_TARGET_VIEW_DESC__Anonymous_e__Union extends Union {
  external D3D12_BUFFER_RTV Buffer;

  external D3D12_TEX1D_RTV Texture1D;

  external D3D12_TEX1D_ARRAY_RTV Texture1DArray;

  external D3D12_TEX2D_RTV Texture2D;

  external D3D12_TEX2D_ARRAY_RTV Texture2DArray;

  external D3D12_TEX2DMS_RTV Texture2DMS;

  external D3D12_TEX2DMS_ARRAY_RTV Texture2DMSArray;

  external D3D12_TEX3D_RTV Texture3D;
}

extension D3D12_RENDER_TARGET_VIEW_DESC_Extension
    on D3D12_RENDER_TARGET_VIEW_DESC {
  D3D12_BUFFER_RTV get Buffer => this.Anonymous.Buffer;
  set Buffer(D3D12_BUFFER_RTV value) => this.Anonymous.Buffer = value;

  D3D12_TEX1D_RTV get Texture1D => this.Anonymous.Texture1D;
  set Texture1D(D3D12_TEX1D_RTV value) => this.Anonymous.Texture1D = value;

  D3D12_TEX1D_ARRAY_RTV get Texture1DArray => this.Anonymous.Texture1DArray;
  set Texture1DArray(D3D12_TEX1D_ARRAY_RTV value) =>
      this.Anonymous.Texture1DArray = value;

  D3D12_TEX2D_RTV get Texture2D => this.Anonymous.Texture2D;
  set Texture2D(D3D12_TEX2D_RTV value) => this.Anonymous.Texture2D = value;

  D3D12_TEX2D_ARRAY_RTV get Texture2DArray => this.Anonymous.Texture2DArray;
  set Texture2DArray(D3D12_TEX2D_ARRAY_RTV value) =>
      this.Anonymous.Texture2DArray = value;

  D3D12_TEX2DMS_RTV get Texture2DMS => this.Anonymous.Texture2DMS;
  set Texture2DMS(D3D12_TEX2DMS_RTV value) =>
      this.Anonymous.Texture2DMS = value;

  D3D12_TEX2DMS_ARRAY_RTV get Texture2DMSArray =>
      this.Anonymous.Texture2DMSArray;
  set Texture2DMSArray(D3D12_TEX2DMS_ARRAY_RTV value) =>
      this.Anonymous.Texture2DMSArray = value;

  D3D12_TEX3D_RTV get Texture3D => this.Anonymous.Texture3D;
  set Texture3D(D3D12_TEX3D_RTV value) => this.Anonymous.Texture3D = value;
}

/// {@category Struct}
class D3D12_RESOURCE_ALIASING_BARRIER extends Struct {
  external Pointer<COMObject> pResourceBefore;

  external Pointer<COMObject> pResourceAfter;
}

/// {@category Struct}
class D3D12_RESOURCE_ALLOCATION_INFO extends Struct {
  @Uint64()
  external int SizeInBytes;

  @Uint64()
  external int Alignment;
}

/// {@category Struct}
class D3D12_RESOURCE_ALLOCATION_INFO1 extends Struct {
  @Uint64()
  external int Offset;

  @Uint64()
  external int Alignment;

  @Uint64()
  external int SizeInBytes;
}

/// {@category Struct}
class D3D12_RESOURCE_BARRIER extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Flags;

  external _D3D12_RESOURCE_BARRIER__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D12_RESOURCE_BARRIER__Anonymous_e__Union extends Union {
  external D3D12_RESOURCE_TRANSITION_BARRIER Transition;

  external D3D12_RESOURCE_ALIASING_BARRIER Aliasing;

  external D3D12_RESOURCE_UAV_BARRIER UAV;
}

extension D3D12_RESOURCE_BARRIER_Extension on D3D12_RESOURCE_BARRIER {
  D3D12_RESOURCE_TRANSITION_BARRIER get Transition => this.Anonymous.Transition;
  set Transition(D3D12_RESOURCE_TRANSITION_BARRIER value) =>
      this.Anonymous.Transition = value;

  D3D12_RESOURCE_ALIASING_BARRIER get Aliasing => this.Anonymous.Aliasing;
  set Aliasing(D3D12_RESOURCE_ALIASING_BARRIER value) =>
      this.Anonymous.Aliasing = value;

  D3D12_RESOURCE_UAV_BARRIER get UAV => this.Anonymous.UAV;
  set UAV(D3D12_RESOURCE_UAV_BARRIER value) => this.Anonymous.UAV = value;
}

/// {@category Struct}
class D3D12_RESOURCE_DESC extends Struct {
  @Int32()
  external int Dimension;

  @Uint64()
  external int Alignment;

  @Uint64()
  external int Width;

  @Uint32()
  external int Height;

  @Uint16()
  external int DepthOrArraySize;

  @Uint16()
  external int MipLevels;

  @Uint32()
  external int Format;

  external DXGI_SAMPLE_DESC SampleDesc;

  @Int32()
  external int Layout;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class D3D12_RESOURCE_DESC1 extends Struct {
  @Int32()
  external int Dimension;

  @Uint64()
  external int Alignment;

  @Uint64()
  external int Width;

  @Uint32()
  external int Height;

  @Uint16()
  external int DepthOrArraySize;

  @Uint16()
  external int MipLevels;

  @Uint32()
  external int Format;

  external DXGI_SAMPLE_DESC SampleDesc;

  @Int32()
  external int Layout;

  @Uint32()
  external int Flags;

  external D3D12_MIP_REGION SamplerFeedbackMipRegion;
}

/// {@category Struct}
class D3D12_RESOURCE_TRANSITION_BARRIER extends Struct {
  external Pointer<COMObject> pResource;

  @Uint32()
  external int Subresource;

  @Uint32()
  external int StateBefore;

  @Uint32()
  external int StateAfter;
}

/// {@category Struct}
class D3D12_RESOURCE_UAV_BARRIER extends Struct {
  external Pointer<COMObject> pResource;
}

/// {@category Struct}
class D3D12_ROOT_CONSTANTS extends Struct {
  @Uint32()
  external int ShaderRegister;

  @Uint32()
  external int RegisterSpace;

  @Uint32()
  external int Num32BitValues;
}

/// {@category Struct}
class D3D12_ROOT_DESCRIPTOR extends Struct {
  @Uint32()
  external int ShaderRegister;

  @Uint32()
  external int RegisterSpace;
}

/// {@category Struct}
class D3D12_ROOT_DESCRIPTOR1 extends Struct {
  @Uint32()
  external int ShaderRegister;

  @Uint32()
  external int RegisterSpace;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class D3D12_ROOT_DESCRIPTOR_TABLE extends Struct {
  @Uint32()
  external int NumDescriptorRanges;

  external Pointer<D3D12_DESCRIPTOR_RANGE> pDescriptorRanges;
}

/// {@category Struct}
class D3D12_ROOT_DESCRIPTOR_TABLE1 extends Struct {
  @Uint32()
  external int NumDescriptorRanges;

  external Pointer<D3D12_DESCRIPTOR_RANGE1> pDescriptorRanges;
}

/// {@category Struct}
class D3D12_ROOT_PARAMETER extends Struct {
  @Int32()
  external int ParameterType;

  external _D3D12_ROOT_PARAMETER__Anonymous_e__Union Anonymous;

  @Int32()
  external int ShaderVisibility;
}

/// {@category Struct}
class _D3D12_ROOT_PARAMETER__Anonymous_e__Union extends Union {
  external D3D12_ROOT_DESCRIPTOR_TABLE DescriptorTable;

  external D3D12_ROOT_CONSTANTS Constants;

  external D3D12_ROOT_DESCRIPTOR Descriptor;
}

extension D3D12_ROOT_PARAMETER_Extension on D3D12_ROOT_PARAMETER {
  D3D12_ROOT_DESCRIPTOR_TABLE get DescriptorTable =>
      this.Anonymous.DescriptorTable;
  set DescriptorTable(D3D12_ROOT_DESCRIPTOR_TABLE value) =>
      this.Anonymous.DescriptorTable = value;

  D3D12_ROOT_CONSTANTS get Constants => this.Anonymous.Constants;
  set Constants(D3D12_ROOT_CONSTANTS value) => this.Anonymous.Constants = value;

  D3D12_ROOT_DESCRIPTOR get Descriptor => this.Anonymous.Descriptor;
  set Descriptor(D3D12_ROOT_DESCRIPTOR value) =>
      this.Anonymous.Descriptor = value;
}

/// {@category Struct}
class D3D12_ROOT_PARAMETER1 extends Struct {
  @Int32()
  external int ParameterType;

  external _D3D12_ROOT_PARAMETER1__Anonymous_e__Union Anonymous;

  @Int32()
  external int ShaderVisibility;
}

/// {@category Struct}
class _D3D12_ROOT_PARAMETER1__Anonymous_e__Union extends Union {
  external D3D12_ROOT_DESCRIPTOR_TABLE1 DescriptorTable;

  external D3D12_ROOT_CONSTANTS Constants;

  external D3D12_ROOT_DESCRIPTOR1 Descriptor;
}

extension D3D12_ROOT_PARAMETER1_Extension on D3D12_ROOT_PARAMETER1 {
  D3D12_ROOT_DESCRIPTOR_TABLE1 get DescriptorTable =>
      this.Anonymous.DescriptorTable;
  set DescriptorTable(D3D12_ROOT_DESCRIPTOR_TABLE1 value) =>
      this.Anonymous.DescriptorTable = value;

  D3D12_ROOT_CONSTANTS get Constants => this.Anonymous.Constants;
  set Constants(D3D12_ROOT_CONSTANTS value) => this.Anonymous.Constants = value;

  D3D12_ROOT_DESCRIPTOR1 get Descriptor => this.Anonymous.Descriptor;
  set Descriptor(D3D12_ROOT_DESCRIPTOR1 value) =>
      this.Anonymous.Descriptor = value;
}

/// {@category Struct}
class D3D12_ROOT_SIGNATURE_DESC extends Struct {
  @Uint32()
  external int NumParameters;

  external Pointer<D3D12_ROOT_PARAMETER> pParameters;

  @Uint32()
  external int NumStaticSamplers;

  external Pointer<D3D12_STATIC_SAMPLER_DESC> pStaticSamplers;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class D3D12_ROOT_SIGNATURE_DESC1 extends Struct {
  @Uint32()
  external int NumParameters;

  external Pointer<D3D12_ROOT_PARAMETER1> pParameters;

  @Uint32()
  external int NumStaticSamplers;

  external Pointer<D3D12_STATIC_SAMPLER_DESC> pStaticSamplers;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class D3D12_RT_FORMAT_ARRAY extends Struct {
  @Array(8)
  external Array<Uint32> RTFormats;

  @Uint32()
  external int NumRenderTargets;
}

/// {@category Struct}
class D3D12_SAMPLER_DESC extends Struct {
  @Int32()
  external int Filter;

  @Int32()
  external int AddressU;

  @Int32()
  external int AddressV;

  @Int32()
  external int AddressW;

  @Float()
  external double MipLODBias;

  @Uint32()
  external int MaxAnisotropy;

  @Int32()
  external int ComparisonFunc;

  @Array(4)
  external Array<Float> BorderColor;

  @Float()
  external double MinLOD;

  @Float()
  external double MaxLOD;
}

/// {@category Struct}
class D3D12_SAMPLE_POSITION extends Struct {
  @Int8()
  external int X;

  @Int8()
  external int Y;
}

/// {@category Struct}
class D3D12_SERIALIZED_DATA_DRIVER_MATCHING_IDENTIFIER extends Struct {
  external GUID DriverOpaqueGUID;

  @Array(16)
  external Array<Uint8> DriverOpaqueVersioningData;
}

/// {@category Struct}
class D3D12_SERIALIZED_RAYTRACING_ACCELERATION_STRUCTURE_HEADER extends Struct {
  external D3D12_SERIALIZED_DATA_DRIVER_MATCHING_IDENTIFIER
      DriverMatchingIdentifier;

  @Uint64()
  external int SerializedSizeInBytesIncludingHeader;

  @Uint64()
  external int DeserializedSizeInBytes;

  @Uint64()
  external int NumBottomLevelAccelerationStructurePointersAfterHeader;
}

/// {@category Struct}
class D3D12_SHADER_BUFFER_DESC extends Struct {
  external Pointer<Utf8> Name;

  @Int32()
  external int Type;

  @Uint32()
  external int Variables;

  @Uint32()
  external int Size;

  @Uint32()
  external int uFlags;
}

/// {@category Struct}
class D3D12_SHADER_BYTECODE extends Struct {
  external Pointer pShaderBytecode;

  @IntPtr()
  external int BytecodeLength;
}

/// {@category Struct}
class D3D12_SHADER_CACHE_SESSION_DESC extends Struct {
  external GUID Identifier;

  @Int32()
  external int Mode;

  @Uint32()
  external int Flags;

  @Uint32()
  external int MaximumInMemoryCacheSizeBytes;

  @Uint32()
  external int MaximumInMemoryCacheEntries;

  @Uint32()
  external int MaximumValueFileSizeBytes;

  @Uint64()
  external int Version;
}

/// {@category Struct}
class D3D12_SHADER_DESC extends Struct {
  @Uint32()
  external int Version;

  external Pointer<Utf8> Creator;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ConstantBuffers;

  @Uint32()
  external int BoundResources;

  @Uint32()
  external int InputParameters;

  @Uint32()
  external int OutputParameters;

  @Uint32()
  external int InstructionCount;

  @Uint32()
  external int TempRegisterCount;

  @Uint32()
  external int TempArrayCount;

  @Uint32()
  external int DefCount;

  @Uint32()
  external int DclCount;

  @Uint32()
  external int TextureNormalInstructions;

  @Uint32()
  external int TextureLoadInstructions;

  @Uint32()
  external int TextureCompInstructions;

  @Uint32()
  external int TextureBiasInstructions;

  @Uint32()
  external int TextureGradientInstructions;

  @Uint32()
  external int FloatInstructionCount;

  @Uint32()
  external int IntInstructionCount;

  @Uint32()
  external int UintInstructionCount;

  @Uint32()
  external int StaticFlowControlCount;

  @Uint32()
  external int DynamicFlowControlCount;

  @Uint32()
  external int MacroInstructionCount;

  @Uint32()
  external int ArrayInstructionCount;

  @Uint32()
  external int CutInstructionCount;

  @Uint32()
  external int EmitInstructionCount;

  @Int32()
  external int GSOutputTopology;

  @Uint32()
  external int GSMaxOutputVertexCount;

  @Int32()
  external int InputPrimitive;

  @Uint32()
  external int PatchConstantParameters;

  @Uint32()
  external int cGSInstanceCount;

  @Uint32()
  external int cControlPoints;

  @Int32()
  external int HSOutputPrimitive;

  @Int32()
  external int HSPartitioning;

  @Int32()
  external int TessellatorDomain;

  @Uint32()
  external int cBarrierInstructions;

  @Uint32()
  external int cInterlockedInstructions;

  @Uint32()
  external int cTextureStoreInstructions;
}

/// {@category Struct}
class D3D12_SHADER_INPUT_BIND_DESC extends Struct {
  external Pointer<Utf8> Name;

  @Int32()
  external int Type;

  @Uint32()
  external int BindPoint;

  @Uint32()
  external int BindCount;

  @Uint32()
  external int uFlags;

  @Int32()
  external int ReturnType;

  @Int32()
  external int Dimension;

  @Uint32()
  external int NumSamples;

  @Uint32()
  external int Space;

  @Uint32()
  external int uID;
}

/// {@category Struct}
class D3D12_SHADER_RESOURCE_VIEW_DESC extends Struct {
  @Uint32()
  external int Format;

  @Int32()
  external int ViewDimension;

  @Uint32()
  external int Shader4ComponentMapping;

  external _D3D12_SHADER_RESOURCE_VIEW_DESC__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D12_SHADER_RESOURCE_VIEW_DESC__Anonymous_e__Union extends Union {
  external D3D12_BUFFER_SRV Buffer;

  external D3D12_TEX1D_SRV Texture1D;

  external D3D12_TEX1D_ARRAY_SRV Texture1DArray;

  external D3D12_TEX2D_SRV Texture2D;

  external D3D12_TEX2D_ARRAY_SRV Texture2DArray;

  external D3D12_TEX2DMS_SRV Texture2DMS;

  external D3D12_TEX2DMS_ARRAY_SRV Texture2DMSArray;

  external D3D12_TEX3D_SRV Texture3D;

  external D3D12_TEXCUBE_SRV TextureCube;

  external D3D12_TEXCUBE_ARRAY_SRV TextureCubeArray;

  external D3D12_RAYTRACING_ACCELERATION_STRUCTURE_SRV
      RaytracingAccelerationStructure;
}

extension D3D12_SHADER_RESOURCE_VIEW_DESC_Extension
    on D3D12_SHADER_RESOURCE_VIEW_DESC {
  D3D12_BUFFER_SRV get Buffer => this.Anonymous.Buffer;
  set Buffer(D3D12_BUFFER_SRV value) => this.Anonymous.Buffer = value;

  D3D12_TEX1D_SRV get Texture1D => this.Anonymous.Texture1D;
  set Texture1D(D3D12_TEX1D_SRV value) => this.Anonymous.Texture1D = value;

  D3D12_TEX1D_ARRAY_SRV get Texture1DArray => this.Anonymous.Texture1DArray;
  set Texture1DArray(D3D12_TEX1D_ARRAY_SRV value) =>
      this.Anonymous.Texture1DArray = value;

  D3D12_TEX2D_SRV get Texture2D => this.Anonymous.Texture2D;
  set Texture2D(D3D12_TEX2D_SRV value) => this.Anonymous.Texture2D = value;

  D3D12_TEX2D_ARRAY_SRV get Texture2DArray => this.Anonymous.Texture2DArray;
  set Texture2DArray(D3D12_TEX2D_ARRAY_SRV value) =>
      this.Anonymous.Texture2DArray = value;

  D3D12_TEX2DMS_SRV get Texture2DMS => this.Anonymous.Texture2DMS;
  set Texture2DMS(D3D12_TEX2DMS_SRV value) =>
      this.Anonymous.Texture2DMS = value;

  D3D12_TEX2DMS_ARRAY_SRV get Texture2DMSArray =>
      this.Anonymous.Texture2DMSArray;
  set Texture2DMSArray(D3D12_TEX2DMS_ARRAY_SRV value) =>
      this.Anonymous.Texture2DMSArray = value;

  D3D12_TEX3D_SRV get Texture3D => this.Anonymous.Texture3D;
  set Texture3D(D3D12_TEX3D_SRV value) => this.Anonymous.Texture3D = value;

  D3D12_TEXCUBE_SRV get TextureCube => this.Anonymous.TextureCube;
  set TextureCube(D3D12_TEXCUBE_SRV value) =>
      this.Anonymous.TextureCube = value;

  D3D12_TEXCUBE_ARRAY_SRV get TextureCubeArray =>
      this.Anonymous.TextureCubeArray;
  set TextureCubeArray(D3D12_TEXCUBE_ARRAY_SRV value) =>
      this.Anonymous.TextureCubeArray = value;

  D3D12_RAYTRACING_ACCELERATION_STRUCTURE_SRV
      get RaytracingAccelerationStructure =>
          this.Anonymous.RaytracingAccelerationStructure;
  set RaytracingAccelerationStructure(
          D3D12_RAYTRACING_ACCELERATION_STRUCTURE_SRV value) =>
      this.Anonymous.RaytracingAccelerationStructure = value;
}

/// {@category Struct}
class D3D12_SHADER_TYPE_DESC extends Struct {
  @Int32()
  external int Class;

  @Int32()
  external int Type;

  @Uint32()
  external int Rows;

  @Uint32()
  external int Columns;

  @Uint32()
  external int Elements;

  @Uint32()
  external int Members;

  @Uint32()
  external int Offset;

  external Pointer<Utf8> Name;
}

/// {@category Struct}
class D3D12_SHADER_VARIABLE_DESC extends Struct {
  external Pointer<Utf8> Name;

  @Uint32()
  external int StartOffset;

  @Uint32()
  external int Size;

  @Uint32()
  external int uFlags;

  external Pointer DefaultValue;

  @Uint32()
  external int StartTexture;

  @Uint32()
  external int TextureSize;

  @Uint32()
  external int StartSampler;

  @Uint32()
  external int SamplerSize;
}

/// {@category Struct}
class D3D12_SIGNATURE_PARAMETER_DESC extends Struct {
  external Pointer<Utf8> SemanticName;

  @Uint32()
  external int SemanticIndex;

  @Uint32()
  external int Register;

  @Int32()
  external int SystemValueType;

  @Int32()
  external int ComponentType;

  @Uint8()
  external int Mask;

  @Uint8()
  external int ReadWriteMask;

  @Uint32()
  external int Stream;

  @Int32()
  external int MinPrecision;
}

/// {@category Struct}
class D3D12_SO_DECLARATION_ENTRY extends Struct {
  @Uint32()
  external int Stream;

  external Pointer<Utf8> SemanticName;

  @Uint32()
  external int SemanticIndex;

  @Uint8()
  external int StartComponent;

  @Uint8()
  external int ComponentCount;

  @Uint8()
  external int OutputSlot;
}

/// {@category Struct}
class D3D12_STATE_OBJECT_CONFIG extends Struct {
  @Uint32()
  external int Flags;
}

/// {@category Struct}
class D3D12_STATE_OBJECT_DESC extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int NumSubobjects;

  external Pointer<D3D12_STATE_SUBOBJECT> pSubobjects;
}

/// {@category Struct}
class D3D12_STATE_SUBOBJECT extends Struct {
  @Int32()
  external int Type;

  external Pointer pDesc;
}

/// {@category Struct}
class D3D12_STATIC_SAMPLER_DESC extends Struct {
  @Int32()
  external int Filter;

  @Int32()
  external int AddressU;

  @Int32()
  external int AddressV;

  @Int32()
  external int AddressW;

  @Float()
  external double MipLODBias;

  @Uint32()
  external int MaxAnisotropy;

  @Int32()
  external int ComparisonFunc;

  @Int32()
  external int BorderColor;

  @Float()
  external double MinLOD;

  @Float()
  external double MaxLOD;

  @Uint32()
  external int ShaderRegister;

  @Uint32()
  external int RegisterSpace;

  @Int32()
  external int ShaderVisibility;
}

/// {@category Struct}
class D3D12_STREAM_OUTPUT_BUFFER_VIE extends Struct {
  @Uint64()
  external int BufferLocation;

  @Uint64()
  external int SizeInBytes;

  @Uint64()
  external int BufferFilledSizeLocation;
}

/// {@category Struct}
class D3D12_STREAM_OUTPUT_DESC extends Struct {
  external Pointer<D3D12_SO_DECLARATION_ENTRY> pSODeclaration;

  @Uint32()
  external int NumEntries;

  external Pointer<Uint32> pBufferStrides;

  @Uint32()
  external int NumStrides;

  @Uint32()
  external int RasterizedStream;
}

/// {@category Struct}
class D3D12_SUBOBJECT_TO_EXPORTS_ASSOCIATION extends Struct {
  external Pointer<D3D12_STATE_SUBOBJECT> pSubobjectToAssociate;

  @Uint32()
  external int NumExports;

  external Pointer<Pointer<Utf16>> pExports;
}

/// {@category Struct}
class D3D12_SUBRESOURCE_DATA extends Struct {
  external Pointer pData;

  @IntPtr()
  external int RowPitch;

  @IntPtr()
  external int SlicePitch;
}

/// {@category Struct}
class D3D12_SUBRESOURCE_FOOTPRINT extends Struct {
  @Uint32()
  external int Format;

  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  @Uint32()
  external int Depth;

  @Uint32()
  external int RowPitch;
}

/// {@category Struct}
class D3D12_SUBRESOURCE_INFO extends Struct {
  @Uint64()
  external int Offset;

  @Uint32()
  external int RowPitch;

  @Uint32()
  external int DepthPitch;
}

/// {@category Struct}
class D3D12_SUBRESOURCE_RANGE_UINT64 extends Struct {
  @Uint32()
  external int Subresource;

  external D3D12_RANGE_UINT64 Range;
}

/// {@category Struct}
class D3D12_SUBRESOURCE_TILING extends Struct {
  @Uint32()
  external int WidthInTiles;

  @Uint16()
  external int HeightInTiles;

  @Uint16()
  external int DepthInTiles;

  @Uint32()
  external int StartTileIndexInOverallResource;
}

/// {@category Struct}
class D3D12_TEX1D_ARRAY_DSV extends Struct {
  @Uint32()
  external int MipSlice;

  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;
}

/// {@category Struct}
class D3D12_TEX1D_ARRAY_RTV extends Struct {
  @Uint32()
  external int MipSlice;

  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;
}

/// {@category Struct}
class D3D12_TEX1D_ARRAY_SRV extends Struct {
  @Uint32()
  external int MostDetailedMip;

  @Uint32()
  external int MipLevels;

  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;

  @Float()
  external double ResourceMinLODClamp;
}

/// {@category Struct}
class D3D12_TEX1D_ARRAY_UAV extends Struct {
  @Uint32()
  external int MipSlice;

  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;
}

/// {@category Struct}
class D3D12_TEX1D_DSV extends Struct {
  @Uint32()
  external int MipSlice;
}

/// {@category Struct}
class D3D12_TEX1D_RTV extends Struct {
  @Uint32()
  external int MipSlice;
}

/// {@category Struct}
class D3D12_TEX1D_SRV extends Struct {
  @Uint32()
  external int MostDetailedMip;

  @Uint32()
  external int MipLevels;

  @Float()
  external double ResourceMinLODClamp;
}

/// {@category Struct}
class D3D12_TEX1D_UAV extends Struct {
  @Uint32()
  external int MipSlice;
}

/// {@category Struct}
class D3D12_TEX2DMS_ARRAY_DSV extends Struct {
  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;
}

/// {@category Struct}
class D3D12_TEX2DMS_ARRAY_RTV extends Struct {
  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;
}

/// {@category Struct}
class D3D12_TEX2DMS_ARRAY_SRV extends Struct {
  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;
}

/// {@category Struct}
class D3D12_TEX2DMS_DSV extends Struct {
  @Uint32()
  external int UnusedField_NothingToDefine;
}

/// {@category Struct}
class D3D12_TEX2DMS_RTV extends Struct {
  @Uint32()
  external int UnusedField_NothingToDefine;
}

/// {@category Struct}
class D3D12_TEX2DMS_SRV extends Struct {
  @Uint32()
  external int UnusedField_NothingToDefine;
}

/// {@category Struct}
class D3D12_TEX2D_ARRAY_DSV extends Struct {
  @Uint32()
  external int MipSlice;

  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;
}

/// {@category Struct}
class D3D12_TEX2D_ARRAY_RTV extends Struct {
  @Uint32()
  external int MipSlice;

  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;

  @Uint32()
  external int PlaneSlice;
}

/// {@category Struct}
class D3D12_TEX2D_ARRAY_SRV extends Struct {
  @Uint32()
  external int MostDetailedMip;

  @Uint32()
  external int MipLevels;

  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;

  @Uint32()
  external int PlaneSlice;

  @Float()
  external double ResourceMinLODClamp;
}

/// {@category Struct}
class D3D12_TEX2D_ARRAY_UAV extends Struct {
  @Uint32()
  external int MipSlice;

  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;

  @Uint32()
  external int PlaneSlice;
}

/// {@category Struct}
class D3D12_TEX2D_DSV extends Struct {
  @Uint32()
  external int MipSlice;
}

/// {@category Struct}
class D3D12_TEX2D_RTV extends Struct {
  @Uint32()
  external int MipSlice;

  @Uint32()
  external int PlaneSlice;
}

/// {@category Struct}
class D3D12_TEX2D_SRV extends Struct {
  @Uint32()
  external int MostDetailedMip;

  @Uint32()
  external int MipLevels;

  @Uint32()
  external int PlaneSlice;

  @Float()
  external double ResourceMinLODClamp;
}

/// {@category Struct}
class D3D12_TEX2D_UAV extends Struct {
  @Uint32()
  external int MipSlice;

  @Uint32()
  external int PlaneSlice;
}

/// {@category Struct}
class D3D12_TEX3D_RTV extends Struct {
  @Uint32()
  external int MipSlice;

  @Uint32()
  external int FirstWSlice;

  @Uint32()
  external int WSize;
}

/// {@category Struct}
class D3D12_TEX3D_SRV extends Struct {
  @Uint32()
  external int MostDetailedMip;

  @Uint32()
  external int MipLevels;

  @Float()
  external double ResourceMinLODClamp;
}

/// {@category Struct}
class D3D12_TEX3D_UAV extends Struct {
  @Uint32()
  external int MipSlice;

  @Uint32()
  external int FirstWSlice;

  @Uint32()
  external int WSize;
}

/// {@category Struct}
class D3D12_TEXCUBE_ARRAY_SRV extends Struct {
  @Uint32()
  external int MostDetailedMip;

  @Uint32()
  external int MipLevels;

  @Uint32()
  external int First2DArrayFace;

  @Uint32()
  external int NumCubes;

  @Float()
  external double ResourceMinLODClamp;
}

/// {@category Struct}
class D3D12_TEXCUBE_SRV extends Struct {
  @Uint32()
  external int MostDetailedMip;

  @Uint32()
  external int MipLevels;

  @Float()
  external double ResourceMinLODClamp;
}

/// {@category Struct}
class D3D12_TEXTURE_COPY_LOCATION extends Struct {
  external Pointer<COMObject> pResource;

  @Int32()
  external int Type;

  external _D3D12_TEXTURE_COPY_LOCATION__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D12_TEXTURE_COPY_LOCATION__Anonymous_e__Union extends Union {
  external D3D12_PLACED_SUBRESOURCE_FOOTPRINT PlacedFootprint;

  @Uint32()
  external int SubresourceIndex;
}

extension D3D12_TEXTURE_COPY_LOCATION_Extension on D3D12_TEXTURE_COPY_LOCATION {
  D3D12_PLACED_SUBRESOURCE_FOOTPRINT get PlacedFootprint =>
      this.Anonymous.PlacedFootprint;
  set PlacedFootprint(D3D12_PLACED_SUBRESOURCE_FOOTPRINT value) =>
      this.Anonymous.PlacedFootprint = value;

  int get SubresourceIndex => this.Anonymous.SubresourceIndex;
  set SubresourceIndex(int value) => this.Anonymous.SubresourceIndex = value;
}

/// {@category Struct}
class D3D12_TILED_RESOURCE_COORDINATE extends Struct {
  @Uint32()
  external int X;

  @Uint32()
  external int Y;

  @Uint32()
  external int Z;

  @Uint32()
  external int Subresource;
}

/// {@category Struct}
class D3D12_TILE_REGION_SIZE extends Struct {
  @Uint32()
  external int NumTiles;

  @Int32()
  external int UseBox;

  @Uint32()
  external int Width;

  @Uint16()
  external int Height;

  @Uint16()
  external int Depth;
}

/// {@category Struct}
class D3D12_TILE_SHAPE extends Struct {
  @Uint32()
  external int WidthInTexels;

  @Uint32()
  external int HeightInTexels;

  @Uint32()
  external int DepthInTexels;
}

/// {@category Struct}
class D3D12_UNORDERED_ACCESS_VIEW_DESC extends Struct {
  @Uint32()
  external int Format;

  @Int32()
  external int ViewDimension;

  external _D3D12_UNORDERED_ACCESS_VIEW_DESC__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D12_UNORDERED_ACCESS_VIEW_DESC__Anonymous_e__Union extends Union {
  external D3D12_BUFFER_UAV Buffer;

  external D3D12_TEX1D_UAV Texture1D;

  external D3D12_TEX1D_ARRAY_UAV Texture1DArray;

  external D3D12_TEX2D_UAV Texture2D;

  external D3D12_TEX2D_ARRAY_UAV Texture2DArray;

  external D3D12_TEX3D_UAV Texture3D;
}

extension D3D12_UNORDERED_ACCESS_VIEW_DESC_Extension
    on D3D12_UNORDERED_ACCESS_VIEW_DESC {
  D3D12_BUFFER_UAV get Buffer => this.Anonymous.Buffer;
  set Buffer(D3D12_BUFFER_UAV value) => this.Anonymous.Buffer = value;

  D3D12_TEX1D_UAV get Texture1D => this.Anonymous.Texture1D;
  set Texture1D(D3D12_TEX1D_UAV value) => this.Anonymous.Texture1D = value;

  D3D12_TEX1D_ARRAY_UAV get Texture1DArray => this.Anonymous.Texture1DArray;
  set Texture1DArray(D3D12_TEX1D_ARRAY_UAV value) =>
      this.Anonymous.Texture1DArray = value;

  D3D12_TEX2D_UAV get Texture2D => this.Anonymous.Texture2D;
  set Texture2D(D3D12_TEX2D_UAV value) => this.Anonymous.Texture2D = value;

  D3D12_TEX2D_ARRAY_UAV get Texture2DArray => this.Anonymous.Texture2DArray;
  set Texture2DArray(D3D12_TEX2D_ARRAY_UAV value) =>
      this.Anonymous.Texture2DArray = value;

  D3D12_TEX3D_UAV get Texture3D => this.Anonymous.Texture3D;
  set Texture3D(D3D12_TEX3D_UAV value) => this.Anonymous.Texture3D = value;
}

/// {@category Struct}
class D3D12_VERSIONED_DEVICE_REMOVED_EXTENDED_DATA extends Struct {
  @Int32()
  external int Version;

  external _D3D12_VERSIONED_DEVICE_REMOVED_EXTENDED_DATA__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _D3D12_VERSIONED_DEVICE_REMOVED_EXTENDED_DATA__Anonymous_e__Union
    extends Union {
  external D3D12_DEVICE_REMOVED_EXTENDED_DATA Dred_1_0;

  external D3D12_DEVICE_REMOVED_EXTENDED_DATA1 Dred_1_1;

  external D3D12_DEVICE_REMOVED_EXTENDED_DATA2 Dred_1_2;

  external D3D12_DEVICE_REMOVED_EXTENDED_DATA3 Dred_1_3;
}

extension D3D12_VERSIONED_DEVICE_REMOVED_EXTENDED_DATA_Extension
    on D3D12_VERSIONED_DEVICE_REMOVED_EXTENDED_DATA {
  D3D12_DEVICE_REMOVED_EXTENDED_DATA get Dred_1_0 => this.Anonymous.Dred_1_0;
  set Dred_1_0(D3D12_DEVICE_REMOVED_EXTENDED_DATA value) =>
      this.Anonymous.Dred_1_0 = value;

  D3D12_DEVICE_REMOVED_EXTENDED_DATA1 get Dred_1_1 => this.Anonymous.Dred_1_1;
  set Dred_1_1(D3D12_DEVICE_REMOVED_EXTENDED_DATA1 value) =>
      this.Anonymous.Dred_1_1 = value;

  D3D12_DEVICE_REMOVED_EXTENDED_DATA2 get Dred_1_2 => this.Anonymous.Dred_1_2;
  set Dred_1_2(D3D12_DEVICE_REMOVED_EXTENDED_DATA2 value) =>
      this.Anonymous.Dred_1_2 = value;

  D3D12_DEVICE_REMOVED_EXTENDED_DATA3 get Dred_1_3 => this.Anonymous.Dred_1_3;
  set Dred_1_3(D3D12_DEVICE_REMOVED_EXTENDED_DATA3 value) =>
      this.Anonymous.Dred_1_3 = value;
}

/// {@category Struct}
class D3D12_VERSIONED_ROOT_SIGNATURE_DESC extends Struct {
  @Int32()
  external int Version;

  external _D3D12_VERSIONED_ROOT_SIGNATURE_DESC__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D12_VERSIONED_ROOT_SIGNATURE_DESC__Anonymous_e__Union extends Union {
  external D3D12_ROOT_SIGNATURE_DESC Desc_1_0;

  external D3D12_ROOT_SIGNATURE_DESC1 Desc_1_1;
}

extension D3D12_VERSIONED_ROOT_SIGNATURE_DESC_Extension
    on D3D12_VERSIONED_ROOT_SIGNATURE_DESC {
  D3D12_ROOT_SIGNATURE_DESC get Desc_1_0 => this.Anonymous.Desc_1_0;
  set Desc_1_0(D3D12_ROOT_SIGNATURE_DESC value) =>
      this.Anonymous.Desc_1_0 = value;

  D3D12_ROOT_SIGNATURE_DESC1 get Desc_1_1 => this.Anonymous.Desc_1_1;
  set Desc_1_1(D3D12_ROOT_SIGNATURE_DESC1 value) =>
      this.Anonymous.Desc_1_1 = value;
}

/// {@category Struct}
class D3D12_VERTEX_BUFFER_VIE extends Struct {
  @Uint64()
  external int BufferLocation;

  @Uint32()
  external int SizeInBytes;

  @Uint32()
  external int StrideInBytes;
}

/// {@category Struct}
class D3D12_VIEWPORT extends Struct {
  @Float()
  external double TopLeftX;

  @Float()
  external double TopLeftY;

  @Float()
  external double Width;

  @Float()
  external double Height;

  @Float()
  external double MinDepth;

  @Float()
  external double MaxDepth;
}

/// {@category Struct}
class D3D12_VIEW_INSTANCE_LOCATION extends Struct {
  @Uint32()
  external int ViewportArrayIndex;

  @Uint32()
  external int RenderTargetArrayIndex;
}

/// {@category Struct}
class D3D12_VIEW_INSTANCING_DESC extends Struct {
  @Uint32()
  external int ViewInstanceCount;

  external Pointer<D3D12_VIEW_INSTANCE_LOCATION> pViewInstanceLocations;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class D3D12_WRITEBUFFERIMMEDIATE_PARAMETER extends Struct {
  @Uint64()
  external int Dest;

  @Uint32()
  external int Value;
}
