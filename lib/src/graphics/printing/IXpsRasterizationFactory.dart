// IXpsRasterizationFactory.dart

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
const IID_IXpsRasterizationFactory = '{E094808A-24C6-482B-A3A7-C21AC9B55F17}';

/// {@category Interface}
/// {@category com}
class IXpsRasterizationFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IXpsRasterizationFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateRasterizer(
    Pointer<COMObject> xpsPage,
    double DPI,
    int nonTextRenderingMode,
    int textRenderingMode,
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
            Pointer<Pointer<COMObject>> ppIXPSRasterizer,
          )>()(
        ptr.ref.lpVtbl,
        xpsPage,
        DPI,
        nonTextRenderingMode,
        textRenderingMode,
        ppIXPSRasterizer,
      );
}
