// ID3D11DeviceContext1.dart

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

import '../../graphics/direct3d11/ID3D11DeviceContext.dart';
import '../../graphics/direct3d11/ID3D11Resource.dart';
import '../../graphics/direct3d11/structs.g.dart';
import '../../graphics/direct3d11/ID3D11View.dart';
import '../../graphics/direct3d11/ID3D11Buffer.dart';
import '../../graphics/direct3d11/ID3DDeviceContextState.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D11DeviceContext1 = '{BB2C6FAA-B5FB-4082-8E6B-388B8CFA90E1}';

/// {@category Interface}
/// {@category com}
class ID3D11DeviceContext1 extends ID3D11DeviceContext {
  // vtable begins at 115, is 19 entries long.
  ID3D11DeviceContext1(Pointer<COMObject> ptr) : super(ptr);

  void CopySubresourceRegion1(
    Pointer<COMObject> pDstResource,
    int DstSubresource,
    int DstX,
    int DstY,
    int DstZ,
    Pointer<COMObject> pSrcResource,
    int SrcSubresource,
    Pointer<D3D11_BOX> pSrcBox,
    int CopyFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(115)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDstResource,
            Uint32 DstSubresource,
            Uint32 DstX,
            Uint32 DstY,
            Uint32 DstZ,
            Pointer<COMObject> pSrcResource,
            Uint32 SrcSubresource,
            Pointer<D3D11_BOX> pSrcBox,
            Uint32 CopyFlags,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDstResource,
            int DstSubresource,
            int DstX,
            int DstY,
            int DstZ,
            Pointer<COMObject> pSrcResource,
            int SrcSubresource,
            Pointer<D3D11_BOX> pSrcBox,
            int CopyFlags,
          )>()(
        ptr.ref.lpVtbl,
        pDstResource,
        DstSubresource,
        DstX,
        DstY,
        DstZ,
        pSrcResource,
        SrcSubresource,
        pSrcBox,
        CopyFlags,
      );

  void UpdateSubresource1(
    Pointer<COMObject> pDstResource,
    int DstSubresource,
    Pointer<D3D11_BOX> pDstBox,
    Pointer pSrcData,
    int SrcRowPitch,
    int SrcDepthPitch,
    int CopyFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(116)
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
            Uint32 CopyFlags,
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
            int CopyFlags,
          )>()(
        ptr.ref.lpVtbl,
        pDstResource,
        DstSubresource,
        pDstBox,
        pSrcData,
        SrcRowPitch,
        SrcDepthPitch,
        CopyFlags,
      );

  void DiscardResource(
    Pointer<COMObject> pResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(117)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pResource,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pResource,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
      );

  void DiscardView(
    Pointer<COMObject> pResourceView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(118)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pResourceView,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pResourceView,
          )>()(
        ptr.ref.lpVtbl,
        pResourceView,
      );

  void VSSetConstantBuffers1(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
    Pointer<Uint32> pFirstConstant,
    Pointer<Uint32> pNumConstants,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(119)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
        pFirstConstant,
        pNumConstants,
      );

  void HSSetConstantBuffers1(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
    Pointer<Uint32> pFirstConstant,
    Pointer<Uint32> pNumConstants,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(120)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
        pFirstConstant,
        pNumConstants,
      );

  void DSSetConstantBuffers1(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
    Pointer<Uint32> pFirstConstant,
    Pointer<Uint32> pNumConstants,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(121)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
        pFirstConstant,
        pNumConstants,
      );

  void GSSetConstantBuffers1(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
    Pointer<Uint32> pFirstConstant,
    Pointer<Uint32> pNumConstants,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(122)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
        pFirstConstant,
        pNumConstants,
      );

  void PSSetConstantBuffers1(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
    Pointer<Uint32> pFirstConstant,
    Pointer<Uint32> pNumConstants,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(123)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
        pFirstConstant,
        pNumConstants,
      );

  void CSSetConstantBuffers1(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
    Pointer<Uint32> pFirstConstant,
    Pointer<Uint32> pNumConstants,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(124)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
        pFirstConstant,
        pNumConstants,
      );

  void VSGetConstantBuffers1(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
    Pointer<Uint32> pFirstConstant,
    Pointer<Uint32> pNumConstants,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(125)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
        pFirstConstant,
        pNumConstants,
      );

  void HSGetConstantBuffers1(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
    Pointer<Uint32> pFirstConstant,
    Pointer<Uint32> pNumConstants,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(126)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
        pFirstConstant,
        pNumConstants,
      );

  void DSGetConstantBuffers1(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
    Pointer<Uint32> pFirstConstant,
    Pointer<Uint32> pNumConstants,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(127)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
        pFirstConstant,
        pNumConstants,
      );

  void GSGetConstantBuffers1(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
    Pointer<Uint32> pFirstConstant,
    Pointer<Uint32> pNumConstants,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(128)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
        pFirstConstant,
        pNumConstants,
      );

  void PSGetConstantBuffers1(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
    Pointer<Uint32> pFirstConstant,
    Pointer<Uint32> pNumConstants,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(129)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
        pFirstConstant,
        pNumConstants,
      );

  void CSGetConstantBuffers1(
    int StartSlot,
    int NumBuffers,
    Pointer<Pointer<COMObject>> ppConstantBuffers,
    Pointer<Uint32> pFirstConstant,
    Pointer<Uint32> pNumConstants,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(130)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 StartSlot,
            Uint32 NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int StartSlot,
            int NumBuffers,
            Pointer<Pointer<COMObject>> ppConstantBuffers,
            Pointer<Uint32> pFirstConstant,
            Pointer<Uint32> pNumConstants,
          )>()(
        ptr.ref.lpVtbl,
        StartSlot,
        NumBuffers,
        ppConstantBuffers,
        pFirstConstant,
        pNumConstants,
      );

  void SwapDeviceContextState(
    Pointer<COMObject> pState,
    Pointer<Pointer<COMObject>> ppPreviousState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(131)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pState,
            Pointer<Pointer<COMObject>> ppPreviousState,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pState,
            Pointer<Pointer<COMObject>> ppPreviousState,
          )>()(
        ptr.ref.lpVtbl,
        pState,
        ppPreviousState,
      );

  void ClearView(
    Pointer<COMObject> pView,
    Pointer<Float> Color,
    Pointer<RECT> pRect,
    int NumRects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(132)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pView,
            Pointer<Float> Color,
            Pointer<RECT> pRect,
            Uint32 NumRects,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pView,
            Pointer<Float> Color,
            Pointer<RECT> pRect,
            int NumRects,
          )>()(
        ptr.ref.lpVtbl,
        pView,
        Color,
        pRect,
        NumRects,
      );

  void DiscardView1(
    Pointer<COMObject> pResourceView,
    Pointer<RECT> pRects,
    int NumRects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(133)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pResourceView,
            Pointer<RECT> pRects,
            Uint32 NumRects,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pResourceView,
            Pointer<RECT> pRects,
            int NumRects,
          )>()(
        ptr.ref.lpVtbl,
        pResourceView,
        pRects,
        NumRects,
      );
}
