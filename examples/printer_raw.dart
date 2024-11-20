// Sends RAW data (string or hex sequences) directly to the printer.

// Example taken from:
// https://learn.microsoft.com/windows/win32/printdocs/sending-data-directly-to-a-printer

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

enum DataType {
  raw('RAW'),
  text('TEXT'),
  xpsPass('XPS_PASS');

  const DataType(this.value);

  final String value;
}

class RawPrinter {
  RawPrinter(this.printerName, this.allocator);

  final String printerName;
  final Arena allocator;

  int _startRawPrintJob({
    required String printerName,
    required String documentTitle,
    DataType dataType = DataType.raw,
  }) {
    final pPrinterName = w(printerName);
    final phPrinter = allocator<PRINTER_HANDLE>();

    // https://learn.microsoft.com/windows/win32/printdocs/openprinter
    if (!OpenPrinter(pPrinterName.ptr, phPrinter, null)) {
      final error = GetLastError();
      throw StateError('OpenPrint error, error: $error');
    }

    final hPrinter = phPrinter.value;

    // https://learn.microsoft.com/windows/win32/printdocs/doc-info-1
    final pDocInfo = allocator<DOC_INFO_1>();
    final pDocName = w(printerName);
    final pDataType = w(dataType.value);
    pDocInfo.ref
      ..pDocName = pDocName.ptr
      ..pDatatype = pDataType.ptr
      ..pOutputFile = nullptr;

    // https://learn.microsoft.com/windows/win32/printdocs/startdocprinter
    if (StartDocPrinter(
          hPrinter,
          1, // Version of the structure to which pDocInfo points.
          pDocInfo,
        ) ==
        0) {
      final error = GetLastError();
      throw StateError('StartDocPrinter error, error: $error');
    }

    return hPrinter;
  }

  bool _startRawPrintPage(int phPrinter) => StartPagePrinter(phPrinter);

  bool _endRawPrintPage(int phPrinter) => EndPagePrinter(phPrinter);

  bool _endRawPrintJob(int phPrinter) =>
      EndDocPrinter(phPrinter) && ClosePrinter(phPrinter);

  bool _printRawData(int phPrinter, String dataToPrint) {
    final cWritten = allocator<DWORD>();
    final data = s(dataToPrint);

    // https://learn.microsoft.com/windows/win32/printdocs/writeprinter
    final result = WritePrinter(
      phPrinter,
      data.ptr,
      dataToPrint.length,
      cWritten,
    );

    if (dataToPrint.length != cWritten.value) {
      final error = GetLastError();
      throw StateError('WritePrinter error, status: $result, error: $error');
    }

    return result;
  }

  bool printLines(List<String> data) {
    var res = false;

    if (data.isEmpty) return res;

    final printerHandle = _startRawPrintJob(
      printerName: printerName,
      documentTitle: 'My document',
    );

    res = _startRawPrintPage(printerHandle);

    for (final item in data) {
      if (res) {
        res = _printRawData(printerHandle, item);
      }
    }

    _endRawPrintPage(printerHandle);
    _endRawPrintJob(printerHandle);

    return res;
  }
}

void main() {
  // Example: ESC/POS sequence to open the cash drawer.
  const openCashDrawer = '\x1b\x70\x00';

  using((arena) {
    // NOTE: You can get the printer name from the printer_list.dart example.
    final printer = RawPrinter('EPSON TM-T20II Receipt', arena);

    // At the end we send a printer command to open the cash drawer
    // for example for thermal printers using ESC/POS.
    final data = <String>[
      for (var i = 0; i < 10; i++) 'Hello world line $i',
      openCashDrawer,
    ];

    // Send to print all the lines at once.
    if (printer.printLines(data)) {
      print('Success!');
    }
  });
}
