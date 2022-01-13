/// {@category Enum}
class BROADCAST_SYSTEM_MESSAGE_FLAGS {
  static const BSF_ALLOWSFW = 0x00000080;
  static const BSF_FLUSHDISK = 0x00000004;
  static const BSF_FORCEIFHUNG = 0x00000020;
  static const BSF_IGNORECURRENTTASK = 0x00000002;
  static const BSF_NOHANG = 0x00000008;
  static const BSF_NOTIMEOUTIFNOTHUNG = 0x00000040;
  static const BSF_POSTMESSAGE = 0x00000010;
  static const BSF_QUERY = 0x00000001;
  static const BSF_SENDNOTIFYMESSAGE = 0x00000100;
  static const BSF_LUID = 0x00000400;
  static const BSF_RETURNHDESK = 0x00000200;
}

/// {@category Enum}
class BROADCAST_SYSTEM_MESSAGE_INFO {
  static const BSM_ALLCOMPONENTS = 0x00000000;
  static const BSM_ALLDESKTOPS = 0x00000010;
  static const BSM_APPLICATIONS = 0x00000008;
}

/// {@category Enum}
class USER_OBJECT_INFORMATION_INDEX {
  static const UOI_FLAGS = 0x00000001;
  static const UOI_HEAPSIZE = 0x00000005;
  static const UOI_IO = 0x00000006;
  static const UOI_NAME = 0x00000002;
  static const UOI_TYPE = 0x00000003;
  static const UOI_USER_SID = 0x00000004;
}
