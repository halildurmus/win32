// IPrinterExtensionManager.dart

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

/// @nodoc
const IID_IPrinterExtensionManager = '{93C6EB8C-B001-4355-9629-8E8A1B3F8E77}';

/// {@category Interface}
/// {@category com}
class IPrinterExtensionManager extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPrinterExtensionManager(Pointer<COMObject> ptr) : super(ptr);

  int EnableEvents(
    GUID printerDriverId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID printerDriverId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID printerDriverId,
          )>()(
        ptr.ref.lpVtbl,
        printerDriverId,
      );

  int DisableEvents() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

/// @nodoc
const CLSID_PrinterExtensionManager = '{331B60DA-9E90-4DD0-9C84-EAC4E659B61F}';

/// {@category com}
class PrinterExtensionManager extends IPrinterExtensionManager {
  PrinterExtensionManager(Pointer<COMObject> ptr) : super(ptr);

  factory PrinterExtensionManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PrinterExtensionManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPrinterExtensionManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PrinterExtensionManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
