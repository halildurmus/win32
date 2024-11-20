// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "win32.h"

MYLIB_EXPORT Win32Result AddPrinterW_Wrapper(PCWSTR pName, unsigned long level, unsigned char* pPrinter);

MYLIB_EXPORT Win32Result ClosePrinter_Wrapper(HANDLE hPrinter);

MYLIB_EXPORT Win32Result DeletePrinter_Wrapper(HANDLE hPrinter);

MYLIB_EXPORT Win32Result EnumJobsW_Wrapper(HANDLE hPrinter, unsigned long firstJob, unsigned long noJobs, unsigned long level, unsigned char* pJob, unsigned long cbBuf, unsigned long* pcbNeeded, unsigned long* pcReturned);

MYLIB_EXPORT Win32Result EnumPrintersW_Wrapper(unsigned long flags, PCWSTR name, unsigned long level, unsigned char* pPrinterEnum, unsigned long cbBuf, unsigned long* pcbNeeded, unsigned long* pcReturned);

MYLIB_EXPORT Win32Result GetPrinterW_Wrapper(HANDLE hPrinter, unsigned long level, unsigned char* pPrinter, unsigned long cbBuf, unsigned long* pcbNeeded);

MYLIB_EXPORT Win32Result GetSpoolFileHandle_Wrapper(HANDLE hPrinter);

MYLIB_EXPORT Win32Result OpenPrinterW_Wrapper(PCWSTR pPrinterName, HANDLE* phPrinter, PRINTER_DEFAULTSW* pDefault);

MYLIB_EXPORT Win32Result OpenPrinter2W_Wrapper(PCWSTR pPrinterName, HANDLE* phPrinter, PRINTER_DEFAULTSW* pDefault, PRINTER_OPTIONSW* pOptions);

MYLIB_EXPORT Win32Result SetPortW_Wrapper(PCWSTR pName, PCWSTR pPortName, unsigned long dwLevel, unsigned char* pPortInfo);

MYLIB_EXPORT Win32Result SetPrinterW_Wrapper(HANDLE hPrinter, unsigned long level, unsigned char* pPrinter, unsigned long command);
