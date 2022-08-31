// Sends RAW data (string or hex sequences) directly to the printer

import 'dart:convert';
// ignore_for_file: depend_on_referenced_packages
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class RawPrinter {
  final String printerName;

  RawPrinter(this.printerName);

  /// Taken from console.dart example
  /// Convert a Dart string to a heap stored byte array that can be passed through
  /// FFI to an unmanaged API.
  ///
  /// The returned string is _not_ null-terminated.
  Pointer<Uint8> _toCString(String buffer) {
    final units = utf8.encode(buffer);
    final result = calloc<Uint8>(units.length);
    result.asTypedList(units.length).setAll(0, units);
    return result;
  }

  Pointer<HANDLE> _startRawPrintJob(
      {required String printerName,
      required String documentTitle,
      String dataType = 'RAW'}) {
    final pPrinterName = printerName.toNativeUtf16();

    final phPrinter = calloc<HANDLE>();
    final pDocInfo = calloc<DOC_INFO_1>();

    try {
      // https://docs.microsoft.com/en-us/windows/win32/printdocs/openprinter
      var fSuccess = OpenPrinter(pPrinterName, phPrinter, nullptr);
      if (fSuccess == 0) {
        final error = GetLastError();
        throw Exception('OpenPrint error, status: $fSuccess, error: $error');
      }

      // https://docs.microsoft.com/en-us/windows/win32/printdocs/doc-info-1
      pDocInfo.ref.pDocName = printerName.toNativeUtf16();
      // We can use RAW or TEXT data types
      pDocInfo.ref.pDatatype = TEXT(dataType); // RAW, TEXT or XPS_PASS
      // "To print to a printer, set this to NULL."
      pDocInfo.ref.pOutputFile = nullptr;

      //https://docs.microsoft.com/en-us/windows/win32/printdocs/startdocprinter
      fSuccess = StartDocPrinter(
          phPrinter.value,
          // "The version of the structure to which pDocInfo points. This value must be 1."
          1,
          pDocInfo);

      if (fSuccess == 0) {
        final error = GetLastError();
        throw Exception(
            'StartDocPrinter error, status: $fSuccess, error: $error');
      }

      return phPrinter;
    } finally {
      free(pPrinterName);
      free(pDocInfo);
    }
  }

  bool _startRawPrintPage(Pointer<HANDLE> phPrinter) {
    //https://docs.microsoft.com/en-us/windows/win32/printdocs/startpageprinter
    return StartPagePrinter(phPrinter.value) > 0;
  }

  bool _endRawPrintPage(Pointer<HANDLE> phPrinter) {
    return EndPagePrinter(phPrinter.value) > 0;
  }

  bool _endRawPrintJob(Pointer<HANDLE> phPrinter) {
    return EndDocPrinter(phPrinter.value) > 0 &&
        ClosePrinter(phPrinter.value) > 0;
  }

  bool _printRawData(Pointer<HANDLE> phPrinter, String dataToPrint) {
    final cWritten = calloc<DWORD>();
    // Convert the Dart String to a C++ compatible String.
    final data = _toCString(dataToPrint);

    try {
      // https://docs.microsoft.com/en-us/windows/win32/printdocs/writeprinter
      final result =
          WritePrinter(phPrinter.value, data, dataToPrint.length, cWritten);

      if (dataToPrint.length != cWritten.value) {
        final error = GetLastError();
        throw Exception('WritePrinter error, status: $result, error: $error');
      }

      return result > 0;
    } finally {
      free(cWritten);
      free(data);
    }
  }

  bool printLines(List<String> data) {
    // Example taken from:
    // https://docs.microsoft.com/en-us/windows/win32/printdocs/sending-data-directly-to-a-printer
    Pointer<HANDLE> printerHandle;
    var res = false;

    if (data.isEmpty) {
      return res;
    }

    printerHandle = _startRawPrintJob(
        printerName: printerName,
        documentTitle: 'My document',
        dataType: 'RAW');

    try {
      res = _startRawPrintPage(printerHandle);

      for (final item in data) {
        if (res) {
          res = _printRawData(printerHandle, item);
        }
      }
    } finally {
      _endRawPrintPage(printerHandle);
      _endRawPrintJob(printerHandle);
      free(printerHandle);
    }

    return res;
  }
}

void main() {
  // Example: ESC/POS sequence to open the cash drawer
  const openCashDrawer = '\x1b\x70\x00';

  // NOTE: You can get the printer name from the printer_list.dart example
  final printer = RawPrinter('EPSON TM-T20II Receipt');
  final data = <String>[];

  for (var i = 0; i < 10; i++) {
    data.add('Hello world line $i\n');
  }

  // At the end we send a printer command to open the cash drawer
  // for example for thermal printers using ESC/POS
  data.add(openCashDrawer);

  // Send to print all the lines at once
  if (printer.printLines(data)) {
    print('Success!');
  }
}
