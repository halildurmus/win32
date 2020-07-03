// monitor.dart

// Shows retrieval of various information from the high-level monitor
// configuration API.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

final monitors = <int>[];

int enumMonitorCallback(int hMonitor, int hDC, Pointer lpRect, int lParam) {
  monitors.add(hMonitor);
  return TRUE;
}

int findPrimaryMonitor(List<int> monitors) {
  final monitorInfo = MONITORINFO.allocate();

  for (var monitor in monitors) {
    final result = GetMonitorInfo(monitor, monitorInfo.addressOf);
    if (result == TRUE) {
      if (monitorInfo.dwFlags & MONITORINFOF_PRIMARY == MONITORINFOF_PRIMARY) {
        free(monitorInfo.addressOf);
        return monitor;
      }
    }
  }

  free(monitorInfo.addressOf);
  return 0;
}

void main() {
  var result = FALSE;

  result = EnumDisplayMonitors(
      NULL, // all displays
      nullptr, // no clipping region
      Pointer.fromFunction<MonitorEnumProc>(
          enumMonitorCallback, // dwData
          0),
      NULL);
  if (result == FALSE) {
    throw WindowsException(result);
  }

  print('number of monitors: ${monitors.length}');

  final primaryMonitorHandle = findPrimaryMonitor(monitors);
  print('primary monitor: $primaryMonitorHandle');

  final monitorCapabilities = allocate<Uint32>();
  final monitorColorTemperatures = allocate<Uint32>();

  result = GetMonitorCapabilities(
      primaryMonitorHandle, monitorCapabilities, monitorColorTemperatures);
  if (result == TRUE) {
    print('capabilities: ${monitorCapabilities.value}');
  }

  final minimumBrightness = allocate<Uint32>();
  final currentBrightness = allocate<Uint32>();
  final maximumBrightness = allocate<Uint32>();
  result = GetMonitorBrightness(primaryMonitorHandle, minimumBrightness,
      currentBrightness, maximumBrightness);
  if (result == TRUE) {
    print('brightness: minimum(${minimumBrightness.value}), '
        'current(${currentBrightness.value}), '
        'maximum(${maximumBrightness.value})');
  }

  final minimumHeight = allocate<Uint32>();
  final currentHeight = allocate<Uint32>();
  final maximumHeight = allocate<Uint32>();
  result = GetMonitorDisplayAreaSize(primaryMonitorHandle,
      MC_SIZE_TYPE.MC_HEIGHT, minimumHeight, currentHeight, maximumHeight);
  if (result == TRUE) {
    print('height: minimum(${minimumHeight.value}), '
        'current(${currentHeight.value}), '
        'maximum(${maximumHeight.value})');
  }

  final minimumWidth = allocate<Uint32>();
  final currentWidth = allocate<Uint32>();
  final maximumWidth = allocate<Uint32>();
  result = GetMonitorDisplayAreaSize(primaryMonitorHandle,
      MC_SIZE_TYPE.MC_HEIGHT, minimumWidth, currentWidth, maximumWidth);
  if (result == TRUE) {
    print('width: minimum(${minimumWidth.value}), '
        'current(${currentWidth.value}), '
        'maximum(${maximumWidth.value})');
  }

  // free all the heap-allocated variables
  free(monitorCapabilities);
  free(monitorColorTemperatures);
  free(minimumBrightness);
  free(currentBrightness);
  free(maximumBrightness);
  free(minimumHeight);
  free(currentHeight);
  free(maximumHeight);
  free(minimumWidth);
  free(currentWidth);
  free(maximumWidth);
}
