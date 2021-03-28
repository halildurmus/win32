// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class D3D12_COMMAND_QUEUE_DESC extends Struct {
  @Uint32() external int Type;
  @Int32() external int Priority;
  @Uint32() external int Flags;
  @Uint32() external int NodeMask;
}

class D3D12_INPUT_ELEMENT_DESC extends Struct {
  external Pointer<Utf8> SemanticName;
  @Uint32() external int SemanticIndex;
  @Uint32() external int Format;
  @Uint32() external int InputSlot;
  @Uint32() external int AlignedByteOffset;
  @Uint32() external int InputSlotClass;
  @Uint32() external int InstanceDataStepRate;
}

class D3D12_SO_DECLARATION_ENTRY extends Struct {
  @Uint32() external int Stream;
  external Pointer<Utf8> SemanticName;
  @Uint32() external int SemanticIndex;
  @Uint8() external int StartComponent;
  @Uint8() external int ComponentCount;
  @Uint8() external int OutputSlot;
}

class D3D12_VIEWPORT extends Struct {
  @Float() external double TopLeftX;
  @Float() external double TopLeftY;
  @Float() external double Width;
  @Float() external double Height;
  @Float() external double MinDepth;
  @Float() external double MaxDepth;
}

class D3D12_BOX extends Struct {
  @Uint32() external int left;
  @Uint32() external int top;
  @Uint32() external int front;
  @Uint32() external int right;
  @Uint32() external int bottom;
  @Uint32() external int back;
}

class D3D12_DEPTH_STENCILOP_DESC extends Struct {
  @Uint32() external int StencilFailOp;
  @Uint32() external int StencilDepthFailOp;
  @Uint32() external int StencilPassOp;
  @Uint32() external int StencilFunc;
}

class D3D12_DEPTH_STENCIL_DESC extends Struct {
  @Int32() external int DepthEnable;
  @Uint32() external int DepthWriteMask;
  @Uint32() external int DepthFunc;
  @Int32() external int StencilEnable;
  @Uint8() external int StencilReadMask;
  @Uint8() external int StencilWriteMask;
  external D3D12_DEPTH_STENCILOP_DESC FrontFace;
  external D3D12_DEPTH_STENCILOP_DESC BackFace;
}

class D3D12_DEPTH_STENCIL_DESC1 extends Struct {
  @Int32() external int DepthEnable;
  @Uint32() external int DepthWriteMask;
  @Uint32() external int DepthFunc;
  @Int32() external int StencilEnable;
  @Uint8() external int StencilReadMask;
  @Uint8() external int StencilWriteMask;
  external D3D12_DEPTH_STENCILOP_DESC FrontFace;
  external D3D12_DEPTH_STENCILOP_DESC BackFace;
  @Int32() external int DepthBoundsTestEnable;
}

class D3D12_RENDER_TARGET_BLEND_DESC extends Struct {
  @Int32() external int BlendEnable;
  @Int32() external int LogicOpEnable;
  @Uint32() external int SrcBlend;
  @Uint32() external int DestBlend;
  @Uint32() external int BlendOp;
  @Uint32() external int SrcBlendAlpha;
  @Uint32() external int DestBlendAlpha;
  @Uint32() external int BlendOpAlpha;
  @Uint32() external int LogicOp;
  @Uint8() external int RenderTargetWriteMask;
}

class D3D12_BLEND_DESC extends Struct {
  @Int32() external int AlphaToCoverageEnable;
  @Int32() external int IndependentBlendEnable;
  external D3D12_RENDER_TARGET_BLEND_DESC RenderTarget;
}

class D3D12_RASTERIZER_DESC extends Struct {
  @Uint32() external int FillMode;
  @Uint32() external int CullMode;
  @Int32() external int FrontCounterClockwise;
  @Int32() external int DepthBias;
  @Float() external double DepthBiasClamp;
  @Float() external double SlopeScaledDepthBias;
  @Int32() external int DepthClipEnable;
  @Int32() external int MultisampleEnable;
  @Int32() external int AntialiasedLineEnable;
  @Uint32() external int ForcedSampleCount;
  @Uint32() external int ConservativeRaster;
}

class D3D12_SHADER_BYTECODE extends Struct {
  external Pointer pShaderBytecode;
  @IntPtr() external int BytecodeLength;
}

class D3D12_STREAM_OUTPUT_DESC extends Struct {
  external Pointer<D3D12_SO_DECLARATION_ENTRY> pSODeclaration;
  @Uint32() external int NumEntries;
  external Pointer<Uint32> pBufferStrides;
  @Uint32() external int NumStrides;
  @Uint32() external int RasterizedStream;
}

class D3D12_INPUT_LAYOUT_DESC extends Struct {
  external Pointer<D3D12_INPUT_ELEMENT_DESC> pInputElementDescs;
  @Uint32() external int NumElements;
}

class D3D12_CACHED_PIPELINE_STATE extends Struct {
  external Pointer pCachedBlob;
  @IntPtr() external int CachedBlobSizeInBytes;
}

class D3D12_GRAPHICS_PIPELINE_STATE_DESC extends Struct {
  external ID3D12RootSignature pRootSignature;
  external D3D12_SHADER_BYTECODE VS;
  external D3D12_SHADER_BYTECODE PS;
  external D3D12_SHADER_BYTECODE DS;
  external D3D12_SHADER_BYTECODE HS;
  external D3D12_SHADER_BYTECODE GS;
  external D3D12_STREAM_OUTPUT_DESC StreamOutput;
  external D3D12_BLEND_DESC BlendState;
  @Uint32() external int SampleMask;
  external D3D12_RASTERIZER_DESC RasterizerState;
  external D3D12_DEPTH_STENCIL_DESC DepthStencilState;
  external D3D12_INPUT_LAYOUT_DESC InputLayout;
  @Uint32() external int IBStripCutValue;
  @Uint32() external int PrimitiveTopologyType;
  @Uint32() external int NumRenderTargets;
  @Uint32() external int RTVFormats;
  @Uint32() external int DSVFormat;
  external DXGI_SAMPLE_DESC SampleDesc;
  @Uint32() external int NodeMask;
  external D3D12_CACHED_PIPELINE_STATE CachedPSO;
  @Uint32() external int Flags;
}

class D3D12_COMPUTE_PIPELINE_STATE_DESC extends Struct {
  external ID3D12RootSignature pRootSignature;
  external D3D12_SHADER_BYTECODE CS;
  @Uint32() external int NodeMask;
  external D3D12_CACHED_PIPELINE_STATE CachedPSO;
  @Uint32() external int Flags;
}

class D3D12_RT_FORMAT_ARRAY extends Struct {
  @Uint32() external int RTFormats;
  @Uint32() external int NumRenderTargets;
}

class D3D12_PIPELINE_STATE_STREAM_DESC extends Struct {
  @IntPtr() external int SizeInBytes;
  external Pointer pPipelineStateSubobjectStream;
}

class D3D12_FEATURE_DATA_D3D12_OPTIONS extends Struct {
  @Int32() external int DoublePrecisionFloatShaderOps;
  @Int32() external int OutputMergerLogicOp;
  @Uint32() external int MinPrecisionSupport;
  @Uint32() external int TiledResourcesTier;
  @Uint32() external int ResourceBindingTier;
  @Int32() external int PSSpecifiedStencilRefSupported;
  @Int32() external int TypedUAVLoadAdditionalFormats;
  @Int32() external int ROVsSupported;
  @Uint32() external int ConservativeRasterizationTier;
  @Uint32() external int MaxGPUVirtualAddressBitsPerResource;
  @Int32() external int StandardSwizzle64KBSupported;
  @Uint32() external int CrossNodeSharingTier;
  @Int32() external int CrossAdapterRowMajorTextureSupported;
  @Int32() external int VPAndRTArrayIndexFromAnyShaderFeedingRasterizerSupportedWithoutGSEmulation;
  @Uint32() external int ResourceHeapTier;
}

class D3D12_FEATURE_DATA_D3D12_OPTIONS1 extends Struct {
  @Int32() external int WaveOps;
  @Uint32() external int WaveLaneCountMin;
  @Uint32() external int WaveLaneCountMax;
  @Uint32() external int TotalLaneCount;
  @Int32() external int ExpandedComputeResourceStates;
  @Int32() external int Int64ShaderOps;
}

class D3D12_FEATURE_DATA_D3D12_OPTIONS2 extends Struct {
  @Int32() external int DepthBoundsTestSupported;
  @Uint32() external int ProgrammableSamplePositionsTier;
}

class D3D12_FEATURE_DATA_ROOT_SIGNATURE extends Struct {
  @Uint32() external int HighestVersion;
}

class D3D12_FEATURE_DATA_ARCHITECTURE extends Struct {
  @Uint32() external int NodeIndex;
  @Int32() external int TileBasedRenderer;
  @Int32() external int UMA;
  @Int32() external int CacheCoherentUMA;
}

class D3D12_FEATURE_DATA_ARCHITECTURE1 extends Struct {
  @Uint32() external int NodeIndex;
  @Int32() external int TileBasedRenderer;
  @Int32() external int UMA;
  @Int32() external int CacheCoherentUMA;
  @Int32() external int IsolatedMMU;
}

class D3D12_FEATURE_DATA_FEATURE_LEVELS extends Struct {
  @Uint32() external int NumFeatureLevels;
  external Pointer<Uint32> pFeatureLevelsRequested;
  @Uint32() external int MaxSupportedFeatureLevel;
}

class D3D12_FEATURE_DATA_SHADER_MODEL extends Struct {
  @Uint32() external int HighestShaderModel;
}

class D3D12_FEATURE_DATA_FORMAT_SUPPORT extends Struct {
  @Uint32() external int Format;
  @Uint32() external int Support1;
  @Uint32() external int Support2;
}

class D3D12_FEATURE_DATA_MULTISAMPLE_QUALITY_LEVELS extends Struct {
  @Uint32() external int Format;
  @Uint32() external int SampleCount;
  @Uint32() external int Flags;
  @Uint32() external int NumQualityLevels;
}

class D3D12_FEATURE_DATA_FORMAT_INFO extends Struct {
  @Uint32() external int Format;
  @Uint8() external int PlaneCount;
}

class D3D12_FEATURE_DATA_GPU_VIRTUAL_ADDRESS_SUPPORT extends Struct {
  @Uint32() external int MaxGPUVirtualAddressBitsPerResource;
  @Uint32() external int MaxGPUVirtualAddressBitsPerProcess;
}

class D3D12_FEATURE_DATA_SHADER_CACHE extends Struct {
  @Uint32() external int SupportFlags;
}

class D3D12_FEATURE_DATA_COMMAND_QUEUE_PRIORITY extends Struct {
  @Uint32() external int CommandListType;
  @Uint32() external int Priority;
  @Int32() external int PriorityForTypeIsSupported;
}

class D3D12_FEATURE_DATA_D3D12_OPTIONS3 extends Struct {
  @Int32() external int CopyQueueTimestampQueriesSupported;
  @Int32() external int CastingFullyTypedFormatSupported;
  @Uint32() external int WriteBufferImmediateSupportFlags;
  @Uint32() external int ViewInstancingTier;
  @Int32() external int BarycentricsSupported;
}

class D3D12_FEATURE_DATA_EXISTING_HEAPS extends Struct {
  @Int32() external int Supported;
}

class D3D12_FEATURE_DATA_D3D12_OPTIONS4 extends Struct {
  @Int32() external int MSAA64KBAlignedTextureSupported;
  @Uint32() external int SharedResourceCompatibilityTier;
  @Int32() external int Native16BitShaderOpsSupported;
}

class D3D12_FEATURE_DATA_SERIALIZATION extends Struct {
  @Uint32() external int NodeIndex;
  @Uint32() external int HeapSerializationTier;
}

class D3D12_FEATURE_DATA_CROSS_NODE extends Struct {
  @Uint32() external int SharingTier;
  @Int32() external int AtomicShaderInstructions;
}

class D3D12_FEATURE_DATA_D3D12_OPTIONS5 extends Struct {
  @Int32() external int SRVOnlyTiledResourceTier3;
  @Uint32() external int RenderPassesTier;
  @Uint32() external int RaytracingTier;
}

class D3D12_FEATURE_DATA_D3D12_OPTIONS6 extends Struct {
  @Int32() external int AdditionalShadingRatesSupported;
  @Int32() external int PerPrimitiveShadingRateSupportedWithViewportIndexing;
  @Uint32() external int VariableShadingRateTier;
  @Uint32() external int ShadingRateImageTileSize;
  @Int32() external int BackgroundProcessingSupported;
}

class D3D12_FEATURE_DATA_D3D12_OPTIONS7 extends Struct {
  @Uint32() external int MeshShaderTier;
  @Uint32() external int SamplerFeedbackTier;
}

class D3D12_FEATURE_DATA_QUERY_META_COMMAND extends Struct {
  external GUID CommandId;
  @Uint32() external int NodeMask;
  external Pointer pQueryInputData;
  @IntPtr() external int QueryInputDataSizeInBytes;
  external Pointer pQueryOutputData;
  @IntPtr() external int QueryOutputDataSizeInBytes;
}

class D3D12_RESOURCE_ALLOCATION_INFO extends Struct {
  @Uint64() external int SizeInBytes;
  @Uint64() external int Alignment;
}

class D3D12_RESOURCE_ALLOCATION_INFO1 extends Struct {
  @Uint64() external int Offset;
  @Uint64() external int Alignment;
  @Uint64() external int SizeInBytes;
}

class D3D12_HEAP_PROPERTIES extends Struct {
  @Uint32() external int Type;
  @Uint32() external int CPUPageProperty;
  @Uint32() external int MemoryPoolPreference;
  @Uint32() external int CreationNodeMask;
  @Uint32() external int VisibleNodeMask;
}

class D3D12_HEAP_DESC extends Struct {
  @Uint64() external int SizeInBytes;
  external D3D12_HEAP_PROPERTIES Properties;
  @Uint64() external int Alignment;
  @Uint32() external int Flags;
}

class D3D12_MIP_REGION extends Struct {
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int Depth;
}

class D3D12_RESOURCE_DESC extends Struct {
  @Uint32() external int Dimension;
  @Uint64() external int Alignment;
  @Uint64() external int Width;
  @Uint32() external int Height;
  @Uint16() external int DepthOrArraySize;
  @Uint16() external int MipLevels;
  @Uint32() external int Format;
  external DXGI_SAMPLE_DESC SampleDesc;
  @Uint32() external int Layout;
  @Uint32() external int Flags;
}

class D3D12_RESOURCE_DESC1 extends Struct {
  @Uint32() external int Dimension;
  @Uint64() external int Alignment;
  @Uint64() external int Width;
  @Uint32() external int Height;
  @Uint16() external int DepthOrArraySize;
  @Uint16() external int MipLevels;
  @Uint32() external int Format;
  external DXGI_SAMPLE_DESC SampleDesc;
  @Uint32() external int Layout;
  @Uint32() external int Flags;
  external D3D12_MIP_REGION SamplerFeedbackMipRegion;
}

class D3D12_DEPTH_STENCIL_VALUE extends Struct {
  @Float() external double Depth;
  @Uint8() external int Stencil;
}

class D3D12_CLEAR_VALUE extends Struct {
  @Uint32() external int Format;
  @Uint32() external int Anonymous;
}

class D3D12_RANGE extends Struct {
  @IntPtr() external int Begin;
  @IntPtr() external int End;
}

class D3D12_RANGE_UINT64 extends Struct {
  @Uint64() external int Begin;
  @Uint64() external int End;
}

class D3D12_SUBRESOURCE_RANGE_UINT64 extends Struct {
  @Uint32() external int Subresource;
  external D3D12_RANGE_UINT64 Range;
}

class D3D12_SUBRESOURCE_INFO extends Struct {
  @Uint64() external int Offset;
  @Uint32() external int RowPitch;
  @Uint32() external int DepthPitch;
}

class D3D12_TILED_RESOURCE_COORDINATE extends Struct {
  @Uint32() external int X;
  @Uint32() external int Y;
  @Uint32() external int Z;
  @Uint32() external int Subresource;
}

class D3D12_TILE_REGION_SIZE extends Struct {
  @Uint32() external int NumTiles;
  @Int32() external int UseBox;
  @Uint32() external int Width;
  @Uint16() external int Height;
  @Uint16() external int Depth;
}

class D3D12_SUBRESOURCE_TILING extends Struct {
  @Uint32() external int WidthInTiles;
  @Uint16() external int HeightInTiles;
  @Uint16() external int DepthInTiles;
  @Uint32() external int StartTileIndexInOverallResource;
}

class D3D12_TILE_SHAPE extends Struct {
  @Uint32() external int WidthInTexels;
  @Uint32() external int HeightInTexels;
  @Uint32() external int DepthInTexels;
}

class D3D12_PACKED_MIP_INFO extends Struct {
  @Uint8() external int NumStandardMips;
  @Uint8() external int NumPackedMips;
  @Uint32() external int NumTilesForPackedMips;
  @Uint32() external int StartTileIndexInOverallResource;
}

class D3D12_RESOURCE_TRANSITION_BARRIER extends Struct {
  external ID3D12Resource pResource;
  @Uint32() external int Subresource;
  @Uint32() external int StateBefore;
  @Uint32() external int StateAfter;
}

class D3D12_RESOURCE_ALIASING_BARRIER extends Struct {
  external ID3D12Resource pResourceBefore;
  external ID3D12Resource pResourceAfter;
}

class D3D12_RESOURCE_UAV_BARRIER extends Struct {
  external ID3D12Resource pResource;
}

class D3D12_RESOURCE_BARRIER extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Flags;
  @Uint32() external int Anonymous;
}

class D3D12_SUBRESOURCE_FOOTPRINT extends Struct {
  @Uint32() external int Format;
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int Depth;
  @Uint32() external int RowPitch;
}

class D3D12_PLACED_SUBRESOURCE_FOOTPRINT extends Struct {
  @Uint64() external int Offset;
  external D3D12_SUBRESOURCE_FOOTPRINT Footprint;
}

class D3D12_TEXTURE_COPY_LOCATION extends Struct {
  external ID3D12Resource pResource;
  @Uint32() external int Type;
  @Uint32() external int Anonymous;
}

class D3D12_SAMPLE_POSITION extends Struct {
  @Int8() external int X;
  @Int8() external int Y;
}

class D3D12_VIEW_INSTANCE_LOCATION extends Struct {
  @Uint32() external int ViewportArrayIndex;
  @Uint32() external int RenderTargetArrayIndex;
}

class D3D12_VIEW_INSTANCING_DESC extends Struct {
  @Uint32() external int ViewInstanceCount;
  external Pointer<D3D12_VIEW_INSTANCE_LOCATION> pViewInstanceLocations;
  @Uint32() external int Flags;
}

class D3D12_BUFFER_SRV extends Struct {
  @Uint64() external int FirstElement;
  @Uint32() external int NumElements;
  @Uint32() external int StructureByteStride;
  @Uint32() external int Flags;
}

class D3D12_TEX1D_SRV extends Struct {
  @Uint32() external int MostDetailedMip;
  @Uint32() external int MipLevels;
  @Float() external double ResourceMinLODClamp;
}

class D3D12_TEX1D_ARRAY_SRV extends Struct {
  @Uint32() external int MostDetailedMip;
  @Uint32() external int MipLevels;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
  @Float() external double ResourceMinLODClamp;
}

class D3D12_TEX2D_SRV extends Struct {
  @Uint32() external int MostDetailedMip;
  @Uint32() external int MipLevels;
  @Uint32() external int PlaneSlice;
  @Float() external double ResourceMinLODClamp;
}

class D3D12_TEX2D_ARRAY_SRV extends Struct {
  @Uint32() external int MostDetailedMip;
  @Uint32() external int MipLevels;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
  @Uint32() external int PlaneSlice;
  @Float() external double ResourceMinLODClamp;
}

class D3D12_TEX3D_SRV extends Struct {
  @Uint32() external int MostDetailedMip;
  @Uint32() external int MipLevels;
  @Float() external double ResourceMinLODClamp;
}

class D3D12_TEXCUBE_SRV extends Struct {
  @Uint32() external int MostDetailedMip;
  @Uint32() external int MipLevels;
  @Float() external double ResourceMinLODClamp;
}

class D3D12_TEXCUBE_ARRAY_SRV extends Struct {
  @Uint32() external int MostDetailedMip;
  @Uint32() external int MipLevels;
  @Uint32() external int First2DArrayFace;
  @Uint32() external int NumCubes;
  @Float() external double ResourceMinLODClamp;
}

class D3D12_TEX2DMS_SRV extends Struct {
  @Uint32() external int UnusedField_NothingToDefine;
}

class D3D12_TEX2DMS_ARRAY_SRV extends Struct {
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D12_RAYTRACING_ACCELERATION_STRUCTURE_SRV extends Struct {
  @Uint64() external int Location;
}

class D3D12_SHADER_RESOURCE_VIEW_DESC extends Struct {
  @Uint32() external int Format;
  @Uint32() external int ViewDimension;
  @Uint32() external int Shader4ComponentMapping;
  @Uint32() external int Anonymous;
}

class D3D12_CONSTANT_BUFFER_VIEW_DESC extends Struct {
  @Uint64() external int BufferLocation;
  @Uint32() external int SizeInBytes;
}

class D3D12_SAMPLER_DESC extends Struct {
  @Uint32() external int Filter;
  @Uint32() external int AddressU;
  @Uint32() external int AddressV;
  @Uint32() external int AddressW;
  @Float() external double MipLODBias;
  @Uint32() external int MaxAnisotropy;
  @Uint32() external int ComparisonFunc;
  external __float__ BorderColor;
  @Float() external double MinLOD;
  @Float() external double MaxLOD;
}

class D3D12_BUFFER_UAV extends Struct {
  @Uint64() external int FirstElement;
  @Uint32() external int NumElements;
  @Uint32() external int StructureByteStride;
  @Uint64() external int CounterOffsetInBytes;
  @Uint32() external int Flags;
}

class D3D12_TEX1D_UAV extends Struct {
  @Uint32() external int MipSlice;
}

class D3D12_TEX1D_ARRAY_UAV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D12_TEX2D_UAV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int PlaneSlice;
}

class D3D12_TEX2D_ARRAY_UAV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
  @Uint32() external int PlaneSlice;
}

class D3D12_TEX3D_UAV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstWSlice;
  @Uint32() external int WSize;
}

class D3D12_UNORDERED_ACCESS_VIEW_DESC extends Struct {
  @Uint32() external int Format;
  @Uint32() external int ViewDimension;
  @Uint32() external int Anonymous;
}

class D3D12_BUFFER_RTV extends Struct {
  @Uint64() external int FirstElement;
  @Uint32() external int NumElements;
}

class D3D12_TEX1D_RTV extends Struct {
  @Uint32() external int MipSlice;
}

class D3D12_TEX1D_ARRAY_RTV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D12_TEX2D_RTV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int PlaneSlice;
}

class D3D12_TEX2DMS_RTV extends Struct {
  @Uint32() external int UnusedField_NothingToDefine;
}

class D3D12_TEX2D_ARRAY_RTV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
  @Uint32() external int PlaneSlice;
}

class D3D12_TEX2DMS_ARRAY_RTV extends Struct {
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D12_TEX3D_RTV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstWSlice;
  @Uint32() external int WSize;
}

class D3D12_RENDER_TARGET_VIEW_DESC extends Struct {
  @Uint32() external int Format;
  @Uint32() external int ViewDimension;
  @Uint32() external int Anonymous;
}

class D3D12_TEX1D_DSV extends Struct {
  @Uint32() external int MipSlice;
}

class D3D12_TEX1D_ARRAY_DSV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D12_TEX2D_DSV extends Struct {
  @Uint32() external int MipSlice;
}

class D3D12_TEX2D_ARRAY_DSV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D12_TEX2DMS_DSV extends Struct {
  @Uint32() external int UnusedField_NothingToDefine;
}

class D3D12_TEX2DMS_ARRAY_DSV extends Struct {
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D12_DEPTH_STENCIL_VIEW_DESC extends Struct {
  @Uint32() external int Format;
  @Uint32() external int ViewDimension;
  @Uint32() external int Flags;
  @Uint32() external int Anonymous;
}

class D3D12_DESCRIPTOR_HEAP_DESC extends Struct {
  @Uint32() external int Type;
  @Uint32() external int NumDescriptors;
  @Uint32() external int Flags;
  @Uint32() external int NodeMask;
}

class D3D12_DESCRIPTOR_RANGE extends Struct {
  @Uint32() external int RangeType;
  @Uint32() external int NumDescriptors;
  @Uint32() external int BaseShaderRegister;
  @Uint32() external int RegisterSpace;
  @Uint32() external int OffsetInDescriptorsFromTableStart;
}

class D3D12_ROOT_DESCRIPTOR_TABLE extends Struct {
  @Uint32() external int NumDescriptorRanges;
  external Pointer<D3D12_DESCRIPTOR_RANGE> pDescriptorRanges;
}

class D3D12_ROOT_CONSTANTS extends Struct {
  @Uint32() external int ShaderRegister;
  @Uint32() external int RegisterSpace;
  @Uint32() external int Num32BitValues;
}

class D3D12_ROOT_DESCRIPTOR extends Struct {
  @Uint32() external int ShaderRegister;
  @Uint32() external int RegisterSpace;
}

class D3D12_ROOT_PARAMETER extends Struct {
  @Uint32() external int ParameterType;
  @Uint32() external int Anonymous;
  @Uint32() external int ShaderVisibility;
}

class D3D12_STATIC_SAMPLER_DESC extends Struct {
  @Uint32() external int Filter;
  @Uint32() external int AddressU;
  @Uint32() external int AddressV;
  @Uint32() external int AddressW;
  @Float() external double MipLODBias;
  @Uint32() external int MaxAnisotropy;
  @Uint32() external int ComparisonFunc;
  @Uint32() external int BorderColor;
  @Float() external double MinLOD;
  @Float() external double MaxLOD;
  @Uint32() external int ShaderRegister;
  @Uint32() external int RegisterSpace;
  @Uint32() external int ShaderVisibility;
}

class D3D12_ROOT_SIGNATURE_DESC extends Struct {
  @Uint32() external int NumParameters;
  external Pointer<D3D12_ROOT_PARAMETER> pParameters;
  @Uint32() external int NumStaticSamplers;
  external Pointer<D3D12_STATIC_SAMPLER_DESC> pStaticSamplers;
  @Uint32() external int Flags;
}

class D3D12_DESCRIPTOR_RANGE1 extends Struct {
  @Uint32() external int RangeType;
  @Uint32() external int NumDescriptors;
  @Uint32() external int BaseShaderRegister;
  @Uint32() external int RegisterSpace;
  @Uint32() external int Flags;
  @Uint32() external int OffsetInDescriptorsFromTableStart;
}

class D3D12_ROOT_DESCRIPTOR_TABLE1 extends Struct {
  @Uint32() external int NumDescriptorRanges;
  external Pointer<D3D12_DESCRIPTOR_RANGE1> pDescriptorRanges;
}

class D3D12_ROOT_DESCRIPTOR1 extends Struct {
  @Uint32() external int ShaderRegister;
  @Uint32() external int RegisterSpace;
  @Uint32() external int Flags;
}

class D3D12_ROOT_PARAMETER1 extends Struct {
  @Uint32() external int ParameterType;
  @Uint32() external int Anonymous;
  @Uint32() external int ShaderVisibility;
}

class D3D12_ROOT_SIGNATURE_DESC1 extends Struct {
  @Uint32() external int NumParameters;
  external Pointer<D3D12_ROOT_PARAMETER1> pParameters;
  @Uint32() external int NumStaticSamplers;
  external Pointer<D3D12_STATIC_SAMPLER_DESC> pStaticSamplers;
  @Uint32() external int Flags;
}

class D3D12_VERSIONED_ROOT_SIGNATURE_DESC extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class D3D12_CPU_DESCRIPTOR_HANDLE extends Struct {
  @IntPtr() external int ptr;
}

class D3D12_GPU_DESCRIPTOR_HANDLE extends Struct {
  @Uint64() external int ptr;
}

class D3D12_DISCARD_REGION extends Struct {
  @Uint32() external int NumRects;
  external Pointer<RECT> pRects;
  @Uint32() external int FirstSubresource;
  @Uint32() external int NumSubresources;
}

class D3D12_QUERY_HEAP_DESC extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Count;
  @Uint32() external int NodeMask;
}

class D3D12_QUERY_DATA_PIPELINE_STATISTICS extends Struct {
  @Uint64() external int IAVertices;
  @Uint64() external int IAPrimitives;
  @Uint64() external int VSInvocations;
  @Uint64() external int GSInvocations;
  @Uint64() external int GSPrimitives;
  @Uint64() external int CInvocations;
  @Uint64() external int CPrimitives;
  @Uint64() external int PSInvocations;
  @Uint64() external int HSInvocations;
  @Uint64() external int DSInvocations;
  @Uint64() external int CSInvocations;
}

class D3D12_QUERY_DATA_SO_STATISTICS extends Struct {
  @Uint64() external int NumPrimitivesWritten;
  @Uint64() external int PrimitivesStorageNeeded;
}

class D3D12_STREAM_OUTPUT_BUFFER_VIEW extends Struct {
  @Uint64() external int BufferLocation;
  @Uint64() external int SizeInBytes;
  @Uint64() external int BufferFilledSizeLocation;
}

class D3D12_DRAW_ARGUMENTS extends Struct {
  @Uint32() external int VertexCountPerInstance;
  @Uint32() external int InstanceCount;
  @Uint32() external int StartVertexLocation;
  @Uint32() external int StartInstanceLocation;
}

class D3D12_DRAW_INDEXED_ARGUMENTS extends Struct {
  @Uint32() external int IndexCountPerInstance;
  @Uint32() external int InstanceCount;
  @Uint32() external int StartIndexLocation;
  @Int32() external int BaseVertexLocation;
  @Uint32() external int StartInstanceLocation;
}

class D3D12_DISPATCH_ARGUMENTS extends Struct {
  @Uint32() external int ThreadGroupCountX;
  @Uint32() external int ThreadGroupCountY;
  @Uint32() external int ThreadGroupCountZ;
}

class D3D12_VERTEX_BUFFER_VIEW extends Struct {
  @Uint64() external int BufferLocation;
  @Uint32() external int SizeInBytes;
  @Uint32() external int StrideInBytes;
}

class D3D12_INDEX_BUFFER_VIEW extends Struct {
  @Uint64() external int BufferLocation;
  @Uint32() external int SizeInBytes;
  @Uint32() external int Format;
}

class D3D12_INDIRECT_ARGUMENT_DESC extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Anonymous;
}

class D3D12_COMMAND_SIGNATURE_DESC extends Struct {
  @Uint32() external int ByteStride;
  @Uint32() external int NumArgumentDescs;
  external Pointer<D3D12_INDIRECT_ARGUMENT_DESC> pArgumentDescs;
  @Uint32() external int NodeMask;
}

class D3D12_WRITEBUFFERIMMEDIATE_PARAMETER extends Struct {
  @Uint64() external int Dest;
  @Uint32() external int Value;
}

class D3D12_FEATURE_DATA_PROTECTED_RESOURCE_SESSION_SUPPORT extends Struct {
  @Uint32() external int NodeIndex;
  @Uint32() external int Support;
}

class D3D12_PROTECTED_RESOURCE_SESSION_DESC extends Struct {
  @Uint32() external int NodeMask;
  @Uint32() external int Flags;
}

class D3D12_META_COMMAND_PARAMETER_DESC extends Struct {
  external Pointer<Utf16> Name;
  @Uint32() external int Type;
  @Uint32() external int Flags;
  @Uint32() external int RequiredResourceState;
  @Uint32() external int StructureOffset;
}

class D3D12_META_COMMAND_DESC extends Struct {
  external GUID Id;
  external Pointer<Utf16> Name;
  @Uint32() external int InitializationDirtyState;
  @Uint32() external int ExecutionDirtyState;
}

class D3D12_STATE_SUBOBJECT extends Struct {
  @Uint32() external int Type;
  external Pointer pDesc;
}

class D3D12_STATE_OBJECT_CONFIG extends Struct {
  @Uint32() external int Flags;
}

class D3D12_GLOBAL_ROOT_SIGNATURE extends Struct {
  external ID3D12RootSignature pGlobalRootSignature;
}

class D3D12_LOCAL_ROOT_SIGNATURE extends Struct {
  external ID3D12RootSignature pLocalRootSignature;
}

class D3D12_NODE_MASK extends Struct {
  @Uint32() external int NodeMask;
}

class D3D12_EXPORT_DESC extends Struct {
  external Pointer<Utf16> Name;
  external Pointer<Utf16> ExportToRename;
  @Uint32() external int Flags;
}

class D3D12_DXIL_LIBRARY_DESC extends Struct {
  external D3D12_SHADER_BYTECODE DXILLibrary;
  @Uint32() external int NumExports;
  external Pointer<D3D12_EXPORT_DESC> pExports;
}

class D3D12_EXISTING_COLLECTION_DESC extends Struct {
  external ID3D12StateObject pExistingCollection;
  @Uint32() external int NumExports;
  external Pointer<D3D12_EXPORT_DESC> pExports;
}

class D3D12_SUBOBJECT_TO_EXPORTS_ASSOCIATION extends Struct {
  external Pointer<D3D12_STATE_SUBOBJECT> pSubobjectToAssociate;
  @Uint32() external int NumExports;
  external Pointer<Pointer<Utf16>> pExports;
}

class D3D12_DXIL_SUBOBJECT_TO_EXPORTS_ASSOCIATION extends Struct {
  external Pointer<Utf16> SubobjectToAssociate;
  @Uint32() external int NumExports;
  external Pointer<Pointer<Utf16>> pExports;
}

class D3D12_HIT_GROUP_DESC extends Struct {
  external Pointer<Utf16> HitGroupExport;
  @Uint32() external int Type;
  external Pointer<Utf16> AnyHitShaderImport;
  external Pointer<Utf16> ClosestHitShaderImport;
  external Pointer<Utf16> IntersectionShaderImport;
}

class D3D12_RAYTRACING_SHADER_CONFIG extends Struct {
  @Uint32() external int MaxPayloadSizeInBytes;
  @Uint32() external int MaxAttributeSizeInBytes;
}

class D3D12_RAYTRACING_PIPELINE_CONFIG extends Struct {
  @Uint32() external int MaxTraceRecursionDepth;
}

class D3D12_RAYTRACING_PIPELINE_CONFIG1 extends Struct {
  @Uint32() external int MaxTraceRecursionDepth;
  @Uint32() external int Flags;
}

class D3D12_STATE_OBJECT_DESC extends Struct {
  @Uint32() external int Type;
  @Uint32() external int NumSubobjects;
  external Pointer<D3D12_STATE_SUBOBJECT> pSubobjects;
}

class D3D12_GPU_VIRTUAL_ADDRESS_AND_STRIDE extends Struct {
  @Uint64() external int StartAddress;
  @Uint64() external int StrideInBytes;
}

class D3D12_GPU_VIRTUAL_ADDRESS_RANGE extends Struct {
  @Uint64() external int StartAddress;
  @Uint64() external int SizeInBytes;
}

class D3D12_GPU_VIRTUAL_ADDRESS_RANGE_AND_STRIDE extends Struct {
  @Uint64() external int StartAddress;
  @Uint64() external int SizeInBytes;
  @Uint64() external int StrideInBytes;
}

class D3D12_RAYTRACING_GEOMETRY_TRIANGLES_DESC extends Struct {
  @Uint64() external int Transform3x4;
  @Uint32() external int IndexFormat;
  @Uint32() external int VertexFormat;
  @Uint32() external int IndexCount;
  @Uint32() external int VertexCount;
  @Uint64() external int IndexBuffer;
  external D3D12_GPU_VIRTUAL_ADDRESS_AND_STRIDE VertexBuffer;
}

class D3D12_RAYTRACING_AABB extends Struct {
  @Float() external double MinX;
  @Float() external double MinY;
  @Float() external double MinZ;
  @Float() external double MaxX;
  @Float() external double MaxY;
  @Float() external double MaxZ;
}

class D3D12_RAYTRACING_GEOMETRY_AABBS_DESC extends Struct {
  @Uint64() external int AABBCount;
  external D3D12_GPU_VIRTUAL_ADDRESS_AND_STRIDE AABBs;
}

class D3D12_RAYTRACING_ACCELERATION_STRUCTURE_POSTBUILD_INFO_DESC extends Struct {
  @Uint64() external int DestBuffer;
  @Uint32() external int InfoType;
}

class D3D12_RAYTRACING_ACCELERATION_STRUCTURE_POSTBUILD_INFO_COMPACTED_SIZE_DESC extends Struct {
  @Uint64() external int CompactedSizeInBytes;
}

class D3D12_RAYTRACING_ACCELERATION_STRUCTURE_POSTBUILD_INFO_TOOLS_VISUALIZATION_DESC extends Struct {
  @Uint64() external int DecodedSizeInBytes;
}

class D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_TOOLS_VISUALIZATION_HEADER extends Struct {
  @Uint32() external int Type;
  @Uint32() external int NumDescs;
}

class D3D12_RAYTRACING_ACCELERATION_STRUCTURE_POSTBUILD_INFO_SERIALIZATION_DESC extends Struct {
  @Uint64() external int SerializedSizeInBytes;
  @Uint64() external int NumBottomLevelAccelerationStructurePointers;
}

class D3D12_SERIALIZED_DATA_DRIVER_MATCHING_IDENTIFIER extends Struct {
  external GUID DriverOpaqueGUID;
  external __ubyte__ DriverOpaqueVersioningData;
}

class D3D12_SERIALIZED_RAYTRACING_ACCELERATION_STRUCTURE_HEADER extends Struct {
  external D3D12_SERIALIZED_DATA_DRIVER_MATCHING_IDENTIFIER DriverMatchingIdentifier;
  @Uint64() external int SerializedSizeInBytesIncludingHeader;
  @Uint64() external int DeserializedSizeInBytes;
  @Uint64() external int NumBottomLevelAccelerationStructurePointersAfterHeader;
}

class D3D12_RAYTRACING_ACCELERATION_STRUCTURE_POSTBUILD_INFO_CURRENT_SIZE_DESC extends Struct {
  @Uint64() external int CurrentSizeInBytes;
}

class D3D12_RAYTRACING_INSTANCE_DESC extends Struct {
  external __float__ Transform;
  @Uint32() external int _bitfield1;
  @Uint32() external int _bitfield2;
  @Uint64() external int AccelerationStructure;
}

class D3D12_RAYTRACING_GEOMETRY_DESC extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Flags;
  @Uint32() external int Anonymous;
}

class D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_INPUTS extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Flags;
  @Uint32() external int NumDescs;
  @Uint32() external int DescsLayout;
  @Uint32() external int Anonymous;
}

class D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_DESC extends Struct {
  @Uint64() external int DestAccelerationStructureData;
  external D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_INPUTS Inputs;
  @Uint64() external int SourceAccelerationStructureData;
  @Uint64() external int ScratchAccelerationStructureData;
}

class D3D12_RAYTRACING_ACCELERATION_STRUCTURE_PREBUILD_INFO extends Struct {
  @Uint64() external int ResultDataMaxSizeInBytes;
  @Uint64() external int ScratchDataSizeInBytes;
  @Uint64() external int UpdateScratchDataSizeInBytes;
}

class D3D12_AUTO_BREADCRUMB_NODE extends Struct {
  external Pointer<Uint8> pCommandListDebugNameA;
  external Pointer<Utf16> pCommandListDebugNameW;
  external Pointer<Uint8> pCommandQueueDebugNameA;
  external Pointer<Utf16> pCommandQueueDebugNameW;
  external ID3D12GraphicsCommandList pCommandList;
  external ID3D12CommandQueue pCommandQueue;
  @Uint32() external int BreadcrumbCount;
  external Pointer<Uint32> pLastBreadcrumbValue;
  external Pointer<Uint32> pCommandHistory;
  external Pointer<D3D12_AUTO_BREADCRUMB_NODE> pNext;
}

class D3D12_DRED_BREADCRUMB_CONTEXT extends Struct {
  @Uint32() external int BreadcrumbIndex;
  external Pointer<Utf16> pContextString;
}

class D3D12_AUTO_BREADCRUMB_NODE1 extends Struct {
  external Pointer<Uint8> pCommandListDebugNameA;
  external Pointer<Utf16> pCommandListDebugNameW;
  external Pointer<Uint8> pCommandQueueDebugNameA;
  external Pointer<Utf16> pCommandQueueDebugNameW;
  external ID3D12GraphicsCommandList pCommandList;
  external ID3D12CommandQueue pCommandQueue;
  @Uint32() external int BreadcrumbCount;
  external Pointer<Uint32> pLastBreadcrumbValue;
  external Pointer<Uint32> pCommandHistory;
  external Pointer<D3D12_AUTO_BREADCRUMB_NODE1> pNext;
  @Uint32() external int BreadcrumbContextsCount;
  external Pointer<D3D12_DRED_BREADCRUMB_CONTEXT> pBreadcrumbContexts;
}

class D3D12_DEVICE_REMOVED_EXTENDED_DATA extends Struct {
  @Uint32() external int Flags;
  external Pointer<D3D12_AUTO_BREADCRUMB_NODE> pHeadAutoBreadcrumbNode;
}

class D3D12_DRED_ALLOCATION_NODE extends Struct {
  external Pointer<Uint8> ObjectNameA;
  external Pointer<Utf16> ObjectNameW;
  @Uint32() external int AllocationType;
  external Pointer<D3D12_DRED_ALLOCATION_NODE> pNext;
}

class D3D12_DRED_ALLOCATION_NODE1 extends Struct {
  external Pointer<Uint8> ObjectNameA;
  external Pointer<Utf16> ObjectNameW;
  @Uint32() external int AllocationType;
  external Pointer<D3D12_DRED_ALLOCATION_NODE1> pNext;
  external Pointer pObject;
}

class D3D12_DRED_AUTO_BREADCRUMBS_OUTPUT extends Struct {
  external Pointer<D3D12_AUTO_BREADCRUMB_NODE> pHeadAutoBreadcrumbNode;
}

class D3D12_DRED_AUTO_BREADCRUMBS_OUTPUT1 extends Struct {
  external Pointer<D3D12_AUTO_BREADCRUMB_NODE1> pHeadAutoBreadcrumbNode;
}

class D3D12_DRED_PAGE_FAULT_OUTPUT extends Struct {
  @Uint64() external int PageFaultVA;
  external Pointer<D3D12_DRED_ALLOCATION_NODE> pHeadExistingAllocationNode;
  external Pointer<D3D12_DRED_ALLOCATION_NODE> pHeadRecentFreedAllocationNode;
}

class D3D12_DRED_PAGE_FAULT_OUTPUT1 extends Struct {
  @Uint64() external int PageFaultVA;
  external Pointer<D3D12_DRED_ALLOCATION_NODE1> pHeadExistingAllocationNode;
  external Pointer<D3D12_DRED_ALLOCATION_NODE1> pHeadRecentFreedAllocationNode;
}

class D3D12_DEVICE_REMOVED_EXTENDED_DATA1 extends Struct {
  @Int32() external int DeviceRemovedReason;
  external D3D12_DRED_AUTO_BREADCRUMBS_OUTPUT AutoBreadcrumbsOutput;
  external D3D12_DRED_PAGE_FAULT_OUTPUT PageFaultOutput;
}

class D3D12_DEVICE_REMOVED_EXTENDED_DATA2 extends Struct {
  @Int32() external int DeviceRemovedReason;
  external D3D12_DRED_AUTO_BREADCRUMBS_OUTPUT1 AutoBreadcrumbsOutput;
  external D3D12_DRED_PAGE_FAULT_OUTPUT1 PageFaultOutput;
}

class D3D12_VERSIONED_DEVICE_REMOVED_EXTENDED_DATA extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Anonymous;
}

class D3D12_FEATURE_DATA_PROTECTED_RESOURCE_SESSION_TYPE_COUNT extends Struct {
  @Uint32() external int NodeIndex;
  @Uint32() external int Count;
}

class D3D12_FEATURE_DATA_PROTECTED_RESOURCE_SESSION_TYPES extends Struct {
  @Uint32() external int NodeIndex;
  @Uint32() external int Count;
  external Pointer<GUID> pTypes;
}

class D3D12_PROTECTED_RESOURCE_SESSION_DESC1 extends Struct {
  @Uint32() external int NodeMask;
  @Uint32() external int Flags;
  external GUID ProtectionType;
}

class D3D12_RENDER_PASS_BEGINNING_ACCESS_CLEAR_PARAMETERS extends Struct {
  external D3D12_CLEAR_VALUE ClearValue;
}

class D3D12_RENDER_PASS_BEGINNING_ACCESS extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Anonymous;
}

class D3D12_RENDER_PASS_ENDING_ACCESS_RESOLVE_SUBRESOURCE_PARAMETERS extends Struct {
  @Uint32() external int SrcSubresource;
  @Uint32() external int DstSubresource;
  @Uint32() external int DstX;
  @Uint32() external int DstY;
  external RECT SrcRect;
}

class D3D12_RENDER_PASS_ENDING_ACCESS_RESOLVE_PARAMETERS extends Struct {
  external ID3D12Resource pSrcResource;
  external ID3D12Resource pDstResource;
  @Uint32() external int SubresourceCount;
  external Pointer<D3D12_RENDER_PASS_ENDING_ACCESS_RESOLVE_SUBRESOURCE_PARAMETERS> pSubresourceParameters;
  @Uint32() external int Format;
  @Uint32() external int ResolveMode;
  @Int32() external int PreserveResolveSource;
}

class D3D12_RENDER_PASS_ENDING_ACCESS extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Anonymous;
}

class D3D12_RENDER_PASS_RENDER_TARGET_DESC extends Struct {
  external D3D12_CPU_DESCRIPTOR_HANDLE cpuDescriptor;
  external D3D12_RENDER_PASS_BEGINNING_ACCESS BeginningAccess;
  external D3D12_RENDER_PASS_ENDING_ACCESS EndingAccess;
}

class D3D12_RENDER_PASS_DEPTH_STENCIL_DESC extends Struct {
  external D3D12_CPU_DESCRIPTOR_HANDLE cpuDescriptor;
  external D3D12_RENDER_PASS_BEGINNING_ACCESS DepthBeginningAccess;
  external D3D12_RENDER_PASS_BEGINNING_ACCESS StencilBeginningAccess;
  external D3D12_RENDER_PASS_ENDING_ACCESS DepthEndingAccess;
  external D3D12_RENDER_PASS_ENDING_ACCESS StencilEndingAccess;
}

class D3D12_DISPATCH_RAYS_DESC extends Struct {
  external D3D12_GPU_VIRTUAL_ADDRESS_RANGE RayGenerationShaderRecord;
  external D3D12_GPU_VIRTUAL_ADDRESS_RANGE_AND_STRIDE MissShaderTable;
  external D3D12_GPU_VIRTUAL_ADDRESS_RANGE_AND_STRIDE HitGroupTable;
  external D3D12_GPU_VIRTUAL_ADDRESS_RANGE_AND_STRIDE CallableShaderTable;
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int Depth;
}

class D3D12_SUBRESOURCE_DATA extends Struct {
  external Pointer pData;
  @IntPtr() external int RowPitch;
  @IntPtr() external int SlicePitch;
}

class D3D12_MEMCPY_DEST extends Struct {
  external Pointer pData;
  @IntPtr() external int RowPitch;
  @IntPtr() external int SlicePitch;
}

class D3D12_DEBUG_DEVICE_GPU_BASED_VALIDATION_SETTINGS extends Struct {
  @Uint32() external int MaxMessagesPerCommandList;
  @Uint32() external int DefaultShaderPatchMode;
  @Uint32() external int PipelineStateCreateFlags;
}

class D3D12_DEBUG_DEVICE_GPU_SLOWDOWN_PERFORMANCE_FACTOR extends Struct {
  @Float() external double SlowdownFactor;
}

class D3D12_DEBUG_COMMAND_LIST_GPU_BASED_VALIDATION_SETTINGS extends Struct {
  @Uint32() external int ShaderPatchMode;
}

class D3D12_MESSAGE extends Struct {
  @Uint32() external int Category;
  @Uint32() external int Severity;
  @Uint32() external int ID;
  external Pointer<Uint8> pDescription;
  @IntPtr() external int DescriptionByteLength;
}

class D3D12_INFO_QUEUE_FILTER_DESC extends Struct {
  @Uint32() external int NumCategories;
  external Pointer<Uint32> pCategoryList;
  @Uint32() external int NumSeverities;
  external Pointer<Uint32> pSeverityList;
  @Uint32() external int NumIDs;
  external Pointer<Uint32> pIDList;
}

class D3D12_INFO_QUEUE_FILTER extends Struct {
  external D3D12_INFO_QUEUE_FILTER_DESC AllowList;
  external D3D12_INFO_QUEUE_FILTER_DESC DenyList;
}

class D3D12_DISPATCH_MESH_ARGUMENTS extends Struct {
  @Uint32() external int ThreadGroupCountX;
  @Uint32() external int ThreadGroupCountY;
  @Uint32() external int ThreadGroupCountZ;
}

class D3D11_RESOURCE_FLAGS extends Struct {
  @Uint32() external int BindFlags;
  @Uint32() external int MiscFlags;
  @Uint32() external int CPUAccessFlags;
  @Uint32() external int StructureByteStride;
}

class D3D12_SIGNATURE_PARAMETER_DESC extends Struct {
  external Pointer<Utf8> SemanticName;
  @Uint32() external int SemanticIndex;
  @Uint32() external int Register;
  @Uint32() external int SystemValueType;
  @Uint32() external int ComponentType;
  @Uint8() external int Mask;
  @Uint8() external int ReadWriteMask;
  @Uint32() external int Stream;
  @Uint32() external int MinPrecision;
}

class D3D12_SHADER_BUFFER_DESC extends Struct {
  external Pointer<Utf8> Name;
  @Uint32() external int Type;
  @Uint32() external int Variables;
  @Uint32() external int Size;
  @Uint32() external int uFlags;
}

class D3D12_SHADER_VARIABLE_DESC extends Struct {
  external Pointer<Utf8> Name;
  @Uint32() external int StartOffset;
  @Uint32() external int Size;
  @Uint32() external int uFlags;
  external Pointer DefaultValue;
  @Uint32() external int StartTexture;
  @Uint32() external int TextureSize;
  @Uint32() external int StartSampler;
  @Uint32() external int SamplerSize;
}

class D3D12_SHADER_TYPE_DESC extends Struct {
  @Uint32() external int Class;
  @Uint32() external int Type;
  @Uint32() external int Rows;
  @Uint32() external int Columns;
  @Uint32() external int Elements;
  @Uint32() external int Members;
  @Uint32() external int Offset;
  external Pointer<Utf8> Name;
}

class D3D12_SHADER_DESC extends Struct {
  @Uint32() external int Version;
  external Pointer<Utf8> Creator;
  @Uint32() external int Flags;
  @Uint32() external int ConstantBuffers;
  @Uint32() external int BoundResources;
  @Uint32() external int InputParameters;
  @Uint32() external int OutputParameters;
  @Uint32() external int InstructionCount;
  @Uint32() external int TempRegisterCount;
  @Uint32() external int TempArrayCount;
  @Uint32() external int DefCount;
  @Uint32() external int DclCount;
  @Uint32() external int TextureNormalInstructions;
  @Uint32() external int TextureLoadInstructions;
  @Uint32() external int TextureCompInstructions;
  @Uint32() external int TextureBiasInstructions;
  @Uint32() external int TextureGradientInstructions;
  @Uint32() external int FloatInstructionCount;
  @Uint32() external int IntInstructionCount;
  @Uint32() external int UintInstructionCount;
  @Uint32() external int StaticFlowControlCount;
  @Uint32() external int DynamicFlowControlCount;
  @Uint32() external int MacroInstructionCount;
  @Uint32() external int ArrayInstructionCount;
  @Uint32() external int CutInstructionCount;
  @Uint32() external int EmitInstructionCount;
  @Uint32() external int GSOutputTopology;
  @Uint32() external int GSMaxOutputVertexCount;
  @Uint32() external int InputPrimitive;
  @Uint32() external int PatchConstantParameters;
  @Uint32() external int cGSInstanceCount;
  @Uint32() external int cControlPoints;
  @Uint32() external int HSOutputPrimitive;
  @Uint32() external int HSPartitioning;
  @Uint32() external int TessellatorDomain;
  @Uint32() external int cBarrierInstructions;
  @Uint32() external int cInterlockedInstructions;
  @Uint32() external int cTextureStoreInstructions;
}

class D3D12_SHADER_INPUT_BIND_DESC extends Struct {
  external Pointer<Utf8> Name;
  @Uint32() external int Type;
  @Uint32() external int BindPoint;
  @Uint32() external int BindCount;
  @Uint32() external int uFlags;
  @Uint32() external int ReturnType;
  @Uint32() external int Dimension;
  @Uint32() external int NumSamples;
  @Uint32() external int Space;
  @Uint32() external int uID;
}

class D3D12_LIBRARY_DESC extends Struct {
  external Pointer<Utf8> Creator;
  @Uint32() external int Flags;
  @Uint32() external int FunctionCount;
}

class D3D12_FUNCTION_DESC extends Struct {
  @Uint32() external int Version;
  external Pointer<Utf8> Creator;
  @Uint32() external int Flags;
  @Uint32() external int ConstantBuffers;
  @Uint32() external int BoundResources;
  @Uint32() external int InstructionCount;
  @Uint32() external int TempRegisterCount;
  @Uint32() external int TempArrayCount;
  @Uint32() external int DefCount;
  @Uint32() external int DclCount;
  @Uint32() external int TextureNormalInstructions;
  @Uint32() external int TextureLoadInstructions;
  @Uint32() external int TextureCompInstructions;
  @Uint32() external int TextureBiasInstructions;
  @Uint32() external int TextureGradientInstructions;
  @Uint32() external int FloatInstructionCount;
  @Uint32() external int IntInstructionCount;
  @Uint32() external int UintInstructionCount;
  @Uint32() external int StaticFlowControlCount;
  @Uint32() external int DynamicFlowControlCount;
  @Uint32() external int MacroInstructionCount;
  @Uint32() external int ArrayInstructionCount;
  @Uint32() external int MovInstructionCount;
  @Uint32() external int MovcInstructionCount;
  @Uint32() external int ConversionInstructionCount;
  @Uint32() external int BitwiseInstructionCount;
  @Uint32() external int MinFeatureLevel;
  @Uint64() external int RequiredFeatureFlags;
  external Pointer<Utf8> Name;
  @Int32() external int FunctionParameterCount;
  @Int32() external int HasReturn;
  @Int32() external int Has10Level9VertexShader;
  @Int32() external int Has10Level9PixelShader;
}

class D3D12_PARAMETER_DESC extends Struct {
  external Pointer<Utf8> Name;
  external Pointer<Utf8> SemanticName;
  @Uint32() external int Type;
  @Uint32() external int Class;
  @Uint32() external int Rows;
  @Uint32() external int Columns;
  @Uint32() external int InterpolationMode;
  @Uint32() external int Flags;
  @Uint32() external int FirstInRegister;
  @Uint32() external int FirstInComponent;
  @Uint32() external int FirstOutRegister;
  @Uint32() external int FirstOutComponent;
}

