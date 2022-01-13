// IVMRImageCompositor.dart

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
import '../../graphics/directdraw/IDirectDrawSurface7.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IVMRImageCompositor = '{7A4FB5AF-479F-4074-BB40-CE6722E43C82}';

/// {@category Interface}
/// {@category com}
class IVMRImageCompositor extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IVMRImageCompositor(Pointer<COMObject> ptr) : super(ptr);

  int InitCompositionTarget(
    Pointer<COMObject> pD3DDevice,
    Pointer<COMObject> pddsRenderTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pD3DDevice,
            Pointer<COMObject> pddsRenderTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pD3DDevice,
            Pointer<COMObject> pddsRenderTarget,
          )>()(
        ptr.ref.lpVtbl,
        pD3DDevice,
        pddsRenderTarget,
      );

  int TermCompositionTarget(
    Pointer<COMObject> pD3DDevice,
    Pointer<COMObject> pddsRenderTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pD3DDevice,
            Pointer<COMObject> pddsRenderTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pD3DDevice,
            Pointer<COMObject> pddsRenderTarget,
          )>()(
        ptr.ref.lpVtbl,
        pD3DDevice,
        pddsRenderTarget,
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
    Pointer<VMRVIDEOSTREAMINFO> pVideoStreamInfo,
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
            Pointer<VMRVIDEOSTREAMINFO> pVideoStreamInfo,
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
            Pointer<VMRVIDEOSTREAMINFO> pVideoStreamInfo,
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
