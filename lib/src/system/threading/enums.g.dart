/// {@category Enum}
class CREATE_EVENT {
  static const CREATE_EVENT_INITIAL_SET = 0x00000002;
  static const CREATE_EVENT_MANUAL_RESET = 0x00000001;
}

/// {@category Enum}
class CREATE_PROCESS_LOGON_FLAGS {
  static const LOGON_WITH_PROFILE = 0x00000001;
  static const LOGON_NETCREDENTIALS_ONLY = 0x00000002;
}

/// {@category Enum}
class GET_GUI_RESOURCES_FLAGS {
  static const GR_GDIOBJECTS = 0x00000000;
  static const GR_GDIOBJECTS_PEAK = 0x00000002;
  static const GR_USEROBJECTS = 0x00000001;
  static const GR_USEROBJECTS_PEAK = 0x00000004;
}

/// {@category Enum}
class MACHINE_ATTRIBUTES {
  static const UserEnabled = 0x00000001;
  static const KernelEnabled = 0x00000002;
  static const Wow64Container = 0x00000004;
}

/// {@category Enum}
class MEMORY_PRIORITY {
  static const MEMORY_PRIORITY_VERY_LOW = 0x00000001;
  static const MEMORY_PRIORITY_LOW = 0x00000002;
  static const MEMORY_PRIORITY_MEDIUM = 0x00000003;
  static const MEMORY_PRIORITY_BELOW_NORMAL = 0x00000004;
  static const MEMORY_PRIORITY_NORMAL = 0x00000005;
}

/// {@category Enum}
class POWER_REQUEST_CONTEXT_FLAGS {
  static const POWER_REQUEST_CONTEXT_DETAILED_STRING = 0x00000002;
  static const POWER_REQUEST_CONTEXT_SIMPLE_STRING = 0x00000001;
}

/// {@category Enum}
class PROCESSINFOCLASS {
  static const ProcessBasicInformation = 0x00000000;
  static const ProcessDebugPort = 0x00000007;
  static const ProcessWow64Information = 0x0000001a;
  static const ProcessImageFileName = 0x0000001b;
  static const ProcessBreakOnTermination = 0x0000001d;
}

/// {@category Enum}
class PROCESSOR_FEATURE_ID {
  static const PF_ARM_64BIT_LOADSTORE_ATOMIC = 0x00000019;
  static const PF_ARM_DIVIDE_INSTRUCTION_AVAILABLE = 0x00000018;
  static const PF_ARM_EXTERNAL_CACHE_AVAILABLE = 0x0000001a;
  static const PF_ARM_FMAC_INSTRUCTIONS_AVAILABLE = 0x0000001b;
  static const PF_ARM_VFP_32_REGISTERS_AVAILABLE = 0x00000012;
  static const PF_3DNOW_INSTRUCTIONS_AVAILABLE = 0x00000007;
  static const PF_CHANNELS_ENABLED = 0x00000010;
  static const PF_COMPARE_EXCHANGE_DOUBLE = 0x00000002;
  static const PF_COMPARE_EXCHANGE128 = 0x0000000e;
  static const PF_COMPARE64_EXCHANGE128 = 0x0000000f;
  static const PF_FASTFAIL_AVAILABLE = 0x00000017;
  static const PF_FLOATING_POINT_EMULATED = 0x00000001;
  static const PF_FLOATING_POINT_PRECISION_ERRATA = 0x00000000;
  static const PF_MMX_INSTRUCTIONS_AVAILABLE = 0x00000003;
  static const PF_NX_ENABLED = 0x0000000c;
  static const PF_PAE_ENABLED = 0x00000009;
  static const PF_RDTSC_INSTRUCTION_AVAILABLE = 0x00000008;
  static const PF_RDWRFSGSBASE_AVAILABLE = 0x00000016;
  static const PF_SECOND_LEVEL_ADDRESS_TRANSLATION = 0x00000014;
  static const PF_SSE3_INSTRUCTIONS_AVAILABLE = 0x0000000d;
  static const PF_VIRT_FIRMWARE_ENABLED = 0x00000015;
  static const PF_XMMI_INSTRUCTIONS_AVAILABLE = 0x00000006;
  static const PF_XMMI64_INSTRUCTIONS_AVAILABLE = 0x0000000a;
  static const PF_XSAVE_ENABLED = 0x00000011;
  static const PF_ARM_V8_INSTRUCTIONS_AVAILABLE = 0x0000001d;
  static const PF_ARM_V8_CRYPTO_INSTRUCTIONS_AVAILABLE = 0x0000001e;
  static const PF_ARM_V8_CRC32_INSTRUCTIONS_AVAILABLE = 0x0000001f;
  static const PF_ARM_V81_ATOMIC_INSTRUCTIONS_AVAILABLE = 0x00000022;
}

/// {@category Enum}
class PROCESS_ACCESS_RIGHTS {
  static const PROCESS_TERMINATE = 0x00000001;
  static const PROCESS_CREATE_THREAD = 0x00000002;
  static const PROCESS_SET_SESSIONID = 0x00000004;
  static const PROCESS_VM_OPERATION = 0x00000008;
  static const PROCESS_VM_READ = 0x00000010;
  static const PROCESS_VM_WRITE = 0x00000020;
  static const PROCESS_DUP_HANDLE = 0x00000040;
  static const PROCESS_CREATE_PROCESS = 0x00000080;
  static const PROCESS_SET_QUOTA = 0x00000100;
  static const PROCESS_SET_INFORMATION = 0x00000200;
  static const PROCESS_QUERY_INFORMATION = 0x00000400;
  static const PROCESS_SUSPEND_RESUME = 0x00000800;
  static const PROCESS_QUERY_LIMITED_INFORMATION = 0x00001000;
  static const PROCESS_SET_LIMITED_INFORMATION = 0x00002000;
  static const PROCESS_ALL_ACCESS = 0x001fffff;
  static const PROCESS_DELETE = 0x00010000;
  static const PROCESS_READ_CONTROL = 0x00020000;
  static const PROCESS_WRITE_DAC = 0x00040000;
  static const PROCESS_WRITE_OWNER = 0x00080000;
  static const PROCESS_SYNCHRONIZE = 0x00100000;
  static const PROCESS_STANDARD_RIGHTS_REQUIRED = 0x000f0000;
}

/// {@category Enum}
class PROCESS_AFFINITY_AUTO_UPDATE_FLAGS {
  static const PROCESS_AFFINITY_DISABLE_AUTO_UPDATE = 0x00000000;
  static const PROCESS_AFFINITY_ENABLE_AUTO_UPDATE = 0x00000001;
}

/// {@category Enum}
class PROCESS_CREATION_FLAGS {
  static const DEBUG_PROCESS = 0x00000001;
  static const DEBUG_ONLY_THIS_PROCESS = 0x00000002;
  static const CREATE_SUSPENDED = 0x00000004;
  static const DETACHED_PROCESS = 0x00000008;
  static const CREATE_NEW_CONSOLE = 0x00000010;
  static const NORMAL_PRIORITY_CLASS = 0x00000020;
  static const IDLE_PRIORITY_CLASS = 0x00000040;
  static const HIGH_PRIORITY_CLASS = 0x00000080;
  static const REALTIME_PRIORITY_CLASS = 0x00000100;
  static const CREATE_NEW_PROCESS_GROUP = 0x00000200;
  static const CREATE_UNICODE_ENVIRONMENT = 0x00000400;
  static const CREATE_SEPARATE_WOW_VDM = 0x00000800;
  static const CREATE_SHARED_WOW_VDM = 0x00001000;
  static const CREATE_FORCEDOS = 0x00002000;
  static const BELOW_NORMAL_PRIORITY_CLASS = 0x00004000;
  static const ABOVE_NORMAL_PRIORITY_CLASS = 0x00008000;
  static const INHERIT_PARENT_AFFINITY = 0x00010000;
  static const INHERIT_CALLER_PRIORITY = 0x00020000;
  static const CREATE_PROTECTED_PROCESS = 0x00040000;
  static const EXTENDED_STARTUPINFO_PRESENT = 0x00080000;
  static const PROCESS_MODE_BACKGROUND_BEGIN = 0x00100000;
  static const PROCESS_MODE_BACKGROUND_END = 0x00200000;
  static const CREATE_SECURE_PROCESS = 0x00400000;
  static const CREATE_BREAKAWAY_FROM_JOB = 0x01000000;
  static const CREATE_PRESERVE_CODE_AUTHZ_LEVEL = 0x02000000;
  static const CREATE_DEFAULT_ERROR_MODE = 0x04000000;
  static const CREATE_NO_WINDOW = 0x08000000;
  static const PROFILE_USER = 0x10000000;
  static const PROFILE_KERNEL = 0x20000000;
  static const PROFILE_SERVER = 0x40000000;
  static const CREATE_IGNORE_SYSTEM_DEFAULT = 0x80000000;
}

/// {@category Enum}
class PROCESS_DEP_FLAGS {
  static const PROCESS_DEP_ENABLE = 0x00000001;
  static const PROCESS_DEP_DISABLE_ATL_THUNK_EMULATION = 0x00000002;
  static const PROCESS_DEP_NONE = 0x00000000;
}

/// {@category Enum}
class PROCESS_INFORMATION_CLASS {
  static const ProcessMemoryPriority = 0x00000000;
  static const ProcessMemoryExhaustionInfo = 0x00000001;
  static const ProcessAppMemoryInfo = 0x00000002;
  static const ProcessInPrivateInfo = 0x00000003;
  static const ProcessPowerThrottling = 0x00000004;
  static const ProcessReservedValue1 = 0x00000005;
  static const ProcessTelemetryCoverageInfo = 0x00000006;
  static const ProcessProtectionLevelInfo = 0x00000007;
  static const ProcessLeapSecondInfo = 0x00000008;
  static const ProcessMachineTypeInfo = 0x00000009;
  static const ProcessInformationClassMax = 0x0000000a;
}

/// {@category Enum}
class PROCESS_MEMORY_EXHAUSTION_TYPE {
  static const PMETypeFailFastOnCommitFailure = 0x00000000;
  static const PMETypeMax = 0x00000001;
}

/// {@category Enum}
class PROCESS_MITIGATION_POLICY {
  static const ProcessDEPPolicy = 0x00000000;
  static const ProcessASLRPolicy = 0x00000001;
  static const ProcessDynamicCodePolicy = 0x00000002;
  static const ProcessStrictHandleCheckPolicy = 0x00000003;
  static const ProcessSystemCallDisablePolicy = 0x00000004;
  static const ProcessMitigationOptionsMask = 0x00000005;
  static const ProcessExtensionPointDisablePolicy = 0x00000006;
  static const ProcessControlFlowGuardPolicy = 0x00000007;
  static const ProcessSignaturePolicy = 0x00000008;
  static const ProcessFontDisablePolicy = 0x00000009;
  static const ProcessImageLoadPolicy = 0x0000000a;
  static const ProcessSystemCallFilterPolicy = 0x0000000b;
  static const ProcessPayloadRestrictionPolicy = 0x0000000c;
  static const ProcessChildProcessPolicy = 0x0000000d;
  static const ProcessSideChannelIsolationPolicy = 0x0000000e;
  static const ProcessUserShadowStackPolicy = 0x0000000f;
  static const ProcessRedirectionTrustPolicy = 0x00000010;
  static const MaxProcessMitigationPolicy = 0x00000011;
}

/// {@category Enum}
class PROCESS_NAME_FORMAT {
  static const PROCESS_NAME_WIN32 = 0x00000000;
  static const PROCESS_NAME_NATIVE = 0x00000001;
}

/// {@category Enum}
class PROCESS_PROTECTION_LEVEL {
  static const PROTECTION_LEVEL_WINTCB_LIGHT = 0x00000000;
  static const PROTECTION_LEVEL_WINDOWS = 0x00000001;
  static const PROTECTION_LEVEL_WINDOWS_LIGHT = 0x00000002;
  static const PROTECTION_LEVEL_ANTIMALWARE_LIGHT = 0x00000003;
  static const PROTECTION_LEVEL_LSA_LIGHT = 0x00000004;
  static const PROTECTION_LEVEL_WINTCB = 0x00000005;
  static const PROTECTION_LEVEL_CODEGEN_LIGHT = 0x00000006;
  static const PROTECTION_LEVEL_AUTHENTICODE = 0x00000007;
  static const PROTECTION_LEVEL_PPL_APP = 0x00000008;
  static const PROTECTION_LEVEL_NONE = 0xfffffffe;
}

/// {@category Enum}
class QUEUE_USER_APC_FLAGS {
  static const QUEUE_USER_APC_FLAGS_NONE = 0x00000000;
  static const QUEUE_USER_APC_FLAGS_SPECIAL_USER_APC = 0x00000001;
}

/// {@category Enum}
class RTL_UMS_THREAD_INFO_CLASS {
  static const UmsThreadInvalidInfoClass = 0x00000000;
  static const UmsThreadUserContext = 0x00000001;
  static const UmsThreadPriority = 0x00000002;
  static const UmsThreadAffinity = 0x00000003;
  static const UmsThreadTeb = 0x00000004;
  static const UmsThreadIsSuspended = 0x00000005;
  static const UmsThreadIsTerminated = 0x00000006;
  static const UmsThreadMaxInfoClass = 0x00000007;
}

/// {@category Enum}
class STARTUPINFOW_FLAGS {
  static const STARTF_FORCEONFEEDBACK = 0x00000040;
  static const STARTF_FORCEOFFFEEDBACK = 0x00000080;
  static const STARTF_PREVENTPINNING = 0x00002000;
  static const STARTF_RUNFULLSCREEN = 0x00000020;
  static const STARTF_TITLEISAPPID = 0x00001000;
  static const STARTF_TITLEISLINKNAME = 0x00000800;
  static const STARTF_UNTRUSTEDSOURCE = 0x00008000;
  static const STARTF_USECOUNTCHARS = 0x00000008;
  static const STARTF_USEFILLATTRIBUTE = 0x00000010;
  static const STARTF_USEHOTKEY = 0x00000200;
  static const STARTF_USEPOSITION = 0x00000004;
  static const STARTF_USESHOWWINDOW = 0x00000001;
  static const STARTF_USESIZE = 0x00000002;
  static const STARTF_USESTDHANDLES = 0x00000100;
}

/// {@category Enum}
class THREADINFOCLASS {
  static const ThreadIsIoPending = 0x00000010;
  static const ThreadNameInformation = 0x00000026;
}

/// {@category Enum}
class THREAD_ACCESS_RIGHTS {
  static const THREAD_TERMINATE = 0x00000001;
  static const THREAD_SUSPEND_RESUME = 0x00000002;
  static const THREAD_GET_CONTEXT = 0x00000008;
  static const THREAD_SET_CONTEXT = 0x00000010;
  static const THREAD_SET_INFORMATION = 0x00000020;
  static const THREAD_QUERY_INFORMATION = 0x00000040;
  static const THREAD_SET_THREAD_TOKEN = 0x00000080;
  static const THREAD_IMPERSONATE = 0x00000100;
  static const THREAD_DIRECT_IMPERSONATION = 0x00000200;
  static const THREAD_SET_LIMITED_INFORMATION = 0x00000400;
  static const THREAD_QUERY_LIMITED_INFORMATION = 0x00000800;
  static const THREAD_RESUME = 0x00001000;
  static const THREAD_ALL_ACCESS = 0x001fffff;
  static const THREAD_DELETE = 0x00010000;
  static const THREAD_READ_CONTROL = 0x00020000;
  static const THREAD_WRITE_DAC = 0x00040000;
  static const THREAD_WRITE_OWNER = 0x00080000;
  static const THREAD_SYNCHRONIZE = 0x00100000;
  static const THREAD_STANDARD_RIGHTS_REQUIRED = 0x000f0000;
}

/// {@category Enum}
class THREAD_CREATION_FLAGS {
  static const THREAD_CREATE_RUN_IMMEDIATELY = 0x00000000;
  static const THREAD_CREATE_SUSPENDED = 0x00000004;
  static const STACK_SIZE_PARAM_IS_A_RESERVATION = 0x00010000;
}

/// {@category Enum}
class THREAD_INFORMATION_CLASS {
  static const ThreadMemoryPriority = 0x00000000;
  static const ThreadAbsoluteCpuPriority = 0x00000001;
  static const ThreadDynamicCodePolicy = 0x00000002;
  static const ThreadPowerThrottling = 0x00000003;
  static const ThreadInformationClassMax = 0x00000004;
}

/// {@category Enum}
class THREAD_PRIORITY {
  static const THREAD_MODE_BACKGROUND_BEGIN = 0x00010000;
  static const THREAD_MODE_BACKGROUND_END = 0x00020000;
  static const THREAD_PRIORITY_ABOVE_NORMAL = 0x00000001;
  static const THREAD_PRIORITY_BELOW_NORMAL = 0xffffffff;
  static const THREAD_PRIORITY_HIGHEST = 0x00000002;
  static const THREAD_PRIORITY_IDLE = 0xfffffff1;
  static const THREAD_PRIORITY_MIN = 0xfffffffe;
  static const THREAD_PRIORITY_LOWEST = 0xfffffffe;
  static const THREAD_PRIORITY_NORMAL = 0x00000000;
  static const THREAD_PRIORITY_TIME_CRITICAL = 0x0000000f;
}

/// {@category Enum}
class TP_CALLBACK_PRIORITY {
  static const TP_CALLBACK_PRIORITY_HIGH = 0x00000000;
  static const TP_CALLBACK_PRIORITY_NORMAL = 0x00000001;
  static const TP_CALLBACK_PRIORITY_LOW = 0x00000002;
  static const TP_CALLBACK_PRIORITY_INVALID = 0x00000003;
  static const TP_CALLBACK_PRIORITY_COUNT = 0x00000003;
}

/// {@category Enum}
class WORKER_THREAD_FLAGS {
  static const WT_EXECUTEDEFAULT = 0x00000000;
  static const WT_EXECUTEINIOTHREAD = 0x00000001;
  static const WT_EXECUTEINPERSISTENTTHREAD = 0x00000080;
  static const WT_EXECUTEINWAITTHREAD = 0x00000004;
  static const WT_EXECUTELONGFUNCTION = 0x00000010;
  static const WT_EXECUTEONLYONCE = 0x00000008;
  static const WT_TRANSFER_IMPERSONATION = 0x00000100;
  static const WT_EXECUTEINTIMERTHREAD = 0x00000020;
}
