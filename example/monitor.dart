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

  final physicalMonitorCountPtr = allocate<Uint32>();
  result = GetNumberOfPhysicalMonitorsFromHMONITOR(
      primaryMonitorHandle, physicalMonitorCountPtr);
  if (result == FALSE) {
    throw WindowsException(result);
  }
  print('number of physical monitors: ${physicalMonitorCountPtr.value}');

  // We need to allocate space for a PHYSICAL_MONITOR struct for each physical
  // monitor. Each struct comprises a HANDLE and a 128-character UTF-16 array.
  // Since fixed-size arrays are difficult to allocate with Dart FFI at present,
  // and since we only need the first entry, we can manually allocate space of
  // the right size.
  final physicalMonitorArray = allocate<Uint8>(
      count: physicalMonitorCountPtr.value * (sizeOf<IntPtr>() + 256));

  GetPhysicalMonitorsFromHMONITOR(primaryMonitorHandle,
      physicalMonitorCountPtr.value, physicalMonitorArray);

  // Retrieve the monitor handle for the first physical monitor in the returned
  // array.
  final physicalMonitorHandle = physicalMonitorArray.cast<IntPtr>().value;

  final monitorCapabilitiesPtr = allocate<Uint32>();
  final monitorColorTemperaturesPtr = allocate<Uint32>();

  result = GetMonitorCapabilities(physicalMonitorHandle, monitorCapabilitiesPtr,
      monitorColorTemperaturesPtr);
  if (result == TRUE) {
    print('capabilities: ${monitorCapabilitiesPtr.value}');
  }

  final minimumBrightnessPtr = allocate<Uint32>();
  final currentBrightnessPtr = allocate<Uint32>();
  final maximumBrightnessPtr = allocate<Uint32>();
  result = GetMonitorBrightness(physicalMonitorHandle, minimumBrightnessPtr,
      currentBrightnessPtr, maximumBrightnessPtr);
  if (result == TRUE) {
    print('brightness: minimum(${minimumBrightnessPtr.value}), '
        'current(${currentBrightnessPtr.value}), '
        'maximum(${maximumBrightnessPtr.value})');
  }

  final minimumHeightPtr = allocate<Uint32>();
  final currentHeightPtr = allocate<Uint32>();
  final maximumHeightPtr = allocate<Uint32>();
  result = GetMonitorDisplayAreaSize(
      physicalMonitorHandle,
      MC_SIZE_TYPE.MC_HEIGHT,
      minimumHeightPtr,
      currentHeightPtr,
      maximumHeightPtr);
  if (result == TRUE) {
    print('height: minimum(${minimumHeightPtr.value}), '
        'current(${currentHeightPtr.value}), '
        'maximum(${maximumHeightPtr.value})');
  }

  final minimumWidthPtr = allocate<Uint32>();
  final currentWidthPtr = allocate<Uint32>();
  final maximumWidthPtr = allocate<Uint32>();
  result = GetMonitorDisplayAreaSize(
      physicalMonitorHandle,
      MC_SIZE_TYPE.MC_HEIGHT,
      minimumWidthPtr,
      currentWidthPtr,
      maximumWidthPtr);
  if (result == TRUE) {
    print('width: minimum(${minimumWidthPtr.value}), '
        'current(${currentWidthPtr.value}), '
        'maximum(${maximumWidthPtr.value})');
  }

  DestroyPhysicalMonitors(physicalMonitorCountPtr.value, physicalMonitorArray);

  // free all the heap-allocated variables
  free(physicalMonitorCountPtr);
  free(monitorCapabilitiesPtr);
  free(monitorColorTemperaturesPtr);
  free(minimumBrightnessPtr);
  free(currentBrightnessPtr);
  free(maximumBrightnessPtr);
  free(minimumHeightPtr);
  free(currentHeightPtr);
  free(maximumHeightPtr);
  free(minimumWidthPtr);
  free(currentWidthPtr);
  free(maximumWidthPtr);
}
