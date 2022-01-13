// IWICBitmapEncoder.dart

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
import '../../graphics/imaging/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/IWICBitmapEncoderInfo.dart';
import '../../graphics/imaging/IWICColorContext.dart';
import '../../graphics/imaging/IWICPalette.dart';
import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../graphics/imaging/IWICBitmapFrameEncode.dart';
import '../../system/com/structuredstorage/IPropertyBag2.dart';
import '../../graphics/imaging/IWICMetadataQueryWriter.dart';

/// @nodoc
const IID_IWICBitmapEncoder = '{00000103-A8F2-4877-BA0A-FD2B6645FB94}';

/// {@category Interface}
/// {@category com}
class IWICBitmapEncoder extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IWICBitmapEncoder(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pIStream,
    int cacheOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIStream,
            Int32 cacheOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIStream,
            int cacheOption,
          )>()(
        ptr.ref.lpVtbl,
        pIStream,
        cacheOption,
      );

  int GetContainerFormat(
    Pointer<GUID> pguidContainerFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetEncoderInfo(
    Pointer<Pointer<COMObject>> ppIEncoderInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEncoderInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEncoderInfo,
          )>()(
        ptr.ref.lpVtbl,
        ppIEncoderInfo,
      );

  int SetColorContexts(
    int cCount,
    Pointer<Pointer<COMObject>> ppIColorContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int SetThumbnail(
    Pointer<COMObject> pIThumbnail,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int SetPreview(
    Pointer<COMObject> pIPreview,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIPreview,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIPreview,
          )>()(
        ptr.ref.lpVtbl,
        pIPreview,
      );

  int CreateNewFrame(
    Pointer<Pointer<COMObject>> ppIFrameEncode,
    Pointer<Pointer<COMObject>> ppIEncoderOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIFrameEncode,
            Pointer<Pointer<COMObject>> ppIEncoderOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIFrameEncode,
            Pointer<Pointer<COMObject>> ppIEncoderOptions,
          )>()(
        ptr.ref.lpVtbl,
        ppIFrameEncode,
        ppIEncoderOptions,
      );

  int Commit() => ptr.ref.lpVtbl.value
          .elementAt(11)
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
          .elementAt(12)
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
