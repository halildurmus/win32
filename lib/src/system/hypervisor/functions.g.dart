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
import '../../system/hypervisor/structs.g.dart';
import '../../system/power/structs.g.dart';
import '../../system/hostcomputesystem/structs.g.dart';
import '../../system/hypervisor/callbacks.g.dart'; // -----------------------------------------------------------------------

// winhvplatform.dll
// -----------------------------------------------------------------------
final _winhvplatform = DynamicLibrary.open('winhvplatform.dll');

int WHvAcceptPartitionMigration(
  int MigrationHandle,
  Pointer<IntPtr> Partition,
) =>
    _WHvAcceptPartitionMigration(
      MigrationHandle,
      Partition,
    );

late final _WHvAcceptPartitionMigration = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr MigrationHandle,
  Pointer<IntPtr> Partition,
),
    int Function(
  int MigrationHandle,
  Pointer<IntPtr> Partition,
)>('WHvAcceptPartitionMigration');

int WHvAdviseGpaRange(
  int Partition,
  Pointer<WHV_MEMORY_RANGE_ENTRY> GpaRanges,
  int GpaRangesCount,
  int Advice,
  Pointer AdviceBuffer,
  int AdviceBufferSizeInBytes,
) =>
    _WHvAdviseGpaRange(
      Partition,
      GpaRanges,
      GpaRangesCount,
      Advice,
      AdviceBuffer,
      AdviceBufferSizeInBytes,
    );

late final _WHvAdviseGpaRange = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Pointer<WHV_MEMORY_RANGE_ENTRY> GpaRanges,
  Uint32 GpaRangesCount,
  Int32 Advice,
  Pointer AdviceBuffer,
  Uint32 AdviceBufferSizeInBytes,
),
    int Function(
  int Partition,
  Pointer<WHV_MEMORY_RANGE_ENTRY> GpaRanges,
  int GpaRangesCount,
  int Advice,
  Pointer AdviceBuffer,
  int AdviceBufferSizeInBytes,
)>('WHvAdviseGpaRange');

int WHvAllocateVpciResource(
  Pointer<GUID> ProviderId,
  int Flags,
  Pointer ResourceDescriptor,
  int ResourceDescriptorSizeInBytes,
  Pointer<IntPtr> VpciResource,
) =>
    _WHvAllocateVpciResource(
      ProviderId,
      Flags,
      ResourceDescriptor,
      ResourceDescriptorSizeInBytes,
      VpciResource,
    );

late final _WHvAllocateVpciResource = _winhvplatform.lookupFunction<
    Int32 Function(
  Pointer<GUID> ProviderId,
  Uint32 Flags,
  Pointer ResourceDescriptor,
  Uint32 ResourceDescriptorSizeInBytes,
  Pointer<IntPtr> VpciResource,
),
    int Function(
  Pointer<GUID> ProviderId,
  int Flags,
  Pointer ResourceDescriptor,
  int ResourceDescriptorSizeInBytes,
  Pointer<IntPtr> VpciResource,
)>('WHvAllocateVpciResource');

int WHvCancelPartitionMigration(
  int Partition,
) =>
    _WHvCancelPartitionMigration(
      Partition,
    );

late final _WHvCancelPartitionMigration = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
),
    int Function(
  int Partition,
)>('WHvCancelPartitionMigration');

int WHvCancelRunVirtualProcessor(
  int Partition,
  int VpIndex,
  int Flags,
) =>
    _WHvCancelRunVirtualProcessor(
      Partition,
      VpIndex,
      Flags,
    );

late final _WHvCancelRunVirtualProcessor = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Uint32 Flags,
),
    int Function(
  int Partition,
  int VpIndex,
  int Flags,
)>('WHvCancelRunVirtualProcessor');

int WHvCompletePartitionMigration(
  int Partition,
) =>
    _WHvCompletePartitionMigration(
      Partition,
    );

late final _WHvCompletePartitionMigration = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
),
    int Function(
  int Partition,
)>('WHvCompletePartitionMigration');

int WHvCreateNotificationPort(
  int Partition,
  Pointer<WHV_NOTIFICATION_PORT_PARAMETERS> Parameters,
  int EventHandle,
  Pointer<Pointer> PortHandle,
) =>
    _WHvCreateNotificationPort(
      Partition,
      Parameters,
      EventHandle,
      PortHandle,
    );

late final _WHvCreateNotificationPort = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Pointer<WHV_NOTIFICATION_PORT_PARAMETERS> Parameters,
  IntPtr EventHandle,
  Pointer<Pointer> PortHandle,
),
    int Function(
  int Partition,
  Pointer<WHV_NOTIFICATION_PORT_PARAMETERS> Parameters,
  int EventHandle,
  Pointer<Pointer> PortHandle,
)>('WHvCreateNotificationPort');

int WHvCreatePartition(
  Pointer<IntPtr> Partition,
) =>
    _WHvCreatePartition(
      Partition,
    );

late final _WHvCreatePartition = _winhvplatform.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> Partition,
),
    int Function(
  Pointer<IntPtr> Partition,
)>('WHvCreatePartition');

int WHvCreateTrigger(
  int Partition,
  Pointer<WHV_TRIGGER_PARAMETERS> Parameters,
  Pointer<Pointer> TriggerHandle,
  Pointer<IntPtr> EventHandle,
) =>
    _WHvCreateTrigger(
      Partition,
      Parameters,
      TriggerHandle,
      EventHandle,
    );

late final _WHvCreateTrigger = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Pointer<WHV_TRIGGER_PARAMETERS> Parameters,
  Pointer<Pointer> TriggerHandle,
  Pointer<IntPtr> EventHandle,
),
    int Function(
  int Partition,
  Pointer<WHV_TRIGGER_PARAMETERS> Parameters,
  Pointer<Pointer> TriggerHandle,
  Pointer<IntPtr> EventHandle,
)>('WHvCreateTrigger');

int WHvCreateVirtualProcessor(
  int Partition,
  int VpIndex,
  int Flags,
) =>
    _WHvCreateVirtualProcessor(
      Partition,
      VpIndex,
      Flags,
    );

late final _WHvCreateVirtualProcessor = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Uint32 Flags,
),
    int Function(
  int Partition,
  int VpIndex,
  int Flags,
)>('WHvCreateVirtualProcessor');

int WHvCreateVirtualProcessor2(
  int Partition,
  int VpIndex,
  Pointer<WHV_VIRTUAL_PROCESSOR_PROPERTY> Properties,
  int PropertyCount,
) =>
    _WHvCreateVirtualProcessor2(
      Partition,
      VpIndex,
      Properties,
      PropertyCount,
    );

late final _WHvCreateVirtualProcessor2 = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Pointer<WHV_VIRTUAL_PROCESSOR_PROPERTY> Properties,
  Uint32 PropertyCount,
),
    int Function(
  int Partition,
  int VpIndex,
  Pointer<WHV_VIRTUAL_PROCESSOR_PROPERTY> Properties,
  int PropertyCount,
)>('WHvCreateVirtualProcessor2');

int WHvCreateVpciDevice(
  int Partition,
  int LogicalDeviceId,
  int VpciResource,
  int Flags,
  int NotificationEventHandle,
) =>
    _WHvCreateVpciDevice(
      Partition,
      LogicalDeviceId,
      VpciResource,
      Flags,
      NotificationEventHandle,
    );

late final _WHvCreateVpciDevice = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint64 LogicalDeviceId,
  IntPtr VpciResource,
  Uint32 Flags,
  IntPtr NotificationEventHandle,
),
    int Function(
  int Partition,
  int LogicalDeviceId,
  int VpciResource,
  int Flags,
  int NotificationEventHandle,
)>('WHvCreateVpciDevice');

int WHvDeleteNotificationPort(
  int Partition,
  Pointer PortHandle,
) =>
    _WHvDeleteNotificationPort(
      Partition,
      PortHandle,
    );

late final _WHvDeleteNotificationPort = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Pointer PortHandle,
),
    int Function(
  int Partition,
  Pointer PortHandle,
)>('WHvDeleteNotificationPort');

int WHvDeletePartition(
  int Partition,
) =>
    _WHvDeletePartition(
      Partition,
    );

late final _WHvDeletePartition = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
),
    int Function(
  int Partition,
)>('WHvDeletePartition');

int WHvDeleteTrigger(
  int Partition,
  Pointer TriggerHandle,
) =>
    _WHvDeleteTrigger(
      Partition,
      TriggerHandle,
    );

late final _WHvDeleteTrigger = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Pointer TriggerHandle,
),
    int Function(
  int Partition,
  Pointer TriggerHandle,
)>('WHvDeleteTrigger');

int WHvDeleteVirtualProcessor(
  int Partition,
  int VpIndex,
) =>
    _WHvDeleteVirtualProcessor(
      Partition,
      VpIndex,
    );

late final _WHvDeleteVirtualProcessor = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
),
    int Function(
  int Partition,
  int VpIndex,
)>('WHvDeleteVirtualProcessor');

int WHvDeleteVpciDevice(
  int Partition,
  int LogicalDeviceId,
) =>
    _WHvDeleteVpciDevice(
      Partition,
      LogicalDeviceId,
    );

late final _WHvDeleteVpciDevice = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint64 LogicalDeviceId,
),
    int Function(
  int Partition,
  int LogicalDeviceId,
)>('WHvDeleteVpciDevice');

int WHvGetCapability(
  int CapabilityCode,
  Pointer CapabilityBuffer,
  int CapabilityBufferSizeInBytes,
  Pointer<Uint32> WrittenSizeInBytes,
) =>
    _WHvGetCapability(
      CapabilityCode,
      CapabilityBuffer,
      CapabilityBufferSizeInBytes,
      WrittenSizeInBytes,
    );

late final _WHvGetCapability = _winhvplatform.lookupFunction<
    Int32 Function(
  Int32 CapabilityCode,
  Pointer CapabilityBuffer,
  Uint32 CapabilityBufferSizeInBytes,
  Pointer<Uint32> WrittenSizeInBytes,
),
    int Function(
  int CapabilityCode,
  Pointer CapabilityBuffer,
  int CapabilityBufferSizeInBytes,
  Pointer<Uint32> WrittenSizeInBytes,
)>('WHvGetCapability');

int WHvGetInterruptTargetVpSet(
  int Partition,
  int Destination,
  int DestinationMode,
  Pointer<Uint32> TargetVps,
  int VpCount,
  Pointer<Uint32> TargetVpCount,
) =>
    _WHvGetInterruptTargetVpSet(
      Partition,
      Destination,
      DestinationMode,
      TargetVps,
      VpCount,
      TargetVpCount,
    );

late final _WHvGetInterruptTargetVpSet = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint64 Destination,
  Int32 DestinationMode,
  Pointer<Uint32> TargetVps,
  Uint32 VpCount,
  Pointer<Uint32> TargetVpCount,
),
    int Function(
  int Partition,
  int Destination,
  int DestinationMode,
  Pointer<Uint32> TargetVps,
  int VpCount,
  Pointer<Uint32> TargetVpCount,
)>('WHvGetInterruptTargetVpSet');

int WHvGetPartitionCounters(
  int Partition,
  int CounterSet,
  Pointer Buffer,
  int BufferSizeInBytes,
  Pointer<Uint32> BytesWritten,
) =>
    _WHvGetPartitionCounters(
      Partition,
      CounterSet,
      Buffer,
      BufferSizeInBytes,
      BytesWritten,
    );

late final _WHvGetPartitionCounters = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Int32 CounterSet,
  Pointer Buffer,
  Uint32 BufferSizeInBytes,
  Pointer<Uint32> BytesWritten,
),
    int Function(
  int Partition,
  int CounterSet,
  Pointer Buffer,
  int BufferSizeInBytes,
  Pointer<Uint32> BytesWritten,
)>('WHvGetPartitionCounters');

int WHvGetPartitionProperty(
  int Partition,
  int PropertyCode,
  Pointer PropertyBuffer,
  int PropertyBufferSizeInBytes,
  Pointer<Uint32> WrittenSizeInBytes,
) =>
    _WHvGetPartitionProperty(
      Partition,
      PropertyCode,
      PropertyBuffer,
      PropertyBufferSizeInBytes,
      WrittenSizeInBytes,
    );

late final _WHvGetPartitionProperty = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Int32 PropertyCode,
  Pointer PropertyBuffer,
  Uint32 PropertyBufferSizeInBytes,
  Pointer<Uint32> WrittenSizeInBytes,
),
    int Function(
  int Partition,
  int PropertyCode,
  Pointer PropertyBuffer,
  int PropertyBufferSizeInBytes,
  Pointer<Uint32> WrittenSizeInBytes,
)>('WHvGetPartitionProperty');

int WHvGetVirtualProcessorCounters(
  int Partition,
  int VpIndex,
  int CounterSet,
  Pointer Buffer,
  int BufferSizeInBytes,
  Pointer<Uint32> BytesWritten,
) =>
    _WHvGetVirtualProcessorCounters(
      Partition,
      VpIndex,
      CounterSet,
      Buffer,
      BufferSizeInBytes,
      BytesWritten,
    );

late final _WHvGetVirtualProcessorCounters = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Int32 CounterSet,
  Pointer Buffer,
  Uint32 BufferSizeInBytes,
  Pointer<Uint32> BytesWritten,
),
    int Function(
  int Partition,
  int VpIndex,
  int CounterSet,
  Pointer Buffer,
  int BufferSizeInBytes,
  Pointer<Uint32> BytesWritten,
)>('WHvGetVirtualProcessorCounters');

int WHvGetVirtualProcessorCpuidOutput(
  int Partition,
  int VpIndex,
  int Eax,
  int Ecx,
  Pointer<WHV_CPUID_OUTPUT> CpuidOutput,
) =>
    _WHvGetVirtualProcessorCpuidOutput(
      Partition,
      VpIndex,
      Eax,
      Ecx,
      CpuidOutput,
    );

late final _WHvGetVirtualProcessorCpuidOutput = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Uint32 Eax,
  Uint32 Ecx,
  Pointer<WHV_CPUID_OUTPUT> CpuidOutput,
),
    int Function(
  int Partition,
  int VpIndex,
  int Eax,
  int Ecx,
  Pointer<WHV_CPUID_OUTPUT> CpuidOutput,
)>('WHvGetVirtualProcessorCpuidOutput');

int WHvGetVirtualProcessorInterruptControllerState(
  int Partition,
  int VpIndex,
  Pointer State,
  int StateSize,
  Pointer<Uint32> WrittenSize,
) =>
    _WHvGetVirtualProcessorInterruptControllerState(
      Partition,
      VpIndex,
      State,
      StateSize,
      WrittenSize,
    );

late final _WHvGetVirtualProcessorInterruptControllerState =
    _winhvplatform.lookupFunction<
        Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Pointer State,
  Uint32 StateSize,
  Pointer<Uint32> WrittenSize,
),
        int Function(
  int Partition,
  int VpIndex,
  Pointer State,
  int StateSize,
  Pointer<Uint32> WrittenSize,
)>('WHvGetVirtualProcessorInterruptControllerState');

int WHvGetVirtualProcessorInterruptControllerState2(
  int Partition,
  int VpIndex,
  Pointer State,
  int StateSize,
  Pointer<Uint32> WrittenSize,
) =>
    _WHvGetVirtualProcessorInterruptControllerState2(
      Partition,
      VpIndex,
      State,
      StateSize,
      WrittenSize,
    );

late final _WHvGetVirtualProcessorInterruptControllerState2 =
    _winhvplatform.lookupFunction<
        Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Pointer State,
  Uint32 StateSize,
  Pointer<Uint32> WrittenSize,
),
        int Function(
  int Partition,
  int VpIndex,
  Pointer State,
  int StateSize,
  Pointer<Uint32> WrittenSize,
)>('WHvGetVirtualProcessorInterruptControllerState2');

int WHvGetVirtualProcessorRegisters(
  int Partition,
  int VpIndex,
  Pointer<Int32> RegisterNames,
  int RegisterCount,
  Pointer<WHV_REGISTER_VALUE> RegisterValues,
) =>
    _WHvGetVirtualProcessorRegisters(
      Partition,
      VpIndex,
      RegisterNames,
      RegisterCount,
      RegisterValues,
    );

late final _WHvGetVirtualProcessorRegisters = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Pointer<Int32> RegisterNames,
  Uint32 RegisterCount,
  Pointer<WHV_REGISTER_VALUE> RegisterValues,
),
    int Function(
  int Partition,
  int VpIndex,
  Pointer<Int32> RegisterNames,
  int RegisterCount,
  Pointer<WHV_REGISTER_VALUE> RegisterValues,
)>('WHvGetVirtualProcessorRegisters');

int WHvGetVirtualProcessorState(
  int Partition,
  int VpIndex,
  int StateType,
  Pointer Buffer,
  int BufferSizeInBytes,
  Pointer<Uint32> BytesWritten,
) =>
    _WHvGetVirtualProcessorState(
      Partition,
      VpIndex,
      StateType,
      Buffer,
      BufferSizeInBytes,
      BytesWritten,
    );

late final _WHvGetVirtualProcessorState = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Int32 StateType,
  Pointer Buffer,
  Uint32 BufferSizeInBytes,
  Pointer<Uint32> BytesWritten,
),
    int Function(
  int Partition,
  int VpIndex,
  int StateType,
  Pointer Buffer,
  int BufferSizeInBytes,
  Pointer<Uint32> BytesWritten,
)>('WHvGetVirtualProcessorState');

int WHvGetVirtualProcessorXsaveState(
  int Partition,
  int VpIndex,
  Pointer Buffer,
  int BufferSizeInBytes,
  Pointer<Uint32> BytesWritten,
) =>
    _WHvGetVirtualProcessorXsaveState(
      Partition,
      VpIndex,
      Buffer,
      BufferSizeInBytes,
      BytesWritten,
    );

late final _WHvGetVirtualProcessorXsaveState = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Pointer Buffer,
  Uint32 BufferSizeInBytes,
  Pointer<Uint32> BytesWritten,
),
    int Function(
  int Partition,
  int VpIndex,
  Pointer Buffer,
  int BufferSizeInBytes,
  Pointer<Uint32> BytesWritten,
)>('WHvGetVirtualProcessorXsaveState');

int WHvGetVpciDeviceInterruptTarget(
  int Partition,
  int LogicalDeviceId,
  int Index,
  int MultiMessageNumber,
  Pointer<WHV_VPCI_INTERRUPT_TARGET> Target,
  int TargetSizeInBytes,
  Pointer<Uint32> BytesWritten,
) =>
    _WHvGetVpciDeviceInterruptTarget(
      Partition,
      LogicalDeviceId,
      Index,
      MultiMessageNumber,
      Target,
      TargetSizeInBytes,
      BytesWritten,
    );

late final _WHvGetVpciDeviceInterruptTarget = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint64 LogicalDeviceId,
  Uint32 Index,
  Uint32 MultiMessageNumber,
  Pointer<WHV_VPCI_INTERRUPT_TARGET> Target,
  Uint32 TargetSizeInBytes,
  Pointer<Uint32> BytesWritten,
),
    int Function(
  int Partition,
  int LogicalDeviceId,
  int Index,
  int MultiMessageNumber,
  Pointer<WHV_VPCI_INTERRUPT_TARGET> Target,
  int TargetSizeInBytes,
  Pointer<Uint32> BytesWritten,
)>('WHvGetVpciDeviceInterruptTarget');

int WHvGetVpciDeviceNotification(
  int Partition,
  int LogicalDeviceId,
  Pointer<WHV_VPCI_DEVICE_NOTIFICATION> Notification,
  int NotificationSizeInBytes,
) =>
    _WHvGetVpciDeviceNotification(
      Partition,
      LogicalDeviceId,
      Notification,
      NotificationSizeInBytes,
    );

late final _WHvGetVpciDeviceNotification = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint64 LogicalDeviceId,
  Pointer<WHV_VPCI_DEVICE_NOTIFICATION> Notification,
  Uint32 NotificationSizeInBytes,
),
    int Function(
  int Partition,
  int LogicalDeviceId,
  Pointer<WHV_VPCI_DEVICE_NOTIFICATION> Notification,
  int NotificationSizeInBytes,
)>('WHvGetVpciDeviceNotification');

int WHvGetVpciDeviceProperty(
  int Partition,
  int LogicalDeviceId,
  int PropertyCode,
  Pointer PropertyBuffer,
  int PropertyBufferSizeInBytes,
  Pointer<Uint32> WrittenSizeInBytes,
) =>
    _WHvGetVpciDeviceProperty(
      Partition,
      LogicalDeviceId,
      PropertyCode,
      PropertyBuffer,
      PropertyBufferSizeInBytes,
      WrittenSizeInBytes,
    );

late final _WHvGetVpciDeviceProperty = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint64 LogicalDeviceId,
  Int32 PropertyCode,
  Pointer PropertyBuffer,
  Uint32 PropertyBufferSizeInBytes,
  Pointer<Uint32> WrittenSizeInBytes,
),
    int Function(
  int Partition,
  int LogicalDeviceId,
  int PropertyCode,
  Pointer PropertyBuffer,
  int PropertyBufferSizeInBytes,
  Pointer<Uint32> WrittenSizeInBytes,
)>('WHvGetVpciDeviceProperty');

int WHvMapGpaRange(
  int Partition,
  Pointer SourceAddress,
  int GuestAddress,
  int SizeInBytes,
  int Flags,
) =>
    _WHvMapGpaRange(
      Partition,
      SourceAddress,
      GuestAddress,
      SizeInBytes,
      Flags,
    );

late final _WHvMapGpaRange = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Pointer SourceAddress,
  Uint64 GuestAddress,
  Uint64 SizeInBytes,
  Uint32 Flags,
),
    int Function(
  int Partition,
  Pointer SourceAddress,
  int GuestAddress,
  int SizeInBytes,
  int Flags,
)>('WHvMapGpaRange');

int WHvMapGpaRange2(
  int Partition,
  int Process,
  Pointer SourceAddress,
  int GuestAddress,
  int SizeInBytes,
  int Flags,
) =>
    _WHvMapGpaRange2(
      Partition,
      Process,
      SourceAddress,
      GuestAddress,
      SizeInBytes,
      Flags,
    );

late final _WHvMapGpaRange2 = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  IntPtr Process,
  Pointer SourceAddress,
  Uint64 GuestAddress,
  Uint64 SizeInBytes,
  Uint32 Flags,
),
    int Function(
  int Partition,
  int Process,
  Pointer SourceAddress,
  int GuestAddress,
  int SizeInBytes,
  int Flags,
)>('WHvMapGpaRange2');

int WHvMapVpciDeviceInterrupt(
  int Partition,
  int LogicalDeviceId,
  int Index,
  int MessageCount,
  Pointer<WHV_VPCI_INTERRUPT_TARGET> Target,
  Pointer<Uint64> MsiAddress,
  Pointer<Uint32> MsiData,
) =>
    _WHvMapVpciDeviceInterrupt(
      Partition,
      LogicalDeviceId,
      Index,
      MessageCount,
      Target,
      MsiAddress,
      MsiData,
    );

late final _WHvMapVpciDeviceInterrupt = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint64 LogicalDeviceId,
  Uint32 Index,
  Uint32 MessageCount,
  Pointer<WHV_VPCI_INTERRUPT_TARGET> Target,
  Pointer<Uint64> MsiAddress,
  Pointer<Uint32> MsiData,
),
    int Function(
  int Partition,
  int LogicalDeviceId,
  int Index,
  int MessageCount,
  Pointer<WHV_VPCI_INTERRUPT_TARGET> Target,
  Pointer<Uint64> MsiAddress,
  Pointer<Uint32> MsiData,
)>('WHvMapVpciDeviceInterrupt');

int WHvMapVpciDeviceMmioRanges(
  int Partition,
  int LogicalDeviceId,
  Pointer<Uint32> MappingCount,
  Pointer<Pointer<WHV_VPCI_MMIO_MAPPING>> Mappings,
) =>
    _WHvMapVpciDeviceMmioRanges(
      Partition,
      LogicalDeviceId,
      MappingCount,
      Mappings,
    );

late final _WHvMapVpciDeviceMmioRanges = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint64 LogicalDeviceId,
  Pointer<Uint32> MappingCount,
  Pointer<Pointer<WHV_VPCI_MMIO_MAPPING>> Mappings,
),
    int Function(
  int Partition,
  int LogicalDeviceId,
  Pointer<Uint32> MappingCount,
  Pointer<Pointer<WHV_VPCI_MMIO_MAPPING>> Mappings,
)>('WHvMapVpciDeviceMmioRanges');

int WHvPostVirtualProcessorSynicMessage(
  int Partition,
  int VpIndex,
  int SintIndex,
  Pointer Message,
  int MessageSizeInBytes,
) =>
    _WHvPostVirtualProcessorSynicMessage(
      Partition,
      VpIndex,
      SintIndex,
      Message,
      MessageSizeInBytes,
    );

late final _WHvPostVirtualProcessorSynicMessage = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Uint32 SintIndex,
  Pointer Message,
  Uint32 MessageSizeInBytes,
),
    int Function(
  int Partition,
  int VpIndex,
  int SintIndex,
  Pointer Message,
  int MessageSizeInBytes,
)>('WHvPostVirtualProcessorSynicMessage');

int WHvQueryGpaRangeDirtyBitmap(
  int Partition,
  int GuestAddress,
  int RangeSizeInBytes,
  Pointer<Uint64> Bitmap,
  int BitmapSizeInBytes,
) =>
    _WHvQueryGpaRangeDirtyBitmap(
      Partition,
      GuestAddress,
      RangeSizeInBytes,
      Bitmap,
      BitmapSizeInBytes,
    );

late final _WHvQueryGpaRangeDirtyBitmap = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint64 GuestAddress,
  Uint64 RangeSizeInBytes,
  Pointer<Uint64> Bitmap,
  Uint32 BitmapSizeInBytes,
),
    int Function(
  int Partition,
  int GuestAddress,
  int RangeSizeInBytes,
  Pointer<Uint64> Bitmap,
  int BitmapSizeInBytes,
)>('WHvQueryGpaRangeDirtyBitmap');

int WHvReadGpaRange(
  int Partition,
  int VpIndex,
  int GuestAddress,
  WHV_ACCESS_GPA_CONTROLS Controls,
  Pointer Data,
  int DataSizeInBytes,
) =>
    _WHvReadGpaRange(
      Partition,
      VpIndex,
      GuestAddress,
      Controls,
      Data,
      DataSizeInBytes,
    );

late final _WHvReadGpaRange = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Uint64 GuestAddress,
  WHV_ACCESS_GPA_CONTROLS Controls,
  Pointer Data,
  Uint32 DataSizeInBytes,
),
    int Function(
  int Partition,
  int VpIndex,
  int GuestAddress,
  WHV_ACCESS_GPA_CONTROLS Controls,
  Pointer Data,
  int DataSizeInBytes,
)>('WHvReadGpaRange');

int WHvReadVpciDeviceRegister(
  int Partition,
  int LogicalDeviceId,
  Pointer<WHV_VPCI_DEVICE_REGISTER> Register,
  Pointer Data,
) =>
    _WHvReadVpciDeviceRegister(
      Partition,
      LogicalDeviceId,
      Register,
      Data,
    );

late final _WHvReadVpciDeviceRegister = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint64 LogicalDeviceId,
  Pointer<WHV_VPCI_DEVICE_REGISTER> Register,
  Pointer Data,
),
    int Function(
  int Partition,
  int LogicalDeviceId,
  Pointer<WHV_VPCI_DEVICE_REGISTER> Register,
  Pointer Data,
)>('WHvReadVpciDeviceRegister');

int WHvRegisterPartitionDoorbellEvent(
  int Partition,
  Pointer<WHV_DOORBELL_MATCH_DATA> MatchData,
  int EventHandle,
) =>
    _WHvRegisterPartitionDoorbellEvent(
      Partition,
      MatchData,
      EventHandle,
    );

late final _WHvRegisterPartitionDoorbellEvent = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Pointer<WHV_DOORBELL_MATCH_DATA> MatchData,
  IntPtr EventHandle,
),
    int Function(
  int Partition,
  Pointer<WHV_DOORBELL_MATCH_DATA> MatchData,
  int EventHandle,
)>('WHvRegisterPartitionDoorbellEvent');

int WHvRequestInterrupt(
  int Partition,
  Pointer<WHV_INTERRUPT_CONTROL> Interrupt,
  int InterruptControlSize,
) =>
    _WHvRequestInterrupt(
      Partition,
      Interrupt,
      InterruptControlSize,
    );

late final _WHvRequestInterrupt = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Pointer<WHV_INTERRUPT_CONTROL> Interrupt,
  Uint32 InterruptControlSize,
),
    int Function(
  int Partition,
  Pointer<WHV_INTERRUPT_CONTROL> Interrupt,
  int InterruptControlSize,
)>('WHvRequestInterrupt');

int WHvRequestVpciDeviceInterrupt(
  int Partition,
  int LogicalDeviceId,
  int MsiAddress,
  int MsiData,
) =>
    _WHvRequestVpciDeviceInterrupt(
      Partition,
      LogicalDeviceId,
      MsiAddress,
      MsiData,
    );

late final _WHvRequestVpciDeviceInterrupt = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint64 LogicalDeviceId,
  Uint64 MsiAddress,
  Uint32 MsiData,
),
    int Function(
  int Partition,
  int LogicalDeviceId,
  int MsiAddress,
  int MsiData,
)>('WHvRequestVpciDeviceInterrupt');

int WHvResetPartition(
  int Partition,
) =>
    _WHvResetPartition(
      Partition,
    );

late final _WHvResetPartition = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
),
    int Function(
  int Partition,
)>('WHvResetPartition');

int WHvResumePartitionTime(
  int Partition,
) =>
    _WHvResumePartitionTime(
      Partition,
    );

late final _WHvResumePartitionTime = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
),
    int Function(
  int Partition,
)>('WHvResumePartitionTime');

int WHvRetargetVpciDeviceInterrupt(
  int Partition,
  int LogicalDeviceId,
  int MsiAddress,
  int MsiData,
  Pointer<WHV_VPCI_INTERRUPT_TARGET> Target,
) =>
    _WHvRetargetVpciDeviceInterrupt(
      Partition,
      LogicalDeviceId,
      MsiAddress,
      MsiData,
      Target,
    );

late final _WHvRetargetVpciDeviceInterrupt = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint64 LogicalDeviceId,
  Uint64 MsiAddress,
  Uint32 MsiData,
  Pointer<WHV_VPCI_INTERRUPT_TARGET> Target,
),
    int Function(
  int Partition,
  int LogicalDeviceId,
  int MsiAddress,
  int MsiData,
  Pointer<WHV_VPCI_INTERRUPT_TARGET> Target,
)>('WHvRetargetVpciDeviceInterrupt');

int WHvRunVirtualProcessor(
  int Partition,
  int VpIndex,
  Pointer ExitContext,
  int ExitContextSizeInBytes,
) =>
    _WHvRunVirtualProcessor(
      Partition,
      VpIndex,
      ExitContext,
      ExitContextSizeInBytes,
    );

late final _WHvRunVirtualProcessor = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Pointer ExitContext,
  Uint32 ExitContextSizeInBytes,
),
    int Function(
  int Partition,
  int VpIndex,
  Pointer ExitContext,
  int ExitContextSizeInBytes,
)>('WHvRunVirtualProcessor');

int WHvSetNotificationPortProperty(
  int Partition,
  Pointer PortHandle,
  int PropertyCode,
  int PropertyValue,
) =>
    _WHvSetNotificationPortProperty(
      Partition,
      PortHandle,
      PropertyCode,
      PropertyValue,
    );

late final _WHvSetNotificationPortProperty = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Pointer PortHandle,
  Int32 PropertyCode,
  Uint64 PropertyValue,
),
    int Function(
  int Partition,
  Pointer PortHandle,
  int PropertyCode,
  int PropertyValue,
)>('WHvSetNotificationPortProperty');

int WHvSetPartitionProperty(
  int Partition,
  int PropertyCode,
  Pointer PropertyBuffer,
  int PropertyBufferSizeInBytes,
) =>
    _WHvSetPartitionProperty(
      Partition,
      PropertyCode,
      PropertyBuffer,
      PropertyBufferSizeInBytes,
    );

late final _WHvSetPartitionProperty = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Int32 PropertyCode,
  Pointer PropertyBuffer,
  Uint32 PropertyBufferSizeInBytes,
),
    int Function(
  int Partition,
  int PropertyCode,
  Pointer PropertyBuffer,
  int PropertyBufferSizeInBytes,
)>('WHvSetPartitionProperty');

int WHvSetVirtualProcessorInterruptControllerState(
  int Partition,
  int VpIndex,
  Pointer State,
  int StateSize,
) =>
    _WHvSetVirtualProcessorInterruptControllerState(
      Partition,
      VpIndex,
      State,
      StateSize,
    );

late final _WHvSetVirtualProcessorInterruptControllerState =
    _winhvplatform.lookupFunction<
        Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Pointer State,
  Uint32 StateSize,
),
        int Function(
  int Partition,
  int VpIndex,
  Pointer State,
  int StateSize,
)>('WHvSetVirtualProcessorInterruptControllerState');

int WHvSetVirtualProcessorInterruptControllerState2(
  int Partition,
  int VpIndex,
  Pointer State,
  int StateSize,
) =>
    _WHvSetVirtualProcessorInterruptControllerState2(
      Partition,
      VpIndex,
      State,
      StateSize,
    );

late final _WHvSetVirtualProcessorInterruptControllerState2 =
    _winhvplatform.lookupFunction<
        Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Pointer State,
  Uint32 StateSize,
),
        int Function(
  int Partition,
  int VpIndex,
  Pointer State,
  int StateSize,
)>('WHvSetVirtualProcessorInterruptControllerState2');

int WHvSetVirtualProcessorRegisters(
  int Partition,
  int VpIndex,
  Pointer<Int32> RegisterNames,
  int RegisterCount,
  Pointer<WHV_REGISTER_VALUE> RegisterValues,
) =>
    _WHvSetVirtualProcessorRegisters(
      Partition,
      VpIndex,
      RegisterNames,
      RegisterCount,
      RegisterValues,
    );

late final _WHvSetVirtualProcessorRegisters = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Pointer<Int32> RegisterNames,
  Uint32 RegisterCount,
  Pointer<WHV_REGISTER_VALUE> RegisterValues,
),
    int Function(
  int Partition,
  int VpIndex,
  Pointer<Int32> RegisterNames,
  int RegisterCount,
  Pointer<WHV_REGISTER_VALUE> RegisterValues,
)>('WHvSetVirtualProcessorRegisters');

int WHvSetVirtualProcessorState(
  int Partition,
  int VpIndex,
  int StateType,
  Pointer Buffer,
  int BufferSizeInBytes,
) =>
    _WHvSetVirtualProcessorState(
      Partition,
      VpIndex,
      StateType,
      Buffer,
      BufferSizeInBytes,
    );

late final _WHvSetVirtualProcessorState = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Int32 StateType,
  Pointer Buffer,
  Uint32 BufferSizeInBytes,
),
    int Function(
  int Partition,
  int VpIndex,
  int StateType,
  Pointer Buffer,
  int BufferSizeInBytes,
)>('WHvSetVirtualProcessorState');

int WHvSetVirtualProcessorXsaveState(
  int Partition,
  int VpIndex,
  Pointer Buffer,
  int BufferSizeInBytes,
) =>
    _WHvSetVirtualProcessorXsaveState(
      Partition,
      VpIndex,
      Buffer,
      BufferSizeInBytes,
    );

late final _WHvSetVirtualProcessorXsaveState = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Pointer Buffer,
  Uint32 BufferSizeInBytes,
),
    int Function(
  int Partition,
  int VpIndex,
  Pointer Buffer,
  int BufferSizeInBytes,
)>('WHvSetVirtualProcessorXsaveState');

int WHvSetVpciDevicePowerState(
  int Partition,
  int LogicalDeviceId,
  int PowerState,
) =>
    _WHvSetVpciDevicePowerState(
      Partition,
      LogicalDeviceId,
      PowerState,
    );

late final _WHvSetVpciDevicePowerState = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint64 LogicalDeviceId,
  Int32 PowerState,
),
    int Function(
  int Partition,
  int LogicalDeviceId,
  int PowerState,
)>('WHvSetVpciDevicePowerState');

int WHvSetupPartition(
  int Partition,
) =>
    _WHvSetupPartition(
      Partition,
    );

late final _WHvSetupPartition = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
),
    int Function(
  int Partition,
)>('WHvSetupPartition');

int WHvSignalVirtualProcessorSynicEvent(
  int Partition,
  WHV_SYNIC_EVENT_PARAMETERS SynicEvent,
  Pointer<Int32> NewlySignaled,
) =>
    _WHvSignalVirtualProcessorSynicEvent(
      Partition,
      SynicEvent,
      NewlySignaled,
    );

late final _WHvSignalVirtualProcessorSynicEvent = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  WHV_SYNIC_EVENT_PARAMETERS SynicEvent,
  Pointer<Int32> NewlySignaled,
),
    int Function(
  int Partition,
  WHV_SYNIC_EVENT_PARAMETERS SynicEvent,
  Pointer<Int32> NewlySignaled,
)>('WHvSignalVirtualProcessorSynicEvent');

int WHvStartPartitionMigration(
  int Partition,
  Pointer<IntPtr> MigrationHandle,
) =>
    _WHvStartPartitionMigration(
      Partition,
      MigrationHandle,
    );

late final _WHvStartPartitionMigration = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Pointer<IntPtr> MigrationHandle,
),
    int Function(
  int Partition,
  Pointer<IntPtr> MigrationHandle,
)>('WHvStartPartitionMigration');

int WHvSuspendPartitionTime(
  int Partition,
) =>
    _WHvSuspendPartitionTime(
      Partition,
    );

late final _WHvSuspendPartitionTime = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
),
    int Function(
  int Partition,
)>('WHvSuspendPartitionTime');

int WHvTranslateGva(
  int Partition,
  int VpIndex,
  int Gva,
  int TranslateFlags,
  Pointer<WHV_TRANSLATE_GVA_RESULT> TranslationResult,
  Pointer<Uint64> Gpa,
) =>
    _WHvTranslateGva(
      Partition,
      VpIndex,
      Gva,
      TranslateFlags,
      TranslationResult,
      Gpa,
    );

late final _WHvTranslateGva = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Uint64 Gva,
  Uint32 TranslateFlags,
  Pointer<WHV_TRANSLATE_GVA_RESULT> TranslationResult,
  Pointer<Uint64> Gpa,
),
    int Function(
  int Partition,
  int VpIndex,
  int Gva,
  int TranslateFlags,
  Pointer<WHV_TRANSLATE_GVA_RESULT> TranslationResult,
  Pointer<Uint64> Gpa,
)>('WHvTranslateGva');

int WHvUnmapGpaRange(
  int Partition,
  int GuestAddress,
  int SizeInBytes,
) =>
    _WHvUnmapGpaRange(
      Partition,
      GuestAddress,
      SizeInBytes,
    );

late final _WHvUnmapGpaRange = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint64 GuestAddress,
  Uint64 SizeInBytes,
),
    int Function(
  int Partition,
  int GuestAddress,
  int SizeInBytes,
)>('WHvUnmapGpaRange');

int WHvUnmapVpciDeviceInterrupt(
  int Partition,
  int LogicalDeviceId,
  int Index,
) =>
    _WHvUnmapVpciDeviceInterrupt(
      Partition,
      LogicalDeviceId,
      Index,
    );

late final _WHvUnmapVpciDeviceInterrupt = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint64 LogicalDeviceId,
  Uint32 Index,
),
    int Function(
  int Partition,
  int LogicalDeviceId,
  int Index,
)>('WHvUnmapVpciDeviceInterrupt');

int WHvUnmapVpciDeviceMmioRanges(
  int Partition,
  int LogicalDeviceId,
) =>
    _WHvUnmapVpciDeviceMmioRanges(
      Partition,
      LogicalDeviceId,
    );

late final _WHvUnmapVpciDeviceMmioRanges = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint64 LogicalDeviceId,
),
    int Function(
  int Partition,
  int LogicalDeviceId,
)>('WHvUnmapVpciDeviceMmioRanges');

int WHvUnregisterPartitionDoorbellEvent(
  int Partition,
  Pointer<WHV_DOORBELL_MATCH_DATA> MatchData,
) =>
    _WHvUnregisterPartitionDoorbellEvent(
      Partition,
      MatchData,
    );

late final _WHvUnregisterPartitionDoorbellEvent = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Pointer<WHV_DOORBELL_MATCH_DATA> MatchData,
),
    int Function(
  int Partition,
  Pointer<WHV_DOORBELL_MATCH_DATA> MatchData,
)>('WHvUnregisterPartitionDoorbellEvent');

int WHvUpdateTriggerParameters(
  int Partition,
  Pointer<WHV_TRIGGER_PARAMETERS> Parameters,
  Pointer TriggerHandle,
) =>
    _WHvUpdateTriggerParameters(
      Partition,
      Parameters,
      TriggerHandle,
    );

late final _WHvUpdateTriggerParameters = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Pointer<WHV_TRIGGER_PARAMETERS> Parameters,
  Pointer TriggerHandle,
),
    int Function(
  int Partition,
  Pointer<WHV_TRIGGER_PARAMETERS> Parameters,
  Pointer TriggerHandle,
)>('WHvUpdateTriggerParameters');

int WHvWriteGpaRange(
  int Partition,
  int VpIndex,
  int GuestAddress,
  WHV_ACCESS_GPA_CONTROLS Controls,
  Pointer Data,
  int DataSizeInBytes,
) =>
    _WHvWriteGpaRange(
      Partition,
      VpIndex,
      GuestAddress,
      Controls,
      Data,
      DataSizeInBytes,
    );

late final _WHvWriteGpaRange = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint32 VpIndex,
  Uint64 GuestAddress,
  WHV_ACCESS_GPA_CONTROLS Controls,
  Pointer Data,
  Uint32 DataSizeInBytes,
),
    int Function(
  int Partition,
  int VpIndex,
  int GuestAddress,
  WHV_ACCESS_GPA_CONTROLS Controls,
  Pointer Data,
  int DataSizeInBytes,
)>('WHvWriteGpaRange');

int WHvWriteVpciDeviceRegister(
  int Partition,
  int LogicalDeviceId,
  Pointer<WHV_VPCI_DEVICE_REGISTER> Register,
  Pointer Data,
) =>
    _WHvWriteVpciDeviceRegister(
      Partition,
      LogicalDeviceId,
      Register,
      Data,
    );

late final _WHvWriteVpciDeviceRegister = _winhvplatform.lookupFunction<
    Int32 Function(
  IntPtr Partition,
  Uint64 LogicalDeviceId,
  Pointer<WHV_VPCI_DEVICE_REGISTER> Register,
  Pointer Data,
),
    int Function(
  int Partition,
  int LogicalDeviceId,
  Pointer<WHV_VPCI_DEVICE_REGISTER> Register,
  Pointer Data,
)>('WHvWriteVpciDeviceRegister');

// -----------------------------------------------------------------------
// winhvemulation.dll
// -----------------------------------------------------------------------
final _winhvemulation = DynamicLibrary.open('winhvemulation.dll');

int WHvEmulatorCreateEmulator(
  Pointer<WHV_EMULATOR_CALLBACKS> Callbacks,
  Pointer<Pointer> Emulator,
) =>
    _WHvEmulatorCreateEmulator(
      Callbacks,
      Emulator,
    );

late final _WHvEmulatorCreateEmulator = _winhvemulation.lookupFunction<
    Int32 Function(
  Pointer<WHV_EMULATOR_CALLBACKS> Callbacks,
  Pointer<Pointer> Emulator,
),
    int Function(
  Pointer<WHV_EMULATOR_CALLBACKS> Callbacks,
  Pointer<Pointer> Emulator,
)>('WHvEmulatorCreateEmulator');

int WHvEmulatorDestroyEmulator(
  Pointer Emulator,
) =>
    _WHvEmulatorDestroyEmulator(
      Emulator,
    );

late final _WHvEmulatorDestroyEmulator = _winhvemulation.lookupFunction<
    Int32 Function(
  Pointer Emulator,
),
    int Function(
  Pointer Emulator,
)>('WHvEmulatorDestroyEmulator');

int WHvEmulatorTryIoEmulation(
  Pointer Emulator,
  Pointer Context,
  Pointer<WHV_VP_EXIT_CONTEXT> VpContext,
  Pointer<WHV_X64_IO_PORT_ACCESS_CONTEXT> IoInstructionContext,
  Pointer<WHV_EMULATOR_STATUS> EmulatorReturnStatus,
) =>
    _WHvEmulatorTryIoEmulation(
      Emulator,
      Context,
      VpContext,
      IoInstructionContext,
      EmulatorReturnStatus,
    );

late final _WHvEmulatorTryIoEmulation = _winhvemulation.lookupFunction<
    Int32 Function(
  Pointer Emulator,
  Pointer Context,
  Pointer<WHV_VP_EXIT_CONTEXT> VpContext,
  Pointer<WHV_X64_IO_PORT_ACCESS_CONTEXT> IoInstructionContext,
  Pointer<WHV_EMULATOR_STATUS> EmulatorReturnStatus,
),
    int Function(
  Pointer Emulator,
  Pointer Context,
  Pointer<WHV_VP_EXIT_CONTEXT> VpContext,
  Pointer<WHV_X64_IO_PORT_ACCESS_CONTEXT> IoInstructionContext,
  Pointer<WHV_EMULATOR_STATUS> EmulatorReturnStatus,
)>('WHvEmulatorTryIoEmulation');

int WHvEmulatorTryMmioEmulation(
  Pointer Emulator,
  Pointer Context,
  Pointer<WHV_VP_EXIT_CONTEXT> VpContext,
  Pointer<WHV_MEMORY_ACCESS_CONTEXT> MmioInstructionContext,
  Pointer<WHV_EMULATOR_STATUS> EmulatorReturnStatus,
) =>
    _WHvEmulatorTryMmioEmulation(
      Emulator,
      Context,
      VpContext,
      MmioInstructionContext,
      EmulatorReturnStatus,
    );

late final _WHvEmulatorTryMmioEmulation = _winhvemulation.lookupFunction<
    Int32 Function(
  Pointer Emulator,
  Pointer Context,
  Pointer<WHV_VP_EXIT_CONTEXT> VpContext,
  Pointer<WHV_MEMORY_ACCESS_CONTEXT> MmioInstructionContext,
  Pointer<WHV_EMULATOR_STATUS> EmulatorReturnStatus,
),
    int Function(
  Pointer Emulator,
  Pointer Context,
  Pointer<WHV_VP_EXIT_CONTEXT> VpContext,
  Pointer<WHV_MEMORY_ACCESS_CONTEXT> MmioInstructionContext,
  Pointer<WHV_EMULATOR_STATUS> EmulatorReturnStatus,
)>('WHvEmulatorTryMmioEmulation');

// -----------------------------------------------------------------------
// vmdevicehost.dll
// -----------------------------------------------------------------------
final _vmdevicehost = DynamicLibrary.open('vmdevicehost.dll');

int HdvCreateDeviceInstance(
  Pointer deviceHostHandle,
  int deviceType,
  Pointer<GUID> deviceClassId,
  Pointer<GUID> deviceInstanceId,
  Pointer deviceInterface,
  Pointer deviceContext,
  Pointer<Pointer> deviceHandle,
) =>
    _HdvCreateDeviceInstance(
      deviceHostHandle,
      deviceType,
      deviceClassId,
      deviceInstanceId,
      deviceInterface,
      deviceContext,
      deviceHandle,
    );

late final _HdvCreateDeviceInstance = _vmdevicehost.lookupFunction<
    Int32 Function(
  Pointer deviceHostHandle,
  Int32 deviceType,
  Pointer<GUID> deviceClassId,
  Pointer<GUID> deviceInstanceId,
  Pointer deviceInterface,
  Pointer deviceContext,
  Pointer<Pointer> deviceHandle,
),
    int Function(
  Pointer deviceHostHandle,
  int deviceType,
  Pointer<GUID> deviceClassId,
  Pointer<GUID> deviceInstanceId,
  Pointer deviceInterface,
  Pointer deviceContext,
  Pointer<Pointer> deviceHandle,
)>('HdvCreateDeviceInstance');

int HdvCreateGuestMemoryAperture(
  Pointer requestor,
  int guestPhysicalAddress,
  int byteCount,
  int writeProtected,
  Pointer<Pointer> mappedAddress,
) =>
    _HdvCreateGuestMemoryAperture(
      requestor,
      guestPhysicalAddress,
      byteCount,
      writeProtected,
      mappedAddress,
    );

late final _HdvCreateGuestMemoryAperture = _vmdevicehost.lookupFunction<
    Int32 Function(
  Pointer requestor,
  Uint64 guestPhysicalAddress,
  Uint32 byteCount,
  Int32 writeProtected,
  Pointer<Pointer> mappedAddress,
),
    int Function(
  Pointer requestor,
  int guestPhysicalAddress,
  int byteCount,
  int writeProtected,
  Pointer<Pointer> mappedAddress,
)>('HdvCreateGuestMemoryAperture');

int HdvCreateSectionBackedMmioRange(
  Pointer requestor,
  int barIndex,
  int offsetInPages,
  int lengthInPages,
  int MappingFlags,
  int sectionHandle,
  int sectionOffsetInPages,
) =>
    _HdvCreateSectionBackedMmioRange(
      requestor,
      barIndex,
      offsetInPages,
      lengthInPages,
      MappingFlags,
      sectionHandle,
      sectionOffsetInPages,
    );

late final _HdvCreateSectionBackedMmioRange = _vmdevicehost.lookupFunction<
    Int32 Function(
  Pointer requestor,
  Int32 barIndex,
  Uint64 offsetInPages,
  Uint64 lengthInPages,
  Uint32 MappingFlags,
  IntPtr sectionHandle,
  Uint64 sectionOffsetInPages,
),
    int Function(
  Pointer requestor,
  int barIndex,
  int offsetInPages,
  int lengthInPages,
  int MappingFlags,
  int sectionHandle,
  int sectionOffsetInPages,
)>('HdvCreateSectionBackedMmioRange');

int HdvDeliverGuestInterrupt(
  Pointer requestor,
  int msiAddress,
  int msiData,
) =>
    _HdvDeliverGuestInterrupt(
      requestor,
      msiAddress,
      msiData,
    );

late final _HdvDeliverGuestInterrupt = _vmdevicehost.lookupFunction<
    Int32 Function(
  Pointer requestor,
  Uint64 msiAddress,
  Uint32 msiData,
),
    int Function(
  Pointer requestor,
  int msiAddress,
  int msiData,
)>('HdvDeliverGuestInterrupt');

int HdvDestroyGuestMemoryAperture(
  Pointer requestor,
  Pointer mappedAddress,
) =>
    _HdvDestroyGuestMemoryAperture(
      requestor,
      mappedAddress,
    );

late final _HdvDestroyGuestMemoryAperture = _vmdevicehost.lookupFunction<
    Int32 Function(
  Pointer requestor,
  Pointer mappedAddress,
),
    int Function(
  Pointer requestor,
  Pointer mappedAddress,
)>('HdvDestroyGuestMemoryAperture');

int HdvDestroySectionBackedMmioRange(
  Pointer requestor,
  int barIndex,
  int offsetInPages,
) =>
    _HdvDestroySectionBackedMmioRange(
      requestor,
      barIndex,
      offsetInPages,
    );

late final _HdvDestroySectionBackedMmioRange = _vmdevicehost.lookupFunction<
    Int32 Function(
  Pointer requestor,
  Int32 barIndex,
  Uint64 offsetInPages,
),
    int Function(
  Pointer requestor,
  int barIndex,
  int offsetInPages,
)>('HdvDestroySectionBackedMmioRange');

int HdvInitializeDeviceHost(
  int computeSystem,
  Pointer<Pointer> deviceHostHandle,
) =>
    _HdvInitializeDeviceHost(
      computeSystem,
      deviceHostHandle,
    );

late final _HdvInitializeDeviceHost = _vmdevicehost.lookupFunction<
    Int32 Function(
  IntPtr computeSystem,
  Pointer<Pointer> deviceHostHandle,
),
    int Function(
  int computeSystem,
  Pointer<Pointer> deviceHostHandle,
)>('HdvInitializeDeviceHost');

int HdvReadGuestMemory(
  Pointer requestor,
  int guestPhysicalAddress,
  int byteCount,
  Pointer<Uint8> buffer,
) =>
    _HdvReadGuestMemory(
      requestor,
      guestPhysicalAddress,
      byteCount,
      buffer,
    );

late final _HdvReadGuestMemory = _vmdevicehost.lookupFunction<
    Int32 Function(
  Pointer requestor,
  Uint64 guestPhysicalAddress,
  Uint32 byteCount,
  Pointer<Uint8> buffer,
),
    int Function(
  Pointer requestor,
  int guestPhysicalAddress,
  int byteCount,
  Pointer<Uint8> buffer,
)>('HdvReadGuestMemory');

int HdvRegisterDoorbell(
  Pointer requestor,
  int BarIndex,
  int BarOffset,
  int TriggerValue,
  int Flags,
  int DoorbellEvent,
) =>
    _HdvRegisterDoorbell(
      requestor,
      BarIndex,
      BarOffset,
      TriggerValue,
      Flags,
      DoorbellEvent,
    );

late final _HdvRegisterDoorbell = _vmdevicehost.lookupFunction<
    Int32 Function(
  Pointer requestor,
  Int32 BarIndex,
  Uint64 BarOffset,
  Uint64 TriggerValue,
  Uint64 Flags,
  IntPtr DoorbellEvent,
),
    int Function(
  Pointer requestor,
  int BarIndex,
  int BarOffset,
  int TriggerValue,
  int Flags,
  int DoorbellEvent,
)>('HdvRegisterDoorbell');

int HdvTeardownDeviceHost(
  Pointer deviceHostHandle,
) =>
    _HdvTeardownDeviceHost(
      deviceHostHandle,
    );

late final _HdvTeardownDeviceHost = _vmdevicehost.lookupFunction<
    Int32 Function(
  Pointer deviceHostHandle,
),
    int Function(
  Pointer deviceHostHandle,
)>('HdvTeardownDeviceHost');

int HdvUnregisterDoorbell(
  Pointer requestor,
  int BarIndex,
  int BarOffset,
  int TriggerValue,
  int Flags,
) =>
    _HdvUnregisterDoorbell(
      requestor,
      BarIndex,
      BarOffset,
      TriggerValue,
      Flags,
    );

late final _HdvUnregisterDoorbell = _vmdevicehost.lookupFunction<
    Int32 Function(
  Pointer requestor,
  Int32 BarIndex,
  Uint64 BarOffset,
  Uint64 TriggerValue,
  Uint64 Flags,
),
    int Function(
  Pointer requestor,
  int BarIndex,
  int BarOffset,
  int TriggerValue,
  int Flags,
)>('HdvUnregisterDoorbell');

int HdvWriteGuestMemory(
  Pointer requestor,
  int guestPhysicalAddress,
  int byteCount,
  Pointer<Uint8> buffer,
) =>
    _HdvWriteGuestMemory(
      requestor,
      guestPhysicalAddress,
      byteCount,
      buffer,
    );

late final _HdvWriteGuestMemory = _vmdevicehost.lookupFunction<
    Int32 Function(
  Pointer requestor,
  Uint64 guestPhysicalAddress,
  Uint32 byteCount,
  Pointer<Uint8> buffer,
),
    int Function(
  Pointer requestor,
  int guestPhysicalAddress,
  int byteCount,
  Pointer<Uint8> buffer,
)>('HdvWriteGuestMemory');

// -----------------------------------------------------------------------
// vmsavedstatedumpprovider.dll
// -----------------------------------------------------------------------
final _vmsavedstatedumpprovider =
    DynamicLibrary.open('vmsavedstatedumpprovider.dll');

int ApplyGuestMemoryFix(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  int virtualAddress,
  Pointer fixBuffer,
  int fixBufferSize,
) =>
    _ApplyGuestMemoryFix(
      vmSavedStateDumpHandle,
      vpId,
      virtualAddress,
      fixBuffer,
      fixBufferSize,
    );

late final _ApplyGuestMemoryFix = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Uint64 virtualAddress,
  Pointer fixBuffer,
  Uint32 fixBufferSize,
),
    int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  int virtualAddress,
  Pointer fixBuffer,
  int fixBufferSize,
)>('ApplyGuestMemoryFix');

int ApplyPendingSavedStateFileReplayLog(
  Pointer<Utf16> vmrsFile,
) =>
    _ApplyPendingSavedStateFileReplayLog(
      vmrsFile,
    );

late final _ApplyPendingSavedStateFileReplayLog =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer<Utf16> vmrsFile,
),
        int Function(
  Pointer<Utf16> vmrsFile,
)>('ApplyPendingSavedStateFileReplayLog');

int CallStackUnwind(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<MODULE_INFO> imageInfo,
  int imageInfoCount,
  int frameCount,
  Pointer<Pointer<Utf16>> callStack,
) =>
    _CallStackUnwind(
      vmSavedStateDumpHandle,
      vpId,
      imageInfo,
      imageInfoCount,
      frameCount,
      callStack,
    );

late final _CallStackUnwind = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Pointer<MODULE_INFO> imageInfo,
  Uint32 imageInfoCount,
  Uint32 frameCount,
  Pointer<Pointer<Utf16>> callStack,
),
    int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<MODULE_INFO> imageInfo,
  int imageInfoCount,
  int frameCount,
  Pointer<Pointer<Utf16>> callStack,
)>('CallStackUnwind');

int FindSavedStateSymbolFieldInType(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Utf8> typeName,
  Pointer<Utf16> fieldName,
  Pointer<Uint32> offset,
  Pointer<Int32> found,
) =>
    _FindSavedStateSymbolFieldInType(
      vmSavedStateDumpHandle,
      vpId,
      typeName,
      fieldName,
      offset,
      found,
    );

late final _FindSavedStateSymbolFieldInType =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Pointer<Utf8> typeName,
  Pointer<Utf16> fieldName,
  Pointer<Uint32> offset,
  Pointer<Int32> found,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Utf8> typeName,
  Pointer<Utf16> fieldName,
  Pointer<Uint32> offset,
  Pointer<Int32> found,
)>('FindSavedStateSymbolFieldInType');

int ForceActiveVirtualTrustLevel(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  int virtualTrustLevel,
) =>
    _ForceActiveVirtualTrustLevel(
      vmSavedStateDumpHandle,
      vpId,
      virtualTrustLevel,
    );

late final _ForceActiveVirtualTrustLevel =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Uint8 virtualTrustLevel,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  int virtualTrustLevel,
)>('ForceActiveVirtualTrustLevel');

int ForceArchitecture(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  int architecture,
) =>
    _ForceArchitecture(
      vmSavedStateDumpHandle,
      vpId,
      architecture,
    );

late final _ForceArchitecture = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Int32 architecture,
),
    int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  int architecture,
)>('ForceArchitecture');

int ForceNestedHostMode(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  int hostMode,
  Pointer<Int32> oldMode,
) =>
    _ForceNestedHostMode(
      vmSavedStateDumpHandle,
      vpId,
      hostMode,
      oldMode,
    );

late final _ForceNestedHostMode = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Int32 hostMode,
  Pointer<Int32> oldMode,
),
    int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  int hostMode,
  Pointer<Int32> oldMode,
)>('ForceNestedHostMode');

int ForcePagingMode(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  int pagingMode,
) =>
    _ForcePagingMode(
      vmSavedStateDumpHandle,
      vpId,
      pagingMode,
    );

late final _ForcePagingMode = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Int32 pagingMode,
),
    int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  int pagingMode,
)>('ForcePagingMode');

int GetActiveVirtualTrustLevel(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Uint8> virtualTrustLevel,
) =>
    _GetActiveVirtualTrustLevel(
      vmSavedStateDumpHandle,
      vpId,
      virtualTrustLevel,
    );

late final _GetActiveVirtualTrustLevel =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Pointer<Uint8> virtualTrustLevel,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Uint8> virtualTrustLevel,
)>('GetActiveVirtualTrustLevel');

int GetArchitecture(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Int32> architecture,
) =>
    _GetArchitecture(
      vmSavedStateDumpHandle,
      vpId,
      architecture,
    );

late final _GetArchitecture = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Pointer<Int32> architecture,
),
    int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Int32> architecture,
)>('GetArchitecture');

int GetEnabledVirtualTrustLevels(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Uint32> virtualTrustLevels,
) =>
    _GetEnabledVirtualTrustLevels(
      vmSavedStateDumpHandle,
      vpId,
      virtualTrustLevels,
    );

late final _GetEnabledVirtualTrustLevels =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Pointer<Uint32> virtualTrustLevels,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Uint32> virtualTrustLevels,
)>('GetEnabledVirtualTrustLevels');

int GetGuestEnabledVirtualTrustLevels(
  Pointer vmSavedStateDumpHandle,
  Pointer<Uint32> virtualTrustLevels,
) =>
    _GetGuestEnabledVirtualTrustLevels(
      vmSavedStateDumpHandle,
      virtualTrustLevels,
    );

late final _GetGuestEnabledVirtualTrustLevels =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Uint32> virtualTrustLevels,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Uint32> virtualTrustLevels,
)>('GetGuestEnabledVirtualTrustLevels');

int GetGuestOsInfo(
  Pointer vmSavedStateDumpHandle,
  int virtualTrustLevel,
  Pointer<GUEST_OS_INFO> guestOsInfo,
) =>
    _GetGuestOsInfo(
      vmSavedStateDumpHandle,
      virtualTrustLevel,
      guestOsInfo,
    );

late final _GetGuestOsInfo = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint8 virtualTrustLevel,
  Pointer<GUEST_OS_INFO> guestOsInfo,
),
    int Function(
  Pointer vmSavedStateDumpHandle,
  int virtualTrustLevel,
  Pointer<GUEST_OS_INFO> guestOsInfo,
)>('GetGuestOsInfo');

int GetGuestPhysicalMemoryChunks(
  Pointer vmSavedStateDumpHandle,
  Pointer<Uint64> memoryChunkPageSize,
  Pointer<GPA_MEMORY_CHUNK> memoryChunks,
  Pointer<Uint64> memoryChunkCount,
) =>
    _GetGuestPhysicalMemoryChunks(
      vmSavedStateDumpHandle,
      memoryChunkPageSize,
      memoryChunks,
      memoryChunkCount,
    );

late final _GetGuestPhysicalMemoryChunks =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Uint64> memoryChunkPageSize,
  Pointer<GPA_MEMORY_CHUNK> memoryChunks,
  Pointer<Uint64> memoryChunkCount,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Uint64> memoryChunkPageSize,
  Pointer<GPA_MEMORY_CHUNK> memoryChunks,
  Pointer<Uint64> memoryChunkCount,
)>('GetGuestPhysicalMemoryChunks');

int GetGuestRawSavedMemorySize(
  Pointer vmSavedStateDumpHandle,
  Pointer<Uint64> guestRawSavedMemorySize,
) =>
    _GetGuestRawSavedMemorySize(
      vmSavedStateDumpHandle,
      guestRawSavedMemorySize,
    );

late final _GetGuestRawSavedMemorySize =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Uint64> guestRawSavedMemorySize,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Uint64> guestRawSavedMemorySize,
)>('GetGuestRawSavedMemorySize');

int GetMemoryBlockCacheLimit(
  Pointer vmSavedStateDumpHandle,
  Pointer<Uint64> memoryBlockCacheLimit,
) =>
    _GetMemoryBlockCacheLimit(
      vmSavedStateDumpHandle,
      memoryBlockCacheLimit,
    );

late final _GetMemoryBlockCacheLimit = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Uint64> memoryBlockCacheLimit,
),
    int Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Uint64> memoryBlockCacheLimit,
)>('GetMemoryBlockCacheLimit');

int GetNestedVirtualizationMode(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Int32> enabled,
) =>
    _GetNestedVirtualizationMode(
      vmSavedStateDumpHandle,
      vpId,
      enabled,
    );

late final _GetNestedVirtualizationMode =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Pointer<Int32> enabled,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Int32> enabled,
)>('GetNestedVirtualizationMode');

int GetPagingMode(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Int32> pagingMode,
) =>
    _GetPagingMode(
      vmSavedStateDumpHandle,
      vpId,
      pagingMode,
    );

late final _GetPagingMode = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Pointer<Int32> pagingMode,
),
    int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Int32> pagingMode,
)>('GetPagingMode');

int GetRegisterValue(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  int registerId,
  Pointer<VIRTUAL_PROCESSOR_REGISTER> registerValue,
) =>
    _GetRegisterValue(
      vmSavedStateDumpHandle,
      vpId,
      registerId,
      registerValue,
    );

late final _GetRegisterValue = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Uint32 registerId,
  Pointer<VIRTUAL_PROCESSOR_REGISTER> registerValue,
),
    int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  int registerId,
  Pointer<VIRTUAL_PROCESSOR_REGISTER> registerValue,
)>('GetRegisterValue');

int GetSavedStateSymbolFieldInfo(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Utf8> typeName,
  Pointer<Pointer<Utf16>> typeFieldInfoMap,
) =>
    _GetSavedStateSymbolFieldInfo(
      vmSavedStateDumpHandle,
      vpId,
      typeName,
      typeFieldInfoMap,
    );

late final _GetSavedStateSymbolFieldInfo =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Pointer<Utf8> typeName,
  Pointer<Pointer<Utf16>> typeFieldInfoMap,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Utf8> typeName,
  Pointer<Pointer<Utf16>> typeFieldInfoMap,
)>('GetSavedStateSymbolFieldInfo');

int GetSavedStateSymbolProviderHandle(
  Pointer vmSavedStateDumpHandle,
) =>
    _GetSavedStateSymbolProviderHandle(
      vmSavedStateDumpHandle,
    );

late final _GetSavedStateSymbolProviderHandle =
    _vmsavedstatedumpprovider.lookupFunction<
        IntPtr Function(
  Pointer vmSavedStateDumpHandle,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
)>('GetSavedStateSymbolProviderHandle');

int GetSavedStateSymbolTypeSize(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Utf8> typeName,
  Pointer<Uint32> size,
) =>
    _GetSavedStateSymbolTypeSize(
      vmSavedStateDumpHandle,
      vpId,
      typeName,
      size,
    );

late final _GetSavedStateSymbolTypeSize =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Pointer<Utf8> typeName,
  Pointer<Uint32> size,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Utf8> typeName,
  Pointer<Uint32> size,
)>('GetSavedStateSymbolTypeSize');

int GetVpCount(
  Pointer vmSavedStateDumpHandle,
  Pointer<Uint32> vpCount,
) =>
    _GetVpCount(
      vmSavedStateDumpHandle,
      vpCount,
    );

late final _GetVpCount = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Uint32> vpCount,
),
    int Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Uint32> vpCount,
)>('GetVpCount');

int GuestPhysicalAddressToRawSavedMemoryOffset(
  Pointer vmSavedStateDumpHandle,
  int physicalAddress,
  Pointer<Uint64> rawSavedMemoryOffset,
) =>
    _GuestPhysicalAddressToRawSavedMemoryOffset(
      vmSavedStateDumpHandle,
      physicalAddress,
      rawSavedMemoryOffset,
    );

late final _GuestPhysicalAddressToRawSavedMemoryOffset =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint64 physicalAddress,
  Pointer<Uint64> rawSavedMemoryOffset,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  int physicalAddress,
  Pointer<Uint64> rawSavedMemoryOffset,
)>('GuestPhysicalAddressToRawSavedMemoryOffset');

int GuestVirtualAddressToPhysicalAddress(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  int virtualAddress,
  Pointer<Uint64> physicalAddress,
  Pointer<Uint64> unmappedRegionSize,
) =>
    _GuestVirtualAddressToPhysicalAddress(
      vmSavedStateDumpHandle,
      vpId,
      virtualAddress,
      physicalAddress,
      unmappedRegionSize,
    );

late final _GuestVirtualAddressToPhysicalAddress =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Uint64 virtualAddress,
  Pointer<Uint64> physicalAddress,
  Pointer<Uint64> unmappedRegionSize,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  int virtualAddress,
  Pointer<Uint64> physicalAddress,
  Pointer<Uint64> unmappedRegionSize,
)>('GuestVirtualAddressToPhysicalAddress');

int InKernelSpace(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Int32> inKernelSpace,
) =>
    _InKernelSpace(
      vmSavedStateDumpHandle,
      vpId,
      inKernelSpace,
    );

late final _InKernelSpace = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Pointer<Int32> inKernelSpace,
),
    int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Int32> inKernelSpace,
)>('InKernelSpace');

int IsActiveVirtualTrustLevelEnabled(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Int32> activeVirtualTrustLevelEnabled,
) =>
    _IsActiveVirtualTrustLevelEnabled(
      vmSavedStateDumpHandle,
      vpId,
      activeVirtualTrustLevelEnabled,
    );

late final _IsActiveVirtualTrustLevelEnabled =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Pointer<Int32> activeVirtualTrustLevelEnabled,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Int32> activeVirtualTrustLevelEnabled,
)>('IsActiveVirtualTrustLevelEnabled');

int IsNestedVirtualizationEnabled(
  Pointer vmSavedStateDumpHandle,
  Pointer<Int32> enabled,
) =>
    _IsNestedVirtualizationEnabled(
      vmSavedStateDumpHandle,
      enabled,
    );

late final _IsNestedVirtualizationEnabled =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Int32> enabled,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Int32> enabled,
)>('IsNestedVirtualizationEnabled');

int LoadSavedStateFile(
  Pointer<Utf16> vmrsFile,
  Pointer<Pointer> vmSavedStateDumpHandle,
) =>
    _LoadSavedStateFile(
      vmrsFile,
      vmSavedStateDumpHandle,
    );

late final _LoadSavedStateFile = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer<Utf16> vmrsFile,
  Pointer<Pointer> vmSavedStateDumpHandle,
),
    int Function(
  Pointer<Utf16> vmrsFile,
  Pointer<Pointer> vmSavedStateDumpHandle,
)>('LoadSavedStateFile');

int LoadSavedStateFiles(
  Pointer<Utf16> binFile,
  Pointer<Utf16> vsvFile,
  Pointer<Pointer> vmSavedStateDumpHandle,
) =>
    _LoadSavedStateFiles(
      binFile,
      vsvFile,
      vmSavedStateDumpHandle,
    );

late final _LoadSavedStateFiles = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer<Utf16> binFile,
  Pointer<Utf16> vsvFile,
  Pointer<Pointer> vmSavedStateDumpHandle,
),
    int Function(
  Pointer<Utf16> binFile,
  Pointer<Utf16> vsvFile,
  Pointer<Pointer> vmSavedStateDumpHandle,
)>('LoadSavedStateFiles');

int LoadSavedStateModuleSymbols(
  Pointer vmSavedStateDumpHandle,
  Pointer<Utf8> imageName,
  Pointer<Utf8> moduleName,
  int baseAddress,
  int sizeOfBase,
) =>
    _LoadSavedStateModuleSymbols(
      vmSavedStateDumpHandle,
      imageName,
      moduleName,
      baseAddress,
      sizeOfBase,
    );

late final _LoadSavedStateModuleSymbols =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Utf8> imageName,
  Pointer<Utf8> moduleName,
  Uint64 baseAddress,
  Uint32 sizeOfBase,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Utf8> imageName,
  Pointer<Utf8> moduleName,
  int baseAddress,
  int sizeOfBase,
)>('LoadSavedStateModuleSymbols');

int LoadSavedStateModuleSymbolsEx(
  Pointer vmSavedStateDumpHandle,
  Pointer<Utf8> imageName,
  int imageTimestamp,
  Pointer<Utf8> moduleName,
  int baseAddress,
  int sizeOfBase,
) =>
    _LoadSavedStateModuleSymbolsEx(
      vmSavedStateDumpHandle,
      imageName,
      imageTimestamp,
      moduleName,
      baseAddress,
      sizeOfBase,
    );

late final _LoadSavedStateModuleSymbolsEx =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Utf8> imageName,
  Uint32 imageTimestamp,
  Pointer<Utf8> moduleName,
  Uint64 baseAddress,
  Uint32 sizeOfBase,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Utf8> imageName,
  int imageTimestamp,
  Pointer<Utf8> moduleName,
  int baseAddress,
  int sizeOfBase,
)>('LoadSavedStateModuleSymbolsEx');

int LoadSavedStateSymbolProvider(
  Pointer vmSavedStateDumpHandle,
  Pointer<Utf16> userSymbols,
  int force,
) =>
    _LoadSavedStateSymbolProvider(
      vmSavedStateDumpHandle,
      userSymbols,
      force,
    );

late final _LoadSavedStateSymbolProvider =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Utf16> userSymbols,
  Int32 force,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<Utf16> userSymbols,
  int force,
)>('LoadSavedStateSymbolProvider');

int LocateSavedStateFiles(
  Pointer<Utf16> vmName,
  Pointer<Utf16> snapshotName,
  Pointer<Pointer<Utf16>> binPath,
  Pointer<Pointer<Utf16>> vsvPath,
  Pointer<Pointer<Utf16>> vmrsPath,
) =>
    _LocateSavedStateFiles(
      vmName,
      snapshotName,
      binPath,
      vsvPath,
      vmrsPath,
    );

late final _LocateSavedStateFiles = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer<Utf16> vmName,
  Pointer<Utf16> snapshotName,
  Pointer<Pointer<Utf16>> binPath,
  Pointer<Pointer<Utf16>> vsvPath,
  Pointer<Pointer<Utf16>> vmrsPath,
),
    int Function(
  Pointer<Utf16> vmName,
  Pointer<Utf16> snapshotName,
  Pointer<Pointer<Utf16>> binPath,
  Pointer<Pointer<Utf16>> vsvPath,
  Pointer<Pointer<Utf16>> vmrsPath,
)>('LocateSavedStateFiles');

int ReadGuestPhysicalAddress(
  Pointer vmSavedStateDumpHandle,
  int physicalAddress,
  Pointer buffer,
  int bufferSize,
  Pointer<Uint32> bytesRead,
) =>
    _ReadGuestPhysicalAddress(
      vmSavedStateDumpHandle,
      physicalAddress,
      buffer,
      bufferSize,
      bytesRead,
    );

late final _ReadGuestPhysicalAddress = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint64 physicalAddress,
  Pointer buffer,
  Uint32 bufferSize,
  Pointer<Uint32> bytesRead,
),
    int Function(
  Pointer vmSavedStateDumpHandle,
  int physicalAddress,
  Pointer buffer,
  int bufferSize,
  Pointer<Uint32> bytesRead,
)>('ReadGuestPhysicalAddress');

int ReadGuestRawSavedMemory(
  Pointer vmSavedStateDumpHandle,
  int rawSavedMemoryOffset,
  Pointer buffer,
  int bufferSize,
  Pointer<Uint32> bytesRead,
) =>
    _ReadGuestRawSavedMemory(
      vmSavedStateDumpHandle,
      rawSavedMemoryOffset,
      buffer,
      bufferSize,
      bytesRead,
    );

late final _ReadGuestRawSavedMemory = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint64 rawSavedMemoryOffset,
  Pointer buffer,
  Uint32 bufferSize,
  Pointer<Uint32> bytesRead,
),
    int Function(
  Pointer vmSavedStateDumpHandle,
  int rawSavedMemoryOffset,
  Pointer buffer,
  int bufferSize,
  Pointer<Uint32> bytesRead,
)>('ReadGuestRawSavedMemory');

int ReadSavedStateGlobalVariable(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Utf8> globalName,
  Pointer buffer,
  int bufferSize,
) =>
    _ReadSavedStateGlobalVariable(
      vmSavedStateDumpHandle,
      vpId,
      globalName,
      buffer,
      bufferSize,
    );

late final _ReadSavedStateGlobalVariable =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Pointer<Utf8> globalName,
  Pointer buffer,
  Uint32 bufferSize,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Utf8> globalName,
  Pointer buffer,
  int bufferSize,
)>('ReadSavedStateGlobalVariable');

int ReleaseSavedStateFiles(
  Pointer vmSavedStateDumpHandle,
) =>
    _ReleaseSavedStateFiles(
      vmSavedStateDumpHandle,
    );

late final _ReleaseSavedStateFiles = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer vmSavedStateDumpHandle,
),
    int Function(
  Pointer vmSavedStateDumpHandle,
)>('ReleaseSavedStateFiles');

int ReleaseSavedStateSymbolProvider(
  Pointer vmSavedStateDumpHandle,
) =>
    _ReleaseSavedStateSymbolProvider(
      vmSavedStateDumpHandle,
    );

late final _ReleaseSavedStateSymbolProvider =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
)>('ReleaseSavedStateSymbolProvider');

int ResolveSavedStateGlobalVariableAddress(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Utf8> globalName,
  Pointer<Uint64> virtualAddress,
  Pointer<Uint32> size,
) =>
    _ResolveSavedStateGlobalVariableAddress(
      vmSavedStateDumpHandle,
      vpId,
      globalName,
      virtualAddress,
      size,
    );

late final _ResolveSavedStateGlobalVariableAddress =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Pointer<Utf8> globalName,
  Pointer<Uint64> virtualAddress,
  Pointer<Uint32> size,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  Pointer<Utf8> globalName,
  Pointer<Uint64> virtualAddress,
  Pointer<Uint32> size,
)>('ResolveSavedStateGlobalVariableAddress');

int ScanMemoryForDosImages(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  int startAddress,
  int endAddress,
  Pointer callbackContext,
  Pointer<NativeFunction<FOUND_IMAGE_CALLBACK>> foundImageCallback,
  Pointer<Uint64> standaloneAddress,
  int standaloneAddressCount,
) =>
    _ScanMemoryForDosImages(
      vmSavedStateDumpHandle,
      vpId,
      startAddress,
      endAddress,
      callbackContext,
      foundImageCallback,
      standaloneAddress,
      standaloneAddressCount,
    );

late final _ScanMemoryForDosImages = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint32 vpId,
  Uint64 startAddress,
  Uint64 endAddress,
  Pointer callbackContext,
  Pointer<NativeFunction<FOUND_IMAGE_CALLBACK>> foundImageCallback,
  Pointer<Uint64> standaloneAddress,
  Uint32 standaloneAddressCount,
),
    int Function(
  Pointer vmSavedStateDumpHandle,
  int vpId,
  int startAddress,
  int endAddress,
  Pointer callbackContext,
  Pointer<NativeFunction<FOUND_IMAGE_CALLBACK>> foundImageCallback,
  Pointer<Uint64> standaloneAddress,
  int standaloneAddressCount,
)>('ScanMemoryForDosImages');

int SetMemoryBlockCacheLimit(
  Pointer vmSavedStateDumpHandle,
  int memoryBlockCacheLimit,
) =>
    _SetMemoryBlockCacheLimit(
      vmSavedStateDumpHandle,
      memoryBlockCacheLimit,
    );

late final _SetMemoryBlockCacheLimit = _vmsavedstatedumpprovider.lookupFunction<
    Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Uint64 memoryBlockCacheLimit,
),
    int Function(
  Pointer vmSavedStateDumpHandle,
  int memoryBlockCacheLimit,
)>('SetMemoryBlockCacheLimit');

int SetSavedStateSymbolProviderDebugInfoCallback(
  Pointer vmSavedStateDumpHandle,
  Pointer<NativeFunction<GUEST_SYMBOLS_PROVIDER_DEBUG_INFO_CALLBACK>> Callback,
) =>
    _SetSavedStateSymbolProviderDebugInfoCallback(
      vmSavedStateDumpHandle,
      Callback,
    );

late final _SetSavedStateSymbolProviderDebugInfoCallback =
    _vmsavedstatedumpprovider.lookupFunction<
        Int32 Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<NativeFunction<GUEST_SYMBOLS_PROVIDER_DEBUG_INFO_CALLBACK>> Callback,
),
        int Function(
  Pointer vmSavedStateDumpHandle,
  Pointer<NativeFunction<GUEST_SYMBOLS_PROVIDER_DEBUG_INFO_CALLBACK>> Callback,
)>('SetSavedStateSymbolProviderDebugInfoCallback');
