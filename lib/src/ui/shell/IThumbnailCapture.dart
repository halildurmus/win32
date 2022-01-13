// IThumbnailCapture.dart

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
import '../../specialTypes.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IThumbnailCapture = '{4EA39266-7211-409F-B622-F63DBD16C533}';

/// {@category Interface}
/// {@category com}
class IThumbnailCapture extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IThumbnailCapture(Pointer<COMObject> ptr) : super(ptr);

  int CaptureThumbnail(
    Pointer<SIZE> pMaxSize,
    Pointer<COMObject> pHTMLDoc2,
    Pointer<IntPtr> phbmThumbnail,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SIZE> pMaxSize,
            Pointer<COMObject> pHTMLDoc2,
            Pointer<IntPtr> phbmThumbnail,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SIZE> pMaxSize,
            Pointer<COMObject> pHTMLDoc2,
            Pointer<IntPtr> phbmThumbnail,
          )>()(
        ptr.ref.lpVtbl,
        pMaxSize,
        pHTMLDoc2,
        phbmThumbnail,
      );
}
