// IImageRecompress.dart

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
import '../../ui/shell/IShellItem.dart';
import '../../system/com/structuredstorage/IStorage.dart';
import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IImageRecompress = '{505F1513-6B3E-4892-A272-59F8889A4D3E}';

/// {@category Interface}
/// {@category com}
class IImageRecompress extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IImageRecompress(Pointer<COMObject> ptr) : super(ptr);

  int RecompressImage(
    Pointer<COMObject> psi,
    int cx,
    int cy,
    int iQuality,
    Pointer<COMObject> pstg,
    Pointer<Pointer<COMObject>> ppstrmOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
            Int32 cx,
            Int32 cy,
            Int32 iQuality,
            Pointer<COMObject> pstg,
            Pointer<Pointer<COMObject>> ppstrmOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
            int cx,
            int cy,
            int iQuality,
            Pointer<COMObject> pstg,
            Pointer<Pointer<COMObject>> ppstrmOut,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        cx,
        cy,
        iQuality,
        pstg,
        ppstrmOut,
      );
}

/// @nodoc
const CLSID_ImageRecompress = '{6E33091C-D2F8-4740-B55E-2E11D1477A2C}';

/// {@category com}
class ImageRecompress extends IImageRecompress {
  ImageRecompress(Pointer<COMObject> ptr) : super(ptr);

  factory ImageRecompress.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ImageRecompress);
    final iid = calloc<GUID>()..ref.setGUID(IID_IImageRecompress);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ImageRecompress(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
