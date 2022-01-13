// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/xps/printing/IXpsPrintJob.dart';
import '../../../storage/xps/printing/IXpsPrintJobStream.dart';
import '../../../storage/xps/IXpsOMPackageTarget.dart'; // -----------------------------------------------------------------------

// xpsprint.dll
// -----------------------------------------------------------------------
final _xpsprint = DynamicLibrary.open('xpsprint.dll');

int StartXpsPrintJob(
  Pointer<Utf16> printerName,
  Pointer<Utf16> jobName,
  Pointer<Utf16> outputFileName,
  int progressEvent,
  int completionEvent,
  Pointer<Uint8> printablePagesOn,
  int printablePagesOnCount,
  Pointer<Pointer<COMObject>> xpsPrintJob,
  Pointer<Pointer<COMObject>> documentStream,
  Pointer<Pointer<COMObject>> printTicketStream,
) =>
    _StartXpsPrintJob(
      printerName,
      jobName,
      outputFileName,
      progressEvent,
      completionEvent,
      printablePagesOn,
      printablePagesOnCount,
      xpsPrintJob,
      documentStream,
      printTicketStream,
    );

late final _StartXpsPrintJob = _xpsprint.lookupFunction<
    Int32 Function(
  Pointer<Utf16> printerName,
  Pointer<Utf16> jobName,
  Pointer<Utf16> outputFileName,
  IntPtr progressEvent,
  IntPtr completionEvent,
  Pointer<Uint8> printablePagesOn,
  Uint32 printablePagesOnCount,
  Pointer<Pointer<COMObject>> xpsPrintJob,
  Pointer<Pointer<COMObject>> documentStream,
  Pointer<Pointer<COMObject>> printTicketStream,
),
    int Function(
  Pointer<Utf16> printerName,
  Pointer<Utf16> jobName,
  Pointer<Utf16> outputFileName,
  int progressEvent,
  int completionEvent,
  Pointer<Uint8> printablePagesOn,
  int printablePagesOnCount,
  Pointer<Pointer<COMObject>> xpsPrintJob,
  Pointer<Pointer<COMObject>> documentStream,
  Pointer<Pointer<COMObject>> printTicketStream,
)>('StartXpsPrintJob');

int StartXpsPrintJob1(
  Pointer<Utf16> printerName,
  Pointer<Utf16> jobName,
  Pointer<Utf16> outputFileName,
  int progressEvent,
  int completionEvent,
  Pointer<Pointer<COMObject>> xpsPrintJob,
  Pointer<Pointer<COMObject>> printContentReceiver,
) =>
    _StartXpsPrintJob1(
      printerName,
      jobName,
      outputFileName,
      progressEvent,
      completionEvent,
      xpsPrintJob,
      printContentReceiver,
    );

late final _StartXpsPrintJob1 = _xpsprint.lookupFunction<
    Int32 Function(
  Pointer<Utf16> printerName,
  Pointer<Utf16> jobName,
  Pointer<Utf16> outputFileName,
  IntPtr progressEvent,
  IntPtr completionEvent,
  Pointer<Pointer<COMObject>> xpsPrintJob,
  Pointer<Pointer<COMObject>> printContentReceiver,
),
    int Function(
  Pointer<Utf16> printerName,
  Pointer<Utf16> jobName,
  Pointer<Utf16> outputFileName,
  int progressEvent,
  int completionEvent,
  Pointer<Pointer<COMObject>> xpsPrintJob,
  Pointer<Pointer<COMObject>> printContentReceiver,
)>('StartXpsPrintJob1');
