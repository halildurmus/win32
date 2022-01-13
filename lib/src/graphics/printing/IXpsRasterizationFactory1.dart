// IXpsRasterizationFactory1.dart

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
import '../../graphics/printing/structs.g.dart';
import '../../graphics/printing/IXpsRasterizer.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IXpsRasterizationFactory1 = '{2D6E5F77-6414-4A1E-A8E0-D4194CE6A26F}';

/// {@category Interface}
/// {@category com}
class IXpsRasterizationFactory1 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IXpsRasterizationFactory1(Pointer<COMObject> ptr) : super(ptr);

  int CreateRasterizer(
    Pointer<COMObject> xpsPage,
    double DPI,
    int nonTextRenderingMode,
    int textRenderingMode,
    int pixelFormat,
    Pointer<Pointer<COMObject>> ppIXPSRasterizer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> xpsPage,
            Float DPI,
            Int32 nonTextRenderingMode,
            Int32 textRenderingMode,
            Int32 pixelFormat,
            Pointer<Pointer<COMObject>> ppIXPSRasterizer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> xpsPage,
            double DPI,
            int nonTextRenderingMode,
            int textRenderingMode,
            int pixelFormat,
            Pointer<Pointer<COMObject>> ppIXPSRasterizer,
          )>()(
        ptr.ref.lpVtbl,
        xpsPage,
        DPI,
        nonTextRenderingMode,
        textRenderingMode,
        pixelFormat,
        ppIXPSRasterizer,
      );
}
