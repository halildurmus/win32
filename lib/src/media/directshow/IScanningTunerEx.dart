// IScanningTunerEx.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../media/directshow/IScanningTuner.dart';
import '../../media/directshow/ILocator.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IScanningTunerEx = '{04BBD195-0E2D-4593-9BD5-4F908BC33CF5}';

/// {@category Interface}
/// {@category com}
class IScanningTunerEx extends IScanningTuner {
  // vtable begins at 18, is 8 entries long.
  IScanningTunerEx(Pointer<COMObject> ptr) : super(ptr);

  int GetCurrentLocator(
    Pointer<Pointer<COMObject>> pILocator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pILocator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pILocator,
          )>()(
        ptr.ref.lpVtbl,
        pILocator,
      );

  int PerformExhaustiveScan(
    int dwLowerFreq,
    int dwHigherFreq,
    int bFineTune,
    int hEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwLowerFreq,
            Int32 dwHigherFreq,
            Int16 bFineTune,
            IntPtr hEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwLowerFreq,
            int dwHigherFreq,
            int bFineTune,
            int hEvent,
          )>()(
        ptr.ref.lpVtbl,
        dwLowerFreq,
        dwHigherFreq,
        bFineTune,
        hEvent,
      );

  int TerminateCurrentScan(
    Pointer<Int32> pcurrentFreq,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pcurrentFreq,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pcurrentFreq,
          )>()(
        ptr.ref.lpVtbl,
        pcurrentFreq,
      );

  int ResumeCurrentScan(
    int hEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hEvent,
          )>()(
        ptr.ref.lpVtbl,
        hEvent,
      );

  int GetTunerScanningCapability(
    Pointer<Int32> HardwareAssistedScanning,
    Pointer<Int32> NumStandardsSupported,
    Pointer<GUID> BroadcastStandards,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> HardwareAssistedScanning,
            Pointer<Int32> NumStandardsSupported,
            Pointer<GUID> BroadcastStandards,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> HardwareAssistedScanning,
            Pointer<Int32> NumStandardsSupported,
            Pointer<GUID> BroadcastStandards,
          )>()(
        ptr.ref.lpVtbl,
        HardwareAssistedScanning,
        NumStandardsSupported,
        BroadcastStandards,
      );

  int GetTunerStatus(
    Pointer<Int32> SecondsLeft,
    Pointer<Int32> CurrentLockType,
    Pointer<Int32> AutoDetect,
    Pointer<Int32> CurrentFreq,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> SecondsLeft,
            Pointer<Int32> CurrentLockType,
            Pointer<Int32> AutoDetect,
            Pointer<Int32> CurrentFreq,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> SecondsLeft,
            Pointer<Int32> CurrentLockType,
            Pointer<Int32> AutoDetect,
            Pointer<Int32> CurrentFreq,
          )>()(
        ptr.ref.lpVtbl,
        SecondsLeft,
        CurrentLockType,
        AutoDetect,
        CurrentFreq,
      );

  int GetCurrentTunerStandardCapability(
    GUID CurrentBroadcastStandard,
    Pointer<Int32> SettlingTime,
    Pointer<Int32> TvStandardsSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID CurrentBroadcastStandard,
            Pointer<Int32> SettlingTime,
            Pointer<Int32> TvStandardsSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID CurrentBroadcastStandard,
            Pointer<Int32> SettlingTime,
            Pointer<Int32> TvStandardsSupported,
          )>()(
        ptr.ref.lpVtbl,
        CurrentBroadcastStandard,
        SettlingTime,
        TvStandardsSupported,
      );

  int SetScanSignalTypeFilter(
    int ScanModulationTypes,
    int AnalogVideoStandard,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ScanModulationTypes,
            Int32 AnalogVideoStandard,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ScanModulationTypes,
            int AnalogVideoStandard,
          )>()(
        ptr.ref.lpVtbl,
        ScanModulationTypes,
        AnalogVideoStandard,
      );
}
