// IPrintPreviewDxgiPackageTarget.dart

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
import '../../graphics/printing/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/IDXGISurface.dart';

/// @nodoc
const IID_IPrintPreviewDxgiPackageTarget =
    '{1A6DD0AD-1E2A-4E99-A5BA-91F17818290E}';

/// {@category Interface}
/// {@category com}
class IPrintPreviewDxgiPackageTarget extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IPrintPreviewDxgiPackageTarget(Pointer<COMObject> ptr) : super(ptr);

  int SetJobPageCount(
    int countType,
    int count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 countType,
            Uint32 count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int countType,
            int count,
          )>()(
        ptr.ref.lpVtbl,
        countType,
        count,
      );

  int DrawPage(
    int jobPageNumber,
    Pointer<COMObject> pageImage,
    double dpiX,
    double dpiY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 jobPageNumber,
            Pointer<COMObject> pageImage,
            Float dpiX,
            Float dpiY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int jobPageNumber,
            Pointer<COMObject> pageImage,
            double dpiX,
            double dpiY,
          )>()(
        ptr.ref.lpVtbl,
        jobPageNumber,
        pageImage,
        dpiX,
        dpiY,
      );

  int InvalidatePreview() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
}
