// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "win32.h"
#include <highlevelmonitorconfigurationapi.h>
#include <lowlevelmonitorconfigurationapi.h>
#include <physicalmonitorenumerationapi.h>

MYLIB_EXPORT Win32Result DestroyPhysicalMonitor_Wrapper(HANDLE hMonitor);

MYLIB_EXPORT Win32Result DestroyPhysicalMonitors_Wrapper(unsigned long dwPhysicalMonitorArraySize, PHYSICAL_MONITOR* pPhysicalMonitorArray);

MYLIB_EXPORT Win32Result GetMonitorBrightness_Wrapper(HANDLE hMonitor, unsigned long* pdwMinimumBrightness, unsigned long* pdwCurrentBrightness, unsigned long* pdwMaximumBrightness);

MYLIB_EXPORT Win32Result GetMonitorColorTemperature_Wrapper(HANDLE hMonitor, LONG* pctCurrentColorTemperature);

MYLIB_EXPORT Win32Result GetMonitorContrast_Wrapper(HANDLE hMonitor, unsigned long* pdwMinimumContrast, unsigned long* pdwCurrentContrast, unsigned long* pdwMaximumContrast);

MYLIB_EXPORT Win32Result GetMonitorDisplayAreaPosition_Wrapper(HANDLE hMonitor, LONG ptPositionType, unsigned long* pdwMinimumPosition, unsigned long* pdwCurrentPosition, unsigned long* pdwMaximumPosition);

MYLIB_EXPORT Win32Result GetMonitorDisplayAreaSize_Wrapper(HANDLE hMonitor, LONG stSizeType, unsigned long* pdwMinimumWidthOrHeight, unsigned long* pdwCurrentWidthOrHeight, unsigned long* pdwMaximumWidthOrHeight);

MYLIB_EXPORT Win32Result GetMonitorRedGreenOrBlueDrive_Wrapper(HANDLE hMonitor, LONG dtDriveType, unsigned long* pdwMinimumDrive, unsigned long* pdwCurrentDrive, unsigned long* pdwMaximumDrive);

MYLIB_EXPORT Win32Result GetMonitorRedGreenOrBlueGain_Wrapper(HANDLE hMonitor, LONG gtGainType, unsigned long* pdwMinimumGain, unsigned long* pdwCurrentGain, unsigned long* pdwMaximumGain);

MYLIB_EXPORT Win32Result GetMonitorTechnologyType_Wrapper(HANDLE hMonitor, LONG* pdtyDisplayTechnologyType);

MYLIB_EXPORT Win32Result GetNumberOfPhysicalMonitorsFromHMONITOR_Wrapper(HMONITOR hMonitor, unsigned long* pdwNumberOfPhysicalMonitors);

MYLIB_EXPORT Win32Result GetPhysicalMonitorsFromHMONITOR_Wrapper(HMONITOR hMonitor, unsigned long dwPhysicalMonitorArraySize, PHYSICAL_MONITOR* pPhysicalMonitorArray);

MYLIB_EXPORT Win32Result SaveCurrentMonitorSettings_Wrapper(HANDLE hMonitor);

MYLIB_EXPORT Win32Result SetMonitorBrightness_Wrapper(HANDLE hMonitor, unsigned long dwNewBrightness);

MYLIB_EXPORT Win32Result SetMonitorColorTemperature_Wrapper(HANDLE hMonitor, LONG ctCurrentColorTemperature);

MYLIB_EXPORT Win32Result SetMonitorContrast_Wrapper(HANDLE hMonitor, unsigned long dwNewContrast);

MYLIB_EXPORT Win32Result SetMonitorDisplayAreaPosition_Wrapper(HANDLE hMonitor, LONG ptPositionType, unsigned long dwNewPosition);

MYLIB_EXPORT Win32Result SetMonitorDisplayAreaSize_Wrapper(HANDLE hMonitor, LONG stSizeType, unsigned long dwNewDisplayAreaWidthOrHeight);
