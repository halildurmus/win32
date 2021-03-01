/// {@category Enum}
class ATTRIBUTE_TYPE {
  static const AT_INVALID = 0x00000000;
  static const AT_BOOLEAN = 0x00000001;
  static const AT_INT8 = 0x00000002;
  static const AT_UINT8 = 0x00000003;
  static const AT_INT16 = 0x00000004;
  static const AT_UINT16 = 0x00000005;
  static const AT_INT32 = 0x00000006;
  static const AT_UINT32 = 0x00000007;
  static const AT_INT64 = 0x00000008;
  static const AT_UINT64 = 0x00000009;
  static const AT_STRING = 0x0000000a;
  static const AT_GUID = 0x0000000b;
  static const AT_LIFE_TIME = 0x0000000c;
  static const AT_SOCKADDR = 0x0000000d;
  static const AT_OCTET_STRING = 0x0000000e;
}

/// {@category Enum}
class REPAIR_SCOPE {
  static const RS_SYSTEM = 0x00000000;
  static const RS_USER = 0x00000001;
  static const RS_APPLICATION = 0x00000002;
  static const RS_PROCESS = 0x00000003;
}

/// {@category Enum}
class REPAIR_RISK {
  static const RR_NOROLLBACK = 0x00000000;
  static const RR_ROLLBACK = 0x00000001;
  static const RR_NORISK = 0x00000002;
}

/// {@category Enum}
class UI_INFO_TYPE {
  static const UIT_INVALID = 0x00000000;
  static const UIT_NONE = 0x00000001;
  static const UIT_SHELL_COMMAND = 0x00000002;
  static const UIT_HELP_PANE = 0x00000003;
  static const UIT_DUI = 0x00000004;
}

/// {@category Enum}
class DIAGNOSIS_STATUS {
  static const DS_NOT_IMPLEMENTED = 0x00000000;
  static const DS_CONFIRMED = 0x00000001;
  static const DS_REJECTED = 0x00000002;
  static const DS_INDETERMINATE = 0x00000003;
  static const DS_DEFERRED = 0x00000004;
  static const DS_PASSTHROUGH = 0x00000005;
}

/// {@category Enum}
class REPAIR_STATUS {
  static const RS_NOT_IMPLEMENTED = 0x00000000;
  static const RS_REPAIRED = 0x00000001;
  static const RS_UNREPAIRED = 0x00000002;
  static const RS_DEFERRED = 0x00000003;
  static const RS_USER_ACTION = 0x00000004;
}

/// {@category Enum}
class PROBLEM_TYPE {
  static const PT_INVALID = 0x00000000;
  static const PT_LOW_HEALTH = 0x00000001;
  static const PT_LOWER_HEALTH = 0x00000002;
  static const PT_DOWN_STREAM_HEALTH = 0x00000004;
  static const PT_HIGH_UTILIZATION = 0x00000008;
  static const PT_HIGHER_UTILIZATION = 0x00000010;
  static const PT_UP_STREAM_UTILIZATION = 0x00000020;
}

