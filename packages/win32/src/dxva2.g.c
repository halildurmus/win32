// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "dxva2.g.h"

BOOL DestroyPhysicalMonitor_Wrapper(HANDLE hMonitor) {
  trace_print("Calling DestroyPhysicalMonitor\n");
  BOOL result_ = DestroyPhysicalMonitor(hMonitor);
  trace_print("DestroyPhysicalMonitor returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL DestroyPhysicalMonitors_Wrapper(unsigned long dwPhysicalMonitorArraySize, PHYSICAL_MONITOR* pPhysicalMonitorArray) {
  trace_print("Calling DestroyPhysicalMonitors\n");
  BOOL result_ = DestroyPhysicalMonitors(dwPhysicalMonitorArraySize, pPhysicalMonitorArray);
  trace_print("DestroyPhysicalMonitors returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetMonitorBrightness_Wrapper(HANDLE hMonitor, unsigned long* pdwMinimumBrightness, unsigned long* pdwCurrentBrightness, unsigned long* pdwMaximumBrightness) {
  trace_print("Calling GetMonitorBrightness\n");
  int result_ = GetMonitorBrightness(hMonitor, pdwMinimumBrightness, pdwCurrentBrightness, pdwMaximumBrightness);
  trace_print("GetMonitorBrightness returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetMonitorColorTemperature_Wrapper(HANDLE hMonitor, LONG* pctCurrentColorTemperature) {
  trace_print("Calling GetMonitorColorTemperature\n");
  int result_ = GetMonitorColorTemperature(hMonitor, pctCurrentColorTemperature);
  trace_print("GetMonitorColorTemperature returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetMonitorContrast_Wrapper(HANDLE hMonitor, unsigned long* pdwMinimumContrast, unsigned long* pdwCurrentContrast, unsigned long* pdwMaximumContrast) {
  trace_print("Calling GetMonitorContrast\n");
  int result_ = GetMonitorContrast(hMonitor, pdwMinimumContrast, pdwCurrentContrast, pdwMaximumContrast);
  trace_print("GetMonitorContrast returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetMonitorDisplayAreaPosition_Wrapper(HANDLE hMonitor, LONG ptPositionType, unsigned long* pdwMinimumPosition, unsigned long* pdwCurrentPosition, unsigned long* pdwMaximumPosition) {
  trace_print("Calling GetMonitorDisplayAreaPosition\n");
  int result_ = GetMonitorDisplayAreaPosition(hMonitor, ptPositionType, pdwMinimumPosition, pdwCurrentPosition, pdwMaximumPosition);
  trace_print("GetMonitorDisplayAreaPosition returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetMonitorDisplayAreaSize_Wrapper(HANDLE hMonitor, LONG stSizeType, unsigned long* pdwMinimumWidthOrHeight, unsigned long* pdwCurrentWidthOrHeight, unsigned long* pdwMaximumWidthOrHeight) {
  trace_print("Calling GetMonitorDisplayAreaSize\n");
  int result_ = GetMonitorDisplayAreaSize(hMonitor, stSizeType, pdwMinimumWidthOrHeight, pdwCurrentWidthOrHeight, pdwMaximumWidthOrHeight);
  trace_print("GetMonitorDisplayAreaSize returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetMonitorRedGreenOrBlueDrive_Wrapper(HANDLE hMonitor, LONG dtDriveType, unsigned long* pdwMinimumDrive, unsigned long* pdwCurrentDrive, unsigned long* pdwMaximumDrive) {
  trace_print("Calling GetMonitorRedGreenOrBlueDrive\n");
  int result_ = GetMonitorRedGreenOrBlueDrive(hMonitor, dtDriveType, pdwMinimumDrive, pdwCurrentDrive, pdwMaximumDrive);
  trace_print("GetMonitorRedGreenOrBlueDrive returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetMonitorRedGreenOrBlueGain_Wrapper(HANDLE hMonitor, LONG gtGainType, unsigned long* pdwMinimumGain, unsigned long* pdwCurrentGain, unsigned long* pdwMaximumGain) {
  trace_print("Calling GetMonitorRedGreenOrBlueGain\n");
  int result_ = GetMonitorRedGreenOrBlueGain(hMonitor, gtGainType, pdwMinimumGain, pdwCurrentGain, pdwMaximumGain);
  trace_print("GetMonitorRedGreenOrBlueGain returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int GetMonitorTechnologyType_Wrapper(HANDLE hMonitor, LONG* pdtyDisplayTechnologyType) {
  trace_print("Calling GetMonitorTechnologyType\n");
  int result_ = GetMonitorTechnologyType(hMonitor, pdtyDisplayTechnologyType);
  trace_print("GetMonitorTechnologyType returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetNumberOfPhysicalMonitorsFromHMONITOR_Wrapper(HMONITOR hMonitor, unsigned long* pdwNumberOfPhysicalMonitors) {
  trace_print("Calling GetNumberOfPhysicalMonitorsFromHMONITOR\n");
  BOOL result_ = GetNumberOfPhysicalMonitorsFromHMONITOR(hMonitor, pdwNumberOfPhysicalMonitors);
  trace_print("GetNumberOfPhysicalMonitorsFromHMONITOR returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPhysicalMonitorsFromHMONITOR_Wrapper(HMONITOR hMonitor, unsigned long dwPhysicalMonitorArraySize, PHYSICAL_MONITOR* pPhysicalMonitorArray) {
  trace_print("Calling GetPhysicalMonitorsFromHMONITOR\n");
  BOOL result_ = GetPhysicalMonitorsFromHMONITOR(hMonitor, dwPhysicalMonitorArraySize, pPhysicalMonitorArray);
  trace_print("GetPhysicalMonitorsFromHMONITOR returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int SaveCurrentMonitorSettings_Wrapper(HANDLE hMonitor) {
  trace_print("Calling SaveCurrentMonitorSettings\n");
  int result_ = SaveCurrentMonitorSettings(hMonitor);
  trace_print("SaveCurrentMonitorSettings returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int SetMonitorBrightness_Wrapper(HANDLE hMonitor, unsigned long dwNewBrightness) {
  trace_print("Calling SetMonitorBrightness\n");
  int result_ = SetMonitorBrightness(hMonitor, dwNewBrightness);
  trace_print("SetMonitorBrightness returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int SetMonitorColorTemperature_Wrapper(HANDLE hMonitor, LONG ctCurrentColorTemperature) {
  trace_print("Calling SetMonitorColorTemperature\n");
  int result_ = SetMonitorColorTemperature(hMonitor, ctCurrentColorTemperature);
  trace_print("SetMonitorColorTemperature returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int SetMonitorContrast_Wrapper(HANDLE hMonitor, unsigned long dwNewContrast) {
  trace_print("Calling SetMonitorContrast\n");
  int result_ = SetMonitorContrast(hMonitor, dwNewContrast);
  trace_print("SetMonitorContrast returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int SetMonitorDisplayAreaPosition_Wrapper(HANDLE hMonitor, LONG ptPositionType, unsigned long dwNewPosition) {
  trace_print("Calling SetMonitorDisplayAreaPosition\n");
  int result_ = SetMonitorDisplayAreaPosition(hMonitor, ptPositionType, dwNewPosition);
  trace_print("SetMonitorDisplayAreaPosition returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int SetMonitorDisplayAreaSize_Wrapper(HANDLE hMonitor, LONG stSizeType, unsigned long dwNewDisplayAreaWidthOrHeight) {
  trace_print("Calling SetMonitorDisplayAreaSize\n");
  int result_ = SetMonitorDisplayAreaSize(hMonitor, stSizeType, dwNewDisplayAreaWidthOrHeight);
  trace_print("SetMonitorDisplayAreaSize returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
