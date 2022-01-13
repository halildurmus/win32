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
import '../../graphics/direct3d10/structs.g.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/direct3d/structs.g.dart';
import '../../graphics/direct3d10/ID3D10EffectShaderVariable.dart';

/// {@category Struct}
class D3D10_BLEND_DESC extends Struct {
  @Int32()
  external int AlphaToCoverageEnable;

  @Array(8)
  external Array<Int32> BlendEnable;

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

  @Array(8)
  external Array<Uint8> RenderTargetWriteMask;
}

/// {@category Struct}
class D3D10_BLEND_DESC1 extends Struct {
  @Int32()
  external int AlphaToCoverageEnable;

  @Int32()
  external int IndependentBlendEnable;

  @Array(8)
  external Array<D3D10_RENDER_TARGET_BLEND_DESC1> RenderTarget;
}

/// {@category Struct}
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

/// {@category Struct}
class D3D10_BUFFER_DESC extends Struct {
  @Uint32()
  external int ByteWidth;

  @Int32()
  external int Usage;

  @Uint32()
  external int BindFlags;

  @Uint32()
  external int CPUAccessFlags;

  @Uint32()
  external int MiscFlags;
}

/// {@category Struct}
class D3D10_BUFFER_RTV extends Struct {
  external _D3D10_BUFFER_RTV__Anonymous1_e__Union Anonymous1;

  external _D3D10_BUFFER_RTV__Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
class _D3D10_BUFFER_RTV__Anonymous1_e__Union extends Union {
  @Uint32()
  external int FirstElement;

  @Uint32()
  external int ElementOffset;
}

extension D3D10_BUFFER_RTV_Extension on D3D10_BUFFER_RTV {
  int get FirstElement => this.Anonymous1.FirstElement;
  set FirstElement(int value) => this.Anonymous1.FirstElement = value;

  int get ElementOffset => this.Anonymous1.ElementOffset;
  set ElementOffset(int value) => this.Anonymous1.ElementOffset = value;
}

/// {@category Struct}
class _D3D10_BUFFER_RTV__Anonymous2_e__Union extends Union {
  @Uint32()
  external int NumElements;

  @Uint32()
  external int ElementWidth;
}

extension D3D10_BUFFER_RTV_Extension_1 on D3D10_BUFFER_RTV {
  int get NumElements => this.Anonymous2.NumElements;
  set NumElements(int value) => this.Anonymous2.NumElements = value;

  int get ElementWidth => this.Anonymous2.ElementWidth;
  set ElementWidth(int value) => this.Anonymous2.ElementWidth = value;
}

/// {@category Struct}
class D3D10_BUFFER_SRV extends Struct {
  external _D3D10_BUFFER_SRV__Anonymous1_e__Union Anonymous1;

  external _D3D10_BUFFER_SRV__Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
class _D3D10_BUFFER_SRV__Anonymous1_e__Union extends Union {
  @Uint32()
  external int FirstElement;

  @Uint32()
  external int ElementOffset;
}

extension D3D10_BUFFER_SRV_Extension on D3D10_BUFFER_SRV {
  int get FirstElement => this.Anonymous1.FirstElement;
  set FirstElement(int value) => this.Anonymous1.FirstElement = value;

  int get ElementOffset => this.Anonymous1.ElementOffset;
  set ElementOffset(int value) => this.Anonymous1.ElementOffset = value;
}

/// {@category Struct}
class _D3D10_BUFFER_SRV__Anonymous2_e__Union extends Union {
  @Uint32()
  external int NumElements;

  @Uint32()
  external int ElementWidth;
}

extension D3D10_BUFFER_SRV_Extension_1 on D3D10_BUFFER_SRV {
  int get NumElements => this.Anonymous2.NumElements;
  set NumElements(int value) => this.Anonymous2.NumElements = value;

  int get ElementWidth => this.Anonymous2.ElementWidth;
  set ElementWidth(int value) => this.Anonymous2.ElementWidth = value;
}

/// {@category Struct}
class D3D10_COUNTER_DESC extends Struct {
  @Int32()
  external int Counter;

  @Uint32()
  external int MiscFlags;
}

/// {@category Struct}
class D3D10_COUNTER_INFO extends Struct {
  @Int32()
  external int LastDeviceDependentCounter;

  @Uint32()
  external int NumSimultaneousCounters;

  @Uint8()
  external int NumDetectableParallelUnits;
}

/// {@category Struct}
class D3D10_DEPTH_STENCILOP_DESC extends Struct {
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
class D3D10_DEPTH_STENCIL_DESC extends Struct {
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

  external D3D10_DEPTH_STENCILOP_DESC FrontFace;

  external D3D10_DEPTH_STENCILOP_DESC BackFace;
}

/// {@category Struct}
class D3D10_DEPTH_STENCIL_VIEW_DESC extends Struct {
  @Uint32()
  external int Format;

  @Int32()
  external int ViewDimension;

  external _D3D10_DEPTH_STENCIL_VIEW_DESC__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D10_DEPTH_STENCIL_VIEW_DESC__Anonymous_e__Union extends Union {
  external D3D10_TEX1D_DSV Texture1D;

  external D3D10_TEX1D_ARRAY_DSV Texture1DArray;

  external D3D10_TEX2D_DSV Texture2D;

  external D3D10_TEX2D_ARRAY_DSV Texture2DArray;

  external D3D10_TEX2DMS_DSV Texture2DMS;

  external D3D10_TEX2DMS_ARRAY_DSV Texture2DMSArray;
}

extension D3D10_DEPTH_STENCIL_VIEW_DESC_Extension
    on D3D10_DEPTH_STENCIL_VIEW_DESC {
  D3D10_TEX1D_DSV get Texture1D => this.Anonymous.Texture1D;
  set Texture1D(D3D10_TEX1D_DSV value) => this.Anonymous.Texture1D = value;

  D3D10_TEX1D_ARRAY_DSV get Texture1DArray => this.Anonymous.Texture1DArray;
  set Texture1DArray(D3D10_TEX1D_ARRAY_DSV value) =>
      this.Anonymous.Texture1DArray = value;

  D3D10_TEX2D_DSV get Texture2D => this.Anonymous.Texture2D;
  set Texture2D(D3D10_TEX2D_DSV value) => this.Anonymous.Texture2D = value;

  D3D10_TEX2D_ARRAY_DSV get Texture2DArray => this.Anonymous.Texture2DArray;
  set Texture2DArray(D3D10_TEX2D_ARRAY_DSV value) =>
      this.Anonymous.Texture2DArray = value;

  D3D10_TEX2DMS_DSV get Texture2DMS => this.Anonymous.Texture2DMS;
  set Texture2DMS(D3D10_TEX2DMS_DSV value) =>
      this.Anonymous.Texture2DMS = value;

  D3D10_TEX2DMS_ARRAY_DSV get Texture2DMSArray =>
      this.Anonymous.Texture2DMSArray;
  set Texture2DMSArray(D3D10_TEX2DMS_ARRAY_DSV value) =>
      this.Anonymous.Texture2DMSArray = value;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class D3D10_EFFECT_TYPE_DESC extends Struct {
  external Pointer<Utf8> TypeName;

  @Int32()
  external int Class;

  @Int32()
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

/// {@category Struct}
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

/// {@category Struct}
class D3D10_INFO_QUEUE_FILTER extends Struct {
  external D3D10_INFO_QUEUE_FILTER_DESC AllowList;

  external D3D10_INFO_QUEUE_FILTER_DESC DenyList;
}

/// {@category Struct}
class D3D10_INFO_QUEUE_FILTER_DESC extends Struct {
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

  @Int32()
  external int InputSlotClass;

  @Uint32()
  external int InstanceDataStepRate;
}

/// {@category Struct}
class D3D10_MAPPED_TEXTURE2D extends Struct {
  external Pointer pData;

  @Uint32()
  external int RowPitch;
}

/// {@category Struct}
class D3D10_MAPPED_TEXTURE3D extends Struct {
  external Pointer pData;

  @Uint32()
  external int RowPitch;

  @Uint32()
  external int DepthPitch;
}

/// {@category Struct}
class D3D10_MESSAGE extends Struct {
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

/// {@category Struct}
class D3D10_PASS_SHADER_DESC extends Struct {
  external Pointer<COMObject> pShaderVariable;

  @Uint32()
  external int ShaderIndex;
}

/// {@category Struct}
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

/// {@category Struct}
class D3D10_QUERY_DATA_SO_STATISTICS extends Struct {
  @Uint64()
  external int NumPrimitivesWritten;

  @Uint64()
  external int PrimitivesStorageNeeded;
}

/// {@category Struct}
class D3D10_QUERY_DATA_TIMESTAMP_DISJOINT extends Struct {
  @Uint64()
  external int Frequency;

  @Int32()
  external int Disjoint;
}

/// {@category Struct}
class D3D10_QUERY_DESC extends Struct {
  @Int32()
  external int Query;

  @Uint32()
  external int MiscFlags;
}

/// {@category Struct}
class D3D10_RASTERIZER_DESC extends Struct {
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
  external int ScissorEnable;

  @Int32()
  external int MultisampleEnable;

  @Int32()
  external int AntialiasedLineEnable;
}

/// {@category Struct}
class D3D10_RENDER_TARGET_BLEND_DESC1 extends Struct {
  @Int32()
  external int BlendEnable;

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

  @Uint8()
  external int RenderTargetWriteMask;
}

/// {@category Struct}
class D3D10_RENDER_TARGET_VIEW_DESC extends Struct {
  @Uint32()
  external int Format;

  @Int32()
  external int ViewDimension;

  external _D3D10_RENDER_TARGET_VIEW_DESC__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D10_RENDER_TARGET_VIEW_DESC__Anonymous_e__Union extends Union {
  external D3D10_BUFFER_RTV Buffer;

  external D3D10_TEX1D_RTV Texture1D;

  external D3D10_TEX1D_ARRAY_RTV Texture1DArray;

  external D3D10_TEX2D_RTV Texture2D;

  external D3D10_TEX2D_ARRAY_RTV Texture2DArray;

  external D3D10_TEX2DMS_RTV Texture2DMS;

  external D3D10_TEX2DMS_ARRAY_RTV Texture2DMSArray;

  external D3D10_TEX3D_RTV Texture3D;
}

extension D3D10_RENDER_TARGET_VIEW_DESC_Extension
    on D3D10_RENDER_TARGET_VIEW_DESC {
  D3D10_BUFFER_RTV get Buffer => this.Anonymous.Buffer;
  set Buffer(D3D10_BUFFER_RTV value) => this.Anonymous.Buffer = value;

  D3D10_TEX1D_RTV get Texture1D => this.Anonymous.Texture1D;
  set Texture1D(D3D10_TEX1D_RTV value) => this.Anonymous.Texture1D = value;

  D3D10_TEX1D_ARRAY_RTV get Texture1DArray => this.Anonymous.Texture1DArray;
  set Texture1DArray(D3D10_TEX1D_ARRAY_RTV value) =>
      this.Anonymous.Texture1DArray = value;

  D3D10_TEX2D_RTV get Texture2D => this.Anonymous.Texture2D;
  set Texture2D(D3D10_TEX2D_RTV value) => this.Anonymous.Texture2D = value;

  D3D10_TEX2D_ARRAY_RTV get Texture2DArray => this.Anonymous.Texture2DArray;
  set Texture2DArray(D3D10_TEX2D_ARRAY_RTV value) =>
      this.Anonymous.Texture2DArray = value;

  D3D10_TEX2DMS_RTV get Texture2DMS => this.Anonymous.Texture2DMS;
  set Texture2DMS(D3D10_TEX2DMS_RTV value) =>
      this.Anonymous.Texture2DMS = value;

  D3D10_TEX2DMS_ARRAY_RTV get Texture2DMSArray =>
      this.Anonymous.Texture2DMSArray;
  set Texture2DMSArray(D3D10_TEX2DMS_ARRAY_RTV value) =>
      this.Anonymous.Texture2DMSArray = value;

  D3D10_TEX3D_RTV get Texture3D => this.Anonymous.Texture3D;
  set Texture3D(D3D10_TEX3D_RTV value) => this.Anonymous.Texture3D = value;
}

/// {@category Struct}
class D3D10_SAMPLER_DESC extends Struct {
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
class D3D10_SHADER_BUFFER_DESC extends Struct {
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

/// {@category Struct}
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

/// {@category Struct}
class D3D10_SHADER_DEBUG_INPUT_INFO extends Struct {
  @Uint32()
  external int Var;

  @Int32()
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

/// {@category Struct}
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

/// {@category Struct}
class D3D10_SHADER_DEBUG_OUTPUTREG_INFO extends Struct {
  @Int32()
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

/// {@category Struct}
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

/// {@category Struct}
class D3D10_SHADER_DEBUG_SCOPEVAR_INFO extends Struct {
  @Uint32()
  external int TokenId;

  @Int32()
  external int VarType;

  @Int32()
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

/// {@category Struct}
class D3D10_SHADER_DEBUG_SCOPE_INFO extends Struct {
  @Int32()
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

/// {@category Struct}
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

/// {@category Struct}
class D3D10_SHADER_DEBUG_VAR_INFO extends Struct {
  @Uint32()
  external int TokenId;

  @Int32()
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

/// {@category Struct}
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

  @Int32()
  external int GSOutputTopology;

  @Uint32()
  external int GSMaxOutputVertexCount;
}

/// {@category Struct}
class D3D10_SHADER_INPUT_BIND_DESC extends Struct {
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
}

/// {@category Struct}
class D3D10_SHADER_RESOURCE_VIEW_DESC extends Struct {
  @Uint32()
  external int Format;

  @Int32()
  external int ViewDimension;

  external _D3D10_SHADER_RESOURCE_VIEW_DESC__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D10_SHADER_RESOURCE_VIEW_DESC__Anonymous_e__Union extends Union {
  external D3D10_BUFFER_SRV Buffer;

  external D3D10_TEX1D_SRV Texture1D;

  external D3D10_TEX1D_ARRAY_SRV Texture1DArray;

  external D3D10_TEX2D_SRV Texture2D;

  external D3D10_TEX2D_ARRAY_SRV Texture2DArray;

  external D3D10_TEX2DMS_SRV Texture2DMS;

  external D3D10_TEX2DMS_ARRAY_SRV Texture2DMSArray;

  external D3D10_TEX3D_SRV Texture3D;

  external D3D10_TEXCUBE_SRV TextureCube;
}

extension D3D10_SHADER_RESOURCE_VIEW_DESC_Extension
    on D3D10_SHADER_RESOURCE_VIEW_DESC {
  D3D10_BUFFER_SRV get Buffer => this.Anonymous.Buffer;
  set Buffer(D3D10_BUFFER_SRV value) => this.Anonymous.Buffer = value;

  D3D10_TEX1D_SRV get Texture1D => this.Anonymous.Texture1D;
  set Texture1D(D3D10_TEX1D_SRV value) => this.Anonymous.Texture1D = value;

  D3D10_TEX1D_ARRAY_SRV get Texture1DArray => this.Anonymous.Texture1DArray;
  set Texture1DArray(D3D10_TEX1D_ARRAY_SRV value) =>
      this.Anonymous.Texture1DArray = value;

  D3D10_TEX2D_SRV get Texture2D => this.Anonymous.Texture2D;
  set Texture2D(D3D10_TEX2D_SRV value) => this.Anonymous.Texture2D = value;

  D3D10_TEX2D_ARRAY_SRV get Texture2DArray => this.Anonymous.Texture2DArray;
  set Texture2DArray(D3D10_TEX2D_ARRAY_SRV value) =>
      this.Anonymous.Texture2DArray = value;

  D3D10_TEX2DMS_SRV get Texture2DMS => this.Anonymous.Texture2DMS;
  set Texture2DMS(D3D10_TEX2DMS_SRV value) =>
      this.Anonymous.Texture2DMS = value;

  D3D10_TEX2DMS_ARRAY_SRV get Texture2DMSArray =>
      this.Anonymous.Texture2DMSArray;
  set Texture2DMSArray(D3D10_TEX2DMS_ARRAY_SRV value) =>
      this.Anonymous.Texture2DMSArray = value;

  D3D10_TEX3D_SRV get Texture3D => this.Anonymous.Texture3D;
  set Texture3D(D3D10_TEX3D_SRV value) => this.Anonymous.Texture3D = value;

  D3D10_TEXCUBE_SRV get TextureCube => this.Anonymous.TextureCube;
  set TextureCube(D3D10_TEXCUBE_SRV value) =>
      this.Anonymous.TextureCube = value;
}

/// {@category Struct}
class D3D10_SHADER_RESOURCE_VIEW_DESC1 extends Struct {
  @Uint32()
  external int Format;

  @Int32()
  external int ViewDimension;

  external _D3D10_SHADER_RESOURCE_VIEW_DESC1__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D10_SHADER_RESOURCE_VIEW_DESC1__Anonymous_e__Union extends Union {
  external D3D10_BUFFER_SRV Buffer;

  external D3D10_TEX1D_SRV Texture1D;

  external D3D10_TEX1D_ARRAY_SRV Texture1DArray;

  external D3D10_TEX2D_SRV Texture2D;

  external D3D10_TEX2D_ARRAY_SRV Texture2DArray;

  external D3D10_TEX2DMS_SRV Texture2DMS;

  external D3D10_TEX2DMS_ARRAY_SRV Texture2DMSArray;

  external D3D10_TEX3D_SRV Texture3D;

  external D3D10_TEXCUBE_SRV TextureCube;

  external D3D10_TEXCUBE_ARRAY_SRV1 TextureCubeArray;
}

extension D3D10_SHADER_RESOURCE_VIEW_DESC1_Extension
    on D3D10_SHADER_RESOURCE_VIEW_DESC1 {
  D3D10_BUFFER_SRV get Buffer => this.Anonymous.Buffer;
  set Buffer(D3D10_BUFFER_SRV value) => this.Anonymous.Buffer = value;

  D3D10_TEX1D_SRV get Texture1D => this.Anonymous.Texture1D;
  set Texture1D(D3D10_TEX1D_SRV value) => this.Anonymous.Texture1D = value;

  D3D10_TEX1D_ARRAY_SRV get Texture1DArray => this.Anonymous.Texture1DArray;
  set Texture1DArray(D3D10_TEX1D_ARRAY_SRV value) =>
      this.Anonymous.Texture1DArray = value;

  D3D10_TEX2D_SRV get Texture2D => this.Anonymous.Texture2D;
  set Texture2D(D3D10_TEX2D_SRV value) => this.Anonymous.Texture2D = value;

  D3D10_TEX2D_ARRAY_SRV get Texture2DArray => this.Anonymous.Texture2DArray;
  set Texture2DArray(D3D10_TEX2D_ARRAY_SRV value) =>
      this.Anonymous.Texture2DArray = value;

  D3D10_TEX2DMS_SRV get Texture2DMS => this.Anonymous.Texture2DMS;
  set Texture2DMS(D3D10_TEX2DMS_SRV value) =>
      this.Anonymous.Texture2DMS = value;

  D3D10_TEX2DMS_ARRAY_SRV get Texture2DMSArray =>
      this.Anonymous.Texture2DMSArray;
  set Texture2DMSArray(D3D10_TEX2DMS_ARRAY_SRV value) =>
      this.Anonymous.Texture2DMSArray = value;

  D3D10_TEX3D_SRV get Texture3D => this.Anonymous.Texture3D;
  set Texture3D(D3D10_TEX3D_SRV value) => this.Anonymous.Texture3D = value;

  D3D10_TEXCUBE_SRV get TextureCube => this.Anonymous.TextureCube;
  set TextureCube(D3D10_TEXCUBE_SRV value) =>
      this.Anonymous.TextureCube = value;

  D3D10_TEXCUBE_ARRAY_SRV1 get TextureCubeArray =>
      this.Anonymous.TextureCubeArray;
  set TextureCubeArray(D3D10_TEXCUBE_ARRAY_SRV1 value) =>
      this.Anonymous.TextureCubeArray = value;
}

/// {@category Struct}
class D3D10_SHADER_TYPE_DESC extends Struct {
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
}

/// {@category Struct}
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

/// {@category Struct}
class D3D10_SIGNATURE_PARAMETER_DESC extends Struct {
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
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class D3D10_SUBRESOURCE_DATA extends Struct {
  external Pointer pSysMem;

  @Uint32()
  external int SysMemPitch;

  @Uint32()
  external int SysMemSlicePitch;
}

/// {@category Struct}
class D3D10_TECHNIQUE_DESC extends Struct {
  external Pointer<Utf8> Name;

  @Uint32()
  external int Passes;

  @Uint32()
  external int Annotations;
}

/// {@category Struct}
class D3D10_TEX1D_ARRAY_DSV extends Struct {
  @Uint32()
  external int MipSlice;

  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;
}

/// {@category Struct}
class D3D10_TEX1D_ARRAY_RTV extends Struct {
  @Uint32()
  external int MipSlice;

  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;
}

/// {@category Struct}
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

/// {@category Struct}
class D3D10_TEX1D_DSV extends Struct {
  @Uint32()
  external int MipSlice;
}

/// {@category Struct}
class D3D10_TEX1D_RTV extends Struct {
  @Uint32()
  external int MipSlice;
}

/// {@category Struct}
class D3D10_TEX1D_SRV extends Struct {
  @Uint32()
  external int MostDetailedMip;

  @Uint32()
  external int MipLevels;
}

/// {@category Struct}
class D3D10_TEX2DMS_ARRAY_DSV extends Struct {
  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;
}

/// {@category Struct}
class D3D10_TEX2DMS_ARRAY_RTV extends Struct {
  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;
}

/// {@category Struct}
class D3D10_TEX2DMS_ARRAY_SRV extends Struct {
  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;
}

/// {@category Struct}
class D3D10_TEX2DMS_DSV extends Struct {
  @Uint32()
  external int UnusedField_NothingToDefine;
}

/// {@category Struct}
class D3D10_TEX2DMS_RTV extends Struct {
  @Uint32()
  external int UnusedField_NothingToDefine;
}

/// {@category Struct}
class D3D10_TEX2DMS_SRV extends Struct {
  @Uint32()
  external int UnusedField_NothingToDefine;
}

/// {@category Struct}
class D3D10_TEX2D_ARRAY_DSV extends Struct {
  @Uint32()
  external int MipSlice;

  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;
}

/// {@category Struct}
class D3D10_TEX2D_ARRAY_RTV extends Struct {
  @Uint32()
  external int MipSlice;

  @Uint32()
  external int FirstArraySlice;

  @Uint32()
  external int ArraySize;
}

/// {@category Struct}
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

/// {@category Struct}
class D3D10_TEX2D_DSV extends Struct {
  @Uint32()
  external int MipSlice;
}

/// {@category Struct}
class D3D10_TEX2D_RTV extends Struct {
  @Uint32()
  external int MipSlice;
}

/// {@category Struct}
class D3D10_TEX2D_SRV extends Struct {
  @Uint32()
  external int MostDetailedMip;

  @Uint32()
  external int MipLevels;
}

/// {@category Struct}
class D3D10_TEX3D_RTV extends Struct {
  @Uint32()
  external int MipSlice;

  @Uint32()
  external int FirstWSlice;

  @Uint32()
  external int WSize;
}

/// {@category Struct}
class D3D10_TEX3D_SRV extends Struct {
  @Uint32()
  external int MostDetailedMip;

  @Uint32()
  external int MipLevels;
}

/// {@category Struct}
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

/// {@category Struct}
class D3D10_TEXCUBE_SRV extends Struct {
  @Uint32()
  external int MostDetailedMip;

  @Uint32()
  external int MipLevels;
}

/// {@category Struct}
class D3D10_TEXTURE1D_DESC extends Struct {
  @Uint32()
  external int Width;

  @Uint32()
  external int MipLevels;

  @Uint32()
  external int ArraySize;

  @Uint32()
  external int Format;

  @Int32()
  external int Usage;

  @Uint32()
  external int BindFlags;

  @Uint32()
  external int CPUAccessFlags;

  @Uint32()
  external int MiscFlags;
}

/// {@category Struct}
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

  @Int32()
  external int Usage;

  @Uint32()
  external int BindFlags;

  @Uint32()
  external int CPUAccessFlags;

  @Uint32()
  external int MiscFlags;
}

/// {@category Struct}
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

  @Int32()
  external int Usage;

  @Uint32()
  external int BindFlags;

  @Uint32()
  external int CPUAccessFlags;

  @Uint32()
  external int MiscFlags;
}

/// {@category Struct}
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
