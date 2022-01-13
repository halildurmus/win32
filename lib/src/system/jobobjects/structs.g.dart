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
import '../../foundation/structs.g.dart';
import '../../system/jobobjects/structs.g.dart';
import '../../system/threading/structs.g.dart';
import '../../security/structs.g.dart';

/// {@category Struct}
class JOBOBJECT_ASSOCIATE_COMPLETION_PORT extends Struct {
  external Pointer CompletionKey;

  @IntPtr()
  external int CompletionPort;
}

/// {@category Struct}
class JOBOBJECT_BASIC_ACCOUNTING_INFORMATION extends Struct {
  @Int64()
  external int TotalUserTime;

  @Int64()
  external int TotalKernelTime;

  @Int64()
  external int ThisPeriodTotalUserTime;

  @Int64()
  external int ThisPeriodTotalKernelTime;

  @Uint32()
  external int TotalPageFaultCount;

  @Uint32()
  external int TotalProcesses;

  @Uint32()
  external int ActiveProcesses;

  @Uint32()
  external int TotalTerminatedProcesses;
}

/// {@category Struct}
class JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION extends Struct {
  external JOBOBJECT_BASIC_ACCOUNTING_INFORMATION BasicInfo;

  external IO_COUNTERS IoInfo;
}

/// {@category Struct}
class JOBOBJECT_BASIC_LIMIT_INFORMATION extends Struct {
  @Int64()
  external int PerProcessUserTimeLimit;

  @Int64()
  external int PerJobUserTimeLimit;

  @Uint32()
  external int LimitFlags;

  @IntPtr()
  external int MinimumWorkingSetSize;

  @IntPtr()
  external int MaximumWorkingSetSize;

  @Uint32()
  external int ActiveProcessLimit;

  @IntPtr()
  external int Affinity;

  @Uint32()
  external int PriorityClass;

  @Uint32()
  external int SchedulingClass;
}

/// {@category Struct}
class JOBOBJECT_BASIC_PROCESS_ID_LIST extends Struct {
  @Uint32()
  external int NumberOfAssignedProcesses;

  @Uint32()
  external int NumberOfProcessIdsInList;

  @Array(1)
  external Array<IntPtr> ProcessIdList;
}

/// {@category Struct}
class JOBOBJECT_BASIC_UI_RESTRICTIONS extends Struct {
  @Uint32()
  external int UIRestrictionsClass;
}

/// {@category Struct}
class JOBOBJECT_CPU_RATE_CONTROL_INFORMATION extends Struct {
  @Uint32()
  external int ControlFlags;

  external _JOBOBJECT_CPU_RATE_CONTROL_INFORMATION__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _JOBOBJECT_CPU_RATE_CONTROL_INFORMATION__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int CpuRate;

  @Uint32()
  external int Weight;

  external _JOBOBJECT_CPU_RATE_CONTROL_INFORMATION__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _JOBOBJECT_CPU_RATE_CONTROL_INFORMATION__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int MinRate;

  @Uint16()
  external int MaxRate;
}

extension JOBOBJECT_CPU_RATE_CONTROL_INFORMATION__Anonymous_e__Union_Extension
    on JOBOBJECT_CPU_RATE_CONTROL_INFORMATION {
  int get MinRate => this.Anonymous.Anonymous.MinRate;
  set MinRate(int value) => this.Anonymous.Anonymous.MinRate = value;

  int get MaxRate => this.Anonymous.Anonymous.MaxRate;
  set MaxRate(int value) => this.Anonymous.Anonymous.MaxRate = value;
}

extension JOBOBJECT_CPU_RATE_CONTROL_INFORMATION_Extension
    on JOBOBJECT_CPU_RATE_CONTROL_INFORMATION {
  int get CpuRate => this.Anonymous.CpuRate;
  set CpuRate(int value) => this.Anonymous.CpuRate = value;

  int get Weight => this.Anonymous.Weight;
  set Weight(int value) => this.Anonymous.Weight = value;

  _JOBOBJECT_CPU_RATE_CONTROL_INFORMATION__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _JOBOBJECT_CPU_RATE_CONTROL_INFORMATION__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class JOBOBJECT_END_OF_JOB_TIME_INFORMATION extends Struct {
  @Uint32()
  external int EndOfJobTimeAction;
}

/// {@category Struct}
class JOBOBJECT_EXTENDED_LIMIT_INFORMATION extends Struct {
  external JOBOBJECT_BASIC_LIMIT_INFORMATION BasicLimitInformation;

  external IO_COUNTERS IoInfo;

  @IntPtr()
  external int ProcessMemoryLimit;

  @IntPtr()
  external int JobMemoryLimit;

  @IntPtr()
  external int PeakProcessMemoryUsed;

  @IntPtr()
  external int PeakJobMemoryUsed;
}

/// {@category Struct}
class JOBOBJECT_IO_ATTRIBUTION_INFORMATION extends Struct {
  @Uint32()
  external int ControlFlags;

  external JOBOBJECT_IO_ATTRIBUTION_STATS ReadStats;

  external JOBOBJECT_IO_ATTRIBUTION_STATS WriteStats;
}

/// {@category Struct}
class JOBOBJECT_IO_ATTRIBUTION_STATS extends Struct {
  @IntPtr()
  external int IoCount;

  @Uint64()
  external int TotalNonOverlappedQueueTime;

  @Uint64()
  external int TotalNonOverlappedServiceTime;

  @Uint64()
  external int TotalSize;
}

/// {@category Struct}
class JOBOBJECT_IO_RATE_CONTROL_INFORMATION extends Struct {
  @Int64()
  external int MaxIops;

  @Int64()
  external int MaxBandwidth;

  @Int64()
  external int ReservationIops;

  external Pointer<Utf16> VolumeName;

  @Uint32()
  external int BaseIoSize;

  @Int32()
  external int ControlFlags;
}

/// {@category Struct}
class JOBOBJECT_IO_RATE_CONTROL_INFORMATION_NATIVE extends Struct {
  @Int64()
  external int MaxIops;

  @Int64()
  external int MaxBandwidth;

  @Int64()
  external int ReservationIops;

  external Pointer<Utf16> VolumeName;

  @Uint32()
  external int BaseIoSize;

  @Int32()
  external int ControlFlags;

  @Uint16()
  external int VolumeNameLength;
}

/// {@category Struct}
class JOBOBJECT_IO_RATE_CONTROL_INFORMATION_NATIVE_V2 extends Struct {
  @Int64()
  external int MaxIops;

  @Int64()
  external int MaxBandwidth;

  @Int64()
  external int ReservationIops;

  external Pointer<Utf16> VolumeName;

  @Uint32()
  external int BaseIoSize;

  @Int32()
  external int ControlFlags;

  @Uint16()
  external int VolumeNameLength;

  @Int64()
  external int CriticalReservationIops;

  @Int64()
  external int ReservationBandwidth;

  @Int64()
  external int CriticalReservationBandwidth;

  @Int64()
  external int MaxTimePercent;

  @Int64()
  external int ReservationTimePercent;

  @Int64()
  external int CriticalReservationTimePercent;
}

/// {@category Struct}
class JOBOBJECT_IO_RATE_CONTROL_INFORMATION_NATIVE_V3 extends Struct {
  @Int64()
  external int MaxIops;

  @Int64()
  external int MaxBandwidth;

  @Int64()
  external int ReservationIops;

  external Pointer<Utf16> VolumeName;

  @Uint32()
  external int BaseIoSize;

  @Int32()
  external int ControlFlags;

  @Uint16()
  external int VolumeNameLength;

  @Int64()
  external int CriticalReservationIops;

  @Int64()
  external int ReservationBandwidth;

  @Int64()
  external int CriticalReservationBandwidth;

  @Int64()
  external int MaxTimePercent;

  @Int64()
  external int ReservationTimePercent;

  @Int64()
  external int CriticalReservationTimePercent;

  @Int64()
  external int SoftMaxIops;

  @Int64()
  external int SoftMaxBandwidth;

  @Int64()
  external int SoftMaxTimePercent;

  @Int64()
  external int LimitExcessNotifyIops;

  @Int64()
  external int LimitExcessNotifyBandwidth;

  @Int64()
  external int LimitExcessNotifyTimePercent;
}

/// {@category Struct}
class JOBOBJECT_JOBSET_INFORMATION extends Struct {
  @Uint32()
  external int MemberLevel;
}

/// {@category Struct}
class JOBOBJECT_LIMIT_VIOLATION_INFORMATION extends Struct {
  @Uint32()
  external int LimitFlags;

  @Uint32()
  external int ViolationLimitFlags;

  @Uint64()
  external int IoReadBytes;

  @Uint64()
  external int IoReadBytesLimit;

  @Uint64()
  external int IoWriteBytes;

  @Uint64()
  external int IoWriteBytesLimit;

  @Int64()
  external int PerJobUserTime;

  @Int64()
  external int PerJobUserTimeLimit;

  @Uint64()
  external int JobMemory;

  @Uint64()
  external int JobMemoryLimit;

  @Int32()
  external int RateControlTolerance;

  @Int32()
  external int RateControlToleranceLimit;
}

/// {@category Struct}
class JOBOBJECT_LIMIT_VIOLATION_INFORMATION_2 extends Struct {
  @Uint32()
  external int LimitFlags;

  @Uint32()
  external int ViolationLimitFlags;

  @Uint64()
  external int IoReadBytes;

  @Uint64()
  external int IoReadBytesLimit;

  @Uint64()
  external int IoWriteBytes;

  @Uint64()
  external int IoWriteBytesLimit;

  @Int64()
  external int PerJobUserTime;

  @Int64()
  external int PerJobUserTimeLimit;

  @Uint64()
  external int JobMemory;

  external _JOBOBJECT_LIMIT_VIOLATION_INFORMATION_2__Anonymous1_e__Union
      Anonymous1;

  external _JOBOBJECT_LIMIT_VIOLATION_INFORMATION_2__Anonymous2_e__Union
      Anonymous2;

  external _JOBOBJECT_LIMIT_VIOLATION_INFORMATION_2__Anonymous3_e__Union
      Anonymous3;

  @Uint64()
  external int JobLowMemoryLimit;

  @Int32()
  external int IoRateControlTolerance;

  @Int32()
  external int IoRateControlToleranceLimit;

  @Int32()
  external int NetRateControlTolerance;

  @Int32()
  external int NetRateControlToleranceLimit;
}

/// {@category Struct}
class _JOBOBJECT_LIMIT_VIOLATION_INFORMATION_2__Anonymous1_e__Union
    extends Union {
  @Uint64()
  external int JobHighMemoryLimit;

  @Uint64()
  external int JobMemoryLimit;
}

extension JOBOBJECT_LIMIT_VIOLATION_INFORMATION_2_Extension
    on JOBOBJECT_LIMIT_VIOLATION_INFORMATION_2 {
  int get JobHighMemoryLimit => this.Anonymous1.JobHighMemoryLimit;
  set JobHighMemoryLimit(int value) =>
      this.Anonymous1.JobHighMemoryLimit = value;

  int get JobMemoryLimit => this.Anonymous1.JobMemoryLimit;
  set JobMemoryLimit(int value) => this.Anonymous1.JobMemoryLimit = value;
}

/// {@category Struct}
class _JOBOBJECT_LIMIT_VIOLATION_INFORMATION_2__Anonymous2_e__Union
    extends Union {
  @Int32()
  external int RateControlTolerance;

  @Int32()
  external int CpuRateControlTolerance;
}

extension JOBOBJECT_LIMIT_VIOLATION_INFORMATION_2_Extension_1
    on JOBOBJECT_LIMIT_VIOLATION_INFORMATION_2 {
  int get RateControlTolerance => this.Anonymous2.RateControlTolerance;
  set RateControlTolerance(int value) =>
      this.Anonymous2.RateControlTolerance = value;

  int get CpuRateControlTolerance => this.Anonymous2.CpuRateControlTolerance;
  set CpuRateControlTolerance(int value) =>
      this.Anonymous2.CpuRateControlTolerance = value;
}

/// {@category Struct}
class _JOBOBJECT_LIMIT_VIOLATION_INFORMATION_2__Anonymous3_e__Union
    extends Union {
  @Int32()
  external int RateControlToleranceLimit;

  @Int32()
  external int CpuRateControlToleranceLimit;
}

extension JOBOBJECT_LIMIT_VIOLATION_INFORMATION_2_Extension_2
    on JOBOBJECT_LIMIT_VIOLATION_INFORMATION_2 {
  int get RateControlToleranceLimit =>
      this.Anonymous3.RateControlToleranceLimit;
  set RateControlToleranceLimit(int value) =>
      this.Anonymous3.RateControlToleranceLimit = value;

  int get CpuRateControlToleranceLimit =>
      this.Anonymous3.CpuRateControlToleranceLimit;
  set CpuRateControlToleranceLimit(int value) =>
      this.Anonymous3.CpuRateControlToleranceLimit = value;
}

/// {@category Struct}
class JOBOBJECT_NET_RATE_CONTROL_INFORMATION extends Struct {
  @Uint64()
  external int MaxBandwidth;

  @Int32()
  external int ControlFlags;

  @Uint8()
  external int DscpTag;
}

/// {@category Struct}
class JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION extends Struct {
  @Uint64()
  external int IoReadBytesLimit;

  @Uint64()
  external int IoWriteBytesLimit;

  @Int64()
  external int PerJobUserTimeLimit;

  @Uint64()
  external int JobMemoryLimit;

  @Int32()
  external int RateControlTolerance;

  @Int32()
  external int RateControlToleranceInterval;

  @Uint32()
  external int LimitFlags;
}

/// {@category Struct}
class JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION_2 extends Struct {
  @Uint64()
  external int IoReadBytesLimit;

  @Uint64()
  external int IoWriteBytesLimit;

  @Int64()
  external int PerJobUserTimeLimit;

  external _JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION_2__Anonymous1_e__Union
      Anonymous1;

  external _JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION_2__Anonymous2_e__Union
      Anonymous2;

  external _JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION_2__Anonymous3_e__Union
      Anonymous3;

  @Uint32()
  external int LimitFlags;

  @Int32()
  external int IoRateControlTolerance;

  @Uint64()
  external int JobLowMemoryLimit;

  @Int32()
  external int IoRateControlToleranceInterval;

  @Int32()
  external int NetRateControlTolerance;

  @Int32()
  external int NetRateControlToleranceInterval;
}

/// {@category Struct}
class _JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION_2__Anonymous1_e__Union
    extends Union {
  @Uint64()
  external int JobHighMemoryLimit;

  @Uint64()
  external int JobMemoryLimit;
}

extension JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION_2_Extension
    on JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION_2 {
  int get JobHighMemoryLimit => this.Anonymous1.JobHighMemoryLimit;
  set JobHighMemoryLimit(int value) =>
      this.Anonymous1.JobHighMemoryLimit = value;

  int get JobMemoryLimit => this.Anonymous1.JobMemoryLimit;
  set JobMemoryLimit(int value) => this.Anonymous1.JobMemoryLimit = value;
}

/// {@category Struct}
class _JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION_2__Anonymous2_e__Union
    extends Union {
  @Int32()
  external int RateControlTolerance;

  @Int32()
  external int CpuRateControlTolerance;
}

extension JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION_2_Extension_1
    on JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION_2 {
  int get RateControlTolerance => this.Anonymous2.RateControlTolerance;
  set RateControlTolerance(int value) =>
      this.Anonymous2.RateControlTolerance = value;

  int get CpuRateControlTolerance => this.Anonymous2.CpuRateControlTolerance;
  set CpuRateControlTolerance(int value) =>
      this.Anonymous2.CpuRateControlTolerance = value;
}

/// {@category Struct}
class _JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION_2__Anonymous3_e__Union
    extends Union {
  @Int32()
  external int RateControlToleranceInterval;

  @Int32()
  external int CpuRateControlToleranceInterval;
}

extension JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION_2_Extension_2
    on JOBOBJECT_NOTIFICATION_LIMIT_INFORMATION_2 {
  int get RateControlToleranceInterval =>
      this.Anonymous3.RateControlToleranceInterval;
  set RateControlToleranceInterval(int value) =>
      this.Anonymous3.RateControlToleranceInterval = value;

  int get CpuRateControlToleranceInterval =>
      this.Anonymous3.CpuRateControlToleranceInterval;
  set CpuRateControlToleranceInterval(int value) =>
      this.Anonymous3.CpuRateControlToleranceInterval = value;
}

/// {@category Struct}
class JOBOBJECT_SECURITY_LIMIT_INFORMATION extends Struct {
  @Uint32()
  external int SecurityLimitFlags;

  @IntPtr()
  external int JobToken;

  external Pointer<TOKEN_GROUPS> SidsToDisable;

  external Pointer<TOKEN_PRIVILEGES> PrivilegesToDelete;

  external Pointer<TOKEN_GROUPS> RestrictedSids;
}

/// {@category Struct}
class JOB_SET_ARRAY extends Struct {
  @IntPtr()
  external int JobHandle;

  @Uint32()
  external int MemberLevel;

  @Uint32()
  external int Flags;
}
