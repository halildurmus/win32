/// {@category Enum}
class JOBOBJECTINFOCLASS {
  static const JobObjectBasicAccountingInformation = 0x00000001;
  static const JobObjectBasicLimitInformation = 0x00000002;
  static const JobObjectBasicProcessIdList = 0x00000003;
  static const JobObjectBasicUIRestrictions = 0x00000004;
  static const JobObjectSecurityLimitInformation = 0x00000005;
  static const JobObjectEndOfJobTimeInformation = 0x00000006;
  static const JobObjectAssociateCompletionPortInformation = 0x00000007;
  static const JobObjectBasicAndIoAccountingInformation = 0x00000008;
  static const JobObjectExtendedLimitInformation = 0x00000009;
  static const JobObjectJobSetInformation = 0x0000000a;
  static const JobObjectGroupInformation = 0x0000000b;
  static const JobObjectNotificationLimitInformation = 0x0000000c;
  static const JobObjectLimitViolationInformation = 0x0000000d;
  static const JobObjectGroupInformationEx = 0x0000000e;
  static const JobObjectCpuRateControlInformation = 0x0000000f;
  static const JobObjectCompletionFilter = 0x00000010;
  static const JobObjectCompletionCounter = 0x00000011;
  static const JobObjectReserved1Information = 0x00000012;
  static const JobObjectReserved2Information = 0x00000013;
  static const JobObjectReserved3Information = 0x00000014;
  static const JobObjectReserved4Information = 0x00000015;
  static const JobObjectReserved5Information = 0x00000016;
  static const JobObjectReserved6Information = 0x00000017;
  static const JobObjectReserved7Information = 0x00000018;
  static const JobObjectReserved8Information = 0x00000019;
  static const JobObjectReserved9Information = 0x0000001a;
  static const JobObjectReserved10Information = 0x0000001b;
  static const JobObjectReserved11Information = 0x0000001c;
  static const JobObjectReserved12Information = 0x0000001d;
  static const JobObjectReserved13Information = 0x0000001e;
  static const JobObjectReserved14Information = 0x0000001f;
  static const JobObjectNetRateControlInformation = 0x00000020;
  static const JobObjectNotificationLimitInformation2 = 0x00000021;
  static const JobObjectLimitViolationInformation2 = 0x00000022;
  static const JobObjectCreateSilo = 0x00000023;
  static const JobObjectSiloBasicInformation = 0x00000024;
  static const JobObjectReserved15Information = 0x00000025;
  static const JobObjectReserved16Information = 0x00000026;
  static const JobObjectReserved17Information = 0x00000027;
  static const JobObjectReserved18Information = 0x00000028;
  static const JobObjectReserved19Information = 0x00000029;
  static const JobObjectReserved20Information = 0x0000002a;
  static const JobObjectReserved21Information = 0x0000002b;
  static const JobObjectReserved22Information = 0x0000002c;
  static const JobObjectReserved23Information = 0x0000002d;
  static const JobObjectReserved24Information = 0x0000002e;
  static const JobObjectReserved25Information = 0x0000002f;
  static const MaxJobObjectInfoClass = 0x00000030;
}

/// {@category Enum}
class JOBOBJECT_IO_ATTRIBUTION_CONTROL_FLAGS {
  static const JOBOBJECT_IO_ATTRIBUTION_CONTROL_ENABLE = 0x00000001;
  static const JOBOBJECT_IO_ATTRIBUTION_CONTROL_DISABLE = 0x00000002;
  static const JOBOBJECT_IO_ATTRIBUTION_CONTROL_VALID_FLAGS = 0x00000003;
}

/// {@category Enum}
class JOBOBJECT_RATE_CONTROL_TOLERANCE {
  static const ToleranceLow = 0x00000001;
  static const ToleranceMedium = 0x00000002;
  static const ToleranceHigh = 0x00000003;
}

/// {@category Enum}
class JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL {
  static const ToleranceIntervalShort = 0x00000001;
  static const ToleranceIntervalMedium = 0x00000002;
  static const ToleranceIntervalLong = 0x00000003;
}

/// {@category Enum}
class JOB_OBJECT_CPU_RATE_CONTROL {
  static const JOB_OBJECT_CPU_RATE_CONTROL_ENABLE = 0x00000001;
  static const JOB_OBJECT_CPU_RATE_CONTROL_WEIGHT_BASED = 0x00000002;
  static const JOB_OBJECT_CPU_RATE_CONTROL_HARD_CAP = 0x00000004;
  static const JOB_OBJECT_CPU_RATE_CONTROL_NOTIFY = 0x00000008;
  static const JOB_OBJECT__CPU_RATE_CONTROL_MIN_MAX_RATE = 0x00000010;
}

/// {@category Enum}
class JOB_OBJECT_IO_RATE_CONTROL_FLAGS {
  static const JOB_OBJECT_IO_RATE_CONTROL_ENABLE = 0x00000001;
  static const JOB_OBJECT_IO_RATE_CONTROL_STANDALONE_VOLUME = 0x00000002;
  static const JOB_OBJECT_IO_RATE_CONTROL_FORCE_UNIT_ACCESS_ALL = 0x00000004;
  static const JOB_OBJECT_IO_RATE_CONTROL_FORCE_UNIT_ACCESS_ON_SOFT_CAP =
      0x00000008;
  static const JOB_OBJECT_IO_RATE_CONTROL_VALID_FLAGS = 0x0000000f;
}

/// {@category Enum}
class JOB_OBJECT_LIMIT {
  static const JOB_OBJECT_LIMIT_WORKINGSET = 0x00000001;
  static const JOB_OBJECT_LIMIT_PROCESS_TIME = 0x00000002;
  static const JOB_OBJECT_LIMIT_JOB_TIME = 0x00000004;
  static const JOB_OBJECT_LIMIT_ACTIVE_PROCESS = 0x00000008;
  static const JOB_OBJECT_LIMIT_AFFINITY = 0x00000010;
  static const JOB_OBJECT_LIMIT_PRIORITY_CLASS = 0x00000020;
  static const JOB_OBJECT_LIMIT_PRESERVE_JOB_TIME = 0x00000040;
  static const JOB_OBJECT_LIMIT_SCHEDULING_CLASS = 0x00000080;
  static const JOB_OBJECT_LIMIT_PROCESS_MEMORY = 0x00000100;
  static const JOB_OBJECT_LIMIT_JOB_MEMORY = 0x00000200;
  static const JOB_OBJECT_LIMIT_JOB_MEMORY_HIGH = 0x00000200;
  static const JOB_OBJECT_LIMIT_DIE_ON_UNHANDLED_EXCEPTION = 0x00000400;
  static const JOB_OBJECT_LIMIT_BREAKAWAY_OK = 0x00000800;
  static const JOB_OBJECT_LIMIT_SILENT_BREAKAWAY_OK = 0x00001000;
  static const JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE = 0x00002000;
  static const JOB_OBJECT_LIMIT_SUBSET_AFFINITY = 0x00004000;
  static const JOB_OBJECT_LIMIT_JOB_MEMORY_LOW = 0x00008000;
  static const JOB_OBJECT_LIMIT_JOB_READ_BYTES = 0x00010000;
  static const JOB_OBJECT_LIMIT_JOB_WRITE_BYTES = 0x00020000;
  static const JOB_OBJECT_LIMIT_RATE_CONTROL = 0x00040000;
  static const JOB_OBJECT_LIMIT_CPU_RATE_CONTROL = 0x00040000;
  static const JOB_OBJECT_LIMIT_IO_RATE_CONTROL = 0x00080000;
  static const JOB_OBJECT_LIMIT_NET_RATE_CONTROL = 0x00100000;
  static const JOB_OBJECT_LIMIT_VALID_FLAGS = 0x0007ffff;
  static const JOB_OBJECT_BASIC_LIMIT_VALID_FLAGS = 0x000000ff;
  static const JOB_OBJECT_EXTENDED_LIMIT_VALID_FLAGS = 0x00007fff;
  static const JOB_OBJECT_NOTIFICATION_LIMIT_VALID_FLAGS = 0x001f8204;
}

/// {@category Enum}
class JOB_OBJECT_NET_RATE_CONTROL_FLAGS {
  static const JOB_OBJECT_NET_RATE_CONTROL_ENABLE = 0x00000001;
  static const JOB_OBJECT_NET_RATE_CONTROL_MAX_BANDWIDTH = 0x00000002;
  static const JOB_OBJECT_NET_RATE_CONTROL_DSCP_TAG = 0x00000004;
  static const JOB_OBJECT_NET_RATE_CONTROL_VALID_FLAGS = 0x00000007;
}

/// {@category Enum}
class JOB_OBJECT_SECURITY {
  static const JOB_OBJECT_SECURITY_NO_ADMIN = 0x00000001;
  static const JOB_OBJECT_SECURITY_RESTRICTED_TOKEN = 0x00000002;
  static const JOB_OBJECT_SECURITY_ONLY_TOKEN = 0x00000004;
  static const JOB_OBJECT_SECURITY_FILTER_TOKENS = 0x00000008;
  static const JOB_OBJECT_SECURITY_VALID_FLAGS = 0x0000000f;
}

/// {@category Enum}
class JOB_OBJECT_TERMINATE_AT_END_ACTION {
  static const JOB_OBJECT_TERMINATE_AT_END_OF_JOB = 0x00000000;
  static const JOB_OBJECT_POST_AT_END_OF_JOB = 0x00000001;
}

/// {@category Enum}
class JOB_OBJECT_UILIMIT {
  static const JOB_OBJECT_UILIMIT_NONE = 0x00000000;
  static const JOB_OBJECT_UILIMIT_HANDLES = 0x00000001;
  static const JOB_OBJECT_UILIMIT_READCLIPBOARD = 0x00000002;
  static const JOB_OBJECT_UILIMIT_WRITECLIPBOARD = 0x00000004;
  static const JOB_OBJECT_UILIMIT_SYSTEMPARAMETERS = 0x00000008;
  static const JOB_OBJECT_UILIMIT_DISPLAYSETTINGS = 0x00000010;
  static const JOB_OBJECT_UILIMIT_GLOBALATOMS = 0x00000020;
  static const JOB_OBJECT_UILIMIT_DESKTOP = 0x00000040;
  static const JOB_OBJECT_UILIMIT_EXITWINDOWS = 0x00000080;
}
