// IWICPlanarBitmapFrameEncode.dart

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
import '../../graphics/imaging/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/IWICBitmapSource.dart';

/// @nodoc
const IID_IWICPlanarBitmapFrameEncode =
    '{F928B7B8-2221-40C1-B72E-7E82F1974D1A}';

/// {@category Interface}
/// {@category com}
class IWICPlanarBitmapFrameEncode extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWICPlanarBitmapFrameEncode(Pointer<COMObject> ptr) : super(ptr);

  int WritePixels(
    int lineCount,
    Pointer<WICBitmapPlane> pPlanes,
    int cPlanes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 lineCount,
            Pointer<WICBitmapPlane> pPlanes,
            Uint32 cPlanes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lineCount,
            Pointer<WICBitmapPlane> pPlanes,
            int cPlanes,
          )>()(
        ptr.ref.lpVtbl,
        lineCount,
        pPlanes,
        cPlanes,
      );

  int WriteSource(
    Pointer<Pointer<COMObject>> ppPlanes,
    int cPlanes,
    Pointer<WICRect> prcSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPlanes,
            Uint32 cPlanes,
            Pointer<WICRect> prcSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPlanes,
            int cPlanes,
            Pointer<WICRect> prcSource,
          )>()(
        ptr.ref.lpVtbl,
        ppPlanes,
        cPlanes,
        prcSource,
      );
}
