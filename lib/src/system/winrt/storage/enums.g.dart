/// {@category Enum}
class HANDLE_ACCESS_OPTIONS {
  static const HAO_NONE = 0x00000000;
  static const HAO_READ_ATTRIBUTES = 0x00000080;
  static const HAO_READ = 0x00120089;
  static const HAO_WRITE = 0x00120116;
  static const HAO_DELETE = 0x00010000;
}

/// {@category Enum}
class HANDLE_CREATION_OPTIONS {
  static const HCO_CREATE_NEW = 0x00000001;
  static const HCO_CREATE_ALWAYS = 0x00000002;
  static const HCO_OPEN_EXISTING = 0x00000003;
  static const HCO_OPEN_ALWAYS = 0x00000004;
  static const HCO_TRUNCATE_EXISTING = 0x00000005;
}

/// {@category Enum}
class HANDLE_OPTIONS {
  static const HO_NONE = 0x00000000;
  static const HO_OPEN_REQUIRING_OPLOCK = 0x00040000;
  static const HO_DELETE_ON_CLOSE = 0x04000000;
  static const HO_SEQUENTIAL_SCAN = 0x08000000;
  static const HO_RANDOM_ACCESS = 0x10000000;
  static const HO_NO_BUFFERING = 0x20000000;
  static const HO_OVERLAPPED = 0x40000000;
  static const HO_WRITE_THROUGH = 0x80000000;
}

/// {@category Enum}
class HANDLE_SHARING_OPTIONS {
  static const HSO_SHARE_NONE = 0x00000000;
  static const HSO_SHARE_READ = 0x00000001;
  static const HSO_SHARE_WRITE = 0x00000002;
  static const HSO_SHARE_DELETE = 0x00000004;
}
