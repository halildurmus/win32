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
