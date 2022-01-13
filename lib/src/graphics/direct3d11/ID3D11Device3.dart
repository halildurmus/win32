// ID3D11Device3.dart

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

import '../../graphics/direct3d11/ID3D11Device2.dart';
import '../../graphics/direct3d11/structs.g.dart';
import '../../graphics/direct3d11/ID3D11Texture2D1.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d11/ID3D11Texture3D1.dart';
import '../../graphics/direct3d11/ID3D11RasterizerState2.dart';
import '../../graphics/direct3d11/ID3D11Resource.dart';
import '../../graphics/direct3d11/ID3D11ShaderResourceView1.dart';
import '../../graphics/direct3d11/ID3D11UnorderedAccessView1.dart';
import '../../graphics/direct3d11/ID3D11RenderTargetView1.dart';
import '../../graphics/direct3d11/ID3D11Query1.dart';
import '../../graphics/direct3d11/ID3D11DeviceContext3.dart';

/// @nodoc
const IID_ID3D11Device3 = '{A05C8C37-D2C6-4732-B3A0-9CE0B0DC9AE6}';

/// {@category Interface}
/// {@category com}
class ID3D11Device3 extends ID3D11Device2 {
  // vtable begins at 54, is 11 entries long.
  ID3D11Device3(Pointer<COMObject> ptr) : super(ptr);

  int CreateTexture2D1(
    Pointer<D3D11_TEXTURE2D_DESC1> pDesc1,
    Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
    Pointer<Pointer<COMObject>> ppTexture2D,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_TEXTURE2D_DESC1> pDesc1,
            Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppTexture2D,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_TEXTURE2D_DESC1> pDesc1,
            Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppTexture2D,
          )>()(
        ptr.ref.lpVtbl,
        pDesc1,
        pInitialData,
        ppTexture2D,
      );

  int CreateTexture3D1(
    Pointer<D3D11_TEXTURE3D_DESC1> pDesc1,
    Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
    Pointer<Pointer<COMObject>> ppTexture3D,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_TEXTURE3D_DESC1> pDesc1,
            Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppTexture3D,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_TEXTURE3D_DESC1> pDesc1,
            Pointer<D3D11_SUBRESOURCE_DATA> pInitialData,
            Pointer<Pointer<COMObject>> ppTexture3D,
          )>()(
        ptr.ref.lpVtbl,
        pDesc1,
        pInitialData,
        ppTexture3D,
      );

  int CreateRasterizerState2(
    Pointer<D3D11_RASTERIZER_DESC2> pRasterizerDesc,
    Pointer<Pointer<COMObject>> ppRasterizerState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_RASTERIZER_DESC2> pRasterizerDesc,
            Pointer<Pointer<COMObject>> ppRasterizerState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_RASTERIZER_DESC2> pRasterizerDesc,
            Pointer<Pointer<COMObject>> ppRasterizerState,
          )>()(
        ptr.ref.lpVtbl,
        pRasterizerDesc,
        ppRasterizerState,
      );

  int CreateShaderResourceView1(
    Pointer<COMObject> pResource,
    Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC1> pDesc1,
    Pointer<Pointer<COMObject>> ppSRView1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC1> pDesc1,
            Pointer<Pointer<COMObject>> ppSRView1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC1> pDesc1,
            Pointer<Pointer<COMObject>> ppSRView1,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pDesc1,
        ppSRView1,
      );

  int CreateUnorderedAccessView1(
    Pointer<COMObject> pResource,
    Pointer<D3D11_UNORDERED_ACCESS_VIEW_DESC1> pDesc1,
    Pointer<Pointer<COMObject>> ppUAView1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D11_UNORDERED_ACCESS_VIEW_DESC1> pDesc1,
            Pointer<Pointer<COMObject>> ppUAView1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D11_UNORDERED_ACCESS_VIEW_DESC1> pDesc1,
            Pointer<Pointer<COMObject>> ppUAView1,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pDesc1,
        ppUAView1,
      );

  int CreateRenderTargetView1(
    Pointer<COMObject> pResource,
    Pointer<D3D11_RENDER_TARGET_VIEW_DESC1> pDesc1,
    Pointer<Pointer<COMObject>> ppRTView1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D11_RENDER_TARGET_VIEW_DESC1> pDesc1,
            Pointer<Pointer<COMObject>> ppRTView1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D11_RENDER_TARGET_VIEW_DESC1> pDesc1,
            Pointer<Pointer<COMObject>> ppRTView1,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pDesc1,
        ppRTView1,
      );

  int CreateQuery1(
    Pointer<D3D11_QUERY_DESC1> pQueryDesc1,
    Pointer<Pointer<COMObject>> ppQuery1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_QUERY_DESC1> pQueryDesc1,
            Pointer<Pointer<COMObject>> ppQuery1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_QUERY_DESC1> pQueryDesc1,
            Pointer<Pointer<COMObject>> ppQuery1,
          )>()(
        ptr.ref.lpVtbl,
        pQueryDesc1,
        ppQuery1,
      );

  void GetImmediateContext3(
    Pointer<Pointer<COMObject>> ppImmediateContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
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

  int CreateDeferredContext3(
    int ContextFlags,
    Pointer<Pointer<COMObject>> ppDeferredContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
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

  void WriteToSubresource(
    Pointer<COMObject> pDstResource,
    int DstSubresource,
    Pointer<D3D11_BOX> pDstBox,
    Pointer pSrcData,
    int SrcRowPitch,
    int SrcDepthPitch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDstResource,
            Uint32 DstSubresource,
            Pointer<D3D11_BOX> pDstBox,
            Pointer pSrcData,
            Uint32 SrcRowPitch,
            Uint32 SrcDepthPitch,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDstResource,
            int DstSubresource,
            Pointer<D3D11_BOX> pDstBox,
            Pointer pSrcData,
            int SrcRowPitch,
            int SrcDepthPitch,
          )>()(
        ptr.ref.lpVtbl,
        pDstResource,
        DstSubresource,
        pDstBox,
        pSrcData,
        SrcRowPitch,
        SrcDepthPitch,
      );

  void ReadFromSubresource(
    Pointer pDstData,
    int DstRowPitch,
    int DstDepthPitch,
    Pointer<COMObject> pSrcResource,
    int SrcSubresource,
    Pointer<D3D11_BOX> pSrcBox,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer pDstData,
            Uint32 DstRowPitch,
            Uint32 DstDepthPitch,
            Pointer<COMObject> pSrcResource,
            Uint32 SrcSubresource,
            Pointer<D3D11_BOX> pSrcBox,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer pDstData,
            int DstRowPitch,
            int DstDepthPitch,
            Pointer<COMObject> pSrcResource,
            int SrcSubresource,
            Pointer<D3D11_BOX> pSrcBox,
          )>()(
        ptr.ref.lpVtbl,
        pDstData,
        DstRowPitch,
        DstDepthPitch,
        pSrcResource,
        SrcSubresource,
        pSrcBox,
      );
}
