/// {@category Enum}
class NS_CMD_FLAGS {
  static const CMD_FLAG_PRIVATE = 0x00000001;
  static const CMD_FLAG_INTERACTIVE = 0x00000002;
  static const CMD_FLAG_LOCAL = 0x00000008;
  static const CMD_FLAG_ONLINE = 0x00000010;
  static const CMD_FLAG_HIDDEN = 0x00000020;
  static const CMD_FLAG_LIMIT_MASK = 0x0000ffff;
  static const CMD_FLAG_PRIORITY = 0x80000000;
}

/// {@category Enum}
class NS_REQS {
  static const NS_REQ_ZERO = 0x00000000;
  static const NS_REQ_PRESENT = 0x00000001;
  static const NS_REQ_ALLOW_MULTIPLE = 0x00000002;
  static const NS_REQ_ONE_OR_MORE = 0x00000003;
}

/// {@category Enum}
class NS_EVENTS {
  static const NS_EVENT_LOOP = 0x00010000;
  static const NS_EVENT_LAST_N = 0x00000001;
  static const NS_EVENT_LAST_SECS = 0x00000002;
  static const NS_EVENT_FROM_N = 0x00000004;
  static const NS_EVENT_FROM_START = 0x00000008;
}

/// {@category Enum}
class NS_MODE_CHANGE {
  static const NETSH_COMMIT = 0x00000000;
  static const NETSH_UNCOMMIT = 0x00000001;
  static const NETSH_FLUSH = 0x00000002;
  static const NETSH_COMMIT_STATE = 0x00000003;
  static const NETSH_SAVE = 0x00000004;
}

