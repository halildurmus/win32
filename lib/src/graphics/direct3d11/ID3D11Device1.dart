// ID3D11Device1.dart

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

import '../../graphics/direct3d11/ID3D11Device.dart';
import '../../graphics/direct3d11/ID3D11DeviceContext1.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d11/structs.g.dart';
import '../../graphics/direct3d11/ID3D11BlendState1.dart';
import '../../graphics/direct3d11/ID3D11RasterizerState1.dart';
import '../../graphics/direct3d/structs.g.dart';
import '../../graphics/direct3d11/ID3DDeviceContextState.dart';

/// @nodoc
const IID_ID3D11Device1 = '{A04BFB29-08EF-43D6-A49C-A9BDBDCBE686}';

/// {@category Interface}
/// {@category com}
class ID3D11Device1 extends ID3D11Device {
  // vtable begins at 43, is 7 entries long.
  ID3D11Device1(Pointer<COMObject> ptr) : super(ptr);

  void GetImmediateContext1(
    Pointer<Pointer<COMObject>> ppImmediateContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
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

  int CreateDeferredContext1(
    int ContextFlags,
    Pointer<Pointer<COMObject>> ppDeferredContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
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

  int CreateBlendState1(
    Pointer<D3D11_BLEND_DESC1> pBlendStateDesc,
    Pointer<Pointer<COMObject>> ppBlendState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_BLEND_DESC1> pBlendStateDesc,
            Pointer<Pointer<COMObject>> ppBlendState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_BLEND_DESC1> pBlendStateDesc,
            Pointer<Pointer<COMObject>> ppBlendState,
          )>()(
        ptr.ref.lpVtbl,
        pBlendStateDesc,
        ppBlendState,
      );

  int CreateRasterizerState1(
    Pointer<D3D11_RASTERIZER_DESC1> pRasterizerDesc,
    Pointer<Pointer<COMObject>> ppRasterizerState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_RASTERIZER_DESC1> pRasterizerDesc,
            Pointer<Pointer<COMObject>> ppRasterizerState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_RASTERIZER_DESC1> pRasterizerDesc,
            Pointer<Pointer<COMObject>> ppRasterizerState,
          )>()(
        ptr.ref.lpVtbl,
        pRasterizerDesc,
        ppRasterizerState,
      );

  int CreateDeviceContextState(
    int Flags,
    Pointer<Int32> pFeatureLevels,
    int FeatureLevels,
    int SDKVersion,
    Pointer<GUID> EmulatedInterface,
    Pointer<Int32> pChosenFeatureLevel,
    Pointer<Pointer<COMObject>> ppContextState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Pointer<Int32> pFeatureLevels,
            Uint32 FeatureLevels,
            Uint32 SDKVersion,
            Pointer<GUID> EmulatedInterface,
            Pointer<Int32> pChosenFeatureLevel,
            Pointer<Pointer<COMObject>> ppContextState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Int32> pFeatureLevels,
            int FeatureLevels,
            int SDKVersion,
            Pointer<GUID> EmulatedInterface,
            Pointer<Int32> pChosenFeatureLevel,
            Pointer<Pointer<COMObject>> ppContextState,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        pFeatureLevels,
        FeatureLevels,
        SDKVersion,
        EmulatedInterface,
        pChosenFeatureLevel,
        ppContextState,
      );

  int OpenSharedResource1(
    int hResource,
    Pointer<GUID> returnedInterface,
    Pointer<Pointer> ppResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hResource,
            Pointer<GUID> returnedInterface,
            Pointer<Pointer> ppResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hResource,
            Pointer<GUID> returnedInterface,
            Pointer<Pointer> ppResource,
          )>()(
        ptr.ref.lpVtbl,
        hResource,
        returnedInterface,
        ppResource,
      );

  int OpenSharedResourceByName(
    Pointer<Utf16> lpName,
    int dwDesiredAccess,
    Pointer<GUID> returnedInterface,
    Pointer<Pointer> ppResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpName,
            Uint32 dwDesiredAccess,
            Pointer<GUID> returnedInterface,
            Pointer<Pointer> ppResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpName,
            int dwDesiredAccess,
            Pointer<GUID> returnedInterface,
            Pointer<Pointer> ppResource,
          )>()(
        ptr.ref.lpVtbl,
        lpName,
        dwDesiredAccess,
        returnedInterface,
        ppResource,
      );
}
