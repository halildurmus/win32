// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "winspool.g.h"

HANDLE AddPrinterW_Wrapper(PCWSTR pName, unsigned long level, unsigned char* pPrinter) {
  trace_print("Calling AddPrinterW\n");
  HANDLE result_ = AddPrinterW(pName, level, pPrinter);
  trace_print("AddPrinterW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ClosePrinter_Wrapper(PRINTER_HANDLE hPrinter) {
  trace_print("Calling ClosePrinter\n");
  BOOL result_ = ClosePrinter(hPrinter);
  trace_print("ClosePrinter returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DeletePrinter_Wrapper(PRINTER_HANDLE hPrinter) {
  trace_print("Calling DeletePrinter\n");
  BOOL result_ = DeletePrinter(hPrinter);
  trace_print("DeletePrinter returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EnumJobsW_Wrapper(PRINTER_HANDLE hPrinter, unsigned long firstJob, unsigned long noJobs, unsigned long level, unsigned char* pJob, unsigned long cbBuf, unsigned long* pcbNeeded, unsigned long* pcReturned) {
  trace_print("Calling EnumJobsW\n");
  BOOL result_ = EnumJobsW(hPrinter, firstJob, noJobs, level, pJob, cbBuf, pcbNeeded, pcReturned);
  trace_print("EnumJobsW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EnumPrintersW_Wrapper(unsigned long flags, PCWSTR name, unsigned long level, unsigned char* pPrinterEnum, unsigned long cbBuf, unsigned long* pcbNeeded, unsigned long* pcReturned) {
  trace_print("Calling EnumPrintersW\n");
  BOOL result_ = EnumPrintersW(flags, name, level, pPrinterEnum, cbBuf, pcbNeeded, pcReturned);
  trace_print("EnumPrintersW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPrinterW_Wrapper(PRINTER_HANDLE hPrinter, unsigned long level, unsigned char* pPrinter, unsigned long cbBuf, unsigned long* pcbNeeded) {
  trace_print("Calling GetPrinterW\n");
  BOOL result_ = GetPrinterW(hPrinter, level, pPrinter, cbBuf, pcbNeeded);
  trace_print("GetPrinterW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HANDLE GetSpoolFileHandle_Wrapper(PRINTER_HANDLE hPrinter) {
  trace_print("Calling GetSpoolFileHandle\n");
  HANDLE result_ = GetSpoolFileHandle(hPrinter);
  trace_print("GetSpoolFileHandle returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL OpenPrinterW_Wrapper(PCWSTR pPrinterName, PRINTER_HANDLE* phPrinter, PRINTER_DEFAULTSW* pDefault) {
  trace_print("Calling OpenPrinterW\n");
  BOOL result_ = OpenPrinterW(pPrinterName, phPrinter, pDefault);
  trace_print("OpenPrinterW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL OpenPrinter2W_Wrapper(PCWSTR pPrinterName, PRINTER_HANDLE* phPrinter, PRINTER_DEFAULTSW* pDefault, PRINTER_OPTIONSW* pOptions) {
  trace_print("Calling OpenPrinter2W\n");
  BOOL result_ = OpenPrinter2W(pPrinterName, phPrinter, pDefault, pOptions);
  trace_print("OpenPrinter2W returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetPortW_Wrapper(PCWSTR pName, PCWSTR pPortName, unsigned long dwLevel, unsigned char* pPortInfo) {
  trace_print("Calling SetPortW\n");
  BOOL result_ = SetPortW(pName, pPortName, dwLevel, pPortInfo);
  trace_print("SetPortW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SetPrinterW_Wrapper(PRINTER_HANDLE hPrinter, unsigned long level, unsigned char* pPrinter, unsigned long command) {
  trace_print("Calling SetPrinterW\n");
  BOOL result_ = SetPrinterW(hPrinter, level, pPrinter, command);
  trace_print("SetPrinterW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
