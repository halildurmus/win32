// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "win32.h"

MYLIB_EXPORT HANDLE AddPrinterW_Wrapper(PCWSTR pName, unsigned long level, unsigned char* pPrinter);

MYLIB_EXPORT BOOL ClosePrinter_Wrapper(PRINTER_HANDLE hPrinter);

MYLIB_EXPORT BOOL DeletePrinter_Wrapper(PRINTER_HANDLE hPrinter);

MYLIB_EXPORT BOOL EnumJobsW_Wrapper(PRINTER_HANDLE hPrinter, unsigned long firstJob, unsigned long noJobs, unsigned long level, unsigned char* pJob, unsigned long cbBuf, unsigned long* pcbNeeded, unsigned long* pcReturned);

MYLIB_EXPORT BOOL EnumPrintersW_Wrapper(unsigned long flags, PCWSTR name, unsigned long level, unsigned char* pPrinterEnum, unsigned long cbBuf, unsigned long* pcbNeeded, unsigned long* pcReturned);

MYLIB_EXPORT BOOL GetPrinterW_Wrapper(PRINTER_HANDLE hPrinter, unsigned long level, unsigned char* pPrinter, unsigned long cbBuf, unsigned long* pcbNeeded);

MYLIB_EXPORT HANDLE GetSpoolFileHandle_Wrapper(PRINTER_HANDLE hPrinter);

MYLIB_EXPORT BOOL OpenPrinterW_Wrapper(PCWSTR pPrinterName, PRINTER_HANDLE* phPrinter, PRINTER_DEFAULTSW* pDefault);

MYLIB_EXPORT BOOL OpenPrinter2W_Wrapper(PCWSTR pPrinterName, PRINTER_HANDLE* phPrinter, PRINTER_DEFAULTSW* pDefault, PRINTER_OPTIONSW* pOptions);

MYLIB_EXPORT BOOL SetPortW_Wrapper(PCWSTR pName, PCWSTR pPortName, unsigned long dwLevel, unsigned char* pPortInfo);

MYLIB_EXPORT BOOL SetPrinterW_Wrapper(PRINTER_HANDLE hPrinter, unsigned long level, unsigned char* pPrinter, unsigned long command);
