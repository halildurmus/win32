// IXpsRasterizationFactory2.dart

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
const IID_IXpsRasterizationFactory2 = '{9C16CE3E-10F5-41FD-9DDC-6826669C2FF6}';

/// {@category Interface}
/// {@category com}
class IXpsRasterizationFactory2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IXpsRasterizationFactory2(Pointer<COMObject> ptr) : super(ptr);

  int CreateRasterizer(
    Pointer<COMObject> xpsPage,
    double DPIX,
    double DPIY,
    int nonTextRenderingMode,
    int textRenderingMode,
    int pixelFormat,
    int backgroundColor,
    Pointer<Pointer<COMObject>> ppIXpsRasterizer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> xpsPage,
            Float DPIX,
            Float DPIY,
            Int32 nonTextRenderingMode,
            Int32 textRenderingMode,
            Int32 pixelFormat,
            Int32 backgroundColor,
            Pointer<Pointer<COMObject>> ppIXpsRasterizer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> xpsPage,
            double DPIX,
            double DPIY,
            int nonTextRenderingMode,
            int textRenderingMode,
            int pixelFormat,
            int backgroundColor,
            Pointer<Pointer<COMObject>> ppIXpsRasterizer,
          )>()(
        ptr.ref.lpVtbl,
        xpsPage,
        DPIX,
        DPIY,
        nonTextRenderingMode,
        textRenderingMode,
        pixelFormat,
        backgroundColor,
        ppIXpsRasterizer,
      );
}
