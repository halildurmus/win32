// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../guid.dart';
import '../../combase.dart';
import '../../foundation/structs.g.dart';
import '../../devices/display/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DDevice9.dart';

// -----------------------------------------------------------------------
// dxva2.dll
// -----------------------------------------------------------------------
final _dxva2 = DynamicLibrary.open('dxva2.dll');

int CapabilitiesRequestAndCapabilitiesReply(
        int hMonitor,
        Pointer<Utf8> pszASCIICapabilitiesString,
        int dwCapabilitiesStringLengthInCharacters) =>
    _CapabilitiesRequestAndCapabilitiesReply(hMonitor,
        pszASCIICapabilitiesString, dwCapabilitiesStringLengthInCharacters);

late final _CapabilitiesRequestAndCapabilitiesReply =
    _dxva2.lookupFunction<
            Int32 Function(
                IntPtr hMonitor,
                Pointer<Utf8> pszASCIICapabilitiesString,
                Uint32 dwCapabilitiesStringLengthInCharacters),
            int Function(int hMonitor, Pointer<Utf8> pszASCIICapabilitiesString,
                int dwCapabilitiesStringLengthInCharacters)>(
        'CapabilitiesRequestAndCapabilitiesReply');

int DegaussMonitor(int hMonitor) => _DegaussMonitor(hMonitor);

late final _DegaussMonitor = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor),
    int Function(int hMonitor)>('DegaussMonitor');

int DestroyPhysicalMonitor(int hMonitor) => _DestroyPhysicalMonitor(hMonitor);

late final _DestroyPhysicalMonitor = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor),
    int Function(int hMonitor)>('DestroyPhysicalMonitor');

int DestroyPhysicalMonitors(int dwPhysicalMonitorArraySize,
        Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray) =>
    _DestroyPhysicalMonitors(dwPhysicalMonitorArraySize, pPhysicalMonitorArray);

late final _DestroyPhysicalMonitors = _dxva2.lookupFunction<
        Int32 Function(Uint32 dwPhysicalMonitorArraySize,
            Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray),
        int Function(int dwPhysicalMonitorArraySize,
            Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray)>(
    'DestroyPhysicalMonitors');

int GetCapabilitiesStringLength(int hMonitor,
        Pointer<Uint32> pdwCapabilitiesStringLengthInCharacters) =>
    _GetCapabilitiesStringLength(
        hMonitor, pdwCapabilitiesStringLengthInCharacters);

late final _GetCapabilitiesStringLength = _dxva2.lookupFunction<
        Int32 Function(IntPtr hMonitor,
            Pointer<Uint32> pdwCapabilitiesStringLengthInCharacters),
        int Function(int hMonitor,
            Pointer<Uint32> pdwCapabilitiesStringLengthInCharacters)>(
    'GetCapabilitiesStringLength');

int GetMonitorBrightness(
        int hMonitor,
        Pointer<Uint32> pdwMinimumBrightness,
        Pointer<Uint32> pdwCurrentBrightness,
        Pointer<Uint32> pdwMaximumBrightness) =>
    _GetMonitorBrightness(hMonitor, pdwMinimumBrightness, pdwCurrentBrightness,
        pdwMaximumBrightness);

late final _GetMonitorBrightness = _dxva2.lookupFunction<
    Int32 Function(
        IntPtr hMonitor,
        Pointer<Uint32> pdwMinimumBrightness,
        Pointer<Uint32> pdwCurrentBrightness,
        Pointer<Uint32> pdwMaximumBrightness),
    int Function(
        int hMonitor,
        Pointer<Uint32> pdwMinimumBrightness,
        Pointer<Uint32> pdwCurrentBrightness,
        Pointer<Uint32> pdwMaximumBrightness)>('GetMonitorBrightness');

int GetMonitorCapabilities(int hMonitor, Pointer<Uint32> pdwMonitorCapabilities,
        Pointer<Uint32> pdwSupportedColorTemperatures) =>
    _GetMonitorCapabilities(
        hMonitor, pdwMonitorCapabilities, pdwSupportedColorTemperatures);

late final _GetMonitorCapabilities = _dxva2.lookupFunction<
        Int32 Function(IntPtr hMonitor, Pointer<Uint32> pdwMonitorCapabilities,
            Pointer<Uint32> pdwSupportedColorTemperatures),
        int Function(int hMonitor, Pointer<Uint32> pdwMonitorCapabilities,
            Pointer<Uint32> pdwSupportedColorTemperatures)>(
    'GetMonitorCapabilities');

int GetMonitorColorTemperature(
        int hMonitor, Pointer<Uint32> pctCurrentColorTemperature) =>
    _GetMonitorColorTemperature(hMonitor, pctCurrentColorTemperature);

late final _GetMonitorColorTemperature = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Pointer<Uint32> pctCurrentColorTemperature),
    int Function(
        int hMonitor,
        Pointer<Uint32>
            pctCurrentColorTemperature)>('GetMonitorColorTemperature');

int GetMonitorContrast(
        int hMonitor,
        Pointer<Uint32> pdwMinimumContrast,
        Pointer<Uint32> pdwCurrentContrast,
        Pointer<Uint32> pdwMaximumContrast) =>
    _GetMonitorContrast(
        hMonitor, pdwMinimumContrast, pdwCurrentContrast, pdwMaximumContrast);

late final _GetMonitorContrast = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Pointer<Uint32> pdwMinimumContrast,
        Pointer<Uint32> pdwCurrentContrast, Pointer<Uint32> pdwMaximumContrast),
    int Function(
        int hMonitor,
        Pointer<Uint32> pdwMinimumContrast,
        Pointer<Uint32> pdwCurrentContrast,
        Pointer<Uint32> pdwMaximumContrast)>('GetMonitorContrast');

int GetMonitorDisplayAreaPosition(
        int hMonitor,
        int ptPositionType,
        Pointer<Uint32> pdwMinimumPosition,
        Pointer<Uint32> pdwCurrentPosition,
        Pointer<Uint32> pdwMaximumPosition) =>
    _GetMonitorDisplayAreaPosition(hMonitor, ptPositionType, pdwMinimumPosition,
        pdwCurrentPosition, pdwMaximumPosition);

late final _GetMonitorDisplayAreaPosition = _dxva2.lookupFunction<
    Int32 Function(
        IntPtr hMonitor,
        Uint32 ptPositionType,
        Pointer<Uint32> pdwMinimumPosition,
        Pointer<Uint32> pdwCurrentPosition,
        Pointer<Uint32> pdwMaximumPosition),
    int Function(
        int hMonitor,
        int ptPositionType,
        Pointer<Uint32> pdwMinimumPosition,
        Pointer<Uint32> pdwCurrentPosition,
        Pointer<Uint32> pdwMaximumPosition)>('GetMonitorDisplayAreaPosition');

int GetMonitorDisplayAreaSize(
        int hMonitor,
        int stSizeType,
        Pointer<Uint32> pdwMinimumWidthOrHeight,
        Pointer<Uint32> pdwCurrentWidthOrHeight,
        Pointer<Uint32> pdwMaximumWidthOrHeight) =>
    _GetMonitorDisplayAreaSize(hMonitor, stSizeType, pdwMinimumWidthOrHeight,
        pdwCurrentWidthOrHeight, pdwMaximumWidthOrHeight);

late final _GetMonitorDisplayAreaSize = _dxva2.lookupFunction<
    Int32 Function(
        IntPtr hMonitor,
        Uint32 stSizeType,
        Pointer<Uint32> pdwMinimumWidthOrHeight,
        Pointer<Uint32> pdwCurrentWidthOrHeight,
        Pointer<Uint32> pdwMaximumWidthOrHeight),
    int Function(
        int hMonitor,
        int stSizeType,
        Pointer<Uint32> pdwMinimumWidthOrHeight,
        Pointer<Uint32> pdwCurrentWidthOrHeight,
        Pointer<Uint32> pdwMaximumWidthOrHeight)>('GetMonitorDisplayAreaSize');

int GetMonitorRedGreenOrBlueDrive(
        int hMonitor,
        int dtDriveType,
        Pointer<Uint32> pdwMinimumDrive,
        Pointer<Uint32> pdwCurrentDrive,
        Pointer<Uint32> pdwMaximumDrive) =>
    _GetMonitorRedGreenOrBlueDrive(hMonitor, dtDriveType, pdwMinimumDrive,
        pdwCurrentDrive, pdwMaximumDrive);

late final _GetMonitorRedGreenOrBlueDrive = _dxva2.lookupFunction<
    Int32 Function(
        IntPtr hMonitor,
        Uint32 dtDriveType,
        Pointer<Uint32> pdwMinimumDrive,
        Pointer<Uint32> pdwCurrentDrive,
        Pointer<Uint32> pdwMaximumDrive),
    int Function(
        int hMonitor,
        int dtDriveType,
        Pointer<Uint32> pdwMinimumDrive,
        Pointer<Uint32> pdwCurrentDrive,
        Pointer<Uint32> pdwMaximumDrive)>('GetMonitorRedGreenOrBlueDrive');

int GetMonitorRedGreenOrBlueGain(
        int hMonitor,
        int gtGainType,
        Pointer<Uint32> pdwMinimumGain,
        Pointer<Uint32> pdwCurrentGain,
        Pointer<Uint32> pdwMaximumGain) =>
    _GetMonitorRedGreenOrBlueGain(
        hMonitor, gtGainType, pdwMinimumGain, pdwCurrentGain, pdwMaximumGain);

late final _GetMonitorRedGreenOrBlueGain = _dxva2.lookupFunction<
    Int32 Function(
        IntPtr hMonitor,
        Uint32 gtGainType,
        Pointer<Uint32> pdwMinimumGain,
        Pointer<Uint32> pdwCurrentGain,
        Pointer<Uint32> pdwMaximumGain),
    int Function(
        int hMonitor,
        int gtGainType,
        Pointer<Uint32> pdwMinimumGain,
        Pointer<Uint32> pdwCurrentGain,
        Pointer<Uint32> pdwMaximumGain)>('GetMonitorRedGreenOrBlueGain');

int GetMonitorTechnologyType(
        int hMonitor, Pointer<Uint32> pdtyDisplayTechnologyType) =>
    _GetMonitorTechnologyType(hMonitor, pdtyDisplayTechnologyType);

late final _GetMonitorTechnologyType = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Pointer<Uint32> pdtyDisplayTechnologyType),
    int Function(int hMonitor,
        Pointer<Uint32> pdtyDisplayTechnologyType)>('GetMonitorTechnologyType');

int GetNumberOfPhysicalMonitorsFromHMONITOR(
        int hMonitor, Pointer<Uint32> pdwNumberOfPhysicalMonitors) =>
    _GetNumberOfPhysicalMonitorsFromHMONITOR(
        hMonitor, pdwNumberOfPhysicalMonitors);

late final _GetNumberOfPhysicalMonitorsFromHMONITOR = _dxva2.lookupFunction<
        Int32 Function(
            IntPtr hMonitor, Pointer<Uint32> pdwNumberOfPhysicalMonitors),
        int Function(
            int hMonitor, Pointer<Uint32> pdwNumberOfPhysicalMonitors)>(
    'GetNumberOfPhysicalMonitorsFromHMONITOR');

int GetNumberOfPhysicalMonitorsFromIDirect3DDevice9(COMObject pDirect3DDevice9,
        Pointer<Uint32> pdwNumberOfPhysicalMonitors) =>
    _GetNumberOfPhysicalMonitorsFromIDirect3DDevice9(
        pDirect3DDevice9, pdwNumberOfPhysicalMonitors);

late final _GetNumberOfPhysicalMonitorsFromIDirect3DDevice9 =
    _dxva2.lookupFunction<
            Int32 Function(COMObject pDirect3DDevice9,
                Pointer<Uint32> pdwNumberOfPhysicalMonitors),
            int Function(COMObject pDirect3DDevice9,
                Pointer<Uint32> pdwNumberOfPhysicalMonitors)>(
        'GetNumberOfPhysicalMonitorsFromIDirect3DDevice9');

int GetPhysicalMonitorsFromHMONITOR(
        int hMonitor,
        int dwPhysicalMonitorArraySize,
        Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray) =>
    _GetPhysicalMonitorsFromHMONITOR(
        hMonitor, dwPhysicalMonitorArraySize, pPhysicalMonitorArray);

late final _GetPhysicalMonitorsFromHMONITOR = _dxva2.lookupFunction<
        Int32 Function(IntPtr hMonitor, Uint32 dwPhysicalMonitorArraySize,
            Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray),
        int Function(int hMonitor, int dwPhysicalMonitorArraySize,
            Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray)>(
    'GetPhysicalMonitorsFromHMONITOR');

int GetPhysicalMonitorsFromIDirect3DDevice9(
        COMObject pDirect3DDevice9,
        int dwPhysicalMonitorArraySize,
        Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray) =>
    _GetPhysicalMonitorsFromIDirect3DDevice9(
        pDirect3DDevice9, dwPhysicalMonitorArraySize, pPhysicalMonitorArray);

late final _GetPhysicalMonitorsFromIDirect3DDevice9 = _dxva2.lookupFunction<
        Int32 Function(
            COMObject pDirect3DDevice9,
            Uint32 dwPhysicalMonitorArraySize,
            Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray),
        int Function(COMObject pDirect3DDevice9, int dwPhysicalMonitorArraySize,
            Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray)>(
    'GetPhysicalMonitorsFromIDirect3DDevice9');

int GetTimingReport(
        int hMonitor, Pointer<MC_TIMING_REPORT> pmtrMonitorTimingReport) =>
    _GetTimingReport(hMonitor, pmtrMonitorTimingReport);

late final _GetTimingReport = _dxva2.lookupFunction<
    Int32 Function(
        IntPtr hMonitor, Pointer<MC_TIMING_REPORT> pmtrMonitorTimingReport),
    int Function(int hMonitor,
        Pointer<MC_TIMING_REPORT> pmtrMonitorTimingReport)>('GetTimingReport');

int GetVCPFeatureAndVCPFeatureReply(
        int hMonitor,
        int bVCPCode,
        Pointer<Uint32> pvct,
        Pointer<Uint32> pdwCurrentValue,
        Pointer<Uint32> pdwMaximumValue) =>
    _GetVCPFeatureAndVCPFeatureReply(
        hMonitor, bVCPCode, pvct, pdwCurrentValue, pdwMaximumValue);

late final _GetVCPFeatureAndVCPFeatureReply = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Uint8 bVCPCode, Pointer<Uint32> pvct,
        Pointer<Uint32> pdwCurrentValue, Pointer<Uint32> pdwMaximumValue),
    int Function(
        int hMonitor,
        int bVCPCode,
        Pointer<Uint32> pvct,
        Pointer<Uint32> pdwCurrentValue,
        Pointer<Uint32> pdwMaximumValue)>('GetVCPFeatureAndVCPFeatureReply');

int RestoreMonitorFactoryColorDefaults(int hMonitor) =>
    _RestoreMonitorFactoryColorDefaults(hMonitor);

late final _RestoreMonitorFactoryColorDefaults = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor),
    int Function(int hMonitor)>('RestoreMonitorFactoryColorDefaults');

int RestoreMonitorFactoryDefaults(int hMonitor) =>
    _RestoreMonitorFactoryDefaults(hMonitor);

late final _RestoreMonitorFactoryDefaults = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor),
    int Function(int hMonitor)>('RestoreMonitorFactoryDefaults');

int SaveCurrentMonitorSettings(int hMonitor) =>
    _SaveCurrentMonitorSettings(hMonitor);

late final _SaveCurrentMonitorSettings = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor),
    int Function(int hMonitor)>('SaveCurrentMonitorSettings');

int SaveCurrentSettings(int hMonitor) => _SaveCurrentSettings(hMonitor);

late final _SaveCurrentSettings = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor),
    int Function(int hMonitor)>('SaveCurrentSettings');

int SetMonitorBrightness(int hMonitor, int dwNewBrightness) =>
    _SetMonitorBrightness(hMonitor, dwNewBrightness);

late final _SetMonitorBrightness = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Uint32 dwNewBrightness),
    int Function(int hMonitor, int dwNewBrightness)>('SetMonitorBrightness');

int SetMonitorColorTemperature(int hMonitor, int ctCurrentColorTemperature) =>
    _SetMonitorColorTemperature(hMonitor, ctCurrentColorTemperature);

late final _SetMonitorColorTemperature = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Uint32 ctCurrentColorTemperature),
    int Function(int hMonitor,
        int ctCurrentColorTemperature)>('SetMonitorColorTemperature');

int SetMonitorContrast(int hMonitor, int dwNewContrast) =>
    _SetMonitorContrast(hMonitor, dwNewContrast);

late final _SetMonitorContrast = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Uint32 dwNewContrast),
    int Function(int hMonitor, int dwNewContrast)>('SetMonitorContrast');

int SetMonitorDisplayAreaPosition(
        int hMonitor, int ptPositionType, int dwNewPosition) =>
    _SetMonitorDisplayAreaPosition(hMonitor, ptPositionType, dwNewPosition);

late final _SetMonitorDisplayAreaPosition = _dxva2.lookupFunction<
    Int32 Function(
        IntPtr hMonitor, Uint32 ptPositionType, Uint32 dwNewPosition),
    int Function(int hMonitor, int ptPositionType,
        int dwNewPosition)>('SetMonitorDisplayAreaPosition');

int SetMonitorDisplayAreaSize(
        int hMonitor, int stSizeType, int dwNewDisplayAreaWidthOrHeight) =>
    _SetMonitorDisplayAreaSize(
        hMonitor, stSizeType, dwNewDisplayAreaWidthOrHeight);

late final _SetMonitorDisplayAreaSize = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Uint32 stSizeType,
        Uint32 dwNewDisplayAreaWidthOrHeight),
    int Function(int hMonitor, int stSizeType,
        int dwNewDisplayAreaWidthOrHeight)>('SetMonitorDisplayAreaSize');

int SetMonitorRedGreenOrBlueDrive(
        int hMonitor, int dtDriveType, int dwNewDrive) =>
    _SetMonitorRedGreenOrBlueDrive(hMonitor, dtDriveType, dwNewDrive);

late final _SetMonitorRedGreenOrBlueDrive = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Uint32 dtDriveType, Uint32 dwNewDrive),
    int Function(int hMonitor, int dtDriveType,
        int dwNewDrive)>('SetMonitorRedGreenOrBlueDrive');

int SetMonitorRedGreenOrBlueGain(int hMonitor, int gtGainType, int dwNewGain) =>
    _SetMonitorRedGreenOrBlueGain(hMonitor, gtGainType, dwNewGain);

late final _SetMonitorRedGreenOrBlueGain = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Uint32 gtGainType, Uint32 dwNewGain),
    int Function(int hMonitor, int gtGainType,
        int dwNewGain)>('SetMonitorRedGreenOrBlueGain');

int SetVCPFeature(int hMonitor, int bVCPCode, int dwNewValue) =>
    _SetVCPFeature(hMonitor, bVCPCode, dwNewValue);

late final _SetVCPFeature = _dxva2.lookupFunction<
    Int32 Function(IntPtr hMonitor, Uint8 bVCPCode, Uint32 dwNewValue),
    int Function(int hMonitor, int bVCPCode, int dwNewValue)>('SetVCPFeature');

// -----------------------------------------------------------------------
// USER32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('USER32.dll');

int GetAutoRotationState(Pointer<Uint32> pState) =>
    _GetAutoRotationState(pState);

late final _GetAutoRotationState = _user32.lookupFunction<
    Int32 Function(Pointer<Uint32> pState),
    int Function(Pointer<Uint32> pState)>('GetAutoRotationState');

int GetDisplayAutoRotationPreferences(Pointer<Uint32> pOrientation) =>
    _GetDisplayAutoRotationPreferences(pOrientation);

late final _GetDisplayAutoRotationPreferences = _user32.lookupFunction<
    Int32 Function(Pointer<Uint32> pOrientation),
    int Function(
        Pointer<Uint32> pOrientation)>('GetDisplayAutoRotationPreferences');

int SetDisplayAutoRotationPreferences(int orientation) =>
    _SetDisplayAutoRotationPreferences(orientation);

late final _SetDisplayAutoRotationPreferences = _user32.lookupFunction<
    Int32 Function(Uint32 orientation),
    int Function(int orientation)>('SetDisplayAutoRotationPreferences');
