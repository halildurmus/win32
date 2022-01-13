/// {@category Enum}
class PropertyConstraint {
  static const QC_EQUALS = 0x00000000;
  static const QC_NOTEQUAL = 0x00000001;
  static const QC_LESSTHAN = 0x00000002;
  static const QC_LESSTHANOREQUAL = 0x00000003;
  static const QC_GREATERTHAN = 0x00000004;
  static const QC_GREATERTHANOREQUAL = 0x00000005;
  static const QC_STARTSWITH = 0x00000006;
  static const QC_EXISTS = 0x00000007;
  static const QC_DOESNOTEXIST = 0x00000008;
  static const QC_CONTAINS = 0x00000009;
}

/// {@category Enum}
class QueryCategoryType {
  static const QCT_PROVIDER = 0x00000000;
  static const QCT_LAYERED = 0x00000001;
}

/// {@category Enum}
class QueryUpdateAction {
  static const QUA_ADD = 0x00000000;
  static const QUA_REMOVE = 0x00000001;
  static const QUA_CHANGE = 0x00000002;
}

/// {@category Enum}
class SystemVisibilityFlags {
  static const SVF_SYSTEM = 0x00000000;
  static const SVF_USER = 0x00000001;
}
