// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "win32.h"
#include <highlevelmonitorconfigurationapi.h>
#include <physicalmonitorenumerationapi.h>

MYLIB_EXPORT BOOL DestroyPhysicalMonitor_Wrapper(HANDLE hMonitor);

MYLIB_EXPORT BOOL DestroyPhysicalMonitors_Wrapper(unsigned long dwPhysicalMonitorArraySize, PHYSICAL_MONITOR* pPhysicalMonitorArray);

MYLIB_EXPORT int GetMonitorBrightness_Wrapper(HANDLE hMonitor, unsigned long* pdwMinimumBrightness, unsigned long* pdwCurrentBrightness, unsigned long* pdwMaximumBrightness);

MYLIB_EXPORT int GetMonitorColorTemperature_Wrapper(HANDLE hMonitor, LONG* pctCurrentColorTemperature);

MYLIB_EXPORT int GetMonitorContrast_Wrapper(HANDLE hMonitor, unsigned long* pdwMinimumContrast, unsigned long* pdwCurrentContrast, unsigned long* pdwMaximumContrast);

MYLIB_EXPORT int GetMonitorDisplayAreaPosition_Wrapper(HANDLE hMonitor, LONG ptPositionType, unsigned long* pdwMinimumPosition, unsigned long* pdwCurrentPosition, unsigned long* pdwMaximumPosition);

MYLIB_EXPORT int GetMonitorDisplayAreaSize_Wrapper(HANDLE hMonitor, LONG stSizeType, unsigned long* pdwMinimumWidthOrHeight, unsigned long* pdwCurrentWidthOrHeight, unsigned long* pdwMaximumWidthOrHeight);

MYLIB_EXPORT int GetMonitorRedGreenOrBlueDrive_Wrapper(HANDLE hMonitor, LONG dtDriveType, unsigned long* pdwMinimumDrive, unsigned long* pdwCurrentDrive, unsigned long* pdwMaximumDrive);

MYLIB_EXPORT int GetMonitorRedGreenOrBlueGain_Wrapper(HANDLE hMonitor, LONG gtGainType, unsigned long* pdwMinimumGain, unsigned long* pdwCurrentGain, unsigned long* pdwMaximumGain);

MYLIB_EXPORT int GetMonitorTechnologyType_Wrapper(HANDLE hMonitor, LONG* pdtyDisplayTechnologyType);

MYLIB_EXPORT BOOL GetNumberOfPhysicalMonitorsFromHMONITOR_Wrapper(HMONITOR hMonitor, unsigned long* pdwNumberOfPhysicalMonitors);

MYLIB_EXPORT BOOL GetPhysicalMonitorsFromHMONITOR_Wrapper(HMONITOR hMonitor, unsigned long dwPhysicalMonitorArraySize, PHYSICAL_MONITOR* pPhysicalMonitorArray);

MYLIB_EXPORT int SaveCurrentMonitorSettings_Wrapper(HANDLE hMonitor);

MYLIB_EXPORT int SetMonitorBrightness_Wrapper(HANDLE hMonitor, unsigned long dwNewBrightness);

MYLIB_EXPORT int SetMonitorColorTemperature_Wrapper(HANDLE hMonitor, LONG ctCurrentColorTemperature);

MYLIB_EXPORT int SetMonitorContrast_Wrapper(HANDLE hMonitor, unsigned long dwNewContrast);

MYLIB_EXPORT int SetMonitorDisplayAreaPosition_Wrapper(HANDLE hMonitor, LONG ptPositionType, unsigned long dwNewPosition);

MYLIB_EXPORT int SetMonitorDisplayAreaSize_Wrapper(HANDLE hMonitor, LONG stSizeType, unsigned long dwNewDisplayAreaWidthOrHeight);
