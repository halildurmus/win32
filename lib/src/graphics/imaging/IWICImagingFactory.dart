// IWICImagingFactory.dart

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
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/structs.g.dart';
import '../../graphics/imaging/IWICBitmapDecoder.dart';
import '../../system/com/IStream.dart';
import '../../graphics/imaging/IWICComponentInfo.dart';
import '../../graphics/imaging/IWICBitmapEncoder.dart';
import '../../graphics/imaging/IWICPalette.dart';
import '../../graphics/imaging/IWICFormatConverter.dart';
import '../../graphics/imaging/IWICBitmapScaler.dart';
import '../../graphics/imaging/IWICBitmapClipper.dart';
import '../../graphics/imaging/IWICBitmapFlipRotator.dart';
import '../../graphics/imaging/IWICStream.dart';
import '../../graphics/imaging/IWICColorContext.dart';
import '../../graphics/imaging/IWICColorTransform.dart';
import '../../graphics/imaging/IWICBitmap.dart';
import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../system/com/IEnumUnknown.dart';
import '../../graphics/imaging/IWICFastMetadataEncoder.dart';
import '../../graphics/imaging/IWICBitmapFrameDecode.dart';
import '../../graphics/imaging/IWICMetadataQueryWriter.dart';
import '../../graphics/imaging/IWICMetadataQueryReader.dart';

/// @nodoc
const IID_IWICImagingFactory = '{EC5EC8A9-C395-4314-9C77-54D7A935FF70}';

/// {@category Interface}
/// {@category com}
class IWICImagingFactory extends IUnknown {
  // vtable begins at 3, is 25 entries long.
  IWICImagingFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateDecoderFromFilename(
    Pointer<Utf16> wzFilename,
    Pointer<GUID> pguidVendor,
    int dwDesiredAccess,
    int metadataOptions,
    Pointer<Pointer<COMObject>> ppIDecoder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wzFilename,
            Pointer<GUID> pguidVendor,
            Uint32 dwDesiredAccess,
            Int32 metadataOptions,
            Pointer<Pointer<COMObject>> ppIDecoder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wzFilename,
            Pointer<GUID> pguidVendor,
            int dwDesiredAccess,
            int metadataOptions,
            Pointer<Pointer<COMObject>> ppIDecoder,
          )>()(
        ptr.ref.lpVtbl,
        wzFilename,
        pguidVendor,
        dwDesiredAccess,
        metadataOptions,
        ppIDecoder,
      );

  int CreateDecoderFromStream(
    Pointer<COMObject> pIStream,
    Pointer<GUID> pguidVendor,
    int metadataOptions,
    Pointer<Pointer<COMObject>> ppIDecoder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIStream,
            Pointer<GUID> pguidVendor,
            Int32 metadataOptions,
            Pointer<Pointer<COMObject>> ppIDecoder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIStream,
            Pointer<GUID> pguidVendor,
            int metadataOptions,
            Pointer<Pointer<COMObject>> ppIDecoder,
          )>()(
        ptr.ref.lpVtbl,
        pIStream,
        pguidVendor,
        metadataOptions,
        ppIDecoder,
      );

  int CreateDecoderFromFileHandle(
    int hFile,
    Pointer<GUID> pguidVendor,
    int metadataOptions,
    Pointer<Pointer<COMObject>> ppIDecoder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hFile,
            Pointer<GUID> pguidVendor,
            Int32 metadataOptions,
            Pointer<Pointer<COMObject>> ppIDecoder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hFile,
            Pointer<GUID> pguidVendor,
            int metadataOptions,
            Pointer<Pointer<COMObject>> ppIDecoder,
          )>()(
        ptr.ref.lpVtbl,
        hFile,
        pguidVendor,
        metadataOptions,
        ppIDecoder,
      );

  int CreateComponentInfo(
    Pointer<GUID> clsidComponent,
    Pointer<Pointer<COMObject>> ppIInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsidComponent,
            Pointer<Pointer<COMObject>> ppIInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsidComponent,
            Pointer<Pointer<COMObject>> ppIInfo,
          )>()(
        ptr.ref.lpVtbl,
        clsidComponent,
        ppIInfo,
      );

  int CreateDecoder(
    Pointer<GUID> guidContainerFormat,
    Pointer<GUID> pguidVendor,
    Pointer<Pointer<COMObject>> ppIDecoder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidContainerFormat,
            Pointer<GUID> pguidVendor,
            Pointer<Pointer<COMObject>> ppIDecoder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidContainerFormat,
            Pointer<GUID> pguidVendor,
            Pointer<Pointer<COMObject>> ppIDecoder,
          )>()(
        ptr.ref.lpVtbl,
        guidContainerFormat,
        pguidVendor,
        ppIDecoder,
      );

  int CreateEncoder(
    Pointer<GUID> guidContainerFormat,
    Pointer<GUID> pguidVendor,
    Pointer<Pointer<COMObject>> ppIEncoder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidContainerFormat,
            Pointer<GUID> pguidVendor,
            Pointer<Pointer<COMObject>> ppIEncoder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidContainerFormat,
            Pointer<GUID> pguidVendor,
            Pointer<Pointer<COMObject>> ppIEncoder,
          )>()(
        ptr.ref.lpVtbl,
        guidContainerFormat,
        pguidVendor,
        ppIEncoder,
      );

  int CreatePalette(
    Pointer<Pointer<COMObject>> ppIPalette,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIPalette,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIPalette,
          )>()(
        ptr.ref.lpVtbl,
        ppIPalette,
      );

  int CreateFormatConverter(
    Pointer<Pointer<COMObject>> ppIFormatConverter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIFormatConverter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIFormatConverter,
          )>()(
        ptr.ref.lpVtbl,
        ppIFormatConverter,
      );

  int CreateBitmapScaler(
    Pointer<Pointer<COMObject>> ppIBitmapScaler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIBitmapScaler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIBitmapScaler,
          )>()(
        ptr.ref.lpVtbl,
        ppIBitmapScaler,
      );

  int CreateBitmapClipper(
    Pointer<Pointer<COMObject>> ppIBitmapClipper,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIBitmapClipper,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIBitmapClipper,
          )>()(
        ptr.ref.lpVtbl,
        ppIBitmapClipper,
      );

  int CreateBitmapFlipRotator(
    Pointer<Pointer<COMObject>> ppIBitmapFlipRotator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIBitmapFlipRotator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIBitmapFlipRotator,
          )>()(
        ptr.ref.lpVtbl,
        ppIBitmapFlipRotator,
      );

  int CreateStream(
    Pointer<Pointer<COMObject>> ppIWICStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIWICStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIWICStream,
          )>()(
        ptr.ref.lpVtbl,
        ppIWICStream,
      );

  int CreateColorContext(
    Pointer<Pointer<COMObject>> ppIWICColorContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIWICColorContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIWICColorContext,
          )>()(
        ptr.ref.lpVtbl,
        ppIWICColorContext,
      );

  int CreateColorTransformer(
    Pointer<Pointer<COMObject>> ppIWICColorTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIWICColorTransform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIWICColorTransform,
          )>()(
        ptr.ref.lpVtbl,
        ppIWICColorTransform,
      );

  int CreateBitmap(
    int uiWidth,
    int uiHeight,
    Pointer<GUID> pixelFormat,
    int option,
    Pointer<Pointer<COMObject>> ppIBitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiWidth,
            Uint32 uiHeight,
            Pointer<GUID> pixelFormat,
            Int32 option,
            Pointer<Pointer<COMObject>> ppIBitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiWidth,
            int uiHeight,
            Pointer<GUID> pixelFormat,
            int option,
            Pointer<Pointer<COMObject>> ppIBitmap,
          )>()(
        ptr.ref.lpVtbl,
        uiWidth,
        uiHeight,
        pixelFormat,
        option,
        ppIBitmap,
      );

  int CreateBitmapFromSource(
    Pointer<COMObject> pIBitmapSource,
    int option,
    Pointer<Pointer<COMObject>> ppIBitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIBitmapSource,
            Int32 option,
            Pointer<Pointer<COMObject>> ppIBitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIBitmapSource,
            int option,
            Pointer<Pointer<COMObject>> ppIBitmap,
          )>()(
        ptr.ref.lpVtbl,
        pIBitmapSource,
        option,
        ppIBitmap,
      );

  int CreateBitmapFromSourceRect(
    Pointer<COMObject> pIBitmapSource,
    int x,
    int y,
    int width,
    int height,
    Pointer<Pointer<COMObject>> ppIBitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIBitmapSource,
            Uint32 x,
            Uint32 y,
            Uint32 width,
            Uint32 height,
            Pointer<Pointer<COMObject>> ppIBitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIBitmapSource,
            int x,
            int y,
            int width,
            int height,
            Pointer<Pointer<COMObject>> ppIBitmap,
          )>()(
        ptr.ref.lpVtbl,
        pIBitmapSource,
        x,
        y,
        width,
        height,
        ppIBitmap,
      );

  int CreateBitmapFromMemory(
    int uiWidth,
    int uiHeight,
    Pointer<GUID> pixelFormat,
    int cbStride,
    int cbBufferSize,
    Pointer<Uint8> pbBuffer,
    Pointer<Pointer<COMObject>> ppIBitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiWidth,
            Uint32 uiHeight,
            Pointer<GUID> pixelFormat,
            Uint32 cbStride,
            Uint32 cbBufferSize,
            Pointer<Uint8> pbBuffer,
            Pointer<Pointer<COMObject>> ppIBitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiWidth,
            int uiHeight,
            Pointer<GUID> pixelFormat,
            int cbStride,
            int cbBufferSize,
            Pointer<Uint8> pbBuffer,
            Pointer<Pointer<COMObject>> ppIBitmap,
          )>()(
        ptr.ref.lpVtbl,
        uiWidth,
        uiHeight,
        pixelFormat,
        cbStride,
        cbBufferSize,
        pbBuffer,
        ppIBitmap,
      );

  int CreateBitmapFromHBITMAP(
    int hBitmap,
    int hPalette,
    int options,
    Pointer<Pointer<COMObject>> ppIBitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hBitmap,
            IntPtr hPalette,
            Int32 options,
            Pointer<Pointer<COMObject>> ppIBitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hBitmap,
            int hPalette,
            int options,
            Pointer<Pointer<COMObject>> ppIBitmap,
          )>()(
        ptr.ref.lpVtbl,
        hBitmap,
        hPalette,
        options,
        ppIBitmap,
      );

  int CreateBitmapFromHICON(
    int hIcon,
    Pointer<Pointer<COMObject>> ppIBitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIcon,
            Pointer<Pointer<COMObject>> ppIBitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIcon,
            Pointer<Pointer<COMObject>> ppIBitmap,
          )>()(
        ptr.ref.lpVtbl,
        hIcon,
        ppIBitmap,
      );

  int CreateComponentEnumerator(
    int componentTypes,
    int options,
    Pointer<Pointer<COMObject>> ppIEnumUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 componentTypes,
            Uint32 options,
            Pointer<Pointer<COMObject>> ppIEnumUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int componentTypes,
            int options,
            Pointer<Pointer<COMObject>> ppIEnumUnknown,
          )>()(
        ptr.ref.lpVtbl,
        componentTypes,
        options,
        ppIEnumUnknown,
      );

  int CreateFastMetadataEncoderFromDecoder(
    Pointer<COMObject> pIDecoder,
    Pointer<Pointer<COMObject>> ppIFastEncoder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIDecoder,
            Pointer<Pointer<COMObject>> ppIFastEncoder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIDecoder,
            Pointer<Pointer<COMObject>> ppIFastEncoder,
          )>()(
        ptr.ref.lpVtbl,
        pIDecoder,
        ppIFastEncoder,
      );

  int CreateFastMetadataEncoderFromFrameDecode(
    Pointer<COMObject> pIFrameDecoder,
    Pointer<Pointer<COMObject>> ppIFastEncoder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIFrameDecoder,
            Pointer<Pointer<COMObject>> ppIFastEncoder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIFrameDecoder,
            Pointer<Pointer<COMObject>> ppIFastEncoder,
          )>()(
        ptr.ref.lpVtbl,
        pIFrameDecoder,
        ppIFastEncoder,
      );

  int CreateQueryWriter(
    Pointer<GUID> guidMetadataFormat,
    Pointer<GUID> pguidVendor,
    Pointer<Pointer<COMObject>> ppIQueryWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidMetadataFormat,
            Pointer<GUID> pguidVendor,
            Pointer<Pointer<COMObject>> ppIQueryWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidMetadataFormat,
            Pointer<GUID> pguidVendor,
            Pointer<Pointer<COMObject>> ppIQueryWriter,
          )>()(
        ptr.ref.lpVtbl,
        guidMetadataFormat,
        pguidVendor,
        ppIQueryWriter,
      );

  int CreateQueryWriterFromReader(
    Pointer<COMObject> pIQueryReader,
    Pointer<GUID> pguidVendor,
    Pointer<Pointer<COMObject>> ppIQueryWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIQueryReader,
            Pointer<GUID> pguidVendor,
            Pointer<Pointer<COMObject>> ppIQueryWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIQueryReader,
            Pointer<GUID> pguidVendor,
            Pointer<Pointer<COMObject>> ppIQueryWriter,
          )>()(
        ptr.ref.lpVtbl,
        pIQueryReader,
        pguidVendor,
        ppIQueryWriter,
      );
}
