/// {@category Enum}
class PIDMSI_STATUS_VALUE {
  static const PIDMSI_STATUS_NORMAL = 0x00000000;
  static const PIDMSI_STATUS_NEW = 0x00000001;
  static const PIDMSI_STATUS_PRELIM = 0x00000002;
  static const PIDMSI_STATUS_DRAFT = 0x00000003;
  static const PIDMSI_STATUS_INPROGRESS = 0x00000004;
  static const PIDMSI_STATUS_EDIT = 0x00000005;
  static const PIDMSI_STATUS_REVIEW = 0x00000006;
  static const PIDMSI_STATUS_PROOF = 0x00000007;
  static const PIDMSI_STATUS_FINAL = 0x00000008;
  static const PIDMSI_STATUS_OTHER = 0x00007fff;
}

/// {@category Enum}
class JET_RELOP {
  static const JET_relopEquals = 0x00000000;
  static const JET_relopPrefixEquals = 0x00000001;
  static const JET_relopNotEquals = 0x00000002;
  static const JET_relopLessThanOrEqual = 0x00000003;
  static const JET_relopLessThan = 0x00000004;
  static const JET_relopGreaterThanOrEqual = 0x00000005;
  static const JET_relopGreaterThan = 0x00000006;
  static const JET_relopBitmaskEqualsZero = 0x00000007;
  static const JET_relopBitmaskNotEqualsZero = 0x00000008;
}

/// {@category Enum}
class JET_ERRCAT {
  static const JET_errcatUnknown = 0x00000000;
  static const JET_errcatError = 0x00000001;
  static const JET_errcatOperation = 0x00000002;
  static const JET_errcatFatal = 0x00000003;
  static const JET_errcatIO = 0x00000004;
  static const JET_errcatResource = 0x00000005;
  static const JET_errcatMemory = 0x00000006;
  static const JET_errcatQuota = 0x00000007;
  static const JET_errcatDisk = 0x00000008;
  static const JET_errcatData = 0x00000009;
  static const JET_errcatCorruption = 0x0000000a;
  static const JET_errcatInconsistent = 0x0000000b;
  static const JET_errcatFragmentation = 0x0000000c;
  static const JET_errcatApi = 0x0000000d;
  static const JET_errcatUsage = 0x0000000e;
  static const JET_errcatState = 0x0000000f;
  static const JET_errcatObsolete = 0x00000010;
  static const JET_errcatMax = 0x00000011;
}

/// {@category Enum}
class JET_INDEXCHECKING {
  static const JET_IndexCheckingOff = 0x00000000;
  static const JET_IndexCheckingOn = 0x00000001;
  static const JET_IndexCheckingDeferToOpenTable = 0x00000002;
  static const JET_IndexCheckingMax = 0x00000003;
}

/// {@category Enum}
class PROPSPEC_ulKind {
  static const PRSPEC_LPWSTR = 0x00000000;
  static const PRSPEC_PROPID = 0x00000001;
}

/// {@category Enum}
class STGC {
  static const STGC_DEFAULT = 0x00000000;
  static const STGC_OVERWRITE = 0x00000001;
  static const STGC_ONLYIFCURRENT = 0x00000002;
  static const STGC_DANGEROUSLYCOMMITMERELYTODISKCACHE = 0x00000004;
  static const STGC_CONSOLIDATE = 0x00000008;
}

/// {@category Enum}
class STGMOVE {
  static const STGMOVE_MOVE = 0x00000000;
  static const STGMOVE_COPY = 0x00000001;
  static const STGMOVE_SHALLOWCOPY = 0x00000002;
}

/// {@category Enum}
class STATFLAG {
  static const STATFLAG_DEFAULT = 0x00000000;
  static const STATFLAG_NONAME = 0x00000001;
  static const STATFLAG_NOOPEN = 0x00000002;
}

/// {@category Enum}
class STGTY {
  static const STGTY_STORAGE = 0x00000001;
  static const STGTY_STREAM = 0x00000002;
  static const STGTY_LOCKBYTES = 0x00000003;
  static const STGTY_PROPERTY = 0x00000004;
}

/// {@category Enum}
class STREAM_SEEK {
  static const STREAM_SEEK_SET = 0x00000000;
  static const STREAM_SEEK_CUR = 0x00000001;
  static const STREAM_SEEK_END = 0x00000002;
}

/// {@category Enum}
class LOCKTYPE {
  static const LOCK_WRITE = 0x00000001;
  static const LOCK_EXCLUSIVE = 0x00000002;
  static const LOCK_ONLYONCE = 0x00000004;
}

