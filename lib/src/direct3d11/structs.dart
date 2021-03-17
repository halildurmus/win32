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

class D3D_SHADER_MACRO extends Struct {
  external Pointer<Utf8> Name;
  external Pointer<Utf8> Definition;
}

class D3D11_INPUT_ELEMENT_DESC extends Struct {
  external Pointer<Utf8> SemanticName;
  @Uint32() external int SemanticIndex;
  @Uint32() external int Format;
  @Uint32() external int InputSlot;
  @Uint32() external int AlignedByteOffset;
  @Uint32() external int InputSlotClass;
  @Uint32() external int InstanceDataStepRate;
}

class D3D11_SO_DECLARATION_ENTRY extends Struct {
  @Uint32() external int Stream;
  external Pointer<Utf8> SemanticName;
  @Uint32() external int SemanticIndex;
  @Uint8() external int StartComponent;
  @Uint8() external int ComponentCount;
  @Uint8() external int OutputSlot;
}

class D3D11_VIEWPORT extends Struct {
  @Float() external double TopLeftX;
  @Float() external double TopLeftY;
  @Float() external double Width;
  @Float() external double Height;
  @Float() external double MinDepth;
  @Float() external double MaxDepth;
}

class D3D11_DRAW_INSTANCED_INDIRECT_ARGS extends Struct {
  @Uint32() external int VertexCountPerInstance;
  @Uint32() external int InstanceCount;
  @Uint32() external int StartVertexLocation;
  @Uint32() external int StartInstanceLocation;
}

class D3D11_DRAW_INDEXED_INSTANCED_INDIRECT_ARGS extends Struct {
  @Uint32() external int IndexCountPerInstance;
  @Uint32() external int InstanceCount;
  @Uint32() external int StartIndexLocation;
  @Int32() external int BaseVertexLocation;
  @Uint32() external int StartInstanceLocation;
}

class D3D11_BOX extends Struct {
  @Uint32() external int left;
  @Uint32() external int top;
  @Uint32() external int front;
  @Uint32() external int right;
  @Uint32() external int bottom;
  @Uint32() external int back;
}

class D3D11_DEPTH_STENCILOP_DESC extends Struct {
  @Uint32() external int StencilFailOp;
  @Uint32() external int StencilDepthFailOp;
  @Uint32() external int StencilPassOp;
  @Uint32() external int StencilFunc;
}

class D3D11_DEPTH_STENCIL_DESC extends Struct {
  @Int32() external int DepthEnable;
  @Uint32() external int DepthWriteMask;
  @Uint32() external int DepthFunc;
  @Int32() external int StencilEnable;
  @Uint8() external int StencilReadMask;
  @Uint8() external int StencilWriteMask;
  external D3D11_DEPTH_STENCILOP_DESC FrontFace;
  external D3D11_DEPTH_STENCILOP_DESC BackFace;
}

class D3D11_RENDER_TARGET_BLEND_DESC extends Struct {
  @Int32() external int BlendEnable;
  @Uint32() external int SrcBlend;
  @Uint32() external int DestBlend;
  @Uint32() external int BlendOp;
  @Uint32() external int SrcBlendAlpha;
  @Uint32() external int DestBlendAlpha;
  @Uint32() external int BlendOpAlpha;
  @Uint8() external int RenderTargetWriteMask;
}

class D3D11_BLEND_DESC extends Struct {
  @Int32() external int AlphaToCoverageEnable;
  @Int32() external int IndependentBlendEnable;
  external D3D11_RENDER_TARGET_BLEND_DESC RenderTarget;
}

class D3D11_RASTERIZER_DESC extends Struct {
  @Uint32() external int FillMode;
  @Uint32() external int CullMode;
  @Int32() external int FrontCounterClockwise;
  @Int32() external int DepthBias;
  @Float() external double DepthBiasClamp;
  @Float() external double SlopeScaledDepthBias;
  @Int32() external int DepthClipEnable;
  @Int32() external int ScissorEnable;
  @Int32() external int MultisampleEnable;
  @Int32() external int AntialiasedLineEnable;
}

class D3D11_SUBRESOURCE_DATA extends Struct {
  external Pointer pSysMem;
  @Uint32() external int SysMemPitch;
  @Uint32() external int SysMemSlicePitch;
}

class D3D11_MAPPED_SUBRESOURCE extends Struct {
  external Pointer pData;
  @Uint32() external int RowPitch;
  @Uint32() external int DepthPitch;
}

class D3D11_BUFFER_DESC extends Struct {
  @Uint32() external int ByteWidth;
  @Uint32() external int Usage;
  @Uint32() external int BindFlags;
  @Uint32() external int CPUAccessFlags;
  @Uint32() external int MiscFlags;
  @Uint32() external int StructureByteStride;
}

class D3D11_TEXTURE1D_DESC extends Struct {
  @Uint32() external int Width;
  @Uint32() external int MipLevels;
  @Uint32() external int ArraySize;
  @Uint32() external int Format;
  @Uint32() external int Usage;
  @Uint32() external int BindFlags;
  @Uint32() external int CPUAccessFlags;
  @Uint32() external int MiscFlags;
}

class D3D11_TEXTURE2D_DESC extends Struct {
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int MipLevels;
  @Uint32() external int ArraySize;
  @Uint32() external int Format;
  external DXGI_SAMPLE_DESC SampleDesc;
  @Uint32() external int Usage;
  @Uint32() external int BindFlags;
  @Uint32() external int CPUAccessFlags;
  @Uint32() external int MiscFlags;
}

class D3D11_TEXTURE3D_DESC extends Struct {
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int Depth;
  @Uint32() external int MipLevels;
  @Uint32() external int Format;
  @Uint32() external int Usage;
  @Uint32() external int BindFlags;
  @Uint32() external int CPUAccessFlags;
  @Uint32() external int MiscFlags;
}

class D3D11_BUFFEREX_SRV extends Struct {
  @Uint32() external int FirstElement;
  @Uint32() external int NumElements;
  @Uint32() external int Flags;
}

class D3D11_TEX1D_SRV extends Struct {
  @Uint32() external int MostDetailedMip;
  @Uint32() external int MipLevels;
}

class D3D11_TEX1D_ARRAY_SRV extends Struct {
  @Uint32() external int MostDetailedMip;
  @Uint32() external int MipLevels;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D11_TEX2D_SRV extends Struct {
  @Uint32() external int MostDetailedMip;
  @Uint32() external int MipLevels;
}

class D3D11_TEX2D_ARRAY_SRV extends Struct {
  @Uint32() external int MostDetailedMip;
  @Uint32() external int MipLevels;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D11_TEX3D_SRV extends Struct {
  @Uint32() external int MostDetailedMip;
  @Uint32() external int MipLevels;
}

class D3D11_TEXCUBE_SRV extends Struct {
  @Uint32() external int MostDetailedMip;
  @Uint32() external int MipLevels;
}

class D3D11_TEXCUBE_ARRAY_SRV extends Struct {
  @Uint32() external int MostDetailedMip;
  @Uint32() external int MipLevels;
  @Uint32() external int First2DArrayFace;
  @Uint32() external int NumCubes;
}

class D3D11_TEX2DMS_SRV extends Struct {
  @Uint32() external int UnusedField_NothingToDefine;
}

class D3D11_TEX2DMS_ARRAY_SRV extends Struct {
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D11_TEX1D_RTV extends Struct {
  @Uint32() external int MipSlice;
}

class D3D11_TEX1D_ARRAY_RTV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D11_TEX2D_RTV extends Struct {
  @Uint32() external int MipSlice;
}

class D3D11_TEX2DMS_RTV extends Struct {
  @Uint32() external int UnusedField_NothingToDefine;
}

class D3D11_TEX2D_ARRAY_RTV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D11_TEX2DMS_ARRAY_RTV extends Struct {
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D11_TEX3D_RTV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstWSlice;
  @Uint32() external int WSize;
}

class D3D11_TEX1D_DSV extends Struct {
  @Uint32() external int MipSlice;
}

class D3D11_TEX1D_ARRAY_DSV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D11_TEX2D_DSV extends Struct {
  @Uint32() external int MipSlice;
}

class D3D11_TEX2D_ARRAY_DSV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D11_TEX2DMS_DSV extends Struct {
  @Uint32() external int UnusedField_NothingToDefine;
}

class D3D11_TEX2DMS_ARRAY_DSV extends Struct {
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D11_BUFFER_UAV extends Struct {
  @Uint32() external int FirstElement;
  @Uint32() external int NumElements;
  @Uint32() external int Flags;
}

class D3D11_TEX1D_UAV extends Struct {
  @Uint32() external int MipSlice;
}

class D3D11_TEX1D_ARRAY_UAV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D11_TEX2D_UAV extends Struct {
  @Uint32() external int MipSlice;
}

class D3D11_TEX2D_ARRAY_UAV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D11_TEX3D_UAV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstWSlice;
  @Uint32() external int WSize;
}

class D3D11_SAMPLER_DESC extends Struct {
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

class D3D11_QUERY_DESC extends Struct {
  @Uint32() external int Query;
  @Uint32() external int MiscFlags;
}

class D3D11_QUERY_DATA_TIMESTAMP_DISJOINT extends Struct {
  @Uint64() external int Frequency;
  @Int32() external int Disjoint;
}

class D3D11_QUERY_DATA_PIPELINE_STATISTICS extends Struct {
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

class D3D11_QUERY_DATA_SO_STATISTICS extends Struct {
  @Uint64() external int NumPrimitivesWritten;
  @Uint64() external int PrimitivesStorageNeeded;
}

class D3D11_COUNTER_DESC extends Struct {
  @Uint32() external int Counter;
  @Uint32() external int MiscFlags;
}

class D3D11_COUNTER_INFO extends Struct {
  @Uint32() external int LastDeviceDependentCounter;
  @Uint32() external int NumSimultaneousCounters;
  @Uint8() external int NumDetectableParallelUnits;
}

class D3D11_CLASS_INSTANCE_DESC extends Struct {
  @Uint32() external int InstanceId;
  @Uint32() external int InstanceIndex;
  @Uint32() external int TypeId;
  @Uint32() external int ConstantBuffer;
  @Uint32() external int BaseConstantBufferOffset;
  @Uint32() external int BaseTexture;
  @Uint32() external int BaseSampler;
  @Int32() external int Created;
}

class D3D11_FEATURE_DATA_THREADING extends Struct {
  @Int32() external int DriverConcurrentCreates;
  @Int32() external int DriverCommandLists;
}

class D3D11_FEATURE_DATA_DOUBLES extends Struct {
  @Int32() external int DoublePrecisionFloatShaderOps;
}

class D3D11_FEATURE_DATA_FORMAT_SUPPORT extends Struct {
  @Uint32() external int InFormat;
  @Uint32() external int OutFormatSupport;
}

class D3D11_FEATURE_DATA_FORMAT_SUPPORT2 extends Struct {
  @Uint32() external int InFormat;
  @Uint32() external int OutFormatSupport2;
}

class D3D11_FEATURE_DATA_D3D10_X_HARDWARE_OPTIONS extends Struct {
  @Int32() external int ComputeShaders_Plus_RawAndStructuredBuffers_Via_Shader_4_x;
}

class D3D11_FEATURE_DATA_D3D11_OPTIONS extends Struct {
  @Int32() external int OutputMergerLogicOp;
  @Int32() external int UAVOnlyRenderingForcedSampleCount;
  @Int32() external int DiscardAPIsSeenByDriver;
  @Int32() external int FlagsForUpdateAndCopySeenByDriver;
  @Int32() external int ClearView;
  @Int32() external int CopyWithOverlap;
  @Int32() external int ConstantBufferPartialUpdate;
  @Int32() external int ConstantBufferOffsetting;
  @Int32() external int MapNoOverwriteOnDynamicConstantBuffer;
  @Int32() external int MapNoOverwriteOnDynamicBufferSRV;
  @Int32() external int MultisampleRTVWithForcedSampleCountOne;
  @Int32() external int SAD4ShaderInstructions;
  @Int32() external int ExtendedDoublesShaderInstructions;
  @Int32() external int ExtendedResourceSharing;
}

class D3D11_FEATURE_DATA_ARCHITECTURE_INFO extends Struct {
  @Int32() external int TileBasedDeferredRenderer;
}

class D3D11_FEATURE_DATA_D3D9_OPTIONS extends Struct {
  @Int32() external int FullNonPow2TextureSupport;
}

class D3D11_FEATURE_DATA_D3D9_SHADOW_SUPPORT extends Struct {
  @Int32() external int SupportsDepthAsTextureWithLessEqualComparisonFilter;
}

class D3D11_FEATURE_DATA_SHADER_MIN_PRECISION_SUPPORT extends Struct {
  @Uint32() external int PixelShaderMinPrecision;
  @Uint32() external int AllOtherShaderStagesMinPrecision;
}

class D3D11_FEATURE_DATA_D3D11_OPTIONS1 extends Struct {
  @Uint32() external int TiledResourcesTier;
  @Int32() external int MinMaxFiltering;
  @Int32() external int ClearViewAlsoSupportsDepthOnlyFormats;
  @Int32() external int MapOnDefaultBuffers;
}

class D3D11_FEATURE_DATA_D3D9_SIMPLE_INSTANCING_SUPPORT extends Struct {
  @Int32() external int SimpleInstancingSupported;
}

class D3D11_FEATURE_DATA_MARKER_SUPPORT extends Struct {
  @Int32() external int Profile;
}

class D3D11_FEATURE_DATA_D3D9_OPTIONS1 extends Struct {
  @Int32() external int FullNonPow2TextureSupported;
  @Int32() external int DepthAsTextureWithLessEqualComparisonFilterSupported;
  @Int32() external int SimpleInstancingSupported;
  @Int32() external int TextureCubeFaceRenderTargetWithNonCubeDepthStencilSupported;
}

class D3D11_FEATURE_DATA_D3D11_OPTIONS2 extends Struct {
  @Int32() external int PSSpecifiedStencilRefSupported;
  @Int32() external int TypedUAVLoadAdditionalFormats;
  @Int32() external int ROVsSupported;
  @Uint32() external int ConservativeRasterizationTier;
  @Uint32() external int TiledResourcesTier;
  @Int32() external int MapOnDefaultTextures;
  @Int32() external int StandardSwizzle;
  @Int32() external int UnifiedMemoryArchitecture;
}

class D3D11_FEATURE_DATA_D3D11_OPTIONS3 extends Struct {
  @Int32() external int VPAndRTArrayIndexFromAnyShaderFeedingRasterizer;
}

class D3D11_FEATURE_DATA_GPU_VIRTUAL_ADDRESS_SUPPORT extends Struct {
  @Uint32() external int MaxGPUVirtualAddressBitsPerResource;
  @Uint32() external int MaxGPUVirtualAddressBitsPerProcess;
}

class D3D11_FEATURE_DATA_SHADER_CACHE extends Struct {
  @Uint32() external int SupportFlags;
}

class D3D11_FEATURE_DATA_D3D11_OPTIONS5 extends Struct {
  @Uint32() external int SharedResourceTier;
}

class CD3D11_VIDEO_DEFAULT extends Struct {
}

class D3D11_MESSAGE extends Struct {
  @Uint32() external int Category;
  @Uint32() external int Severity;
  @Uint32() external int ID;
  external Pointer<Uint8> pDescription;
  @IntPtr() external int DescriptionByteLength;
}

class D3D11_INFO_QUEUE_FILTER_DESC extends Struct {
  @Uint32() external int NumCategories;
  external Pointer<Uint32> pCategoryList;
  @Uint32() external int NumSeverities;
  external Pointer<Uint32> pSeverityList;
  @Uint32() external int NumIDs;
  external Pointer<Uint32> pIDList;
}

class D3D11_INFO_QUEUE_FILTER extends Struct {
  external D3D11_INFO_QUEUE_FILTER_DESC AllowList;
  external D3D11_INFO_QUEUE_FILTER_DESC DenyList;
}

class D3D11_RENDER_TARGET_BLEND_DESC1 extends Struct {
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

class D3D11_BLEND_DESC1 extends Struct {
  @Int32() external int AlphaToCoverageEnable;
  @Int32() external int IndependentBlendEnable;
  external D3D11_RENDER_TARGET_BLEND_DESC1 RenderTarget;
}

class D3D11_RASTERIZER_DESC1 extends Struct {
  @Uint32() external int FillMode;
  @Uint32() external int CullMode;
  @Int32() external int FrontCounterClockwise;
  @Int32() external int DepthBias;
  @Float() external double DepthBiasClamp;
  @Float() external double SlopeScaledDepthBias;
  @Int32() external int DepthClipEnable;
  @Int32() external int ScissorEnable;
  @Int32() external int MultisampleEnable;
  @Int32() external int AntialiasedLineEnable;
  @Uint32() external int ForcedSampleCount;
}

class D3D11_TILED_RESOURCE_COORDINATE extends Struct {
  @Uint32() external int X;
  @Uint32() external int Y;
  @Uint32() external int Z;
  @Uint32() external int Subresource;
}

class D3D11_TILE_REGION_SIZE extends Struct {
  @Uint32() external int NumTiles;
  @Int32() external int bUseBox;
  @Uint32() external int Width;
  @Uint16() external int Height;
  @Uint16() external int Depth;
}

class D3D11_SUBRESOURCE_TILING extends Struct {
  @Uint32() external int WidthInTiles;
  @Uint16() external int HeightInTiles;
  @Uint16() external int DepthInTiles;
  @Uint32() external int StartTileIndexInOverallResource;
}

class D3D11_TILE_SHAPE extends Struct {
  @Uint32() external int WidthInTexels;
  @Uint32() external int HeightInTexels;
  @Uint32() external int DepthInTexels;
}

class D3D11_PACKED_MIP_DESC extends Struct {
  @Uint8() external int NumStandardMips;
  @Uint8() external int NumPackedMips;
  @Uint32() external int NumTilesForPackedMips;
  @Uint32() external int StartTileIndexInOverallResource;
}

class D3D11_TEXTURE2D_DESC1 extends Struct {
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int MipLevels;
  @Uint32() external int ArraySize;
  @Uint32() external int Format;
  external DXGI_SAMPLE_DESC SampleDesc;
  @Uint32() external int Usage;
  @Uint32() external int BindFlags;
  @Uint32() external int CPUAccessFlags;
  @Uint32() external int MiscFlags;
  @Uint32() external int TextureLayout;
}

class D3D11_TEXTURE3D_DESC1 extends Struct {
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int Depth;
  @Uint32() external int MipLevels;
  @Uint32() external int Format;
  @Uint32() external int Usage;
  @Uint32() external int BindFlags;
  @Uint32() external int CPUAccessFlags;
  @Uint32() external int MiscFlags;
  @Uint32() external int TextureLayout;
}

class D3D11_RASTERIZER_DESC2 extends Struct {
  @Uint32() external int FillMode;
  @Uint32() external int CullMode;
  @Int32() external int FrontCounterClockwise;
  @Int32() external int DepthBias;
  @Float() external double DepthBiasClamp;
  @Float() external double SlopeScaledDepthBias;
  @Int32() external int DepthClipEnable;
  @Int32() external int ScissorEnable;
  @Int32() external int MultisampleEnable;
  @Int32() external int AntialiasedLineEnable;
  @Uint32() external int ForcedSampleCount;
  @Uint32() external int ConservativeRaster;
}

class D3D11_TEX2D_SRV1 extends Struct {
  @Uint32() external int MostDetailedMip;
  @Uint32() external int MipLevels;
  @Uint32() external int PlaneSlice;
}

class D3D11_TEX2D_ARRAY_SRV1 extends Struct {
  @Uint32() external int MostDetailedMip;
  @Uint32() external int MipLevels;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
  @Uint32() external int PlaneSlice;
}

class D3D11_TEX2D_RTV1 extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int PlaneSlice;
}

class D3D11_TEX2D_ARRAY_RTV1 extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
  @Uint32() external int PlaneSlice;
}

class D3D11_TEX2D_UAV1 extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int PlaneSlice;
}

class D3D11_TEX2D_ARRAY_UAV1 extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
  @Uint32() external int PlaneSlice;
}

class D3D11_QUERY_DESC1 extends Struct {
  @Uint32() external int Query;
  @Uint32() external int MiscFlags;
  @Uint32() external int ContextType;
}

class D3D11_FEATURE_DATA_VIDEO_DECODER_HISTOGRAM extends Struct {
  external D3D11_VIDEO_DECODER_DESC DecoderDesc;
  @Uint32() external int Components;
  @Uint32() external int BinCount;
  @Uint32() external int CounterBitDepth;
}

class D3D11_VIDEO_DECODER_BUFFER_DESC2 extends Struct {
  @Uint32() external int BufferType;
  @Uint32() external int DataOffset;
  @Uint32() external int DataSize;
  external Pointer pIV;
  @Uint32() external int IVSize;
  external Pointer<D3D11_VIDEO_DECODER_SUB_SAMPLE_MAPPING_BLOCK> pSubSampleMappingBlock;
  @Uint32() external int SubSampleMappingCount;
  @Uint32() external int cBlocksStripeEncrypted;
  @Uint32() external int cBlocksStripeClear;
}

class D3D11_FEATURE_DATA_D3D11_OPTIONS4 extends Struct {
  @Int32() external int ExtendedNV12SharedTextureSupported;
}

class D3D11_SIGNATURE_PARAMETER_DESC extends Struct {
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

class D3D11_SHADER_BUFFER_DESC extends Struct {
  external Pointer<Utf8> Name;
  @Uint32() external int Type;
  @Uint32() external int Variables;
  @Uint32() external int Size;
  @Uint32() external int uFlags;
}

class D3D11_SHADER_VARIABLE_DESC extends Struct {
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

class D3D11_SHADER_TYPE_DESC extends Struct {
  @Uint32() external int Class;
  @Uint32() external int Type;
  @Uint32() external int Rows;
  @Uint32() external int Columns;
  @Uint32() external int Elements;
  @Uint32() external int Members;
  @Uint32() external int Offset;
  external Pointer<Utf8> Name;
}

class D3D11_SHADER_DESC extends Struct {
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

class D3D11_SHADER_INPUT_BIND_DESC extends Struct {
  external Pointer<Utf8> Name;
  @Uint32() external int Type;
  @Uint32() external int BindPoint;
  @Uint32() external int BindCount;
  @Uint32() external int uFlags;
  @Uint32() external int ReturnType;
  @Uint32() external int Dimension;
  @Uint32() external int NumSamples;
}

class D3D11_LIBRARY_DESC extends Struct {
  external Pointer<Utf8> Creator;
  @Uint32() external int Flags;
  @Uint32() external int FunctionCount;
}

class D3D11_FUNCTION_DESC extends Struct {
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

class D3D11_PARAMETER_DESC extends Struct {
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

class D3D11_VERTEX_SHADER_TRACE_DESC extends Struct {
  @Uint64() external int Invocation;
}

class D3D11_HULL_SHADER_TRACE_DESC extends Struct {
  @Uint64() external int Invocation;
}

class D3D11_DOMAIN_SHADER_TRACE_DESC extends Struct {
  @Uint64() external int Invocation;
}

class D3D11_GEOMETRY_SHADER_TRACE_DESC extends Struct {
  @Uint64() external int Invocation;
}

class D3D11_PIXEL_SHADER_TRACE_DESC extends Struct {
  @Uint64() external int Invocation;
  @Int32() external int X;
  @Int32() external int Y;
  @Uint64() external int SampleMask;
}

class D3D11_COMPUTE_SHADER_TRACE_DESC extends Struct {
  @Uint64() external int Invocation;
  external __uint__ ThreadIDInGroup;
  external __uint__ ThreadGroupID;
}

class D3D11_TRACE_STATS extends Struct {
  external D3D11_SHADER_TRACE_DESC TraceDesc;
  @Uint8() external int NumInvocationsInStamp;
  @Uint8() external int TargetStampIndex;
  @Uint32() external int NumTraceSteps;
  external __ubyte__ InputMask;
  external __ubyte__ OutputMask;
  @Uint16() external int NumTemps;
  @Uint16() external int MaxIndexableTempIndex;
  external __ushort__ IndexableTempSize;
  @Uint16() external int ImmediateConstantBufferSize;
  external __uint__ PixelPosition;
  external __uint64__ PixelCoverageMask;
  external __uint64__ PixelDiscardedMask;
  external __uint64__ PixelCoverageMaskAfterShader;
  external __uint64__ PixelCoverageMaskAfterA2CSampleMask;
  external __uint64__ PixelCoverageMaskAfterA2CSampleMaskDepth;
  external __uint64__ PixelCoverageMaskAfterA2CSampleMaskDepthStencil;
  @Int32() external int PSOutputsDepth;
  @Int32() external int PSOutputsMask;
  @Uint32() external int GSInputPrimitive;
  @Int32() external int GSInputsPrimitiveID;
  external __ubyte__ HSOutputPatchConstantMask;
  external __ubyte__ DSInputPatchConstantMask;
}

class D3D11_TRACE_VALUE extends Struct {
  external __uint__ Bits;
  @Uint8() external int ValidMask;
}

class D3D11_TRACE_STEP extends Struct {
  @Uint32() external int ID;
  @Int32() external int InstructionActive;
  @Uint8() external int NumRegistersWritten;
  @Uint8() external int NumRegistersRead;
  @Uint16() external int MiscOperations;
  @Uint32() external int OpcodeType;
  @Uint64() external int CurrentGlobalCycle;
}

class D3DX11_FFT_DESC extends Struct {
  @Uint32() external int NumDimensions;
  external __uint__ ElementLengths;
  @Uint32() external int DimensionMask;
  @Uint32() external int Type;
}

class D3DX11_FFT_BUFFER_INFO extends Struct {
  @Uint32() external int NumTempBufferSizes;
  external __uint__ TempBufferFloatSizes;
  @Uint32() external int NumPrecomputeBufferSizes;
  external __uint__ PrecomputeBufferFloatSizes;
}

