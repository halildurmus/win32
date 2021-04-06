/// {@category Enum}
class CONNECTDLGSTRUCTW_dwFlags {
  static const CONNDLG_RO_PATH = 0x00000001;
  static const CONNDLG_CONN_POINT = 0x00000002;
  static const CONNDLG_USE_MRU = 0x00000004;
  static const CONNDLG_HIDE_BOX = 0x00000008;
  static const CONNDLG_PERSIST = 0x00000010;
  static const CONNDLG_NOT_PERSIST = 0x00000020;
}

/// {@category Enum}
class DISCDLGSTRUCTA_dwFlags {
  static const DISC_UPDATE_PROFILE = 0x00000001;
  static const DISC_NO_FORCE = 0x00000040;
}

/// {@category Enum}
class NETINFOSTRUCT_dwCharacteristicsFlags {
  static const NETINFO_DLL16 = 0x00000001;
  static const NETINFO_DISKRED = 0x00000004;
  static const NETINFO_PRINTERRED = 0x00000008;
}

/// {@category Enum}
class WNetOpenEnum_dwScope {
  static const RESOURCE_CONNECTED = 0x00000001;
  static const RESOURCE_CONTEXT = 0x00000005;
  static const RESOURCE_GLOBALNET = 0x00000002;
  static const RESOURCE_REMEMBERED = 0x00000003;
}

/// {@category Enum}
class WNetOpenEnum_dwType {
  static const RESOURCETYPE_ANY = 0x00000000;
  static const RESOURCETYPE_DISK = 0x00000001;
  static const RESOURCETYPE_PRINT = 0x00000002;
}

/// {@category Enum}
class WNetOpenEnum_dwUsage {
  static const None = 0x00000000;
  static const RESOURCEUSAGE_CONNECTABLE = 0x00000001;
  static const RESOURCEUSAGE_CONTAINER = 0x00000002;
  static const RESOURCEUSAGE_ATTACHED = 0x00000010;
  static const RESOURCEUSAGE_ALL = 0x00000013;
}

/// {@category Enum}
class WNetUseConnection_dwFlags {
  static const CONNECT_INTERACTIVE = 0x00000008;
  static const CONNECT_PROMPT = 0x00000010;
  static const CONNECT_REDIRECT = 0x00000080;
  static const CONNECT_UPDATE_PROFILE = 0x00000001;
  static const CONNECT_COMMANDLINE = 0x00000800;
  static const CONNECT_CMD_SAVECRED = 0x00001000;
  static const CONNECT_TEMPORARY = 0x00000004;
}
