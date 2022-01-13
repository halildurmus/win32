/// {@category Enum}
class REG_CREATE_KEY_DISPOSITION {
  static const REG_CREATED_NEW_KEY = 0x00000001;
  static const REG_OPENED_EXISTING_KEY = 0x00000002;
}

/// {@category Enum}
class REG_NOTIFY_FILTER {
  static const REG_NOTIFY_CHANGE_NAME = 0x00000001;
  static const REG_NOTIFY_CHANGE_ATTRIBUTES = 0x00000002;
  static const REG_NOTIFY_CHANGE_LAST_SET = 0x00000004;
  static const REG_NOTIFY_CHANGE_SECURITY = 0x00000008;
  static const REG_NOTIFY_THREAD_AGNOSTIC = 0x10000000;
}

/// {@category Enum}
class REG_OPEN_CREATE_OPTIONS {
  static const REG_OPTION_RESERVED = 0x00000000;
  static const REG_OPTION_NON_VOLATILE = 0x00000000;
  static const REG_OPTION_VOLATILE = 0x00000001;
  static const REG_OPTION_CREATE_LINK = 0x00000002;
  static const REG_OPTION_BACKUP_RESTORE = 0x00000004;
  static const REG_OPTION_OPEN_LINK = 0x00000008;
  static const REG_OPTION_DONT_VIRTUALIZE = 0x00000010;
}

/// {@category Enum}
class REG_RESTORE_KEY_FLAGS {
  static const REG_FORCE_RESTORE = 0x00000008;
  static const REG_WHOLE_HIVE_VOLATILE = 0x00000001;
}

/// {@category Enum}
class REG_SAM_FLAGS {
  static const KEY_QUERY_VALUE = 0x00000001;
  static const KEY_SET_VALUE = 0x00000002;
  static const KEY_CREATE_SUB_KEY = 0x00000004;
  static const KEY_ENUMERATE_SUB_KEYS = 0x00000008;
  static const KEY_NOTIFY = 0x00000010;
  static const KEY_CREATE_LINK = 0x00000020;
  static const KEY_WOW64_32KEY = 0x00000200;
  static const KEY_WOW64_64KEY = 0x00000100;
  static const KEY_WOW64_RES = 0x00000300;
  static const KEY_READ = 0x00020019;
  static const KEY_WRITE = 0x00020006;
  static const KEY_EXECUTE = 0x00020019;
  static const KEY_ALL_ACCESS = 0x000f003f;
}

/// {@category Enum}
class REG_SAVE_FORMAT {
  static const REG_STANDARD_FORMAT = 0x00000001;
  static const REG_LATEST_FORMAT = 0x00000002;
  static const REG_NO_COMPRESSION = 0x00000004;
}

/// {@category Enum}
class REG_VALUE_TYPE {
  static const REG_NONE = 0x00000000;
  static const REG_SZ = 0x00000001;
  static const REG_EXPAND_SZ = 0x00000002;
  static const REG_BINARY = 0x00000003;
  static const REG_DWORD = 0x00000004;
  static const REG_DWORD_LITTLE_ENDIAN = 0x00000004;
  static const REG_DWORD_BIG_ENDIAN = 0x00000005;
  static const REG_LINK = 0x00000006;
  static const REG_MULTI_SZ = 0x00000007;
  static const REG_RESOURCE_LIST = 0x00000008;
  static const REG_FULL_RESOURCE_DESCRIPTOR = 0x00000009;
  static const REG_RESOURCE_REQUIREMENTS_LIST = 0x0000000a;
  static const REG_QWORD = 0x0000000b;
  static const REG_QWORD_LITTLE_ENDIAN = 0x0000000b;
}

/// {@category Enum}
class RRF_RT {
  static const RRF_RT_ANY = 0x0000ffff;
  static const RRF_RT_DWORD = 0x00000018;
  static const RRF_RT_QWORD = 0x00000048;
  static const RRF_RT_REG_BINARY = 0x00000008;
  static const RRF_RT_REG_DWORD = 0x00000010;
  static const RRF_RT_REG_EXPAND_SZ = 0x00000004;
  static const RRF_RT_REG_MULTI_SZ = 0x00000020;
  static const RRF_RT_REG_NONE = 0x00000001;
  static const RRF_RT_REG_QWORD = 0x00000040;
  static const RRF_RT_REG_SZ = 0x00000002;
}
