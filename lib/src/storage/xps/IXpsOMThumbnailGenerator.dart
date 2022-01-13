// IXpsOMThumbnailGenerator.dart

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
import '../../storage/xps/IXpsOMPage.dart';
import '../../storage/xps/structs.g.dart';
import '../../storage/packaging/opc/IOpcPartUri.dart';
import '../../storage/xps/IXpsOMImageResource.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IXpsOMThumbnailGenerator = '{15B873D5-1971-41E8-83A3-6578403064C7}';

/// {@category Interface}
/// {@category com}
class IXpsOMThumbnailGenerator extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IXpsOMThumbnailGenerator(Pointer<COMObject> ptr) : super(ptr);

  int GenerateThumbnail(
    Pointer<COMObject> page,
    int thumbnailType,
    int thumbnailSize,
    Pointer<COMObject> imageResourcePartName,
    Pointer<Pointer<COMObject>> imageResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> page,
            Int32 thumbnailType,
            Int32 thumbnailSize,
            Pointer<COMObject> imageResourcePartName,
            Pointer<Pointer<COMObject>> imageResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> page,
            int thumbnailType,
            int thumbnailSize,
            Pointer<COMObject> imageResourcePartName,
            Pointer<Pointer<COMObject>> imageResource,
          )>()(
        ptr.ref.lpVtbl,
        page,
        thumbnailType,
        thumbnailSize,
        imageResourcePartName,
        imageResource,
      );
}

/// @nodoc
const CLSID_XpsOMThumbnailGenerator = '{7E4A23E2-B969-4761-BE35-1A8CED58E323}';

/// {@category com}
class XpsOMThumbnailGenerator extends IXpsOMThumbnailGenerator {
  XpsOMThumbnailGenerator(Pointer<COMObject> ptr) : super(ptr);

  factory XpsOMThumbnailGenerator.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_XpsOMThumbnailGenerator);
    final iid = calloc<GUID>()..ref.setGUID(IID_IXpsOMThumbnailGenerator);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return XpsOMThumbnailGenerator(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
