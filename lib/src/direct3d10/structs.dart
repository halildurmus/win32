// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
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

class D3D10_INPUT_ELEMENT_DESC extends Struct {
  external Pointer<Utf8> SemanticName;
  @Uint32()
  external int SemanticIndex;
  @Uint32()
  external int Format;
  @Uint32()
  external int InputSlot;
  @Uint32()
  external int AlignedByteOffset;
  @Uint32()
  external int InputSlotClass;
  @Uint32()
  external int InstanceDataStepRate;
}

class D3D10_SO_DECLARATION_ENTRY extends Struct {
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

class D3D10_VIEWPORT extends Struct {
  @Int32()
  external int TopLeftX;
  @Int32()
  external int TopLeftY;
  @Uint32()
  external int Width;
  @Uint32()
  external int Height;
  @Float()
  external double MinDepth;
  @Float()
  external double MaxDepth;
}

class D3D10_BOX extends Struct {
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

class D3D10_DEPTH_STENCILOP_DESC extends Struct {
  @Uint32()
  external int StencilFailOp;
  @Uint32()
  external int StencilDepthFailOp;
  @Uint32()
  external int StencilPassOp;
  @Uint32()
  external int StencilFunc;
}

class D3D10_DEPTH_STENCIL_DESC extends Struct {
  @Int32()
  external int DepthEnable;
  @Uint32()
  external int DepthWriteMask;
  @Uint32()
  external int DepthFunc;
  @Int32()
  external int StencilEnable;
  @Uint8()
  external int StencilReadMask;
  @Uint8()
  external int StencilWriteMask;
  external D3D10_DEPTH_STENCILOP_DESC FrontFace;
  external D3D10_DEPTH_STENCILOP_DESC BackFace;
}

class D3D10_BLEND_DESC extends Struct {
  @Int32()
  external int AlphaToCoverageEnable;
  @Array(8)
  external Array<Pointer<Int32>> BlendEnable;
  @Uint32()
  external int SrcBlend;
  @Uint32()
  external int DestBlend;
  @Uint32()
  external int BlendOp;
  @Uint32()
  external int SrcBlendAlpha;
  @Uint32()
  external int DestBlendAlpha;
  @Uint32()
  external int BlendOpAlpha;
  @Array(8)
  external Array<Uint8> RenderTargetWriteMask;
}

class D3D10_RASTERIZER_DESC extends Struct {
  @Uint32()
  external int FillMode;
  @Uint32()
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
  external int ScissorEnable;
  @Int32()
  external int MultisampleEnable;
  @Int32()
  external int AntialiasedLineEnable;
}

class D3D10_SUBRESOURCE_DATA extends Struct {
  external Pointer pSysMem;
  @Uint32()
  external int SysMemPitch;
  @Uint32()
  external int SysMemSlicePitch;
}

class D3D10_BUFFER_DESC extends Struct {
  @Uint32()
  external int ByteWidth;
  @Uint32()
  external int Usage;
  @Uint32()
  external int BindFlags;
  @Uint32()
  external int CPUAccessFlags;
  @Uint32()
  external int MiscFlags;
}

class D3D10_TEXTURE1D_DESC extends Struct {
  @Uint32()
  external int Width;
  @Uint32()
  external int MipLevels;
  @Uint32()
  external int ArraySize;
  @Uint32()
  external int Format;
  @Uint32()
  external int Usage;
  @Uint32()
  external int BindFlags;
  @Uint32()
  external int CPUAccessFlags;
  @Uint32()
  external int MiscFlags;
}

class D3D10_TEXTURE2D_DESC extends Struct {
  @Uint32()
  external int Width;
  @Uint32()
  external int Height;
  @Uint32()
  external int MipLevels;
  @Uint32()
  external int ArraySize;
  @Uint32()
  external int Format;
  external DXGI_SAMPLE_DESC SampleDesc;
  @Uint32()
  external int Usage;
  @Uint32()
  external int BindFlags;
  @Uint32()
  external int CPUAccessFlags;
  @Uint32()
  external int MiscFlags;
}

class D3D10_MAPPED_TEXTURE2D extends Struct {
  external Pointer pData;
  @Uint32()
  external int RowPitch;
}

class D3D10_TEXTURE3D_DESC extends Struct {
  @Uint32()
  external int Width;
  @Uint32()
  external int Height;
  @Uint32()
  external int Depth;
  @Uint32()
  external int MipLevels;
  @Uint32()
  external int Format;
  @Uint32()
  external int Usage;
  @Uint32()
  external int BindFlags;
  @Uint32()
  external int CPUAccessFlags;
  @Uint32()
  external int MiscFlags;
}

class D3D10_MAPPED_TEXTURE3D extends Struct {
  external Pointer pData;
  @Uint32()
  external int RowPitch;
  @Uint32()
  external int DepthPitch;
}

class D3D10_BUFFER_SRV extends Struct {
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int Anonymous2;
}

class D3D10_TEX1D_SRV extends Struct {
  @Uint32()
  external int MostDetailedMip;
  @Uint32()
  external int MipLevels;
}

class D3D10_TEX1D_ARRAY_SRV extends Struct {
  @Uint32()
  external int MostDetailedMip;
  @Uint32()
  external int MipLevels;
  @Uint32()
  external int FirstArraySlice;
  @Uint32()
  external int ArraySize;
}

class D3D10_TEX2D_SRV extends Struct {
  @Uint32()
  external int MostDetailedMip;
  @Uint32()
  external int MipLevels;
}

class D3D10_TEX2D_ARRAY_SRV extends Struct {
  @Uint32()
  external int MostDetailedMip;
  @Uint32()
  external int MipLevels;
  @Uint32()
  external int FirstArraySlice;
  @Uint32()
  external int ArraySize;
}

class D3D10_TEX3D_SRV extends Struct {
  @Uint32()
  external int MostDetailedMip;
  @Uint32()
  external int MipLevels;
}

class D3D10_TEXCUBE_SRV extends Struct {
  @Uint32()
  external int MostDetailedMip;
  @Uint32()
  external int MipLevels;
}

class D3D10_TEX2DMS_SRV extends Struct {
  @Uint32()
  external int UnusedField_NothingToDefine;
}

class D3D10_TEX2DMS_ARRAY_SRV extends Struct {
  @Uint32()
  external int FirstArraySlice;
  @Uint32()
  external int ArraySize;
}

class D3D10_SHADER_RESOURCE_VIEW_DESC extends Struct {
  @Uint32()
  external int Format;
  @Uint32()
  external int ViewDimension;
  @Uint32()
  external int Anonymous;
}

class D3D10_BUFFER_RTV extends Struct {
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int Anonymous2;
}

class D3D10_TEX1D_RTV extends Struct {
  @Uint32()
  external int MipSlice;
}

class D3D10_TEX1D_ARRAY_RTV extends Struct {
  @Uint32()
  external int MipSlice;
  @Uint32()
  external int FirstArraySlice;
  @Uint32()
  external int ArraySize;
}

class D3D10_TEX2D_RTV extends Struct {
  @Uint32()
  external int MipSlice;
}

class D3D10_TEX2DMS_RTV extends Struct {
  @Uint32()
  external int UnusedField_NothingToDefine;
}

class D3D10_TEX2D_ARRAY_RTV extends Struct {
  @Uint32()
  external int MipSlice;
  @Uint32()
  external int FirstArraySlice;
  @Uint32()
  external int ArraySize;
}

class D3D10_TEX2DMS_ARRAY_RTV extends Struct {
  @Uint32()
  external int FirstArraySlice;
  @Uint32()
  external int ArraySize;
}

class D3D10_TEX3D_RTV extends Struct {
  @Uint32()
  external int MipSlice;
  @Uint32()
  external int FirstWSlice;
  @Uint32()
  external int WSize;
}

class D3D10_RENDER_TARGET_VIEW_DESC extends Struct {
  @Uint32()
  external int Format;
  @Uint32()
  external int ViewDimension;
  @Uint32()
  external int Anonymous;
}

class D3D10_TEX1D_DSV extends Struct {
  @Uint32()
  external int MipSlice;
}

class D3D10_TEX1D_ARRAY_DSV extends Struct {
  @Uint32()
  external int MipSlice;
  @Uint32()
  external int FirstArraySlice;
  @Uint32()
  external int ArraySize;
}

class D3D10_TEX2D_DSV extends Struct {
  @Uint32()
  external int MipSlice;
}

class D3D10_TEX2D_ARRAY_DSV extends Struct {
  @Uint32()
  external int MipSlice;
  @Uint32()
  external int FirstArraySlice;
  @Uint32()
  external int ArraySize;
}

class D3D10_TEX2DMS_DSV extends Struct {
  @Uint32()
  external int UnusedField_NothingToDefine;
}

class D3D10_TEX2DMS_ARRAY_DSV extends Struct {
  @Uint32()
  external int FirstArraySlice;
  @Uint32()
  external int ArraySize;
}

class D3D10_DEPTH_STENCIL_VIEW_DESC extends Struct {
  @Uint32()
  external int Format;
  @Uint32()
  external int ViewDimension;
  @Uint32()
  external int Anonymous;
}

class D3D10_SAMPLER_DESC extends Struct {
  @Uint32()
  external int Filter;
  @Uint32()
  external int AddressU;
  @Uint32()
  external int AddressV;
  @Uint32()
  external int AddressW;
  @Float()
  external double MipLODBias;
  @Uint32()
  external int MaxAnisotropy;
  @Uint32()
  external int ComparisonFunc;
  @Array(4)
  external Array<Float> BorderColor;
  @Float()
  external double MinLOD;
  @Float()
  external double MaxLOD;
}

class D3D10_QUERY_DESC extends Struct {
  @Uint32()
  external int Query;
  @Uint32()
  external int MiscFlags;
}

class D3D10_QUERY_DATA_TIMESTAMP_DISJOINT extends Struct {
  @Uint64()
  external int Frequency;
  @Int32()
  external int Disjoint;
}

class D3D10_QUERY_DATA_PIPELINE_STATISTICS extends Struct {
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
}

class D3D10_QUERY_DATA_SO_STATISTICS extends Struct {
  @Uint64()
  external int NumPrimitivesWritten;
  @Uint64()
  external int PrimitivesStorageNeeded;
}

class D3D10_COUNTER_DESC extends Struct {
  @Uint32()
  external int Counter;
  @Uint32()
  external int MiscFlags;
}

class D3D10_COUNTER_INFO extends Struct {
  @Uint32()
  external int LastDeviceDependentCounter;
  @Uint32()
  external int NumSimultaneousCounters;
  @Uint8()
  external int NumDetectableParallelUnits;
}

class D3D10_MESSAGE extends Struct {
  @Uint32()
  external int Category;
  @Uint32()
  external int Severity;
  @Uint32()
  external int ID;
  external Pointer<Uint8> pDescription;
  @IntPtr()
  external int DescriptionByteLength;
}

class D3D10_INFO_QUEUE_FILTER_DESC extends Struct {
  @Uint32()
  external int NumCategories;
  external Pointer<Uint32> pCategoryList;
  @Uint32()
  external int NumSeverities;
  external Pointer<Uint32> pSeverityList;
  @Uint32()
  external int NumIDs;
  external Pointer<Uint32> pIDList;
}

class D3D10_INFO_QUEUE_FILTER extends Struct {
  external D3D10_INFO_QUEUE_FILTER_DESC AllowList;
  external D3D10_INFO_QUEUE_FILTER_DESC DenyList;
}

class D3D10_SHADER_DESC extends Struct {
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
  @Uint32()
  external int GSOutputTopology;
  @Uint32()
  external int GSMaxOutputVertexCount;
}

class D3D10_SHADER_BUFFER_DESC extends Struct {
  external Pointer<Utf8> Name;
  @Uint32()
  external int Type;
  @Uint32()
  external int Variables;
  @Uint32()
  external int Size;
  @Uint32()
  external int uFlags;
}

class D3D10_SHADER_VARIABLE_DESC extends Struct {
  external Pointer<Utf8> Name;
  @Uint32()
  external int StartOffset;
  @Uint32()
  external int Size;
  @Uint32()
  external int uFlags;
  external Pointer DefaultValue;
}

class D3D10_SHADER_TYPE_DESC extends Struct {
  @Uint32()
  external int Class;
  @Uint32()
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
}

class D3D10_SHADER_INPUT_BIND_DESC extends Struct {
  external Pointer<Utf8> Name;
  @Uint32()
  external int Type;
  @Uint32()
  external int BindPoint;
  @Uint32()
  external int BindCount;
  @Uint32()
  external int uFlags;
  @Uint32()
  external int ReturnType;
  @Uint32()
  external int Dimension;
  @Uint32()
  external int NumSamples;
}

class D3D10_SIGNATURE_PARAMETER_DESC extends Struct {
  external Pointer<Utf8> SemanticName;
  @Uint32()
  external int SemanticIndex;
  @Uint32()
  external int Register;
  @Uint32()
  external int SystemValueType;
  @Uint32()
  external int ComponentType;
  @Uint8()
  external int Mask;
  @Uint8()
  external int ReadWriteMask;
}

class D3D10_STATE_BLOCK_MASK extends Struct {
  @Uint8()
  external int VS;
  @Array(2)
  external Array<Uint8> VSSamplers;
  @Array(16)
  external Array<Uint8> VSShaderResources;
  @Array(2)
  external Array<Uint8> VSConstantBuffers;
  @Uint8()
  external int GS;
  @Array(2)
  external Array<Uint8> GSSamplers;
  @Array(16)
  external Array<Uint8> GSShaderResources;
  @Array(2)
  external Array<Uint8> GSConstantBuffers;
  @Uint8()
  external int PS;
  @Array(2)
  external Array<Uint8> PSSamplers;
  @Array(16)
  external Array<Uint8> PSShaderResources;
  @Array(2)
  external Array<Uint8> PSConstantBuffers;
  @Array(2)
  external Array<Uint8> IAVertexBuffers;
  @Uint8()
  external int IAIndexBuffer;
  @Uint8()
  external int IAInputLayout;
  @Uint8()
  external int IAPrimitiveTopology;
  @Uint8()
  external int OMRenderTargets;
  @Uint8()
  external int OMDepthStencilState;
  @Uint8()
  external int OMBlendState;
  @Uint8()
  external int RSViewports;
  @Uint8()
  external int RSScissorRects;
  @Uint8()
  external int RSRasterizerState;
  @Uint8()
  external int SOBuffers;
  @Uint8()
  external int Predication;
}

class D3D10_EFFECT_TYPE_DESC extends Struct {
  external Pointer<Utf8> TypeName;
  @Uint32()
  external int Class;
  @Uint32()
  external int Type;
  @Uint32()
  external int Elements;
  @Uint32()
  external int Members;
  @Uint32()
  external int Rows;
  @Uint32()
  external int Columns;
  @Uint32()
  external int PackedSize;
  @Uint32()
  external int UnpackedSize;
  @Uint32()
  external int Stride;
}

class D3D10_EFFECT_VARIABLE_DESC extends Struct {
  external Pointer<Utf8> Name;
  external Pointer<Utf8> Semantic;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Annotations;
  @Uint32()
  external int BufferOffset;
  @Uint32()
  external int ExplicitBindPoint;
}

class D3D10_EFFECT_SHADER_DESC extends Struct {
  external Pointer<Uint8> pInputSignature;
  @Int32()
  external int IsInline;
  external Pointer<Uint8> pBytecode;
  @Uint32()
  external int BytecodeLength;
  external Pointer<Utf8> SODecl;
  @Uint32()
  external int NumInputSignatureEntries;
  @Uint32()
  external int NumOutputSignatureEntries;
}

class D3D10_PASS_DESC extends Struct {
  external Pointer<Utf8> Name;
  @Uint32()
  external int Annotations;
  external Pointer<Uint8> pIAInputSignature;
  @IntPtr()
  external int IAInputSignatureSize;
  @Uint32()
  external int StencilRef;
  @Uint32()
  external int SampleMask;
  @Array(4)
  external Array<Float> BlendFactor;
}

class D3D10_PASS_SHADER_DESC extends Struct {
  external ID3D10EffectShaderVariable pShaderVariable;
  @Uint32()
  external int ShaderIndex;
}

class D3D10_TECHNIQUE_DESC extends Struct {
  external Pointer<Utf8> Name;
  @Uint32()
  external int Passes;
  @Uint32()
  external int Annotations;
}

class D3D10_EFFECT_DESC extends Struct {
  @Int32()
  external int IsChildEffect;
  @Uint32()
  external int ConstantBuffers;
  @Uint32()
  external int SharedConstantBuffers;
  @Uint32()
  external int GlobalVariables;
  @Uint32()
  external int SharedGlobalVariables;
  @Uint32()
  external int Techniques;
}

class D3D10_RENDER_TARGET_BLEND_DESC1 extends Struct {
  @Int32()
  external int BlendEnable;
  @Uint32()
  external int SrcBlend;
  @Uint32()
  external int DestBlend;
  @Uint32()
  external int BlendOp;
  @Uint32()
  external int SrcBlendAlpha;
  @Uint32()
  external int DestBlendAlpha;
  @Uint32()
  external int BlendOpAlpha;
  @Uint8()
  external int RenderTargetWriteMask;
}

class D3D10_BLEND_DESC1 extends Struct {
  @Int32()
  external int AlphaToCoverageEnable;
  @Int32()
  external int IndependentBlendEnable;
  @Array(8)
  external Array<D3D10_RENDER_TARGET_BLEND_DESC1> RenderTarget;
}

class D3D10_TEXCUBE_ARRAY_SRV1 extends Struct {
  @Uint32()
  external int MostDetailedMip;
  @Uint32()
  external int MipLevels;
  @Uint32()
  external int First2DArrayFace;
  @Uint32()
  external int NumCubes;
}

class D3D10_SHADER_RESOURCE_VIEW_DESC1 extends Struct {
  @Uint32()
  external int Format;
  @Uint32()
  external int ViewDimension;
  @Uint32()
  external int Anonymous;
}

class D3D10_SHADER_DEBUG_TOKEN_INFO extends Struct {
  @Uint32()
  external int File;
  @Uint32()
  external int Line;
  @Uint32()
  external int Column;
  @Uint32()
  external int TokenLength;
  @Uint32()
  external int TokenId;
}

class D3D10_SHADER_DEBUG_VAR_INFO extends Struct {
  @Uint32()
  external int TokenId;
  @Uint32()
  external int Type;
  @Uint32()
  external int Register;
  @Uint32()
  external int Component;
  @Uint32()
  external int ScopeVar;
  @Uint32()
  external int ScopeVarOffset;
}

class D3D10_SHADER_DEBUG_INPUT_INFO extends Struct {
  @Uint32()
  external int Var;
  @Uint32()
  external int InitialRegisterSet;
  @Uint32()
  external int InitialBank;
  @Uint32()
  external int InitialRegister;
  @Uint32()
  external int InitialComponent;
  @Uint32()
  external int InitialValue;
}

class D3D10_SHADER_DEBUG_SCOPEVAR_INFO extends Struct {
  @Uint32()
  external int TokenId;
  @Uint32()
  external int VarType;
  @Uint32()
  external int Class;
  @Uint32()
  external int Rows;
  @Uint32()
  external int Columns;
  @Uint32()
  external int StructMemberScope;
  @Uint32()
  external int uArrayIndices;
  @Uint32()
  external int ArrayElements;
  @Uint32()
  external int ArrayStrides;
  @Uint32()
  external int uVariables;
  @Uint32()
  external int uFirstVariable;
}

class D3D10_SHADER_DEBUG_SCOPE_INFO extends Struct {
  @Uint32()
  external int ScopeType;
  @Uint32()
  external int Name;
  @Uint32()
  external int uNameLen;
  @Uint32()
  external int uVariables;
  @Uint32()
  external int VariableData;
}

class D3D10_SHADER_DEBUG_OUTPUTVAR extends Struct {
  @Uint32()
  external int Var;
  @Uint32()
  external int uValueMin;
  @Uint32()
  external int uValueMax;
  @Int32()
  external int iValueMin;
  @Int32()
  external int iValueMax;
  @Float()
  external double fValueMin;
  @Float()
  external double fValueMax;
  @Int32()
  external int bNaNPossible;
  @Int32()
  external int bInfPossible;
}

class D3D10_SHADER_DEBUG_OUTPUTREG_INFO extends Struct {
  @Uint32()
  external int OutputRegisterSet;
  @Uint32()
  external int OutputReg;
  @Uint32()
  external int TempArrayReg;
  @Array(4)
  external Array<Uint32> OutputComponents;
  @Array(4)
  external Array<D3D10_SHADER_DEBUG_OUTPUTVAR> OutputVars;
  @Uint32()
  external int IndexReg;
  @Uint32()
  external int IndexComp;
}

class D3D10_SHADER_DEBUG_INST_INFO extends Struct {
  @Uint32()
  external int Id;
  @Uint32()
  external int Opcode;
  @Uint32()
  external int uOutputs;
  @Array(2)
  external Array<D3D10_SHADER_DEBUG_OUTPUTREG_INFO> pOutputs;
  @Uint32()
  external int TokenId;
  @Uint32()
  external int NestingLevel;
  @Uint32()
  external int Scopes;
  @Uint32()
  external int ScopeInfo;
  @Uint32()
  external int AccessedVars;
  @Uint32()
  external int AccessedVarsInfo;
}

class D3D10_SHADER_DEBUG_FILE_INFO extends Struct {
  @Uint32()
  external int FileName;
  @Uint32()
  external int FileNameLen;
  @Uint32()
  external int FileData;
  @Uint32()
  external int FileLen;
}

class D3D10_SHADER_DEBUG_INFO extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Creator;
  @Uint32()
  external int EntrypointName;
  @Uint32()
  external int ShaderTarget;
  @Uint32()
  external int CompileFlags;
  @Uint32()
  external int Files;
  @Uint32()
  external int FileInfo;
  @Uint32()
  external int Instructions;
  @Uint32()
  external int InstructionInfo;
  @Uint32()
  external int Variables;
  @Uint32()
  external int VariableInfo;
  @Uint32()
  external int InputVariables;
  @Uint32()
  external int InputVariableInfo;
  @Uint32()
  external int Tokens;
  @Uint32()
  external int TokenInfo;
  @Uint32()
  external int Scopes;
  @Uint32()
  external int ScopeInfo;
  @Uint32()
  external int ScopeVariables;
  @Uint32()
  external int ScopeVariableInfo;
  @Uint32()
  external int UintOffset;
  @Uint32()
  external int StringOffset;
}
