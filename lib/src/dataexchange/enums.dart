/// {@category Enum}
class DDE_ENABLE_CALLBACK_CMD {
  static const EC_ENABLEALL = 0x00000000;
  static const EC_ENABLEONE = 0x00000080;
  static const EC_DISABLE = 0x00000008;
  static const EC_QUERYWAITING = 0x00000002;
}

/// {@category Enum}
class DdeInitialize_afCmd {
  static const APPCLASS_MONITOR = 0x00000001;
  static const APPCLASS_STANDARD = 0x00000000;
  static const APPCMD_CLIENTONLY = 0x00000010;
  static const APPCMD_FILTERINITS = 0x00000020;
  static const CBF_FAIL_ALLSVRXACTIONS = 0x0003f000;
  static const CBF_FAIL_ADVISES = 0x00004000;
  static const CBF_FAIL_CONNECTIONS = 0x00002000;
  static const CBF_FAIL_EXECUTES = 0x00008000;
  static const CBF_FAIL_POKES = 0x00010000;
  static const CBF_FAIL_REQUESTS = 0x00020000;
  static const CBF_FAIL_SELFCONNECTIONS = 0x00001000;
  static const CBF_SKIP_ALLNOTIFICATIONS = 0x003c0000;
  static const CBF_SKIP_CONNECT_CONFIRMS = 0x00040000;
  static const CBF_SKIP_DISCONNECTS = 0x00200000;
  static const CBF_SKIP_REGISTRATIONS = 0x00080000;
  static const CBF_SKIP_UNREGISTRATIONS = 0x00100000;
  static const MF_CALLBACKS = 0x08000000;
  static const MF_CONV = 0x40000000;
  static const MF_ERRORS = 0x10000000;
  static const MF_HSZ_INFO = 0x01000000;
  static const MF_LINKS = 0x20000000;
  static const MF_POSTMSGS = 0x04000000;
  static const MF_SENDMSGS = 0x02000000;
}

/// {@category Enum}
class DdeNameService_afCmdFlags {
  static const DNS_REGISTER = 0x00000001;
  static const DNS_UNREGISTER = 0x00000002;
  static const DNS_FILTERON = 0x00000004;
  static const DNS_FILTEROFF = 0x00000008;
}

/// {@category Enum}
class DdeClientTransaction_wTypeFlags {
  static const XTYP_ADVSTART = 0x00001030;
  static const XTYP_ADVSTOP = 0x00008040;
  static const XTYP_EXECUTE = 0x00004050;
  static const XTYP_POKE = 0x00004090;
  static const XTYP_REQUEST = 0x000020b0;
  static const XTYP_ADVDATA = 0x00004010;
  static const XTYP_ADVREQ = 0x00002022;
  static const XTYP_CONNECT = 0x00001062;
  static const XTYP_CONNECT_CONFIRM = 0x00008072;
  static const XTYP_DISCONNECT = 0x000080c2;
  static const XTYP_MONITOR = 0x000080f2;
  static const XTYP_REGISTER = 0x000080a2;
  static const XTYP_UNREGISTER = 0x000080d2;
  static const XTYP_WILDCONNECT = 0x000020e2;
  static const XTYP_XACT_COMPLETE = 0x00008080;
}

/// {@category Enum}
class CONVINFO_wConvstFlags {
  static const XST_ADVACKRCVD = 0x0000000d;
  static const XST_ADVDATAACKRCVD = 0x00000010;
  static const XST_ADVDATASENT = 0x0000000f;
  static const XST_ADVSENT = 0x0000000b;
  static const XST_CONNECTED = 0x00000002;
  static const XST_DATARCVD = 0x00000006;
  static const XST_EXECACKRCVD = 0x0000000a;
  static const XST_EXECSENT = 0x00000009;
  static const XST_INCOMPLETE = 0x00000001;
  static const XST_INIT1 = 0x00000003;
  static const XST_INIT2 = 0x00000004;
  static const XST_NULL = 0x00000000;
  static const XST_POKEACKRCVD = 0x00000008;
  static const XST_POKESENT = 0x00000007;
  static const XST_REQSENT = 0x00000005;
  static const XST_UNADVACKRCVD = 0x0000000e;
  static const XST_UNADVSENT = 0x0000000c;
}

/// {@category Enum}
class CONVINFO_wStatusFlags {
  static const ST_ADVISE = 0x00000002;
  static const ST_BLOCKED = 0x00000008;
  static const ST_BLOCKNEXT = 0x00000080;
  static const ST_CLIENT = 0x00000010;
  static const ST_CONNECTED = 0x00000001;
  static const ST_INLIST = 0x00000040;
  static const ST_ISLOCAL = 0x00000004;
  static const ST_ISSELF = 0x00000100;
  static const ST_TERMINATED = 0x00000020;
}

