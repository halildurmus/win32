// IPrintOemUIMXDC.dart

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
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IPrintOemUIMXDC = '{7349D725-E2C1-4DCA-AFB5-C13E91BC9306}';

/// {@category Interface}
/// {@category com}
class IPrintOemUIMXDC extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IPrintOemUIMXDC(Pointer<COMObject> ptr) : super(ptr);

  int AdjustImageableArea(
    int hPrinter,
    int cbDevMode,
    Pointer<DEVMODE> pDevMode,
    int cbOEMDM,
    Pointer pOEMDM,
    Pointer<RECTL> prclImageableArea,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hPrinter,
            Uint32 cbDevMode,
            Pointer<DEVMODE> pDevMode,
            Uint32 cbOEMDM,
            Pointer pOEMDM,
            Pointer<RECTL> prclImageableArea,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hPrinter,
            int cbDevMode,
            Pointer<DEVMODE> pDevMode,
            int cbOEMDM,
            Pointer pOEMDM,
            Pointer<RECTL> prclImageableArea,
          )>()(
        ptr.ref.lpVtbl,
        hPrinter,
        cbDevMode,
        pDevMode,
        cbOEMDM,
        pOEMDM,
        prclImageableArea,
      );

  int AdjustImageCompression(
    int hPrinter,
    int cbDevMode,
    Pointer<DEVMODE> pDevMode,
    int cbOEMDM,
    Pointer pOEMDM,
    Pointer<Int32> pCompressionMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hPrinter,
            Uint32 cbDevMode,
            Pointer<DEVMODE> pDevMode,
            Uint32 cbOEMDM,
            Pointer pOEMDM,
            Pointer<Int32> pCompressionMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hPrinter,
            int cbDevMode,
            Pointer<DEVMODE> pDevMode,
            int cbOEMDM,
            Pointer pOEMDM,
            Pointer<Int32> pCompressionMode,
          )>()(
        ptr.ref.lpVtbl,
        hPrinter,
        cbDevMode,
        pDevMode,
        cbOEMDM,
        pOEMDM,
        pCompressionMode,
      );

  int AdjustDPI(
    int hPrinter,
    int cbDevMode,
    Pointer<DEVMODE> pDevMode,
    int cbOEMDM,
    Pointer pOEMDM,
    Pointer<Int32> pDPI,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hPrinter,
            Uint32 cbDevMode,
            Pointer<DEVMODE> pDevMode,
            Uint32 cbOEMDM,
            Pointer pOEMDM,
            Pointer<Int32> pDPI,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hPrinter,
            int cbDevMode,
            Pointer<DEVMODE> pDevMode,
            int cbOEMDM,
            Pointer pOEMDM,
            Pointer<Int32> pDPI,
          )>()(
        ptr.ref.lpVtbl,
        hPrinter,
        cbDevMode,
        pDevMode,
        cbOEMDM,
        pOEMDM,
        pDPI,
      );
}
