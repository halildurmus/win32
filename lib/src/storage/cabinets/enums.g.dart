/// {@category Enum}
class FCIERROR {
  static const FCIERR_NONE = 0x00000000;
  static const FCIERR_OPEN_SRC = 0x00000001;
  static const FCIERR_READ_SRC = 0x00000002;
  static const FCIERR_ALLOC_FAIL = 0x00000003;
  static const FCIERR_TEMP_FILE = 0x00000004;
  static const FCIERR_BAD_COMPR_TYPE = 0x00000005;
  static const FCIERR_CAB_FILE = 0x00000006;
  static const FCIERR_USER_ABORT = 0x00000007;
  static const FCIERR_MCI_FAIL = 0x00000008;
  static const FCIERR_CAB_FORMAT_LIMIT = 0x00000009;
}

/// {@category Enum}
class FDICREATE_CPU_TYPE {
  static const cpu80286 = 0x00000000;
  static const cpu80386 = 0x00000001;
}

/// {@category Enum}
class FDIDECRYPTTYPE {
  static const fdidtNEW_CABINET = 0x00000000;
  static const fdidtNEW_FOLDER = 0x00000001;
  static const fdidtDECRYPT = 0x00000002;
}

/// {@category Enum}
class FDIERROR {
  static const FDIERROR_NONE = 0x00000000;
  static const FDIERROR_CABINET_NOT_FOUND = 0x00000001;
  static const FDIERROR_NOT_A_CABINET = 0x00000002;
  static const FDIERROR_UNKNOWN_CABINET_VERSION = 0x00000003;
  static const FDIERROR_CORRUPT_CABINET = 0x00000004;
  static const FDIERROR_ALLOC_FAIL = 0x00000005;
  static const FDIERROR_BAD_COMPR_TYPE = 0x00000006;
  static const FDIERROR_MDI_FAIL = 0x00000007;
  static const FDIERROR_TARGET_FILE = 0x00000008;
  static const FDIERROR_RESERVE_MISMATCH = 0x00000009;
  static const FDIERROR_WRONG_CABINET = 0x0000000a;
  static const FDIERROR_USER_ABORT = 0x0000000b;
  static const FDIERROR_EOF = 0x0000000c;
}

/// {@category Enum}
class FDINOTIFICATIONTYPE {
  static const fdintCABINET_INFO = 0x00000000;
  static const fdintPARTIAL_FILE = 0x00000001;
  static const fdintCOPY_FILE = 0x00000002;
  static const fdintCLOSE_FILE_INFO = 0x00000003;
  static const fdintNEXT_CABINET = 0x00000004;
  static const fdintENUMERATE = 0x00000005;
}
