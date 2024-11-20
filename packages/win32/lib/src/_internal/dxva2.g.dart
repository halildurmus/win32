// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Wrappers for Win32 API functions that wrap the native APIs and preserve the
// result of GetLastError(), making it easier to debug issues and handle errors
// reliably.
//
// ignore_for_file: non_constant_identifier_names, unused_import

@DefaultAsset('package:win32/win32.dart')
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../callbacks.g.dart';
import '../functions.dart';
import '../guid.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import 'win32.dart' show NativeWin32Result;

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result DestroyPhysicalMonitor_Wrapper(Pointer hMonitor);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<PHYSICAL_MONITOR>)>()
external NativeWin32Result DestroyPhysicalMonitors_Wrapper(
  int dwPhysicalMonitorArraySize,
  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetMonitorBrightness_Wrapper(
  Pointer hMonitor,
  Pointer<Uint32> pdwMinimumBrightness,
  Pointer<Uint32> pdwCurrentBrightness,
  Pointer<Uint32> pdwMaximumBrightness,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Int32>)>()
external NativeWin32Result GetMonitorColorTemperature_Wrapper(
  Pointer hMonitor,
  Pointer<Int32> pctCurrentColorTemperature,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetMonitorContrast_Wrapper(
  Pointer hMonitor,
  Pointer<Uint32> pdwMinimumContrast,
  Pointer<Uint32> pdwCurrentContrast,
  Pointer<Uint32> pdwMaximumContrast,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Int32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetMonitorDisplayAreaPosition_Wrapper(
  Pointer hMonitor,
  int ptPositionType,
  Pointer<Uint32> pdwMinimumPosition,
  Pointer<Uint32> pdwCurrentPosition,
  Pointer<Uint32> pdwMaximumPosition,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Int32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetMonitorDisplayAreaSize_Wrapper(
  Pointer hMonitor,
  int stSizeType,
  Pointer<Uint32> pdwMinimumWidthOrHeight,
  Pointer<Uint32> pdwCurrentWidthOrHeight,
  Pointer<Uint32> pdwMaximumWidthOrHeight,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Int32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetMonitorRedGreenOrBlueDrive_Wrapper(
  Pointer hMonitor,
  int dtDriveType,
  Pointer<Uint32> pdwMinimumDrive,
  Pointer<Uint32> pdwCurrentDrive,
  Pointer<Uint32> pdwMaximumDrive,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Int32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetMonitorRedGreenOrBlueGain_Wrapper(
  Pointer hMonitor,
  int gtGainType,
  Pointer<Uint32> pdwMinimumGain,
  Pointer<Uint32> pdwCurrentGain,
  Pointer<Uint32> pdwMaximumGain,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Int32>)>()
external NativeWin32Result GetMonitorTechnologyType_Wrapper(
  Pointer hMonitor,
  Pointer<Int32> pdtyDisplayTechnologyType,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Uint32>)>()
external NativeWin32Result GetNumberOfPhysicalMonitorsFromHMONITOR_Wrapper(
  Pointer hMonitor,
  Pointer<Uint32> pdwNumberOfPhysicalMonitors,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Uint32, Pointer<PHYSICAL_MONITOR>)
>()
external NativeWin32Result GetPhysicalMonitorsFromHMONITOR_Wrapper(
  Pointer hMonitor,
  int dwPhysicalMonitorArraySize,
  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result SaveCurrentMonitorSettings_Wrapper(Pointer hMonitor);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result SetMonitorBrightness_Wrapper(
  Pointer hMonitor,
  int dwNewBrightness,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32)>()
external NativeWin32Result SetMonitorColorTemperature_Wrapper(
  Pointer hMonitor,
  int ctCurrentColorTemperature,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result SetMonitorContrast_Wrapper(
  Pointer hMonitor,
  int dwNewContrast,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Uint32)>()
external NativeWin32Result SetMonitorDisplayAreaPosition_Wrapper(
  Pointer hMonitor,
  int ptPositionType,
  int dwNewPosition,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Uint32)>()
external NativeWin32Result SetMonitorDisplayAreaSize_Wrapper(
  Pointer hMonitor,
  int stSizeType,
  int dwNewDisplayAreaWidthOrHeight,
);
