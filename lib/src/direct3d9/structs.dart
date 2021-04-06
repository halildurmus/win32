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

class D3DVECTOR extends Struct {
  @Float()
  external double x;
  @Float()
  external double y;
  @Float()
  external double z;
}

class D3DCOLORVALUE extends Struct {
  @Float()
  external double r;
  @Float()
  external double g;
  @Float()
  external double b;
  @Float()
  external double a;
}

class D3DRECT extends Struct {
  @Int32()
  external int x1;
  @Int32()
  external int y1;
  @Int32()
  external int x2;
  @Int32()
  external int y2;
}

class D3DMATRIX extends Struct {
  @Uint32()
  external int Anonymous;
}

class D3DVIEWPORT9 extends Struct {
  @Uint32()
  external int X;
  @Uint32()
  external int Y;
  @Uint32()
  external int Width;
  @Uint32()
  external int Height;
  @Float()
  external double MinZ;
  @Float()
  external double MaxZ;
}

class D3DCLIPSTATUS9 extends Struct {
  @Uint32()
  external int ClipUnion;
  @Uint32()
  external int ClipIntersection;
}

class D3DMATERIAL9 extends Struct {
  external D3DCOLORVALUE Diffuse;
  external D3DCOLORVALUE Ambient;
  external D3DCOLORVALUE Specular;
  external D3DCOLORVALUE Emissive;
  @Float()
  external double Power;
}

class D3DLIGHT9 extends Struct {
  @Uint32()
  external int Type;
  external D3DCOLORVALUE Diffuse;
  external D3DCOLORVALUE Specular;
  external D3DCOLORVALUE Ambient;
  external D3DVECTOR Position;
  external D3DVECTOR Direction;
  @Float()
  external double Range;
  @Float()
  external double Falloff;
  @Float()
  external double Attenuation0;
  @Float()
  external double Attenuation1;
  @Float()
  external double Attenuation2;
  @Float()
  external double Theta;
  @Float()
  external double Phi;
}

class D3DVERTEXELEMENT9 extends Struct {
  @Uint16()
  external int Stream;
  @Uint16()
  external int Offset;
  @Uint8()
  external int Type;
  @Uint8()
  external int Method;
  @Uint8()
  external int Usage;
  @Uint8()
  external int UsageIndex;
}

class D3DDISPLAYMODE extends Struct {
  @Uint32()
  external int Width;
  @Uint32()
  external int Height;
  @Uint32()
  external int RefreshRate;
  @Uint32()
  external int Format;
}

class D3DDEVICE_CREATION_PARAMETERS extends Struct {
  @Uint32()
  external int AdapterOrdinal;
  @Uint32()
  external int DeviceType;
  @IntPtr()
  external int hFocusWindow;
  @Uint32()
  external int BehaviorFlags;
}

class D3DPRESENT_PARAMETERS extends Struct {
  @Uint32()
  external int BackBufferWidth;
  @Uint32()
  external int BackBufferHeight;
  @Uint32()
  external int BackBufferFormat;
  @Uint32()
  external int BackBufferCount;
  @Uint32()
  external int MultiSampleType;
  @Uint32()
  external int MultiSampleQuality;
  @Uint32()
  external int SwapEffect;
  @IntPtr()
  external int hDeviceWindow;
  @Int32()
  external int Windowed;
  @Int32()
  external int EnableAutoDepthStencil;
  @Uint32()
  external int AutoDepthStencilFormat;
  @Uint32()
  external int Flags;
  @Uint32()
  external int FullScreen_RefreshRateInHz;
  @Uint32()
  external int PresentationInterval;
}

class D3DGAMMARAMP extends Struct {
  @Array(129)
  external Array<Uint16> red;
  @Array(129)
  external Array<Uint16> green;
  @Array(129)
  external Array<Uint16> blue;
}

class D3DVERTEXBUFFER_DESC extends Struct {
  @Uint32()
  external int Format;
  @Uint32()
  external int Type;
  @Uint32()
  external int Usage;
  @Uint32()
  external int Pool;
  @Uint32()
  external int Size;
  @Uint32()
  external int FVF;
}

class D3DINDEXBUFFER_DESC extends Struct {
  @Uint32()
  external int Format;
  @Uint32()
  external int Type;
  @Uint32()
  external int Usage;
  @Uint32()
  external int Pool;
  @Uint32()
  external int Size;
}

class D3DSURFACE_DESC extends Struct {
  @Uint32()
  external int Format;
  @Uint32()
  external int Type;
  @Uint32()
  external int Usage;
  @Uint32()
  external int Pool;
  @Uint32()
  external int MultiSampleType;
  @Uint32()
  external int MultiSampleQuality;
  @Uint32()
  external int Width;
  @Uint32()
  external int Height;
}

class D3DVOLUME_DESC extends Struct {
  @Uint32()
  external int Format;
  @Uint32()
  external int Type;
  @Uint32()
  external int Usage;
  @Uint32()
  external int Pool;
  @Uint32()
  external int Width;
  @Uint32()
  external int Height;
  @Uint32()
  external int Depth;
}

class D3DLOCKED_RECT extends Struct {
  @Int32()
  external int Pitch;
  external Pointer pBits;
}

class D3DBOX extends Struct {
  @Uint32()
  external int Left;
  @Uint32()
  external int Top;
  @Uint32()
  external int Right;
  @Uint32()
  external int Bottom;
  @Uint32()
  external int Front;
  @Uint32()
  external int Back;
}

class D3DLOCKED_BOX extends Struct {
  @Int32()
  external int RowPitch;
  @Int32()
  external int SlicePitch;
  external Pointer pBits;
}

class D3DRANGE extends Struct {
  @Uint32()
  external int Offset;
  @Uint32()
  external int Size;
}

class D3DRECTPATCH_INFO extends Struct {
  @Uint32()
  external int StartVertexOffsetWidth;
  @Uint32()
  external int StartVertexOffsetHeight;
  @Uint32()
  external int Width;
  @Uint32()
  external int Height;
  @Uint32()
  external int Stride;
  @Uint32()
  external int Basis;
  @Uint32()
  external int Degree;
}

class D3DTRIPATCH_INFO extends Struct {
  @Uint32()
  external int StartVertexOffset;
  @Uint32()
  external int NumVertices;
  @Uint32()
  external int Basis;
  @Uint32()
  external int Degree;
}

class D3DADAPTER_IDENTIFIER9 extends Struct {
  @Array(130)
  external Array<Int8> Driver;
  @Array(130)
  external Array<Int8> Description;
  @Array(32)
  external Array<Int8> DeviceName;
  @Int64()
  external int DriverVersion;
  @Uint32()
  external int VendorId;
  @Uint32()
  external int DeviceId;
  @Uint32()
  external int SubSysId;
  @Uint32()
  external int Revision;
  external GUID DeviceIdentifier;
  @Uint32()
  external int WHQLLevel;
}

class D3DRASTER_STATUS extends Struct {
  @Int32()
  external int InVBlank;
  @Uint32()
  external int ScanLine;
}

class D3DRESOURCESTATS extends Struct {
  @Int32()
  external int bThrashing;
  @Uint32()
  external int ApproxBytesDownloaded;
  @Uint32()
  external int NumEvicts;
  @Uint32()
  external int NumVidCreates;
  @Uint32()
  external int LastPri;
  @Uint32()
  external int NumUsed;
  @Uint32()
  external int NumUsedInVidMem;
  @Uint32()
  external int WorkingSet;
  @Uint32()
  external int WorkingSetBytes;
  @Uint32()
  external int TotalManaged;
  @Uint32()
  external int TotalBytes;
}

class D3DDEVINFO_RESOURCEMANAGER extends Struct {
  @Array(8)
  external Array<D3DRESOURCESTATS> stats;
}

class D3DDEVINFO_D3DVERTEXSTATS extends Struct {
  @Uint32()
  external int NumRenderedTriangles;
  @Uint32()
  external int NumExtraClippingTriangles;
}

class D3DDEVINFO_VCACHE extends Struct {
  @Uint32()
  external int Pattern;
  @Uint32()
  external int OptMethod;
  @Uint32()
  external int CacheSize;
  @Uint32()
  external int MagicNumber;
}

class D3DDEVINFO_D3D9PIPELINETIMINGS extends Struct {
  @Float()
  external double VertexProcessingTimePercent;
  @Float()
  external double PixelProcessingTimePercent;
  @Float()
  external double OtherGPUProcessingTimePercent;
  @Float()
  external double GPUIdleTimePercent;
}

class D3DDEVINFO_D3D9INTERFACETIMINGS extends Struct {
  @Float()
  external double WaitingForGPUToUseApplicationResourceTimePercent;
  @Float()
  external double WaitingForGPUToAcceptMoreCommandsTimePercent;
  @Float()
  external double WaitingForGPUToStayWithinLatencyTimePercent;
  @Float()
  external double WaitingForGPUExclusiveResourceTimePercent;
  @Float()
  external double WaitingForGPUOtherTimePercent;
}

class D3DDEVINFO_D3D9STAGETIMINGS extends Struct {
  @Float()
  external double MemoryProcessingPercent;
  @Float()
  external double ComputationProcessingPercent;
}

class D3DDEVINFO_D3D9BANDWIDTHTIMINGS extends Struct {
  @Float()
  external double MaxBandwidthUtilized;
  @Float()
  external double FrontEndUploadMemoryUtilizedPercent;
  @Float()
  external double VertexRateUtilizedPercent;
  @Float()
  external double TriangleSetupRateUtilizedPercent;
  @Float()
  external double FillRateUtilizedPercent;
}

class D3DDEVINFO_D3D9CACHEUTILIZATION extends Struct {
  @Float()
  external double TextureCacheHitRate;
  @Float()
  external double PostTransformVertexCacheHitRate;
}

class D3DMEMORYPRESSURE extends Struct {
  @Uint64()
  external int BytesEvictedFromProcess;
  @Uint64()
  external int SizeOfInefficientAllocation;
  @Uint32()
  external int LevelOfEfficiency;
}

class D3DCOMPOSERECTDESC extends Struct {
  @Uint16()
  external int X;
  @Uint16()
  external int Y;
  @Uint16()
  external int Width;
  @Uint16()
  external int Height;
}

class D3DCOMPOSERECTDESTINATION extends Struct {
  @Uint16()
  external int SrcRectIndex;
  @Uint16()
  external int Reserved;
  @Int16()
  external int X;
  @Int16()
  external int Y;
}

class D3DPRESENTSTATS extends Struct {
  @Uint32()
  external int PresentCount;
  @Uint32()
  external int PresentRefreshCount;
  @Uint32()
  external int SyncRefreshCount;
  @Int64()
  external int SyncQPCTime;
  @Int64()
  external int SyncGPUTime;
}

class D3DDISPLAYMODEEX extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Width;
  @Uint32()
  external int Height;
  @Uint32()
  external int RefreshRate;
  @Uint32()
  external int Format;
  @Uint32()
  external int ScanLineOrdering;
}

class D3DDISPLAYMODEFILTER extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Format;
  @Uint32()
  external int ScanLineOrdering;
}

class D3D_OMAC extends Struct {
  @Array(16)
  external Array<Uint8> Omac;
}

class D3DAUTHENTICATEDCHANNEL_QUERY_INPUT extends Struct {
  external GUID QueryType;
  @IntPtr()
  external int hChannel;
  @Uint32()
  external int SequenceNumber;
}

class D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT extends Struct {
  external D3D_OMAC omac;
  external GUID QueryType;
  @IntPtr()
  external int hChannel;
  @Uint32()
  external int SequenceNumber;
  @Int32()
  external int ReturnCode;
}

class D3DAUTHENTICATEDCHANNEL_PROTECTION_FLAGS extends Struct {
  @Uint32()
  external int Anonymous;
}

class D3DAUTHENTICATEDCHANNEL_QUERYPROTECTION_OUTPUT extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
  external D3DAUTHENTICATEDCHANNEL_PROTECTION_FLAGS ProtectionFlags;
}

class D3DAUTHENTICATEDCHANNEL_QUERYCHANNELTYPE_OUTPUT extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
  @Uint32()
  external int ChannelType;
}

class D3DAUTHENTICATEDCHANNEL_QUERYDEVICEHANDLE_OUTPUT extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
  @IntPtr()
  external int DeviceHandle;
}

class D3DAUTHENTICATEDCHANNEL_QUERYCRYPTOSESSION_INPUT extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_INPUT Input;
  @IntPtr()
  external int DXVA2DecodeHandle;
}

class D3DAUTHENTICATEDCHANNEL_QUERYCRYPTOSESSION_OUTPUT extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
  @IntPtr()
  external int DXVA2DecodeHandle;
  @IntPtr()
  external int CryptoSessionHandle;
  @IntPtr()
  external int DeviceHandle;
}

class D3DAUTHENTICATEDCHANNEL_QUERYRESTRICTEDSHAREDRESOURCEPROCESSCOUNT_OUTPUT
    extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
  @Uint32()
  external int NumRestrictedSharedResourceProcesses;
}

class D3DAUTHENTICATEDCHANNEL_QUERYRESTRICTEDSHAREDRESOURCEPROCESS_INPUT
    extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_INPUT Input;
  @Uint32()
  external int ProcessIndex;
}

class D3DAUTHENTICATEDCHANNEL_QUERYRESTRICTEDSHAREDRESOURCEPROCESS_OUTPUT
    extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
  @Uint32()
  external int ProcessIndex;
  @Uint32()
  external int ProcessIdentifer;
  @IntPtr()
  external int ProcessHandle;
}

class D3DAUTHENTICATEDCHANNEL_QUERYUNRESTRICTEDPROTECTEDSHAREDRESOURCECOUNT_OUTPUT
    extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
  @Uint32()
  external int NumUnrestrictedProtectedSharedResources;
}

class D3DAUTHENTICATEDCHANNEL_QUERYOUTPUTIDCOUNT_INPUT extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_INPUT Input;
  @IntPtr()
  external int DeviceHandle;
  @IntPtr()
  external int CryptoSessionHandle;
}

class D3DAUTHENTICATEDCHANNEL_QUERYOUTPUTIDCOUNT_OUTPUT extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
  @IntPtr()
  external int DeviceHandle;
  @IntPtr()
  external int CryptoSessionHandle;
  @Uint32()
  external int NumOutputIDs;
}

class D3DAUTHENTICATEDCHANNEL_QUERYOUTPUTID_INPUT extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_INPUT Input;
  @IntPtr()
  external int DeviceHandle;
  @IntPtr()
  external int CryptoSessionHandle;
  @Uint32()
  external int OutputIDIndex;
}

class D3DAUTHENTICATEDCHANNEL_QUERYOUTPUTID_OUTPUT extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
  @IntPtr()
  external int DeviceHandle;
  @IntPtr()
  external int CryptoSessionHandle;
  @Uint32()
  external int OutputIDIndex;
  @Uint64()
  external int OutputID;
}

class D3DAUTHENTICATEDCHANNEL_QUERYINFOBUSTYPE_OUTPUT extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
  @Uint32()
  external int BusType;
  @Int32()
  external int bAccessibleInContiguousBlocks;
  @Int32()
  external int bAccessibleInNonContiguousBlocks;
}

class D3DAUTHENTICATEDCHANNEL_QUERYEVICTIONENCRYPTIONGUIDCOUNT_OUTPUT
    extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
  @Uint32()
  external int NumEncryptionGuids;
}

class D3DAUTHENTICATEDCHANNEL_QUERYEVICTIONENCRYPTIONGUID_INPUT extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_INPUT Input;
  @Uint32()
  external int EncryptionGuidIndex;
}

class D3DAUTHENTICATEDCHANNEL_QUERYEVICTIONENCRYPTIONGUID_OUTPUT
    extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
  @Uint32()
  external int EncryptionGuidIndex;
  external GUID EncryptionGuid;
}

class D3DAUTHENTICATEDCHANNEL_QUERYUNCOMPRESSEDENCRYPTIONLEVEL_OUTPUT
    extends Struct {
  external D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
  external GUID EncryptionGuid;
}

class D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT extends Struct {
  external D3D_OMAC omac;
  external GUID ConfigureType;
  @IntPtr()
  external int hChannel;
  @Uint32()
  external int SequenceNumber;
}

class D3DAUTHENTICATEDCHANNEL_CONFIGURE_OUTPUT extends Struct {
  external D3D_OMAC omac;
  external GUID ConfigureType;
  @IntPtr()
  external int hChannel;
  @Uint32()
  external int SequenceNumber;
  @Int32()
  external int ReturnCode;
}

class D3DAUTHENTICATEDCHANNEL_CONFIGUREINITIALIZE extends Struct {
  external D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT Parameters;
  @Uint32()
  external int StartSequenceQuery;
  @Uint32()
  external int StartSequenceConfigure;
}

class D3DAUTHENTICATEDCHANNEL_CONFIGUREPROTECTION extends Struct {
  external D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT Parameters;
  external D3DAUTHENTICATEDCHANNEL_PROTECTION_FLAGS Protections;
}

class D3DAUTHENTICATEDCHANNEL_CONFIGURECRYPTOSESSION extends Struct {
  external D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT Parameters;
  @IntPtr()
  external int DXVA2DecodeHandle;
  @IntPtr()
  external int CryptoSessionHandle;
  @IntPtr()
  external int DeviceHandle;
}

class D3DAUTHENTICATEDCHANNEL_CONFIGURESHAREDRESOURCE extends Struct {
  external D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT Parameters;
  @Uint32()
  external int ProcessIdentiferType;
  @IntPtr()
  external int ProcessHandle;
  @Int32()
  external int AllowAccess;
}

class D3DAUTHENTICATEDCHANNEL_CONFIGUREUNCOMPRESSEDENCRYPTION extends Struct {
  external D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT Parameters;
  external GUID EncryptionGuid;
}

class D3DENCRYPTED_BLOCK_INFO extends Struct {
  @Uint32()
  external int NumEncryptedBytesAtBeginning;
  @Uint32()
  external int NumBytesInSkipPattern;
  @Uint32()
  external int NumBytesInEncryptPattern;
}

class D3DAES_CTR_IV extends Struct {
  @Uint64()
  external int IV;
  @Uint64()
  external int Count;
}

class D3DVSHADERCAPS2_0 extends Struct {
  @Uint32()
  external int Caps;
  @Int32()
  external int DynamicFlowControlDepth;
  @Int32()
  external int NumTemps;
  @Int32()
  external int StaticFlowControlDepth;
}

class D3DPSHADERCAPS2_0 extends Struct {
  @Uint32()
  external int Caps;
  @Int32()
  external int DynamicFlowControlDepth;
  @Int32()
  external int NumTemps;
  @Int32()
  external int StaticFlowControlDepth;
  @Int32()
  external int NumInstructionSlots;
}

class D3DCAPS9 extends Struct {
  @Uint32()
  external int DeviceType;
  @Uint32()
  external int AdapterOrdinal;
  @Uint32()
  external int Caps;
  @Uint32()
  external int Caps2;
  @Uint32()
  external int Caps3;
  @Uint32()
  external int PresentationIntervals;
  @Uint32()
  external int CursorCaps;
  @Uint32()
  external int DevCaps;
  @Uint32()
  external int PrimitiveMiscCaps;
  @Uint32()
  external int RasterCaps;
  @Uint32()
  external int ZCmpCaps;
  @Uint32()
  external int SrcBlendCaps;
  @Uint32()
  external int DestBlendCaps;
  @Uint32()
  external int AlphaCmpCaps;
  @Uint32()
  external int ShadeCaps;
  @Uint32()
  external int TextureCaps;
  @Uint32()
  external int TextureFilterCaps;
  @Uint32()
  external int CubeTextureFilterCaps;
  @Uint32()
  external int VolumeTextureFilterCaps;
  @Uint32()
  external int TextureAddressCaps;
  @Uint32()
  external int VolumeTextureAddressCaps;
  @Uint32()
  external int LineCaps;
  @Uint32()
  external int MaxTextureWidth;
  @Uint32()
  external int MaxTextureHeight;
  @Uint32()
  external int MaxVolumeExtent;
  @Uint32()
  external int MaxTextureRepeat;
  @Uint32()
  external int MaxTextureAspectRatio;
  @Uint32()
  external int MaxAnisotropy;
  @Float()
  external double MaxVertexW;
  @Float()
  external double GuardBandLeft;
  @Float()
  external double GuardBandTop;
  @Float()
  external double GuardBandRight;
  @Float()
  external double GuardBandBottom;
  @Float()
  external double ExtentsAdjust;
  @Uint32()
  external int StencilCaps;
  @Uint32()
  external int FVFCaps;
  @Uint32()
  external int TextureOpCaps;
  @Uint32()
  external int MaxTextureBlendStages;
  @Uint32()
  external int MaxSimultaneousTextures;
  @Uint32()
  external int VertexProcessingCaps;
  @Uint32()
  external int MaxActiveLights;
  @Uint32()
  external int MaxUserClipPlanes;
  @Uint32()
  external int MaxVertexBlendMatrices;
  @Uint32()
  external int MaxVertexBlendMatrixIndex;
  @Float()
  external double MaxPointSize;
  @Uint32()
  external int MaxPrimitiveCount;
  @Uint32()
  external int MaxVertexIndex;
  @Uint32()
  external int MaxStreams;
  @Uint32()
  external int MaxStreamStride;
  @Uint32()
  external int VertexShaderVersion;
  @Uint32()
  external int MaxVertexShaderConst;
  @Uint32()
  external int PixelShaderVersion;
  @Float()
  external double PixelShader1xMaxValue;
  @Uint32()
  external int DevCaps2;
  @Float()
  external double MaxNpatchTessellationLevel;
  @Uint32()
  external int Reserved5;
  @Uint32()
  external int MasterAdapterOrdinal;
  @Uint32()
  external int AdapterOrdinalInGroup;
  @Uint32()
  external int NumberOfAdaptersInGroup;
  @Uint32()
  external int DeclTypes;
  @Uint32()
  external int NumSimultaneousRTs;
  @Uint32()
  external int StretchRectFilterCaps;
  external D3DVSHADERCAPS2_0 VS20Caps;
  external D3DPSHADERCAPS2_0 PS20Caps;
  @Uint32()
  external int VertexTextureFilterCaps;
  @Uint32()
  external int MaxVShaderInstructionsExecuted;
  @Uint32()
  external int MaxPShaderInstructionsExecuted;
  @Uint32()
  external int MaxVertexShader30InstructionSlots;
  @Uint32()
  external int MaxPixelShader30InstructionSlots;
}
