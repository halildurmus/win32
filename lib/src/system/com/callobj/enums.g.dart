/// {@category Enum}
class CALLFRAME_COPY {
  static const CALLFRAME_COPY_NESTED = 0x00000001;
  static const CALLFRAME_COPY_INDEPENDENT = 0x00000002;
}

/// {@category Enum}
class CALLFRAME_FREE {
  static const CALLFRAME_FREE_NONE = 0x00000000;
  static const CALLFRAME_FREE_IN = 0x00000001;
  static const CALLFRAME_FREE_INOUT = 0x00000002;
  static const CALLFRAME_FREE_OUT = 0x00000004;
  static const CALLFRAME_FREE_TOP_INOUT = 0x00000008;
  static const CALLFRAME_FREE_TOP_OUT = 0x00000010;
  static const CALLFRAME_FREE_ALL = 0x0000001f;
}

/// {@category Enum}
class CALLFRAME_NULL {
  static const CALLFRAME_NULL_NONE = 0x00000000;
  static const CALLFRAME_NULL_INOUT = 0x00000002;
  static const CALLFRAME_NULL_OUT = 0x00000004;
  static const CALLFRAME_NULL_ALL = 0x00000006;
}

/// {@category Enum}
class CALLFRAME_WALK {
  static const CALLFRAME_WALK_IN = 0x00000001;
  static const CALLFRAME_WALK_INOUT = 0x00000002;
  static const CALLFRAME_WALK_OUT = 0x00000004;
}
