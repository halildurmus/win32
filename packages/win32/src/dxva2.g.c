// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "dxva2.g.h"

Win32Result DestroyPhysicalMonitor_Wrapper(HANDLE hMonitor) {
  BOOL value_ = DestroyPhysicalMonitor(hMonitor);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result DestroyPhysicalMonitors_Wrapper(unsigned long dwPhysicalMonitorArraySize, PHYSICAL_MONITOR* pPhysicalMonitorArray) {
  BOOL value_ = DestroyPhysicalMonitors(dwPhysicalMonitorArraySize, pPhysicalMonitorArray);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetMonitorBrightness_Wrapper(HANDLE hMonitor, unsigned long* pdwMinimumBrightness, unsigned long* pdwCurrentBrightness, unsigned long* pdwMaximumBrightness) {
  int value_ = GetMonitorBrightness(hMonitor, pdwMinimumBrightness, pdwCurrentBrightness, pdwMaximumBrightness);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetMonitorColorTemperature_Wrapper(HANDLE hMonitor, LONG* pctCurrentColorTemperature) {
  int value_ = GetMonitorColorTemperature(hMonitor, pctCurrentColorTemperature);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetMonitorContrast_Wrapper(HANDLE hMonitor, unsigned long* pdwMinimumContrast, unsigned long* pdwCurrentContrast, unsigned long* pdwMaximumContrast) {
  int value_ = GetMonitorContrast(hMonitor, pdwMinimumContrast, pdwCurrentContrast, pdwMaximumContrast);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetMonitorDisplayAreaPosition_Wrapper(HANDLE hMonitor, LONG ptPositionType, unsigned long* pdwMinimumPosition, unsigned long* pdwCurrentPosition, unsigned long* pdwMaximumPosition) {
  int value_ = GetMonitorDisplayAreaPosition(hMonitor, ptPositionType, pdwMinimumPosition, pdwCurrentPosition, pdwMaximumPosition);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetMonitorDisplayAreaSize_Wrapper(HANDLE hMonitor, LONG stSizeType, unsigned long* pdwMinimumWidthOrHeight, unsigned long* pdwCurrentWidthOrHeight, unsigned long* pdwMaximumWidthOrHeight) {
  int value_ = GetMonitorDisplayAreaSize(hMonitor, stSizeType, pdwMinimumWidthOrHeight, pdwCurrentWidthOrHeight, pdwMaximumWidthOrHeight);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetMonitorRedGreenOrBlueDrive_Wrapper(HANDLE hMonitor, LONG dtDriveType, unsigned long* pdwMinimumDrive, unsigned long* pdwCurrentDrive, unsigned long* pdwMaximumDrive) {
  int value_ = GetMonitorRedGreenOrBlueDrive(hMonitor, dtDriveType, pdwMinimumDrive, pdwCurrentDrive, pdwMaximumDrive);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetMonitorRedGreenOrBlueGain_Wrapper(HANDLE hMonitor, LONG gtGainType, unsigned long* pdwMinimumGain, unsigned long* pdwCurrentGain, unsigned long* pdwMaximumGain) {
  int value_ = GetMonitorRedGreenOrBlueGain(hMonitor, gtGainType, pdwMinimumGain, pdwCurrentGain, pdwMaximumGain);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetMonitorTechnologyType_Wrapper(HANDLE hMonitor, LONG* pdtyDisplayTechnologyType) {
  int value_ = GetMonitorTechnologyType(hMonitor, pdtyDisplayTechnologyType);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetNumberOfPhysicalMonitorsFromHMONITOR_Wrapper(HMONITOR hMonitor, unsigned long* pdwNumberOfPhysicalMonitors) {
  BOOL value_ = GetNumberOfPhysicalMonitorsFromHMONITOR(hMonitor, pdwNumberOfPhysicalMonitors);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPhysicalMonitorsFromHMONITOR_Wrapper(HMONITOR hMonitor, unsigned long dwPhysicalMonitorArraySize, PHYSICAL_MONITOR* pPhysicalMonitorArray) {
  BOOL value_ = GetPhysicalMonitorsFromHMONITOR(hMonitor, dwPhysicalMonitorArraySize, pPhysicalMonitorArray);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SaveCurrentMonitorSettings_Wrapper(HANDLE hMonitor) {
  int value_ = SaveCurrentMonitorSettings(hMonitor);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetMonitorBrightness_Wrapper(HANDLE hMonitor, unsigned long dwNewBrightness) {
  int value_ = SetMonitorBrightness(hMonitor, dwNewBrightness);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetMonitorColorTemperature_Wrapper(HANDLE hMonitor, LONG ctCurrentColorTemperature) {
  int value_ = SetMonitorColorTemperature(hMonitor, ctCurrentColorTemperature);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetMonitorContrast_Wrapper(HANDLE hMonitor, unsigned long dwNewContrast) {
  int value_ = SetMonitorContrast(hMonitor, dwNewContrast);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetMonitorDisplayAreaPosition_Wrapper(HANDLE hMonitor, LONG ptPositionType, unsigned long dwNewPosition) {
  int value_ = SetMonitorDisplayAreaPosition(hMonitor, ptPositionType, dwNewPosition);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SetMonitorDisplayAreaSize_Wrapper(HANDLE hMonitor, LONG stSizeType, unsigned long dwNewDisplayAreaWidthOrHeight) {
  int value_ = SetMonitorDisplayAreaSize(hMonitor, stSizeType, dwNewDisplayAreaWidthOrHeight);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}
