// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "winspool.g.h"

Win32Result AddPrinterW_Wrapper(PCWSTR pName, unsigned long level, unsigned char* pPrinter) {
  HANDLE value_ = AddPrinterW(pName, level, pPrinter);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result ClosePrinter_Wrapper(HANDLE hPrinter) {
  BOOL value_ = ClosePrinter(hPrinter);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DeletePrinter_Wrapper(HANDLE hPrinter) {
  BOOL value_ = DeletePrinter(hPrinter);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EnumJobsW_Wrapper(HANDLE hPrinter, unsigned long firstJob, unsigned long noJobs, unsigned long level, unsigned char* pJob, unsigned long cbBuf, unsigned long* pcbNeeded, unsigned long* pcReturned) {
  BOOL value_ = EnumJobsW(hPrinter, firstJob, noJobs, level, pJob, cbBuf, pcbNeeded, pcReturned);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EnumPrintersW_Wrapper(unsigned long flags, PCWSTR name, unsigned long level, unsigned char* pPrinterEnum, unsigned long cbBuf, unsigned long* pcbNeeded, unsigned long* pcReturned) {
  BOOL value_ = EnumPrintersW(flags, name, level, pPrinterEnum, cbBuf, pcbNeeded, pcReturned);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPrinterW_Wrapper(HANDLE hPrinter, unsigned long level, unsigned char* pPrinter, unsigned long cbBuf, unsigned long* pcbNeeded) {
  BOOL value_ = GetPrinterW(hPrinter, level, pPrinter, cbBuf, pcbNeeded);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetSpoolFileHandle_Wrapper(HANDLE hPrinter) {
  HANDLE value_ = GetSpoolFileHandle(hPrinter);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result OpenPrinterW_Wrapper(PCWSTR pPrinterName, HANDLE* phPrinter, PRINTER_DEFAULTSW* pDefault) {
  BOOL value_ = OpenPrinterW(pPrinterName, phPrinter, pDefault);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result OpenPrinter2W_Wrapper(PCWSTR pPrinterName, HANDLE* phPrinter, PRINTER_DEFAULTSW* pDefault, PRINTER_OPTIONSW* pOptions) {
  BOOL value_ = OpenPrinter2W(pPrinterName, phPrinter, pDefault, pOptions);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetPortW_Wrapper(PCWSTR pName, PCWSTR pPortName, unsigned long dwLevel, unsigned char* pPortInfo) {
  BOOL value_ = SetPortW(pName, pPortName, dwLevel, pPortInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetPrinterW_Wrapper(HANDLE hPrinter, unsigned long level, unsigned char* pPrinter, unsigned long command) {
  BOOL value_ = SetPrinterW(hPrinter, level, pPrinter, command);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}
