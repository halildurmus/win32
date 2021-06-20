// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'structs.dart';
import 'structs.g.dart';

final _spoolss = DynamicLibrary.open('spoolss.dll');

/// The AbortPrinter function deletes a printer's spool file if the printer
/// is configured for spooling.
///
/// ```c
/// BOOL AbortPrinter(
///   _In_ HANDLE hPrinter
/// );
/// ```
/// {@category winspool}
int AbortPrinter(int hPrinter) {
  final _AbortPrinter = _spoolss.lookupFunction<Int32 Function(IntPtr hPrinter),
      int Function(int hPrinter)>('AbortPrinter');
  return _AbortPrinter(hPrinter);
}

/// The ClosePrinter function closes the specified printer object.
///
/// ```c
/// BOOL ClosePrinter(
///   _In_ HANDLE hPrinter
///   );
/// ```
/// {@category winspool}
int ClosePrinter(int hPrinter) {
  final _ClosePrinter = _spoolss.lookupFunction<Int32 Function(IntPtr hPrinter),
      int Function(int hPrinter)>('ClosePrinter');
  return _ClosePrinter(hPrinter);
}

/// The DeletePrinter function deletes the specified printer object.
///
/// ```c
/// BOOL DeletePrinter(
///   _Inout_ HANDLE hPrinter
/// );
/// ```
/// {@category winspool}
int DeletePrinter(int hPrinter) {
  final _DeletePrinter = _spoolss.lookupFunction<
      Int32 Function(IntPtr hPrinter),
      int Function(int hPrinter)>('DeletePrinter');
  return _DeletePrinter(hPrinter);
}

/// The EndDocPrinter function ends a print job for the specified printer.
///
/// ```c
/// BOOL EndDocPrinter(
///   _In_ HANDLE hPrinter
/// );
/// ```
/// {@category winspool}
int EndDocPrinter(int hPrinter) {
  final _EndDocPrinter = _spoolss.lookupFunction<
      Int32 Function(IntPtr hPrinter),
      int Function(int hPrinter)>('EndDocPrinter');
  return _EndDocPrinter(hPrinter);
}

/// The EndPagePrinter function notifies the print spooler that the
/// application is at the end of a page in a print job.
///
/// ```c
/// BOOL EndPagePrinter(
///   _In_ HANDLE hPrinter
/// );
/// ```
/// {@category winspool}
int EndPagePrinter(int hPrinter) {
  final _EndPagePrinter = _spoolss.lookupFunction<
      Int32 Function(IntPtr hPrinter),
      int Function(int hPrinter)>('EndPagePrinter');
  return _EndPagePrinter(hPrinter);
}

/// The FindClosePrinterChangeNotification function closes a change
/// notification object created by calling the
/// FindFirstPrinterChangeNotification function. The printer or print
/// server associated with the change notification object will no longer be
/// monitored by that object.
///
/// ```c
/// BOOL FindClosePrinterChangeNotification(
///   _In_ HANDLE hChange
/// );
/// ```
/// {@category winspool}
int FindClosePrinterChangeNotification(int hChange) {
  final _FindClosePrinterChangeNotification = _spoolss.lookupFunction<
      Int32 Function(IntPtr hChange),
      int Function(int hChange)>('FindClosePrinterChangeNotification');
  return _FindClosePrinterChangeNotification(hChange);
}

/// The FindFirstPrinterChangeNotification function creates a change
/// notification object and returns a handle to the object. You can then
/// use this handle in a call to one of the wait functions to monitor
/// changes to the printer or print server.
///
/// ```c
/// HANDLE FindFirstPrinterChangeNotification(
///   _In_     HANDLE hPrinter,
///            DWORD  fdwFilter,
///            DWORD  fdwOptions,
///   _In_opt_ LPVOID pPrinterNotifyOptions
/// );
/// ```
/// {@category winspool}
int FindFirstPrinterChangeNotification(int hPrinter, int fdwFilter,
    int fdwOptions, Pointer pPrinterNotifyOptions) {
  final _FindFirstPrinterChangeNotification = _spoolss.lookupFunction<
      IntPtr Function(IntPtr hPrinter, Uint32 fdwFilter, Uint32 fdwOptions,
          Pointer pPrinterNotifyOptions),
      int Function(int hPrinter, int fdwFilter, int fdwOptions,
          Pointer pPrinterNotifyOptions)>('FindFirstPrinterChangeNotification');
  return _FindFirstPrinterChangeNotification(
      hPrinter, fdwFilter, fdwOptions, pPrinterNotifyOptions);
}

/// The FindNextPrinterChangeNotification function retrieves information
/// about the most recent change notification for a change notification
/// object associated with a printer or print server. Call this function
/// when a wait operation on the change notification object is satisfied.
///
/// ```c
/// BOOL FindNextPrinterChangeNotification(
///   _In_      HANDLE hChange,
///   _Out_opt_ PDWORD pdwChange,
///   _In_opt_  LPVOID pPrinterNotifyOptions,
///   _Out_opt_ LPVOID *ppPrinterNotifyInfo
/// );
/// ```
/// {@category winspool}
int FindNextPrinterChangeNotification(int hChange, Pointer<Uint32> pdwChange,
    Pointer pvReserved, Pointer<Pointer> ppPrinterNotifyInfo) {
  final _FindNextPrinterChangeNotification = _spoolss.lookupFunction<
          Int32 Function(IntPtr hChange, Pointer<Uint32> pdwChange,
              Pointer pvReserved, Pointer<Pointer> ppPrinterNotifyInfo),
          int Function(int hChange, Pointer<Uint32> pdwChange,
              Pointer pvReserved, Pointer<Pointer> ppPrinterNotifyInfo)>(
      'FindNextPrinterChangeNotification');
  return _FindNextPrinterChangeNotification(
      hChange, pdwChange, pvReserved, ppPrinterNotifyInfo);
}

/// The FreePrinterNotifyInfo function frees a system-allocated buffer
/// created by the FindNextPrinterChangeNotification function.
///
/// ```c
/// BOOL FreePrinterNotifyInfo(
///   _In_ PPRINTER_NOTIFY_INFO pPrinterNotifyInfo
/// );
/// ```
/// {@category winspool}
int FreePrinterNotifyInfo(Pointer<PRINTER_NOTIFY_INFO> pPrinterNotifyInfo) {
  final _FreePrinterNotifyInfo = _spoolss.lookupFunction<
          Int32 Function(Pointer<PRINTER_NOTIFY_INFO> pPrinterNotifyInfo),
          int Function(Pointer<PRINTER_NOTIFY_INFO> pPrinterNotifyInfo)>(
      'FreePrinterNotifyInfo');
  return _FreePrinterNotifyInfo(pPrinterNotifyInfo);
}

/// Retrieves a handle to the specified printer, print server, or other
/// types of handles in the print subsystem, while setting some of the
/// printer options.
///
/// ```c
/// BOOL OpenPrinter2W(
///   _In_  LPCTSTR            pPrinterName,
///   _Out_ LPHANDLE           phPrinter,
///   _In_  LPPRINTER_DEFAULTS pDefault,
///   _In_  PPRINTER_OPTIONS   pOptions
/// );
/// ```
/// {@category winspool}
int OpenPrinter2(Pointer<Utf16> pPrinterName, Pointer<IntPtr> phPrinter,
    Pointer<PRINTER_DEFAULTS> pDefault, Pointer<PRINTER_OPTIONS> pOptions) {
  final _OpenPrinter2 = _spoolss.lookupFunction<
      Int32 Function(
          Pointer<Utf16> pPrinterName,
          Pointer<IntPtr> phPrinter,
          Pointer<PRINTER_DEFAULTS> pDefault,
          Pointer<PRINTER_OPTIONS> pOptions),
      int Function(
          Pointer<Utf16> pPrinterName,
          Pointer<IntPtr> phPrinter,
          Pointer<PRINTER_DEFAULTS> pDefault,
          Pointer<PRINTER_OPTIONS> pOptions)>('OpenPrinter2W');
  return _OpenPrinter2(pPrinterName, phPrinter, pDefault, pOptions);
}

/// The ReadPrinter function retrieves data from the specified printer.
///
/// ```c
/// BOOL ReadPrinter(
///   _In_  HANDLE  hPrinter,
///   _Out_ LPVOID  pBuf,
///   _In_  DWORD   cbBuf,
///   _Out_ LPDWORD pNoBytesRead
/// );
/// ```
/// {@category winspool}
int ReadPrinter(
    int hPrinter, Pointer pBuf, int cbBuf, Pointer<Uint32> pNoBytesRead) {
  final _ReadPrinter = _spoolss.lookupFunction<
      Int32 Function(IntPtr hPrinter, Pointer pBuf, Uint32 cbBuf,
          Pointer<Uint32> pNoBytesRead),
      int Function(int hPrinter, Pointer pBuf, int cbBuf,
          Pointer<Uint32> pNoBytesRead)>('ReadPrinter');
  return _ReadPrinter(hPrinter, pBuf, cbBuf, pNoBytesRead);
}

/// Reports to the Print Spooler service whether an XPS print job is in the
/// spooling or the rendering phase and what part of the processing is
/// currently underway.
///
/// ```c
/// HRESULT ReportJobProcessingProgress(
///   _In_ HANDLE                printerHandle,
///   _In_ ULONG                 jobId,
///        EPrintXPSJobOperation jobOperation,
///        EPrintXPSJobProgress  jobProgress
/// );
/// ```
/// {@category winspool}
int ReportJobProcessingProgress(
    int printerHandle, int jobId, int jobOperation, int jobProgress) {
  final _ReportJobProcessingProgress = _spoolss.lookupFunction<
      Int32 Function(IntPtr printerHandle, Uint32 jobId, Uint32 jobOperation,
          Uint32 jobProgress),
      int Function(int printerHandle, int jobId, int jobOperation,
          int jobProgress)>('ReportJobProcessingProgress');
  return _ReportJobProcessingProgress(
      printerHandle, jobId, jobOperation, jobProgress);
}

/// The ScheduleJob function requests that the print spooler schedule a
/// specified print job for printing.
///
/// ```c
/// BOOL ScheduleJob(
///   _In_ HANDLE hPrinter,
///   _In_ DWORD  dwJobID
/// );
/// ```
/// {@category winspool}
int ScheduleJob(int hPrinter, int JobId) {
  final _ScheduleJob = _spoolss.lookupFunction<
      Int32 Function(IntPtr hPrinter, Uint32 JobId),
      int Function(int hPrinter, int JobId)>('ScheduleJob');
  return _ScheduleJob(hPrinter, JobId);
}

/// The StartPagePrinter function notifies the spooler that a page is about
/// to be printed on the specified printer.
///
/// ```c
/// BOOL StartPagePrinter(
///   _In_ HANDLE hPrinter
/// );
/// ```
/// {@category winspool}
int StartPagePrinter(int hPrinter) {
  final _StartPagePrinter = _spoolss.lookupFunction<
      Int32 Function(IntPtr hPrinter),
      int Function(int hPrinter)>('StartPagePrinter');
  return _StartPagePrinter(hPrinter);
}

/// The WritePrinter function notifies the print spooler that data should
/// be written to the specified printer.
///
/// ```c
/// BOOL WritePrinter(
///   _In_  HANDLE  hPrinter,
///   _In_  LPVOID  pBuf,
///   _In_  DWORD   cbBuf,
///   _Out_ LPDWORD pcWritten
/// );
/// ```
/// {@category winspool}
int WritePrinter(
    int hPrinter, Pointer pBuf, int cbBuf, Pointer<Uint32> pcWritten) {
  final _WritePrinter = _spoolss.lookupFunction<
      Int32 Function(IntPtr hPrinter, Pointer pBuf, Uint32 cbBuf,
          Pointer<Uint32> pcWritten),
      int Function(int hPrinter, Pointer pBuf, int cbBuf,
          Pointer<Uint32> pcWritten)>('WritePrinter');
  return _WritePrinter(hPrinter, pBuf, cbBuf, pcWritten);
}
