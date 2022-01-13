// IWICBitmapFrameDecode.dart

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

import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../graphics/imaging/IWICMetadataQueryReader.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/IWICColorContext.dart';

/// @nodoc
const IID_IWICBitmapFrameDecode = '{3B16811B-6A43-4EC9-A813-3D930C13B940}';

/// {@category Interface}
/// {@category com}
class IWICBitmapFrameDecode extends IWICBitmapSource {
  // vtable begins at 8, is 3 entries long.
  IWICBitmapFrameDecode(Pointer<COMObject> ptr) : super(ptr);

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

  int GetColorContexts(
    int cCount,
    Pointer<Pointer<COMObject>> ppIColorContexts,
    Pointer<Uint32> pcActualCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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
          .elementAt(10)
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
}
