/// {@category Enum}
class SHGFI_FLAGS {
  static const SHGFI_ADDOVERLAYS = 0x00000020;
  static const SHGFI_ATTR_SPECIFIED = 0x00020000;
  static const SHGFI_ATTRIBUTES = 0x00000800;
  static const SHGFI_DISPLAYNAME = 0x00000200;
  static const SHGFI_EXETYPE = 0x00002000;
  static const SHGFI_ICON = 0x00000100;
  static const SHGFI_ICONLOCATION = 0x00001000;
  static const SHGFI_LARGEICON = 0x00000000;
  static const SHGFI_LINKOVERLAY = 0x00008000;
  static const SHGFI_OPENICON = 0x00000002;
  static const SHGFI_OVERLAYINDEX = 0x00000040;
  static const SHGFI_PIDL = 0x00000008;
  static const SHGFI_SELECTED = 0x00010000;
  static const SHGFI_SHELLICONSIZE = 0x00000004;
  static const SHGFI_SMALLICON = 0x00000001;
  static const SHGFI_SYSICONINDEX = 0x00004000;
  static const SHGFI_TYPENAME = 0x00000400;
  static const SHGFI_USEFILEATTRIBUTES = 0x00000010;
}

/// {@category Enum}
class SHCNE_ID {
  static const SHCNE_RENAMEITEM = 0x00000001;
  static const SHCNE_CREATE = 0x00000002;
  static const SHCNE_DELETE = 0x00000004;
  static const SHCNE_MKDIR = 0x00000008;
  static const SHCNE_RMDIR = 0x00000010;
  static const SHCNE_MEDIAINSERTED = 0x00000020;
  static const SHCNE_MEDIAREMOVED = 0x00000040;
  static const SHCNE_DRIVEREMOVED = 0x00000080;
  static const SHCNE_DRIVEADD = 0x00000100;
  static const SHCNE_NETSHARE = 0x00000200;
  static const SHCNE_NETUNSHARE = 0x00000400;
  static const SHCNE_ATTRIBUTES = 0x00000800;
  static const SHCNE_UPDATEDIR = 0x00001000;
  static const SHCNE_UPDATEITEM = 0x00002000;
  static const SHCNE_SERVERDISCONNECT = 0x00004000;
  static const SHCNE_UPDATEIMAGE = 0x00008000;
  static const SHCNE_DRIVEADDGUI = 0x00010000;
  static const SHCNE_RENAMEFOLDER = 0x00020000;
  static const SHCNE_FREESPACE = 0x00040000;
  static const SHCNE_EXTENDED_EVENT = 0x04000000;
  static const SHCNE_ASSOCCHANGED = 0x08000000;
  static const SHCNE_DISKEVENTS = 0x0002381f;
  static const SHCNE_GLOBALEVENTS = 0x0c0581e0;
  static const SHCNE_ALLEVENTS = 0x7fffffff;
  static const SHCNE_INTERRUPT = 0x80000000;
}

/// {@category Enum}
class SHCNRF_SOURCE {
  static const SHCNRF_InterruptLevel = 0x00000001;
  static const SHCNRF_ShellLevel = 0x00000002;
  static const SHCNRF_RecursiveInterrupt = 0x00001000;
  static const SHCNRF_NewDelivery = 0x00008000;
}

/// {@category Enum}
class SHCNF_FLAGS {
  static const SHCNF_IDLIST = 0x00000000;
  static const SHCNF_PATHA = 0x00000001;
  static const SHCNF_PRINTERA = 0x00000002;
  static const SHCNF_DWORD = 0x00000003;
  static const SHCNF_PATHW = 0x00000005;
  static const SHCNF_PRINTERW = 0x00000006;
  static const SHCNF_TYPE = 0x000000ff;
  static const SHCNF_FLUSH = 0x00001000;
  static const SHCNF_FLUSHNOWAIT = 0x00003000;
  static const SHCNF_NOTIFYRECURSIVE = 0x00010000;
  static const SHCNF_PATH = 0x00000005;
  static const SHCNF_PRINTER = 0x00000006;
}

/// {@category Enum}
class QITIPF_FLAGS {
  static const QITIPF_DEFAULT = 0x00000000;
  static const QITIPF_USENAME = 0x00000001;
  static const QITIPF_LINKNOTARGET = 0x00000002;
  static const QITIPF_LINKUSETARGET = 0x00000004;
  static const QITIPF_USESLOWTIP = 0x00000008;
  static const QITIPF_SINGLELINE = 0x00000010;
  static const QIF_CACHED = 0x00000001;
  static const QIF_DONTEXPANDFOLDER = 0x00000002;
}

/// {@category Enum}
class SHDID_ID {
  static const SHDID_ROOT_REGITEM = 0x00000001;
  static const SHDID_FS_FILE = 0x00000002;
  static const SHDID_FS_DIRECTORY = 0x00000003;
  static const SHDID_FS_OTHER = 0x00000004;
  static const SHDID_COMPUTER_DRIVE35 = 0x00000005;
  static const SHDID_COMPUTER_DRIVE525 = 0x00000006;
  static const SHDID_COMPUTER_REMOVABLE = 0x00000007;
  static const SHDID_COMPUTER_FIXED = 0x00000008;
  static const SHDID_COMPUTER_NETDRIVE = 0x00000009;
  static const SHDID_COMPUTER_CDROM = 0x0000000a;
  static const SHDID_COMPUTER_RAMDISK = 0x0000000b;
  static const SHDID_COMPUTER_OTHER = 0x0000000c;
  static const SHDID_NET_DOMAIN = 0x0000000d;
  static const SHDID_NET_SERVER = 0x0000000e;
  static const SHDID_NET_SHARE = 0x0000000f;
  static const SHDID_NET_RESTOFNET = 0x00000010;
  static const SHDID_NET_OTHER = 0x00000011;
  static const SHDID_COMPUTER_IMAGING = 0x00000012;
  static const SHDID_COMPUTER_AUDIO = 0x00000013;
  static const SHDID_COMPUTER_SHAREDDOCS = 0x00000014;
  static const SHDID_MOBILE_DEVICE = 0x00000015;
  static const SHDID_REMOTE_DESKTOP_DRIVE = 0x00000016;
}

/// {@category Enum}
class SHGDFIL_FORMAT {
  static const SHGDFIL_FINDDATA = 0x00000001;
  static const SHGDFIL_NETRESOURCE = 0x00000002;
  static const SHGDFIL_DESCRIPTIONID = 0x00000003;
}

/// {@category Enum}
class PRF_FLAGS {
  static const PRF_VERIFYEXISTS = 0x00000001;
  static const PRF_TRYPROGRAMEXTENSIONS = 0x00000003;
  static const PRF_FIRSTDIRDEF = 0x00000004;
  static const PRF_DONTFINDLNK = 0x00000008;
  static const PRF_REQUIREABSOLUTE = 0x00000010;
}

/// {@category Enum}
class PCS_RET {
  static const PCS_FATAL = 0x80000000;
  static const PCS_REPLACEDCHAR = 0x00000001;
  static const PCS_REMOVEDCHAR = 0x00000002;
  static const PCS_TRUNCATED = 0x00000004;
  static const PCS_PATHTOOLONG = 0x00000008;
}

/// {@category Enum}
class MM_FLAGS {
  static const MM_ADDSEPARATOR = 0x00000001;
  static const MM_SUBMENUSHAVEIDS = 0x00000002;
  static const MM_DONTREMOVESEPS = 0x00000004;
}

/// {@category Enum}
class SHOP_TYPE {
  static const SHOP_PRINTERNAME = 0x00000001;
  static const SHOP_FILEPATH = 0x00000002;
  static const SHOP_VOLUMEGUID = 0x00000004;
}

/// {@category Enum}
class SHFMT_ID {
  static const SHFMT_ID_DEFAULT = 0x0000ffff;
}

/// {@category Enum}
class SHFMT_OPT {
  static const SHFMT_OPT_NONE = 0x00000000;
  static const SHFMT_OPT_FULL = 0x00000001;
  static const SHFMT_OPT_SYSONLY = 0x00000002;
}

/// {@category Enum}
class SHFMT_RET {
  static const SHFMT_ERROR = 0xffffffff;
  static const SHFMT_CANCEL = 0xfffffffe;
  static const SHFMT_NOFORMAT = 0xfffffffd;
}

/// {@category Enum}
class VALIDATEUNC_OPTION {
  static const VALIDATEUNC_CONNECT = 0x00000001;
  static const VALIDATEUNC_NOUI = 0x00000002;
  static const VALIDATEUNC_PRINT = 0x00000004;
  static const VALIDATEUNC_PERSIST = 0x00000008;
  static const VALIDATEUNC_VALID = 0x0000000f;
}

/// {@category Enum}
class SFVM_MESSAGE_ID {
  static const SFVM_MERGEMENU = 0x00000001;
  static const SFVM_INVOKECOMMAND = 0x00000002;
  static const SFVM_GETHELPTEXT = 0x00000003;
  static const SFVM_GETTOOLTIPTEXT = 0x00000004;
  static const SFVM_GETBUTTONINFO = 0x00000005;
  static const SFVM_GETBUTTONS = 0x00000006;
  static const SFVM_INITMENUPOPUP = 0x00000007;
  static const SFVM_FSNOTIFY = 0x0000000e;
  static const SFVM_WINDOWCREATED = 0x0000000f;
  static const SFVM_GETDETAILSOF = 0x00000017;
  static const SFVM_COLUMNCLICK = 0x00000018;
  static const SFVM_QUERYFSNOTIFY = 0x00000019;
  static const SFVM_DEFITEMCOUNT = 0x0000001a;
  static const SFVM_DEFVIEWMODE = 0x0000001b;
  static const SFVM_UNMERGEMENU = 0x0000001c;
  static const SFVM_UPDATESTATUSBAR = 0x0000001f;
  static const SFVM_BACKGROUNDENUM = 0x00000020;
  static const SFVM_DIDDRAGDROP = 0x00000024;
  static const SFVM_SETISFV = 0x00000027;
  static const SFVM_THISIDLIST = 0x00000029;
  static const SFVM_ADDPROPERTYPAGES = 0x0000002f;
  static const SFVM_BACKGROUNDENUMDONE = 0x00000030;
  static const SFVM_GETNOTIFY = 0x00000031;
  static const SFVM_GETSORTDEFAULTS = 0x00000035;
  static const SFVM_SIZE = 0x00000039;
  static const SFVM_GETZONE = 0x0000003a;
  static const SFVM_GETPANE = 0x0000003b;
  static const SFVM_GETHELPTOPIC = 0x0000003f;
  static const SFVM_GETANIMATION = 0x00000044;
}

/// {@category Enum}
class SFVS_SELECT {
  static const SFVS_SELECT_NONE = 0x00000000;
  static const SFVS_SELECT_ALLITEMS = 0x00000001;
  static const SFVS_SELECT_INVERT = 0x00000002;
}

/// {@category Enum}
class DFM_MESSAGE_ID {
  static const DFM_MERGECONTEXTMENU = 0x00000001;
  static const DFM_INVOKECOMMAND = 0x00000002;
  static const DFM_GETHELPTEXT = 0x00000005;
  static const DFM_WM_MEASUREITEM = 0x00000006;
  static const DFM_WM_DRAWITEM = 0x00000007;
  static const DFM_WM_INITMENUPOPUP = 0x00000008;
  static const DFM_VALIDATECMD = 0x00000009;
  static const DFM_MERGECONTEXTMENU_TOP = 0x0000000a;
  static const DFM_GETHELPTEXTW = 0x0000000b;
  static const DFM_INVOKECOMMANDEX = 0x0000000c;
  static const DFM_MAPCOMMANDNAME = 0x0000000d;
  static const DFM_GETDEFSTATICID = 0x0000000e;
  static const DFM_GETVERBW = 0x0000000f;
  static const DFM_GETVERBA = 0x00000010;
  static const DFM_MERGECONTEXTMENU_BOTTOM = 0x00000011;
  static const DFM_MODIFYQCMFLAGS = 0x00000012;
}

/// {@category Enum}
class DFM_CMD {
  static const DFM_CMD_DELETE = 0xffffffff;
  static const DFM_CMD_MOVE = 0xfffffffe;
  static const DFM_CMD_COPY = 0xfffffffd;
  static const DFM_CMD_LINK = 0xfffffffc;
  static const DFM_CMD_PROPERTIES = 0xfffffffb;
  static const DFM_CMD_NEWFOLDER = 0xfffffffa;
  static const DFM_CMD_PASTE = 0xfffffff9;
  static const DFM_CMD_VIEWLIST = 0xfffffff8;
  static const DFM_CMD_VIEWDETAILS = 0xfffffff7;
  static const DFM_CMD_PASTELINK = 0xfffffff6;
  static const DFM_CMD_PASTESPECIAL = 0xfffffff5;
  static const DFM_CMD_MODALPROP = 0xfffffff4;
  static const DFM_CMD_RENAME = 0xfffffff3;
}

/// {@category Enum}
class PID_IS {
  static const PID_IS_URL = 0x00000002;
  static const PID_IS_NAME = 0x00000004;
  static const PID_IS_WORKINGDIR = 0x00000005;
  static const PID_IS_HOTKEY = 0x00000006;
  static const PID_IS_SHOWCMD = 0x00000007;
  static const PID_IS_ICONINDEX = 0x00000008;
  static const PID_IS_ICONFILE = 0x00000009;
  static const PID_IS_WHATSNEW = 0x0000000a;
  static const PID_IS_AUTHOR = 0x0000000b;
  static const PID_IS_DESCRIPTION = 0x0000000c;
  static const PID_IS_COMMENT = 0x0000000d;
  static const PID_IS_ROAMED = 0x0000000f;
}

/// {@category Enum}
class PID_INTSITE {
  static const PID_INTSITE_WHATSNEW = 0x00000002;
  static const PID_INTSITE_AUTHOR = 0x00000003;
  static const PID_INTSITE_LASTVISIT = 0x00000004;
  static const PID_INTSITE_LASTMOD = 0x00000005;
  static const PID_INTSITE_VISITCOUNT = 0x00000006;
  static const PID_INTSITE_DESCRIPTION = 0x00000007;
  static const PID_INTSITE_COMMENT = 0x00000008;
  static const PID_INTSITE_FLAGS = 0x00000009;
  static const PID_INTSITE_CONTENTLEN = 0x0000000a;
  static const PID_INTSITE_CONTENTCODE = 0x0000000b;
  static const PID_INTSITE_RECURSE = 0x0000000c;
  static const PID_INTSITE_WATCH = 0x0000000d;
  static const PID_INTSITE_SUBSCRIPTION = 0x0000000e;
  static const PID_INTSITE_URL = 0x0000000f;
  static const PID_INTSITE_TITLE = 0x00000010;
  static const PID_INTSITE_CODEPAGE = 0x00000012;
  static const PID_INTSITE_TRACKING = 0x00000013;
  static const PID_INTSITE_ICONINDEX = 0x00000014;
  static const PID_INTSITE_ICONFILE = 0x00000015;
  static const PID_INTSITE_ROAMED = 0x00000022;
}

/// {@category Enum}
class PIDISF_FLAGS {
  static const PIDISF_RECENTLYCHANGED = 0x00000001;
  static const PIDISF_CACHEDSTICKY = 0x00000002;
  static const PIDISF_CACHEIMAGES = 0x00000010;
  static const PIDISF_FOLLOWALLLINKS = 0x00000020;
}

/// {@category Enum}
class PIDISM_OPTIONS {
  static const PIDISM_GLOBAL = 0x00000000;
  static const PIDISM_WATCH = 0x00000001;
  static const PIDISM_DONTWATCH = 0x00000002;
}

/// {@category Enum}
class PIDISR_INFO {
  static const PIDISR_UP_TO_DATE = 0x00000000;
  static const PIDISR_NEEDS_ADD = 0x00000001;
  static const PIDISR_NEEDS_UPDATE = 0x00000002;
  static const PIDISR_NEEDS_DELETE = 0x00000003;
}

/// {@category Enum}
class SSF_MASK {
  static const SSF_SHOWALLOBJECTS = 0x00000001;
  static const SSF_SHOWEXTENSIONS = 0x00000002;
  static const SSF_HIDDENFILEEXTS = 0x00000004;
  static const SSF_SERVERADMINUI = 0x00000004;
  static const SSF_SHOWCOMPCOLOR = 0x00000008;
  static const SSF_SORTCOLUMNS = 0x00000010;
  static const SSF_SHOWSYSFILES = 0x00000020;
  static const SSF_DOUBLECLICKINWEBVIEW = 0x00000080;
  static const SSF_SHOWATTRIBCOL = 0x00000100;
  static const SSF_DESKTOPHTML = 0x00000200;
  static const SSF_WIN95CLASSIC = 0x00000400;
  static const SSF_DONTPRETTYPATH = 0x00000800;
  static const SSF_SHOWINFOTIP = 0x00002000;
  static const SSF_MAPNETDRVBUTTON = 0x00001000;
  static const SSF_NOCONFIRMRECYCLE = 0x00008000;
  static const SSF_HIDEICONS = 0x00004000;
  static const SSF_FILTER = 0x00010000;
  static const SSF_WEBVIEW = 0x00020000;
  static const SSF_SHOWSUPERHIDDEN = 0x00040000;
  static const SSF_SEPPROCESS = 0x00080000;
  static const SSF_NONETCRAWLING = 0x00100000;
  static const SSF_STARTPANELON = 0x00200000;
  static const SSF_SHOWSTARTPAGE = 0x00400000;
  static const SSF_AUTOCHECKSELECT = 0x00800000;
  static const SSF_ICONSONLY = 0x01000000;
  static const SSF_SHOWTYPEOVERLAY = 0x02000000;
  static const SSF_SHOWSTATUSBAR = 0x04000000;
}

/// {@category Enum}
class ShellWindowTypeConstants {
  static const SWC_EXPLORER = 0x00000000;
  static const SWC_BROWSER = 0x00000001;
  static const SWC_3RDPARTY = 0x00000002;
  static const SWC_CALLBACK = 0x00000004;
  static const SWC_DESKTOP = 0x00000008;
}

/// {@category Enum}
class ShellWindowFindWindowOptions {
  static const SWFO_NEEDDISPATCH = 0x00000001;
  static const SWFO_INCLUDEPENDING = 0x00000002;
  static const SWFO_COOKIEPASSED = 0x00000004;
}

/// {@category Enum}
class ASSOCCLASS {
  static const ASSOCCLASS_SHELL_KEY = 0x00000000;
  static const ASSOCCLASS_PROGID_KEY = 0x00000001;
  static const ASSOCCLASS_PROGID_STR = 0x00000002;
  static const ASSOCCLASS_CLSID_KEY = 0x00000003;
  static const ASSOCCLASS_CLSID_STR = 0x00000004;
  static const ASSOCCLASS_APP_KEY = 0x00000005;
  static const ASSOCCLASS_APP_STR = 0x00000006;
  static const ASSOCCLASS_SYSTEM_STR = 0x00000007;
  static const ASSOCCLASS_FOLDER = 0x00000008;
  static const ASSOCCLASS_STAR = 0x00000009;
  static const ASSOCCLASS_FIXED_PROGID_STR = 0x0000000a;
  static const ASSOCCLASS_PROTOCOL_STR = 0x0000000b;
}

/// {@category Enum}
class QUERY_USER_NOTIFICATION_STATE {
  static const QUNS_NOT_PRESENT = 0x00000001;
  static const QUNS_BUSY = 0x00000002;
  static const QUNS_RUNNING_D3D_FULL_SCREEN = 0x00000003;
  static const QUNS_PRESENTATION_MODE = 0x00000004;
  static const QUNS_ACCEPTS_NOTIFICATIONS = 0x00000005;
  static const QUNS_QUIET_TIME = 0x00000006;
  static const QUNS_APP = 0x00000007;
}

/// {@category Enum}
class SHSTOCKICONID {
  static const SIID_DOCNOASSOC = 0x00000000;
  static const SIID_DOCASSOC = 0x00000001;
  static const SIID_APPLICATION = 0x00000002;
  static const SIID_FOLDER = 0x00000003;
  static const SIID_FOLDEROPEN = 0x00000004;
  static const SIID_DRIVE525 = 0x00000005;
  static const SIID_DRIVE35 = 0x00000006;
  static const SIID_DRIVEREMOVE = 0x00000007;
  static const SIID_DRIVEFIXED = 0x00000008;
  static const SIID_DRIVENET = 0x00000009;
  static const SIID_DRIVENETDISABLED = 0x0000000a;
  static const SIID_DRIVECD = 0x0000000b;
  static const SIID_DRIVERAM = 0x0000000c;
  static const SIID_WORLD = 0x0000000d;
  static const SIID_SERVER = 0x0000000f;
  static const SIID_PRINTER = 0x00000010;
  static const SIID_MYNETWORK = 0x00000011;
  static const SIID_FIND = 0x00000016;
  static const SIID_HELP = 0x00000017;
  static const SIID_SHARE = 0x0000001c;
  static const SIID_LINK = 0x0000001d;
  static const SIID_SLOWFILE = 0x0000001e;
  static const SIID_RECYCLER = 0x0000001f;
  static const SIID_RECYCLERFULL = 0x00000020;
  static const SIID_MEDIACDAUDIO = 0x00000028;
  static const SIID_LOCK = 0x0000002f;
  static const SIID_AUTOLIST = 0x00000031;
  static const SIID_PRINTERNET = 0x00000032;
  static const SIID_SERVERSHARE = 0x00000033;
  static const SIID_PRINTERFAX = 0x00000034;
  static const SIID_PRINTERFAXNET = 0x00000035;
  static const SIID_PRINTERFILE = 0x00000036;
  static const SIID_STACK = 0x00000037;
  static const SIID_MEDIASVCD = 0x00000038;
  static const SIID_STUFFEDFOLDER = 0x00000039;
  static const SIID_DRIVEUNKNOWN = 0x0000003a;
  static const SIID_DRIVEDVD = 0x0000003b;
  static const SIID_MEDIADVD = 0x0000003c;
  static const SIID_MEDIADVDRAM = 0x0000003d;
  static const SIID_MEDIADVDRW = 0x0000003e;
  static const SIID_MEDIADVDR = 0x0000003f;
  static const SIID_MEDIADVDROM = 0x00000040;
  static const SIID_MEDIACDAUDIOPLUS = 0x00000041;
  static const SIID_MEDIACDRW = 0x00000042;
  static const SIID_MEDIACDR = 0x00000043;
  static const SIID_MEDIACDBURN = 0x00000044;
  static const SIID_MEDIABLANKCD = 0x00000045;
  static const SIID_MEDIACDROM = 0x00000046;
  static const SIID_AUDIOFILES = 0x00000047;
  static const SIID_IMAGEFILES = 0x00000048;
  static const SIID_VIDEOFILES = 0x00000049;
  static const SIID_MIXEDFILES = 0x0000004a;
  static const SIID_FOLDERBACK = 0x0000004b;
  static const SIID_FOLDERFRONT = 0x0000004c;
  static const SIID_SHIELD = 0x0000004d;
  static const SIID_WARNING = 0x0000004e;
  static const SIID_INFO = 0x0000004f;
  static const SIID_ERROR = 0x00000050;
  static const SIID_KEY = 0x00000051;
  static const SIID_SOFTWARE = 0x00000052;
  static const SIID_RENAME = 0x00000053;
  static const SIID_DELETE = 0x00000054;
  static const SIID_MEDIAAUDIODVD = 0x00000055;
  static const SIID_MEDIAMOVIEDVD = 0x00000056;
  static const SIID_MEDIAENHANCEDCD = 0x00000057;
  static const SIID_MEDIAENHANCEDDVD = 0x00000058;
  static const SIID_MEDIAHDDVD = 0x00000059;
  static const SIID_MEDIABLURAY = 0x0000005a;
  static const SIID_MEDIAVCD = 0x0000005b;
  static const SIID_MEDIADVDPLUSR = 0x0000005c;
  static const SIID_MEDIADVDPLUSRW = 0x0000005d;
  static const SIID_DESKTOPPC = 0x0000005e;
  static const SIID_MOBILEPC = 0x0000005f;
  static const SIID_USERS = 0x00000060;
  static const SIID_MEDIASMARTMEDIA = 0x00000061;
  static const SIID_MEDIACOMPACTFLASH = 0x00000062;
  static const SIID_DEVICECELLPHONE = 0x00000063;
  static const SIID_DEVICECAMERA = 0x00000064;
  static const SIID_DEVICEVIDEOCAMERA = 0x00000065;
  static const SIID_DEVICEAUDIOPLAYER = 0x00000066;
  static const SIID_NETWORKCONNECT = 0x00000067;
  static const SIID_INTERNET = 0x00000068;
  static const SIID_ZIPFILE = 0x00000069;
  static const SIID_SETTINGS = 0x0000006a;
  static const SIID_DRIVEHDDVD = 0x00000084;
  static const SIID_DRIVEBD = 0x00000085;
  static const SIID_MEDIAHDDVDROM = 0x00000086;
  static const SIID_MEDIAHDDVDR = 0x00000087;
  static const SIID_MEDIAHDDVDRAM = 0x00000088;
  static const SIID_MEDIABDROM = 0x00000089;
  static const SIID_MEDIABDR = 0x0000008a;
  static const SIID_MEDIABDRE = 0x0000008b;
  static const SIID_CLUSTEREDDRIVE = 0x0000008c;
  static const SIID_MAX_ICONS = 0x000000b5;
}

/// {@category Enum}
class STRRET_TYPE {
  static const STRRET_WSTR = 0x00000000;
  static const STRRET_OFFSET = 0x00000001;
  static const STRRET_CSTR = 0x00000002;
}

/// {@category Enum}
class PERCEIVED {
  static const PERCEIVED_TYPE_FIRST = 0xfffffffd;
  static const PERCEIVED_TYPE_CUSTOM = 0xfffffffd;
  static const PERCEIVED_TYPE_UNSPECIFIED = 0xfffffffe;
  static const PERCEIVED_TYPE_FOLDER = 0xffffffff;
  static const PERCEIVED_TYPE_UNKNOWN = 0x00000000;
  static const PERCEIVED_TYPE_TEXT = 0x00000001;
  static const PERCEIVED_TYPE_IMAGE = 0x00000002;
  static const PERCEIVED_TYPE_AUDIO = 0x00000003;
  static const PERCEIVED_TYPE_VIDEO = 0x00000004;
  static const PERCEIVED_TYPE_COMPRESSED = 0x00000005;
  static const PERCEIVED_TYPE_DOCUMENT = 0x00000006;
  static const PERCEIVED_TYPE_SYSTEM = 0x00000007;
  static const PERCEIVED_TYPE_APPLICATION = 0x00000008;
  static const PERCEIVED_TYPE_GAMEMEDIA = 0x00000009;
  static const PERCEIVED_TYPE_CONTACTS = 0x0000000a;
  static const PERCEIVED_TYPE_LAST = 0x0000000a;
}

/// {@category Enum}
class SHCOLSTATE {
  static const SHCOLSTATE_DEFAULT = 0x00000000;
  static const SHCOLSTATE_TYPE_STR = 0x00000001;
  static const SHCOLSTATE_TYPE_INT = 0x00000002;
  static const SHCOLSTATE_TYPE_DATE = 0x00000003;
  static const SHCOLSTATE_TYPEMASK = 0x0000000f;
  static const SHCOLSTATE_ONBYDEFAULT = 0x00000010;
  static const SHCOLSTATE_SLOW = 0x00000020;
  static const SHCOLSTATE_EXTENDED = 0x00000040;
  static const SHCOLSTATE_SECONDARYUI = 0x00000080;
  static const SHCOLSTATE_HIDDEN = 0x00000100;
  static const SHCOLSTATE_PREFER_VARCMP = 0x00000200;
  static const SHCOLSTATE_PREFER_FMTCMP = 0x00000400;
  static const SHCOLSTATE_NOSORTBYFOLDERNESS = 0x00000800;
  static const SHCOLSTATE_VIEWONLY = 0x00010000;
  static const SHCOLSTATE_BATCHREAD = 0x00020000;
  static const SHCOLSTATE_NO_GROUPBY = 0x00040000;
  static const SHCOLSTATE_FIXED_WIDTH = 0x00001000;
  static const SHCOLSTATE_NODPISCALE = 0x00002000;
  static const SHCOLSTATE_FIXED_RATIO = 0x00004000;
  static const SHCOLSTATE_DISPLAYMASK = 0x0000f000;
}

/// {@category Enum}
class DEVICE_SCALE_FACTOR {
  static const DEVICE_SCALE_FACTOR_INVALID = 0x00000000;
  static const SCALE_100_PERCENT = 0x00000064;
  static const SCALE_120_PERCENT = 0x00000078;
  static const SCALE_125_PERCENT = 0x0000007d;
  static const SCALE_140_PERCENT = 0x0000008c;
  static const SCALE_150_PERCENT = 0x00000096;
  static const SCALE_160_PERCENT = 0x000000a0;
  static const SCALE_175_PERCENT = 0x000000af;
  static const SCALE_180_PERCENT = 0x000000b4;
  static const SCALE_200_PERCENT = 0x000000c8;
  static const SCALE_225_PERCENT = 0x000000e1;
  static const SCALE_250_PERCENT = 0x000000fa;
  static const SCALE_300_PERCENT = 0x0000012c;
  static const SCALE_350_PERCENT = 0x0000015e;
  static const SCALE_400_PERCENT = 0x00000190;
  static const SCALE_450_PERCENT = 0x000001c2;
  static const SCALE_500_PERCENT = 0x000001f4;
}

/// {@category Enum}
class SHGDNF {
  static const SHGDN_NORMAL = 0x00000000;
  static const SHGDN_INFOLDER = 0x00000001;
  static const SHGDN_FOREDITING = 0x00001000;
  static const SHGDN_FORADDRESSBAR = 0x00004000;
  static const SHGDN_FORPARSING = 0x00008000;
}

/// {@category Enum}
class SHCONTF {
  static const SHCONTF_CHECKING_FOR_CHILDREN = 0x00000010;
  static const SHCONTF_FOLDERS = 0x00000020;
  static const SHCONTF_NONFOLDERS = 0x00000040;
  static const SHCONTF_INCLUDEHIDDEN = 0x00000080;
  static const SHCONTF_INIT_ON_FIRST_NEXT = 0x00000100;
  static const SHCONTF_NETPRINTERSRCH = 0x00000200;
  static const SHCONTF_SHAREABLE = 0x00000400;
  static const SHCONTF_STORAGE = 0x00000800;
  static const SHCONTF_NAVIGATION_ENUM = 0x00001000;
  static const SHCONTF_FASTITEMS = 0x00002000;
  static const SHCONTF_FLATLIST = 0x00004000;
  static const SHCONTF_ENABLE_ASYNC = 0x00008000;
  static const SHCONTF_INCLUDESUPERHIDDEN = 0x00010000;
}

/// {@category Enum}
class STORAGE_PROVIDER_FILE_FLAGS {
  static const SPFF_NONE = 0x00000000;
  static const SPFF_DOWNLOAD_BY_DEFAULT = 0x00000001;
  static const SPFF_CREATED_ON_THIS_DEVICE = 0x00000002;
}

/// {@category Enum}
class MERGE_UPDATE_STATUS {
  static const MUS_COMPLETE = 0x00000000;
  static const MUS_USERINPUTNEEDED = 0x00000001;
  static const MUS_FAILED = 0x00000002;
}

/// {@category Enum}
class FOLDER_ENUM_MODE {
  static const FEM_VIEWRESULT = 0x00000000;
  static const FEM_NAVIGATION = 0x00000001;
}

/// {@category Enum}
class FOLDERFLAGS {
  static const FWF_NONE = 0x00000000;
  static const FWF_AUTOARRANGE = 0x00000001;
  static const FWF_ABBREVIATEDNAMES = 0x00000002;
  static const FWF_SNAPTOGRID = 0x00000004;
  static const FWF_OWNERDATA = 0x00000008;
  static const FWF_BESTFITWINDOW = 0x00000010;
  static const FWF_DESKTOP = 0x00000020;
  static const FWF_SINGLESEL = 0x00000040;
  static const FWF_NOSUBFOLDERS = 0x00000080;
  static const FWF_TRANSPARENT = 0x00000100;
  static const FWF_NOCLIENTEDGE = 0x00000200;
  static const FWF_NOSCROLL = 0x00000400;
  static const FWF_ALIGNLEFT = 0x00000800;
  static const FWF_NOICONS = 0x00001000;
  static const FWF_SHOWSELALWAYS = 0x00002000;
  static const FWF_NOVISIBLE = 0x00004000;
  static const FWF_SINGLECLICKACTIVATE = 0x00008000;
  static const FWF_NOWEBVIEW = 0x00010000;
  static const FWF_HIDEFILENAMES = 0x00020000;
  static const FWF_CHECKSELECT = 0x00040000;
  static const FWF_NOENUMREFRESH = 0x00080000;
  static const FWF_NOGROUPING = 0x00100000;
  static const FWF_FULLROWSELECT = 0x00200000;
  static const FWF_NOFILTERS = 0x00400000;
  static const FWF_NOCOLUMNHEADER = 0x00800000;
  static const FWF_NOHEADERINALLVIEWS = 0x01000000;
  static const FWF_EXTENDEDTILES = 0x02000000;
  static const FWF_TRICHECKSELECT = 0x04000000;
  static const FWF_AUTOCHECKSELECT = 0x08000000;
  static const FWF_NOBROWSERVIEWSTATE = 0x10000000;
  static const FWF_SUBSETGROUPS = 0x20000000;
  static const FWF_USESEARCHFOLDER = 0x40000000;
  static const FWF_ALLOWRTLREADING = 0x80000000;
}

/// {@category Enum}
class FOLDERVIEWMODE {
  static const FVM_AUTO = 0xffffffff;
  static const FVM_FIRST = 0x00000001;
  static const FVM_ICON = 0x00000001;
  static const FVM_SMALLICON = 0x00000002;
  static const FVM_LIST = 0x00000003;
  static const FVM_DETAILS = 0x00000004;
  static const FVM_THUMBNAIL = 0x00000005;
  static const FVM_TILE = 0x00000006;
  static const FVM_THUMBSTRIP = 0x00000007;
  static const FVM_CONTENT = 0x00000008;
  static const FVM_LAST = 0x00000008;
}

/// {@category Enum}
class FOLDERLOGICALVIEWMODE {
  static const FLVM_UNSPECIFIED = 0xffffffff;
  static const FLVM_FIRST = 0x00000001;
  static const FLVM_DETAILS = 0x00000001;
  static const FLVM_TILES = 0x00000002;
  static const FLVM_ICONS = 0x00000003;
  static const FLVM_LIST = 0x00000004;
  static const FLVM_CONTENT = 0x00000005;
  static const FLVM_LAST = 0x00000005;
}

/// {@category Enum}
class SVSIF {
  static const SVSI_DESELECT = 0x00000000;
  static const SVSI_SELECT = 0x00000001;
  static const SVSI_EDIT = 0x00000003;
  static const SVSI_DESELECTOTHERS = 0x00000004;
  static const SVSI_ENSUREVISIBLE = 0x00000008;
  static const SVSI_FOCUSED = 0x00000010;
  static const SVSI_TRANSLATEPT = 0x00000020;
  static const SVSI_SELECTIONMARK = 0x00000040;
  static const SVSI_POSITIONITEM = 0x00000080;
  static const SVSI_CHECK = 0x00000100;
  static const SVSI_CHECK2 = 0x00000200;
  static const SVSI_KEYBOARDSELECT = 0x00000401;
  static const SVSI_NOTAKEFOCUS = 0x40000000;
}

/// {@category Enum}
class SVGIO {
  static const SVGIO_BACKGROUND = 0x00000000;
  static const SVGIO_SELECTION = 0x00000001;
  static const SVGIO_ALLVIEW = 0x00000002;
  static const SVGIO_CHECKED = 0x00000003;
  static const SVGIO_TYPE_MASK = 0x0000000f;
  static const SVGIO_FLAG_VIEWORDER = 0x80000000;
}

/// {@category Enum}
class SVUIA_STATUS {
  static const SVUIA_DEACTIVATE = 0x00000000;
  static const SVUIA_ACTIVATE_NOFOCUS = 0x00000001;
  static const SVUIA_ACTIVATE_FOCUS = 0x00000002;
  static const SVUIA_INPLACEACTIVATE = 0x00000003;
}

/// {@category Enum}
class tagSORTDIRECTION {
  static const SORT_DESCENDING = 0xffffffff;
  static const SORT_ASCENDING = 0x00000001;
}

/// {@category Enum}
class FVTEXTTYPE {
  static const FVST_EMPTYTEXT = 0x00000000;
}

/// {@category Enum}
class CM_MASK {
  static const CM_MASK_WIDTH = 0x00000001;
  static const CM_MASK_DEFAULTWIDTH = 0x00000002;
  static const CM_MASK_IDEALWIDTH = 0x00000004;
  static const CM_MASK_NAME = 0x00000008;
  static const CM_MASK_STATE = 0x00000010;
}

/// {@category Enum}
class CM_STATE {
  static const CM_STATE_NONE = 0x00000000;
  static const CM_STATE_VISIBLE = 0x00000001;
  static const CM_STATE_FIXEDWIDTH = 0x00000002;
  static const CM_STATE_NOSORTBYFOLDERNESS = 0x00000004;
  static const CM_STATE_ALWAYSVISIBLE = 0x00000008;
}

/// {@category Enum}
class CM_ENUM_FLAGS {
  static const CM_ENUM_ALL = 0x00000001;
  static const CM_ENUM_VISIBLE = 0x00000002;
}

/// {@category Enum}
class CM_SET_WIDTH_VALUE {
  static const CM_WIDTH_USEDEFAULT = 0xffffffff;
  static const CM_WIDTH_AUTOSIZE = 0xfffffffe;
}

/// {@category Enum}
class SIGDN {
  static const SIGDN_NORMALDISPLAY = 0x00000000;
  static const SIGDN_PARENTRELATIVEPARSING = 0x80018001;
  static const SIGDN_DESKTOPABSOLUTEPARSING = 0x80028000;
  static const SIGDN_PARENTRELATIVEEDITING = 0x80031001;
  static const SIGDN_DESKTOPABSOLUTEEDITING = 0x8004c000;
  static const SIGDN_FILESYSPATH = 0x80058000;
  static const SIGDN_URL = 0x80068000;
  static const SIGDN_PARENTRELATIVEFORADDRESSBAR = 0x8007c001;
  static const SIGDN_PARENTRELATIVE = 0x80080001;
  static const SIGDN_PARENTRELATIVEFORUI = 0x80094001;
}

/// {@category Enum}
class SICHINTF {
  static const SICHINT_DISPLAY = 0x00000000;
  static const SICHINT_ALLFIELDS = 0x80000000;
  static const SICHINT_CANONICAL = 0x10000000;
  static const SICHINT_TEST_FILESYSPATH_IF_NOT_EQUAL = 0x20000000;
}

/// {@category Enum}
class DATAOBJ_GET_ITEM_FLAGS {
  static const DOGIF_DEFAULT = 0x00000000;
  static const DOGIF_TRAVERSE_LINK = 0x00000001;
  static const DOGIF_NO_HDROP = 0x00000002;
  static const DOGIF_NO_URL = 0x00000004;
  static const DOGIF_ONLY_IF_ONE = 0x00000008;
}

/// {@category Enum}
class SIIGBF {
  static const SIIGBF_RESIZETOFIT = 0x00000000;
  static const SIIGBF_BIGGERSIZEOK = 0x00000001;
  static const SIIGBF_MEMORYONLY = 0x00000002;
  static const SIIGBF_ICONONLY = 0x00000004;
  static const SIIGBF_THUMBNAILONLY = 0x00000008;
  static const SIIGBF_INCACHEONLY = 0x00000010;
  static const SIIGBF_CROPTOSQUARE = 0x00000020;
  static const SIIGBF_WIDETHUMBNAILS = 0x00000040;
  static const SIIGBF_ICONBACKGROUND = 0x00000080;
  static const SIIGBF_SCALEUP = 0x00000100;
}

/// {@category Enum}
class STGOP {
  static const STGOP_MOVE = 0x00000001;
  static const STGOP_COPY = 0x00000002;
  static const STGOP_SYNC = 0x00000003;
  static const STGOP_REMOVE = 0x00000005;
  static const STGOP_RENAME = 0x00000006;
  static const STGOP_APPLYPROPERTIES = 0x00000008;
  static const STGOP_NEW = 0x0000000a;
}

/// {@category Enum}
class TRANSFER_SOURCE_FLAGS {
  static const TSF_NORMAL = 0x00000000;
  static const TSF_FAIL_EXIST = 0x00000000;
  static const TSF_RENAME_EXIST = 0x00000001;
  static const TSF_OVERWRITE_EXIST = 0x00000002;
  static const TSF_ALLOW_DECRYPTION = 0x00000004;
  static const TSF_NO_SECURITY = 0x00000008;
  static const TSF_COPY_CREATION_TIME = 0x00000010;
  static const TSF_COPY_WRITE_TIME = 0x00000020;
  static const TSF_USE_FULL_ACCESS = 0x00000040;
  static const TSF_DELETE_RECYCLE_IF_POSSIBLE = 0x00000080;
  static const TSF_COPY_HARD_LINK = 0x00000100;
  static const TSF_COPY_LOCALIZED_NAME = 0x00000200;
  static const TSF_MOVE_AS_COPY_DELETE = 0x00000400;
  static const TSF_SUSPEND_SHELLEVENTS = 0x00000800;
}

/// {@category Enum}
class TRANSFER_ADVISE_STATE {
  static const TS_NONE = 0x00000000;
  static const TS_PERFORMING = 0x00000001;
  static const TS_PREPARING = 0x00000002;
  static const TS_INDETERMINATE = 0x00000004;
}

/// {@category Enum}
class SIATTRIBFLAGS {
  static const SIATTRIBFLAGS_AND = 0x00000001;
  static const SIATTRIBFLAGS_OR = 0x00000002;
  static const SIATTRIBFLAGS_APPCOMPAT = 0x00000003;
  static const SIATTRIBFLAGS_MASK = 0x00000003;
  static const SIATTRIBFLAGS_ALLITEMS = 0x00004000;
}

/// {@category Enum}
class PROPERTYUI_NAME_FLAGS {
  static const PUIFNF_DEFAULT = 0x00000000;
  static const PUIFNF_MNEMONIC = 0x00000001;
}

/// {@category Enum}
class PROPERTYUI_FORMAT_FLAGS {
  static const PUIFFDF_DEFAULT = 0x00000000;
  static const PUIFFDF_RIGHTTOLEFT = 0x00000001;
  static const PUIFFDF_SHORTFORMAT = 0x00000002;
  static const PUIFFDF_NOTIME = 0x00000004;
  static const PUIFFDF_FRIENDLYDATE = 0x00000008;
}

/// {@category Enum}
class CATEGORYINFO_FLAGS {
  static const CATINFO_NORMAL = 0x00000000;
  static const CATINFO_COLLAPSED = 0x00000001;
  static const CATINFO_HIDDEN = 0x00000002;
  static const CATINFO_EXPANDED = 0x00000004;
  static const CATINFO_NOHEADER = 0x00000008;
  static const CATINFO_NOTCOLLAPSIBLE = 0x00000010;
  static const CATINFO_NOHEADERCOUNT = 0x00000020;
  static const CATINFO_SUBSETTED = 0x00000040;
  static const CATINFO_SEPARATE_IMAGES = 0x00000080;
  static const CATINFO_SHOWEMPTY = 0x00000100;
}

/// {@category Enum}
class CATSORT_FLAGS {
  static const CATSORT_DEFAULT = 0x00000000;
  static const CATSORT_NAME = 0x00000001;
}

/// {@category Enum}
class SLR_FLAGS {
  static const SLR_NONE = 0x00000000;
  static const SLR_NO_UI = 0x00000001;
  static const SLR_ANY_MATCH = 0x00000002;
  static const SLR_UPDATE = 0x00000004;
  static const SLR_NOUPDATE = 0x00000008;
  static const SLR_NOSEARCH = 0x00000010;
  static const SLR_NOTRACK = 0x00000020;
  static const SLR_NOLINKINFO = 0x00000040;
  static const SLR_INVOKE_MSI = 0x00000080;
  static const SLR_NO_UI_WITH_MSG_PUMP = 0x00000101;
  static const SLR_OFFER_DELETE_WITHOUT_FILE = 0x00000200;
  static const SLR_KNOWNFOLDER = 0x00000400;
  static const SLR_MACHINE_IN_LOCAL_TARGET = 0x00000800;
  static const SLR_UPDATE_MACHINE_AND_SID = 0x00001000;
  static const SLR_NO_OBJECT_ID = 0x00002000;
}

/// {@category Enum}
class SLGP_FLAGS {
  static const SLGP_SHORTPATH = 0x00000001;
  static const SLGP_UNCPRIORITY = 0x00000002;
  static const SLGP_RAWPATH = 0x00000004;
  static const SLGP_RELATIVEPRIORITY = 0x00000008;
}

/// {@category Enum}
class SPINITF {
  static const SPINITF_NORMAL = 0x00000000;
  static const SPINITF_MODAL = 0x00000001;
  static const SPINITF_NOMINIMIZE = 0x00000008;
}

/// {@category Enum}
class SPBEGINF {
  static const SPBEGINF_NORMAL = 0x00000000;
  static const SPBEGINF_AUTOTIME = 0x00000002;
  static const SPBEGINF_NOPROGRESSBAR = 0x00000010;
  static const SPBEGINF_MARQUEEPROGRESS = 0x00000020;
  static const SPBEGINF_NOCANCELBUTTON = 0x00000040;
}

/// {@category Enum}
class SPACTION {
  static const SPACTION_NONE = 0x00000000;
  static const SPACTION_MOVING = 0x00000001;
  static const SPACTION_COPYING = 0x00000002;
  static const SPACTION_RECYCLING = 0x00000003;
  static const SPACTION_APPLYINGATTRIBS = 0x00000004;
  static const SPACTION_DOWNLOADING = 0x00000005;
  static const SPACTION_SEARCHING_INTERNET = 0x00000006;
  static const SPACTION_CALCULATING = 0x00000007;
  static const SPACTION_UPLOADING = 0x00000008;
  static const SPACTION_SEARCHING_FILES = 0x00000009;
  static const SPACTION_DELETING = 0x0000000a;
  static const SPACTION_RENAMING = 0x0000000b;
  static const SPACTION_FORMATTING = 0x0000000c;
  static const SPACTION_COPY_MOVING = 0x0000000d;
}

/// {@category Enum}
class SPTEXT {
  static const SPTEXT_ACTIONDESCRIPTION = 0x00000001;
  static const SPTEXT_ACTIONDETAIL = 0x00000002;
}

/// {@category Enum}
class EXPPS {
  static const EXPPS_FILETYPES = 0x00000001;
}

/// {@category Enum}
class tagDESKBANDCID {
  static const DBID_BANDINFOCHANGED = 0x00000000;
  static const DBID_SHOWONLY = 0x00000001;
  static const DBID_MAXIMIZEBAND = 0x00000002;
  static const DBID_PUSHCHEVRON = 0x00000003;
  static const DBID_DELAYINIT = 0x00000004;
  static const DBID_FINISHINIT = 0x00000005;
  static const DBID_SETWINDOWTHEME = 0x00000006;
  static const DBID_PERMITAUTOHIDE = 0x00000007;
}

/// {@category Enum}
class THUMBBUTTONFLAGS {
  static const THBF_ENABLED = 0x00000000;
  static const THBF_DISABLED = 0x00000001;
  static const THBF_DISMISSONCLICK = 0x00000002;
  static const THBF_NOBACKGROUND = 0x00000004;
  static const THBF_HIDDEN = 0x00000008;
  static const THBF_NONINTERACTIVE = 0x00000010;
}

/// {@category Enum}
class THUMBBUTTONMASK {
  static const THB_BITMAP = 0x00000001;
  static const THB_ICON = 0x00000002;
  static const THB_TOOLTIP = 0x00000004;
  static const THB_FLAGS = 0x00000008;
}

/// {@category Enum}
class TBPFLAG {
  static const TBPF_NOPROGRESS = 0x00000000;
  static const TBPF_INDETERMINATE = 0x00000001;
  static const TBPF_NORMAL = 0x00000002;
  static const TBPF_ERROR = 0x00000004;
  static const TBPF_PAUSED = 0x00000008;
}

/// {@category Enum}
class STPFLAG {
  static const STPF_NONE = 0x00000000;
  static const STPF_USEAPPTHUMBNAILALWAYS = 0x00000001;
  static const STPF_USEAPPTHUMBNAILWHENACTIVE = 0x00000002;
  static const STPF_USEAPPPEEKALWAYS = 0x00000004;
  static const STPF_USEAPPPEEKWHENACTIVE = 0x00000008;
}

/// {@category Enum}
class EXPLORER_BROWSER_OPTIONS {
  static const EBO_NONE = 0x00000000;
  static const EBO_NAVIGATEONCE = 0x00000001;
  static const EBO_SHOWFRAMES = 0x00000002;
  static const EBO_ALWAYSNAVIGATE = 0x00000004;
  static const EBO_NOTRAVELLOG = 0x00000008;
  static const EBO_NOWRAPPERWINDOW = 0x00000010;
  static const EBO_HTMLSHAREPOINTVIEW = 0x00000020;
  static const EBO_NOBORDER = 0x00000040;
  static const EBO_NOPERSISTVIEWSTATE = 0x00000080;
}

/// {@category Enum}
class EXPLORER_BROWSER_FILL_FLAGS {
  static const EBF_NONE = 0x00000000;
  static const EBF_SELECTFROMDATAOBJECT = 0x00000100;
  static const EBF_NODROPTARGET = 0x00000200;
}

/// {@category Enum}
class OPPROGDLGF {
  static const OPPROGDLG_DEFAULT = 0x00000000;
  static const OPPROGDLG_ENABLEPAUSE = 0x00000080;
  static const OPPROGDLG_ALLOWUNDO = 0x00000100;
  static const OPPROGDLG_DONTDISPLAYSOURCEPATH = 0x00000200;
  static const OPPROGDLG_DONTDISPLAYDESTPATH = 0x00000400;
  static const OPPROGDLG_NOMULTIDAYESTIMATES = 0x00000800;
  static const OPPROGDLG_DONTDISPLAYLOCATIONS = 0x00001000;
}

/// {@category Enum}
class PDMODE {
  static const PDM_DEFAULT = 0x00000000;
  static const PDM_RUN = 0x00000001;
  static const PDM_PREFLIGHT = 0x00000002;
  static const PDM_UNDOING = 0x00000004;
  static const PDM_ERRORSBLOCKING = 0x00000008;
  static const PDM_INDETERMINATE = 0x00000010;
}

/// {@category Enum}
class FILE_OPERATION_FLAGS2 {
  static const FOF2_NONE = 0x00000000;
  static const FOF2_MERGEFOLDERSONCOLLISION = 0x00000001;
}

/// {@category Enum}
class NAMESPACEWALKFLAG {
  static const NSWF_DEFAULT = 0x00000000;
  static const NSWF_NONE_IMPLIES_ALL = 0x00000001;
  static const NSWF_ONE_IMPLIES_ALL = 0x00000002;
  static const NSWF_DONT_TRAVERSE_LINKS = 0x00000004;
  static const NSWF_DONT_ACCUMULATE_RESULT = 0x00000008;
  static const NSWF_TRAVERSE_STREAM_JUNCTIONS = 0x00000010;
  static const NSWF_FILESYSTEM_ONLY = 0x00000020;
  static const NSWF_SHOW_PROGRESS = 0x00000040;
  static const NSWF_FLAG_VIEWORDER = 0x00000080;
  static const NSWF_IGNORE_AUTOPLAY_HIDA = 0x00000100;
  static const NSWF_ASYNC = 0x00000200;
  static const NSWF_DONT_RESOLVE_LINKS = 0x00000400;
  static const NSWF_ACCUMULATE_FOLDERS = 0x00000800;
  static const NSWF_DONT_SORT = 0x00001000;
  static const NSWF_USE_TRANSFER_MEDIUM = 0x00002000;
  static const NSWF_DONT_TRAVERSE_STREAM_JUNCTIONS = 0x00004000;
  static const NSWF_ANY_IMPLIES_ALL = 0x00008000;
}

/// {@category Enum}
class tagBANDSITECID {
  static const BSID_BANDADDED = 0x00000000;
  static const BSID_BANDREMOVED = 0x00000001;
}

/// {@category Enum}
class tagMENUBANDHANDLERCID {
  static const MBHANDCID_PIDLSELECT = 0x00000000;
}

/// {@category Enum}
class tagMENUPOPUPSELECT {
  static const MPOS_EXECUTE = 0x00000000;
  static const MPOS_FULLCANCEL = 0x00000001;
  static const MPOS_CANCELLEVEL = 0x00000002;
  static const MPOS_SELECTLEFT = 0x00000003;
  static const MPOS_SELECTRIGHT = 0x00000004;
  static const MPOS_CHILDTRACKING = 0x00000005;
}

/// {@category Enum}
class tagMENUPOPUPPOPUPFLAGS {
  static const MPPF_SETFOCUS = 0x00000001;
  static const MPPF_INITIALSELECT = 0x00000002;
  static const MPPF_NOANIMATE = 0x00000004;
  static const MPPF_KEYBOARD = 0x00000010;
  static const MPPF_REPOSITION = 0x00000020;
  static const MPPF_FORCEZORDER = 0x00000040;
  static const MPPF_FINALSELECT = 0x00000080;
  static const MPPF_TOP = 0x20000000;
  static const MPPF_LEFT = 0x40000000;
  static const MPPF_RIGHT = 0x60000000;
  static const MPPF_BOTTOM = 0x80000000;
  static const MPPF_POS_MASK = 0xe0000000;
  static const MPPF_ALIGN_LEFT = 0x02000000;
  static const MPPF_ALIGN_RIGHT = 0x04000000;
}

/// {@category Enum}
class FILE_USAGE_TYPE {
  static const FUT_PLAYING = 0x00000000;
  static const FUT_EDITING = 0x00000001;
  static const FUT_GENERIC = 0x00000002;
}

/// {@category Enum}
class FDE_OVERWRITE_RESPONSE {
  static const FDEOR_DEFAULT = 0x00000000;
  static const FDEOR_ACCEPT = 0x00000001;
  static const FDEOR_REFUSE = 0x00000002;
}

/// {@category Enum}
class FDE_SHAREVIOLATION_RESPONSE {
  static const FDESVR_DEFAULT = 0x00000000;
  static const FDESVR_ACCEPT = 0x00000001;
  static const FDESVR_REFUSE = 0x00000002;
}

/// {@category Enum}
class FDAP {
  static const FDAP_BOTTOM = 0x00000000;
  static const FDAP_TOP = 0x00000001;
}

/// {@category Enum}
class FILEOPENDIALOGOPTIONS {
  static const FOS_OVERWRITEPROMPT = 0x00000002;
  static const FOS_STRICTFILETYPES = 0x00000004;
  static const FOS_NOCHANGEDIR = 0x00000008;
  static const FOS_PICKFOLDERS = 0x00000020;
  static const FOS_FORCEFILESYSTEM = 0x00000040;
  static const FOS_ALLNONSTORAGEITEMS = 0x00000080;
  static const FOS_NOVALIDATE = 0x00000100;
  static const FOS_ALLOWMULTISELECT = 0x00000200;
  static const FOS_PATHMUSTEXIST = 0x00000800;
  static const FOS_FILEMUSTEXIST = 0x00001000;
  static const FOS_CREATEPROMPT = 0x00002000;
  static const FOS_SHAREAWARE = 0x00004000;
  static const FOS_NOREADONLYRETURN = 0x00008000;
  static const FOS_NOTESTFILECREATE = 0x00010000;
  static const FOS_HIDEMRUPLACES = 0x00020000;
  static const FOS_HIDEPINNEDPLACES = 0x00040000;
  static const FOS_NODEREFERENCELINKS = 0x00100000;
  static const FOS_OKBUTTONNEEDSINTERACTION = 0x00200000;
  static const FOS_DONTADDTORECENT = 0x02000000;
  static const FOS_FORCESHOWHIDDEN = 0x10000000;
  static const FOS_DEFAULTNOMINIMODE = 0x20000000;
  static const FOS_FORCEPREVIEWPANEON = 0x40000000;
  static const FOS_SUPPORTSTREAMABLEITEMS = 0x80000000;
}

/// {@category Enum}
class CDCONTROLSTATEF {
  static const CDCS_INACTIVE = 0x00000000;
  static const CDCS_ENABLED = 0x00000001;
  static const CDCS_VISIBLE = 0x00000002;
  static const CDCS_ENABLEDVISIBLE = 0x00000003;
}

/// {@category Enum}
class ASSOCIATIONLEVEL {
  static const AL_MACHINE = 0x00000000;
  static const AL_EFFECTIVE = 0x00000001;
  static const AL_USER = 0x00000002;
}

/// {@category Enum}
class ASSOCIATIONTYPE {
  static const AT_FILEEXTENSION = 0x00000000;
  static const AT_URLPROTOCOL = 0x00000001;
  static const AT_STARTMENUCLIENT = 0x00000002;
  static const AT_MIMETYPE = 0x00000003;
}

/// {@category Enum}
class BROWSERFRAMEOPTIONS {
  static const BFO_NONE = 0x00000000;
  static const BFO_BROWSER_PERSIST_SETTINGS = 0x00000001;
  static const BFO_RENAME_FOLDER_OPTIONS_TOINTERNET = 0x00000002;
  static const BFO_BOTH_OPTIONS = 0x00000004;
  static const BIF_PREFER_INTERNET_SHORTCUT = 0x00000008;
  static const BFO_BROWSE_NO_IN_NEW_PROCESS = 0x00000010;
  static const BFO_ENABLE_HYPERLINK_TRACKING = 0x00000020;
  static const BFO_USE_IE_OFFLINE_SUPPORT = 0x00000040;
  static const BFO_SUBSTITUE_INTERNET_START_PAGE = 0x00000080;
  static const BFO_USE_IE_LOGOBANDING = 0x00000100;
  static const BFO_ADD_IE_TOCAPTIONBAR = 0x00000200;
  static const BFO_USE_DIALUP_REF = 0x00000400;
  static const BFO_USE_IE_TOOLBAR = 0x00000800;
  static const BFO_NO_PARENT_FOLDER_SUPPORT = 0x00001000;
  static const BFO_NO_REOPEN_NEXT_RESTART = 0x00002000;
  static const BFO_GO_HOME_PAGE = 0x00004000;
  static const BFO_PREFER_IEPROCESS = 0x00008000;
  static const BFO_SHOW_NAVIGATION_CANCELLED = 0x00010000;
  static const BFO_USE_IE_STATUSBAR = 0x00020000;
  static const BFO_QUERY_ALL = 0xffffffff;
}

/// {@category Enum}
class NWMF {
  static const NWMF_UNLOADING = 0x00000001;
  static const NWMF_USERINITED = 0x00000002;
  static const NWMF_FIRST = 0x00000004;
  static const NWMF_OVERRIDEKEY = 0x00000008;
  static const NWMF_SHOWHELP = 0x00000010;
  static const NWMF_HTMLDIALOG = 0x00000020;
  static const NWMF_FROMDIALOGCHILD = 0x00000040;
  static const NWMF_USERREQUESTED = 0x00000080;
  static const NWMF_USERALLOWED = 0x00000100;
  static const NWMF_FORCEWINDOW = 0x00010000;
  static const NWMF_FORCETAB = 0x00020000;
  static const NWMF_SUGGESTWINDOW = 0x00040000;
  static const NWMF_SUGGESTTAB = 0x00080000;
  static const NWMF_INACTIVETAB = 0x00100000;
}

/// {@category Enum}
class ATTACHMENT_PROMPT {
  static const ATTACHMENT_PROMPT_NONE = 0x00000000;
  static const ATTACHMENT_PROMPT_SAVE = 0x00000001;
  static const ATTACHMENT_PROMPT_EXEC = 0x00000002;
  static const ATTACHMENT_PROMPT_EXEC_OR_SAVE = 0x00000003;
}

/// {@category Enum}
class ATTACHMENT_ACTION {
  static const ATTACHMENT_ACTION_CANCEL = 0x00000000;
  static const ATTACHMENT_ACTION_SAVE = 0x00000001;
  static const ATTACHMENT_ACTION_EXEC = 0x00000002;
}

/// {@category Enum}
class tagSMINFOMASK {
  static const SMIM_TYPE = 0x00000001;
  static const SMIM_FLAGS = 0x00000002;
  static const SMIM_ICON = 0x00000004;
}

/// {@category Enum}
class tagSMINFOTYPE {
  static const SMIT_SEPARATOR = 0x00000001;
  static const SMIT_STRING = 0x00000002;
}

/// {@category Enum}
class tagSMINFOFLAGS {
  static const SMIF_ICON = 0x00000001;
  static const SMIF_ACCELERATOR = 0x00000002;
  static const SMIF_DROPTARGET = 0x00000004;
  static const SMIF_SUBMENU = 0x00000008;
  static const SMIF_CHECKED = 0x00000020;
  static const SMIF_DROPCASCADE = 0x00000040;
  static const SMIF_HIDDEN = 0x00000080;
  static const SMIF_DISABLED = 0x00000100;
  static const SMIF_TRACKPOPUP = 0x00000200;
  static const SMIF_DEMOTED = 0x00000400;
  static const SMIF_ALTSTATE = 0x00000800;
  static const SMIF_DRAGNDROP = 0x00001000;
  static const SMIF_NEW = 0x00002000;
}

/// {@category Enum}
class KF_CATEGORY {
  static const KF_CATEGORY_VIRTUAL = 0x00000001;
  static const KF_CATEGORY_FIXED = 0x00000002;
  static const KF_CATEGORY_COMMON = 0x00000003;
  static const KF_CATEGORY_PERUSER = 0x00000004;
}

/// {@category Enum}
class KF_DEFINITION_FLAGS {
  static const KFDF_LOCAL_REDIRECT_ONLY = 0x00000002;
  static const KFDF_ROAMABLE = 0x00000004;
  static const KFDF_PRECREATE = 0x00000008;
  static const KFDF_STREAM = 0x00000010;
  static const KFDF_PUBLISHEXPANDEDPATH = 0x00000020;
  static const KFDF_NO_REDIRECT_UI = 0x00000040;
}

/// {@category Enum}
class KF_REDIRECT_FLAGS {
  static const KF_REDIRECT_USER_EXCLUSIVE = 0x00000001;
  static const KF_REDIRECT_COPY_SOURCE_DACL = 0x00000002;
  static const KF_REDIRECT_OWNER_USER = 0x00000004;
  static const KF_REDIRECT_SET_OWNER_EXPLICIT = 0x00000008;
  static const KF_REDIRECT_CHECK_ONLY = 0x00000010;
  static const KF_REDIRECT_WITH_UI = 0x00000020;
  static const KF_REDIRECT_UNPIN = 0x00000040;
  static const KF_REDIRECT_PIN = 0x00000080;
  static const KF_REDIRECT_COPY_CONTENTS = 0x00000200;
  static const KF_REDIRECT_DEL_SOURCE_CONTENTS = 0x00000400;
  static const KF_REDIRECT_EXCLUDE_ALL_KNOWN_SUBFOLDERS = 0x00000800;
}

/// {@category Enum}
class KF_REDIRECTION_CAPABILITIES {
  static const KF_REDIRECTION_CAPABILITIES_ALLOW_ALL = 0x000000ff;
  static const KF_REDIRECTION_CAPABILITIES_REDIRECTABLE = 0x00000001;
  static const KF_REDIRECTION_CAPABILITIES_DENY_ALL = 0x000fff00;
  static const KF_REDIRECTION_CAPABILITIES_DENY_POLICY_REDIRECTED = 0x00000100;
  static const KF_REDIRECTION_CAPABILITIES_DENY_POLICY = 0x00000200;
  static const KF_REDIRECTION_CAPABILITIES_DENY_PERMISSIONS = 0x00000400;
}

/// {@category Enum}
class FFFP_MODE {
  static const FFFP_EXACTMATCH = 0x00000000;
  static const FFFP_NEARESTPARENTMATCH = 0x00000001;
}

/// {@category Enum}
class SHARE_ROLE {
  static const SHARE_ROLE_INVALID = 0xffffffff;
  static const SHARE_ROLE_READER = 0x00000000;
  static const SHARE_ROLE_CONTRIBUTOR = 0x00000001;
  static const SHARE_ROLE_CO_OWNER = 0x00000002;
  static const SHARE_ROLE_OWNER = 0x00000003;
  static const SHARE_ROLE_CUSTOM = 0x00000004;
  static const SHARE_ROLE_MIXED = 0x00000005;
}

/// {@category Enum}
class DEF_SHARE_ID {
  static const DEFSHAREID_USERS = 0x00000001;
  static const DEFSHAREID_PUBLIC = 0x00000002;
}

/// {@category Enum}
class NMCII_FLAGS {
  static const NMCII_NONE = 0x00000000;
  static const NMCII_ITEMS = 0x00000001;
  static const NMCII_FOLDERS = 0x00000002;
}

/// {@category Enum}
class NMCSAEI_FLAGS {
  static const NMCSAEI_SELECT = 0x00000000;
  static const NMCSAEI_EDIT = 0x00000001;
}

/// {@category Enum}
class NSTCSTYLE {
  static const NSTCS_HASEXPANDOS = 0x00000001;
  static const NSTCS_HASLINES = 0x00000002;
  static const NSTCS_SINGLECLICKEXPAND = 0x00000004;
  static const NSTCS_FULLROWSELECT = 0x00000008;
  static const NSTCS_SPRINGEXPAND = 0x00000010;
  static const NSTCS_HORIZONTALSCROLL = 0x00000020;
  static const NSTCS_ROOTHASEXPANDO = 0x00000040;
  static const NSTCS_SHOWSELECTIONALWAYS = 0x00000080;
  static const NSTCS_NOINFOTIP = 0x00000200;
  static const NSTCS_EVENHEIGHT = 0x00000400;
  static const NSTCS_NOREPLACEOPEN = 0x00000800;
  static const NSTCS_DISABLEDRAGDROP = 0x00001000;
  static const NSTCS_NOORDERSTREAM = 0x00002000;
  static const NSTCS_RICHTOOLTIP = 0x00004000;
  static const NSTCS_BORDER = 0x00008000;
  static const NSTCS_NOEDITLABELS = 0x00010000;
  static const NSTCS_TABSTOP = 0x00020000;
  static const NSTCS_FAVORITESMODE = 0x00080000;
  static const NSTCS_AUTOHSCROLL = 0x00100000;
  static const NSTCS_FADEINOUTEXPANDOS = 0x00200000;
  static const NSTCS_EMPTYTEXT = 0x00400000;
  static const NSTCS_CHECKBOXES = 0x00800000;
  static const NSTCS_PARTIALCHECKBOXES = 0x01000000;
  static const NSTCS_EXCLUSIONCHECKBOXES = 0x02000000;
  static const NSTCS_DIMMEDCHECKBOXES = 0x04000000;
  static const NSTCS_NOINDENTCHECKS = 0x08000000;
  static const NSTCS_ALLOWJUNCTIONS = 0x10000000;
  static const NSTCS_SHOWTABSBUTTON = 0x20000000;
  static const NSTCS_SHOWDELETEBUTTON = 0x40000000;
  static const NSTCS_SHOWREFRESHBUTTON = 0x80000000;
}

/// {@category Enum}
class NSTCROOTSTYLE {
  static const NSTCRS_VISIBLE = 0x00000000;
  static const NSTCRS_HIDDEN = 0x00000001;
  static const NSTCRS_EXPANDED = 0x00000002;
}

/// {@category Enum}
class NSTCITEMSTATE {
  static const NSTCIS_NONE = 0x00000000;
  static const NSTCIS_SELECTED = 0x00000001;
  static const NSTCIS_EXPANDED = 0x00000002;
  static const NSTCIS_BOLD = 0x00000004;
  static const NSTCIS_DISABLED = 0x00000008;
  static const NSTCIS_SELECTEDNOEXPAND = 0x00000010;
}

/// {@category Enum}
class NSTCGNI {
  static const NSTCGNI_NEXT = 0x00000000;
  static const NSTCGNI_NEXTVISIBLE = 0x00000001;
  static const NSTCGNI_PREV = 0x00000002;
  static const NSTCGNI_PREVVISIBLE = 0x00000003;
  static const NSTCGNI_PARENT = 0x00000004;
  static const NSTCGNI_CHILD = 0x00000005;
  static const NSTCGNI_FIRSTVISIBLE = 0x00000006;
  static const NSTCGNI_LASTVISIBLE = 0x00000007;
}

/// {@category Enum}
class NSTCFOLDERCAPABILITIES {
  static const NSTCFC_NONE = 0x00000000;
  static const NSTCFC_PINNEDITEMFILTERING = 0x00000001;
  static const NSTCFC_DELAY_REGISTER_NOTIFY = 0x00000002;
}

/// {@category Enum}
class EXPLORERPANESTATE {
  static const EPS_DONTCARE = 0x00000000;
  static const EPS_DEFAULT_ON = 0x00000001;
  static const EPS_DEFAULT_OFF = 0x00000002;
  static const EPS_STATEMASK = 0x0000ffff;
  static const EPS_INITIALSTATE = 0x00010000;
  static const EPS_FORCE = 0x00020000;
}

/// {@category Enum}
class EXPCMDSTATE {
  static const ECS_ENABLED = 0x00000000;
  static const ECS_DISABLED = 0x00000001;
  static const ECS_HIDDEN = 0x00000002;
  static const ECS_CHECKBOX = 0x00000004;
  static const ECS_CHECKED = 0x00000008;
  static const ECS_RADIOCHECK = 0x00000010;
}

/// {@category Enum}
class EXPCMDFLAGS {
  static const ECF_DEFAULT = 0x00000000;
  static const ECF_HASSUBCOMMANDS = 0x00000001;
  static const ECF_HASSPLITBUTTON = 0x00000002;
  static const ECF_HIDELABEL = 0x00000004;
  static const ECF_ISSEPARATOR = 0x00000008;
  static const ECF_HASLUASHIELD = 0x00000010;
  static const ECF_SEPARATORBEFORE = 0x00000020;
  static const ECF_SEPARATORAFTER = 0x00000040;
  static const ECF_ISDROPDOWN = 0x00000080;
  static const ECF_TOGGLEABLE = 0x00000100;
  static const ECF_AUTOMENUICONS = 0x00000200;
}

/// {@category Enum}
class CPVIEW {
  static const CPVIEW_CLASSIC = 0x00000000;
  static const CPVIEW_ALLITEMS = 0x00000000;
  static const CPVIEW_CATEGORY = 0x00000001;
  static const CPVIEW_HOME = 0x00000001;
}

/// {@category Enum}
class KNOWNDESTCATEGORY {
  static const KDC_FREQUENT = 0x00000001;
  static const KDC_RECENT = 0x00000002;
}

/// {@category Enum}
class APPDOCLISTTYPE {
  static const ADLT_RECENT = 0x00000000;
  static const ADLT_FREQUENT = 0x00000001;
}

/// {@category Enum}
class DESKTOP_SLIDESHOW_OPTIONS {
  static const DSO_SHUFFLEIMAGES = 0x00000001;
}

/// {@category Enum}
class DESKTOP_SLIDESHOW_STATE {
  static const DSS_ENABLED = 0x00000001;
  static const DSS_SLIDESHOW = 0x00000002;
  static const DSS_DISABLED_BY_REMOTE_SESSION = 0x00000004;
}

/// {@category Enum}
class DESKTOP_SLIDESHOW_DIRECTION {
  static const DSD_FORWARD = 0x00000000;
  static const DSD_BACKWARD = 0x00000001;
}

/// {@category Enum}
class DESKTOP_WALLPAPER_POSITION {
  static const DWPOS_CENTER = 0x00000000;
  static const DWPOS_TILE = 0x00000001;
  static const DWPOS_STRETCH = 0x00000002;
  static const DWPOS_FIT = 0x00000003;
  static const DWPOS_FILL = 0x00000004;
  static const DWPOS_SPAN = 0x00000005;
}

/// {@category Enum}
class HOMEGROUPSHARINGCHOICES {
  static const HGSC_NONE = 0x00000000;
  static const HGSC_MUSICLIBRARY = 0x00000001;
  static const HGSC_PICTURESLIBRARY = 0x00000002;
  static const HGSC_VIDEOSLIBRARY = 0x00000004;
  static const HGSC_DOCUMENTSLIBRARY = 0x00000008;
  static const HGSC_PRINTERS = 0x00000010;
}

/// {@category Enum}
class LIBRARYFOLDERFILTER {
  static const LFF_FORCEFILESYSTEM = 0x00000001;
  static const LFF_STORAGEITEMS = 0x00000002;
  static const LFF_ALLITEMS = 0x00000003;
}

/// {@category Enum}
class LIBRARYOPTIONFLAGS {
  static const LOF_DEFAULT = 0x00000000;
  static const LOF_PINNEDTONAVPANE = 0x00000001;
  static const LOF_MASK_ALL = 0x00000001;
}

/// {@category Enum}
class DEFAULTSAVEFOLDERTYPE {
  static const DSFT_DETECT = 0x00000001;
  static const DSFT_PRIVATE = 0x00000002;
  static const DSFT_PUBLIC = 0x00000003;
}

/// {@category Enum}
class LIBRARYSAVEFLAGS {
  static const LSF_FAILIFTHERE = 0x00000000;
  static const LSF_OVERRIDEEXISTING = 0x00000001;
  static const LSF_MAKEUNIQUENAME = 0x00000002;
}

/// {@category Enum}
class DEFAULT_FOLDER_MENU_RESTRICTIONS {
  static const DFMR_DEFAULT = 0x00000000;
  static const DFMR_NO_STATIC_VERBS = 0x00000008;
  static const DFMR_STATIC_VERBS_ONLY = 0x00000010;
  static const DFMR_NO_RESOURCE_VERBS = 0x00000020;
  static const DFMR_OPTIN_HANDLERS_ONLY = 0x00000040;
  static const DFMR_RESOURCE_AND_FOLDER_VERBS_ONLY = 0x00000080;
  static const DFMR_USE_SPECIFIED_HANDLERS = 0x00000100;
  static const DFMR_USE_SPECIFIED_VERBS = 0x00000200;
  static const DFMR_NO_ASYNC_VERBS = 0x00000400;
  static const DFMR_NO_NATIVECPU_VERBS = 0x00000800;
}

/// {@category Enum}
class ACTIVATEOPTIONS {
  static const AO_NONE = 0x00000000;
  static const AO_DESIGNMODE = 0x00000001;
  static const AO_NOERRORUI = 0x00000002;
  static const AO_NOSPLASHSCREEN = 0x00000004;
  static const AO_PRELAUNCH = 0x02000000;
}

/// {@category Enum}
class LIBRARYMANAGEDIALOGOPTIONS {
  static const LMD_DEFAULT = 0x00000000;
  static const LMD_ALLOWUNINDEXABLENETWORKLOCATIONS = 0x00000001;
}

/// {@category Enum}
class AHTYPE {
  static const AHTYPE_UNDEFINED = 0x00000000;
  static const AHTYPE_USER_APPLICATION = 0x00000008;
  static const AHTYPE_ANY_APPLICATION = 0x00000010;
  static const AHTYPE_MACHINEDEFAULT = 0x00000020;
  static const AHTYPE_PROGID = 0x00000040;
  static const AHTYPE_APPLICATION = 0x00000080;
  static const AHTYPE_CLASS_APPLICATION = 0x00000100;
  static const AHTYPE_ANY_PROGID = 0x00000200;
}

/// {@category Enum}
class ASSOC_FILTER {
  static const ASSOC_FILTER_NONE = 0x00000000;
  static const ASSOC_FILTER_RECOMMENDED = 0x00000001;
}

/// {@category Enum}
class MONITOR_APP_VISIBILITY {
  static const MAV_UNKNOWN = 0x00000000;
  static const MAV_NO_APP_VISIBLE = 0x00000001;
  static const MAV_APP_VISIBLE = 0x00000002;
}

/// {@category Enum}
class PACKAGE_EXECUTION_STATE {
  static const PES_UNKNOWN = 0x00000000;
  static const PES_RUNNING = 0x00000001;
  static const PES_SUSPENDING = 0x00000002;
  static const PES_SUSPENDED = 0x00000003;
  static const PES_TERMINATED = 0x00000004;
}

/// {@category Enum}
class AHE_TYPE {
  static const AHE_DESKTOP = 0x00000000;
  static const AHE_IMMERSIVE = 0x00000001;
}

/// {@category Enum}
class EC_HOST_UI_MODE {
  static const ECHUIM_DESKTOP = 0x00000000;
  static const ECHUIM_IMMERSIVE = 0x00000001;
  static const ECHUIM_SYSTEM_LAUNCHER = 0x00000002;
}

/// {@category Enum}
class APPLICATION_VIEW_STATE {
  static const AVS_FULLSCREEN_LANDSCAPE = 0x00000000;
  static const AVS_FILLED = 0x00000001;
  static const AVS_SNAPPED = 0x00000002;
  static const AVS_FULLSCREEN_PORTRAIT = 0x00000003;
}

/// {@category Enum}
class EDGE_GESTURE_KIND {
  static const EGK_TOUCH = 0x00000000;
  static const EGK_KEYBOARD = 0x00000001;
  static const EGK_MOUSE = 0x00000002;
}

/// {@category Enum}
class NATIVE_DISPLAY_ORIENTATION {
  static const NDO_LANDSCAPE = 0x00000000;
  static const NDO_PORTRAIT = 0x00000001;
}

/// {@category Enum}
class APPLICATION_VIEW_ORIENTATION {
  static const AVO_LANDSCAPE = 0x00000000;
  static const AVO_PORTRAIT = 0x00000001;
}

/// {@category Enum}
class ADJACENT_DISPLAY_EDGES {
  static const ADE_NONE = 0x00000000;
  static const ADE_LEFT = 0x00000001;
  static const ADE_RIGHT = 0x00000002;
}

/// {@category Enum}
class APPLICATION_VIEW_MIN_WIDTH {
  static const AVMW_DEFAULT = 0x00000000;
  static const AVMW_320 = 0x00000001;
  static const AVMW_500 = 0x00000002;
}

/// {@category Enum}
class APPLICATION_VIEW_SIZE_PREFERENCE {
  static const AVSP_DEFAULT = 0x00000000;
  static const AVSP_USE_LESS = 0x00000001;
  static const AVSP_USE_HALF = 0x00000002;
  static const AVSP_USE_MORE = 0x00000003;
  static const AVSP_USE_MINIMUM = 0x00000004;
  static const AVSP_USE_NONE = 0x00000005;
  static const AVSP_CUSTOM = 0x00000006;
}

/// {@category Enum}
class FLYOUT_PLACEMENT {
  static const FP_DEFAULT = 0x00000000;
  static const FP_ABOVE = 0x00000001;
  static const FP_BELOW = 0x00000002;
  static const FP_LEFT = 0x00000003;
  static const FP_RIGHT = 0x00000004;
}

/// {@category Enum}
class BANNER_NOTIFICATION_EVENT {
  static const BNE_Rendered = 0x00000000;
  static const BNE_Hovered = 0x00000001;
  static const BNE_Closed = 0x00000002;
  static const BNE_Dismissed = 0x00000003;
  static const BNE_Button1Clicked = 0x00000004;
  static const BNE_Button2Clicked = 0x00000005;
}

/// {@category Enum}
class SORT_ORDER_TYPE {
  static const SOT_DEFAULT = 0x00000000;
  static const SOT_IGNORE_FOLDERNESS = 0x00000001;
}

/// {@category Enum}
class FOLDERVIEWOPTIONS {
  static const FVO_DEFAULT = 0x00000000;
  static const FVO_VISTALAYOUT = 0x00000001;
  static const FVO_CUSTOMPOSITION = 0x00000002;
  static const FVO_CUSTOMORDERING = 0x00000004;
  static const FVO_SUPPORTHYPERLINKS = 0x00000008;
  static const FVO_NOANIMATIONS = 0x00000010;
  static const FVO_NOSCROLLTIPS = 0x00000020;
}

/// {@category Enum}
class SV3CVW3_FLAGS {
  static const SV3CVW3_DEFAULT = 0x00000000;
  static const SV3CVW3_NONINTERACTIVE = 0x00000001;
  static const SV3CVW3_FORCEVIEWMODE = 0x00000002;
  static const SV3CVW3_FORCEFOLDERFLAGS = 0x00000004;
}

/// {@category Enum}
class VPWATERMARKFLAGS {
  static const VPWF_DEFAULT = 0x00000000;
  static const VPWF_ALPHABLEND = 0x00000001;
}

/// {@category Enum}
class VPCOLORFLAGS {
  static const VPCF_TEXT = 0x00000001;
  static const VPCF_BACKGROUND = 0x00000002;
  static const VPCF_SORTCOLUMN = 0x00000003;
  static const VPCF_SUBTEXT = 0x00000004;
  static const VPCF_TEXTBACKGROUND = 0x00000005;
}

/// {@category Enum}
class DSH_FLAGS {
  static const DSH_ALLOWDROPDESCRIPTIONTEXT = 0x00000001;
}

/// {@category Enum}
class tagCDBURNINGEXTENSIONRET {
  static const CDBE_RET_DEFAULT = 0x00000000;
  static const CDBE_RET_DONTRUNOTHEREXTS = 0x00000001;
  static const CDBE_RET_STOPWIZARD = 0x00000002;
}

/// {@category Enum}
class CDBE_ACTIONS {
  static const CDBE_TYPE_MUSIC = 0x00000001;
  static const CDBE_TYPE_DATA = 0x00000002;
  static const CDBE_TYPE_ALL = 0xffffffff;
}

/// {@category Enum}
class NSTCSTYLE2 {
  static const NSTCS2_DEFAULT = 0x00000000;
  static const NSTCS2_INTERRUPTNOTIFICATIONS = 0x00000001;
  static const NSTCS2_SHOWNULLSPACEMENU = 0x00000002;
  static const NSTCS2_DISPLAYPADDING = 0x00000004;
  static const NSTCS2_DISPLAYPINNEDONLY = 0x00000008;
  static const NTSCS2_NOSINGLETONAUTOEXPAND = 0x00000010;
  static const NTSCS2_NEVERINSERTNONENUMERATED = 0x00000020;
}

/// {@category Enum}
class NSTCEHITTEST {
  static const NSTCEHT_NOWHERE = 0x00000001;
  static const NSTCEHT_ONITEMICON = 0x00000002;
  static const NSTCEHT_ONITEMLABEL = 0x00000004;
  static const NSTCEHT_ONITEMINDENT = 0x00000008;
  static const NSTCEHT_ONITEMBUTTON = 0x00000010;
  static const NSTCEHT_ONITEMRIGHT = 0x00000020;
  static const NSTCEHT_ONITEMSTATEICON = 0x00000040;
  static const NSTCEHT_ONITEM = 0x00000046;
  static const NSTCEHT_ONITEMTABBUTTON = 0x00001000;
}

/// {@category Enum}
class NSTCECLICKTYPE {
  static const NSTCECT_LBUTTON = 0x00000001;
  static const NSTCECT_MBUTTON = 0x00000002;
  static const NSTCECT_RBUTTON = 0x00000003;
  static const NSTCECT_BUTTON = 0x00000003;
  static const NSTCECT_DBLCLICK = 0x00000004;
}

/// {@category Enum}
class UNDOCK_REASON {
  static const UR_RESOLUTION_CHANGE = 0x00000000;
  static const UR_MONITOR_DISCONNECT = 0x00000001;
}

/// {@category Enum}
class OfflineFolderStatus {
  static const OFS_INACTIVE = 0xffffffff;
  static const OFS_ONLINE = 0x00000000;
  static const OFS_OFFLINE = 0x00000001;
  static const OFS_SERVERBACK = 0x00000002;
  static const OFS_DIRTYCACHE = 0x00000003;
}

/// {@category Enum}
class ShellFolderViewOptions {
  static const SFVVO_SHOWALLOBJECTS = 0x00000001;
  static const SFVVO_SHOWEXTENSIONS = 0x00000002;
  static const SFVVO_SHOWCOMPCOLOR = 0x00000008;
  static const SFVVO_SHOWSYSFILES = 0x00000020;
  static const SFVVO_WIN95CLASSIC = 0x00000040;
  static const SFVVO_DOUBLECLICKINWEBVIEW = 0x00000080;
  static const SFVVO_DESKTOPHTML = 0x00000200;
}

/// {@category Enum}
class ShellSpecialFolderConstants {
  static const ssfDESKTOP = 0x00000000;
  static const ssfPROGRAMS = 0x00000002;
  static const ssfCONTROLS = 0x00000003;
  static const ssfPRINTERS = 0x00000004;
  static const ssfPERSONAL = 0x00000005;
  static const ssfFAVORITES = 0x00000006;
  static const ssfSTARTUP = 0x00000007;
  static const ssfRECENT = 0x00000008;
  static const ssfSENDTO = 0x00000009;
  static const ssfBITBUCKET = 0x0000000a;
  static const ssfSTARTMENU = 0x0000000b;
  static const ssfDESKTOPDIRECTORY = 0x00000010;
  static const ssfDRIVES = 0x00000011;
  static const ssfNETWORK = 0x00000012;
  static const ssfNETHOOD = 0x00000013;
  static const ssfFONTS = 0x00000014;
  static const ssfTEMPLATES = 0x00000015;
  static const ssfCOMMONSTARTMENU = 0x00000016;
  static const ssfCOMMONPROGRAMS = 0x00000017;
  static const ssfCOMMONSTARTUP = 0x00000018;
  static const ssfCOMMONDESKTOPDIR = 0x00000019;
  static const ssfAPPDATA = 0x0000001a;
  static const ssfPRINTHOOD = 0x0000001b;
  static const ssfLOCALAPPDATA = 0x0000001c;
  static const ssfALTSTARTUP = 0x0000001d;
  static const ssfCOMMONALTSTARTUP = 0x0000001e;
  static const ssfCOMMONFAVORITES = 0x0000001f;
  static const ssfINTERNETCACHE = 0x00000020;
  static const ssfCOOKIES = 0x00000021;
  static const ssfHISTORY = 0x00000022;
  static const ssfCOMMONAPPDATA = 0x00000023;
  static const ssfWINDOWS = 0x00000024;
  static const ssfSYSTEM = 0x00000025;
  static const ssfPROGRAMFILES = 0x00000026;
  static const ssfMYPICTURES = 0x00000027;
  static const ssfPROFILE = 0x00000028;
  static const ssfSYSTEMx86 = 0x00000029;
  static const ssfPROGRAMFILESx86 = 0x00000030;
}

/// {@category Enum}
class AUTOCOMPLETEOPTIONS {
  static const ACO_NONE = 0x00000000;
  static const ACO_AUTOSUGGEST = 0x00000001;
  static const ACO_AUTOAPPEND = 0x00000002;
  static const ACO_SEARCH = 0x00000004;
  static const ACO_FILTERPREFIXES = 0x00000008;
  static const ACO_USETAB = 0x00000010;
  static const ACO_UPDOWNKEYDROPSLIST = 0x00000020;
  static const ACO_RTLREADING = 0x00000040;
  static const ACO_WORD_FILTER = 0x00000080;
  static const ACO_NOPREFIXFILTERING = 0x00000100;
}

/// {@category Enum}
class ACENUMOPTION {
  static const ACEO_NONE = 0x00000000;
  static const ACEO_MOSTRECENTFIRST = 0x00000001;
  static const ACEO_FIRSTUNUSED = 0x00010000;
}

/// {@category Enum}
class SHELL_LINK_DATA_FLAGS {
  static const SLDF_DEFAULT = 0x00000000;
  static const SLDF_HAS_ID_LIST = 0x00000001;
  static const SLDF_HAS_LINK_INFO = 0x00000002;
  static const SLDF_HAS_NAME = 0x00000004;
  static const SLDF_HAS_RELPATH = 0x00000008;
  static const SLDF_HAS_WORKINGDIR = 0x00000010;
  static const SLDF_HAS_ARGS = 0x00000020;
  static const SLDF_HAS_ICONLOCATION = 0x00000040;
  static const SLDF_UNICODE = 0x00000080;
  static const SLDF_FORCE_NO_LINKINFO = 0x00000100;
  static const SLDF_HAS_EXP_SZ = 0x00000200;
  static const SLDF_RUN_IN_SEPARATE = 0x00000400;
  static const SLDF_HAS_DARWINID = 0x00001000;
  static const SLDF_RUNAS_USER = 0x00002000;
  static const SLDF_HAS_EXP_ICON_SZ = 0x00004000;
  static const SLDF_NO_PIDL_ALIAS = 0x00008000;
  static const SLDF_FORCE_UNCNAME = 0x00010000;
  static const SLDF_RUN_WITH_SHIMLAYER = 0x00020000;
  static const SLDF_FORCE_NO_LINKTRACK = 0x00040000;
  static const SLDF_ENABLE_TARGET_METADATA = 0x00080000;
  static const SLDF_DISABLE_LINK_PATH_TRACKING = 0x00100000;
  static const SLDF_DISABLE_KNOWNFOLDER_RELATIVE_TRACKING = 0x00200000;
  static const SLDF_NO_KF_ALIAS = 0x00400000;
  static const SLDF_ALLOW_LINK_TO_LINK = 0x00800000;
  static const SLDF_UNALIAS_ON_SAVE = 0x01000000;
  static const SLDF_PREFER_ENVIRONMENT_PATH = 0x02000000;
  static const SLDF_KEEP_LOCAL_IDLIST_FOR_UNC_TARGET = 0x04000000;
  static const SLDF_PERSIST_VOLUME_ID_RELATIVE = 0x08000000;
  static const SLDF_VALID = 0x0ffff7ff;
  static const SLDF_RESERVED = 0x80000000;
}

/// {@category Enum}
class SHGFP_TYPE {
  static const SHGFP_TYPE_CURRENT = 0x00000000;
  static const SHGFP_TYPE_DEFAULT = 0x00000001;
}

/// {@category Enum}
class KNOWN_FOLDER_FLAG {
  static const KF_FLAG_DEFAULT = 0x00000000;
  static const KF_FLAG_FORCE_APP_DATA_REDIRECTION = 0x00080000;
  static const KF_FLAG_RETURN_FILTER_REDIRECTION_TARGET = 0x00040000;
  static const KF_FLAG_FORCE_PACKAGE_REDIRECTION = 0x00020000;
  static const KF_FLAG_NO_PACKAGE_REDIRECTION = 0x00010000;
  static const KF_FLAG_FORCE_APPCONTAINER_REDIRECTION = 0x00020000;
  static const KF_FLAG_NO_APPCONTAINER_REDIRECTION = 0x00010000;
  static const KF_FLAG_CREATE = 0x00008000;
  static const KF_FLAG_DONT_VERIFY = 0x00004000;
  static const KF_FLAG_DONT_UNEXPAND = 0x00002000;
  static const KF_FLAG_NO_ALIAS = 0x00001000;
  static const KF_FLAG_INIT = 0x00000800;
  static const KF_FLAG_DEFAULT_PATH = 0x00000400;
  static const KF_FLAG_NOT_PARENT_RELATIVE = 0x00000200;
  static const KF_FLAG_SIMPLE_IDLIST = 0x00000100;
  static const KF_FLAG_ALIAS_ONLY = 0x80000000;
}

/// {@category Enum}
class AUTOCOMPLETELISTOPTIONS {
  static const ACLO_NONE = 0x00000000;
  static const ACLO_CURRENTDIR = 0x00000001;
  static const ACLO_MYCOMPUTER = 0x00000002;
  static const ACLO_DESKTOP = 0x00000004;
  static const ACLO_FAVORITES = 0x00000008;
  static const ACLO_FILESYSONLY = 0x00000010;
  static const ACLO_FILESYSDIRS = 0x00000020;
  static const ACLO_VIRTUALNAMESPACE = 0x00000040;
}

/// {@category Enum}
class FD_FLAGS {
  static const FD_CLSID = 0x00000001;
  static const FD_SIZEPOINT = 0x00000002;
  static const FD_ATTRIBUTES = 0x00000004;
  static const FD_CREATETIME = 0x00000008;
  static const FD_ACCESSTIME = 0x00000010;
  static const FD_WRITESTIME = 0x00000020;
  static const FD_FILESIZE = 0x00000040;
  static const FD_PROGRESSUI = 0x00004000;
  static const FD_LINKUI = 0x00008000;
  static const FD_UNICODE = 0x80000000;
}

/// {@category Enum}
class DROPIMAGETYPE {
  static const DROPIMAGE_INVALID = 0xffffffff;
  static const DROPIMAGE_NONE = 0x00000000;
  static const DROPIMAGE_COPY = 0x00000001;
  static const DROPIMAGE_MOVE = 0x00000002;
  static const DROPIMAGE_LINK = 0x00000004;
  static const DROPIMAGE_LABEL = 0x00000006;
  static const DROPIMAGE_WARNING = 0x00000007;
  static const DROPIMAGE_NOIMAGE = 0x00000008;
}

/// {@category Enum}
class SHARD {
  static const SHARD_PIDL = 0x00000001;
  static const SHARD_PATHA = 0x00000002;
  static const SHARD_PATHW = 0x00000003;
  static const SHARD_APPIDINFO = 0x00000004;
  static const SHARD_APPIDINFOIDLIST = 0x00000005;
  static const SHARD_LINK = 0x00000006;
  static const SHARD_APPIDINFOLINK = 0x00000007;
  static const SHARD_SHELLITEM = 0x00000008;
}

/// {@category Enum}
class SCNRT_STATUS {
  static const SCNRT_ENABLE = 0x00000000;
  static const SCNRT_DISABLE = 0x00000001;
}

/// {@category Enum}
class RESTRICTIONS {
  static const REST_NONE = 0x00000000;
  static const REST_NORUN = 0x00000001;
  static const REST_NOCLOSE = 0x00000002;
  static const REST_NOSAVESET = 0x00000004;
  static const REST_NOFILEMENU = 0x00000008;
  static const REST_NOSETFOLDERS = 0x00000010;
  static const REST_NOSETTASKBAR = 0x00000020;
  static const REST_NODESKTOP = 0x00000040;
  static const REST_NOFIND = 0x00000080;
  static const REST_NODRIVES = 0x00000100;
  static const REST_NODRIVEAUTORUN = 0x00000200;
  static const REST_NODRIVETYPEAUTORUN = 0x00000400;
  static const REST_NONETHOOD = 0x00000800;
  static const REST_STARTBANNER = 0x00001000;
  static const REST_RESTRICTRUN = 0x00002000;
  static const REST_NOPRINTERTABS = 0x00004000;
  static const REST_NOPRINTERDELETE = 0x00008000;
  static const REST_NOPRINTERADD = 0x00010000;
  static const REST_NOSTARTMENUSUBFOLDERS = 0x00020000;
  static const REST_MYDOCSONNET = 0x00040000;
  static const REST_NOEXITTODOS = 0x00080000;
  static const REST_ENFORCESHELLEXTSECURITY = 0x00100000;
  static const REST_LINKRESOLVEIGNORELINKINFO = 0x00200000;
  static const REST_NOCOMMONGROUPS = 0x00400000;
  static const REST_SEPARATEDESKTOPPROCESS = 0x00800000;
  static const REST_NOWEB = 0x01000000;
  static const REST_NOTRAYCONTEXTMENU = 0x02000000;
  static const REST_NOVIEWCONTEXTMENU = 0x04000000;
  static const REST_NONETCONNECTDISCONNECT = 0x08000000;
  static const REST_STARTMENULOGOFF = 0x10000000;
  static const REST_NOSETTINGSASSIST = 0x20000000;
  static const REST_NOINTERNETICON = 0x40000001;
  static const REST_NORECENTDOCSHISTORY = 0x40000002;
  static const REST_NORECENTDOCSMENU = 0x40000003;
  static const REST_NOACTIVEDESKTOP = 0x40000004;
  static const REST_NOACTIVEDESKTOPCHANGES = 0x40000005;
  static const REST_NOFAVORITESMENU = 0x40000006;
  static const REST_CLEARRECENTDOCSONEXIT = 0x40000007;
  static const REST_CLASSICSHELL = 0x40000008;
  static const REST_NOCUSTOMIZEWEBVIEW = 0x40000009;
  static const REST_NOHTMLWALLPAPER = 0x40000010;
  static const REST_NOCHANGINGWALLPAPER = 0x40000011;
  static const REST_NODESKCOMP = 0x40000012;
  static const REST_NOADDDESKCOMP = 0x40000013;
  static const REST_NODELDESKCOMP = 0x40000014;
  static const REST_NOCLOSEDESKCOMP = 0x40000015;
  static const REST_NOCLOSE_DRAGDROPBAND = 0x40000016;
  static const REST_NOMOVINGBAND = 0x40000017;
  static const REST_NOEDITDESKCOMP = 0x40000018;
  static const REST_NORESOLVESEARCH = 0x40000019;
  static const REST_NORESOLVETRACK = 0x4000001a;
  static const REST_FORCECOPYACLWITHFILE = 0x4000001b;
  static const REST_NOFORGETSOFTWAREUPDATE = 0x4000001d;
  static const REST_NOSETACTIVEDESKTOP = 0x4000001e;
  static const REST_NOUPDATEWINDOWS = 0x4000001f;
  static const REST_NOCHANGESTARMENU = 0x40000020;
  static const REST_NOFOLDEROPTIONS = 0x40000021;
  static const REST_HASFINDCOMPUTERS = 0x40000022;
  static const REST_INTELLIMENUS = 0x40000023;
  static const REST_RUNDLGMEMCHECKBOX = 0x40000024;
  static const REST_ARP_ShowPostSetup = 0x40000025;
  static const REST_NOCSC = 0x40000026;
  static const REST_NOCONTROLPANEL = 0x40000027;
  static const REST_ENUMWORKGROUP = 0x40000028;
  static const REST_ARP_NOARP = 0x40000029;
  static const REST_ARP_NOREMOVEPAGE = 0x4000002a;
  static const REST_ARP_NOADDPAGE = 0x4000002b;
  static const REST_ARP_NOWINSETUPPAGE = 0x4000002c;
  static const REST_GREYMSIADS = 0x4000002d;
  static const REST_NOCHANGEMAPPEDDRIVELABEL = 0x4000002e;
  static const REST_NOCHANGEMAPPEDDRIVECOMMENT = 0x4000002f;
  static const REST_MaxRecentDocs = 0x40000030;
  static const REST_NONETWORKCONNECTIONS = 0x40000031;
  static const REST_FORCESTARTMENULOGOFF = 0x40000032;
  static const REST_NOWEBVIEW = 0x40000033;
  static const REST_NOCUSTOMIZETHISFOLDER = 0x40000034;
  static const REST_NOENCRYPTION = 0x40000035;
  static const REST_DONTSHOWSUPERHIDDEN = 0x40000037;
  static const REST_NOSHELLSEARCHBUTTON = 0x40000038;
  static const REST_NOHARDWARETAB = 0x40000039;
  static const REST_NORUNASINSTALLPROMPT = 0x4000003a;
  static const REST_PROMPTRUNASINSTALLNETPATH = 0x4000003b;
  static const REST_NOMANAGEMYCOMPUTERVERB = 0x4000003c;
  static const REST_DISALLOWRUN = 0x4000003e;
  static const REST_NOWELCOMESCREEN = 0x4000003f;
  static const REST_RESTRICTCPL = 0x40000040;
  static const REST_DISALLOWCPL = 0x40000041;
  static const REST_NOSMBALLOONTIP = 0x40000042;
  static const REST_NOSMHELP = 0x40000043;
  static const REST_NOWINKEYS = 0x40000044;
  static const REST_NOENCRYPTONMOVE = 0x40000045;
  static const REST_NOLOCALMACHINERUN = 0x40000046;
  static const REST_NOCURRENTUSERRUN = 0x40000047;
  static const REST_NOLOCALMACHINERUNONCE = 0x40000048;
  static const REST_NOCURRENTUSERRUNONCE = 0x40000049;
  static const REST_FORCEACTIVEDESKTOPON = 0x4000004a;
  static const REST_NOVIEWONDRIVE = 0x4000004c;
  static const REST_NONETCRAWL = 0x4000004d;
  static const REST_NOSHAREDDOCUMENTS = 0x4000004e;
  static const REST_NOSMMYDOCS = 0x4000004f;
  static const REST_NOSMMYPICS = 0x40000050;
  static const REST_ALLOWBITBUCKDRIVES = 0x40000051;
  static const REST_NONLEGACYSHELLMODE = 0x40000052;
  static const REST_NOCONTROLPANELBARRICADE = 0x40000053;
  static const REST_NOSTARTPAGE = 0x40000054;
  static const REST_NOAUTOTRAYNOTIFY = 0x40000055;
  static const REST_NOTASKGROUPING = 0x40000056;
  static const REST_NOCDBURNING = 0x40000057;
  static const REST_MYCOMPNOPROP = 0x40000058;
  static const REST_MYDOCSNOPROP = 0x40000059;
  static const REST_NOSTARTPANEL = 0x4000005a;
  static const REST_NODISPLAYAPPEARANCEPAGE = 0x4000005b;
  static const REST_NOTHEMESTAB = 0x4000005c;
  static const REST_NOVISUALSTYLECHOICE = 0x4000005d;
  static const REST_NOSIZECHOICE = 0x4000005e;
  static const REST_NOCOLORCHOICE = 0x4000005f;
  static const REST_SETVISUALSTYLE = 0x40000060;
  static const REST_STARTRUNNOHOMEPATH = 0x40000061;
  static const REST_NOUSERNAMEINSTARTPANEL = 0x40000062;
  static const REST_NOMYCOMPUTERICON = 0x40000063;
  static const REST_NOSMNETWORKPLACES = 0x40000064;
  static const REST_NOSMPINNEDLIST = 0x40000065;
  static const REST_NOSMMYMUSIC = 0x40000066;
  static const REST_NOSMEJECTPC = 0x40000067;
  static const REST_NOSMMOREPROGRAMS = 0x40000068;
  static const REST_NOSMMFUPROGRAMS = 0x40000069;
  static const REST_NOTRAYITEMSDISPLAY = 0x4000006a;
  static const REST_NOTOOLBARSONTASKBAR = 0x4000006b;
  static const REST_NOSMCONFIGUREPROGRAMS = 0x4000006f;
  static const REST_HIDECLOCK = 0x40000070;
  static const REST_NOLOWDISKSPACECHECKS = 0x40000071;
  static const REST_NOENTIRENETWORK = 0x40000072;
  static const REST_NODESKTOPCLEANUP = 0x40000073;
  static const REST_BITBUCKNUKEONDELETE = 0x40000074;
  static const REST_BITBUCKCONFIRMDELETE = 0x40000075;
  static const REST_BITBUCKNOPROP = 0x40000076;
  static const REST_NODISPBACKGROUND = 0x40000077;
  static const REST_NODISPSCREENSAVEPG = 0x40000078;
  static const REST_NODISPSETTINGSPG = 0x40000079;
  static const REST_NODISPSCREENSAVEPREVIEW = 0x4000007a;
  static const REST_NODISPLAYCPL = 0x4000007b;
  static const REST_HIDERUNASVERB = 0x4000007c;
  static const REST_NOTHUMBNAILCACHE = 0x4000007d;
  static const REST_NOSTRCMPLOGICAL = 0x4000007e;
  static const REST_NOPUBLISHWIZARD = 0x4000007f;
  static const REST_NOONLINEPRINTSWIZARD = 0x40000080;
  static const REST_NOWEBSERVICES = 0x40000081;
  static const REST_ALLOWUNHASHEDWEBVIEW = 0x40000082;
  static const REST_ALLOWLEGACYWEBVIEW = 0x40000083;
  static const REST_REVERTWEBVIEWSECURITY = 0x40000084;
  static const REST_INHERITCONSOLEHANDLES = 0x40000086;
  static const REST_NOREMOTERECURSIVEEVENTS = 0x40000089;
  static const REST_NOREMOTECHANGENOTIFY = 0x40000091;
  static const REST_NOENUMENTIRENETWORK = 0x40000093;
  static const REST_NOINTERNETOPENWITH = 0x40000095;
  static const REST_DONTRETRYBADNETNAME = 0x4000009b;
  static const REST_ALLOWFILECLSIDJUNCTIONS = 0x4000009c;
  static const REST_NOUPNPINSTALL = 0x4000009d;
  static const REST_ARP_DONTGROUPPATCHES = 0x400000ac;
  static const REST_ARP_NOCHOOSEPROGRAMSPAGE = 0x400000ad;
  static const REST_NODISCONNECT = 0x41000001;
  static const REST_NOSECURITY = 0x41000002;
  static const REST_NOFILEASSOCIATE = 0x41000003;
  static const REST_ALLOWCOMMENTTOGGLE = 0x41000004;
}

/// {@category Enum}
class tagOPEN_AS_INFO_FLAGS {
  static const OAIF_ALLOW_REGISTRATION = 0x00000001;
  static const OAIF_REGISTER_EXT = 0x00000002;
  static const OAIF_EXEC = 0x00000004;
  static const OAIF_FORCE_REGISTRATION = 0x00000008;
  static const OAIF_HIDE_REGISTRATION = 0x00000020;
  static const OAIF_URL_PROTOCOL = 0x00000040;
  static const OAIF_FILE_IS_URI = 0x00000080;
}

/// {@category Enum}
class IESHORTCUTFLAGS {
  static const IESHORTCUT_NEWBROWSER = 0x00000001;
  static const IESHORTCUT_OPENNEWTAB = 0x00000002;
  static const IESHORTCUT_FORCENAVIGATE = 0x00000004;
  static const IESHORTCUT_BACKGROUNDTAB = 0x00000008;
}

/// {@category Enum}
class DISPLAY_DEVICE_TYPE {
  static const DEVICE_PRIMARY = 0x00000000;
  static const DEVICE_IMMERSIVE = 0x00000001;
}

/// {@category Enum}
class SCALE_CHANGE_FLAGS {
  static const SCF_VALUE_NONE = 0x00000000;
  static const SCF_SCALE = 0x00000001;
  static const SCF_PHYSICAL = 0x00000002;
}

/// {@category Enum}
class SHELL_UI_COMPONENT {
  static const SHELL_UI_COMPONENT_TASKBARS = 0x00000000;
  static const SHELL_UI_COMPONENT_NOTIFICATIONAREA = 0x00000001;
  static const SHELL_UI_COMPONENT_DESKBAND = 0x00000002;
}

/// {@category Enum}
class tagSFBS_FLAGS {
  static const SFBS_FLAGS_ROUND_TO_NEAREST_DISPLAYED_DIGIT = 0x00000001;
  static const SFBS_FLAGS_TRUNCATE_UNDISPLAYED_DECIMAL_DIGITS = 0x00000002;
}

/// {@category Enum}
class URL_SCHEME {
  static const URL_SCHEME_INVALID = 0xffffffff;
  static const URL_SCHEME_UNKNOWN = 0x00000000;
  static const URL_SCHEME_FTP = 0x00000001;
  static const URL_SCHEME_HTTP = 0x00000002;
  static const URL_SCHEME_GOPHER = 0x00000003;
  static const URL_SCHEME_MAILTO = 0x00000004;
  static const URL_SCHEME_NEWS = 0x00000005;
  static const URL_SCHEME_NNTP = 0x00000006;
  static const URL_SCHEME_TELNET = 0x00000007;
  static const URL_SCHEME_WAIS = 0x00000008;
  static const URL_SCHEME_FILE = 0x00000009;
  static const URL_SCHEME_MK = 0x0000000a;
  static const URL_SCHEME_HTTPS = 0x0000000b;
  static const URL_SCHEME_SHELL = 0x0000000c;
  static const URL_SCHEME_SNEWS = 0x0000000d;
  static const URL_SCHEME_LOCAL = 0x0000000e;
  static const URL_SCHEME_JAVASCRIPT = 0x0000000f;
  static const URL_SCHEME_VBSCRIPT = 0x00000010;
  static const URL_SCHEME_ABOUT = 0x00000011;
  static const URL_SCHEME_RES = 0x00000012;
  static const URL_SCHEME_MSSHELLROOTED = 0x00000013;
  static const URL_SCHEME_MSSHELLIDLIST = 0x00000014;
  static const URL_SCHEME_MSHELP = 0x00000015;
  static const URL_SCHEME_MSSHELLDEVICE = 0x00000016;
  static const URL_SCHEME_WILDCARD = 0x00000017;
  static const URL_SCHEME_SEARCH_MS = 0x00000018;
  static const URL_SCHEME_SEARCH = 0x00000019;
  static const URL_SCHEME_KNOWNFOLDER = 0x0000001a;
  static const URL_SCHEME_MAXVALUE = 0x0000001b;
}

/// {@category Enum}
class URL_PART {
  static const URL_PART_NONE = 0x00000000;
  static const URL_PART_SCHEME = 0x00000001;
  static const URL_PART_HOSTNAME = 0x00000002;
  static const URL_PART_USERNAME = 0x00000003;
  static const URL_PART_PASSWORD = 0x00000004;
  static const URL_PART_PORT = 0x00000005;
  static const URL_PART_QUERY = 0x00000006;
}

/// {@category Enum}
class URLIS {
  static const URLIS_URL = 0x00000000;
  static const URLIS_OPAQUE = 0x00000001;
  static const URLIS_NOHISTORY = 0x00000002;
  static const URLIS_FILEURL = 0x00000003;
  static const URLIS_APPLIABLE = 0x00000004;
  static const URLIS_DIRECTORY = 0x00000005;
  static const URLIS_HASQUERY = 0x00000006;
}

/// {@category Enum}
class SHREGDEL_FLAGS {
  static const SHREGDEL_DEFAULT = 0x00000000;
  static const SHREGDEL_HKCU = 0x00000001;
  static const SHREGDEL_HKLM = 0x00000010;
  static const SHREGDEL_BOTH = 0x00000011;
}

/// {@category Enum}
class SHREGENUM_FLAGS {
  static const SHREGENUM_DEFAULT = 0x00000000;
  static const SHREGENUM_HKCU = 0x00000001;
  static const SHREGENUM_HKLM = 0x00000010;
  static const SHREGENUM_BOTH = 0x00000011;
}

/// {@category Enum}
class ASSOCSTR {
  static const ASSOCSTR_COMMAND = 0x00000001;
  static const ASSOCSTR_EXECUTABLE = 0x00000002;
  static const ASSOCSTR_FRIENDLYDOCNAME = 0x00000003;
  static const ASSOCSTR_FRIENDLYAPPNAME = 0x00000004;
  static const ASSOCSTR_NOOPEN = 0x00000005;
  static const ASSOCSTR_SHELLNEWVALUE = 0x00000006;
  static const ASSOCSTR_DDECOMMAND = 0x00000007;
  static const ASSOCSTR_DDEIFEXEC = 0x00000008;
  static const ASSOCSTR_DDEAPPLICATION = 0x00000009;
  static const ASSOCSTR_DDETOPIC = 0x0000000a;
  static const ASSOCSTR_INFOTIP = 0x0000000b;
  static const ASSOCSTR_QUICKTIP = 0x0000000c;
  static const ASSOCSTR_TILEINFO = 0x0000000d;
  static const ASSOCSTR_CONTENTTYPE = 0x0000000e;
  static const ASSOCSTR_DEFAULTICON = 0x0000000f;
  static const ASSOCSTR_SHELLEXTENSION = 0x00000010;
  static const ASSOCSTR_DROPTARGET = 0x00000011;
  static const ASSOCSTR_DELEGATEEXECUTE = 0x00000012;
  static const ASSOCSTR_SUPPORTED_URI_PROTOCOLS = 0x00000013;
  static const ASSOCSTR_PROGID = 0x00000014;
  static const ASSOCSTR_APPID = 0x00000015;
  static const ASSOCSTR_APPPUBLISHER = 0x00000016;
  static const ASSOCSTR_APPICONREFERENCE = 0x00000017;
  static const ASSOCSTR_MAX = 0x00000018;
}

/// {@category Enum}
class ASSOCKEY {
  static const ASSOCKEY_SHELLEXECCLASS = 0x00000001;
  static const ASSOCKEY_APP = 0x00000002;
  static const ASSOCKEY_CLASS = 0x00000003;
  static const ASSOCKEY_BASECLASS = 0x00000004;
  static const ASSOCKEY_MAX = 0x00000005;
}

/// {@category Enum}
class ASSOCDATA {
  static const ASSOCDATA_MSIDESCRIPTOR = 0x00000001;
  static const ASSOCDATA_NOACTIVATEHANDLER = 0x00000002;
  static const ASSOCDATA_UNUSED1 = 0x00000003;
  static const ASSOCDATA_HASPERUSERASSOC = 0x00000004;
  static const ASSOCDATA_EDITFLAGS = 0x00000005;
  static const ASSOCDATA_VALUE = 0x00000006;
  static const ASSOCDATA_MAX = 0x00000007;
}

/// {@category Enum}
class ASSOCENUM {
  static const ASSOCENUM_NONE = 0x00000000;
}

/// {@category Enum}
class FILETYPEATTRIBUTEFLAGS {
  static const FTA_None = 0x00000000;
  static const FTA_Exclude = 0x00000001;
  static const FTA_Show = 0x00000002;
  static const FTA_HasExtension = 0x00000004;
  static const FTA_NoEdit = 0x00000008;
  static const FTA_NoRemove = 0x00000010;
  static const FTA_NoNewVerb = 0x00000020;
  static const FTA_NoEditVerb = 0x00000040;
  static const FTA_NoRemoveVerb = 0x00000080;
  static const FTA_NoEditDesc = 0x00000100;
  static const FTA_NoEditIcon = 0x00000200;
  static const FTA_NoEditDflt = 0x00000400;
  static const FTA_NoEditVerbCmd = 0x00000800;
  static const FTA_NoEditVerbExe = 0x00001000;
  static const FTA_NoDDE = 0x00002000;
  static const FTA_NoEditMIME = 0x00008000;
  static const FTA_OpenIsSafe = 0x00010000;
  static const FTA_AlwaysUnsafe = 0x00020000;
  static const FTA_NoRecentDocs = 0x00100000;
  static const FTA_SafeForElevation = 0x00200000;
  static const FTA_AlwaysUseDirectInvoke = 0x00400000;
}

/// {@category Enum}
class SHGLOBALCOUNTER {
  static const GLOBALCOUNTER_SEARCHMANAGER = 0x00000000;
  static const GLOBALCOUNTER_SEARCHOPTIONS = 0x00000001;
  static const GLOBALCOUNTER_FOLDERSETTINGSCHANGE = 0x00000002;
  static const GLOBALCOUNTER_RATINGS = 0x00000003;
  static const GLOBALCOUNTER_APPROVEDSITES = 0x00000004;
  static const GLOBALCOUNTER_RESTRICTIONS = 0x00000005;
  static const GLOBALCOUNTER_SHELLSETTINGSCHANGED = 0x00000006;
  static const GLOBALCOUNTER_SYSTEMPIDLCHANGE = 0x00000007;
  static const GLOBALCOUNTER_OVERLAYMANAGER = 0x00000008;
  static const GLOBALCOUNTER_QUERYASSOCIATIONS = 0x00000009;
  static const GLOBALCOUNTER_IESESSIONS = 0x0000000a;
  static const GLOBALCOUNTER_IEONLY_SESSIONS = 0x0000000b;
  static const GLOBALCOUNTER_APPLICATION_DESTINATIONS = 0x0000000c;
  static const GLOBALCOUNTER_BITBUCKETNUMDELETERS = 0x0000000e;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_SHARES = 0x0000000f;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_A = 0x00000010;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_B = 0x00000011;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_C = 0x00000012;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_D = 0x00000013;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_E = 0x00000014;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_F = 0x00000015;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_G = 0x00000016;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_H = 0x00000017;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_I = 0x00000018;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_J = 0x00000019;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_K = 0x0000001a;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_L = 0x0000001b;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_M = 0x0000001c;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_N = 0x0000001d;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_O = 0x0000001e;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_P = 0x0000001f;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_Q = 0x00000020;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_R = 0x00000021;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_S = 0x00000022;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_T = 0x00000023;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_U = 0x00000024;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_V = 0x00000025;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_W = 0x00000026;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_X = 0x00000027;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_Y = 0x00000028;
  static const GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_Z = 0x00000029;
  static const GLOBALCOUNTER_RECYCLEBINENUM = 0x0000002c;
  static const GLOBALCOUNTER_RECYCLEBINCORRUPTED = 0x0000002d;
  static const GLOBALCOUNTER_RATINGS_STATECOUNTER = 0x0000002e;
  static const GLOBALCOUNTER_PRIVATE_PROFILE_CACHE = 0x0000002f;
  static const GLOBALCOUNTER_INTERNETTOOLBAR_LAYOUT = 0x00000030;
  static const GLOBALCOUNTER_FOLDERDEFINITION_CACHE = 0x00000031;
  static const GLOBALCOUNTER_COMMONPLACES_LIST_CACHE = 0x00000032;
  static const GLOBALCOUNTER_PRIVATE_PROFILE_CACHE_MACHINEWIDE = 0x00000033;
  static const GLOBALCOUNTER_ASSOCCHANGED = 0x00000034;
  static const GLOBALCOUNTER_APP_ITEMS_STATE_STORE_CACHE = 0x00000035;
  static const GLOBALCOUNTER_SETTINGSYNC_ENABLED = 0x00000036;
  static const GLOBALCOUNTER_APPSFOLDER_FILETYPEASSOCIATION_COUNTER = 0x00000037;
  static const GLOBALCOUNTER_USERINFOCHANGED = 0x00000038;
  static const GLOBALCOUNTER_SYNC_ENGINE_INFORMATION_CACHE_MACHINEWIDE = 0x00000039;
  static const GLOBALCOUNTER_BANNERS_DATAMODEL_CACHE_MACHINEWIDE = 0x0000003a;
  static const GLOBALCOUNTER_MAXIMUMVALUE = 0x0000003b;
}

/// {@category Enum}
class APPINFODATAFLAGS {
  static const AIM_DISPLAYNAME = 0x00000001;
  static const AIM_VERSION = 0x00000002;
  static const AIM_PUBLISHER = 0x00000004;
  static const AIM_PRODUCTID = 0x00000008;
  static const AIM_REGISTEREDOWNER = 0x00000010;
  static const AIM_REGISTEREDCOMPANY = 0x00000020;
  static const AIM_LANGUAGE = 0x00000040;
  static const AIM_SUPPORTURL = 0x00000080;
  static const AIM_SUPPORTTELEPHONE = 0x00000100;
  static const AIM_HELPLINK = 0x00000200;
  static const AIM_INSTALLLOCATION = 0x00000400;
  static const AIM_INSTALLSOURCE = 0x00000800;
  static const AIM_INSTALLDATE = 0x00001000;
  static const AIM_CONTACT = 0x00004000;
  static const AIM_COMMENTS = 0x00008000;
  static const AIM_IMAGE = 0x00020000;
  static const AIM_READMEURL = 0x00040000;
  static const AIM_UPDATEINFOURL = 0x00080000;
}

/// {@category Enum}
class APPACTIONFLAGS {
  static const APPACTION_INSTALL = 0x00000001;
  static const APPACTION_UNINSTALL = 0x00000002;
  static const APPACTION_MODIFY = 0x00000004;
  static const APPACTION_REPAIR = 0x00000008;
  static const APPACTION_UPGRADE = 0x00000010;
  static const APPACTION_CANGETSIZE = 0x00000020;
  static const APPACTION_MODIFYREMOVE = 0x00000080;
  static const APPACTION_ADDLATER = 0x00000100;
  static const APPACTION_UNSCHEDULE = 0x00000200;
}

/// {@category Enum}
class PUBAPPINFOFLAGS {
  static const PAI_SOURCE = 0x00000001;
  static const PAI_ASSIGNEDTIME = 0x00000002;
  static const PAI_PUBLISHEDTIME = 0x00000004;
  static const PAI_SCHEDULEDTIME = 0x00000008;
  static const PAI_EXPIRETIME = 0x00000010;
}

/// {@category Enum}
class CREDENTIAL_PROVIDER_USAGE_SCENARIO {
  static const CPUS_INVALID = 0x00000000;
  static const CPUS_LOGON = 0x00000001;
  static const CPUS_UNLOCK_WORKSTATION = 0x00000002;
  static const CPUS_CHANGE_PASSWORD = 0x00000003;
  static const CPUS_CREDUI = 0x00000004;
  static const CPUS_PLAP = 0x00000005;
}

/// {@category Enum}
class CREDENTIAL_PROVIDER_FIELD_TYPE {
  static const CPFT_INVALID = 0x00000000;
  static const CPFT_LARGE_TEXT = 0x00000001;
  static const CPFT_SMALL_TEXT = 0x00000002;
  static const CPFT_COMMAND_LINK = 0x00000003;
  static const CPFT_EDIT_TEXT = 0x00000004;
  static const CPFT_PASSWORD_TEXT = 0x00000005;
  static const CPFT_TILE_IMAGE = 0x00000006;
  static const CPFT_CHECKBOX = 0x00000007;
  static const CPFT_COMBOBOX = 0x00000008;
  static const CPFT_SUBMIT_BUTTON = 0x00000009;
}

/// {@category Enum}
class CREDENTIAL_PROVIDER_FIELD_STATE {
  static const CPFS_HIDDEN = 0x00000000;
  static const CPFS_DISPLAY_IN_SELECTED_TILE = 0x00000001;
  static const CPFS_DISPLAY_IN_DESELECTED_TILE = 0x00000002;
  static const CPFS_DISPLAY_IN_BOTH = 0x00000003;
}

/// {@category Enum}
class CREDENTIAL_PROVIDER_FIELD_INTERACTIVE_STATE {
  static const CPFIS_NONE = 0x00000000;
  static const CPFIS_READONLY = 0x00000001;
  static const CPFIS_DISABLED = 0x00000002;
  static const CPFIS_FOCUSED = 0x00000003;
}

/// {@category Enum}
class CREDENTIAL_PROVIDER_GET_SERIALIZATION_RESPONSE {
  static const CPGSR_NO_CREDENTIAL_NOT_FINISHED = 0x00000000;
  static const CPGSR_NO_CREDENTIAL_FINISHED = 0x00000001;
  static const CPGSR_RETURN_CREDENTIAL_FINISHED = 0x00000002;
  static const CPGSR_RETURN_NO_CREDENTIAL_FINISHED = 0x00000003;
}

/// {@category Enum}
class CREDENTIAL_PROVIDER_STATUS_ICON {
  static const CPSI_NONE = 0x00000000;
  static const CPSI_ERROR = 0x00000001;
  static const CPSI_WARNING = 0x00000002;
  static const CPSI_SUCCESS = 0x00000003;
}

/// {@category Enum}
class CREDENTIAL_PROVIDER_ACCOUNT_OPTIONS {
  static const CPAO_NONE = 0x00000000;
  static const CPAO_EMPTY_LOCAL = 0x00000001;
  static const CPAO_EMPTY_CONNECTED = 0x00000002;
}

/// {@category Enum}
class CREDENTIAL_PROVIDER_CREDENTIAL_FIELD_OPTIONS {
  static const CPCFO_NONE = 0x00000000;
  static const CPCFO_ENABLE_PASSWORD_REVEAL = 0x00000001;
  static const CPCFO_IS_EMAIL_ADDRESS = 0x00000002;
  static const CPCFO_ENABLE_TOUCH_KEYBOARD_AUTO_INVOKE = 0x00000004;
  static const CPCFO_NUMBERS_ONLY = 0x00000008;
  static const CPCFO_SHOW_ENGLISH_KEYBOARD = 0x00000010;
}

/// {@category Enum}
class SYNCMGR_HANDLER_CAPABILITIES {
  static const SYNCMGR_HCM_NONE = 0x00000000;
  static const SYNCMGR_HCM_PROVIDES_ICON = 0x00000001;
  static const SYNCMGR_HCM_EVENT_STORE = 0x00000002;
  static const SYNCMGR_HCM_CONFLICT_STORE = 0x00000004;
  static const SYNCMGR_HCM_SUPPORTS_CONCURRENT_SESSIONS = 0x00000010;
  static const SYNCMGR_HCM_CAN_BROWSE_CONTENT = 0x00010000;
  static const SYNCMGR_HCM_CAN_SHOW_SCHEDULE = 0x00020000;
  static const SYNCMGR_HCM_QUERY_BEFORE_ACTIVATE = 0x00100000;
  static const SYNCMGR_HCM_QUERY_BEFORE_DEACTIVATE = 0x00200000;
  static const SYNCMGR_HCM_QUERY_BEFORE_ENABLE = 0x00400000;
  static const SYNCMGR_HCM_QUERY_BEFORE_DISABLE = 0x00800000;
  static const SYNCMGR_HCM_VALID_MASK = 0x00f30017;
}

/// {@category Enum}
class SYNCMGR_HANDLER_POLICIES {
  static const SYNCMGR_HPM_NONE = 0x00000000;
  static const SYNCMGR_HPM_PREVENT_ACTIVATE = 0x00000001;
  static const SYNCMGR_HPM_PREVENT_DEACTIVATE = 0x00000002;
  static const SYNCMGR_HPM_PREVENT_ENABLE = 0x00000004;
  static const SYNCMGR_HPM_PREVENT_DISABLE = 0x00000008;
  static const SYNCMGR_HPM_PREVENT_START_SYNC = 0x00000010;
  static const SYNCMGR_HPM_PREVENT_STOP_SYNC = 0x00000020;
  static const SYNCMGR_HPM_DISABLE_ENABLE = 0x00000100;
  static const SYNCMGR_HPM_DISABLE_DISABLE = 0x00000200;
  static const SYNCMGR_HPM_DISABLE_START_SYNC = 0x00000400;
  static const SYNCMGR_HPM_DISABLE_STOP_SYNC = 0x00000800;
  static const SYNCMGR_HPM_DISABLE_BROWSE = 0x00001000;
  static const SYNCMGR_HPM_DISABLE_SCHEDULE = 0x00002000;
  static const SYNCMGR_HPM_HIDDEN_BY_DEFAULT = 0x00010000;
  static const SYNCMGR_HPM_BACKGROUND_SYNC_ONLY = 0x00000030;
  static const SYNCMGR_HPM_VALID_MASK = 0x00012f3f;
}

/// {@category Enum}
class SYNCMGR_HANDLER_TYPE {
  static const SYNCMGR_HT_UNSPECIFIED = 0x00000000;
  static const SYNCMGR_HT_APPLICATION = 0x00000001;
  static const SYNCMGR_HT_DEVICE = 0x00000002;
  static const SYNCMGR_HT_FOLDER = 0x00000003;
  static const SYNCMGR_HT_SERVICE = 0x00000004;
  static const SYNCMGR_HT_COMPUTER = 0x00000005;
  static const SYNCMGR_HT_MIN = 0x00000000;
  static const SYNCMGR_HT_MAX = 0x00000005;
}

/// {@category Enum}
class SYNCMGR_ITEM_CAPABILITIES {
  static const SYNCMGR_ICM_NONE = 0x00000000;
  static const SYNCMGR_ICM_PROVIDES_ICON = 0x00000001;
  static const SYNCMGR_ICM_EVENT_STORE = 0x00000002;
  static const SYNCMGR_ICM_CONFLICT_STORE = 0x00000004;
  static const SYNCMGR_ICM_CAN_DELETE = 0x00000010;
  static const SYNCMGR_ICM_CAN_BROWSE_CONTENT = 0x00010000;
  static const SYNCMGR_ICM_QUERY_BEFORE_ENABLE = 0x00100000;
  static const SYNCMGR_ICM_QUERY_BEFORE_DISABLE = 0x00200000;
  static const SYNCMGR_ICM_QUERY_BEFORE_DELETE = 0x00400000;
  static const SYNCMGR_ICM_VALID_MASK = 0x00710017;
}

/// {@category Enum}
class SYNCMGR_ITEM_POLICIES {
  static const SYNCMGR_IPM_NONE = 0x00000000;
  static const SYNCMGR_IPM_PREVENT_ENABLE = 0x00000001;
  static const SYNCMGR_IPM_PREVENT_DISABLE = 0x00000002;
  static const SYNCMGR_IPM_PREVENT_START_SYNC = 0x00000004;
  static const SYNCMGR_IPM_PREVENT_STOP_SYNC = 0x00000008;
  static const SYNCMGR_IPM_DISABLE_ENABLE = 0x00000010;
  static const SYNCMGR_IPM_DISABLE_DISABLE = 0x00000020;
  static const SYNCMGR_IPM_DISABLE_START_SYNC = 0x00000040;
  static const SYNCMGR_IPM_DISABLE_STOP_SYNC = 0x00000080;
  static const SYNCMGR_IPM_DISABLE_BROWSE = 0x00000100;
  static const SYNCMGR_IPM_DISABLE_DELETE = 0x00000200;
  static const SYNCMGR_IPM_HIDDEN_BY_DEFAULT = 0x00010000;
  static const SYNCMGR_IPM_VALID_MASK = 0x000102ff;
}

/// {@category Enum}
class SYNCMGR_PROGRESS_STATUS {
  static const SYNCMGR_PS_UPDATING = 0x00000001;
  static const SYNCMGR_PS_UPDATING_INDETERMINATE = 0x00000002;
  static const SYNCMGR_PS_SUCCEEDED = 0x00000003;
  static const SYNCMGR_PS_FAILED = 0x00000004;
  static const SYNCMGR_PS_CANCELED = 0x00000005;
  static const SYNCMGR_PS_DISCONNECTED = 0x00000006;
  static const SYNCMGR_PS_MAX = 0x00000006;
}

/// {@category Enum}
class SYNCMGR_CANCEL_REQUEST {
  static const SYNCMGR_CR_NONE = 0x00000000;
  static const SYNCMGR_CR_CANCEL_ITEM = 0x00000001;
  static const SYNCMGR_CR_CANCEL_ALL = 0x00000002;
  static const SYNCMGR_CR_MAX = 0x00000002;
}

/// {@category Enum}
class SYNCMGR_EVENT_LEVEL {
  static const SYNCMGR_EL_INFORMATION = 0x00000001;
  static const SYNCMGR_EL_WARNING = 0x00000002;
  static const SYNCMGR_EL_ERROR = 0x00000003;
  static const SYNCMGR_EL_MAX = 0x00000003;
}

/// {@category Enum}
class SYNCMGR_EVENT_FLAGS {
  static const SYNCMGR_EF_NONE = 0x00000000;
  static const SYNCMGR_EF_VALID = 0x00000000;
}

/// {@category Enum}
class SYNCMGR_CONTROL_FLAGS {
  static const SYNCMGR_CF_NONE = 0x00000000;
  static const SYNCMGR_CF_NOWAIT = 0x00000000;
  static const SYNCMGR_CF_WAIT = 0x00000001;
  static const SYNCMGR_CF_NOUI = 0x00000002;
  static const SYNCMGR_CF_VALID = 0x00000003;
}

/// {@category Enum}
class SYNCMGR_SYNC_CONTROL_FLAGS {
  static const SYNCMGR_SCF_NONE = 0x00000000;
  static const SYNCMGR_SCF_IGNORE_IF_ALREADY_SYNCING = 0x00000001;
  static const SYNCMGR_SCF_VALID = 0x00000001;
}

/// {@category Enum}
class SYNCMGR_UPDATE_REASON {
  static const SYNCMGR_UR_ADDED = 0x00000000;
  static const SYNCMGR_UR_CHANGED = 0x00000001;
  static const SYNCMGR_UR_REMOVED = 0x00000002;
  static const SYNCMGR_UR_MAX = 0x00000002;
}

/// {@category Enum}
class SYNCMGR_CONFLICT_ITEM_TYPE {
  static const SYNCMGR_CIT_UPDATED = 0x00000001;
  static const SYNCMGR_CIT_DELETED = 0x00000002;
}

/// {@category Enum}
class SYNCMGR_RESOLUTION_ABILITIES {
  static const SYNCMGR_RA_KEEPOTHER = 0x00000001;
  static const SYNCMGR_RA_KEEPRECENT = 0x00000002;
  static const SYNCMGR_RA_REMOVEFROMSYNCSET = 0x00000004;
  static const SYNCMGR_RA_KEEP_SINGLE = 0x00000008;
  static const SYNCMGR_RA_KEEP_MULTIPLE = 0x00000010;
  static const SYNCMGR_RA_VALID = 0x0000001f;
}

/// {@category Enum}
class SYNCMGR_RESOLUTION_FEEDBACK {
  static const SYNCMGR_RF_CONTINUE = 0x00000000;
  static const SYNCMGR_RF_REFRESH = 0x00000001;
  static const SYNCMGR_RF_CANCEL = 0x00000002;
}

/// {@category Enum}
class SYNCMGR_PRESENTER_NEXT_STEP {
  static const SYNCMGR_PNS_CONTINUE = 0x00000000;
  static const SYNCMGR_PNS_DEFAULT = 0x00000001;
  static const SYNCMGR_PNS_CANCEL = 0x00000002;
}

/// {@category Enum}
class SYNCMGR_PRESENTER_CHOICE {
  static const SYNCMGR_PC_NO_CHOICE = 0x00000000;
  static const SYNCMGR_PC_KEEP_ONE = 0x00000001;
  static const SYNCMGR_PC_KEEP_MULTIPLE = 0x00000002;
  static const SYNCMGR_PC_KEEP_RECENT = 0x00000003;
  static const SYNCMGR_PC_REMOVE_FROM_SYNC_SET = 0x00000004;
  static const SYNCMGR_PC_SKIP = 0x00000005;
}

/// {@category Enum}
class WTS_FLAGS {
  static const WTS_NONE = 0x00000000;
  static const WTS_EXTRACT = 0x00000000;
  static const WTS_INCACHEONLY = 0x00000001;
  static const WTS_FASTEXTRACT = 0x00000002;
  static const WTS_FORCEEXTRACTION = 0x00000004;
  static const WTS_SLOWRECLAIM = 0x00000008;
  static const WTS_EXTRACTDONOTCACHE = 0x00000020;
  static const WTS_SCALETOREQUESTEDSIZE = 0x00000040;
  static const WTS_SKIPFASTEXTRACT = 0x00000080;
  static const WTS_EXTRACTINPROC = 0x00000100;
  static const WTS_CROPTOSQUARE = 0x00000200;
  static const WTS_INSTANCESURROGATE = 0x00000400;
  static const WTS_REQUIRESURROGATE = 0x00000800;
  static const WTS_APPSTYLE = 0x00002000;
  static const WTS_WIDETHUMBNAILS = 0x00004000;
  static const WTS_IDEALCACHESIZEONLY = 0x00008000;
  static const WTS_SCALEUP = 0x00010000;
}

/// {@category Enum}
class WTS_CACHEFLAGS {
  static const WTS_DEFAULT = 0x00000000;
  static const WTS_LOWQUALITY = 0x00000001;
  static const WTS_CACHED = 0x00000002;
}

/// {@category Enum}
class WTS_CONTEXTFLAGS {
  static const WTSCF_DEFAULT = 0x00000000;
  static const WTSCF_APPSTYLE = 0x00000001;
  static const WTSCF_SQUARE = 0x00000002;
  static const WTSCF_WIDE = 0x00000004;
  static const WTSCF_FAST = 0x00000008;
}

/// {@category Enum}
class WTS_ALPHATYPE {
  static const WTSAT_UNKNOWN = 0x00000000;
  static const WTSAT_RGB = 0x00000001;
  static const WTSAT_ARGB = 0x00000002;
}

/// {@category Enum}
class SYNCMGRSTATUS {
  static const SYNCMGRSTATUS_STOPPED = 0x00000000;
  static const SYNCMGRSTATUS_SKIPPED = 0x00000001;
  static const SYNCMGRSTATUS_PENDING = 0x00000002;
  static const SYNCMGRSTATUS_UPDATING = 0x00000003;
  static const SYNCMGRSTATUS_SUCCEEDED = 0x00000004;
  static const SYNCMGRSTATUS_FAILED = 0x00000005;
  static const SYNCMGRSTATUS_PAUSED = 0x00000006;
  static const SYNCMGRSTATUS_RESUMING = 0x00000007;
  static const SYNCMGRSTATUS_UPDATING_INDETERMINATE = 0x00000008;
  static const SYNCMGRSTATUS_DELETED = 0x00000100;
}

/// {@category Enum}
class SYNCMGRLOGLEVEL {
  static const SYNCMGRLOGLEVEL_INFORMATION = 0x00000001;
  static const SYNCMGRLOGLEVEL_WARNING = 0x00000002;
  static const SYNCMGRLOGLEVEL_ERROR = 0x00000003;
  static const SYNCMGRLOGLEVEL_LOGLEVELMAX = 0x00000003;
}

/// {@category Enum}
class SYNCMGRERRORFLAGS {
  static const SYNCMGRERRORFLAG_ENABLEJUMPTEXT = 0x00000001;
}

/// {@category Enum}
class SYNCMGRITEMFLAGS {
  static const SYNCMGRITEM_HASPROPERTIES = 0x00000001;
  static const SYNCMGRITEM_TEMPORARY = 0x00000002;
  static const SYNCMGRITEM_ROAMINGUSER = 0x00000004;
  static const SYNCMGRITEM_LASTUPDATETIME = 0x00000008;
  static const SYNCMGRITEM_MAYDELETEITEM = 0x00000010;
  static const SYNCMGRITEM_HIDDEN = 0x00000020;
}

/// {@category Enum}
class SYNCMGRFLAG {
  static const SYNCMGRFLAG_CONNECT = 0x00000001;
  static const SYNCMGRFLAG_PENDINGDISCONNECT = 0x00000002;
  static const SYNCMGRFLAG_MANUAL = 0x00000003;
  static const SYNCMGRFLAG_IDLE = 0x00000004;
  static const SYNCMGRFLAG_INVOKE = 0x00000005;
  static const SYNCMGRFLAG_SCHEDULED = 0x00000006;
  static const SYNCMGRFLAG_EVENTMASK = 0x000000ff;
  static const SYNCMGRFLAG_SETTINGS = 0x00000100;
  static const SYNCMGRFLAG_MAYBOTHERUSER = 0x00000200;
}

/// {@category Enum}
class SYNCMGRHANDLERFLAGS {
  static const SYNCMGRHANDLER_HASPROPERTIES = 0x00000001;
  static const SYNCMGRHANDLER_MAYESTABLISHCONNECTION = 0x00000002;
  static const SYNCMGRHANDLER_ALWAYSLISTHANDLER = 0x00000004;
  static const SYNCMGRHANDLER_HIDDEN = 0x00000008;
}

/// {@category Enum}
class SYNCMGRITEMSTATE {
  static const SYNCMGRITEMSTATE_UNCHECKED = 0x00000000;
  static const SYNCMGRITEMSTATE_CHECKED = 0x00000001;
}

/// {@category Enum}
class SYNCMGRINVOKEFLAGS {
  static const SYNCMGRINVOKE_STARTSYNC = 0x00000002;
  static const SYNCMGRINVOKE_MINIMIZED = 0x00000004;
}

/// {@category Enum}
class SYNCMGRREGISTERFLAGS {
  static const SYNCMGRREGISTERFLAG_CONNECT = 0x00000001;
  static const SYNCMGRREGISTERFLAG_PENDINGDISCONNECT = 0x00000002;
  static const SYNCMGRREGISTERFLAG_IDLE = 0x00000004;
}

/// {@category Enum}
class ThumbnailStreamCacheOptions {
  static const ExtractIfNotCached = 0x00000000;
  static const ReturnOnlyIfCached = 0x00000001;
  static const ResizeThumbnail = 0x00000002;
  static const AllowSmallerSize = 0x00000004;
}

/// {@category Enum}
class tagTLENUMF {
  static const TLEF_RELATIVE_INCLUDE_CURRENT = 0x00000001;
  static const TLEF_RELATIVE_BACK = 0x00000010;
  static const TLEF_RELATIVE_FORE = 0x00000020;
  static const TLEF_INCLUDE_UNINVOKEABLE = 0x00000040;
  static const TLEF_ABSOLUTE = 0x00000031;
  static const TLEF_EXCLUDE_SUBFRAME_ENTRIES = 0x00000080;
  static const TLEF_EXCLUDE_ABOUT_PAGES = 0x00000100;
}

/// {@category Enum}
class HLSR_NOREDEF10 {
  static const HLSR_HOME = 0x00000000;
  static const HLSR_SEARCHPAGE = 0x00000001;
  static const HLSR_HISTORYFOLDER = 0x00000002;
}

/// {@category Enum}
class HLSHORTCUTF__NOREDEF10 {
  static const HLSHORTCUTF_DEFAULT = 0x00000000;
  static const HLSHORTCUTF_DONTACTUALLYCREATE = 0x00000001;
  static const HLSHORTCUTF_USEFILENAMEFROMFRIENDLYNAME = 0x00000002;
  static const HLSHORTCUTF_USEUNIQUEFILENAME = 0x00000004;
  static const HLSHORTCUTF_MAYUSEEXISTINGSHORTCUT = 0x00000008;
}

/// {@category Enum}
class HLTRANSLATEF_NOREDEF10 {
  static const HLTRANSLATEF_DEFAULT = 0x00000000;
  static const HLTRANSLATEF_DONTAPPLYDEFAULTPREFIX = 0x00000001;
}

/// {@category Enum}
class MIDL_IHlink_0001 {
  static const HLNF_INTERNALJUMP = 0x00000001;
  static const HLNF_OPENINNEWWINDOW = 0x00000002;
  static const HLNF_NAVIGATINGBACK = 0x00000004;
  static const HLNF_NAVIGATINGFORWARD = 0x00000008;
  static const HLNF_NAVIGATINGTOSTACKITEM = 0x00000010;
  static const HLNF_CREATENOHISTORY = 0x00000020;
}

/// {@category Enum}
class MIDL_IHlink_0002 {
  static const HLINKGETREF_DEFAULT = 0x00000000;
  static const HLINKGETREF_ABSOLUTE = 0x00000001;
  static const HLINKGETREF_RELATIVE = 0x00000002;
}

/// {@category Enum}
class MIDL_IHlink_0003 {
  static const HLFNAMEF_DEFAULT = 0x00000000;
  static const HLFNAMEF_TRYCACHE = 0x00000001;
  static const HLFNAMEF_TRYPRETTYTARGET = 0x00000002;
  static const HLFNAMEF_TRYFULLTARGET = 0x00000004;
  static const HLFNAMEF_TRYWIN95SHORTCUT = 0x00000008;
}

/// {@category Enum}
class MIDL_IHlink_0004 {
  static const HLINKMISC_RELATIVE = 0x00000001;
}

/// {@category Enum}
class MIDL_IHlink_0005 {
  static const HLINKSETF_TARGET = 0x00000001;
  static const HLINKSETF_LOCATION = 0x00000002;
}

/// {@category Enum}
class MIDL_IHlinkSite_0001 {
  static const HLINKWHICHMK_CONTAINER = 0x00000001;
  static const HLINKWHICHMK_BASE = 0x00000002;
}

/// {@category Enum}
class MIDL_IHlinkBrowseContext_0001 {
  static const HLTB_DOCKEDLEFT = 0x00000000;
  static const HLTB_DOCKEDTOP = 0x00000001;
  static const HLTB_DOCKEDRIGHT = 0x00000002;
  static const HLTB_DOCKEDBOTTOM = 0x00000003;
  static const HLTB_FLOATING = 0x00000004;
}

/// {@category Enum}
class MIDL_IHlinkBrowseContext_0002 {
  static const HLBWIF_HASFRAMEWNDINFO = 0x00000001;
  static const HLBWIF_HASDOCWNDINFO = 0x00000002;
  static const HLBWIF_FRAMEWNDMAXIMIZED = 0x00000004;
  static const HLBWIF_DOCWNDMAXIMIZED = 0x00000008;
  static const HLBWIF_HASWEBTOOLBARINFO = 0x00000010;
  static const HLBWIF_WEBTOOLBARHIDDEN = 0x00000020;
}

/// {@category Enum}
class MIDL_IHlinkBrowseContext_0003 {
  static const HLID_INVALID = 0x00000000;
  static const HLID_PREVIOUS = 0xffffffff;
  static const HLID_NEXT = 0xfffffffe;
  static const HLID_CURRENT = 0xfffffffd;
  static const HLID_STACKBOTTOM = 0xfffffffc;
  static const HLID_STACKTOP = 0xfffffffb;
}

/// {@category Enum}
class MIDL_IHlinkBrowseContext_0004 {
  static const HLQF_ISVALID = 0x00000001;
  static const HLQF_ISCURRENT = 0x00000002;
}

/// {@category Enum}
class BNSTATE {
  static const BNS_NORMAL = 0x00000000;
  static const BNS_BEGIN_NAVIGATE = 0x00000001;
  static const BNS_NAVIGATE = 0x00000002;
}

/// {@category Enum}
class SHELLBROWSERSHOWCONTROL {
  static const SBSC_HIDE = 0x00000000;
  static const SBSC_SHOW = 0x00000001;
  static const SBSC_TOGGLE = 0x00000002;
  static const SBSC_QUERY = 0x00000003;
}

/// {@category Enum}
class SECURELOCKCODE {
  static const SECURELOCK_NOCHANGE = 0xffffffff;
  static const SECURELOCK_SET_UNSECURE = 0x00000000;
  static const SECURELOCK_SET_MIXED = 0x00000001;
  static const SECURELOCK_SET_SECUREUNKNOWNBIT = 0x00000002;
  static const SECURELOCK_SET_SECURE40BIT = 0x00000003;
  static const SECURELOCK_SET_SECURE56BIT = 0x00000004;
  static const SECURELOCK_SET_FORTEZZA = 0x00000005;
  static const SECURELOCK_SET_SECURE128BIT = 0x00000006;
  static const SECURELOCK_FIRSTSUGGEST = 0x00000007;
  static const SECURELOCK_SUGGEST_UNSECURE = 0x00000007;
  static const SECURELOCK_SUGGEST_MIXED = 0x00000008;
  static const SECURELOCK_SUGGEST_SECUREUNKNOWNBIT = 0x00000009;
  static const SECURELOCK_SUGGEST_SECURE40BIT = 0x0000000a;
  static const SECURELOCK_SUGGEST_SECURE56BIT = 0x0000000b;
  static const SECURELOCK_SUGGEST_FORTEZZA = 0x0000000c;
  static const SECURELOCK_SUGGEST_SECURE128BIT = 0x0000000d;
}

/// {@category Enum}
class IEPDNFLAGS {
  static const IEPDN_BINDINGUI = 0x00000001;
}

/// {@category Enum}
class TI_FLAGS {
  static const TI_BITMAP = 0x00000001;
  static const TI_JPEG = 0x00000002;
}

/// {@category Enum}
class PATHCCH_OPTIONS {
  static const PATHCCH_NONE = 0x00000000;
  static const PATHCCH_ALLOW_LONG_PATHS = 0x00000001;
  static const PATHCCH_FORCE_ENABLE_LONG_NAME_PROCESS = 0x00000002;
  static const PATHCCH_FORCE_DISABLE_LONG_NAME_PROCESS = 0x00000004;
  static const PATHCCH_DO_NOT_NORMALIZE_SEGMENTS = 0x00000008;
  static const PATHCCH_ENSURE_IS_EXTENDED_LENGTH_PATH = 0x00000010;
  static const PATHCCH_ENSURE_TRAILING_SLASH = 0x00000020;
}

/// {@category Enum}
class iurl_seturl_flags {
  static const IURL_SETURL_FL_GUESS_PROTOCOL = 0x00000001;
  static const IURL_SETURL_FL_USE_DEFAULT_PROTOCOL = 0x00000002;
}

/// {@category Enum}
class iurl_invokecommand_flags {
  static const IURL_INVOKECOMMAND_FL_ALLOW_UI = 0x00000001;
  static const IURL_INVOKECOMMAND_FL_USE_DEFAULT_VERB = 0x00000002;
  static const IURL_INVOKECOMMAND_FL_DDEWAIT = 0x00000004;
  static const IURL_INVOKECOMMAND_FL_ASYNCOK = 0x00000008;
  static const IURL_INVOKECOMMAND_FL_LOG_USAGE = 0x00000010;
}

/// {@category Enum}
class translateurl_in_flags {
  static const TRANSLATEURL_FL_GUESS_PROTOCOL = 0x00000001;
  static const TRANSLATEURL_FL_USE_DEFAULT_PROTOCOL = 0x00000002;
}

/// {@category Enum}
class urlassociationdialog_in_flags {
  static const URLASSOCDLG_FL_USE_DEFAULT_NAME = 0x00000001;
  static const URLASSOCDLG_FL_REGISTER_ASSOC = 0x00000002;
}

/// {@category Enum}
class mimeassociationdialog_in_flags {
  static const MIMEASSOCDLG_FL_REGISTER_ASSOC = 0x00000001;
}

