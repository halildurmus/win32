// IPrintDialogServices.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../graphics/gdi/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrintDialogServices = '{509AAEDA-5639-11D1-B6A1-0000F8757BF9}';

/// {@category Interface}
/// {@category com}
class IPrintDialogServices extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IPrintDialogServices(Pointer<COMObject> ptr) : super(ptr);

  int GetCurrentDevMode(
    Pointer<DEVMODE> pDevMode,
    Pointer<Uint32> pcbSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEVMODE> pDevMode,
            Pointer<Uint32> pcbSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEVMODE> pDevMode,
            Pointer<Uint32> pcbSize,
          )>()(
        ptr.ref.lpVtbl,
        pDevMode,
        pcbSize,
      );

  int GetCurrentPrinterName(
    Pointer<Utf16> pPrinterName,
    Pointer<Uint32> pcchSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pPrinterName,
            Pointer<Uint32> pcchSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pPrinterName,
            Pointer<Uint32> pcchSize,
          )>()(
        ptr.ref.lpVtbl,
        pPrinterName,
        pcchSize,
      );

  int GetCurrentPortName(
    Pointer<Utf16> pPortName,
    Pointer<Uint32> pcchSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pPortName,
            Pointer<Uint32> pcchSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pPortName,
            Pointer<Uint32> pcchSize,
          )>()(
        ptr.ref.lpVtbl,
        pPortName,
        pcchSize,
      );
}
