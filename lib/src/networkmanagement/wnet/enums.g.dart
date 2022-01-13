/// {@category Enum}
class CONNECTDLGSTRUCT_FLAGS {
  static const CONNDLG_RO_PATH = 0x00000001;
  static const CONNDLG_CONN_POINT = 0x00000002;
  static const CONNDLG_USE_MRU = 0x00000004;
  static const CONNDLG_HIDE_BOX = 0x00000008;
  static const CONNDLG_PERSIST = 0x00000010;
  static const CONNDLG_NOT_PERSIST = 0x00000020;
}

/// {@category Enum}
class DISCDLGSTRUCT_FLAGS {
  static const DISC_UPDATE_PROFILE = 0x00000001;
  static const DISC_NO_FORCE = 0x00000040;
}

/// {@category Enum}
class NETINFOSTRUCT_CHARACTERISTICS {
  static const NETINFO_DLL16 = 0x00000001;
  static const NETINFO_DISKRED = 0x00000004;
  static const NETINFO_PRINTERRED = 0x00000008;
}

/// {@category Enum}
class NETWORK_NAME_FORMAT_FLAGS {
  static const WNFMT_MULTILINE = 0x00000001;
  static const WNFMT_ABBREVIATED = 0x00000002;
}

/// {@category Enum}
class NET_RESOURCE_SCOPE {
  static const RESOURCE_CONNECTED = 0x00000001;
  static const RESOURCE_CONTEXT = 0x00000005;
  static const RESOURCE_GLOBALNET = 0x00000002;
  static const RESOURCE_REMEMBERED = 0x00000003;
}

/// {@category Enum}
class NET_RESOURCE_TYPE {
  static const RESOURCETYPE_ANY = 0x00000000;
  static const RESOURCETYPE_DISK = 0x00000001;
  static const RESOURCETYPE_PRINT = 0x00000002;
}

/// {@category Enum}
class NET_USE_CONNECT_FLAGS {
  static const CONNECT_INTERACTIVE = 0x00000008;
  static const CONNECT_PROMPT = 0x00000010;
  static const CONNECT_REDIRECT = 0x00000080;
  static const CONNECT_UPDATE_PROFILE = 0x00000001;
  static const CONNECT_COMMANDLINE = 0x00000800;
  static const CONNECT_CMD_SAVECRED = 0x00001000;
  static const CONNECT_TEMPORARY = 0x00000004;
  static const CONNECT_DEFERRED = 0x00000400;
  static const CONNECT_UPDATE_RECENT = 0x00000002;
}

/// {@category Enum}
class NPDIRECTORY_NOTIFY_OPERATION {
  static const WNDN_MKDIR = 0x00000001;
  static const WNDN_RMDIR = 0x00000002;
  static const WNDN_MVDIR = 0x00000003;
}

/// {@category Enum}
class NP_PROPERTY_DIALOG_SELECTION {
  static const WNPS_FILE = 0x00000000;
  static const WNPS_DIR = 0x00000001;
  static const WNPS_MULT = 0x00000002;
}

/// {@category Enum}
class UNC_INFO_LEVEL {
  static const UNIVERSAL_NAME_INFO_LEVEL = 0x00000001;
  static const REMOTE_NAME_INFO_LEVEL = 0x00000002;
}

/// {@category Enum}
class WNET_OPEN_ENUM_USAGE {
  static const RESOURCEUSAGE_NONE = 0x00000000;
  static const RESOURCEUSAGE_CONNECTABLE = 0x00000001;
  static const RESOURCEUSAGE_CONTAINER = 0x00000002;
  static const RESOURCEUSAGE_ATTACHED = 0x00000010;
  static const RESOURCEUSAGE_ALL = 0x00000013;
}

/// {@category Enum}
class WNPERM_DLG {
  static const WNPERM_DLG_PERM = 0x00000000;
  static const WNPERM_DLG_AUDIT = 0x00000001;
  static const WNPERM_DLG_OWNER = 0x00000002;
}
