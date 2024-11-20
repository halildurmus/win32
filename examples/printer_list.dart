import 'dart:ffi';
import 'dart:io';

import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

extension type const Printer(String name) implements String {
  /// Returns all available printers.
  ///
  /// The [flags] parameter is a bitmask that specifies the type of printer
  /// information the method should enumerate.
  static List<Printer> all([int flags = PRINTER_ENUM_LOCAL]) {
    final printers = <Printer>[];

    final pcbNeeded = adaptiveCalloc<DWORD>();
    final pcReturned = adaptiveCalloc<DWORD>();

    try {
      var result = EnumPrinters(flags, null, 2, null, 0, pcbNeeded, pcReturned);
      if (pcbNeeded.value == 0) {
        throw WindowsException(result.error.toHRESULT());
      }

      final pPrinterEnum = adaptiveMalloc<BYTE>(pcbNeeded.value);
      try {
        result = EnumPrinters(
          flags,
          null,
          2,
          pPrinterEnum,
          pcbNeeded.value,
          pcbNeeded,
          pcReturned,
        );
        if (!result.value) throw WindowsException(result.error.toHRESULT());

        for (var i = 0; i < pcReturned.value; i++) {
          final printerInfo = pPrinterEnum.cast<PRINTER_INFO_2>() + i;
          final pPrinterName = printerInfo.ref.pPrinterName;
          printers.add(Printer(pPrinterName.toDartString()));
        }

        return printers;
      } finally {
        free(pPrinterEnum);
      }
    } finally {
      free(pcbNeeded);
      free(pcReturned);
    }
  }
}

void main() {
  try {
    for (final printer in Printer.all()) {
      print(printer);
    }
  } catch (e) {
    stderr.writeln(e);
  }
}
