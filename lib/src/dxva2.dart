// dxva2.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _dxva2 = DynamicLibrary.open('dxva2.dll');

/// {@category dxva2}
final DestroyPhysicalMonitor = _dxva2.lookupFunction<
    destroyPhysicalMonitorNative,
    destroyPhysicalMonitorDart>('DestroyPhysicalMonitor');

/// {@category dxva2}
final GetPhysicalMonitorsFromHMONITOR = _dxva2.lookupFunction<
    getPhysicalMonitorsFromHMONITORNative,
    getPhysicalMonitorsFromHMONITORDart>('GetPhysicalMonitorsFromHMONITOR');
