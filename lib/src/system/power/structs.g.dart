// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../system/power/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/power/callbacks.g.dart';

/// {@category Struct}
class ACPI_REAL_TIME extends Struct {
  @Uint16()
  external int Year;

  @Uint8()
  external int Month;

  @Uint8()
  external int Day;

  @Uint8()
  external int Hour;

  @Uint8()
  external int Minute;

  @Uint8()
  external int Second;

  @Uint8()
  external int Valid;

  @Uint16()
  external int Milliseconds;

  @Int16()
  external int TimeZone;

  @Uint8()
  external int DayLight;

  @Array(3)
  external Array<Uint8> Reserved1;
}

/// {@category Struct}
class ADMINISTRATOR_POWER_POLICY extends Struct {
  @Int32()
  external int MinSleep;

  @Int32()
  external int MaxSleep;

  @Uint32()
  external int MinVideoTimeout;

  @Uint32()
  external int MaxVideoTimeout;

  @Uint32()
  external int MinSpindownTimeout;

  @Uint32()
  external int MaxSpindownTimeout;
}

/// {@category Struct}
class BATTERY_CHARGER_STATUS extends Struct {
  @Int32()
  external int Type;

  @Array(1)
  external Array<Uint32> VaData;
}

/// {@category Struct}
class BATTERY_CHARGING_SOURCE extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int MaxCurrent;
}

/// {@category Struct}
class BATTERY_CHARGING_SOURCE_INFORMATION extends Struct {
  @Int32()
  external int Type;

  @Uint8()
  external int SourceOnline;
}

/// {@category Struct}
class BATTERY_INFORMATION extends Struct {
  @Uint32()
  external int Capabilities;

  @Uint8()
  external int Technology;

  @Array(3)
  external Array<Uint8> Reserved;

  @Array(4)
  external Array<Uint8> Chemistry;

  @Uint32()
  external int DesignedCapacity;

  @Uint32()
  external int FullChargedCapacity;

  @Uint32()
  external int DefaultAlert1;

  @Uint32()
  external int DefaultAlert2;

  @Uint32()
  external int CriticalBias;

  @Uint32()
  external int CycleCount;
}

/// {@category Struct}
class BATTERY_MANUFACTURE_DATE extends Struct {
  @Uint8()
  external int Day;

  @Uint8()
  external int Month;

  @Uint16()
  external int Year;
}

/// {@category Struct}
class BATTERY_QUERY_INFORMATION extends Struct {
  @Uint32()
  external int BatteryTag;

  @Int32()
  external int InformationLevel;

  @Uint32()
  external int AtRate;
}

/// {@category Struct}
class BATTERY_REPORTING_SCALE extends Struct {
  @Uint32()
  external int Granularity;

  @Uint32()
  external int Capacity;
}

/// {@category Struct}
class BATTERY_SET_INFORMATION extends Struct {
  @Uint32()
  external int BatteryTag;

  @Int32()
  external int InformationLevel;

  @Array(1)
  external Array<Uint8> Buffer;
}

/// {@category Struct}
class BATTERY_STATUS extends Struct {
  @Uint32()
  external int PowerState;

  @Uint32()
  external int Capacity;

  @Uint32()
  external int Voltage;

  @Int32()
  external int Rate;
}

/// {@category Struct}
class BATTERY_USB_CHARGER_STATUS extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Reserved;

  @Uint32()
  external int Flags;

  @Uint32()
  external int MaxCurrent;

  @Uint32()
  external int Voltage;

  @Int32()
  external int PortType;

  @Uint64()
  external int PortId;

  external Pointer PowerSourceInformation;

  external GUID OemCharger;
}

/// {@category Struct}
class BATTERY_WAIT_STATUS extends Struct {
  @Uint32()
  external int BatteryTag;

  @Uint32()
  external int Timeout;

  @Uint32()
  external int PowerState;

  @Uint32()
  external int LowCapacity;

  @Uint32()
  external int HighCapacity;
}

/// {@category Struct}
class CM_POWER_DATA extends Struct {
  @Uint32()
  external int PD_Size;

  @Int32()
  external int PD_MostRecentPowerState;

  @Uint32()
  external int PD_Capabilities;

  @Uint32()
  external int PD_D1Latency;

  @Uint32()
  external int PD_D2Latency;

  @Uint32()
  external int PD_D3Latency;

  @Array(7)
  external Array<Int32> PD_PowerStateMapping;

  @Int32()
  external int PD_DeepestSystemWake;
}

/// {@category Struct}
class DEVICE_NOTIFY_SUBSCRIBE_PARAMETERS extends Struct {
  external Pointer<NativeFunction<PDEVICE_NOTIFY_CALLBACK_ROUTINE>> Callback;

  external Pointer Context;
}

/// {@category Struct}
class EMI_CHANNEL_MEASUREMENT_DATA extends Struct {
  @Uint64()
  external int AbsoluteEnergy;

  @Uint64()
  external int AbsoluteTime;
}

/// {@category Struct}
class EMI_CHANNEL_V2 extends Struct {
  @Int32()
  external int MeasurementUnit;

  @Uint16()
  external int ChannelNameSize;

  @Array(1)
  external Array<Uint16> _ChannelName;

  String get ChannelName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_ChannelName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ChannelName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _ChannelName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class EMI_MEASUREMENT_DATA_V2 extends Struct {
  @Array(1)
  external Array<EMI_CHANNEL_MEASUREMENT_DATA> ChannelData;
}

/// {@category Struct}
class EMI_METADATA_SIZE extends Struct {
  @Uint32()
  external int MetadataSize;
}

/// {@category Struct}
class EMI_METADATA_V1 extends Struct {
  @Int32()
  external int MeasurementUnit;

  @Array(16)
  external Array<Uint16> _HardwareOEM;

  String get HardwareOEM {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_HardwareOEM[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set HardwareOEM(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _HardwareOEM[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(16)
  external Array<Uint16> _HardwareModel;

  String get HardwareModel {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_HardwareModel[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set HardwareModel(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _HardwareModel[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int HardwareRevision;

  @Uint16()
  external int MeteredHardwareNameSize;

  @Array(1)
  external Array<Uint16> _MeteredHardwareName;

  String get MeteredHardwareName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_MeteredHardwareName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set MeteredHardwareName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _MeteredHardwareName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class EMI_METADATA_V2 extends Struct {
  @Array(16)
  external Array<Uint16> _HardwareOEM;

  String get HardwareOEM {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_HardwareOEM[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set HardwareOEM(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _HardwareOEM[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(16)
  external Array<Uint16> _HardwareModel;

  String get HardwareModel {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_HardwareModel[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set HardwareModel(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _HardwareModel[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int HardwareRevision;

  @Uint16()
  external int ChannelCount;

  @Array(1)
  external Array<EMI_CHANNEL_V2> Channels;
}

/// {@category Struct}
class EMI_VERSION extends Struct {
  @Uint16()
  external int EmiVersion;
}

/// {@category Struct}
class GLOBAL_MACHINE_POWER_POLICY extends Struct {
  @Uint32()
  external int Revision;

  @Int32()
  external int LidOpenWakeAc;

  @Int32()
  external int LidOpenWakeDc;

  @Uint32()
  external int BroadcastCapacityResolution;
}

/// {@category Struct}
class GLOBAL_POWER_POLICY extends Struct {
  external GLOBAL_USER_POWER_POLICY user;

  external GLOBAL_MACHINE_POWER_POLICY mach;
}

/// {@category Struct}
class GLOBAL_USER_POWER_POLICY extends Struct {
  @Uint32()
  external int Revision;

  external POWER_ACTION_POLICY PowerButtonAc;

  external POWER_ACTION_POLICY PowerButtonDc;

  external POWER_ACTION_POLICY SleepButtonAc;

  external POWER_ACTION_POLICY SleepButtonDc;

  external POWER_ACTION_POLICY LidCloseAc;

  external POWER_ACTION_POLICY LidCloseDc;

  @Array(4)
  external Array<SYSTEM_POWER_LEVEL> DischargePolicy;

  @Uint32()
  external int GlobalFlags;
}

/// {@category Struct}
class MACHINE_POWER_POLICY extends Struct {
  @Uint32()
  external int Revision;

  @Int32()
  external int MinSleepAc;

  @Int32()
  external int MinSleepDc;

  @Int32()
  external int ReducedLatencySleepAc;

  @Int32()
  external int ReducedLatencySleepDc;

  @Uint32()
  external int DozeTimeoutAc;

  @Uint32()
  external int DozeTimeoutDc;

  @Uint32()
  external int DozeS4TimeoutAc;

  @Uint32()
  external int DozeS4TimeoutDc;

  @Uint8()
  external int MinThrottleAc;

  @Uint8()
  external int MinThrottleDc;

  @Array(2)
  external Array<Uint8> pad1;

  external POWER_ACTION_POLICY OverThrottledAc;

  external POWER_ACTION_POLICY OverThrottledDc;
}

/// {@category Struct}
class MACHINE_PROCESSOR_POWER_POLICY extends Struct {
  @Uint32()
  external int Revision;

  external PROCESSOR_POWER_POLICY ProcessorPolicyAc;

  external PROCESSOR_POWER_POLICY ProcessorPolicyDc;
}

/// {@category Struct}
class POWERBROADCAST_SETTING extends Struct {
  external GUID PowerSetting;

  @Uint32()
  external int DataLength;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class POWER_ACTION_POLICY extends Struct {
  @Int32()
  external int Action;

  @Uint32()
  external int Flags;

  @Uint32()
  external int EventCode;
}

/// {@category Struct}
class POWER_POLICY extends Struct {
  external USER_POWER_POLICY user;

  external MACHINE_POWER_POLICY mach;
}

/// {@category Struct}
class PROCESSOR_OBJECT_INFO extends Struct {
  @Uint32()
  external int PhysicalID;

  @Uint32()
  external int PBlkAddress;

  @Uint8()
  external int PBlkLength;
}

/// {@category Struct}
class PROCESSOR_OBJECT_INFO_EX extends Struct {
  @Uint32()
  external int PhysicalID;

  @Uint32()
  external int PBlkAddress;

  @Uint8()
  external int PBlkLength;

  @Uint32()
  external int InitialApicId;
}

/// {@category Struct}
class PROCESSOR_POWER_POLICY extends Struct {
  @Uint32()
  external int Revision;

  @Uint8()
  external int DynamicThrottle;

  @Array(3)
  external Array<Uint8> Spare;

  @Uint32()
  external int bitfield;

  @Uint32()
  external int PolicyCount;

  @Array(3)
  external Array<PROCESSOR_POWER_POLICY_INFO> Policy;
}

/// {@category Struct}
class PROCESSOR_POWER_POLICY_INFO extends Struct {
  @Uint32()
  external int TimeCheck;

  @Uint32()
  external int DemoteLimit;

  @Uint32()
  external int PromoteLimit;

  @Uint8()
  external int DemotePercent;

  @Uint8()
  external int PromotePercent;

  @Array(2)
  external Array<Uint8> Spare;

  @Uint32()
  external int bitfield;
}

/// {@category Struct}
class SET_POWER_SETTING_VALUE extends Struct {
  @Uint32()
  external int Version;

  external GUID Guid;

  @Int32()
  external int PowerCondition;

  @Uint32()
  external int DataLength;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class SYSTEM_BATTERY_STATE extends Struct {
  @Uint8()
  external int AcOnLine;

  @Uint8()
  external int BatteryPresent;

  @Uint8()
  external int Charging;

  @Uint8()
  external int Discharging;

  @Array(3)
  external Array<Uint8> Spare1;

  @Uint8()
  external int Tag;

  @Uint32()
  external int MaxCapacity;

  @Uint32()
  external int RemainingCapacity;

  @Uint32()
  external int Rate;

  @Uint32()
  external int EstimatedTime;

  @Uint32()
  external int DefaultAlert1;

  @Uint32()
  external int DefaultAlert2;
}

/// {@category Struct}
class SYSTEM_POWER_CAPABILITIES extends Struct {
  @Uint8()
  external int PowerButtonPresent;

  @Uint8()
  external int SleepButtonPresent;

  @Uint8()
  external int LidPresent;

  @Uint8()
  external int SystemS1;

  @Uint8()
  external int SystemS2;

  @Uint8()
  external int SystemS3;

  @Uint8()
  external int SystemS4;

  @Uint8()
  external int SystemS5;

  @Uint8()
  external int HiberFilePresent;

  @Uint8()
  external int FullWake;

  @Uint8()
  external int VideoDimPresent;

  @Uint8()
  external int ApmPresent;

  @Uint8()
  external int UpsPresent;

  @Uint8()
  external int ThermalControl;

  @Uint8()
  external int ProcessorThrottle;

  @Uint8()
  external int ProcessorMinThrottle;

  @Uint8()
  external int ProcessorMaxThrottle;

  @Uint8()
  external int FastSystemS4;

  @Uint8()
  external int Hiberboot;

  @Uint8()
  external int WakeAlarmPresent;

  @Uint8()
  external int AoAc;

  @Uint8()
  external int DiskSpinDown;

  @Uint8()
  external int HiberFileType;

  @Uint8()
  external int AoAcConnectivitySupported;

  @Array(6)
  external Array<Uint8> spare3;

  @Uint8()
  external int SystemBatteriesPresent;

  @Uint8()
  external int BatteriesAreShortTerm;

  @Array(3)
  external Array<BATTERY_REPORTING_SCALE> BatteryScale;

  @Int32()
  external int AcOnLineWake;

  @Int32()
  external int SoftLidWake;

  @Int32()
  external int RtcWake;

  @Int32()
  external int MinDeviceWakeState;

  @Int32()
  external int DefaultLowLatencyWake;
}

/// {@category Struct}
class SYSTEM_POWER_LEVEL extends Struct {
  @Uint8()
  external int Enable;

  @Array(3)
  external Array<Uint8> Spare;

  @Uint32()
  external int BatteryLevel;

  external POWER_ACTION_POLICY PowerPolicy;

  @Int32()
  external int MinSystemState;
}

/// {@category Struct}
class SYSTEM_POWER_POLICY extends Struct {
  @Uint32()
  external int Revision;

  external POWER_ACTION_POLICY PowerButton;

  external POWER_ACTION_POLICY SleepButton;

  external POWER_ACTION_POLICY LidClose;

  @Int32()
  external int LidOpenWake;

  @Uint32()
  external int Reserved;

  external POWER_ACTION_POLICY Idle;

  @Uint32()
  external int IdleTimeout;

  @Uint8()
  external int IdleSensitivity;

  @Uint8()
  external int DynamicThrottle;

  @Array(2)
  external Array<Uint8> Spare2;

  @Int32()
  external int MinSleep;

  @Int32()
  external int MaxSleep;

  @Int32()
  external int ReducedLatencySleep;

  @Uint32()
  external int WinLogonFlags;

  @Uint32()
  external int Spare3;

  @Uint32()
  external int DozeS4Timeout;

  @Uint32()
  external int BroadcastCapacityResolution;

  @Array(4)
  external Array<SYSTEM_POWER_LEVEL> DischargePolicy;

  @Uint32()
  external int VideoTimeout;

  @Uint8()
  external int VideoDimDisplay;

  @Array(3)
  external Array<Uint32> VideoReserved;

  @Uint32()
  external int SpindownTimeout;

  @Uint8()
  external int OptimizeForPower;

  @Uint8()
  external int FanThrottleTolerance;

  @Uint8()
  external int ForcedThrottle;

  @Uint8()
  external int MinThrottle;

  external POWER_ACTION_POLICY OverThrottled;
}

/// {@category Struct}
class SYSTEM_POWER_STATUS extends Struct {
  @Uint8()
  external int ACLineStatus;

  @Uint8()
  external int BatteryFlag;

  @Uint8()
  external int BatteryLifePercent;

  @Uint8()
  external int SystemStatusFlag;

  @Uint32()
  external int BatteryLifeTime;

  @Uint32()
  external int BatteryFullLifeTime;
}

/// {@category Struct}
class THERMAL_EVENT extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int Type;

  @Uint32()
  external int Temperature;

  @Uint32()
  external int TripPointTemperature;

  external Pointer<Utf16> Initiator;
}

/// {@category Struct}
class THERMAL_INFORMATION extends Struct {
  @Uint32()
  external int ThermalStamp;

  @Uint32()
  external int ThermalConstant1;

  @Uint32()
  external int ThermalConstant2;

  @IntPtr()
  external int Processors;

  @Uint32()
  external int SamplingPeriod;

  @Uint32()
  external int CurrentTemperature;

  @Uint32()
  external int PassiveTripPoint;

  @Uint32()
  external int CriticalTripPoint;

  @Uint8()
  external int ActiveTripPointCount;

  @Array(10)
  external Array<Uint32> ActiveTripPoint;
}

/// {@category Struct}
class THERMAL_POLICY extends Struct {
  @Uint32()
  external int Version;

  @Uint8()
  external int WaitForUpdate;

  @Uint8()
  external int Hibernate;

  @Uint8()
  external int Critical;

  @Uint8()
  external int ThermalStandby;

  @Uint32()
  external int ActivationReasons;

  @Uint32()
  external int PassiveLimit;

  @Uint32()
  external int ActiveLevel;

  @Uint8()
  external int OverThrottled;
}

/// {@category Struct}
class THERMAL_WAIT_READ extends Struct {
  @Uint32()
  external int Timeout;

  @Uint32()
  external int LowTemperature;

  @Uint32()
  external int HighTemperature;
}

/// {@category Struct}
class USER_POWER_POLICY extends Struct {
  @Uint32()
  external int Revision;

  external POWER_ACTION_POLICY IdleAc;

  external POWER_ACTION_POLICY IdleDc;

  @Uint32()
  external int IdleTimeoutAc;

  @Uint32()
  external int IdleTimeoutDc;

  @Uint8()
  external int IdleSensitivityAc;

  @Uint8()
  external int IdleSensitivityDc;

  @Uint8()
  external int ThrottlePolicyAc;

  @Uint8()
  external int ThrottlePolicyDc;

  @Int32()
  external int MaxSleepAc;

  @Int32()
  external int MaxSleepDc;

  @Array(2)
  external Array<Uint32> Reserved;

  @Uint32()
  external int VideoTimeoutAc;

  @Uint32()
  external int VideoTimeoutDc;

  @Uint32()
  external int SpindownTimeoutAc;

  @Uint32()
  external int SpindownTimeoutDc;

  @Uint8()
  external int OptimizeForPowerAc;

  @Uint8()
  external int OptimizeForPowerDc;

  @Uint8()
  external int FanThrottleToleranceAc;

  @Uint8()
  external int FanThrottleToleranceDc;

  @Uint8()
  external int ForcedThrottleAc;

  @Uint8()
  external int ForcedThrottleDc;
}

/// {@category Struct}
class WAKE_ALARM_INFORMATION extends Struct {
  @Uint32()
  external int TimerIdentifier;

  @Uint32()
  external int Timeout;
}
