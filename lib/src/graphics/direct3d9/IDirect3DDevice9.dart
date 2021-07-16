// IDirect3DDevice9.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../structs.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IDirect3DDevice9 = '{D0223B96-BF7A-43FD-92BD-A43B0D82B9EB}';

typedef _TestCooperativeLevel_Native = Int32 Function(Pointer obj);
typedef _TestCooperativeLevel_Dart = int Function(Pointer obj);

typedef _GetAvailableTextureMem_Native = Uint32 Function(Pointer obj);
typedef _GetAvailableTextureMem_Dart = int Function(Pointer obj);

typedef _EvictManagedResources_Native = Int32 Function(Pointer obj);
typedef _EvictManagedResources_Dart = int Function(Pointer obj);

typedef _GetDirect3D_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppD3D9);
typedef _GetDirect3D_Dart = int Function(
    Pointer obj, Pointer<COMObject> ppD3D9);

typedef _GetDeviceCaps_Native = Int32 Function(
    Pointer obj, Pointer<D3DCAPS9> pCaps);
typedef _GetDeviceCaps_Dart = int Function(
    Pointer obj, Pointer<D3DCAPS9> pCaps);

typedef _GetDisplayMode_Native = Int32 Function(
    Pointer obj, Uint32 iSwapChain, Pointer<D3DDISPLAYMODE> pMode);
typedef _GetDisplayMode_Dart = int Function(
    Pointer obj, int iSwapChain, Pointer<D3DDISPLAYMODE> pMode);

typedef _GetCreationParameters_Native = Int32 Function(
    Pointer obj, Pointer<D3DDEVICE_CREATION_PARAMETERS> pParameters);
typedef _GetCreationParameters_Dart = int Function(
    Pointer obj, Pointer<D3DDEVICE_CREATION_PARAMETERS> pParameters);

typedef _SetCursorProperties_Native = Int32 Function(
    Pointer obj, Uint32 XHotSpot, Uint32 YHotSpot, COMObject pCursorBitmap);
typedef _SetCursorProperties_Dart = int Function(
    Pointer obj, int XHotSpot, int YHotSpot, COMObject pCursorBitmap);

typedef _SetCursorPosition_Native = Void Function(
    Pointer obj, Int32 X, Int32 Y, Uint32 Flags);
typedef _SetCursorPosition_Dart = void Function(
    Pointer obj, int X, int Y, int Flags);

typedef _ShowCursor_Native = Int32 Function(Pointer obj, Int32 bShow);
typedef _ShowCursor_Dart = int Function(Pointer obj, int bShow);

typedef _CreateAdditionalSwapChain_Native = Int32 Function(
    Pointer obj,
    Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
    Pointer<COMObject> pSwapChain);
typedef _CreateAdditionalSwapChain_Dart = int Function(
    Pointer obj,
    Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
    Pointer<COMObject> pSwapChain);

typedef _GetSwapChain_Native = Int32 Function(
    Pointer obj, Uint32 iSwapChain, Pointer<COMObject> pSwapChain);
typedef _GetSwapChain_Dart = int Function(
    Pointer obj, int iSwapChain, Pointer<COMObject> pSwapChain);

typedef _GetNumberOfSwapChains_Native = Uint32 Function(Pointer obj);
typedef _GetNumberOfSwapChains_Dart = int Function(Pointer obj);

typedef _Reset_Native = Int32 Function(
    Pointer obj, Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters);
typedef _Reset_Dart = int Function(
    Pointer obj, Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters);

typedef _Present_Native = Int32 Function(
    Pointer obj,
    Pointer<RECT> pSourceRect,
    Pointer<RECT> pDestRect,
    IntPtr hDestWindowOverride,
    Pointer<RGNDATA> pDirtyRegion);
typedef _Present_Dart = int Function(
    Pointer obj,
    Pointer<RECT> pSourceRect,
    Pointer<RECT> pDestRect,
    int hDestWindowOverride,
    Pointer<RGNDATA> pDirtyRegion);

typedef _GetBackBuffer_Native = Int32 Function(Pointer obj, Uint32 iSwapChain,
    Uint32 iBackBuffer, Uint32 Type, Pointer<COMObject> ppBackBuffer);
typedef _GetBackBuffer_Dart = int Function(Pointer obj, int iSwapChain,
    int iBackBuffer, int Type, Pointer<COMObject> ppBackBuffer);

typedef _GetRasterStatus_Native = Int32 Function(
    Pointer obj, Uint32 iSwapChain, Pointer<D3DRASTER_STATUS> pRasterStatus);
typedef _GetRasterStatus_Dart = int Function(
    Pointer obj, int iSwapChain, Pointer<D3DRASTER_STATUS> pRasterStatus);

typedef _SetDialogBoxMode_Native = Int32 Function(
    Pointer obj, Int32 bEnableDialogs);
typedef _SetDialogBoxMode_Dart = int Function(Pointer obj, int bEnableDialogs);

typedef _SetGammaRamp_Native = Void Function(
    Pointer obj, Uint32 iSwapChain, Uint32 Flags, Pointer<D3DGAMMARAMP> pRamp);
typedef _SetGammaRamp_Dart = void Function(
    Pointer obj, int iSwapChain, int Flags, Pointer<D3DGAMMARAMP> pRamp);

typedef _GetGammaRamp_Native = Void Function(
    Pointer obj, Uint32 iSwapChain, Pointer<D3DGAMMARAMP> pRamp);
typedef _GetGammaRamp_Dart = void Function(
    Pointer obj, int iSwapChain, Pointer<D3DGAMMARAMP> pRamp);

typedef _CreateTexture_Native = Int32 Function(
    Pointer obj,
    Uint32 Width,
    Uint32 Height,
    Uint32 Levels,
    Uint32 Usage,
    Uint32 Format,
    Uint32 Pool,
    Pointer<COMObject> ppTexture,
    Pointer<IntPtr> pSharedHandle);
typedef _CreateTexture_Dart = int Function(
    Pointer obj,
    int Width,
    int Height,
    int Levels,
    int Usage,
    int Format,
    int Pool,
    Pointer<COMObject> ppTexture,
    Pointer<IntPtr> pSharedHandle);

typedef _CreateVolumeTexture_Native = Int32 Function(
    Pointer obj,
    Uint32 Width,
    Uint32 Height,
    Uint32 Depth,
    Uint32 Levels,
    Uint32 Usage,
    Uint32 Format,
    Uint32 Pool,
    Pointer<COMObject> ppVolumeTexture,
    Pointer<IntPtr> pSharedHandle);
typedef _CreateVolumeTexture_Dart = int Function(
    Pointer obj,
    int Width,
    int Height,
    int Depth,
    int Levels,
    int Usage,
    int Format,
    int Pool,
    Pointer<COMObject> ppVolumeTexture,
    Pointer<IntPtr> pSharedHandle);

typedef _CreateCubeTexture_Native = Int32 Function(
    Pointer obj,
    Uint32 EdgeLength,
    Uint32 Levels,
    Uint32 Usage,
    Uint32 Format,
    Uint32 Pool,
    Pointer<COMObject> ppCubeTexture,
    Pointer<IntPtr> pSharedHandle);
typedef _CreateCubeTexture_Dart = int Function(
    Pointer obj,
    int EdgeLength,
    int Levels,
    int Usage,
    int Format,
    int Pool,
    Pointer<COMObject> ppCubeTexture,
    Pointer<IntPtr> pSharedHandle);

typedef _CreateVertexBuffer_Native = Int32 Function(
    Pointer obj,
    Uint32 Length,
    Uint32 Usage,
    Uint32 FVF,
    Uint32 Pool,
    Pointer<COMObject> ppVertexBuffer,
    Pointer<IntPtr> pSharedHandle);
typedef _CreateVertexBuffer_Dart = int Function(
    Pointer obj,
    int Length,
    int Usage,
    int FVF,
    int Pool,
    Pointer<COMObject> ppVertexBuffer,
    Pointer<IntPtr> pSharedHandle);

typedef _CreateIndexBuffer_Native = Int32 Function(
    Pointer obj,
    Uint32 Length,
    Uint32 Usage,
    Uint32 Format,
    Uint32 Pool,
    Pointer<COMObject> ppIndexBuffer,
    Pointer<IntPtr> pSharedHandle);
typedef _CreateIndexBuffer_Dart = int Function(
    Pointer obj,
    int Length,
    int Usage,
    int Format,
    int Pool,
    Pointer<COMObject> ppIndexBuffer,
    Pointer<IntPtr> pSharedHandle);

typedef _CreateRenderTarget_Native = Int32 Function(
    Pointer obj,
    Uint32 Width,
    Uint32 Height,
    Uint32 Format,
    Uint32 MultiSample,
    Uint32 MultisampleQuality,
    Int32 Lockable,
    Pointer<COMObject> ppSurface,
    Pointer<IntPtr> pSharedHandle);
typedef _CreateRenderTarget_Dart = int Function(
    Pointer obj,
    int Width,
    int Height,
    int Format,
    int MultiSample,
    int MultisampleQuality,
    int Lockable,
    Pointer<COMObject> ppSurface,
    Pointer<IntPtr> pSharedHandle);

typedef _CreateDepthStencilSurface_Native = Int32 Function(
    Pointer obj,
    Uint32 Width,
    Uint32 Height,
    Uint32 Format,
    Uint32 MultiSample,
    Uint32 MultisampleQuality,
    Int32 Discard,
    Pointer<COMObject> ppSurface,
    Pointer<IntPtr> pSharedHandle);
typedef _CreateDepthStencilSurface_Dart = int Function(
    Pointer obj,
    int Width,
    int Height,
    int Format,
    int MultiSample,
    int MultisampleQuality,
    int Discard,
    Pointer<COMObject> ppSurface,
    Pointer<IntPtr> pSharedHandle);

typedef _UpdateSurface_Native = Int32 Function(
    Pointer obj,
    COMObject pSourceSurface,
    Pointer<RECT> pSourceRect,
    COMObject pDestinationSurface,
    Pointer<POINT> pDestPoint);
typedef _UpdateSurface_Dart = int Function(
    Pointer obj,
    COMObject pSourceSurface,
    Pointer<RECT> pSourceRect,
    COMObject pDestinationSurface,
    Pointer<POINT> pDestPoint);

typedef _UpdateTexture_Native = Int32 Function(
    Pointer obj, COMObject pSourceTexture, COMObject pDestinationTexture);
typedef _UpdateTexture_Dart = int Function(
    Pointer obj, COMObject pSourceTexture, COMObject pDestinationTexture);

typedef _GetRenderTargetData_Native = Int32 Function(
    Pointer obj, COMObject pRenderTarget, COMObject pDestSurface);
typedef _GetRenderTargetData_Dart = int Function(
    Pointer obj, COMObject pRenderTarget, COMObject pDestSurface);

typedef _GetFrontBufferData_Native = Int32 Function(
    Pointer obj, Uint32 iSwapChain, COMObject pDestSurface);
typedef _GetFrontBufferData_Dart = int Function(
    Pointer obj, int iSwapChain, COMObject pDestSurface);

typedef _StretchRect_Native = Int32 Function(
    Pointer obj,
    COMObject pSourceSurface,
    Pointer<RECT> pSourceRect,
    COMObject pDestSurface,
    Pointer<RECT> pDestRect,
    Uint32 Filter);
typedef _StretchRect_Dart = int Function(
    Pointer obj,
    COMObject pSourceSurface,
    Pointer<RECT> pSourceRect,
    COMObject pDestSurface,
    Pointer<RECT> pDestRect,
    int Filter);

typedef _ColorFill_Native = Int32 Function(
    Pointer obj, COMObject pSurface, Pointer<RECT> pRect, Uint32 color);
typedef _ColorFill_Dart = int Function(
    Pointer obj, COMObject pSurface, Pointer<RECT> pRect, int color);

typedef _CreateOffscreenPlainSurface_Native = Int32 Function(
    Pointer obj,
    Uint32 Width,
    Uint32 Height,
    Uint32 Format,
    Uint32 Pool,
    Pointer<COMObject> ppSurface,
    Pointer<IntPtr> pSharedHandle);
typedef _CreateOffscreenPlainSurface_Dart = int Function(
    Pointer obj,
    int Width,
    int Height,
    int Format,
    int Pool,
    Pointer<COMObject> ppSurface,
    Pointer<IntPtr> pSharedHandle);

typedef _SetRenderTarget_Native = Int32 Function(
    Pointer obj, Uint32 RenderTargetIndex, COMObject pRenderTarget);
typedef _SetRenderTarget_Dart = int Function(
    Pointer obj, int RenderTargetIndex, COMObject pRenderTarget);

typedef _GetRenderTarget_Native = Int32 Function(
    Pointer obj, Uint32 RenderTargetIndex, Pointer<COMObject> ppRenderTarget);
typedef _GetRenderTarget_Dart = int Function(
    Pointer obj, int RenderTargetIndex, Pointer<COMObject> ppRenderTarget);

typedef _SetDepthStencilSurface_Native = Int32 Function(
    Pointer obj, COMObject pNewZStencil);
typedef _SetDepthStencilSurface_Dart = int Function(
    Pointer obj, COMObject pNewZStencil);

typedef _GetDepthStencilSurface_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppZStencilSurface);
typedef _GetDepthStencilSurface_Dart = int Function(
    Pointer obj, Pointer<COMObject> ppZStencilSurface);

typedef _BeginScene_Native = Int32 Function(Pointer obj);
typedef _BeginScene_Dart = int Function(Pointer obj);

typedef _EndScene_Native = Int32 Function(Pointer obj);
typedef _EndScene_Dart = int Function(Pointer obj);

typedef _Clear_Native = Int32 Function(
    Pointer obj,
    Uint32 Count,
    Pointer<D3DRECT> pRects,
    Uint32 Flags,
    Uint32 Color,
    Float Z,
    Uint32 Stencil);
typedef _Clear_Dart = int Function(Pointer obj, int Count,
    Pointer<D3DRECT> pRects, int Flags, int Color, double Z, int Stencil);

typedef _SetTransform_Native = Int32 Function(
    Pointer obj, Uint32 State, Pointer<D3DMATRIX> pMatrix);
typedef _SetTransform_Dart = int Function(
    Pointer obj, int State, Pointer<D3DMATRIX> pMatrix);

typedef _GetTransform_Native = Int32 Function(
    Pointer obj, Uint32 State, Pointer<D3DMATRIX> pMatrix);
typedef _GetTransform_Dart = int Function(
    Pointer obj, int State, Pointer<D3DMATRIX> pMatrix);

typedef _MultiplyTransform_Native = Int32 Function(
    Pointer obj, Uint32 param0, Pointer<D3DMATRIX> param1);
typedef _MultiplyTransform_Dart = int Function(
    Pointer obj, int param0, Pointer<D3DMATRIX> param1);

typedef _SetViewport_Native = Int32 Function(
    Pointer obj, Pointer<D3DVIEWPORT9> pViewport);
typedef _SetViewport_Dart = int Function(
    Pointer obj, Pointer<D3DVIEWPORT9> pViewport);

typedef _GetViewport_Native = Int32 Function(
    Pointer obj, Pointer<D3DVIEWPORT9> pViewport);
typedef _GetViewport_Dart = int Function(
    Pointer obj, Pointer<D3DVIEWPORT9> pViewport);

typedef _SetMaterial_Native = Int32 Function(
    Pointer obj, Pointer<D3DMATERIAL9> pMaterial);
typedef _SetMaterial_Dart = int Function(
    Pointer obj, Pointer<D3DMATERIAL9> pMaterial);

typedef _GetMaterial_Native = Int32 Function(
    Pointer obj, Pointer<D3DMATERIAL9> pMaterial);
typedef _GetMaterial_Dart = int Function(
    Pointer obj, Pointer<D3DMATERIAL9> pMaterial);

typedef _SetLight_Native = Int32 Function(
    Pointer obj, Uint32 Index, Pointer<D3DLIGHT9> param1);
typedef _SetLight_Dart = int Function(
    Pointer obj, int Index, Pointer<D3DLIGHT9> param1);

typedef _GetLight_Native = Int32 Function(
    Pointer obj, Uint32 Index, Pointer<D3DLIGHT9> param1);
typedef _GetLight_Dart = int Function(
    Pointer obj, int Index, Pointer<D3DLIGHT9> param1);

typedef _LightEnable_Native = Int32 Function(
    Pointer obj, Uint32 Index, Int32 Enable);
typedef _LightEnable_Dart = int Function(Pointer obj, int Index, int Enable);

typedef _GetLightEnable_Native = Int32 Function(
    Pointer obj, Uint32 Index, Pointer<Int32> pEnable);
typedef _GetLightEnable_Dart = int Function(
    Pointer obj, int Index, Pointer<Int32> pEnable);

typedef _SetClipPlane_Native = Int32 Function(
    Pointer obj, Uint32 Index, Pointer<Float> pPlane);
typedef _SetClipPlane_Dart = int Function(
    Pointer obj, int Index, Pointer<Float> pPlane);

typedef _GetClipPlane_Native = Int32 Function(
    Pointer obj, Uint32 Index, Pointer<Float> pPlane);
typedef _GetClipPlane_Dart = int Function(
    Pointer obj, int Index, Pointer<Float> pPlane);

typedef _SetRenderState_Native = Int32 Function(
    Pointer obj, Uint32 State, Uint32 Value);
typedef _SetRenderState_Dart = int Function(Pointer obj, int State, int Value);

typedef _GetRenderState_Native = Int32 Function(
    Pointer obj, Uint32 State, Pointer<Uint32> pValue);
typedef _GetRenderState_Dart = int Function(
    Pointer obj, int State, Pointer<Uint32> pValue);

typedef _CreateStateBlock_Native = Int32 Function(
    Pointer obj, Uint32 Type, Pointer<COMObject> ppSB);
typedef _CreateStateBlock_Dart = int Function(
    Pointer obj, int Type, Pointer<COMObject> ppSB);

typedef _BeginStateBlock_Native = Int32 Function(Pointer obj);
typedef _BeginStateBlock_Dart = int Function(Pointer obj);

typedef _EndStateBlock_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppSB);
typedef _EndStateBlock_Dart = int Function(
    Pointer obj, Pointer<COMObject> ppSB);

typedef _SetClipStatus_Native = Int32 Function(
    Pointer obj, Pointer<D3DCLIPSTATUS9> pClipStatus);
typedef _SetClipStatus_Dart = int Function(
    Pointer obj, Pointer<D3DCLIPSTATUS9> pClipStatus);

typedef _GetClipStatus_Native = Int32 Function(
    Pointer obj, Pointer<D3DCLIPSTATUS9> pClipStatus);
typedef _GetClipStatus_Dart = int Function(
    Pointer obj, Pointer<D3DCLIPSTATUS9> pClipStatus);

typedef _GetTexture_Native = Int32 Function(
    Pointer obj, Uint32 Stage, Pointer<COMObject> ppTexture);
typedef _GetTexture_Dart = int Function(
    Pointer obj, int Stage, Pointer<COMObject> ppTexture);

typedef _SetTexture_Native = Int32 Function(
    Pointer obj, Uint32 Stage, COMObject pTexture);
typedef _SetTexture_Dart = int Function(
    Pointer obj, int Stage, COMObject pTexture);

typedef _GetTextureStageState_Native = Int32 Function(
    Pointer obj, Uint32 Stage, Uint32 Type, Pointer<Uint32> pValue);
typedef _GetTextureStageState_Dart = int Function(
    Pointer obj, int Stage, int Type, Pointer<Uint32> pValue);

typedef _SetTextureStageState_Native = Int32 Function(
    Pointer obj, Uint32 Stage, Uint32 Type, Uint32 Value);
typedef _SetTextureStageState_Dart = int Function(
    Pointer obj, int Stage, int Type, int Value);

typedef _GetSamplerState_Native = Int32 Function(
    Pointer obj, Uint32 Sampler, Uint32 Type, Pointer<Uint32> pValue);
typedef _GetSamplerState_Dart = int Function(
    Pointer obj, int Sampler, int Type, Pointer<Uint32> pValue);

typedef _SetSamplerState_Native = Int32 Function(
    Pointer obj, Uint32 Sampler, Uint32 Type, Uint32 Value);
typedef _SetSamplerState_Dart = int Function(
    Pointer obj, int Sampler, int Type, int Value);

typedef _ValidateDevice_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pNumPasses);
typedef _ValidateDevice_Dart = int Function(
    Pointer obj, Pointer<Uint32> pNumPasses);

typedef _SetPaletteEntries_Native = Int32 Function(
    Pointer obj, Uint32 PaletteNumber, Pointer<PALETTEENTRY> pEntries);
typedef _SetPaletteEntries_Dart = int Function(
    Pointer obj, int PaletteNumber, Pointer<PALETTEENTRY> pEntries);

typedef _GetPaletteEntries_Native = Int32 Function(
    Pointer obj, Uint32 PaletteNumber, Pointer<PALETTEENTRY> pEntries);
typedef _GetPaletteEntries_Dart = int Function(
    Pointer obj, int PaletteNumber, Pointer<PALETTEENTRY> pEntries);

typedef _SetCurrentTexturePalette_Native = Int32 Function(
    Pointer obj, Uint32 PaletteNumber);
typedef _SetCurrentTexturePalette_Dart = int Function(
    Pointer obj, int PaletteNumber);

typedef _GetCurrentTexturePalette_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> PaletteNumber);
typedef _GetCurrentTexturePalette_Dart = int Function(
    Pointer obj, Pointer<Uint32> PaletteNumber);

typedef _SetScissorRect_Native = Int32 Function(
    Pointer obj, Pointer<RECT> pRect);
typedef _SetScissorRect_Dart = int Function(Pointer obj, Pointer<RECT> pRect);

typedef _GetScissorRect_Native = Int32 Function(
    Pointer obj, Pointer<RECT> pRect);
typedef _GetScissorRect_Dart = int Function(Pointer obj, Pointer<RECT> pRect);

typedef _SetSoftwareVertexProcessing_Native = Int32 Function(
    Pointer obj, Int32 bSoftware);
typedef _SetSoftwareVertexProcessing_Dart = int Function(
    Pointer obj, int bSoftware);

typedef _GetSoftwareVertexProcessing_Native = Int32 Function(Pointer obj);
typedef _GetSoftwareVertexProcessing_Dart = int Function(Pointer obj);

typedef _SetNPatchMode_Native = Int32 Function(Pointer obj, Float nSegments);
typedef _SetNPatchMode_Dart = int Function(Pointer obj, double nSegments);

typedef _GetNPatchMode_Native = Float Function(Pointer obj);
typedef _GetNPatchMode_Dart = double Function(Pointer obj);

typedef _DrawPrimitive_Native = Int32 Function(Pointer obj,
    Uint32 PrimitiveType, Uint32 StartVertex, Uint32 PrimitiveCount);
typedef _DrawPrimitive_Dart = int Function(
    Pointer obj, int PrimitiveType, int StartVertex, int PrimitiveCount);

typedef _DrawIndexedPrimitive_Native = Int32 Function(
    Pointer obj,
    Uint32 param0,
    Int32 BaseVertexIndex,
    Uint32 MinVertexIndex,
    Uint32 NumVertices,
    Uint32 startIndex,
    Uint32 primCount);
typedef _DrawIndexedPrimitive_Dart = int Function(
    Pointer obj,
    int param0,
    int BaseVertexIndex,
    int MinVertexIndex,
    int NumVertices,
    int startIndex,
    int primCount);

typedef _DrawPrimitiveUP_Native = Int32 Function(
    Pointer obj,
    Uint32 PrimitiveType,
    Uint32 PrimitiveCount,
    Pointer pVertexStreamZeroData,
    Uint32 VertexStreamZeroStride);
typedef _DrawPrimitiveUP_Dart = int Function(
    Pointer obj,
    int PrimitiveType,
    int PrimitiveCount,
    Pointer pVertexStreamZeroData,
    int VertexStreamZeroStride);

typedef _DrawIndexedPrimitiveUP_Native = Int32 Function(
    Pointer obj,
    Uint32 PrimitiveType,
    Uint32 MinVertexIndex,
    Uint32 NumVertices,
    Uint32 PrimitiveCount,
    Pointer pIndexData,
    Uint32 IndexDataFormat,
    Pointer pVertexStreamZeroData,
    Uint32 VertexStreamZeroStride);
typedef _DrawIndexedPrimitiveUP_Dart = int Function(
    Pointer obj,
    int PrimitiveType,
    int MinVertexIndex,
    int NumVertices,
    int PrimitiveCount,
    Pointer pIndexData,
    int IndexDataFormat,
    Pointer pVertexStreamZeroData,
    int VertexStreamZeroStride);

typedef _ProcessVertices_Native = Int32 Function(
    Pointer obj,
    Uint32 SrcStartIndex,
    Uint32 DestIndex,
    Uint32 VertexCount,
    COMObject pDestBuffer,
    COMObject pVertexDecl,
    Uint32 Flags);
typedef _ProcessVertices_Dart = int Function(
    Pointer obj,
    int SrcStartIndex,
    int DestIndex,
    int VertexCount,
    COMObject pDestBuffer,
    COMObject pVertexDecl,
    int Flags);

typedef _CreateVertexDeclaration_Native = Int32 Function(Pointer obj,
    Pointer<D3DVERTEXELEMENT9> pVertexElements, Pointer<COMObject> ppDecl);
typedef _CreateVertexDeclaration_Dart = int Function(Pointer obj,
    Pointer<D3DVERTEXELEMENT9> pVertexElements, Pointer<COMObject> ppDecl);

typedef _SetVertexDeclaration_Native = Int32 Function(
    Pointer obj, COMObject pDecl);
typedef _SetVertexDeclaration_Dart = int Function(Pointer obj, COMObject pDecl);

typedef _GetVertexDeclaration_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppDecl);
typedef _GetVertexDeclaration_Dart = int Function(
    Pointer obj, Pointer<COMObject> ppDecl);

typedef _SetFVF_Native = Int32 Function(Pointer obj, Uint32 FVF);
typedef _SetFVF_Dart = int Function(Pointer obj, int FVF);

typedef _GetFVF_Native = Int32 Function(Pointer obj, Pointer<Uint32> pFVF);
typedef _GetFVF_Dart = int Function(Pointer obj, Pointer<Uint32> pFVF);

typedef _CreateVertexShader_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pFunction, Pointer<COMObject> ppShader);
typedef _CreateVertexShader_Dart = int Function(
    Pointer obj, Pointer<Uint32> pFunction, Pointer<COMObject> ppShader);

typedef _SetVertexShader_Native = Int32 Function(
    Pointer obj, COMObject pShader);
typedef _SetVertexShader_Dart = int Function(Pointer obj, COMObject pShader);

typedef _GetVertexShader_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppShader);
typedef _GetVertexShader_Dart = int Function(
    Pointer obj, Pointer<COMObject> ppShader);

typedef _SetVertexShaderConstantF_Native = Int32 Function(Pointer obj,
    Uint32 StartRegister, Pointer<Float> pConstantData, Uint32 Vector4fCount);
typedef _SetVertexShaderConstantF_Dart = int Function(Pointer obj,
    int StartRegister, Pointer<Float> pConstantData, int Vector4fCount);

typedef _GetVertexShaderConstantF_Native = Int32 Function(Pointer obj,
    Uint32 StartRegister, Pointer<Float> pConstantData, Uint32 Vector4fCount);
typedef _GetVertexShaderConstantF_Dart = int Function(Pointer obj,
    int StartRegister, Pointer<Float> pConstantData, int Vector4fCount);

typedef _SetVertexShaderConstantI_Native = Int32 Function(Pointer obj,
    Uint32 StartRegister, Pointer<Int32> pConstantData, Uint32 Vector4iCount);
typedef _SetVertexShaderConstantI_Dart = int Function(Pointer obj,
    int StartRegister, Pointer<Int32> pConstantData, int Vector4iCount);

typedef _GetVertexShaderConstantI_Native = Int32 Function(Pointer obj,
    Uint32 StartRegister, Pointer<Int32> pConstantData, Uint32 Vector4iCount);
typedef _GetVertexShaderConstantI_Dart = int Function(Pointer obj,
    int StartRegister, Pointer<Int32> pConstantData, int Vector4iCount);

typedef _SetVertexShaderConstantB_Native = Int32 Function(Pointer obj,
    Uint32 StartRegister, Pointer<Int32> pConstantData, Uint32 BoolCount);
typedef _SetVertexShaderConstantB_Dart = int Function(Pointer obj,
    int StartRegister, Pointer<Int32> pConstantData, int BoolCount);

typedef _GetVertexShaderConstantB_Native = Int32 Function(Pointer obj,
    Uint32 StartRegister, Pointer<Int32> pConstantData, Uint32 BoolCount);
typedef _GetVertexShaderConstantB_Dart = int Function(Pointer obj,
    int StartRegister, Pointer<Int32> pConstantData, int BoolCount);

typedef _SetStreamSource_Native = Int32 Function(
    Pointer obj,
    Uint32 StreamNumber,
    COMObject pStreamData,
    Uint32 OffsetInBytes,
    Uint32 Stride);
typedef _SetStreamSource_Dart = int Function(Pointer obj, int StreamNumber,
    COMObject pStreamData, int OffsetInBytes, int Stride);

typedef _GetStreamSource_Native = Int32 Function(
    Pointer obj,
    Uint32 StreamNumber,
    Pointer<COMObject> ppStreamData,
    Pointer<Uint32> pOffsetInBytes,
    Pointer<Uint32> pStride);
typedef _GetStreamSource_Dart = int Function(
    Pointer obj,
    int StreamNumber,
    Pointer<COMObject> ppStreamData,
    Pointer<Uint32> pOffsetInBytes,
    Pointer<Uint32> pStride);

typedef _SetStreamSourceFreq_Native = Int32 Function(
    Pointer obj, Uint32 StreamNumber, Uint32 Setting);
typedef _SetStreamSourceFreq_Dart = int Function(
    Pointer obj, int StreamNumber, int Setting);

typedef _GetStreamSourceFreq_Native = Int32 Function(
    Pointer obj, Uint32 StreamNumber, Pointer<Uint32> pSetting);
typedef _GetStreamSourceFreq_Dart = int Function(
    Pointer obj, int StreamNumber, Pointer<Uint32> pSetting);

typedef _SetIndices_Native = Int32 Function(Pointer obj, COMObject pIndexData);
typedef _SetIndices_Dart = int Function(Pointer obj, COMObject pIndexData);

typedef _GetIndices_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppIndexData);
typedef _GetIndices_Dart = int Function(
    Pointer obj, Pointer<COMObject> ppIndexData);

typedef _CreatePixelShader_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pFunction, Pointer<COMObject> ppShader);
typedef _CreatePixelShader_Dart = int Function(
    Pointer obj, Pointer<Uint32> pFunction, Pointer<COMObject> ppShader);

typedef _SetPixelShader_Native = Int32 Function(Pointer obj, COMObject pShader);
typedef _SetPixelShader_Dart = int Function(Pointer obj, COMObject pShader);

typedef _GetPixelShader_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppShader);
typedef _GetPixelShader_Dart = int Function(
    Pointer obj, Pointer<COMObject> ppShader);

typedef _SetPixelShaderConstantF_Native = Int32 Function(Pointer obj,
    Uint32 StartRegister, Pointer<Float> pConstantData, Uint32 Vector4fCount);
typedef _SetPixelShaderConstantF_Dart = int Function(Pointer obj,
    int StartRegister, Pointer<Float> pConstantData, int Vector4fCount);

typedef _GetPixelShaderConstantF_Native = Int32 Function(Pointer obj,
    Uint32 StartRegister, Pointer<Float> pConstantData, Uint32 Vector4fCount);
typedef _GetPixelShaderConstantF_Dart = int Function(Pointer obj,
    int StartRegister, Pointer<Float> pConstantData, int Vector4fCount);

typedef _SetPixelShaderConstantI_Native = Int32 Function(Pointer obj,
    Uint32 StartRegister, Pointer<Int32> pConstantData, Uint32 Vector4iCount);
typedef _SetPixelShaderConstantI_Dart = int Function(Pointer obj,
    int StartRegister, Pointer<Int32> pConstantData, int Vector4iCount);

typedef _GetPixelShaderConstantI_Native = Int32 Function(Pointer obj,
    Uint32 StartRegister, Pointer<Int32> pConstantData, Uint32 Vector4iCount);
typedef _GetPixelShaderConstantI_Dart = int Function(Pointer obj,
    int StartRegister, Pointer<Int32> pConstantData, int Vector4iCount);

typedef _SetPixelShaderConstantB_Native = Int32 Function(Pointer obj,
    Uint32 StartRegister, Pointer<Int32> pConstantData, Uint32 BoolCount);
typedef _SetPixelShaderConstantB_Dart = int Function(Pointer obj,
    int StartRegister, Pointer<Int32> pConstantData, int BoolCount);

typedef _GetPixelShaderConstantB_Native = Int32 Function(Pointer obj,
    Uint32 StartRegister, Pointer<Int32> pConstantData, Uint32 BoolCount);
typedef _GetPixelShaderConstantB_Dart = int Function(Pointer obj,
    int StartRegister, Pointer<Int32> pConstantData, int BoolCount);

typedef _DrawRectPatch_Native = Int32 Function(Pointer obj, Uint32 Handle,
    Pointer<Float> pNumSegs, Pointer<D3DRECTPATCH_INFO> pRectPatchInfo);
typedef _DrawRectPatch_Dart = int Function(Pointer obj, int Handle,
    Pointer<Float> pNumSegs, Pointer<D3DRECTPATCH_INFO> pRectPatchInfo);

typedef _DrawTriPatch_Native = Int32 Function(Pointer obj, Uint32 Handle,
    Pointer<Float> pNumSegs, Pointer<D3DTRIPATCH_INFO> pTriPatchInfo);
typedef _DrawTriPatch_Dart = int Function(Pointer obj, int Handle,
    Pointer<Float> pNumSegs, Pointer<D3DTRIPATCH_INFO> pTriPatchInfo);

typedef _DeletePatch_Native = Int32 Function(Pointer obj, Uint32 Handle);
typedef _DeletePatch_Dart = int Function(Pointer obj, int Handle);

typedef _CreateQuery_Native = Int32 Function(
    Pointer obj, Uint32 Type, Pointer<COMObject> ppQuery);
typedef _CreateQuery_Dart = int Function(
    Pointer obj, int Type, Pointer<COMObject> ppQuery);

/// {@category Interface}
/// {@category com}
class IDirect3DDevice9 extends IUnknown {
  // vtable begins at 3, ends at 118

  IDirect3DDevice9(Pointer<COMObject> ptr) : super(ptr);

  int TestCooperativeLevel() => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_TestCooperativeLevel_Native>>>()
      .value
      .asFunction<_TestCooperativeLevel_Dart>()(ptr.ref.lpVtbl);

  int GetAvailableTextureMem() => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_GetAvailableTextureMem_Native>>>()
      .value
      .asFunction<_GetAvailableTextureMem_Dart>()(ptr.ref.lpVtbl);

  int EvictManagedResources() => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_EvictManagedResources_Native>>>()
      .value
      .asFunction<_EvictManagedResources_Dart>()(ptr.ref.lpVtbl);

  int GetDirect3D(Pointer<COMObject> ppD3D9) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_GetDirect3D_Native>>>()
      .value
      .asFunction<_GetDirect3D_Dart>()(ptr.ref.lpVtbl, ppD3D9);

  int GetDeviceCaps(Pointer<D3DCAPS9> pCaps) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_GetDeviceCaps_Native>>>()
      .value
      .asFunction<_GetDeviceCaps_Dart>()(ptr.ref.lpVtbl, pCaps);

  int GetDisplayMode(int iSwapChain, Pointer<D3DDISPLAYMODE> pMode) => ptr
      .ref.lpVtbl.value
      .elementAt(8)
      .cast<Pointer<NativeFunction<_GetDisplayMode_Native>>>()
      .value
      .asFunction<_GetDisplayMode_Dart>()(ptr.ref.lpVtbl, iSwapChain, pMode);

  int GetCreationParameters(
          Pointer<D3DDEVICE_CREATION_PARAMETERS> pParameters) =>
      ptr.ref.lpVtbl.value
              .elementAt(9)
              .cast<Pointer<NativeFunction<_GetCreationParameters_Native>>>()
              .value
              .asFunction<_GetCreationParameters_Dart>()(
          ptr.ref.lpVtbl, pParameters);

  int SetCursorProperties(
          int XHotSpot, int YHotSpot, COMObject pCursorBitmap) =>
      ptr.ref.lpVtbl.value
              .elementAt(10)
              .cast<Pointer<NativeFunction<_SetCursorProperties_Native>>>()
              .value
              .asFunction<_SetCursorProperties_Dart>()(
          ptr.ref.lpVtbl, XHotSpot, YHotSpot, pCursorBitmap);

  void SetCursorPosition(int X, int Y, int Flags) => ptr.ref.lpVtbl.value
      .elementAt(11)
      .cast<Pointer<NativeFunction<_SetCursorPosition_Native>>>()
      .value
      .asFunction<_SetCursorPosition_Dart>()(ptr.ref.lpVtbl, X, Y, Flags);

  int ShowCursor(int bShow) => ptr.ref.lpVtbl.value
      .elementAt(12)
      .cast<Pointer<NativeFunction<_ShowCursor_Native>>>()
      .value
      .asFunction<_ShowCursor_Dart>()(ptr.ref.lpVtbl, bShow);

  int CreateAdditionalSwapChain(
          Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
          Pointer<COMObject> pSwapChain) =>
      ptr.ref.lpVtbl.value
              .elementAt(13)
              .cast<Pointer<NativeFunction<_CreateAdditionalSwapChain_Native>>>()
              .value
              .asFunction<_CreateAdditionalSwapChain_Dart>()(
          ptr.ref.lpVtbl, pPresentationParameters, pSwapChain);

  int GetSwapChain(int iSwapChain, Pointer<COMObject> pSwapChain) => ptr
      .ref.lpVtbl.value
      .elementAt(14)
      .cast<Pointer<NativeFunction<_GetSwapChain_Native>>>()
      .value
      .asFunction<_GetSwapChain_Dart>()(ptr.ref.lpVtbl, iSwapChain, pSwapChain);

  int GetNumberOfSwapChains() => ptr.ref.lpVtbl.value
      .elementAt(15)
      .cast<Pointer<NativeFunction<_GetNumberOfSwapChains_Native>>>()
      .value
      .asFunction<_GetNumberOfSwapChains_Dart>()(ptr.ref.lpVtbl);

  int Reset(Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<Pointer<NativeFunction<_Reset_Native>>>()
          .value
          .asFunction<_Reset_Dart>()(ptr.ref.lpVtbl, pPresentationParameters);

  int Present(Pointer<RECT> pSourceRect, Pointer<RECT> pDestRect,
          int hDestWindowOverride, Pointer<RGNDATA> pDirtyRegion) =>
      ptr.ref.lpVtbl.value
              .elementAt(17)
              .cast<Pointer<NativeFunction<_Present_Native>>>()
              .value
              .asFunction<_Present_Dart>()(ptr.ref.lpVtbl, pSourceRect,
          pDestRect, hDestWindowOverride, pDirtyRegion);

  int GetBackBuffer(int iSwapChain, int iBackBuffer, int Type,
          Pointer<COMObject> ppBackBuffer) =>
      ptr.ref.lpVtbl.value
              .elementAt(18)
              .cast<Pointer<NativeFunction<_GetBackBuffer_Native>>>()
              .value
              .asFunction<_GetBackBuffer_Dart>()(
          ptr.ref.lpVtbl, iSwapChain, iBackBuffer, Type, ppBackBuffer);

  int GetRasterStatus(
          int iSwapChain, Pointer<D3DRASTER_STATUS> pRasterStatus) =>
      ptr.ref.lpVtbl.value
              .elementAt(19)
              .cast<Pointer<NativeFunction<_GetRasterStatus_Native>>>()
              .value
              .asFunction<_GetRasterStatus_Dart>()(
          ptr.ref.lpVtbl, iSwapChain, pRasterStatus);

  int SetDialogBoxMode(int bEnableDialogs) => ptr.ref.lpVtbl.value
      .elementAt(20)
      .cast<Pointer<NativeFunction<_SetDialogBoxMode_Native>>>()
      .value
      .asFunction<_SetDialogBoxMode_Dart>()(ptr.ref.lpVtbl, bEnableDialogs);

  void SetGammaRamp(int iSwapChain, int Flags, Pointer<D3DGAMMARAMP> pRamp) =>
      ptr.ref.lpVtbl.value
              .elementAt(21)
              .cast<Pointer<NativeFunction<_SetGammaRamp_Native>>>()
              .value
              .asFunction<_SetGammaRamp_Dart>()(
          ptr.ref.lpVtbl, iSwapChain, Flags, pRamp);

  void GetGammaRamp(int iSwapChain, Pointer<D3DGAMMARAMP> pRamp) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<Pointer<NativeFunction<_GetGammaRamp_Native>>>()
          .value
          .asFunction<_GetGammaRamp_Dart>()(ptr.ref.lpVtbl, iSwapChain, pRamp);

  int CreateTexture(
          int Width,
          int Height,
          int Levels,
          int Usage,
          int Format,
          int Pool,
          Pointer<COMObject> ppTexture,
          Pointer<IntPtr> pSharedHandle) =>
      ptr.ref.lpVtbl.value
              .elementAt(23)
              .cast<Pointer<NativeFunction<_CreateTexture_Native>>>()
              .value
              .asFunction<_CreateTexture_Dart>()(ptr.ref.lpVtbl, Width, Height,
          Levels, Usage, Format, Pool, ppTexture, pSharedHandle);

  int CreateVolumeTexture(
          int Width,
          int Height,
          int Depth,
          int Levels,
          int Usage,
          int Format,
          int Pool,
          Pointer<COMObject> ppVolumeTexture,
          Pointer<IntPtr> pSharedHandle) =>
      ptr.ref.lpVtbl.value
              .elementAt(24)
              .cast<Pointer<NativeFunction<_CreateVolumeTexture_Native>>>()
              .value
              .asFunction<_CreateVolumeTexture_Dart>()(
          ptr.ref.lpVtbl,
          Width,
          Height,
          Depth,
          Levels,
          Usage,
          Format,
          Pool,
          ppVolumeTexture,
          pSharedHandle);

  int CreateCubeTexture(
          int EdgeLength,
          int Levels,
          int Usage,
          int Format,
          int Pool,
          Pointer<COMObject> ppCubeTexture,
          Pointer<IntPtr> pSharedHandle) =>
      ptr.ref.lpVtbl.value
              .elementAt(25)
              .cast<Pointer<NativeFunction<_CreateCubeTexture_Native>>>()
              .value
              .asFunction<_CreateCubeTexture_Dart>()(ptr.ref.lpVtbl, EdgeLength,
          Levels, Usage, Format, Pool, ppCubeTexture, pSharedHandle);

  int CreateVertexBuffer(int Length, int Usage, int FVF, int Pool,
          Pointer<COMObject> ppVertexBuffer, Pointer<IntPtr> pSharedHandle) =>
      ptr.ref.lpVtbl.value
              .elementAt(26)
              .cast<Pointer<NativeFunction<_CreateVertexBuffer_Native>>>()
              .value
              .asFunction<_CreateVertexBuffer_Dart>()(ptr.ref.lpVtbl, Length,
          Usage, FVF, Pool, ppVertexBuffer, pSharedHandle);

  int CreateIndexBuffer(int Length, int Usage, int Format, int Pool,
          Pointer<COMObject> ppIndexBuffer, Pointer<IntPtr> pSharedHandle) =>
      ptr.ref.lpVtbl.value
              .elementAt(27)
              .cast<Pointer<NativeFunction<_CreateIndexBuffer_Native>>>()
              .value
              .asFunction<_CreateIndexBuffer_Dart>()(ptr.ref.lpVtbl, Length,
          Usage, Format, Pool, ppIndexBuffer, pSharedHandle);

  int CreateRenderTarget(
          int Width,
          int Height,
          int Format,
          int MultiSample,
          int MultisampleQuality,
          int Lockable,
          Pointer<COMObject> ppSurface,
          Pointer<IntPtr> pSharedHandle) =>
      ptr.ref.lpVtbl.value
              .elementAt(28)
              .cast<Pointer<NativeFunction<_CreateRenderTarget_Native>>>()
              .value
              .asFunction<_CreateRenderTarget_Dart>()(
          ptr.ref.lpVtbl,
          Width,
          Height,
          Format,
          MultiSample,
          MultisampleQuality,
          Lockable,
          ppSurface,
          pSharedHandle);

  int CreateDepthStencilSurface(
          int Width,
          int Height,
          int Format,
          int MultiSample,
          int MultisampleQuality,
          int Discard,
          Pointer<COMObject> ppSurface,
          Pointer<IntPtr> pSharedHandle) =>
      ptr.ref.lpVtbl.value
              .elementAt(29)
              .cast<Pointer<NativeFunction<_CreateDepthStencilSurface_Native>>>()
              .value
              .asFunction<_CreateDepthStencilSurface_Dart>()(
          ptr.ref.lpVtbl,
          Width,
          Height,
          Format,
          MultiSample,
          MultisampleQuality,
          Discard,
          ppSurface,
          pSharedHandle);

  int UpdateSurface(COMObject pSourceSurface, Pointer<RECT> pSourceRect,
          COMObject pDestinationSurface, Pointer<POINT> pDestPoint) =>
      ptr.ref.lpVtbl.value
              .elementAt(30)
              .cast<Pointer<NativeFunction<_UpdateSurface_Native>>>()
              .value
              .asFunction<_UpdateSurface_Dart>()(ptr.ref.lpVtbl, pSourceSurface,
          pSourceRect, pDestinationSurface, pDestPoint);

  int UpdateTexture(COMObject pSourceTexture, COMObject pDestinationTexture) =>
      ptr.ref.lpVtbl.value
              .elementAt(31)
              .cast<Pointer<NativeFunction<_UpdateTexture_Native>>>()
              .value
              .asFunction<_UpdateTexture_Dart>()(
          ptr.ref.lpVtbl, pSourceTexture, pDestinationTexture);

  int GetRenderTargetData(COMObject pRenderTarget, COMObject pDestSurface) =>
      ptr.ref.lpVtbl.value
              .elementAt(32)
              .cast<Pointer<NativeFunction<_GetRenderTargetData_Native>>>()
              .value
              .asFunction<_GetRenderTargetData_Dart>()(
          ptr.ref.lpVtbl, pRenderTarget, pDestSurface);

  int GetFrontBufferData(int iSwapChain, COMObject pDestSurface) =>
      ptr.ref.lpVtbl.value
              .elementAt(33)
              .cast<Pointer<NativeFunction<_GetFrontBufferData_Native>>>()
              .value
              .asFunction<_GetFrontBufferData_Dart>()(
          ptr.ref.lpVtbl, iSwapChain, pDestSurface);

  int StretchRect(COMObject pSourceSurface, Pointer<RECT> pSourceRect,
          COMObject pDestSurface, Pointer<RECT> pDestRect, int Filter) =>
      ptr.ref.lpVtbl.value
              .elementAt(34)
              .cast<Pointer<NativeFunction<_StretchRect_Native>>>()
              .value
              .asFunction<_StretchRect_Dart>()(ptr.ref.lpVtbl, pSourceSurface,
          pSourceRect, pDestSurface, pDestRect, Filter);

  int ColorFill(COMObject pSurface, Pointer<RECT> pRect, int color) => ptr
      .ref.lpVtbl.value
      .elementAt(35)
      .cast<Pointer<NativeFunction<_ColorFill_Native>>>()
      .value
      .asFunction<_ColorFill_Dart>()(ptr.ref.lpVtbl, pSurface, pRect, color);

  int
      CreateOffscreenPlainSurface(int Width, int Height, int Format, int Pool,
              Pointer<COMObject> ppSurface, Pointer<IntPtr> pSharedHandle) =>
          ptr.ref.lpVtbl.value
                  .elementAt(36)
                  .cast<
                      Pointer<
                          NativeFunction<_CreateOffscreenPlainSurface_Native>>>()
                  .value
                  .asFunction<_CreateOffscreenPlainSurface_Dart>()(
              ptr.ref.lpVtbl,
              Width,
              Height,
              Format,
              Pool,
              ppSurface,
              pSharedHandle);

  int SetRenderTarget(int RenderTargetIndex, COMObject pRenderTarget) =>
      ptr.ref.lpVtbl.value
              .elementAt(37)
              .cast<Pointer<NativeFunction<_SetRenderTarget_Native>>>()
              .value
              .asFunction<_SetRenderTarget_Dart>()(
          ptr.ref.lpVtbl, RenderTargetIndex, pRenderTarget);

  int GetRenderTarget(
          int RenderTargetIndex, Pointer<COMObject> ppRenderTarget) =>
      ptr.ref.lpVtbl.value
              .elementAt(38)
              .cast<Pointer<NativeFunction<_GetRenderTarget_Native>>>()
              .value
              .asFunction<_GetRenderTarget_Dart>()(
          ptr.ref.lpVtbl, RenderTargetIndex, ppRenderTarget);

  int SetDepthStencilSurface(COMObject pNewZStencil) => ptr.ref.lpVtbl.value
      .elementAt(39)
      .cast<Pointer<NativeFunction<_SetDepthStencilSurface_Native>>>()
      .value
      .asFunction<_SetDepthStencilSurface_Dart>()(ptr.ref.lpVtbl, pNewZStencil);

  int GetDepthStencilSurface(Pointer<COMObject> ppZStencilSurface) =>
      ptr.ref.lpVtbl.value
              .elementAt(40)
              .cast<Pointer<NativeFunction<_GetDepthStencilSurface_Native>>>()
              .value
              .asFunction<_GetDepthStencilSurface_Dart>()(
          ptr.ref.lpVtbl, ppZStencilSurface);

  int BeginScene() => ptr.ref.lpVtbl.value
      .elementAt(41)
      .cast<Pointer<NativeFunction<_BeginScene_Native>>>()
      .value
      .asFunction<_BeginScene_Dart>()(ptr.ref.lpVtbl);

  int EndScene() => ptr.ref.lpVtbl.value
      .elementAt(42)
      .cast<Pointer<NativeFunction<_EndScene_Native>>>()
      .value
      .asFunction<_EndScene_Dart>()(ptr.ref.lpVtbl);

  int Clear(int Count, Pointer<D3DRECT> pRects, int Flags, int Color, double Z,
          int Stencil) =>
      ptr.ref.lpVtbl.value
              .elementAt(43)
              .cast<Pointer<NativeFunction<_Clear_Native>>>()
              .value
              .asFunction<_Clear_Dart>()(
          ptr.ref.lpVtbl, Count, pRects, Flags, Color, Z, Stencil);

  int SetTransform(int State, Pointer<D3DMATRIX> pMatrix) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<Pointer<NativeFunction<_SetTransform_Native>>>()
          .value
          .asFunction<_SetTransform_Dart>()(ptr.ref.lpVtbl, State, pMatrix);

  int GetTransform(int State, Pointer<D3DMATRIX> pMatrix) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<Pointer<NativeFunction<_GetTransform_Native>>>()
          .value
          .asFunction<_GetTransform_Dart>()(ptr.ref.lpVtbl, State, pMatrix);

  int MultiplyTransform(int param0, Pointer<D3DMATRIX> param1) => ptr
      .ref.lpVtbl.value
      .elementAt(46)
      .cast<Pointer<NativeFunction<_MultiplyTransform_Native>>>()
      .value
      .asFunction<_MultiplyTransform_Dart>()(ptr.ref.lpVtbl, param0, param1);

  int SetViewport(Pointer<D3DVIEWPORT9> pViewport) => ptr.ref.lpVtbl.value
      .elementAt(47)
      .cast<Pointer<NativeFunction<_SetViewport_Native>>>()
      .value
      .asFunction<_SetViewport_Dart>()(ptr.ref.lpVtbl, pViewport);

  int GetViewport(Pointer<D3DVIEWPORT9> pViewport) => ptr.ref.lpVtbl.value
      .elementAt(48)
      .cast<Pointer<NativeFunction<_GetViewport_Native>>>()
      .value
      .asFunction<_GetViewport_Dart>()(ptr.ref.lpVtbl, pViewport);

  int SetMaterial(Pointer<D3DMATERIAL9> pMaterial) => ptr.ref.lpVtbl.value
      .elementAt(49)
      .cast<Pointer<NativeFunction<_SetMaterial_Native>>>()
      .value
      .asFunction<_SetMaterial_Dart>()(ptr.ref.lpVtbl, pMaterial);

  int GetMaterial(Pointer<D3DMATERIAL9> pMaterial) => ptr.ref.lpVtbl.value
      .elementAt(50)
      .cast<Pointer<NativeFunction<_GetMaterial_Native>>>()
      .value
      .asFunction<_GetMaterial_Dart>()(ptr.ref.lpVtbl, pMaterial);

  int SetLight(int Index, Pointer<D3DLIGHT9> param1) => ptr.ref.lpVtbl.value
      .elementAt(51)
      .cast<Pointer<NativeFunction<_SetLight_Native>>>()
      .value
      .asFunction<_SetLight_Dart>()(ptr.ref.lpVtbl, Index, param1);

  int GetLight(int Index, Pointer<D3DLIGHT9> param1) => ptr.ref.lpVtbl.value
      .elementAt(52)
      .cast<Pointer<NativeFunction<_GetLight_Native>>>()
      .value
      .asFunction<_GetLight_Dart>()(ptr.ref.lpVtbl, Index, param1);

  int LightEnable(int Index, int Enable) => ptr.ref.lpVtbl.value
      .elementAt(53)
      .cast<Pointer<NativeFunction<_LightEnable_Native>>>()
      .value
      .asFunction<_LightEnable_Dart>()(ptr.ref.lpVtbl, Index, Enable);

  int GetLightEnable(int Index, Pointer<Int32> pEnable) => ptr.ref.lpVtbl.value
      .elementAt(54)
      .cast<Pointer<NativeFunction<_GetLightEnable_Native>>>()
      .value
      .asFunction<_GetLightEnable_Dart>()(ptr.ref.lpVtbl, Index, pEnable);

  int SetClipPlane(int Index, Pointer<Float> pPlane) => ptr.ref.lpVtbl.value
      .elementAt(55)
      .cast<Pointer<NativeFunction<_SetClipPlane_Native>>>()
      .value
      .asFunction<_SetClipPlane_Dart>()(ptr.ref.lpVtbl, Index, pPlane);

  int GetClipPlane(int Index, Pointer<Float> pPlane) => ptr.ref.lpVtbl.value
      .elementAt(56)
      .cast<Pointer<NativeFunction<_GetClipPlane_Native>>>()
      .value
      .asFunction<_GetClipPlane_Dart>()(ptr.ref.lpVtbl, Index, pPlane);

  int SetRenderState(int State, int Value) => ptr.ref.lpVtbl.value
      .elementAt(57)
      .cast<Pointer<NativeFunction<_SetRenderState_Native>>>()
      .value
      .asFunction<_SetRenderState_Dart>()(ptr.ref.lpVtbl, State, Value);

  int GetRenderState(int State, Pointer<Uint32> pValue) => ptr.ref.lpVtbl.value
      .elementAt(58)
      .cast<Pointer<NativeFunction<_GetRenderState_Native>>>()
      .value
      .asFunction<_GetRenderState_Dart>()(ptr.ref.lpVtbl, State, pValue);

  int CreateStateBlock(int Type, Pointer<COMObject> ppSB) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<Pointer<NativeFunction<_CreateStateBlock_Native>>>()
          .value
          .asFunction<_CreateStateBlock_Dart>()(ptr.ref.lpVtbl, Type, ppSB);

  int BeginStateBlock() => ptr.ref.lpVtbl.value
      .elementAt(60)
      .cast<Pointer<NativeFunction<_BeginStateBlock_Native>>>()
      .value
      .asFunction<_BeginStateBlock_Dart>()(ptr.ref.lpVtbl);

  int EndStateBlock(Pointer<COMObject> ppSB) => ptr.ref.lpVtbl.value
      .elementAt(61)
      .cast<Pointer<NativeFunction<_EndStateBlock_Native>>>()
      .value
      .asFunction<_EndStateBlock_Dart>()(ptr.ref.lpVtbl, ppSB);

  int SetClipStatus(Pointer<D3DCLIPSTATUS9> pClipStatus) => ptr.ref.lpVtbl.value
      .elementAt(62)
      .cast<Pointer<NativeFunction<_SetClipStatus_Native>>>()
      .value
      .asFunction<_SetClipStatus_Dart>()(ptr.ref.lpVtbl, pClipStatus);

  int GetClipStatus(Pointer<D3DCLIPSTATUS9> pClipStatus) => ptr.ref.lpVtbl.value
      .elementAt(63)
      .cast<Pointer<NativeFunction<_GetClipStatus_Native>>>()
      .value
      .asFunction<_GetClipStatus_Dart>()(ptr.ref.lpVtbl, pClipStatus);

  int GetTexture(int Stage, Pointer<COMObject> ppTexture) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<Pointer<NativeFunction<_GetTexture_Native>>>()
          .value
          .asFunction<_GetTexture_Dart>()(ptr.ref.lpVtbl, Stage, ppTexture);

  int SetTexture(int Stage, COMObject pTexture) => ptr.ref.lpVtbl.value
      .elementAt(65)
      .cast<Pointer<NativeFunction<_SetTexture_Native>>>()
      .value
      .asFunction<_SetTexture_Dart>()(ptr.ref.lpVtbl, Stage, pTexture);

  int GetTextureStageState(int Stage, int Type, Pointer<Uint32> pValue) =>
      ptr.ref.lpVtbl.value
              .elementAt(66)
              .cast<Pointer<NativeFunction<_GetTextureStageState_Native>>>()
              .value
              .asFunction<_GetTextureStageState_Dart>()(
          ptr.ref.lpVtbl, Stage, Type, pValue);

  int SetTextureStageState(int Stage, int Type, int Value) =>
      ptr.ref.lpVtbl.value
              .elementAt(67)
              .cast<Pointer<NativeFunction<_SetTextureStageState_Native>>>()
              .value
              .asFunction<_SetTextureStageState_Dart>()(
          ptr.ref.lpVtbl, Stage, Type, Value);

  int GetSamplerState(int Sampler, int Type, Pointer<Uint32> pValue) =>
      ptr.ref.lpVtbl.value
              .elementAt(68)
              .cast<Pointer<NativeFunction<_GetSamplerState_Native>>>()
              .value
              .asFunction<_GetSamplerState_Dart>()(
          ptr.ref.lpVtbl, Sampler, Type, pValue);

  int SetSamplerState(int Sampler, int Type, int Value) => ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<Pointer<NativeFunction<_SetSamplerState_Native>>>()
          .value
          .asFunction<_SetSamplerState_Dart>()(
      ptr.ref.lpVtbl, Sampler, Type, Value);

  int ValidateDevice(Pointer<Uint32> pNumPasses) => ptr.ref.lpVtbl.value
      .elementAt(70)
      .cast<Pointer<NativeFunction<_ValidateDevice_Native>>>()
      .value
      .asFunction<_ValidateDevice_Dart>()(ptr.ref.lpVtbl, pNumPasses);

  int SetPaletteEntries(int PaletteNumber, Pointer<PALETTEENTRY> pEntries) =>
      ptr.ref.lpVtbl.value
              .elementAt(71)
              .cast<Pointer<NativeFunction<_SetPaletteEntries_Native>>>()
              .value
              .asFunction<_SetPaletteEntries_Dart>()(
          ptr.ref.lpVtbl, PaletteNumber, pEntries);

  int GetPaletteEntries(int PaletteNumber, Pointer<PALETTEENTRY> pEntries) =>
      ptr.ref.lpVtbl.value
              .elementAt(72)
              .cast<Pointer<NativeFunction<_GetPaletteEntries_Native>>>()
              .value
              .asFunction<_GetPaletteEntries_Dart>()(
          ptr.ref.lpVtbl, PaletteNumber, pEntries);

  int SetCurrentTexturePalette(int PaletteNumber) => ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<Pointer<NativeFunction<_SetCurrentTexturePalette_Native>>>()
          .value
          .asFunction<_SetCurrentTexturePalette_Dart>()(
      ptr.ref.lpVtbl, PaletteNumber);

  int GetCurrentTexturePalette(Pointer<Uint32> PaletteNumber) =>
      ptr.ref.lpVtbl.value
              .elementAt(74)
              .cast<Pointer<NativeFunction<_GetCurrentTexturePalette_Native>>>()
              .value
              .asFunction<_GetCurrentTexturePalette_Dart>()(
          ptr.ref.lpVtbl, PaletteNumber);

  int SetScissorRect(Pointer<RECT> pRect) => ptr.ref.lpVtbl.value
      .elementAt(75)
      .cast<Pointer<NativeFunction<_SetScissorRect_Native>>>()
      .value
      .asFunction<_SetScissorRect_Dart>()(ptr.ref.lpVtbl, pRect);

  int GetScissorRect(Pointer<RECT> pRect) => ptr.ref.lpVtbl.value
      .elementAt(76)
      .cast<Pointer<NativeFunction<_GetScissorRect_Native>>>()
      .value
      .asFunction<_GetScissorRect_Dart>()(ptr.ref.lpVtbl, pRect);

  int SetSoftwareVertexProcessing(int bSoftware) => ptr.ref.lpVtbl.value
          .elementAt(77)
          .cast<Pointer<NativeFunction<_SetSoftwareVertexProcessing_Native>>>()
          .value
          .asFunction<_SetSoftwareVertexProcessing_Dart>()(
      ptr.ref.lpVtbl, bSoftware);

  int GetSoftwareVertexProcessing() => ptr.ref.lpVtbl.value
      .elementAt(78)
      .cast<Pointer<NativeFunction<_GetSoftwareVertexProcessing_Native>>>()
      .value
      .asFunction<_GetSoftwareVertexProcessing_Dart>()(ptr.ref.lpVtbl);

  int SetNPatchMode(double nSegments) => ptr.ref.lpVtbl.value
      .elementAt(79)
      .cast<Pointer<NativeFunction<_SetNPatchMode_Native>>>()
      .value
      .asFunction<_SetNPatchMode_Dart>()(ptr.ref.lpVtbl, nSegments);

  double GetNPatchMode() => ptr.ref.lpVtbl.value
      .elementAt(80)
      .cast<Pointer<NativeFunction<_GetNPatchMode_Native>>>()
      .value
      .asFunction<_GetNPatchMode_Dart>()(ptr.ref.lpVtbl);

  int DrawPrimitive(int PrimitiveType, int StartVertex, int PrimitiveCount) =>
      ptr.ref.lpVtbl.value
              .elementAt(81)
              .cast<Pointer<NativeFunction<_DrawPrimitive_Native>>>()
              .value
              .asFunction<_DrawPrimitive_Dart>()(
          ptr.ref.lpVtbl, PrimitiveType, StartVertex, PrimitiveCount);

  int DrawIndexedPrimitive(int param0, int BaseVertexIndex, int MinVertexIndex,
          int NumVertices, int startIndex, int primCount) =>
      ptr.ref.lpVtbl.value
              .elementAt(82)
              .cast<Pointer<NativeFunction<_DrawIndexedPrimitive_Native>>>()
              .value
              .asFunction<_DrawIndexedPrimitive_Dart>()(ptr.ref.lpVtbl, param0,
          BaseVertexIndex, MinVertexIndex, NumVertices, startIndex, primCount);

  int DrawPrimitiveUP(int PrimitiveType, int PrimitiveCount,
          Pointer pVertexStreamZeroData, int VertexStreamZeroStride) =>
      ptr.ref.lpVtbl.value
              .elementAt(83)
              .cast<Pointer<NativeFunction<_DrawPrimitiveUP_Native>>>()
              .value
              .asFunction<_DrawPrimitiveUP_Dart>()(
          ptr.ref.lpVtbl,
          PrimitiveType,
          PrimitiveCount,
          pVertexStreamZeroData,
          VertexStreamZeroStride);

  int DrawIndexedPrimitiveUP(
          int PrimitiveType,
          int MinVertexIndex,
          int NumVertices,
          int PrimitiveCount,
          Pointer pIndexData,
          int IndexDataFormat,
          Pointer pVertexStreamZeroData,
          int VertexStreamZeroStride) =>
      ptr.ref.lpVtbl.value
              .elementAt(84)
              .cast<Pointer<NativeFunction<_DrawIndexedPrimitiveUP_Native>>>()
              .value
              .asFunction<_DrawIndexedPrimitiveUP_Dart>()(
          ptr.ref.lpVtbl,
          PrimitiveType,
          MinVertexIndex,
          NumVertices,
          PrimitiveCount,
          pIndexData,
          IndexDataFormat,
          pVertexStreamZeroData,
          VertexStreamZeroStride);

  int ProcessVertices(int SrcStartIndex, int DestIndex, int VertexCount,
          COMObject pDestBuffer, COMObject pVertexDecl, int Flags) =>
      ptr.ref.lpVtbl.value
              .elementAt(85)
              .cast<Pointer<NativeFunction<_ProcessVertices_Native>>>()
              .value
              .asFunction<_ProcessVertices_Dart>()(
          ptr.ref.lpVtbl,
          SrcStartIndex,
          DestIndex,
          VertexCount,
          pDestBuffer,
          pVertexDecl,
          Flags);

  int CreateVertexDeclaration(Pointer<D3DVERTEXELEMENT9> pVertexElements,
          Pointer<COMObject> ppDecl) =>
      ptr.ref.lpVtbl.value
              .elementAt(86)
              .cast<Pointer<NativeFunction<_CreateVertexDeclaration_Native>>>()
              .value
              .asFunction<_CreateVertexDeclaration_Dart>()(
          ptr.ref.lpVtbl, pVertexElements, ppDecl);

  int SetVertexDeclaration(COMObject pDecl) => ptr.ref.lpVtbl.value
      .elementAt(87)
      .cast<Pointer<NativeFunction<_SetVertexDeclaration_Native>>>()
      .value
      .asFunction<_SetVertexDeclaration_Dart>()(ptr.ref.lpVtbl, pDecl);

  int GetVertexDeclaration(Pointer<COMObject> ppDecl) => ptr.ref.lpVtbl.value
      .elementAt(88)
      .cast<Pointer<NativeFunction<_GetVertexDeclaration_Native>>>()
      .value
      .asFunction<_GetVertexDeclaration_Dart>()(ptr.ref.lpVtbl, ppDecl);

  int SetFVF(int FVF) => ptr.ref.lpVtbl.value
      .elementAt(89)
      .cast<Pointer<NativeFunction<_SetFVF_Native>>>()
      .value
      .asFunction<_SetFVF_Dart>()(ptr.ref.lpVtbl, FVF);

  int GetFVF(Pointer<Uint32> pFVF) => ptr.ref.lpVtbl.value
      .elementAt(90)
      .cast<Pointer<NativeFunction<_GetFVF_Native>>>()
      .value
      .asFunction<_GetFVF_Dart>()(ptr.ref.lpVtbl, pFVF);

  int CreateVertexShader(
          Pointer<Uint32> pFunction, Pointer<COMObject> ppShader) =>
      ptr.ref.lpVtbl.value
              .elementAt(91)
              .cast<Pointer<NativeFunction<_CreateVertexShader_Native>>>()
              .value
              .asFunction<_CreateVertexShader_Dart>()(
          ptr.ref.lpVtbl, pFunction, ppShader);

  int SetVertexShader(COMObject pShader) => ptr.ref.lpVtbl.value
      .elementAt(92)
      .cast<Pointer<NativeFunction<_SetVertexShader_Native>>>()
      .value
      .asFunction<_SetVertexShader_Dart>()(ptr.ref.lpVtbl, pShader);

  int GetVertexShader(Pointer<COMObject> ppShader) => ptr.ref.lpVtbl.value
      .elementAt(93)
      .cast<Pointer<NativeFunction<_GetVertexShader_Native>>>()
      .value
      .asFunction<_GetVertexShader_Dart>()(ptr.ref.lpVtbl, ppShader);

  int SetVertexShaderConstantF(
          int StartRegister, Pointer<Float> pConstantData, int Vector4fCount) =>
      ptr.ref.lpVtbl.value
              .elementAt(94)
              .cast<Pointer<NativeFunction<_SetVertexShaderConstantF_Native>>>()
              .value
              .asFunction<_SetVertexShaderConstantF_Dart>()(
          ptr.ref.lpVtbl, StartRegister, pConstantData, Vector4fCount);

  int GetVertexShaderConstantF(
          int StartRegister, Pointer<Float> pConstantData, int Vector4fCount) =>
      ptr.ref.lpVtbl.value
              .elementAt(95)
              .cast<Pointer<NativeFunction<_GetVertexShaderConstantF_Native>>>()
              .value
              .asFunction<_GetVertexShaderConstantF_Dart>()(
          ptr.ref.lpVtbl, StartRegister, pConstantData, Vector4fCount);

  int SetVertexShaderConstantI(
          int StartRegister, Pointer<Int32> pConstantData, int Vector4iCount) =>
      ptr.ref.lpVtbl.value
              .elementAt(96)
              .cast<Pointer<NativeFunction<_SetVertexShaderConstantI_Native>>>()
              .value
              .asFunction<_SetVertexShaderConstantI_Dart>()(
          ptr.ref.lpVtbl, StartRegister, pConstantData, Vector4iCount);

  int GetVertexShaderConstantI(
          int StartRegister, Pointer<Int32> pConstantData, int Vector4iCount) =>
      ptr.ref.lpVtbl.value
              .elementAt(97)
              .cast<Pointer<NativeFunction<_GetVertexShaderConstantI_Native>>>()
              .value
              .asFunction<_GetVertexShaderConstantI_Dart>()(
          ptr.ref.lpVtbl, StartRegister, pConstantData, Vector4iCount);

  int SetVertexShaderConstantB(
          int StartRegister, Pointer<Int32> pConstantData, int BoolCount) =>
      ptr.ref.lpVtbl.value
              .elementAt(98)
              .cast<Pointer<NativeFunction<_SetVertexShaderConstantB_Native>>>()
              .value
              .asFunction<_SetVertexShaderConstantB_Dart>()(
          ptr.ref.lpVtbl, StartRegister, pConstantData, BoolCount);

  int GetVertexShaderConstantB(
          int StartRegister, Pointer<Int32> pConstantData, int BoolCount) =>
      ptr.ref.lpVtbl.value
              .elementAt(99)
              .cast<Pointer<NativeFunction<_GetVertexShaderConstantB_Native>>>()
              .value
              .asFunction<_GetVertexShaderConstantB_Dart>()(
          ptr.ref.lpVtbl, StartRegister, pConstantData, BoolCount);

  int SetStreamSource(int StreamNumber, COMObject pStreamData,
          int OffsetInBytes, int Stride) =>
      ptr.ref.lpVtbl.value
              .elementAt(100)
              .cast<Pointer<NativeFunction<_SetStreamSource_Native>>>()
              .value
              .asFunction<_SetStreamSource_Dart>()(
          ptr.ref.lpVtbl, StreamNumber, pStreamData, OffsetInBytes, Stride);

  int GetStreamSource(int StreamNumber, Pointer<COMObject> ppStreamData,
          Pointer<Uint32> pOffsetInBytes, Pointer<Uint32> pStride) =>
      ptr.ref.lpVtbl.value
              .elementAt(101)
              .cast<Pointer<NativeFunction<_GetStreamSource_Native>>>()
              .value
              .asFunction<_GetStreamSource_Dart>()(
          ptr.ref.lpVtbl, StreamNumber, ppStreamData, pOffsetInBytes, pStride);

  int SetStreamSourceFreq(int StreamNumber, int Setting) => ptr.ref.lpVtbl.value
          .elementAt(102)
          .cast<Pointer<NativeFunction<_SetStreamSourceFreq_Native>>>()
          .value
          .asFunction<_SetStreamSourceFreq_Dart>()(
      ptr.ref.lpVtbl, StreamNumber, Setting);

  int GetStreamSourceFreq(int StreamNumber, Pointer<Uint32> pSetting) =>
      ptr.ref.lpVtbl.value
              .elementAt(103)
              .cast<Pointer<NativeFunction<_GetStreamSourceFreq_Native>>>()
              .value
              .asFunction<_GetStreamSourceFreq_Dart>()(
          ptr.ref.lpVtbl, StreamNumber, pSetting);

  int SetIndices(COMObject pIndexData) => ptr.ref.lpVtbl.value
      .elementAt(104)
      .cast<Pointer<NativeFunction<_SetIndices_Native>>>()
      .value
      .asFunction<_SetIndices_Dart>()(ptr.ref.lpVtbl, pIndexData);

  int GetIndices(Pointer<COMObject> ppIndexData) => ptr.ref.lpVtbl.value
      .elementAt(105)
      .cast<Pointer<NativeFunction<_GetIndices_Native>>>()
      .value
      .asFunction<_GetIndices_Dart>()(ptr.ref.lpVtbl, ppIndexData);

  int CreatePixelShader(
          Pointer<Uint32> pFunction, Pointer<COMObject> ppShader) =>
      ptr.ref.lpVtbl.value
              .elementAt(106)
              .cast<Pointer<NativeFunction<_CreatePixelShader_Native>>>()
              .value
              .asFunction<_CreatePixelShader_Dart>()(
          ptr.ref.lpVtbl, pFunction, ppShader);

  int SetPixelShader(COMObject pShader) => ptr.ref.lpVtbl.value
      .elementAt(107)
      .cast<Pointer<NativeFunction<_SetPixelShader_Native>>>()
      .value
      .asFunction<_SetPixelShader_Dart>()(ptr.ref.lpVtbl, pShader);

  int GetPixelShader(Pointer<COMObject> ppShader) => ptr.ref.lpVtbl.value
      .elementAt(108)
      .cast<Pointer<NativeFunction<_GetPixelShader_Native>>>()
      .value
      .asFunction<_GetPixelShader_Dart>()(ptr.ref.lpVtbl, ppShader);

  int SetPixelShaderConstantF(
          int StartRegister, Pointer<Float> pConstantData, int Vector4fCount) =>
      ptr.ref.lpVtbl.value
              .elementAt(109)
              .cast<Pointer<NativeFunction<_SetPixelShaderConstantF_Native>>>()
              .value
              .asFunction<_SetPixelShaderConstantF_Dart>()(
          ptr.ref.lpVtbl, StartRegister, pConstantData, Vector4fCount);

  int GetPixelShaderConstantF(
          int StartRegister, Pointer<Float> pConstantData, int Vector4fCount) =>
      ptr.ref.lpVtbl.value
              .elementAt(110)
              .cast<Pointer<NativeFunction<_GetPixelShaderConstantF_Native>>>()
              .value
              .asFunction<_GetPixelShaderConstantF_Dart>()(
          ptr.ref.lpVtbl, StartRegister, pConstantData, Vector4fCount);

  int SetPixelShaderConstantI(
          int StartRegister, Pointer<Int32> pConstantData, int Vector4iCount) =>
      ptr.ref.lpVtbl.value
              .elementAt(111)
              .cast<Pointer<NativeFunction<_SetPixelShaderConstantI_Native>>>()
              .value
              .asFunction<_SetPixelShaderConstantI_Dart>()(
          ptr.ref.lpVtbl, StartRegister, pConstantData, Vector4iCount);

  int GetPixelShaderConstantI(
          int StartRegister, Pointer<Int32> pConstantData, int Vector4iCount) =>
      ptr.ref.lpVtbl.value
              .elementAt(112)
              .cast<Pointer<NativeFunction<_GetPixelShaderConstantI_Native>>>()
              .value
              .asFunction<_GetPixelShaderConstantI_Dart>()(
          ptr.ref.lpVtbl, StartRegister, pConstantData, Vector4iCount);

  int SetPixelShaderConstantB(
          int StartRegister, Pointer<Int32> pConstantData, int BoolCount) =>
      ptr.ref.lpVtbl.value
              .elementAt(113)
              .cast<Pointer<NativeFunction<_SetPixelShaderConstantB_Native>>>()
              .value
              .asFunction<_SetPixelShaderConstantB_Dart>()(
          ptr.ref.lpVtbl, StartRegister, pConstantData, BoolCount);

  int GetPixelShaderConstantB(
          int StartRegister, Pointer<Int32> pConstantData, int BoolCount) =>
      ptr.ref.lpVtbl.value
              .elementAt(114)
              .cast<Pointer<NativeFunction<_GetPixelShaderConstantB_Native>>>()
              .value
              .asFunction<_GetPixelShaderConstantB_Dart>()(
          ptr.ref.lpVtbl, StartRegister, pConstantData, BoolCount);

  int DrawRectPatch(int Handle, Pointer<Float> pNumSegs,
          Pointer<D3DRECTPATCH_INFO> pRectPatchInfo) =>
      ptr.ref.lpVtbl.value
              .elementAt(115)
              .cast<Pointer<NativeFunction<_DrawRectPatch_Native>>>()
              .value
              .asFunction<_DrawRectPatch_Dart>()(
          ptr.ref.lpVtbl, Handle, pNumSegs, pRectPatchInfo);

  int DrawTriPatch(int Handle, Pointer<Float> pNumSegs,
          Pointer<D3DTRIPATCH_INFO> pTriPatchInfo) =>
      ptr.ref.lpVtbl.value
              .elementAt(116)
              .cast<Pointer<NativeFunction<_DrawTriPatch_Native>>>()
              .value
              .asFunction<_DrawTriPatch_Dart>()(
          ptr.ref.lpVtbl, Handle, pNumSegs, pTriPatchInfo);

  int DeletePatch(int Handle) => ptr.ref.lpVtbl.value
      .elementAt(117)
      .cast<Pointer<NativeFunction<_DeletePatch_Native>>>()
      .value
      .asFunction<_DeletePatch_Dart>()(ptr.ref.lpVtbl, Handle);

  int CreateQuery(int Type, Pointer<COMObject> ppQuery) => ptr.ref.lpVtbl.value
      .elementAt(118)
      .cast<Pointer<NativeFunction<_CreateQuery_Native>>>()
      .value
      .asFunction<_CreateQuery_Dart>()(ptr.ref.lpVtbl, Type, ppQuery);
}
