// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../devices/display/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DDevice9.dart'; // -----------------------------------------------------------------------

// dxva2.dll
// -----------------------------------------------------------------------
final _dxva2 = DynamicLibrary.open('dxva2.dll');

int CapabilitiesRequestAndCapabilitiesReply(
  int hMonitor,
  Pointer<Utf8> pszASCIICapabilitiesString,
  int dwCapabilitiesStringLengthInCharacters,
) =>
    _CapabilitiesRequestAndCapabilitiesReply(
      hMonitor,
      pszASCIICapabilitiesString,
      dwCapabilitiesStringLengthInCharacters,
    );

late final _CapabilitiesRequestAndCapabilitiesReply = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Pointer<Utf8> pszASCIICapabilitiesString,
  Uint32 dwCapabilitiesStringLengthInCharacters,
),
    int Function(
  int hMonitor,
  Pointer<Utf8> pszASCIICapabilitiesString,
  int dwCapabilitiesStringLengthInCharacters,
)>('CapabilitiesRequestAndCapabilitiesReply');

int DegaussMonitor(
  int hMonitor,
) =>
    _DegaussMonitor(
      hMonitor,
    );

late final _DegaussMonitor = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
),
    int Function(
  int hMonitor,
)>('DegaussMonitor');

int DestroyPhysicalMonitor(
  int hMonitor,
) =>
    _DestroyPhysicalMonitor(
      hMonitor,
    );

late final _DestroyPhysicalMonitor = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
),
    int Function(
  int hMonitor,
)>('DestroyPhysicalMonitor');

int DestroyPhysicalMonitors(
  int dwPhysicalMonitorArraySize,
  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray,
) =>
    _DestroyPhysicalMonitors(
      dwPhysicalMonitorArraySize,
      pPhysicalMonitorArray,
    );

late final _DestroyPhysicalMonitors = _dxva2.lookupFunction<
    Int32 Function(
  Uint32 dwPhysicalMonitorArraySize,
  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray,
),
    int Function(
  int dwPhysicalMonitorArraySize,
  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray,
)>('DestroyPhysicalMonitors');

int GetCapabilitiesStringLength(
  int hMonitor,
  Pointer<Uint32> pdwCapabilitiesStringLengthInCharacters,
) =>
    _GetCapabilitiesStringLength(
      hMonitor,
      pdwCapabilitiesStringLengthInCharacters,
    );

late final _GetCapabilitiesStringLength = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Pointer<Uint32> pdwCapabilitiesStringLengthInCharacters,
),
    int Function(
  int hMonitor,
  Pointer<Uint32> pdwCapabilitiesStringLengthInCharacters,
)>('GetCapabilitiesStringLength');

int GetMonitorBrightness(
  int hMonitor,
  Pointer<Uint32> pdwMinimumBrightness,
  Pointer<Uint32> pdwCurrentBrightness,
  Pointer<Uint32> pdwMaximumBrightness,
) =>
    _GetMonitorBrightness(
      hMonitor,
      pdwMinimumBrightness,
      pdwCurrentBrightness,
      pdwMaximumBrightness,
    );

late final _GetMonitorBrightness = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Pointer<Uint32> pdwMinimumBrightness,
  Pointer<Uint32> pdwCurrentBrightness,
  Pointer<Uint32> pdwMaximumBrightness,
),
    int Function(
  int hMonitor,
  Pointer<Uint32> pdwMinimumBrightness,
  Pointer<Uint32> pdwCurrentBrightness,
  Pointer<Uint32> pdwMaximumBrightness,
)>('GetMonitorBrightness');

int GetMonitorCapabilities(
  int hMonitor,
  Pointer<Uint32> pdwMonitorCapabilities,
  Pointer<Uint32> pdwSupportedColorTemperatures,
) =>
    _GetMonitorCapabilities(
      hMonitor,
      pdwMonitorCapabilities,
      pdwSupportedColorTemperatures,
    );

late final _GetMonitorCapabilities = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Pointer<Uint32> pdwMonitorCapabilities,
  Pointer<Uint32> pdwSupportedColorTemperatures,
),
    int Function(
  int hMonitor,
  Pointer<Uint32> pdwMonitorCapabilities,
  Pointer<Uint32> pdwSupportedColorTemperatures,
)>('GetMonitorCapabilities');

int GetMonitorColorTemperature(
  int hMonitor,
  Pointer<Int32> pctCurrentColorTemperature,
) =>
    _GetMonitorColorTemperature(
      hMonitor,
      pctCurrentColorTemperature,
    );

late final _GetMonitorColorTemperature = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Pointer<Int32> pctCurrentColorTemperature,
),
    int Function(
  int hMonitor,
  Pointer<Int32> pctCurrentColorTemperature,
)>('GetMonitorColorTemperature');

int GetMonitorContrast(
  int hMonitor,
  Pointer<Uint32> pdwMinimumContrast,
  Pointer<Uint32> pdwCurrentContrast,
  Pointer<Uint32> pdwMaximumContrast,
) =>
    _GetMonitorContrast(
      hMonitor,
      pdwMinimumContrast,
      pdwCurrentContrast,
      pdwMaximumContrast,
    );

late final _GetMonitorContrast = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Pointer<Uint32> pdwMinimumContrast,
  Pointer<Uint32> pdwCurrentContrast,
  Pointer<Uint32> pdwMaximumContrast,
),
    int Function(
  int hMonitor,
  Pointer<Uint32> pdwMinimumContrast,
  Pointer<Uint32> pdwCurrentContrast,
  Pointer<Uint32> pdwMaximumContrast,
)>('GetMonitorContrast');

int GetMonitorDisplayAreaPosition(
  int hMonitor,
  int ptPositionType,
  Pointer<Uint32> pdwMinimumPosition,
  Pointer<Uint32> pdwCurrentPosition,
  Pointer<Uint32> pdwMaximumPosition,
) =>
    _GetMonitorDisplayAreaPosition(
      hMonitor,
      ptPositionType,
      pdwMinimumPosition,
      pdwCurrentPosition,
      pdwMaximumPosition,
    );

late final _GetMonitorDisplayAreaPosition = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Int32 ptPositionType,
  Pointer<Uint32> pdwMinimumPosition,
  Pointer<Uint32> pdwCurrentPosition,
  Pointer<Uint32> pdwMaximumPosition,
),
    int Function(
  int hMonitor,
  int ptPositionType,
  Pointer<Uint32> pdwMinimumPosition,
  Pointer<Uint32> pdwCurrentPosition,
  Pointer<Uint32> pdwMaximumPosition,
)>('GetMonitorDisplayAreaPosition');

int GetMonitorDisplayAreaSize(
  int hMonitor,
  int stSizeType,
  Pointer<Uint32> pdwMinimumWidthOrHeight,
  Pointer<Uint32> pdwCurrentWidthOrHeight,
  Pointer<Uint32> pdwMaximumWidthOrHeight,
) =>
    _GetMonitorDisplayAreaSize(
      hMonitor,
      stSizeType,
      pdwMinimumWidthOrHeight,
      pdwCurrentWidthOrHeight,
      pdwMaximumWidthOrHeight,
    );

late final _GetMonitorDisplayAreaSize = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Int32 stSizeType,
  Pointer<Uint32> pdwMinimumWidthOrHeight,
  Pointer<Uint32> pdwCurrentWidthOrHeight,
  Pointer<Uint32> pdwMaximumWidthOrHeight,
),
    int Function(
  int hMonitor,
  int stSizeType,
  Pointer<Uint32> pdwMinimumWidthOrHeight,
  Pointer<Uint32> pdwCurrentWidthOrHeight,
  Pointer<Uint32> pdwMaximumWidthOrHeight,
)>('GetMonitorDisplayAreaSize');

int GetMonitorRedGreenOrBlueDrive(
  int hMonitor,
  int dtDriveType,
  Pointer<Uint32> pdwMinimumDrive,
  Pointer<Uint32> pdwCurrentDrive,
  Pointer<Uint32> pdwMaximumDrive,
) =>
    _GetMonitorRedGreenOrBlueDrive(
      hMonitor,
      dtDriveType,
      pdwMinimumDrive,
      pdwCurrentDrive,
      pdwMaximumDrive,
    );

late final _GetMonitorRedGreenOrBlueDrive = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Int32 dtDriveType,
  Pointer<Uint32> pdwMinimumDrive,
  Pointer<Uint32> pdwCurrentDrive,
  Pointer<Uint32> pdwMaximumDrive,
),
    int Function(
  int hMonitor,
  int dtDriveType,
  Pointer<Uint32> pdwMinimumDrive,
  Pointer<Uint32> pdwCurrentDrive,
  Pointer<Uint32> pdwMaximumDrive,
)>('GetMonitorRedGreenOrBlueDrive');

int GetMonitorRedGreenOrBlueGain(
  int hMonitor,
  int gtGainType,
  Pointer<Uint32> pdwMinimumGain,
  Pointer<Uint32> pdwCurrentGain,
  Pointer<Uint32> pdwMaximumGain,
) =>
    _GetMonitorRedGreenOrBlueGain(
      hMonitor,
      gtGainType,
      pdwMinimumGain,
      pdwCurrentGain,
      pdwMaximumGain,
    );

late final _GetMonitorRedGreenOrBlueGain = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Int32 gtGainType,
  Pointer<Uint32> pdwMinimumGain,
  Pointer<Uint32> pdwCurrentGain,
  Pointer<Uint32> pdwMaximumGain,
),
    int Function(
  int hMonitor,
  int gtGainType,
  Pointer<Uint32> pdwMinimumGain,
  Pointer<Uint32> pdwCurrentGain,
  Pointer<Uint32> pdwMaximumGain,
)>('GetMonitorRedGreenOrBlueGain');

int GetMonitorTechnologyType(
  int hMonitor,
  Pointer<Int32> pdtyDisplayTechnologyType,
) =>
    _GetMonitorTechnologyType(
      hMonitor,
      pdtyDisplayTechnologyType,
    );

late final _GetMonitorTechnologyType = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Pointer<Int32> pdtyDisplayTechnologyType,
),
    int Function(
  int hMonitor,
  Pointer<Int32> pdtyDisplayTechnologyType,
)>('GetMonitorTechnologyType');

int GetNumberOfPhysicalMonitorsFromHMONITOR(
  int hMonitor,
  Pointer<Uint32> pdwNumberOfPhysicalMonitors,
) =>
    _GetNumberOfPhysicalMonitorsFromHMONITOR(
      hMonitor,
      pdwNumberOfPhysicalMonitors,
    );

late final _GetNumberOfPhysicalMonitorsFromHMONITOR = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Pointer<Uint32> pdwNumberOfPhysicalMonitors,
),
    int Function(
  int hMonitor,
  Pointer<Uint32> pdwNumberOfPhysicalMonitors,
)>('GetNumberOfPhysicalMonitorsFromHMONITOR');

int GetNumberOfPhysicalMonitorsFromIDirect3DDevice9(
  Pointer<COMObject> pDirect3DDevice9,
  Pointer<Uint32> pdwNumberOfPhysicalMonitors,
) =>
    _GetNumberOfPhysicalMonitorsFromIDirect3DDevice9(
      pDirect3DDevice9,
      pdwNumberOfPhysicalMonitors,
    );

late final _GetNumberOfPhysicalMonitorsFromIDirect3DDevice9 =
    _dxva2.lookupFunction<
        Int32 Function(
  Pointer<COMObject> pDirect3DDevice9,
  Pointer<Uint32> pdwNumberOfPhysicalMonitors,
),
        int Function(
  Pointer<COMObject> pDirect3DDevice9,
  Pointer<Uint32> pdwNumberOfPhysicalMonitors,
)>('GetNumberOfPhysicalMonitorsFromIDirect3DDevice9');

int GetPhysicalMonitorsFromHMONITOR(
  int hMonitor,
  int dwPhysicalMonitorArraySize,
  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray,
) =>
    _GetPhysicalMonitorsFromHMONITOR(
      hMonitor,
      dwPhysicalMonitorArraySize,
      pPhysicalMonitorArray,
    );

late final _GetPhysicalMonitorsFromHMONITOR = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Uint32 dwPhysicalMonitorArraySize,
  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray,
),
    int Function(
  int hMonitor,
  int dwPhysicalMonitorArraySize,
  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray,
)>('GetPhysicalMonitorsFromHMONITOR');

int GetPhysicalMonitorsFromIDirect3DDevice9(
  Pointer<COMObject> pDirect3DDevice9,
  int dwPhysicalMonitorArraySize,
  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray,
) =>
    _GetPhysicalMonitorsFromIDirect3DDevice9(
      pDirect3DDevice9,
      dwPhysicalMonitorArraySize,
      pPhysicalMonitorArray,
    );

late final _GetPhysicalMonitorsFromIDirect3DDevice9 = _dxva2.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pDirect3DDevice9,
  Uint32 dwPhysicalMonitorArraySize,
  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray,
),
    int Function(
  Pointer<COMObject> pDirect3DDevice9,
  int dwPhysicalMonitorArraySize,
  Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray,
)>('GetPhysicalMonitorsFromIDirect3DDevice9');

int GetTimingReport(
  int hMonitor,
  Pointer<MC_TIMING_REPORT> pmtrMonitorTimingReport,
) =>
    _GetTimingReport(
      hMonitor,
      pmtrMonitorTimingReport,
    );

late final _GetTimingReport = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Pointer<MC_TIMING_REPORT> pmtrMonitorTimingReport,
),
    int Function(
  int hMonitor,
  Pointer<MC_TIMING_REPORT> pmtrMonitorTimingReport,
)>('GetTimingReport');

int GetVCPFeatureAndVCPFeatureReply(
  int hMonitor,
  int bVCPCode,
  Pointer<Int32> pvct,
  Pointer<Uint32> pdwCurrentValue,
  Pointer<Uint32> pdwMaximumValue,
) =>
    _GetVCPFeatureAndVCPFeatureReply(
      hMonitor,
      bVCPCode,
      pvct,
      pdwCurrentValue,
      pdwMaximumValue,
    );

late final _GetVCPFeatureAndVCPFeatureReply = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Uint8 bVCPCode,
  Pointer<Int32> pvct,
  Pointer<Uint32> pdwCurrentValue,
  Pointer<Uint32> pdwMaximumValue,
),
    int Function(
  int hMonitor,
  int bVCPCode,
  Pointer<Int32> pvct,
  Pointer<Uint32> pdwCurrentValue,
  Pointer<Uint32> pdwMaximumValue,
)>('GetVCPFeatureAndVCPFeatureReply');

int RestoreMonitorFactoryColorDefaults(
  int hMonitor,
) =>
    _RestoreMonitorFactoryColorDefaults(
      hMonitor,
    );

late final _RestoreMonitorFactoryColorDefaults = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
),
    int Function(
  int hMonitor,
)>('RestoreMonitorFactoryColorDefaults');

int RestoreMonitorFactoryDefaults(
  int hMonitor,
) =>
    _RestoreMonitorFactoryDefaults(
      hMonitor,
    );

late final _RestoreMonitorFactoryDefaults = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
),
    int Function(
  int hMonitor,
)>('RestoreMonitorFactoryDefaults');

int SaveCurrentMonitorSettings(
  int hMonitor,
) =>
    _SaveCurrentMonitorSettings(
      hMonitor,
    );

late final _SaveCurrentMonitorSettings = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
),
    int Function(
  int hMonitor,
)>('SaveCurrentMonitorSettings');

int SaveCurrentSettings(
  int hMonitor,
) =>
    _SaveCurrentSettings(
      hMonitor,
    );

late final _SaveCurrentSettings = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
),
    int Function(
  int hMonitor,
)>('SaveCurrentSettings');

int SetMonitorBrightness(
  int hMonitor,
  int dwNewBrightness,
) =>
    _SetMonitorBrightness(
      hMonitor,
      dwNewBrightness,
    );

late final _SetMonitorBrightness = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Uint32 dwNewBrightness,
),
    int Function(
  int hMonitor,
  int dwNewBrightness,
)>('SetMonitorBrightness');

int SetMonitorColorTemperature(
  int hMonitor,
  int ctCurrentColorTemperature,
) =>
    _SetMonitorColorTemperature(
      hMonitor,
      ctCurrentColorTemperature,
    );

late final _SetMonitorColorTemperature = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Int32 ctCurrentColorTemperature,
),
    int Function(
  int hMonitor,
  int ctCurrentColorTemperature,
)>('SetMonitorColorTemperature');

int SetMonitorContrast(
  int hMonitor,
  int dwNewContrast,
) =>
    _SetMonitorContrast(
      hMonitor,
      dwNewContrast,
    );

late final _SetMonitorContrast = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Uint32 dwNewContrast,
),
    int Function(
  int hMonitor,
  int dwNewContrast,
)>('SetMonitorContrast');

int SetMonitorDisplayAreaPosition(
  int hMonitor,
  int ptPositionType,
  int dwNewPosition,
) =>
    _SetMonitorDisplayAreaPosition(
      hMonitor,
      ptPositionType,
      dwNewPosition,
    );

late final _SetMonitorDisplayAreaPosition = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Int32 ptPositionType,
  Uint32 dwNewPosition,
),
    int Function(
  int hMonitor,
  int ptPositionType,
  int dwNewPosition,
)>('SetMonitorDisplayAreaPosition');

int SetMonitorDisplayAreaSize(
  int hMonitor,
  int stSizeType,
  int dwNewDisplayAreaWidthOrHeight,
) =>
    _SetMonitorDisplayAreaSize(
      hMonitor,
      stSizeType,
      dwNewDisplayAreaWidthOrHeight,
    );

late final _SetMonitorDisplayAreaSize = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Int32 stSizeType,
  Uint32 dwNewDisplayAreaWidthOrHeight,
),
    int Function(
  int hMonitor,
  int stSizeType,
  int dwNewDisplayAreaWidthOrHeight,
)>('SetMonitorDisplayAreaSize');

int SetMonitorRedGreenOrBlueDrive(
  int hMonitor,
  int dtDriveType,
  int dwNewDrive,
) =>
    _SetMonitorRedGreenOrBlueDrive(
      hMonitor,
      dtDriveType,
      dwNewDrive,
    );

late final _SetMonitorRedGreenOrBlueDrive = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Int32 dtDriveType,
  Uint32 dwNewDrive,
),
    int Function(
  int hMonitor,
  int dtDriveType,
  int dwNewDrive,
)>('SetMonitorRedGreenOrBlueDrive');

int SetMonitorRedGreenOrBlueGain(
  int hMonitor,
  int gtGainType,
  int dwNewGain,
) =>
    _SetMonitorRedGreenOrBlueGain(
      hMonitor,
      gtGainType,
      dwNewGain,
    );

late final _SetMonitorRedGreenOrBlueGain = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Int32 gtGainType,
  Uint32 dwNewGain,
),
    int Function(
  int hMonitor,
  int gtGainType,
  int dwNewGain,
)>('SetMonitorRedGreenOrBlueGain');

int SetVCPFeature(
  int hMonitor,
  int bVCPCode,
  int dwNewValue,
) =>
    _SetVCPFeature(
      hMonitor,
      bVCPCode,
      dwNewValue,
    );

late final _SetVCPFeature = _dxva2.lookupFunction<
    Int32 Function(
  IntPtr hMonitor,
  Uint8 bVCPCode,
  Uint32 dwNewValue,
),
    int Function(
  int hMonitor,
  int bVCPCode,
  int dwNewValue,
)>('SetVCPFeature');

// -----------------------------------------------------------------------
// gdi32.dll
// -----------------------------------------------------------------------
final _gdi32 = DynamicLibrary.open('gdi32.dll');

int BRUSHOBJ_hGetColorTransform(
  Pointer<BRUSHOBJ> pbo,
) =>
    _BRUSHOBJ_hGetColorTransform(
      pbo,
    );

late final _BRUSHOBJ_hGetColorTransform = _gdi32.lookupFunction<
    IntPtr Function(
  Pointer<BRUSHOBJ> pbo,
),
    int Function(
  Pointer<BRUSHOBJ> pbo,
)>('BRUSHOBJ_hGetColorTransform');

Pointer BRUSHOBJ_pvAllocRbrush(
  Pointer<BRUSHOBJ> pbo,
  int cj,
) =>
    _BRUSHOBJ_pvAllocRbrush(
      pbo,
      cj,
    );

late final _BRUSHOBJ_pvAllocRbrush = _gdi32.lookupFunction<
    Pointer Function(
  Pointer<BRUSHOBJ> pbo,
  Uint32 cj,
),
    Pointer Function(
  Pointer<BRUSHOBJ> pbo,
  int cj,
)>('BRUSHOBJ_pvAllocRbrush');

Pointer BRUSHOBJ_pvGetRbrush(
  Pointer<BRUSHOBJ> pbo,
) =>
    _BRUSHOBJ_pvGetRbrush(
      pbo,
    );

late final _BRUSHOBJ_pvGetRbrush = _gdi32.lookupFunction<
    Pointer Function(
  Pointer<BRUSHOBJ> pbo,
),
    Pointer Function(
  Pointer<BRUSHOBJ> pbo,
)>('BRUSHOBJ_pvGetRbrush');

int BRUSHOBJ_ulGetBrushColor(
  Pointer<BRUSHOBJ> pbo,
) =>
    _BRUSHOBJ_ulGetBrushColor(
      pbo,
    );

late final _BRUSHOBJ_ulGetBrushColor = _gdi32.lookupFunction<
    Uint32 Function(
  Pointer<BRUSHOBJ> pbo,
),
    int Function(
  Pointer<BRUSHOBJ> pbo,
)>('BRUSHOBJ_ulGetBrushColor');

int CLIPOBJ_bEnum(
  Pointer<CLIPOBJ> pco,
  int cj,
  Pointer<Uint32> pul,
) =>
    _CLIPOBJ_bEnum(
      pco,
      cj,
      pul,
    );

late final _CLIPOBJ_bEnum = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<CLIPOBJ> pco,
  Uint32 cj,
  Pointer<Uint32> pul,
),
    int Function(
  Pointer<CLIPOBJ> pco,
  int cj,
  Pointer<Uint32> pul,
)>('CLIPOBJ_bEnum');

int CLIPOBJ_cEnumStart(
  Pointer<CLIPOBJ> pco,
  int bAll,
  int iType,
  int iDirection,
  int cLimit,
) =>
    _CLIPOBJ_cEnumStart(
      pco,
      bAll,
      iType,
      iDirection,
      cLimit,
    );

late final _CLIPOBJ_cEnumStart = _gdi32.lookupFunction<
    Uint32 Function(
  Pointer<CLIPOBJ> pco,
  Int32 bAll,
  Uint32 iType,
  Uint32 iDirection,
  Uint32 cLimit,
),
    int Function(
  Pointer<CLIPOBJ> pco,
  int bAll,
  int iType,
  int iDirection,
  int cLimit,
)>('CLIPOBJ_cEnumStart');

Pointer<PATHOBJ> CLIPOBJ_ppoGetPath(
  Pointer<CLIPOBJ> pco,
) =>
    _CLIPOBJ_ppoGetPath(
      pco,
    );

late final _CLIPOBJ_ppoGetPath = _gdi32.lookupFunction<
    Pointer<PATHOBJ> Function(
  Pointer<CLIPOBJ> pco,
),
    Pointer<PATHOBJ> Function(
  Pointer<CLIPOBJ> pco,
)>('CLIPOBJ_ppoGetPath');

void EngAcquireSemaphore(
  int hsem,
) =>
    _EngAcquireSemaphore(
      hsem,
    );

late final _EngAcquireSemaphore = _gdi32.lookupFunction<
    Void Function(
  IntPtr hsem,
),
    void Function(
  int hsem,
)>('EngAcquireSemaphore');

int EngAlphaBlend(
  Pointer<SURFOBJ> psoDest,
  Pointer<SURFOBJ> psoSrc,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<RECTL> prclDest,
  Pointer<RECTL> prclSrc,
  Pointer<BLENDOBJ> pBlendObj,
) =>
    _EngAlphaBlend(
      psoDest,
      psoSrc,
      pco,
      pxlo,
      prclDest,
      prclSrc,
      pBlendObj,
    );

late final _EngAlphaBlend = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<SURFOBJ> psoDest,
  Pointer<SURFOBJ> psoSrc,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<RECTL> prclDest,
  Pointer<RECTL> prclSrc,
  Pointer<BLENDOBJ> pBlendObj,
),
    int Function(
  Pointer<SURFOBJ> psoDest,
  Pointer<SURFOBJ> psoSrc,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<RECTL> prclDest,
  Pointer<RECTL> prclSrc,
  Pointer<BLENDOBJ> pBlendObj,
)>('EngAlphaBlend');

int EngAssociateSurface(
  int hsurf,
  int hdev,
  int flHooks,
) =>
    _EngAssociateSurface(
      hsurf,
      hdev,
      flHooks,
    );

late final _EngAssociateSurface = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hsurf,
  IntPtr hdev,
  Uint32 flHooks,
),
    int Function(
  int hsurf,
  int hdev,
  int flHooks,
)>('EngAssociateSurface');

int EngBitBlt(
  Pointer<SURFOBJ> psoTrg,
  Pointer<SURFOBJ> psoSrc,
  Pointer<SURFOBJ> psoMask,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<RECTL> prclTrg,
  Pointer<POINTL> pptlSrc,
  Pointer<POINTL> pptlMask,
  Pointer<BRUSHOBJ> pbo,
  Pointer<POINTL> pptlBrush,
  int rop4,
) =>
    _EngBitBlt(
      psoTrg,
      psoSrc,
      psoMask,
      pco,
      pxlo,
      prclTrg,
      pptlSrc,
      pptlMask,
      pbo,
      pptlBrush,
      rop4,
    );

late final _EngBitBlt = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<SURFOBJ> psoTrg,
  Pointer<SURFOBJ> psoSrc,
  Pointer<SURFOBJ> psoMask,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<RECTL> prclTrg,
  Pointer<POINTL> pptlSrc,
  Pointer<POINTL> pptlMask,
  Pointer<BRUSHOBJ> pbo,
  Pointer<POINTL> pptlBrush,
  Uint32 rop4,
),
    int Function(
  Pointer<SURFOBJ> psoTrg,
  Pointer<SURFOBJ> psoSrc,
  Pointer<SURFOBJ> psoMask,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<RECTL> prclTrg,
  Pointer<POINTL> pptlSrc,
  Pointer<POINTL> pptlMask,
  Pointer<BRUSHOBJ> pbo,
  Pointer<POINTL> pptlBrush,
  int rop4,
)>('EngBitBlt');

int EngCheckAbort(
  Pointer<SURFOBJ> pso,
) =>
    _EngCheckAbort(
      pso,
    );

late final _EngCheckAbort = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<SURFOBJ> pso,
),
    int Function(
  Pointer<SURFOBJ> pso,
)>('EngCheckAbort');

Pointer<FD_GLYPHSET> EngComputeGlyphSet(
  int nCodePage,
  int nFirstChar,
  int cChars,
) =>
    _EngComputeGlyphSet(
      nCodePage,
      nFirstChar,
      cChars,
    );

late final _EngComputeGlyphSet = _gdi32.lookupFunction<
    Pointer<FD_GLYPHSET> Function(
  Int32 nCodePage,
  Int32 nFirstChar,
  Int32 cChars,
),
    Pointer<FD_GLYPHSET> Function(
  int nCodePage,
  int nFirstChar,
  int cChars,
)>('EngComputeGlyphSet');

int EngCopyBits(
  Pointer<SURFOBJ> psoDest,
  Pointer<SURFOBJ> psoSrc,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<RECTL> prclDest,
  Pointer<POINTL> pptlSrc,
) =>
    _EngCopyBits(
      psoDest,
      psoSrc,
      pco,
      pxlo,
      prclDest,
      pptlSrc,
    );

late final _EngCopyBits = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<SURFOBJ> psoDest,
  Pointer<SURFOBJ> psoSrc,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<RECTL> prclDest,
  Pointer<POINTL> pptlSrc,
),
    int Function(
  Pointer<SURFOBJ> psoDest,
  Pointer<SURFOBJ> psoSrc,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<RECTL> prclDest,
  Pointer<POINTL> pptlSrc,
)>('EngCopyBits');

int EngCreateBitmap(
  SIZE sizl,
  int lWidth,
  int iFormat,
  int fl,
  Pointer pvBits,
) =>
    _EngCreateBitmap(
      sizl,
      lWidth,
      iFormat,
      fl,
      pvBits,
    );

late final _EngCreateBitmap = _gdi32.lookupFunction<
    IntPtr Function(
  SIZE sizl,
  Int32 lWidth,
  Uint32 iFormat,
  Uint32 fl,
  Pointer pvBits,
),
    int Function(
  SIZE sizl,
  int lWidth,
  int iFormat,
  int fl,
  Pointer pvBits,
)>('EngCreateBitmap');

Pointer<CLIPOBJ> EngCreateClip() => _EngCreateClip();

late final _EngCreateClip = _gdi32.lookupFunction<Pointer<CLIPOBJ> Function(),
    Pointer<CLIPOBJ> Function()>('EngCreateClip');

int EngCreateDeviceBitmap(
  int dhsurf,
  SIZE sizl,
  int iFormatCompat,
) =>
    _EngCreateDeviceBitmap(
      dhsurf,
      sizl,
      iFormatCompat,
    );

late final _EngCreateDeviceBitmap = _gdi32.lookupFunction<
    IntPtr Function(
  IntPtr dhsurf,
  SIZE sizl,
  Uint32 iFormatCompat,
),
    int Function(
  int dhsurf,
  SIZE sizl,
  int iFormatCompat,
)>('EngCreateDeviceBitmap');

int EngCreateDeviceSurface(
  int dhsurf,
  SIZE sizl,
  int iFormatCompat,
) =>
    _EngCreateDeviceSurface(
      dhsurf,
      sizl,
      iFormatCompat,
    );

late final _EngCreateDeviceSurface = _gdi32.lookupFunction<
    IntPtr Function(
  IntPtr dhsurf,
  SIZE sizl,
  Uint32 iFormatCompat,
),
    int Function(
  int dhsurf,
  SIZE sizl,
  int iFormatCompat,
)>('EngCreateDeviceSurface');

int EngCreatePalette(
  int iMode,
  int cColors,
  Pointer<Uint32> pulColors,
  int flRed,
  int flGreen,
  int flBlue,
) =>
    _EngCreatePalette(
      iMode,
      cColors,
      pulColors,
      flRed,
      flGreen,
      flBlue,
    );

late final _EngCreatePalette = _gdi32.lookupFunction<
    IntPtr Function(
  Uint32 iMode,
  Uint32 cColors,
  Pointer<Uint32> pulColors,
  Uint32 flRed,
  Uint32 flGreen,
  Uint32 flBlue,
),
    int Function(
  int iMode,
  int cColors,
  Pointer<Uint32> pulColors,
  int flRed,
  int flGreen,
  int flBlue,
)>('EngCreatePalette');

int EngCreateSemaphore() => _EngCreateSemaphore();

late final _EngCreateSemaphore = _gdi32
    .lookupFunction<IntPtr Function(), int Function()>('EngCreateSemaphore');

void EngDeleteClip(
  Pointer<CLIPOBJ> pco,
) =>
    _EngDeleteClip(
      pco,
    );

late final _EngDeleteClip = _gdi32.lookupFunction<
    Void Function(
  Pointer<CLIPOBJ> pco,
),
    void Function(
  Pointer<CLIPOBJ> pco,
)>('EngDeleteClip');

int EngDeletePalette(
  int hpal,
) =>
    _EngDeletePalette(
      hpal,
    );

late final _EngDeletePalette = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hpal,
),
    int Function(
  int hpal,
)>('EngDeletePalette');

void EngDeletePath(
  Pointer<PATHOBJ> ppo,
) =>
    _EngDeletePath(
      ppo,
    );

late final _EngDeletePath = _gdi32.lookupFunction<
    Void Function(
  Pointer<PATHOBJ> ppo,
),
    void Function(
  Pointer<PATHOBJ> ppo,
)>('EngDeletePath');

void EngDeleteSemaphore(
  int hsem,
) =>
    _EngDeleteSemaphore(
      hsem,
    );

late final _EngDeleteSemaphore = _gdi32.lookupFunction<
    Void Function(
  IntPtr hsem,
),
    void Function(
  int hsem,
)>('EngDeleteSemaphore');

int EngDeleteSurface(
  int hsurf,
) =>
    _EngDeleteSurface(
      hsurf,
    );

late final _EngDeleteSurface = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hsurf,
),
    int Function(
  int hsurf,
)>('EngDeleteSurface');

int EngEraseSurface(
  Pointer<SURFOBJ> pso,
  Pointer<RECTL> prcl,
  int iColor,
) =>
    _EngEraseSurface(
      pso,
      prcl,
      iColor,
    );

late final _EngEraseSurface = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<SURFOBJ> pso,
  Pointer<RECTL> prcl,
  Uint32 iColor,
),
    int Function(
  Pointer<SURFOBJ> pso,
  Pointer<RECTL> prcl,
  int iColor,
)>('EngEraseSurface');

int EngFillPath(
  Pointer<SURFOBJ> pso,
  Pointer<PATHOBJ> ppo,
  Pointer<CLIPOBJ> pco,
  Pointer<BRUSHOBJ> pbo,
  Pointer<POINTL> pptlBrushOrg,
  int mix,
  int flOptions,
) =>
    _EngFillPath(
      pso,
      ppo,
      pco,
      pbo,
      pptlBrushOrg,
      mix,
      flOptions,
    );

late final _EngFillPath = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<SURFOBJ> pso,
  Pointer<PATHOBJ> ppo,
  Pointer<CLIPOBJ> pco,
  Pointer<BRUSHOBJ> pbo,
  Pointer<POINTL> pptlBrushOrg,
  Uint32 mix,
  Uint32 flOptions,
),
    int Function(
  Pointer<SURFOBJ> pso,
  Pointer<PATHOBJ> ppo,
  Pointer<CLIPOBJ> pco,
  Pointer<BRUSHOBJ> pbo,
  Pointer<POINTL> pptlBrushOrg,
  int mix,
  int flOptions,
)>('EngFillPath');

Pointer EngFindResource(
  int h,
  int iName,
  int iType,
  Pointer<Uint32> pulSize,
) =>
    _EngFindResource(
      h,
      iName,
      iType,
      pulSize,
    );

late final _EngFindResource = _gdi32.lookupFunction<
    Pointer Function(
  IntPtr h,
  Int32 iName,
  Int32 iType,
  Pointer<Uint32> pulSize,
),
    Pointer Function(
  int h,
  int iName,
  int iType,
  Pointer<Uint32> pulSize,
)>('EngFindResource');

void EngFreeModule(
  int h,
) =>
    _EngFreeModule(
      h,
    );

late final _EngFreeModule = _gdi32.lookupFunction<
    Void Function(
  IntPtr h,
),
    void Function(
  int h,
)>('EngFreeModule');

void EngGetCurrentCodePage(
  Pointer<Uint16> OemCodePage,
  Pointer<Uint16> AnsiCodePage,
) =>
    _EngGetCurrentCodePage(
      OemCodePage,
      AnsiCodePage,
    );

late final _EngGetCurrentCodePage = _gdi32.lookupFunction<
    Void Function(
  Pointer<Uint16> OemCodePage,
  Pointer<Uint16> AnsiCodePage,
),
    void Function(
  Pointer<Uint16> OemCodePage,
  Pointer<Uint16> AnsiCodePage,
)>('EngGetCurrentCodePage');

Pointer<Utf16> EngGetDriverName(
  int hdev,
) =>
    _EngGetDriverName(
      hdev,
    );

late final _EngGetDriverName = _gdi32.lookupFunction<
    Pointer<Utf16> Function(
  IntPtr hdev,
),
    Pointer<Utf16> Function(
  int hdev,
)>('EngGetDriverName');

Pointer<Utf16> EngGetPrinterDataFileName(
  int hdev,
) =>
    _EngGetPrinterDataFileName(
      hdev,
    );

late final _EngGetPrinterDataFileName = _gdi32.lookupFunction<
    Pointer<Utf16> Function(
  IntPtr hdev,
),
    Pointer<Utf16> Function(
  int hdev,
)>('EngGetPrinterDataFileName');

int EngGradientFill(
  Pointer<SURFOBJ> psoDest,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<TRIVERTEX> pVertex,
  int nVertex,
  Pointer pMesh,
  int nMesh,
  Pointer<RECTL> prclExtents,
  Pointer<POINTL> pptlDitherOrg,
  int ulMode,
) =>
    _EngGradientFill(
      psoDest,
      pco,
      pxlo,
      pVertex,
      nVertex,
      pMesh,
      nMesh,
      prclExtents,
      pptlDitherOrg,
      ulMode,
    );

late final _EngGradientFill = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<SURFOBJ> psoDest,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<TRIVERTEX> pVertex,
  Uint32 nVertex,
  Pointer pMesh,
  Uint32 nMesh,
  Pointer<RECTL> prclExtents,
  Pointer<POINTL> pptlDitherOrg,
  Uint32 ulMode,
),
    int Function(
  Pointer<SURFOBJ> psoDest,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<TRIVERTEX> pVertex,
  int nVertex,
  Pointer pMesh,
  int nMesh,
  Pointer<RECTL> prclExtents,
  Pointer<POINTL> pptlDitherOrg,
  int ulMode,
)>('EngGradientFill');

int EngLineTo(
  Pointer<SURFOBJ> pso,
  Pointer<CLIPOBJ> pco,
  Pointer<BRUSHOBJ> pbo,
  int x1,
  int y1,
  int x2,
  int y2,
  Pointer<RECTL> prclBounds,
  int mix,
) =>
    _EngLineTo(
      pso,
      pco,
      pbo,
      x1,
      y1,
      x2,
      y2,
      prclBounds,
      mix,
    );

late final _EngLineTo = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<SURFOBJ> pso,
  Pointer<CLIPOBJ> pco,
  Pointer<BRUSHOBJ> pbo,
  Int32 x1,
  Int32 y1,
  Int32 x2,
  Int32 y2,
  Pointer<RECTL> prclBounds,
  Uint32 mix,
),
    int Function(
  Pointer<SURFOBJ> pso,
  Pointer<CLIPOBJ> pco,
  Pointer<BRUSHOBJ> pbo,
  int x1,
  int y1,
  int x2,
  int y2,
  Pointer<RECTL> prclBounds,
  int mix,
)>('EngLineTo');

int EngLoadModule(
  Pointer<Utf16> pwsz,
) =>
    _EngLoadModule(
      pwsz,
    );

late final _EngLoadModule = _gdi32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> pwsz,
),
    int Function(
  Pointer<Utf16> pwsz,
)>('EngLoadModule');

Pointer<SURFOBJ> EngLockSurface(
  int hsurf,
) =>
    _EngLockSurface(
      hsurf,
    );

late final _EngLockSurface = _gdi32.lookupFunction<
    Pointer<SURFOBJ> Function(
  IntPtr hsurf,
),
    Pointer<SURFOBJ> Function(
  int hsurf,
)>('EngLockSurface');

int EngMarkBandingSurface(
  int hsurf,
) =>
    _EngMarkBandingSurface(
      hsurf,
    );

late final _EngMarkBandingSurface = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hsurf,
),
    int Function(
  int hsurf,
)>('EngMarkBandingSurface');

void EngMultiByteToUnicodeN(
  Pointer<Utf16> UnicodeString,
  int MaxBytesInUnicodeString,
  Pointer<Uint32> BytesInUnicodeString,
  Pointer<Utf8> MultiByteString,
  int BytesInMultiByteString,
) =>
    _EngMultiByteToUnicodeN(
      UnicodeString,
      MaxBytesInUnicodeString,
      BytesInUnicodeString,
      MultiByteString,
      BytesInMultiByteString,
    );

late final _EngMultiByteToUnicodeN = _gdi32.lookupFunction<
    Void Function(
  Pointer<Utf16> UnicodeString,
  Uint32 MaxBytesInUnicodeString,
  Pointer<Uint32> BytesInUnicodeString,
  Pointer<Utf8> MultiByteString,
  Uint32 BytesInMultiByteString,
),
    void Function(
  Pointer<Utf16> UnicodeString,
  int MaxBytesInUnicodeString,
  Pointer<Uint32> BytesInUnicodeString,
  Pointer<Utf8> MultiByteString,
  int BytesInMultiByteString,
)>('EngMultiByteToUnicodeN');

int EngMultiByteToWideChar(
  int CodePage,
  Pointer<Utf16> WideCharString,
  int BytesInWideCharString,
  Pointer<Utf8> MultiByteString,
  int BytesInMultiByteString,
) =>
    _EngMultiByteToWideChar(
      CodePage,
      WideCharString,
      BytesInWideCharString,
      MultiByteString,
      BytesInMultiByteString,
    );

late final _EngMultiByteToWideChar = _gdi32.lookupFunction<
    Int32 Function(
  Uint32 CodePage,
  Pointer<Utf16> WideCharString,
  Int32 BytesInWideCharString,
  Pointer<Utf8> MultiByteString,
  Int32 BytesInMultiByteString,
),
    int Function(
  int CodePage,
  Pointer<Utf16> WideCharString,
  int BytesInWideCharString,
  Pointer<Utf8> MultiByteString,
  int BytesInMultiByteString,
)>('EngMultiByteToWideChar');

int EngPaint(
  Pointer<SURFOBJ> pso,
  Pointer<CLIPOBJ> pco,
  Pointer<BRUSHOBJ> pbo,
  Pointer<POINTL> pptlBrushOrg,
  int mix,
) =>
    _EngPaint(
      pso,
      pco,
      pbo,
      pptlBrushOrg,
      mix,
    );

late final _EngPaint = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<SURFOBJ> pso,
  Pointer<CLIPOBJ> pco,
  Pointer<BRUSHOBJ> pbo,
  Pointer<POINTL> pptlBrushOrg,
  Uint32 mix,
),
    int Function(
  Pointer<SURFOBJ> pso,
  Pointer<CLIPOBJ> pco,
  Pointer<BRUSHOBJ> pbo,
  Pointer<POINTL> pptlBrushOrg,
  int mix,
)>('EngPaint');

int EngPlgBlt(
  Pointer<SURFOBJ> psoTrg,
  Pointer<SURFOBJ> psoSrc,
  Pointer<SURFOBJ> psoMsk,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<COLORADJUSTMENT> pca,
  Pointer<POINTL> pptlBrushOrg,
  Pointer<POINTFIX> pptfx,
  Pointer<RECTL> prcl,
  Pointer<POINTL> pptl,
  int iMode,
) =>
    _EngPlgBlt(
      psoTrg,
      psoSrc,
      psoMsk,
      pco,
      pxlo,
      pca,
      pptlBrushOrg,
      pptfx,
      prcl,
      pptl,
      iMode,
    );

late final _EngPlgBlt = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<SURFOBJ> psoTrg,
  Pointer<SURFOBJ> psoSrc,
  Pointer<SURFOBJ> psoMsk,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<COLORADJUSTMENT> pca,
  Pointer<POINTL> pptlBrushOrg,
  Pointer<POINTFIX> pptfx,
  Pointer<RECTL> prcl,
  Pointer<POINTL> pptl,
  Uint32 iMode,
),
    int Function(
  Pointer<SURFOBJ> psoTrg,
  Pointer<SURFOBJ> psoSrc,
  Pointer<SURFOBJ> psoMsk,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<COLORADJUSTMENT> pca,
  Pointer<POINTL> pptlBrushOrg,
  Pointer<POINTFIX> pptfx,
  Pointer<RECTL> prcl,
  Pointer<POINTL> pptl,
  int iMode,
)>('EngPlgBlt');

int EngQueryEMFInfo(
  int hdev,
  Pointer<EMFINFO> pEMFInfo,
) =>
    _EngQueryEMFInfo(
      hdev,
      pEMFInfo,
    );

late final _EngQueryEMFInfo = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hdev,
  Pointer<EMFINFO> pEMFInfo,
),
    int Function(
  int hdev,
  Pointer<EMFINFO> pEMFInfo,
)>('EngQueryEMFInfo');

void EngQueryLocalTime(
  Pointer<ENG_TIME_FIELDS> param0,
) =>
    _EngQueryLocalTime(
      param0,
    );

late final _EngQueryLocalTime = _gdi32.lookupFunction<
    Void Function(
  Pointer<ENG_TIME_FIELDS> param0,
),
    void Function(
  Pointer<ENG_TIME_FIELDS> param0,
)>('EngQueryLocalTime');

void EngReleaseSemaphore(
  int hsem,
) =>
    _EngReleaseSemaphore(
      hsem,
    );

late final _EngReleaseSemaphore = _gdi32.lookupFunction<
    Void Function(
  IntPtr hsem,
),
    void Function(
  int hsem,
)>('EngReleaseSemaphore');

int EngStretchBlt(
  Pointer<SURFOBJ> psoDest,
  Pointer<SURFOBJ> psoSrc,
  Pointer<SURFOBJ> psoMask,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<COLORADJUSTMENT> pca,
  Pointer<POINTL> pptlHTOrg,
  Pointer<RECTL> prclDest,
  Pointer<RECTL> prclSrc,
  Pointer<POINTL> pptlMask,
  int iMode,
) =>
    _EngStretchBlt(
      psoDest,
      psoSrc,
      psoMask,
      pco,
      pxlo,
      pca,
      pptlHTOrg,
      prclDest,
      prclSrc,
      pptlMask,
      iMode,
    );

late final _EngStretchBlt = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<SURFOBJ> psoDest,
  Pointer<SURFOBJ> psoSrc,
  Pointer<SURFOBJ> psoMask,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<COLORADJUSTMENT> pca,
  Pointer<POINTL> pptlHTOrg,
  Pointer<RECTL> prclDest,
  Pointer<RECTL> prclSrc,
  Pointer<POINTL> pptlMask,
  Uint32 iMode,
),
    int Function(
  Pointer<SURFOBJ> psoDest,
  Pointer<SURFOBJ> psoSrc,
  Pointer<SURFOBJ> psoMask,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<COLORADJUSTMENT> pca,
  Pointer<POINTL> pptlHTOrg,
  Pointer<RECTL> prclDest,
  Pointer<RECTL> prclSrc,
  Pointer<POINTL> pptlMask,
  int iMode,
)>('EngStretchBlt');

int EngStretchBltROP(
  Pointer<SURFOBJ> psoDest,
  Pointer<SURFOBJ> psoSrc,
  Pointer<SURFOBJ> psoMask,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<COLORADJUSTMENT> pca,
  Pointer<POINTL> pptlHTOrg,
  Pointer<RECTL> prclDest,
  Pointer<RECTL> prclSrc,
  Pointer<POINTL> pptlMask,
  int iMode,
  Pointer<BRUSHOBJ> pbo,
  int rop4,
) =>
    _EngStretchBltROP(
      psoDest,
      psoSrc,
      psoMask,
      pco,
      pxlo,
      pca,
      pptlHTOrg,
      prclDest,
      prclSrc,
      pptlMask,
      iMode,
      pbo,
      rop4,
    );

late final _EngStretchBltROP = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<SURFOBJ> psoDest,
  Pointer<SURFOBJ> psoSrc,
  Pointer<SURFOBJ> psoMask,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<COLORADJUSTMENT> pca,
  Pointer<POINTL> pptlHTOrg,
  Pointer<RECTL> prclDest,
  Pointer<RECTL> prclSrc,
  Pointer<POINTL> pptlMask,
  Uint32 iMode,
  Pointer<BRUSHOBJ> pbo,
  Uint32 rop4,
),
    int Function(
  Pointer<SURFOBJ> psoDest,
  Pointer<SURFOBJ> psoSrc,
  Pointer<SURFOBJ> psoMask,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<COLORADJUSTMENT> pca,
  Pointer<POINTL> pptlHTOrg,
  Pointer<RECTL> prclDest,
  Pointer<RECTL> prclSrc,
  Pointer<POINTL> pptlMask,
  int iMode,
  Pointer<BRUSHOBJ> pbo,
  int rop4,
)>('EngStretchBltROP');

int EngStrokeAndFillPath(
  Pointer<SURFOBJ> pso,
  Pointer<PATHOBJ> ppo,
  Pointer<CLIPOBJ> pco,
  Pointer<XFORMOBJ> pxo,
  Pointer<BRUSHOBJ> pboStroke,
  Pointer<LINEATTRS> plineattrs,
  Pointer<BRUSHOBJ> pboFill,
  Pointer<POINTL> pptlBrushOrg,
  int mixFill,
  int flOptions,
) =>
    _EngStrokeAndFillPath(
      pso,
      ppo,
      pco,
      pxo,
      pboStroke,
      plineattrs,
      pboFill,
      pptlBrushOrg,
      mixFill,
      flOptions,
    );

late final _EngStrokeAndFillPath = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<SURFOBJ> pso,
  Pointer<PATHOBJ> ppo,
  Pointer<CLIPOBJ> pco,
  Pointer<XFORMOBJ> pxo,
  Pointer<BRUSHOBJ> pboStroke,
  Pointer<LINEATTRS> plineattrs,
  Pointer<BRUSHOBJ> pboFill,
  Pointer<POINTL> pptlBrushOrg,
  Uint32 mixFill,
  Uint32 flOptions,
),
    int Function(
  Pointer<SURFOBJ> pso,
  Pointer<PATHOBJ> ppo,
  Pointer<CLIPOBJ> pco,
  Pointer<XFORMOBJ> pxo,
  Pointer<BRUSHOBJ> pboStroke,
  Pointer<LINEATTRS> plineattrs,
  Pointer<BRUSHOBJ> pboFill,
  Pointer<POINTL> pptlBrushOrg,
  int mixFill,
  int flOptions,
)>('EngStrokeAndFillPath');

int EngStrokePath(
  Pointer<SURFOBJ> pso,
  Pointer<PATHOBJ> ppo,
  Pointer<CLIPOBJ> pco,
  Pointer<XFORMOBJ> pxo,
  Pointer<BRUSHOBJ> pbo,
  Pointer<POINTL> pptlBrushOrg,
  Pointer<LINEATTRS> plineattrs,
  int mix,
) =>
    _EngStrokePath(
      pso,
      ppo,
      pco,
      pxo,
      pbo,
      pptlBrushOrg,
      plineattrs,
      mix,
    );

late final _EngStrokePath = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<SURFOBJ> pso,
  Pointer<PATHOBJ> ppo,
  Pointer<CLIPOBJ> pco,
  Pointer<XFORMOBJ> pxo,
  Pointer<BRUSHOBJ> pbo,
  Pointer<POINTL> pptlBrushOrg,
  Pointer<LINEATTRS> plineattrs,
  Uint32 mix,
),
    int Function(
  Pointer<SURFOBJ> pso,
  Pointer<PATHOBJ> ppo,
  Pointer<CLIPOBJ> pco,
  Pointer<XFORMOBJ> pxo,
  Pointer<BRUSHOBJ> pbo,
  Pointer<POINTL> pptlBrushOrg,
  Pointer<LINEATTRS> plineattrs,
  int mix,
)>('EngStrokePath');

int EngTextOut(
  Pointer<SURFOBJ> pso,
  Pointer<STROBJ> pstro,
  Pointer<FONTOBJ> pfo,
  Pointer<CLIPOBJ> pco,
  Pointer<RECTL> prclExtra,
  Pointer<RECTL> prclOpaque,
  Pointer<BRUSHOBJ> pboFore,
  Pointer<BRUSHOBJ> pboOpaque,
  Pointer<POINTL> pptlOrg,
  int mix,
) =>
    _EngTextOut(
      pso,
      pstro,
      pfo,
      pco,
      prclExtra,
      prclOpaque,
      pboFore,
      pboOpaque,
      pptlOrg,
      mix,
    );

late final _EngTextOut = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<SURFOBJ> pso,
  Pointer<STROBJ> pstro,
  Pointer<FONTOBJ> pfo,
  Pointer<CLIPOBJ> pco,
  Pointer<RECTL> prclExtra,
  Pointer<RECTL> prclOpaque,
  Pointer<BRUSHOBJ> pboFore,
  Pointer<BRUSHOBJ> pboOpaque,
  Pointer<POINTL> pptlOrg,
  Uint32 mix,
),
    int Function(
  Pointer<SURFOBJ> pso,
  Pointer<STROBJ> pstro,
  Pointer<FONTOBJ> pfo,
  Pointer<CLIPOBJ> pco,
  Pointer<RECTL> prclExtra,
  Pointer<RECTL> prclOpaque,
  Pointer<BRUSHOBJ> pboFore,
  Pointer<BRUSHOBJ> pboOpaque,
  Pointer<POINTL> pptlOrg,
  int mix,
)>('EngTextOut');

int EngTransparentBlt(
  Pointer<SURFOBJ> psoDst,
  Pointer<SURFOBJ> psoSrc,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<RECTL> prclDst,
  Pointer<RECTL> prclSrc,
  int TransColor,
  int bCalledFromBitBlt,
) =>
    _EngTransparentBlt(
      psoDst,
      psoSrc,
      pco,
      pxlo,
      prclDst,
      prclSrc,
      TransColor,
      bCalledFromBitBlt,
    );

late final _EngTransparentBlt = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<SURFOBJ> psoDst,
  Pointer<SURFOBJ> psoSrc,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<RECTL> prclDst,
  Pointer<RECTL> prclSrc,
  Uint32 TransColor,
  Uint32 bCalledFromBitBlt,
),
    int Function(
  Pointer<SURFOBJ> psoDst,
  Pointer<SURFOBJ> psoSrc,
  Pointer<CLIPOBJ> pco,
  Pointer<XLATEOBJ> pxlo,
  Pointer<RECTL> prclDst,
  Pointer<RECTL> prclSrc,
  int TransColor,
  int bCalledFromBitBlt,
)>('EngTransparentBlt');

void EngUnicodeToMultiByteN(
  Pointer<Utf8> MultiByteString,
  int MaxBytesInMultiByteString,
  Pointer<Uint32> BytesInMultiByteString,
  Pointer<Utf16> UnicodeString,
  int BytesInUnicodeString,
) =>
    _EngUnicodeToMultiByteN(
      MultiByteString,
      MaxBytesInMultiByteString,
      BytesInMultiByteString,
      UnicodeString,
      BytesInUnicodeString,
    );

late final _EngUnicodeToMultiByteN = _gdi32.lookupFunction<
    Void Function(
  Pointer<Utf8> MultiByteString,
  Uint32 MaxBytesInMultiByteString,
  Pointer<Uint32> BytesInMultiByteString,
  Pointer<Utf16> UnicodeString,
  Uint32 BytesInUnicodeString,
),
    void Function(
  Pointer<Utf8> MultiByteString,
  int MaxBytesInMultiByteString,
  Pointer<Uint32> BytesInMultiByteString,
  Pointer<Utf16> UnicodeString,
  int BytesInUnicodeString,
)>('EngUnicodeToMultiByteN');

void EngUnlockSurface(
  Pointer<SURFOBJ> pso,
) =>
    _EngUnlockSurface(
      pso,
    );

late final _EngUnlockSurface = _gdi32.lookupFunction<
    Void Function(
  Pointer<SURFOBJ> pso,
),
    void Function(
  Pointer<SURFOBJ> pso,
)>('EngUnlockSurface');

int EngWideCharToMultiByte(
  int CodePage,
  Pointer<Utf16> WideCharString,
  int BytesInWideCharString,
  Pointer<Utf8> MultiByteString,
  int BytesInMultiByteString,
) =>
    _EngWideCharToMultiByte(
      CodePage,
      WideCharString,
      BytesInWideCharString,
      MultiByteString,
      BytesInMultiByteString,
    );

late final _EngWideCharToMultiByte = _gdi32.lookupFunction<
    Int32 Function(
  Uint32 CodePage,
  Pointer<Utf16> WideCharString,
  Int32 BytesInWideCharString,
  Pointer<Utf8> MultiByteString,
  Int32 BytesInMultiByteString,
),
    int Function(
  int CodePage,
  Pointer<Utf16> WideCharString,
  int BytesInWideCharString,
  Pointer<Utf8> MultiByteString,
  int BytesInMultiByteString,
)>('EngWideCharToMultiByte');

int FONTOBJ_cGetAllGlyphHandles(
  Pointer<FONTOBJ> pfo,
  Pointer<Uint32> phg,
) =>
    _FONTOBJ_cGetAllGlyphHandles(
      pfo,
      phg,
    );

late final _FONTOBJ_cGetAllGlyphHandles = _gdi32.lookupFunction<
    Uint32 Function(
  Pointer<FONTOBJ> pfo,
  Pointer<Uint32> phg,
),
    int Function(
  Pointer<FONTOBJ> pfo,
  Pointer<Uint32> phg,
)>('FONTOBJ_cGetAllGlyphHandles');

int FONTOBJ_cGetGlyphs(
  Pointer<FONTOBJ> pfo,
  int iMode,
  int cGlyph,
  Pointer<Uint32> phg,
  Pointer<Pointer> ppvGlyph,
) =>
    _FONTOBJ_cGetGlyphs(
      pfo,
      iMode,
      cGlyph,
      phg,
      ppvGlyph,
    );

late final _FONTOBJ_cGetGlyphs = _gdi32.lookupFunction<
    Uint32 Function(
  Pointer<FONTOBJ> pfo,
  Uint32 iMode,
  Uint32 cGlyph,
  Pointer<Uint32> phg,
  Pointer<Pointer> ppvGlyph,
),
    int Function(
  Pointer<FONTOBJ> pfo,
  int iMode,
  int cGlyph,
  Pointer<Uint32> phg,
  Pointer<Pointer> ppvGlyph,
)>('FONTOBJ_cGetGlyphs');

Pointer<FD_GLYPHATTR> FONTOBJ_pQueryGlyphAttrs(
  Pointer<FONTOBJ> pfo,
  int iMode,
) =>
    _FONTOBJ_pQueryGlyphAttrs(
      pfo,
      iMode,
    );

late final _FONTOBJ_pQueryGlyphAttrs = _gdi32.lookupFunction<
    Pointer<FD_GLYPHATTR> Function(
  Pointer<FONTOBJ> pfo,
  Uint32 iMode,
),
    Pointer<FD_GLYPHATTR> Function(
  Pointer<FONTOBJ> pfo,
  int iMode,
)>('FONTOBJ_pQueryGlyphAttrs');

Pointer<FD_GLYPHSET> FONTOBJ_pfdg(
  Pointer<FONTOBJ> pfo,
) =>
    _FONTOBJ_pfdg(
      pfo,
    );

late final _FONTOBJ_pfdg = _gdi32.lookupFunction<
    Pointer<FD_GLYPHSET> Function(
  Pointer<FONTOBJ> pfo,
),
    Pointer<FD_GLYPHSET> Function(
  Pointer<FONTOBJ> pfo,
)>('FONTOBJ_pfdg');

Pointer<IFIMETRICS> FONTOBJ_pifi(
  Pointer<FONTOBJ> pfo,
) =>
    _FONTOBJ_pifi(
      pfo,
    );

late final _FONTOBJ_pifi = _gdi32.lookupFunction<
    Pointer<IFIMETRICS> Function(
  Pointer<FONTOBJ> pfo,
),
    Pointer<IFIMETRICS> Function(
  Pointer<FONTOBJ> pfo,
)>('FONTOBJ_pifi');

Pointer FONTOBJ_pvTrueTypeFontFile(
  Pointer<FONTOBJ> pfo,
  Pointer<Uint32> pcjFile,
) =>
    _FONTOBJ_pvTrueTypeFontFile(
      pfo,
      pcjFile,
    );

late final _FONTOBJ_pvTrueTypeFontFile = _gdi32.lookupFunction<
    Pointer Function(
  Pointer<FONTOBJ> pfo,
  Pointer<Uint32> pcjFile,
),
    Pointer Function(
  Pointer<FONTOBJ> pfo,
  Pointer<Uint32> pcjFile,
)>('FONTOBJ_pvTrueTypeFontFile');

Pointer<XFORMOBJ> FONTOBJ_pxoGetXform(
  Pointer<FONTOBJ> pfo,
) =>
    _FONTOBJ_pxoGetXform(
      pfo,
    );

late final _FONTOBJ_pxoGetXform = _gdi32.lookupFunction<
    Pointer<XFORMOBJ> Function(
  Pointer<FONTOBJ> pfo,
),
    Pointer<XFORMOBJ> Function(
  Pointer<FONTOBJ> pfo,
)>('FONTOBJ_pxoGetXform');

void FONTOBJ_vGetInfo(
  Pointer<FONTOBJ> pfo,
  int cjSize,
  Pointer<FONTINFO> pfi,
) =>
    _FONTOBJ_vGetInfo(
      pfo,
      cjSize,
      pfi,
    );

late final _FONTOBJ_vGetInfo = _gdi32.lookupFunction<
    Void Function(
  Pointer<FONTOBJ> pfo,
  Uint32 cjSize,
  Pointer<FONTINFO> pfi,
),
    void Function(
  Pointer<FONTOBJ> pfo,
  int cjSize,
  Pointer<FONTINFO> pfi,
)>('FONTOBJ_vGetInfo');

int HT_Get8BPPFormatPalette(
  Pointer<PALETTEENTRY> pPaletteEntry,
  int RedGamma,
  int GreenGamma,
  int BlueGamma,
) =>
    _HT_Get8BPPFormatPalette(
      pPaletteEntry,
      RedGamma,
      GreenGamma,
      BlueGamma,
    );

late final _HT_Get8BPPFormatPalette = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<PALETTEENTRY> pPaletteEntry,
  Uint16 RedGamma,
  Uint16 GreenGamma,
  Uint16 BlueGamma,
),
    int Function(
  Pointer<PALETTEENTRY> pPaletteEntry,
  int RedGamma,
  int GreenGamma,
  int BlueGamma,
)>('HT_Get8BPPFormatPalette');

int HT_Get8BPPMaskPalette(
  Pointer<PALETTEENTRY> pPaletteEntry,
  int Use8BPPMaskPal,
  int CMYMask,
  int RedGamma,
  int GreenGamma,
  int BlueGamma,
) =>
    _HT_Get8BPPMaskPalette(
      pPaletteEntry,
      Use8BPPMaskPal,
      CMYMask,
      RedGamma,
      GreenGamma,
      BlueGamma,
    );

late final _HT_Get8BPPMaskPalette = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<PALETTEENTRY> pPaletteEntry,
  Int32 Use8BPPMaskPal,
  Uint8 CMYMask,
  Uint16 RedGamma,
  Uint16 GreenGamma,
  Uint16 BlueGamma,
),
    int Function(
  Pointer<PALETTEENTRY> pPaletteEntry,
  int Use8BPPMaskPal,
  int CMYMask,
  int RedGamma,
  int GreenGamma,
  int BlueGamma,
)>('HT_Get8BPPMaskPalette');

int PATHOBJ_bEnum(
  Pointer<PATHOBJ> ppo,
  Pointer<PATHDATA> ppd,
) =>
    _PATHOBJ_bEnum(
      ppo,
      ppd,
    );

late final _PATHOBJ_bEnum = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<PATHOBJ> ppo,
  Pointer<PATHDATA> ppd,
),
    int Function(
  Pointer<PATHOBJ> ppo,
  Pointer<PATHDATA> ppd,
)>('PATHOBJ_bEnum');

int PATHOBJ_bEnumClipLines(
  Pointer<PATHOBJ> ppo,
  int cb,
  Pointer<CLIPLINE> pcl,
) =>
    _PATHOBJ_bEnumClipLines(
      ppo,
      cb,
      pcl,
    );

late final _PATHOBJ_bEnumClipLines = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<PATHOBJ> ppo,
  Uint32 cb,
  Pointer<CLIPLINE> pcl,
),
    int Function(
  Pointer<PATHOBJ> ppo,
  int cb,
  Pointer<CLIPLINE> pcl,
)>('PATHOBJ_bEnumClipLines');

void PATHOBJ_vEnumStart(
  Pointer<PATHOBJ> ppo,
) =>
    _PATHOBJ_vEnumStart(
      ppo,
    );

late final _PATHOBJ_vEnumStart = _gdi32.lookupFunction<
    Void Function(
  Pointer<PATHOBJ> ppo,
),
    void Function(
  Pointer<PATHOBJ> ppo,
)>('PATHOBJ_vEnumStart');

void PATHOBJ_vEnumStartClipLines(
  Pointer<PATHOBJ> ppo,
  Pointer<CLIPOBJ> pco,
  Pointer<SURFOBJ> pso,
  Pointer<LINEATTRS> pla,
) =>
    _PATHOBJ_vEnumStartClipLines(
      ppo,
      pco,
      pso,
      pla,
    );

late final _PATHOBJ_vEnumStartClipLines = _gdi32.lookupFunction<
    Void Function(
  Pointer<PATHOBJ> ppo,
  Pointer<CLIPOBJ> pco,
  Pointer<SURFOBJ> pso,
  Pointer<LINEATTRS> pla,
),
    void Function(
  Pointer<PATHOBJ> ppo,
  Pointer<CLIPOBJ> pco,
  Pointer<SURFOBJ> pso,
  Pointer<LINEATTRS> pla,
)>('PATHOBJ_vEnumStartClipLines');

void PATHOBJ_vGetBounds(
  Pointer<PATHOBJ> ppo,
  Pointer<RECTFX> prectfx,
) =>
    _PATHOBJ_vGetBounds(
      ppo,
      prectfx,
    );

late final _PATHOBJ_vGetBounds = _gdi32.lookupFunction<
    Void Function(
  Pointer<PATHOBJ> ppo,
  Pointer<RECTFX> prectfx,
),
    void Function(
  Pointer<PATHOBJ> ppo,
  Pointer<RECTFX> prectfx,
)>('PATHOBJ_vGetBounds');

int STROBJ_bEnum(
  Pointer<STROBJ> pstro,
  Pointer<Uint32> pc,
  Pointer<Pointer<GLYPHPOS>> ppgpos,
) =>
    _STROBJ_bEnum(
      pstro,
      pc,
      ppgpos,
    );

late final _STROBJ_bEnum = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<STROBJ> pstro,
  Pointer<Uint32> pc,
  Pointer<Pointer<GLYPHPOS>> ppgpos,
),
    int Function(
  Pointer<STROBJ> pstro,
  Pointer<Uint32> pc,
  Pointer<Pointer<GLYPHPOS>> ppgpos,
)>('STROBJ_bEnum');

int STROBJ_bEnumPositionsOnly(
  Pointer<STROBJ> pstro,
  Pointer<Uint32> pc,
  Pointer<Pointer<GLYPHPOS>> ppgpos,
) =>
    _STROBJ_bEnumPositionsOnly(
      pstro,
      pc,
      ppgpos,
    );

late final _STROBJ_bEnumPositionsOnly = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<STROBJ> pstro,
  Pointer<Uint32> pc,
  Pointer<Pointer<GLYPHPOS>> ppgpos,
),
    int Function(
  Pointer<STROBJ> pstro,
  Pointer<Uint32> pc,
  Pointer<Pointer<GLYPHPOS>> ppgpos,
)>('STROBJ_bEnumPositionsOnly');

int STROBJ_bGetAdvanceWidths(
  Pointer<STROBJ> pso,
  int iFirst,
  int c,
  Pointer<POINTQF> pptqD,
) =>
    _STROBJ_bGetAdvanceWidths(
      pso,
      iFirst,
      c,
      pptqD,
    );

late final _STROBJ_bGetAdvanceWidths = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<STROBJ> pso,
  Uint32 iFirst,
  Uint32 c,
  Pointer<POINTQF> pptqD,
),
    int Function(
  Pointer<STROBJ> pso,
  int iFirst,
  int c,
  Pointer<POINTQF> pptqD,
)>('STROBJ_bGetAdvanceWidths');

int STROBJ_dwGetCodePage(
  Pointer<STROBJ> pstro,
) =>
    _STROBJ_dwGetCodePage(
      pstro,
    );

late final _STROBJ_dwGetCodePage = _gdi32.lookupFunction<
    Uint32 Function(
  Pointer<STROBJ> pstro,
),
    int Function(
  Pointer<STROBJ> pstro,
)>('STROBJ_dwGetCodePage');

void STROBJ_vEnumStart(
  Pointer<STROBJ> pstro,
) =>
    _STROBJ_vEnumStart(
      pstro,
    );

late final _STROBJ_vEnumStart = _gdi32.lookupFunction<
    Void Function(
  Pointer<STROBJ> pstro,
),
    void Function(
  Pointer<STROBJ> pstro,
)>('STROBJ_vEnumStart');

int XFORMOBJ_bApplyXform(
  Pointer<XFORMOBJ> pxo,
  int iMode,
  int cPoints,
  Pointer pvIn,
  Pointer pvOut,
) =>
    _XFORMOBJ_bApplyXform(
      pxo,
      iMode,
      cPoints,
      pvIn,
      pvOut,
    );

late final _XFORMOBJ_bApplyXform = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<XFORMOBJ> pxo,
  Uint32 iMode,
  Uint32 cPoints,
  Pointer pvIn,
  Pointer pvOut,
),
    int Function(
  Pointer<XFORMOBJ> pxo,
  int iMode,
  int cPoints,
  Pointer pvIn,
  Pointer pvOut,
)>('XFORMOBJ_bApplyXform');

int XFORMOBJ_iGetXform(
  Pointer<XFORMOBJ> pxo,
  Pointer<XFORML> pxform,
) =>
    _XFORMOBJ_iGetXform(
      pxo,
      pxform,
    );

late final _XFORMOBJ_iGetXform = _gdi32.lookupFunction<
    Uint32 Function(
  Pointer<XFORMOBJ> pxo,
  Pointer<XFORML> pxform,
),
    int Function(
  Pointer<XFORMOBJ> pxo,
  Pointer<XFORML> pxform,
)>('XFORMOBJ_iGetXform');

int XLATEOBJ_cGetPalette(
  Pointer<XLATEOBJ> pxlo,
  int iPal,
  int cPal,
  Pointer<Uint32> pPal,
) =>
    _XLATEOBJ_cGetPalette(
      pxlo,
      iPal,
      cPal,
      pPal,
    );

late final _XLATEOBJ_cGetPalette = _gdi32.lookupFunction<
    Uint32 Function(
  Pointer<XLATEOBJ> pxlo,
  Uint32 iPal,
  Uint32 cPal,
  Pointer<Uint32> pPal,
),
    int Function(
  Pointer<XLATEOBJ> pxlo,
  int iPal,
  int cPal,
  Pointer<Uint32> pPal,
)>('XLATEOBJ_cGetPalette');

int XLATEOBJ_hGetColorTransform(
  Pointer<XLATEOBJ> pxlo,
) =>
    _XLATEOBJ_hGetColorTransform(
      pxlo,
    );

late final _XLATEOBJ_hGetColorTransform = _gdi32.lookupFunction<
    IntPtr Function(
  Pointer<XLATEOBJ> pxlo,
),
    int Function(
  Pointer<XLATEOBJ> pxlo,
)>('XLATEOBJ_hGetColorTransform');

int XLATEOBJ_iXlate(
  Pointer<XLATEOBJ> pxlo,
  int iColor,
) =>
    _XLATEOBJ_iXlate(
      pxlo,
      iColor,
    );

late final _XLATEOBJ_iXlate = _gdi32.lookupFunction<
    Uint32 Function(
  Pointer<XLATEOBJ> pxlo,
  Uint32 iColor,
),
    int Function(
  Pointer<XLATEOBJ> pxlo,
  int iColor,
)>('XLATEOBJ_iXlate');

Pointer<Uint32> XLATEOBJ_piVector(
  Pointer<XLATEOBJ> pxlo,
) =>
    _XLATEOBJ_piVector(
      pxlo,
    );

late final _XLATEOBJ_piVector = _gdi32.lookupFunction<
    Pointer<Uint32> Function(
  Pointer<XLATEOBJ> pxlo,
),
    Pointer<Uint32> Function(
  Pointer<XLATEOBJ> pxlo,
)>('XLATEOBJ_piVector');

// -----------------------------------------------------------------------
// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int DisplayConfigGetDeviceInfo(
  Pointer<DISPLAYCONFIG_DEVICE_INFO_HEADER> requestPacket,
) =>
    _DisplayConfigGetDeviceInfo(
      requestPacket,
    );

late final _DisplayConfigGetDeviceInfo = _user32.lookupFunction<
    Int32 Function(
  Pointer<DISPLAYCONFIG_DEVICE_INFO_HEADER> requestPacket,
),
    int Function(
  Pointer<DISPLAYCONFIG_DEVICE_INFO_HEADER> requestPacket,
)>('DisplayConfigGetDeviceInfo');

int DisplayConfigSetDeviceInfo(
  Pointer<DISPLAYCONFIG_DEVICE_INFO_HEADER> setPacket,
) =>
    _DisplayConfigSetDeviceInfo(
      setPacket,
    );

late final _DisplayConfigSetDeviceInfo = _user32.lookupFunction<
    Int32 Function(
  Pointer<DISPLAYCONFIG_DEVICE_INFO_HEADER> setPacket,
),
    int Function(
  Pointer<DISPLAYCONFIG_DEVICE_INFO_HEADER> setPacket,
)>('DisplayConfigSetDeviceInfo');

int GetAutoRotationState(
  Pointer<Int32> pState,
) =>
    _GetAutoRotationState(
      pState,
    );

late final _GetAutoRotationState = _user32.lookupFunction<
    Int32 Function(
  Pointer<Int32> pState,
),
    int Function(
  Pointer<Int32> pState,
)>('GetAutoRotationState');

int GetDisplayAutoRotationPreferences(
  Pointer<Int32> pOrientation,
) =>
    _GetDisplayAutoRotationPreferences(
      pOrientation,
    );

late final _GetDisplayAutoRotationPreferences = _user32.lookupFunction<
    Int32 Function(
  Pointer<Int32> pOrientation,
),
    int Function(
  Pointer<Int32> pOrientation,
)>('GetDisplayAutoRotationPreferences');

int GetDisplayConfigBufferSizes(
  int flags,
  Pointer<Uint32> numPathArrayElements,
  Pointer<Uint32> numModeInfoArrayElements,
) =>
    _GetDisplayConfigBufferSizes(
      flags,
      numPathArrayElements,
      numModeInfoArrayElements,
    );

late final _GetDisplayConfigBufferSizes = _user32.lookupFunction<
    Int32 Function(
  Uint32 flags,
  Pointer<Uint32> numPathArrayElements,
  Pointer<Uint32> numModeInfoArrayElements,
),
    int Function(
  int flags,
  Pointer<Uint32> numPathArrayElements,
  Pointer<Uint32> numModeInfoArrayElements,
)>('GetDisplayConfigBufferSizes');

int QueryDisplayConfig(
  int flags,
  Pointer<Uint32> numPathArrayElements,
  Pointer<DISPLAYCONFIG_PATH_INFO> pathArray,
  Pointer<Uint32> numModeInfoArrayElements,
  Pointer<DISPLAYCONFIG_MODE_INFO> modeInfoArray,
  Pointer<Int32> currentTopologyId,
) =>
    _QueryDisplayConfig(
      flags,
      numPathArrayElements,
      pathArray,
      numModeInfoArrayElements,
      modeInfoArray,
      currentTopologyId,
    );

late final _QueryDisplayConfig = _user32.lookupFunction<
    Int32 Function(
  Uint32 flags,
  Pointer<Uint32> numPathArrayElements,
  Pointer<DISPLAYCONFIG_PATH_INFO> pathArray,
  Pointer<Uint32> numModeInfoArrayElements,
  Pointer<DISPLAYCONFIG_MODE_INFO> modeInfoArray,
  Pointer<Int32> currentTopologyId,
),
    int Function(
  int flags,
  Pointer<Uint32> numPathArrayElements,
  Pointer<DISPLAYCONFIG_PATH_INFO> pathArray,
  Pointer<Uint32> numModeInfoArrayElements,
  Pointer<DISPLAYCONFIG_MODE_INFO> modeInfoArray,
  Pointer<Int32> currentTopologyId,
)>('QueryDisplayConfig');

int SetDisplayAutoRotationPreferences(
  int orientation,
) =>
    _SetDisplayAutoRotationPreferences(
      orientation,
    );

late final _SetDisplayAutoRotationPreferences = _user32.lookupFunction<
    Int32 Function(
  Int32 orientation,
),
    int Function(
  int orientation,
)>('SetDisplayAutoRotationPreferences');

int SetDisplayConfig(
  int numPathArrayElements,
  Pointer<DISPLAYCONFIG_PATH_INFO> pathArray,
  int numModeInfoArrayElements,
  Pointer<DISPLAYCONFIG_MODE_INFO> modeInfoArray,
  int flags,
) =>
    _SetDisplayConfig(
      numPathArrayElements,
      pathArray,
      numModeInfoArrayElements,
      modeInfoArray,
      flags,
    );

late final _SetDisplayConfig = _user32.lookupFunction<
    Int32 Function(
  Uint32 numPathArrayElements,
  Pointer<DISPLAYCONFIG_PATH_INFO> pathArray,
  Uint32 numModeInfoArrayElements,
  Pointer<DISPLAYCONFIG_MODE_INFO> modeInfoArray,
  Uint32 flags,
),
    int Function(
  int numPathArrayElements,
  Pointer<DISPLAYCONFIG_PATH_INFO> pathArray,
  int numModeInfoArrayElements,
  Pointer<DISPLAYCONFIG_MODE_INFO> modeInfoArray,
  int flags,
)>('SetDisplayConfig');
