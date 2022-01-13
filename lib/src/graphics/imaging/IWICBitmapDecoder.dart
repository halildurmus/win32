// IWICBitmapDecoder.dart

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
import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/structs.g.dart';
import '../../graphics/imaging/IWICBitmapDecoderInfo.dart';
import '../../graphics/imaging/IWICPalette.dart';
import '../../graphics/imaging/IWICMetadataQueryReader.dart';
import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../graphics/imaging/IWICColorContext.dart';
import '../../graphics/imaging/IWICBitmapFrameDecode.dart';

/// @nodoc
const IID_IWICBitmapDecoder = '{9EDDE9E7-8DEE-47EA-99DF-E6FAF2ED44BF}';

/// {@category Interface}
/// {@category com}
class IWICBitmapDecoder extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IWICBitmapDecoder(Pointer<COMObject> ptr) : super(ptr);

  int QueryCapability(
    Pointer<COMObject> pIStream,
    Pointer<Uint32> pdwCapability,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIStream,
            Pointer<Uint32> pdwCapability,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIStream,
            Pointer<Uint32> pdwCapability,
          )>()(
        ptr.ref.lpVtbl,
        pIStream,
        pdwCapability,
      );

  int Initialize(
    Pointer<COMObject> pIStream,
    int cacheOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIStream,
            Int32 cacheOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIStream,
            int cacheOptions,
          )>()(
        ptr.ref.lpVtbl,
        pIStream,
        cacheOptions,
      );

  int GetContainerFormat(
    Pointer<GUID> pguidContainerFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidContainerFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidContainerFormat,
          )>()(
        ptr.ref.lpVtbl,
        pguidContainerFormat,
      );

  int GetDecoderInfo(
    Pointer<Pointer<COMObject>> ppIDecoderInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIDecoderInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIDecoderInfo,
          )>()(
        ptr.ref.lpVtbl,
        ppIDecoderInfo,
      );

  int CopyPalette(
    Pointer<COMObject> pIPalette,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int GetMetadataQueryReader(
    Pointer<Pointer<COMObject>> ppIMetadataQueryReader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIMetadataQueryReader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIMetadataQueryReader,
          )>()(
        ptr.ref.lpVtbl,
        ppIMetadataQueryReader,
      );

  int GetPreview(
    Pointer<Pointer<COMObject>> ppIBitmapSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIBitmapSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIBitmapSource,
          )>()(
        ptr.ref.lpVtbl,
        ppIBitmapSource,
      );

  int GetColorContexts(
    int cCount,
    Pointer<Pointer<COMObject>> ppIColorContexts,
    Pointer<Uint32> pcActualCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cCount,
            Pointer<Pointer<COMObject>> ppIColorContexts,
            Pointer<Uint32> pcActualCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cCount,
            Pointer<Pointer<COMObject>> ppIColorContexts,
            Pointer<Uint32> pcActualCount,
          )>()(
        ptr.ref.lpVtbl,
        cCount,
        ppIColorContexts,
        pcActualCount,
      );

  int GetThumbnail(
    Pointer<Pointer<COMObject>> ppIThumbnail,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIThumbnail,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIThumbnail,
          )>()(
        ptr.ref.lpVtbl,
        ppIThumbnail,
      );

  int GetFrameCount(
    Pointer<Uint32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );

  int GetFrame(
    int index,
    Pointer<Pointer<COMObject>> ppIBitmapFrame,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> ppIBitmapFrame,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> ppIBitmapFrame,
          )>()(
        ptr.ref.lpVtbl,
        index,
        ppIBitmapFrame,
      );
}
