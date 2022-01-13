// IVMRImageCompositor9.dart

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

import '../../system/com/IUnknown.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DSurface9.dart';

/// @nodoc
const IID_IVMRImageCompositor9 = '{4A5C89EB-DF51-4654-AC2A-E48E02BBABF6}';

/// {@category Interface}
/// {@category com}
class IVMRImageCompositor9 extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IVMRImageCompositor9(Pointer<COMObject> ptr) : super(ptr);

  int InitCompositionDevice(
    Pointer<COMObject> pD3DDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pD3DDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pD3DDevice,
          )>()(
        ptr.ref.lpVtbl,
        pD3DDevice,
      );

  int TermCompositionDevice(
    Pointer<COMObject> pD3DDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pD3DDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pD3DDevice,
          )>()(
        ptr.ref.lpVtbl,
        pD3DDevice,
      );

  int SetStreamMediaType(
    int dwStrmID,
    Pointer<AM_MEDIA_TYPE> pmt,
    int fTexture,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStrmID,
            Pointer<AM_MEDIA_TYPE> pmt,
            Int32 fTexture,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStrmID,
            Pointer<AM_MEDIA_TYPE> pmt,
            int fTexture,
          )>()(
        ptr.ref.lpVtbl,
        dwStrmID,
        pmt,
        fTexture,
      );

  int CompositeImage(
    Pointer<COMObject> pD3DDevice,
    Pointer<COMObject> pddsRenderTarget,
    Pointer<AM_MEDIA_TYPE> pmtRenderTarget,
    int rtStart,
    int rtEnd,
    int dwClrBkGnd,
    Pointer<VMR9VideoStreamInfo> pVideoStreamInfo,
    int cStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pD3DDevice,
            Pointer<COMObject> pddsRenderTarget,
            Pointer<AM_MEDIA_TYPE> pmtRenderTarget,
            Int64 rtStart,
            Int64 rtEnd,
            Uint32 dwClrBkGnd,
            Pointer<VMR9VideoStreamInfo> pVideoStreamInfo,
            Uint32 cStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pD3DDevice,
            Pointer<COMObject> pddsRenderTarget,
            Pointer<AM_MEDIA_TYPE> pmtRenderTarget,
            int rtStart,
            int rtEnd,
            int dwClrBkGnd,
            Pointer<VMR9VideoStreamInfo> pVideoStreamInfo,
            int cStreams,
          )>()(
        ptr.ref.lpVtbl,
        pD3DDevice,
        pddsRenderTarget,
        pmtRenderTarget,
        rtStart,
        rtEnd,
        dwClrBkGnd,
        pVideoStreamInfo,
        cStreams,
      );
}
