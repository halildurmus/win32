/// {@category Enum}
class WHV_CAPABILITY_CODE {
  static const WHvCapabilityCodeHypervisorPresent = 0x00000000;
  static const WHvCapabilityCodeFeatures = 0x00000001;
  static const WHvCapabilityCodeExtendedVmExits = 0x00000002;
  static const WHvCapabilityCodeExceptionExitBitmap = 0x00000003;
  static const WHvCapabilityCodeX64MsrExitBitmap = 0x00000004;
  static const WHvCapabilityCodeProcessorVendor = 0x00001000;
  static const WHvCapabilityCodeProcessorFeatures = 0x00001001;
  static const WHvCapabilityCodeProcessorClFlushSize = 0x00001002;
  static const WHvCapabilityCodeProcessorXsaveFeatures = 0x00001003;
  static const WHvCapabilityCodeProcessorClockFrequency = 0x00001004;
  static const WHvCapabilityCodeInterruptClockFrequency = 0x00001005;
  static const WHvCapabilityCodeProcessorFeaturesBanks = 0x00001006;
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
  static const WHvPartitionPropertyCodeProcessorCount = 0x00001fff;
}

/// {@category Enum}
class WHV_PROCESSOR_COUNTER_SET {
  static const WHvProcessorCounterSetRuntime = 0x00000000;
  static const WHvProcessorCounterSetIntercepts = 0x00000001;
  static const WHvProcessorCounterSetEvents = 0x00000002;
  static const WHvProcessorCounterSetApic = 0x00000003;
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
  static const WHvX64RegisterSpecCtrl = 0x00002084;
  static const WHvX64RegisterPredCmd = 0x00002085;
  static const WHvX64RegisterTscVirtualOffset = 0x00002087;
  static const WHvX64RegisterApicId = 0x00003002;
  static const WHvX64RegisterApicVersion = 0x00003003;
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
  static const WHvRunVpExitReasonX64MsrAccess = 0x00001000;
  static const WHvRunVpExitReasonX64Cpuid = 0x00001001;
  static const WHvRunVpExitReasonException = 0x00001002;
  static const WHvRunVpExitReasonX64Rdtsc = 0x00001003;
  static const WHvRunVpExitReasonX64ApicSmiTrap = 0x00001004;
  static const WHvRunVpExitReasonHypercall = 0x00001005;
  static const WHvRunVpExitReasonX64ApicInitSipiTrap = 0x00001006;
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
