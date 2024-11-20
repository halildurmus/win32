import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

extension type const Printer(String name) implements String {
  /// Enumerates available printers.
  ///
  /// The [flags] parameter is a bitmask that specifies the type of printer
  /// information the method should enumerate.
  static Iterable<Printer> all([int flags = PRINTER_ENUM_LOCAL]) sync* {
    final pcbNeeded = loggingCalloc<DWORD>();
    final pcReturned = loggingCalloc<DWORD>();

    try {
      EnumPrinters(flags, null, 2, null, 0, pcbNeeded, pcReturned);

      if (pcbNeeded.value == 0) {
        throw StateError('Read printer buffer size fail');
      }

      final pPrinterEnum = loggingMalloc<BYTE>(pcbNeeded.value);
      try {
        if (!EnumPrinters(
          flags,
          null,
          2,
          pPrinterEnum,
          pcbNeeded.value,
          pcbNeeded,
          pcReturned,
        )) {
          throw StateError('Read printer raw buffer fail');
        }

        for (var i = 0; i < pcReturned.value; i++) {
          final printerInfo = pPrinterEnum.cast<PRINTER_INFO_2>() + i;
          final pPrinterName = printerInfo.ref.pPrinterName;
          yield Printer(pPrinterName.toDartString());
        }
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
