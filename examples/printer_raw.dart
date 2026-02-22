// Demonstrates sending RAW data directly to a Windows printer using Win32 APIs.
//
// This example is suitable for thermal printers (ESC/POS), label printers,
// or any printer that accepts RAW byte streams.
//
// Based on:
// https://learn.microsoft.com/windows/win32/printdocs/sending-data-directly-to-a-printer

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Supported printer data types.
///
/// `RAW` is the most common choice and bypasses the printer driver’s formatting
/// pipeline entirely.
enum PrinterDataType {
  raw('RAW'),
  text('TEXT'),
  xpsPass('XPS_PASS');

  const PrinterDataType(this.value);

  final String value;
}

/// A minimal, explicit wrapper for sending RAW data to a printer.
///
/// This class intentionally mirrors the Win32 printing lifecycle:
///
/// OpenPrinter → StartDocPrinter → StartPagePrinter → WritePrinter
/// → EndPagePrinter → EndDocPrinter → ClosePrinter
final class RawPrinter {
  const RawPrinter(this.printerName);

  final String printerName;

  /// Sends a list of byte strings to the printer as a single print job.
  ///
  /// Each entry is written sequentially using [WritePrinter].
  /// The caller is responsible for including line breaks or control sequences.
  bool send(
    List<String> payload, {
    String documentName = 'Raw print job',
    PrinterDataType dataType = PrinterDataType.raw,
  }) {
    if (payload.isEmpty) return false;
    return using((arena) {
      final handle = arena<Pointer>();
      final Win32Result(:value, :error) = OpenPrinter(
        arena.pcwstr(printerName),
        handle,
        nullptr,
      );
      if (!value) throw WindowsException(error.toHRESULT());
      final hPrinter = PRINTER_HANDLE(handle.value);

      try {
        _startDocument(arena, hPrinter, documentName, dataType);
        try {
          if (!StartPagePrinter(hPrinter)) {
            throw Exception('StartPagePrinter failed.');
          }
          for (final chunk in payload) {
            _write(arena, hPrinter, chunk);
          }
          EndPagePrinter(hPrinter);
        } finally {
          EndDocPrinter(hPrinter);
        }
      } finally {
        hPrinter.close();
      }
      return true;
    });
  }

  void _startDocument(
    Arena arena,
    PRINTER_HANDLE hPrinter,
    String documentName,
    PrinterDataType dataType,
  ) {
    final docInfo = arena<DOC_INFO_1>();
    docInfo.ref
      ..pDocName = arena.pwstr(documentName)
      ..pDatatype = arena.pwstr(dataType.value)
      ..pOutputFile = PWSTR(nullptr);
    final jobId = StartDocPrinter(hPrinter, 1, docInfo);
    if (jobId == 0) throw Exception('StartDocPrinter failed.');
  }

  void _write(Arena arena, PRINTER_HANDLE hPrinter, String data) {
    final bytesWritten = arena<DWORD>();
    final buffer = arena.pcstr(data);
    final result = WritePrinter(hPrinter, buffer, data.length, bytesWritten);
    if (!result || bytesWritten.value != data.length) {
      throw Exception('WritePrinter failed.');
    }
  }
}

void main() {
  // Example ESC/POS command: open cash drawer.
  const openCashDrawer = '\x1b\x70\x00';

  // Replace with your printer's name as shown in Windows Settings.
  const printerName = 'EPSON TM-T20II Receipt';

  const printer = RawPrinter(printerName);
  final payload = <String>[
    'Hello, world!\n',
    'This was printed using RAW Win32 APIs.\n',
    '\n',
    openCashDrawer,
  ];
  try {
    printer.send(payload, documentName: 'Raw printer example');
    print('Data sent to printer "$printerName".');
  } catch (e) {
    print('Printing failed: $e');
  }
}
