/// {@category Enum}
class GUEST_OS_MICROSOFT_IDS {
  static const GuestOsMicrosoftUndefined = 0x00000000;
  static const GuestOsMicrosoftMSDOS = 0x00000001;
  static const GuestOsMicrosoftWindows3x = 0x00000002;
  static const GuestOsMicrosoftWindows9x = 0x00000003;
  static const GuestOsMicrosoftWindowsNT = 0x00000004;
  static const GuestOsMicrosoftWindowsCE = 0x00000005;
}

/// {@category Enum}
class GUEST_OS_OPENSOURCE_IDS {
  static const GuestOsOpenSourceUndefined = 0x00000000;
  static const GuestOsOpenSourceLinux = 0x00000001;
  static const GuestOsOpenSourceFreeBSD = 0x00000002;
  static const GuestOsOpenSourceXen = 0x00000003;
  static const GuestOsOpenSourceIllumos = 0x00000004;
}

/// {@category Enum}
class GUEST_OS_VENDOR {
  static const GuestOsVendorUndefined = 0x00000000;
  static const GuestOsVendorMicrosoft = 0x00000001;
  static const GuestOsVendorHPE = 0x00000002;
  static const GuestOsVendorLANCOM = 0x00000200;
}

/// {@category Enum}
class HDV_DEVICE_TYPE {
  static const HdvDeviceTypeUndefined = 0x00000000;
  static const HdvDeviceTypePCI = 0x00000001;
}

/// {@category Enum}
class HDV_DOORBELL_FLAGS {
  static const HDV_DOORBELL_FLAG_TRIGGER_SIZE_ANY = 0x00000000;
  static const HDV_DOORBELL_FLAG_TRIGGER_SIZE_BYTE = 0x00000001;
  static const HDV_DOORBELL_FLAG_TRIGGER_SIZE_WORD = 0x00000002;
  static const HDV_DOORBELL_FLAG_TRIGGER_SIZE_DWORD = 0x00000003;
  static const HDV_DOORBELL_FLAG_TRIGGER_SIZE_QWORD = 0x00000004;
  static const HDV_DOORBELL_FLAG_TRIGGER_ANY_VALUE = 0x80000000;
}

/// {@category Enum}
class HDV_MMIO_MAPPING_FLAGS {
  static const HdvMmioMappingFlagNone = 0x00000000;
  static const HdvMmioMappingFlagWriteable = 0x00000001;
  static const HdvMmioMappingFlagExecutable = 0x00000002;
}

/// {@category Enum}
class HDV_PCI_BAR_SELECTOR {
  static const HDV_PCI_BAR0 = 0x00000000;
  static const HDV_PCI_BAR1 = 0x00000001;
  static const HDV_PCI_BAR2 = 0x00000002;
  static const HDV_PCI_BAR3 = 0x00000003;
  static const HDV_PCI_BAR4 = 0x00000004;
  static const HDV_PCI_BAR5 = 0x00000005;
}

/// {@category Enum}
class HDV_PCI_INTERFACE_VERSION {
  static const HdvPciDeviceInterfaceVersionInvalid = 0x00000000;
  static const HdvPciDeviceInterfaceVersion1 = 0x00000001;
}

/// {@category Enum}
class PAGING_MODE {
  static const Paging_Invalid = 0x00000000;
  static const Paging_NonPaged = 0x00000001;
  static const Paging_32Bit = 0x00000002;
  static const Paging_Pae = 0x00000003;
  static const Paging_Long = 0x00000004;
  static const Paging_Armv8 = 0x00000005;
}

/// {@category Enum}
class REGISTER_ID {
  static const X64_RegisterRax = 0x00000000;
  static const X64_RegisterRcx = 0x00000001;
  static const X64_RegisterRdx = 0x00000002;
  static const X64_RegisterRbx = 0x00000003;
  static const X64_RegisterRsp = 0x00000004;
  static const X64_RegisterRbp = 0x00000005;
  static const X64_RegisterRsi = 0x00000006;
  static const X64_RegisterRdi = 0x00000007;
  static const X64_RegisterR8 = 0x00000008;
  static const X64_RegisterR9 = 0x00000009;
  static const X64_RegisterR10 = 0x0000000a;
  static const X64_RegisterR11 = 0x0000000b;
  static const X64_RegisterR12 = 0x0000000c;
  static const X64_RegisterR13 = 0x0000000d;
  static const X64_RegisterR14 = 0x0000000e;
  static const X64_RegisterR15 = 0x0000000f;
  static const X64_RegisterRip = 0x00000010;
  static const X64_RegisterRFlags = 0x00000011;
  static const X64_RegisterXmm0 = 0x00000012;
  static const X64_RegisterXmm1 = 0x00000013;
  static const X64_RegisterXmm2 = 0x00000014;
  static const X64_RegisterXmm3 = 0x00000015;
  static const X64_RegisterXmm4 = 0x00000016;
  static const X64_RegisterXmm5 = 0x00000017;
  static const X64_RegisterXmm6 = 0x00000018;
  static const X64_RegisterXmm7 = 0x00000019;
  static const X64_RegisterXmm8 = 0x0000001a;
  static const X64_RegisterXmm9 = 0x0000001b;
  static const X64_RegisterXmm10 = 0x0000001c;
  static const X64_RegisterXmm11 = 0x0000001d;
  static const X64_RegisterXmm12 = 0x0000001e;
  static const X64_RegisterXmm13 = 0x0000001f;
  static const X64_RegisterXmm14 = 0x00000020;
  static const X64_RegisterXmm15 = 0x00000021;
  static const X64_RegisterFpMmx0 = 0x00000022;
  static const X64_RegisterFpMmx1 = 0x00000023;
  static const X64_RegisterFpMmx2 = 0x00000024;
  static const X64_RegisterFpMmx3 = 0x00000025;
  static const X64_RegisterFpMmx4 = 0x00000026;
  static const X64_RegisterFpMmx5 = 0x00000027;
  static const X64_RegisterFpMmx6 = 0x00000028;
  static const X64_RegisterFpMmx7 = 0x00000029;
  static const X64_RegisterFpControlStatus = 0x0000002a;
  static const X64_RegisterXmmControlStatus = 0x0000002b;
  static const X64_RegisterCr0 = 0x0000002c;
  static const X64_RegisterCr2 = 0x0000002d;
  static const X64_RegisterCr3 = 0x0000002e;
  static const X64_RegisterCr4 = 0x0000002f;
  static const X64_RegisterCr8 = 0x00000030;
  static const X64_RegisterEfer = 0x00000031;
  static const X64_RegisterDr0 = 0x00000032;
  static const X64_RegisterDr1 = 0x00000033;
  static const X64_RegisterDr2 = 0x00000034;
  static const X64_RegisterDr3 = 0x00000035;
  static const X64_RegisterDr6 = 0x00000036;
  static const X64_RegisterDr7 = 0x00000037;
  static const X64_RegisterEs = 0x00000038;
  static const X64_RegisterCs = 0x00000039;
  static const X64_RegisterSs = 0x0000003a;
  static const X64_RegisterDs = 0x0000003b;
  static const X64_RegisterFs = 0x0000003c;
  static const X64_RegisterGs = 0x0000003d;
  static const X64_RegisterLdtr = 0x0000003e;
  static const X64_RegisterTr = 0x0000003f;
  static const X64_RegisterIdtr = 0x00000040;
  static const X64_RegisterGdtr = 0x00000041;
  static const X64_RegisterMax = 0x00000042;
  static const ARM64_RegisterX0 = 0x00000043;
  static const ARM64_RegisterX1 = 0x00000044;
  static const ARM64_RegisterX2 = 0x00000045;
  static const ARM64_RegisterX3 = 0x00000046;
  static const ARM64_RegisterX4 = 0x00000047;
  static const ARM64_RegisterX5 = 0x00000048;
  static const ARM64_RegisterX6 = 0x00000049;
  static const ARM64_RegisterX7 = 0x0000004a;
  static const ARM64_RegisterX8 = 0x0000004b;
  static const ARM64_RegisterX9 = 0x0000004c;
  static const ARM64_RegisterX10 = 0x0000004d;
  static const ARM64_RegisterX11 = 0x0000004e;
  static const ARM64_RegisterX12 = 0x0000004f;
  static const ARM64_RegisterX13 = 0x00000050;
  static const ARM64_RegisterX14 = 0x00000051;
  static const ARM64_RegisterX15 = 0x00000052;
  static const ARM64_RegisterX16 = 0x00000053;
  static const ARM64_RegisterX17 = 0x00000054;
  static const ARM64_RegisterX18 = 0x00000055;
  static const ARM64_RegisterX19 = 0x00000056;
  static const ARM64_RegisterX20 = 0x00000057;
  static const ARM64_RegisterX21 = 0x00000058;
  static const ARM64_RegisterX22 = 0x00000059;
  static const ARM64_RegisterX23 = 0x0000005a;
  static const ARM64_RegisterX24 = 0x0000005b;
  static const ARM64_RegisterX25 = 0x0000005c;
  static const ARM64_RegisterX26 = 0x0000005d;
  static const ARM64_RegisterX27 = 0x0000005e;
  static const ARM64_RegisterX28 = 0x0000005f;
  static const ARM64_RegisterXFp = 0x00000060;
  static const ARM64_RegisterXLr = 0x00000061;
  static const ARM64_RegisterPc = 0x00000062;
  static const ARM64_RegisterSpEl0 = 0x00000063;
  static const ARM64_RegisterSpEl1 = 0x00000064;
  static const ARM64_RegisterCpsr = 0x00000065;
  static const ARM64_RegisterQ0 = 0x00000066;
  static const ARM64_RegisterQ1 = 0x00000067;
  static const ARM64_RegisterQ2 = 0x00000068;
  static const ARM64_RegisterQ3 = 0x00000069;
  static const ARM64_RegisterQ4 = 0x0000006a;
  static const ARM64_RegisterQ5 = 0x0000006b;
  static const ARM64_RegisterQ6 = 0x0000006c;
  static const ARM64_RegisterQ7 = 0x0000006d;
  static const ARM64_RegisterQ8 = 0x0000006e;
  static const ARM64_RegisterQ9 = 0x0000006f;
  static const ARM64_RegisterQ10 = 0x00000070;
  static const ARM64_RegisterQ11 = 0x00000071;
  static const ARM64_RegisterQ12 = 0x00000072;
  static const ARM64_RegisterQ13 = 0x00000073;
  static const ARM64_RegisterQ14 = 0x00000074;
  static const ARM64_RegisterQ15 = 0x00000075;
  static const ARM64_RegisterQ16 = 0x00000076;
  static const ARM64_RegisterQ17 = 0x00000077;
  static const ARM64_RegisterQ18 = 0x00000078;
  static const ARM64_RegisterQ19 = 0x00000079;
  static const ARM64_RegisterQ20 = 0x0000007a;
  static const ARM64_RegisterQ21 = 0x0000007b;
  static const ARM64_RegisterQ22 = 0x0000007c;
  static const ARM64_RegisterQ23 = 0x0000007d;
  static const ARM64_RegisterQ24 = 0x0000007e;
  static const ARM64_RegisterQ25 = 0x0000007f;
  static const ARM64_RegisterQ26 = 0x00000080;
  static const ARM64_RegisterQ27 = 0x00000081;
  static const ARM64_RegisterQ28 = 0x00000082;
  static const ARM64_RegisterQ29 = 0x00000083;
  static const ARM64_RegisterQ30 = 0x00000084;
  static const ARM64_RegisterQ31 = 0x00000085;
  static const ARM64_RegisterFpStatus = 0x00000086;
  static const ARM64_RegisterFpControl = 0x00000087;
  static const ARM64_RegisterEsrEl1 = 0x00000088;
  static const ARM64_RegisterSpsrEl1 = 0x00000089;
  static const ARM64_RegisterFarEl1 = 0x0000008a;
  static const ARM64_RegisterParEl1 = 0x0000008b;
  static const ARM64_RegisterElrEl1 = 0x0000008c;
  static const ARM64_RegisterTtbr0El1 = 0x0000008d;
  static const ARM64_RegisterTtbr1El1 = 0x0000008e;
  static const ARM64_RegisterVbarEl1 = 0x0000008f;
  static const ARM64_RegisterSctlrEl1 = 0x00000090;
  static const ARM64_RegisterActlrEl1 = 0x00000091;
  static const ARM64_RegisterTcrEl1 = 0x00000092;
  static const ARM64_RegisterMairEl1 = 0x00000093;
  static const ARM64_RegisterAmairEl1 = 0x00000094;
  static const ARM64_RegisterTpidrEl0 = 0x00000095;
  static const ARM64_RegisterTpidrroEl0 = 0x00000096;
  static const ARM64_RegisterTpidrEl1 = 0x00000097;
  static const ARM64_RegisterContextIdrEl1 = 0x00000098;
  static const ARM64_RegisterCpacrEl1 = 0x00000099;
  static const ARM64_RegisterCsselrEl1 = 0x0000009a;
  static const ARM64_RegisterCntkctlEl1 = 0x0000009b;
  static const ARM64_RegisterCntvCvalEl0 = 0x0000009c;
  static const ARM64_RegisterCntvCtlEl0 = 0x0000009d;
  static const ARM64_RegisterMax = 0x0000009e;
}

/// {@category Enum}
class VIRTUAL_PROCESSOR_ARCH {
  static const Arch_Unknown = 0x00000000;
  static const Arch_x86 = 0x00000001;
  static const Arch_x64 = 0x00000002;
  static const Arch_Armv8 = 0x00000003;
}

/// {@category Enum}
class VIRTUAL_PROCESSOR_VENDOR {
  static const ProcessorVendor_Unknown = 0x00000000;
  static const ProcessorVendor_Amd = 0x00000001;
  static const ProcessorVendor_Intel = 0x00000002;
  static const ProcessorVendor_Hygon = 0x00000003;
  static const ProcessorVendor_Arm = 0x00000004;
}

/// {@category Enum}
class WHV_ADVISE_GPA_RANGE_CODE {
  static const WHvAdviseGpaRangeCodePopulate = 0x00000000;
  static const WHvAdviseGpaRangeCodePin = 0x00000001;
  static const WHvAdviseGpaRangeCodeUnpin = 0x00000002;
}

/// {@category Enum}
class WHV_ALLOCATE_VPCI_RESOURCE_FLAGS {
  static const WHvAllocateVpciResourceFlagNone = 0x00000000;
  static const WHvAllocateVpciResourceFlagAllowDirectP2P = 0x00000001;
}

/// {@category Enum}
class WHV_CACHE_TYPE {
  static const WHvCacheTypeUncached = 0x00000000;
  static const WHvCacheTypeWriteCombining = 0x00000001;
  static const WHvCacheTypeWriteThrough = 0x00000004;
  static const WHvCacheTypeWriteProtected = 0x00000005;
  static const WHvCacheTypeWriteBack = 0x00000006;
}

/// {@category Enum}
class WHV_CAPABILITY_CODE {
  static const WHvCapabilityCodeHypervisorPresent = 0x00000000;
  static const WHvCapabilityCodeFeatures = 0x00000001;
  static const WHvCapabilityCodeExtendedVmExits = 0x00000002;
  static const WHvCapabilityCodeExceptionExitBitmap = 0x00000003;
  static const WHvCapabilityCodeX64MsrExitBitmap = 0x00000004;
  static const WHvCapabilityCodeGpaRangePopulateFlags = 0x00000005;
  static const WHvCapabilityCodeSchedulerFeatures = 0x00000006;
  static const WHvCapabilityCodeProcessorVendor = 0x00001000;
  static const WHvCapabilityCodeProcessorFeatures = 0x00001001;
  static const WHvCapabilityCodeProcessorClFlushSize = 0x00001002;
  static const WHvCapabilityCodeProcessorXsaveFeatures = 0x00001003;
  static const WHvCapabilityCodeProcessorClockFrequency = 0x00001004;
  static const WHvCapabilityCodeInterruptClockFrequency = 0x00001005;
  static const WHvCapabilityCodeProcessorFeaturesBanks = 0x00001006;
  static const WHvCapabilityCodeProcessorFrequencyCap = 0x00001007;
  static const WHvCapabilityCodeSyntheticProcessorFeaturesBanks = 0x00001008;
  static const WHvCapabilityCodeProcessorPerfmonFeatures = 0x00001009;
}

/// {@category Enum}
class WHV_CREATE_VPCI_DEVICE_FLAGS {
  static const WHvCreateVpciDeviceFlagNone = 0x00000000;
  static const WHvCreateVpciDeviceFlagPhysicallyBacked = 0x00000001;
  static const WHvCreateVpciDeviceFlagUseLogicalInterrupts = 0x00000002;
}

/// {@category Enum}
class WHV_EXCEPTION_TYPE {
  static const WHvX64ExceptionTypeDivideErrorFault = 0x00000000;
  static const WHvX64ExceptionTypeDebugTrapOrFault = 0x00000001;
  static const WHvX64ExceptionTypeBreakpointTrap = 0x00000003;
  static const WHvX64ExceptionTypeOverflowTrap = 0x00000004;
  static const WHvX64ExceptionTypeBoundRangeFault = 0x00000005;
  static const WHvX64ExceptionTypeInvalidOpcodeFault = 0x00000006;
  static const WHvX64ExceptionTypeDeviceNotAvailableFault = 0x00000007;
  static const WHvX64ExceptionTypeDoubleFaultAbort = 0x00000008;
  static const WHvX64ExceptionTypeInvalidTaskStateSegmentFault = 0x0000000a;
  static const WHvX64ExceptionTypeSegmentNotPresentFault = 0x0000000b;
  static const WHvX64ExceptionTypeStackFault = 0x0000000c;
  static const WHvX64ExceptionTypeGeneralProtectionFault = 0x0000000d;
  static const WHvX64ExceptionTypePageFault = 0x0000000e;
  static const WHvX64ExceptionTypeFloatingPointErrorFault = 0x00000010;
  static const WHvX64ExceptionTypeAlignmentCheckFault = 0x00000011;
  static const WHvX64ExceptionTypeMachineCheckAbort = 0x00000012;
  static const WHvX64ExceptionTypeSimdFloatingPointFault = 0x00000013;
}

/// {@category Enum}
class WHV_INTERRUPT_DESTINATION_MODE {
  static const WHvX64InterruptDestinationModePhysical = 0x00000000;
  static const WHvX64InterruptDestinationModeLogical = 0x00000001;
}

/// {@category Enum}
class WHV_INTERRUPT_TRIGGER_MODE {
  static const WHvX64InterruptTriggerModeEdge = 0x00000000;
  static const WHvX64InterruptTriggerModeLevel = 0x00000001;
}

/// {@category Enum}
class WHV_INTERRUPT_TYPE {
  static const WHvX64InterruptTypeFixed = 0x00000000;
  static const WHvX64InterruptTypeLowestPriority = 0x00000001;
  static const WHvX64InterruptTypeNmi = 0x00000004;
  static const WHvX64InterruptTypeInit = 0x00000005;
  static const WHvX64InterruptTypeSipi = 0x00000006;
  static const WHvX64InterruptTypeLocalInt1 = 0x00000009;
}

/// {@category Enum}
class WHV_MAP_GPA_RANGE_FLAGS {
  static const WHvMapGpaRangeFlagNone = 0x00000000;
  static const WHvMapGpaRangeFlagRead = 0x00000001;
  static const WHvMapGpaRangeFlagWrite = 0x00000002;
  static const WHvMapGpaRangeFlagExecute = 0x00000004;
  static const WHvMapGpaRangeFlagTrackDirtyPages = 0x00000008;
}

/// {@category Enum}
class WHV_MEMORY_ACCESS_TYPE {
  static const WHvMemoryAccessRead = 0x00000000;
  static const WHvMemoryAccessWrite = 0x00000001;
  static const WHvMemoryAccessExecute = 0x00000002;
}

/// {@category Enum}
class WHV_MSR_ACTION {
  static const WHvMsrActionArchitectureDefault = 0x00000000;
  static const WHvMsrActionIgnoreWriteReadZero = 0x00000001;
  static const WHvMsrActionExit = 0x00000002;
}

/// {@category Enum}
class WHV_NOTIFICATION_PORT_PROPERTY_CODE {
  static const WHvNotificationPortPropertyPreferredTargetVp = 0x00000001;
  static const WHvNotificationPortPropertyPreferredTargetDuration = 0x00000005;
}

/// {@category Enum}
class WHV_NOTIFICATION_PORT_TYPE {
  static const WHvNotificationPortTypeEvent = 0x00000002;
  static const WHvNotificationPortTypeDoorbell = 0x00000004;
}

/// {@category Enum}
class WHV_PARTITION_COUNTER_SET {
  static const WHvPartitionCounterSetMemory = 0x00000000;
}

/// {@category Enum}
class WHV_PARTITION_PROPERTY_CODE {
  static const WHvPartitionPropertyCodeExtendedVmExits = 0x00000001;
  static const WHvPartitionPropertyCodeExceptionExitBitmap = 0x00000002;
  static const WHvPartitionPropertyCodeSeparateSecurityDomain = 0x00000003;
  static const WHvPartitionPropertyCodeNestedVirtualization = 0x00000004;
  static const WHvPartitionPropertyCodeX64MsrExitBitmap = 0x00000005;
  static const WHvPartitionPropertyCodePrimaryNumaNode = 0x00000006;
  static const WHvPartitionPropertyCodeCpuReserve = 0x00000007;
  static const WHvPartitionPropertyCodeCpuCap = 0x00000008;
  static const WHvPartitionPropertyCodeCpuWeight = 0x00000009;
  static const WHvPartitionPropertyCodeCpuGroupId = 0x0000000a;
  static const WHvPartitionPropertyCodeProcessorFrequencyCap = 0x0000000b;
  static const WHvPartitionPropertyCodeAllowDeviceAssignment = 0x0000000c;
  static const WHvPartitionPropertyCodeDisableSmt = 0x0000000d;
  static const WHvPartitionPropertyCodeProcessorFeatures = 0x00001001;
  static const WHvPartitionPropertyCodeProcessorClFlushSize = 0x00001002;
  static const WHvPartitionPropertyCodeCpuidExitList = 0x00001003;
  static const WHvPartitionPropertyCodeCpuidResultList = 0x00001004;
  static const WHvPartitionPropertyCodeLocalApicEmulationMode = 0x00001005;
  static const WHvPartitionPropertyCodeProcessorXsaveFeatures = 0x00001006;
  static const WHvPartitionPropertyCodeProcessorClockFrequency = 0x00001007;
  static const WHvPartitionPropertyCodeInterruptClockFrequency = 0x00001008;
  static const WHvPartitionPropertyCodeApicRemoteReadSupport = 0x00001009;
  static const WHvPartitionPropertyCodeProcessorFeaturesBanks = 0x0000100a;
  static const WHvPartitionPropertyCodeReferenceTime = 0x0000100b;
  static const WHvPartitionPropertyCodeSyntheticProcessorFeaturesBanks =
      0x0000100c;
  static const WHvPartitionPropertyCodeCpuidResultList2 = 0x0000100d;
  static const WHvPartitionPropertyCodeProcessorPerfmonFeatures = 0x0000100e;
  static const WHvPartitionPropertyCodeMsrActionList = 0x0000100f;
  static const WHvPartitionPropertyCodeUnimplementedMsrAction = 0x00001010;
  static const WHvPartitionPropertyCodeProcessorCount = 0x00001fff;
}

/// {@category Enum}
class WHV_PROCESSOR_COUNTER_SET {
  static const WHvProcessorCounterSetRuntime = 0x00000000;
  static const WHvProcessorCounterSetIntercepts = 0x00000001;
  static const WHvProcessorCounterSetEvents = 0x00000002;
  static const WHvProcessorCounterSetApic = 0x00000003;
  static const WHvProcessorCounterSetSyntheticFeatures = 0x00000004;
}

/// {@category Enum}
class WHV_PROCESSOR_VENDOR {
  static const WHvProcessorVendorAmd = 0x00000000;
  static const WHvProcessorVendorIntel = 0x00000001;
  static const WHvProcessorVendorHygon = 0x00000002;
}

/// {@category Enum}
class WHV_REGISTER_NAME {
  static const WHvX64RegisterRax = 0x00000000;
  static const WHvX64RegisterRcx = 0x00000001;
  static const WHvX64RegisterRdx = 0x00000002;
  static const WHvX64RegisterRbx = 0x00000003;
  static const WHvX64RegisterRsp = 0x00000004;
  static const WHvX64RegisterRbp = 0x00000005;
  static const WHvX64RegisterRsi = 0x00000006;
  static const WHvX64RegisterRdi = 0x00000007;
  static const WHvX64RegisterR8 = 0x00000008;
  static const WHvX64RegisterR9 = 0x00000009;
  static const WHvX64RegisterR10 = 0x0000000a;
  static const WHvX64RegisterR11 = 0x0000000b;
  static const WHvX64RegisterR12 = 0x0000000c;
  static const WHvX64RegisterR13 = 0x0000000d;
  static const WHvX64RegisterR14 = 0x0000000e;
  static const WHvX64RegisterR15 = 0x0000000f;
  static const WHvX64RegisterRip = 0x00000010;
  static const WHvX64RegisterRflags = 0x00000011;
  static const WHvX64RegisterEs = 0x00000012;
  static const WHvX64RegisterCs = 0x00000013;
  static const WHvX64RegisterSs = 0x00000014;
  static const WHvX64RegisterDs = 0x00000015;
  static const WHvX64RegisterFs = 0x00000016;
  static const WHvX64RegisterGs = 0x00000017;
  static const WHvX64RegisterLdtr = 0x00000018;
  static const WHvX64RegisterTr = 0x00000019;
  static const WHvX64RegisterIdtr = 0x0000001a;
  static const WHvX64RegisterGdtr = 0x0000001b;
  static const WHvX64RegisterCr0 = 0x0000001c;
  static const WHvX64RegisterCr2 = 0x0000001d;
  static const WHvX64RegisterCr3 = 0x0000001e;
  static const WHvX64RegisterCr4 = 0x0000001f;
  static const WHvX64RegisterCr8 = 0x00000020;
  static const WHvX64RegisterDr0 = 0x00000021;
  static const WHvX64RegisterDr1 = 0x00000022;
  static const WHvX64RegisterDr2 = 0x00000023;
  static const WHvX64RegisterDr3 = 0x00000024;
  static const WHvX64RegisterDr6 = 0x00000025;
  static const WHvX64RegisterDr7 = 0x00000026;
  static const WHvX64RegisterXCr0 = 0x00000027;
  static const WHvX64RegisterVirtualCr0 = 0x00000028;
  static const WHvX64RegisterVirtualCr3 = 0x00000029;
  static const WHvX64RegisterVirtualCr4 = 0x0000002a;
  static const WHvX64RegisterVirtualCr8 = 0x0000002b;
  static const WHvX64RegisterXmm0 = 0x00001000;
  static const WHvX64RegisterXmm1 = 0x00001001;
  static const WHvX64RegisterXmm2 = 0x00001002;
  static const WHvX64RegisterXmm3 = 0x00001003;
  static const WHvX64RegisterXmm4 = 0x00001004;
  static const WHvX64RegisterXmm5 = 0x00001005;
  static const WHvX64RegisterXmm6 = 0x00001006;
  static const WHvX64RegisterXmm7 = 0x00001007;
  static const WHvX64RegisterXmm8 = 0x00001008;
  static const WHvX64RegisterXmm9 = 0x00001009;
  static const WHvX64RegisterXmm10 = 0x0000100a;
  static const WHvX64RegisterXmm11 = 0x0000100b;
  static const WHvX64RegisterXmm12 = 0x0000100c;
  static const WHvX64RegisterXmm13 = 0x0000100d;
  static const WHvX64RegisterXmm14 = 0x0000100e;
  static const WHvX64RegisterXmm15 = 0x0000100f;
  static const WHvX64RegisterFpMmx0 = 0x00001010;
  static const WHvX64RegisterFpMmx1 = 0x00001011;
  static const WHvX64RegisterFpMmx2 = 0x00001012;
  static const WHvX64RegisterFpMmx3 = 0x00001013;
  static const WHvX64RegisterFpMmx4 = 0x00001014;
  static const WHvX64RegisterFpMmx5 = 0x00001015;
  static const WHvX64RegisterFpMmx6 = 0x00001016;
  static const WHvX64RegisterFpMmx7 = 0x00001017;
  static const WHvX64RegisterFpControlStatus = 0x00001018;
  static const WHvX64RegisterXmmControlStatus = 0x00001019;
  static const WHvX64RegisterTsc = 0x00002000;
  static const WHvX64RegisterEfer = 0x00002001;
  static const WHvX64RegisterKernelGsBase = 0x00002002;
  static const WHvX64RegisterApicBase = 0x00002003;
  static const WHvX64RegisterPat = 0x00002004;
  static const WHvX64RegisterSysenterCs = 0x00002005;
  static const WHvX64RegisterSysenterEip = 0x00002006;
  static const WHvX64RegisterSysenterEsp = 0x00002007;
  static const WHvX64RegisterStar = 0x00002008;
  static const WHvX64RegisterLstar = 0x00002009;
  static const WHvX64RegisterCstar = 0x0000200a;
  static const WHvX64RegisterSfmask = 0x0000200b;
  static const WHvX64RegisterInitialApicId = 0x0000200c;
  static const WHvX64RegisterMsrMtrrCap = 0x0000200d;
  static const WHvX64RegisterMsrMtrrDefType = 0x0000200e;
  static const WHvX64RegisterMsrMtrrPhysBase0 = 0x00002010;
  static const WHvX64RegisterMsrMtrrPhysBase1 = 0x00002011;
  static const WHvX64RegisterMsrMtrrPhysBase2 = 0x00002012;
  static const WHvX64RegisterMsrMtrrPhysBase3 = 0x00002013;
  static const WHvX64RegisterMsrMtrrPhysBase4 = 0x00002014;
  static const WHvX64RegisterMsrMtrrPhysBase5 = 0x00002015;
  static const WHvX64RegisterMsrMtrrPhysBase6 = 0x00002016;
  static const WHvX64RegisterMsrMtrrPhysBase7 = 0x00002017;
  static const WHvX64RegisterMsrMtrrPhysBase8 = 0x00002018;
  static const WHvX64RegisterMsrMtrrPhysBase9 = 0x00002019;
  static const WHvX64RegisterMsrMtrrPhysBaseA = 0x0000201a;
  static const WHvX64RegisterMsrMtrrPhysBaseB = 0x0000201b;
  static const WHvX64RegisterMsrMtrrPhysBaseC = 0x0000201c;
  static const WHvX64RegisterMsrMtrrPhysBaseD = 0x0000201d;
  static const WHvX64RegisterMsrMtrrPhysBaseE = 0x0000201e;
  static const WHvX64RegisterMsrMtrrPhysBaseF = 0x0000201f;
  static const WHvX64RegisterMsrMtrrPhysMask0 = 0x00002040;
  static const WHvX64RegisterMsrMtrrPhysMask1 = 0x00002041;
  static const WHvX64RegisterMsrMtrrPhysMask2 = 0x00002042;
  static const WHvX64RegisterMsrMtrrPhysMask3 = 0x00002043;
  static const WHvX64RegisterMsrMtrrPhysMask4 = 0x00002044;
  static const WHvX64RegisterMsrMtrrPhysMask5 = 0x00002045;
  static const WHvX64RegisterMsrMtrrPhysMask6 = 0x00002046;
  static const WHvX64RegisterMsrMtrrPhysMask7 = 0x00002047;
  static const WHvX64RegisterMsrMtrrPhysMask8 = 0x00002048;
  static const WHvX64RegisterMsrMtrrPhysMask9 = 0x00002049;
  static const WHvX64RegisterMsrMtrrPhysMaskA = 0x0000204a;
  static const WHvX64RegisterMsrMtrrPhysMaskB = 0x0000204b;
  static const WHvX64RegisterMsrMtrrPhysMaskC = 0x0000204c;
  static const WHvX64RegisterMsrMtrrPhysMaskD = 0x0000204d;
  static const WHvX64RegisterMsrMtrrPhysMaskE = 0x0000204e;
  static const WHvX64RegisterMsrMtrrPhysMaskF = 0x0000204f;
  static const WHvX64RegisterMsrMtrrFix64k00000 = 0x00002070;
  static const WHvX64RegisterMsrMtrrFix16k80000 = 0x00002071;
  static const WHvX64RegisterMsrMtrrFix16kA0000 = 0x00002072;
  static const WHvX64RegisterMsrMtrrFix4kC0000 = 0x00002073;
  static const WHvX64RegisterMsrMtrrFix4kC8000 = 0x00002074;
  static const WHvX64RegisterMsrMtrrFix4kD0000 = 0x00002075;
  static const WHvX64RegisterMsrMtrrFix4kD8000 = 0x00002076;
  static const WHvX64RegisterMsrMtrrFix4kE0000 = 0x00002077;
  static const WHvX64RegisterMsrMtrrFix4kE8000 = 0x00002078;
  static const WHvX64RegisterMsrMtrrFix4kF0000 = 0x00002079;
  static const WHvX64RegisterMsrMtrrFix4kF8000 = 0x0000207a;
  static const WHvX64RegisterTscAux = 0x0000207b;
  static const WHvX64RegisterBndcfgs = 0x0000207c;
  static const WHvX64RegisterMCount = 0x0000207e;
  static const WHvX64RegisterACount = 0x0000207f;
  static const WHvX64RegisterSpecCtrl = 0x00002084;
  static const WHvX64RegisterPredCmd = 0x00002085;
  static const WHvX64RegisterTscVirtualOffset = 0x00002087;
  static const WHvX64RegisterTsxCtrl = 0x00002088;
  static const WHvX64RegisterXss = 0x0000208b;
  static const WHvX64RegisterUCet = 0x0000208c;
  static const WHvX64RegisterSCet = 0x0000208d;
  static const WHvX64RegisterSsp = 0x0000208e;
  static const WHvX64RegisterPl0Ssp = 0x0000208f;
  static const WHvX64RegisterPl1Ssp = 0x00002090;
  static const WHvX64RegisterPl2Ssp = 0x00002091;
  static const WHvX64RegisterPl3Ssp = 0x00002092;
  static const WHvX64RegisterInterruptSspTableAddr = 0x00002093;
  static const WHvX64RegisterTscDeadline = 0x00002095;
  static const WHvX64RegisterTscAdjust = 0x00002096;
  static const WHvX64RegisterUmwaitControl = 0x00002098;
  static const WHvX64RegisterXfd = 0x00002099;
  static const WHvX64RegisterXfdErr = 0x0000209a;
  static const WHvX64RegisterApicId = 0x00003002;
  static const WHvX64RegisterApicVersion = 0x00003003;
  static const WHvX64RegisterApicTpr = 0x00003008;
  static const WHvX64RegisterApicPpr = 0x0000300a;
  static const WHvX64RegisterApicEoi = 0x0000300b;
  static const WHvX64RegisterApicLdr = 0x0000300d;
  static const WHvX64RegisterApicSpurious = 0x0000300f;
  static const WHvX64RegisterApicIsr0 = 0x00003010;
  static const WHvX64RegisterApicIsr1 = 0x00003011;
  static const WHvX64RegisterApicIsr2 = 0x00003012;
  static const WHvX64RegisterApicIsr3 = 0x00003013;
  static const WHvX64RegisterApicIsr4 = 0x00003014;
  static const WHvX64RegisterApicIsr5 = 0x00003015;
  static const WHvX64RegisterApicIsr6 = 0x00003016;
  static const WHvX64RegisterApicIsr7 = 0x00003017;
  static const WHvX64RegisterApicTmr0 = 0x00003018;
  static const WHvX64RegisterApicTmr1 = 0x00003019;
  static const WHvX64RegisterApicTmr2 = 0x0000301a;
  static const WHvX64RegisterApicTmr3 = 0x0000301b;
  static const WHvX64RegisterApicTmr4 = 0x0000301c;
  static const WHvX64RegisterApicTmr5 = 0x0000301d;
  static const WHvX64RegisterApicTmr6 = 0x0000301e;
  static const WHvX64RegisterApicTmr7 = 0x0000301f;
  static const WHvX64RegisterApicIrr0 = 0x00003020;
  static const WHvX64RegisterApicIrr1 = 0x00003021;
  static const WHvX64RegisterApicIrr2 = 0x00003022;
  static const WHvX64RegisterApicIrr3 = 0x00003023;
  static const WHvX64RegisterApicIrr4 = 0x00003024;
  static const WHvX64RegisterApicIrr5 = 0x00003025;
  static const WHvX64RegisterApicIrr6 = 0x00003026;
  static const WHvX64RegisterApicIrr7 = 0x00003027;
  static const WHvX64RegisterApicEse = 0x00003028;
  static const WHvX64RegisterApicIcr = 0x00003030;
  static const WHvX64RegisterApicLvtTimer = 0x00003032;
  static const WHvX64RegisterApicLvtThermal = 0x00003033;
  static const WHvX64RegisterApicLvtPerfmon = 0x00003034;
  static const WHvX64RegisterApicLvtLint0 = 0x00003035;
  static const WHvX64RegisterApicLvtLint1 = 0x00003036;
  static const WHvX64RegisterApicLvtError = 0x00003037;
  static const WHvX64RegisterApicInitCount = 0x00003038;
  static const WHvX64RegisterApicCurrentCount = 0x00003039;
  static const WHvX64RegisterApicDivide = 0x0000303e;
  static const WHvX64RegisterApicSelfIpi = 0x0000303f;
  static const WHvRegisterSint0 = 0x00004000;
  static const WHvRegisterSint1 = 0x00004001;
  static const WHvRegisterSint2 = 0x00004002;
  static const WHvRegisterSint3 = 0x00004003;
  static const WHvRegisterSint4 = 0x00004004;
  static const WHvRegisterSint5 = 0x00004005;
  static const WHvRegisterSint6 = 0x00004006;
  static const WHvRegisterSint7 = 0x00004007;
  static const WHvRegisterSint8 = 0x00004008;
  static const WHvRegisterSint9 = 0x00004009;
  static const WHvRegisterSint10 = 0x0000400a;
  static const WHvRegisterSint11 = 0x0000400b;
  static const WHvRegisterSint12 = 0x0000400c;
  static const WHvRegisterSint13 = 0x0000400d;
  static const WHvRegisterSint14 = 0x0000400e;
  static const WHvRegisterSint15 = 0x0000400f;
  static const WHvRegisterScontrol = 0x00004010;
  static const WHvRegisterSversion = 0x00004011;
  static const WHvRegisterSiefp = 0x00004012;
  static const WHvRegisterSimp = 0x00004013;
  static const WHvRegisterEom = 0x00004014;
  static const WHvRegisterVpRuntime = 0x00005000;
  static const WHvX64RegisterHypercall = 0x00005001;
  static const WHvRegisterGuestOsId = 0x00005002;
  static const WHvRegisterVpAssistPage = 0x00005013;
  static const WHvRegisterReferenceTsc = 0x00005017;
  static const WHvRegisterReferenceTscSequence = 0x0000501a;
  static const WHvRegisterPendingInterruption = 0x80000000;
  static const WHvRegisterInterruptState = 0x80000001;
  static const WHvRegisterPendingEvent = 0x80000002;
  static const WHvX64RegisterDeliverabilityNotifications = 0x80000004;
  static const WHvRegisterInternalActivityState = 0x80000005;
  static const WHvX64RegisterPendingDebugException = 0x80000006;
}

/// {@category Enum}
class WHV_RUN_VP_CANCEL_REASON {
  static const WHvRunVpCancelReasonUser = 0x00000000;
}

/// {@category Enum}
class WHV_RUN_VP_EXIT_REASON {
  static const WHvRunVpExitReasonNone = 0x00000000;
  static const WHvRunVpExitReasonMemoryAccess = 0x00000001;
  static const WHvRunVpExitReasonX64IoPortAccess = 0x00000002;
  static const WHvRunVpExitReasonUnrecoverableException = 0x00000004;
  static const WHvRunVpExitReasonInvalidVpRegisterValue = 0x00000005;
  static const WHvRunVpExitReasonUnsupportedFeature = 0x00000006;
  static const WHvRunVpExitReasonX64InterruptWindow = 0x00000007;
  static const WHvRunVpExitReasonX64Halt = 0x00000008;
  static const WHvRunVpExitReasonX64ApicEoi = 0x00000009;
  static const WHvRunVpExitReasonSynicSintDeliverable = 0x0000000a;
  static const WHvRunVpExitReasonX64MsrAccess = 0x00001000;
  static const WHvRunVpExitReasonX64Cpuid = 0x00001001;
  static const WHvRunVpExitReasonException = 0x00001002;
  static const WHvRunVpExitReasonX64Rdtsc = 0x00001003;
  static const WHvRunVpExitReasonX64ApicSmiTrap = 0x00001004;
  static const WHvRunVpExitReasonHypercall = 0x00001005;
  static const WHvRunVpExitReasonX64ApicInitSipiTrap = 0x00001006;
  static const WHvRunVpExitReasonX64ApicWriteTrap = 0x00001007;
  static const WHvRunVpExitReasonCanceled = 0x00002001;
}

/// {@category Enum}
class WHV_TRANSLATE_GVA_FLAGS {
  static const WHvTranslateGvaFlagNone = 0x00000000;
  static const WHvTranslateGvaFlagValidateRead = 0x00000001;
  static const WHvTranslateGvaFlagValidateWrite = 0x00000002;
  static const WHvTranslateGvaFlagValidateExecute = 0x00000004;
  static const WHvTranslateGvaFlagPrivilegeExempt = 0x00000008;
  static const WHvTranslateGvaFlagSetPageTableBits = 0x00000010;
  static const WHvTranslateGvaFlagEnforceSmap = 0x00000100;
  static const WHvTranslateGvaFlagOverrideSmap = 0x00000200;
}

/// {@category Enum}
class WHV_TRANSLATE_GVA_RESULT_CODE {
  static const WHvTranslateGvaResultSuccess = 0x00000000;
  static const WHvTranslateGvaResultPageNotPresent = 0x00000001;
  static const WHvTranslateGvaResultPrivilegeViolation = 0x00000002;
  static const WHvTranslateGvaResultInvalidPageTableFlags = 0x00000003;
  static const WHvTranslateGvaResultGpaUnmapped = 0x00000004;
  static const WHvTranslateGvaResultGpaNoReadAccess = 0x00000005;
  static const WHvTranslateGvaResultGpaNoWriteAccess = 0x00000006;
  static const WHvTranslateGvaResultGpaIllegalOverlayAccess = 0x00000007;
  static const WHvTranslateGvaResultIntercept = 0x00000008;
}

/// {@category Enum}
class WHV_TRIGGER_TYPE {
  static const WHvTriggerTypeInterrupt = 0x00000000;
  static const WHvTriggerTypeSynicEvent = 0x00000001;
  static const WHvTriggerTypeDeviceInterrupt = 0x00000002;
}

/// {@category Enum}
class WHV_VIRTUAL_PROCESSOR_PROPERTY_CODE {
  static const WHvVirtualProcessorPropertyCodeNumaNode = 0x00000000;
}

/// {@category Enum}
class WHV_VIRTUAL_PROCESSOR_STATE_TYPE {
  static const WHvVirtualProcessorStateTypeSynicMessagePage = 0x00000000;
  static const WHvVirtualProcessorStateTypeSynicEventFlagPage = 0x00000001;
  static const WHvVirtualProcessorStateTypeSynicTimerState = 0x00000002;
  static const WHvVirtualProcessorStateTypeInterruptControllerState2 =
      0x00001000;
  static const WHvVirtualProcessorStateTypeXsaveState = 0x00001001;
}

/// {@category Enum}
class WHV_VPCI_DEVICE_NOTIFICATION_TYPE {
  static const WHvVpciDeviceNotificationUndefined = 0x00000000;
  static const WHvVpciDeviceNotificationMmioRemapping = 0x00000001;
  static const WHvVpciDeviceNotificationSurpriseRemoval = 0x00000002;
}

/// {@category Enum}
class WHV_VPCI_DEVICE_PROPERTY_CODE {
  static const WHvVpciDevicePropertyCodeUndefined = 0x00000000;
  static const WHvVpciDevicePropertyCodeHardwareIDs = 0x00000001;
  static const WHvVpciDevicePropertyCodeProbedBARs = 0x00000002;
}

/// {@category Enum}
class WHV_VPCI_DEVICE_REGISTER_SPACE {
  static const WHvVpciConfigSpace = 0xffffffff;
  static const WHvVpciBar0 = 0x00000000;
  static const WHvVpciBar1 = 0x00000001;
  static const WHvVpciBar2 = 0x00000002;
  static const WHvVpciBar3 = 0x00000003;
  static const WHvVpciBar4 = 0x00000004;
  static const WHvVpciBar5 = 0x00000005;
}

/// {@category Enum}
class WHV_VPCI_INTERRUPT_TARGET_FLAGS {
  static const WHvVpciInterruptTargetFlagNone = 0x00000000;
  static const WHvVpciInterruptTargetFlagMulticast = 0x00000001;
}

/// {@category Enum}
class WHV_VPCI_MMIO_RANGE_FLAGS {
  static const WHvVpciMmioRangeFlagReadAccess = 0x00000001;
  static const WHvVpciMmioRangeFlagWriteAccess = 0x00000002;
}

/// {@category Enum}
class WHV_X64_APIC_WRITE_TYPE {
  static const WHvX64ApicWriteTypeLdr = 0x000000d0;
  static const WHvX64ApicWriteTypeDfr = 0x000000e0;
  static const WHvX64ApicWriteTypeSvr = 0x000000f0;
  static const WHvX64ApicWriteTypeLint0 = 0x00000350;
  static const WHvX64ApicWriteTypeLint1 = 0x00000360;
}

/// {@category Enum}
class WHV_X64_CPUID_RESULT2_FLAGS {
  static const WHvX64CpuidResult2FlagSubleafSpecific = 0x00000001;
  static const WHvX64CpuidResult2FlagVpSpecific = 0x00000002;
}

/// {@category Enum}
class WHV_X64_LOCAL_APIC_EMULATION_MODE {
  static const WHvX64LocalApicEmulationModeNone = 0x00000000;
  static const WHvX64LocalApicEmulationModeXApic = 0x00000001;
  static const WHvX64LocalApicEmulationModeX2Apic = 0x00000002;
}

/// {@category Enum}
class WHV_X64_PENDING_EVENT_TYPE {
  static const WHvX64PendingEventException = 0x00000000;
  static const WHvX64PendingEventExtInt = 0x00000005;
}

/// {@category Enum}
class WHV_X64_PENDING_INTERRUPTION_TYPE {
  static const WHvX64PendingInterrupt = 0x00000000;
  static const WHvX64PendingNmi = 0x00000002;
  static const WHvX64PendingException = 0x00000003;
}

/// {@category Enum}
class WHV_X64_UNSUPPORTED_FEATURE_CODE {
  static const WHvUnsupportedFeatureIntercept = 0x00000001;
  static const WHvUnsupportedFeatureTaskSwitchTss = 0x00000002;
}
