// IWICBitmapFrameEncode.dart

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
import '../../system/com/structuredstorage/IPropertyBag2.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/IWICColorContext.dart';
import '../../graphics/imaging/IWICPalette.dart';
import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../graphics/imaging/structs.g.dart';
import '../../graphics/imaging/IWICMetadataQueryWriter.dart';

/// @nodoc
const IID_IWICBitmapFrameEncode = '{00000105-A8F2-4877-BA0A-FD2B6645FB94}';

/// {@category Interface}
/// {@category com}
class IWICBitmapFrameEncode extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IWICBitmapFrameEncode(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pIEncoderOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIEncoderOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIEncoderOptions,
          )>()(
        ptr.ref.lpVtbl,
        pIEncoderOptions,
      );

  int SetSize(
    int uiWidth,
    int uiHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiWidth,
            Uint32 uiHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiWidth,
            int uiHeight,
          )>()(
        ptr.ref.lpVtbl,
        uiWidth,
        uiHeight,
      );

  int SetResolution(
    double dpiX,
    double dpiY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double dpiX,
            Double dpiY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double dpiX,
            double dpiY,
          )>()(
        ptr.ref.lpVtbl,
        dpiX,
        dpiY,
      );

  int SetPixelFormat(
    Pointer<GUID> pPixelFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pPixelFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pPixelFormat,
          )>()(
        ptr.ref.lpVtbl,
        pPixelFormat,
      );

  int SetColorContexts(
    int cCount,
    Pointer<Pointer<COMObject>> ppIColorContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cCount,
            Pointer<Pointer<COMObject>> ppIColorContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cCount,
            Pointer<Pointer<COMObject>> ppIColorContext,
          )>()(
        ptr.ref.lpVtbl,
        cCount,
        ppIColorContext,
      );

  int SetPalette(
    Pointer<COMObject> pIPalette,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIPalette,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIPalette,
          )>()(
        ptr.ref.lpVtbl,
        pIPalette,
      );

  int SetThumbnail(
    Pointer<COMObject> pIThumbnail,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIThumbnail,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIThumbnail,
          )>()(
        ptr.ref.lpVtbl,
        pIThumbnail,
      );

  int WritePixels(
    int lineCount,
    int cbStride,
    int cbBufferSize,
    Pointer<Uint8> pbPixels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 lineCount,
            Uint32 cbStride,
            Uint32 cbBufferSize,
            Pointer<Uint8> pbPixels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lineCount,
            int cbStride,
            int cbBufferSize,
            Pointer<Uint8> pbPixels,
          )>()(
        ptr.ref.lpVtbl,
        lineCount,
        cbStride,
        cbBufferSize,
        pbPixels,
      );

  int WriteSource(
    Pointer<COMObject> pIBitmapSource,
    Pointer<WICRect> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIBitmapSource,
            Pointer<WICRect> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIBitmapSource,
            Pointer<WICRect> prc,
          )>()(
        ptr.ref.lpVtbl,
        pIBitmapSource,
        prc,
      );

  int Commit() => ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetMetadataQueryWriter(
    Pointer<Pointer<COMObject>> ppIMetadataQueryWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIMetadataQueryWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIMetadataQueryWriter,
          )>()(
        ptr.ref.lpVtbl,
        ppIMetadataQueryWriter,
      );
}
