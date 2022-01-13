// IPdfRendererNative.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../specialTypes.dart';
import '../../../graphics/dxgi/IDXGISurface.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/winrt/pdf/structs.g.dart';
import '../../../graphics/direct2d/ID2D1DeviceContext.dart';

/// @nodoc
const IID_IPdfRendererNative = '{7D9DCD91-D277-4947-8527-07A0DAEDA94A}';

/// {@category Interface}
/// {@category com}
class IPdfRendererNative extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPdfRendererNative(Pointer<COMObject> ptr) : super(ptr);

  int RenderPageToSurface(
    Pointer<COMObject> pdfPage,
    Pointer<COMObject> pSurface,
    POINT offset,
    Pointer<PDF_RENDER_PARAMS> pRenderParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdfPage,
            Pointer<COMObject> pSurface,
            POINT offset,
            Pointer<PDF_RENDER_PARAMS> pRenderParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdfPage,
            Pointer<COMObject> pSurface,
            POINT offset,
            Pointer<PDF_RENDER_PARAMS> pRenderParams,
          )>()(
        ptr.ref.lpVtbl,
        pdfPage,
        pSurface,
        offset,
        pRenderParams,
      );

  int RenderPageToDeviceContext(
    Pointer<COMObject> pdfPage,
    Pointer<COMObject> pD2DDeviceContext,
    Pointer<PDF_RENDER_PARAMS> pRenderParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdfPage,
            Pointer<COMObject> pD2DDeviceContext,
            Pointer<PDF_RENDER_PARAMS> pRenderParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdfPage,
            Pointer<COMObject> pD2DDeviceContext,
            Pointer<PDF_RENDER_PARAMS> pRenderParams,
          )>()(
        ptr.ref.lpVtbl,
        pdfPage,
        pD2DDeviceContext,
        pRenderParams,
      );
}
