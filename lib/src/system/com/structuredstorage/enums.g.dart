/// {@category Enum}
class LOCKTYPE {
  static const LOCK_WRITE = 0x00000001;
  static const LOCK_EXCLUSIVE = 0x00000002;
  static const LOCK_ONLYONCE = 0x00000004;
}

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
class PROPSPEC_KIND {
  static const PRSPEC_LPWSTR = 0x00000000;
  static const PRSPEC_PROPID = 0x00000001;
}

/// {@category Enum}
class STATFLAG {
  static const STATFLAG_DEFAULT = 0x00000000;
  static const STATFLAG_NONAME = 0x00000001;
  static const STATFLAG_NOOPEN = 0x00000002;
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
class STGFMT {
  static const STGFMT_STORAGE = 0x00000000;
  static const STGFMT_NATIVE = 0x00000001;
  static const STGFMT_FILE = 0x00000003;
  static const STGFMT_ANY = 0x00000004;
  static const STGFMT_DOCFILE = 0x00000005;
  static const STGFMT_DOCUMENT = 0x00000000;
}

/// {@category Enum}
class STGM {
  static const STGM_DIRECT = 0x00000000;
  static const STGM_TRANSACTED = 0x00010000;
  static const STGM_SIMPLE = 0x08000000;
  static const STGM_READ = 0x00000000;
  static const STGM_WRITE = 0x00000001;
  static const STGM_READWRITE = 0x00000002;
  static const STGM_SHARE_DENY_NONE = 0x00000040;
  static const STGM_SHARE_DENY_READ = 0x00000030;
  static const STGM_SHARE_DENY_WRITE = 0x00000020;
  static const STGM_SHARE_EXCLUSIVE = 0x00000010;
  static const STGM_PRIORITY = 0x00040000;
  static const STGM_DELETEONRELEASE = 0x04000000;
  static const STGM_NOSCRATCH = 0x00100000;
  static const STGM_CREATE = 0x00001000;
  static const STGM_CONVERT = 0x00020000;
  static const STGM_FAILIFTHERE = 0x00000000;
  static const STGM_NOSNAPSHOT = 0x00200000;
  static const STGM_DIRECT_SWMR = 0x00400000;
}

/// {@category Enum}
class STGMOVE {
  static const STGMOVE_MOVE = 0x00000000;
  static const STGMOVE_COPY = 0x00000001;
  static const STGMOVE_SHALLOWCOPY = 0x00000002;
}
