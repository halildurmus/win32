/// {@category Enum}
class ANIMATE_WINDOW_FLAGS {
  static const AW_ACTIVATE = 0x00020000;
  static const AW_BLEND = 0x00080000;
  static const AW_CENTER = 0x00000010;
  static const AW_HIDE = 0x00010000;
  static const AW_HOR_POSITIVE = 0x00000001;
  static const AW_HOR_NEGATIVE = 0x00000002;
  static const AW_SLIDE = 0x00040000;
  static const AW_VER_POSITIVE = 0x00000004;
  static const AW_VER_NEGATIVE = 0x00000008;
}

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
class CASCADE_WINDOWS_HOW {
  static const MDITILE_SKIPDISABLED = 0x00000002;
  static const MDITILE_ZORDER = 0x00000004;
}

/// {@category Enum}
class CHANGE_WINDOW_MESSAGE_FILTER_FLAGS {
  static const MSGFLT_ADD = 0x00000001;
  static const MSGFLT_REMOVE = 0x00000002;
}

/// {@category Enum}
class CHOOSEFONT_FLAGS {
  static const CF_APPLY = 0x00000200;
  static const CF_ANSIONLY = 0x00000400;
  static const CF_BOTH = 0x00000003;
  static const CF_EFFECTS = 0x00000100;
  static const CF_ENABLEHOOK = 0x00000008;
  static const CF_ENABLETEMPLATE = 0x00000010;
  static const CF_ENABLETEMPLATEHANDLE = 0x00000020;
  static const CF_FIXEDPITCHONLY = 0x00004000;
  static const CF_FORCEFONTEXIST = 0x00010000;
  static const CF_INACTIVEFONTS = 0x02000000;
  static const CF_INITTOLOGFONTSTRUCT = 0x00000040;
  static const CF_LIMITSIZE = 0x00002000;
  static const CF_NOOEMFONTS = 0x00000800;
  static const CF_NOFACESEL = 0x00080000;
  static const CF_NOSCRIPTSEL = 0x00800000;
  static const CF_NOSIMULATIONS = 0x00001000;
  static const CF_NOSIZESEL = 0x00200000;
  static const CF_NOSTYLESEL = 0x00100000;
  static const CF_NOVECTORFONTS = 0x00000800;
  static const CF_NOVERTFONTS = 0x01000000;
  static const CF_PRINTERFONTS = 0x00000002;
  static const CF_SCALABLEONLY = 0x00020000;
  static const CF_SCREENFONTS = 0x00000001;
  static const CF_SCRIPTSONLY = 0x00000400;
  static const CF_SELECTSCRIPT = 0x00400000;
  static const CF_SHOWHELP = 0x00000004;
  static const CF_TTONLY = 0x00040000;
  static const CF_USESTYLE = 0x00000080;
  static const CF_WYSIWYG = 0x00008000;
}

/// {@category Enum}
class CHOOSEFONT_FONT_TYPE {
  static const BOLD_FONTTYPE = 0x00000100;
  static const ITALIC_FONTTYPE = 0x00000200;
  static const PRINTER_FONTTYPE = 0x00004000;
  static const REGULAR_FONTTYPE = 0x00000400;
  static const SCREEN_FONTTYPE = 0x00002000;
  static const SIMULATED_FONTTYPE = 0x00008000;
}

/// {@category Enum}
class CURSORINFO_FLAGS {
  static const CURSOR_SHOWING = 0x00000001;
  static const CURSOR_SUPPRESSED = 0x00000002;
}

/// {@category Enum}
class CWP_FLAGS {
  static const CWP_ALL = 0x00000000;
  static const CWP_SKIPINVISIBLE = 0x00000001;
  static const CWP_SKIPDISABLED = 0x00000002;
  static const CWP_SKIPTRANSPARENT = 0x00000004;
}

/// {@category Enum}
class DI_FLAGS {
  static const DI_MASK = 0x00000001;
  static const DI_IMAGE = 0x00000002;
  static const DI_NORMAL = 0x00000003;
  static const DI_COMPAT = 0x00000004;
  static const DI_DEFAULTSIZE = 0x00000008;
  static const DI_NOMIRROR = 0x00000010;
}

/// {@category Enum}
class EDIT_CONTROL_FEATURE {
  static const EDIT_CONTROL_FEATURE_ENTERPRISE_DATA_PROTECTION_PASTE_SUPPORT =
      0x00000000;
  static const EDIT_CONTROL_FEATURE_PASTE_NOTIFICATIONS = 0x00000001;
}

/// {@category Enum}
class FINDREPLACE_FLAGS {
  static const FR_DIALOGTERM = 0x00000040;
  static const FR_DOWN = 0x00000001;
  static const FR_ENABLEHOOK = 0x00000100;
  static const FR_ENABLETEMPLATE = 0x00000200;
  static const FR_ENABLETEMPLATEHANDLE = 0x00002000;
  static const FR_FINDNEXT = 0x00000008;
  static const FR_HIDEUPDOWN = 0x00004000;
  static const FR_HIDEMATCHCASE = 0x00008000;
  static const FR_HIDEWHOLEWORD = 0x00010000;
  static const FR_MATCHCASE = 0x00000004;
  static const FR_NOMATCHCASE = 0x00000800;
  static const FR_NOUPDOWN = 0x00000400;
  static const FR_NOWHOLEWORD = 0x00001000;
  static const FR_REPLACE = 0x00000010;
  static const FR_REPLACEALL = 0x00000020;
  static const FR_SHOWHELP = 0x00000080;
  static const FR_WHOLEWORD = 0x00000002;
}

/// {@category Enum}
class FOREGROUND_WINDOW_LOCK_CODE {
  static const LSFW_LOCK = 0x00000001;
  static const LSFW_UNLOCK = 0x00000002;
}

/// {@category Enum}
class GDI_IMAGE_TYPE {
  static const IMAGE_BITMAP = 0x00000000;
  static const IMAGE_CURSOR = 0x00000002;
  static const IMAGE_ICON = 0x00000001;
}

/// {@category Enum}
class GET_ANCESTOR_FLAGS {
  static const GA_PARENT = 0x00000001;
  static const GA_ROOT = 0x00000002;
  static const GA_ROOTOWNER = 0x00000003;
}

/// {@category Enum}
class GET_CLASS_LONG_INDEX {
  static const GCW_ATOM = 0xffffffe0;
  static const GCL_CBCLSEXTRA = 0xffffffec;
  static const GCL_CBWNDEXTRA = 0xffffffee;
  static const GCL_HBRBACKGROUND = 0xfffffff6;
  static const GCL_HCURSOR = 0xfffffff4;
  static const GCL_HICON = 0xfffffff2;
  static const GCL_HICONSM = 0xffffffde;
  static const GCL_HMODULE = 0xfffffff0;
  static const GCL_MENUNAME = 0xfffffff8;
  static const GCL_STYLE = 0xffffffe6;
  static const GCL_WNDPROC = 0xffffffe8;
  static const GCLP_HBRBACKGROUND = 0xfffffff6;
  static const GCLP_HCURSOR = 0xfffffff4;
  static const GCLP_HICON = 0xfffffff2;
  static const GCLP_HICONSM = 0xffffffde;
  static const GCLP_HMODULE = 0xfffffff0;
  static const GCLP_MENUNAME = 0xfffffff8;
  static const GCLP_WNDPROC = 0xffffffe8;
}

/// {@category Enum}
class GET_MENU_DEFAULT_ITEM_FLAGS {
  static const GMDI_GOINTOPOPUPS = 0x00000002;
  static const GMDI_USEDISABLED = 0x00000001;
}

/// {@category Enum}
class GET_WINDOW_CMD {
  static const GW_CHILD = 0x00000005;
  static const GW_ENABLEDPOPUP = 0x00000006;
  static const GW_HWNDFIRST = 0x00000000;
  static const GW_HWNDLAST = 0x00000001;
  static const GW_HWNDNEXT = 0x00000002;
  static const GW_HWNDPREV = 0x00000003;
  static const GW_OWNER = 0x00000004;
}

/// {@category Enum}
class GUITHREADINFO_FLAGS {
  static const GUI_CARETBLINKING = 0x00000001;
  static const GUI_INMENUMODE = 0x00000004;
  static const GUI_INMOVESIZE = 0x00000002;
  static const GUI_POPUPMENUMODE = 0x00000010;
  static const GUI_SYSTEMMENUMODE = 0x00000008;
}

/// {@category Enum}
class HANDEDNESS {
  static const HANDEDNESS_LEFT = 0x00000000;
  static const HANDEDNESS_RIGHT = 0x00000001;
}

/// {@category Enum}
class LAYERED_WINDOW_ATTRIBUTES_FLAGS {
  static const LWA_ALPHA = 0x00000002;
  static const LWA_COLORKEY = 0x00000001;
}

/// {@category Enum}
class MENUGETOBJECTINFO_FLAGS {
  static const MNGOF_BOTTOMGAP = 0x00000002;
  static const MNGOF_TOPGAP = 0x00000001;
}

/// {@category Enum}
class MENUINFO_MASK {
  static const MIM_APPLYTOSUBMENUS = 0x80000000;
  static const MIM_BACKGROUND = 0x00000002;
  static const MIM_HELPID = 0x00000004;
  static const MIM_MAXHEIGHT = 0x00000001;
  static const MIM_MENUDATA = 0x00000008;
  static const MIM_STYLE = 0x00000010;
}

/// {@category Enum}
class MENUINFO_STYLE {
  static const MNS_AUTODISMISS = 0x10000000;
  static const MNS_CHECKORBMP = 0x04000000;
  static const MNS_DRAGDROP = 0x20000000;
  static const MNS_MODELESS = 0x40000000;
  static const MNS_NOCHECK = 0x80000000;
  static const MNS_NOTIFYBYPOS = 0x08000000;
}

/// {@category Enum}
class MENU_ITEM_FLAGS {
  static const MF_BYCOMMAND = 0x00000000;
  static const MF_BYPOSITION = 0x00000400;
  static const MF_BITMAP = 0x00000004;
  static const MF_CHECKED = 0x00000008;
  static const MF_DISABLED = 0x00000002;
  static const MF_ENABLED = 0x00000000;
  static const MF_GRAYED = 0x00000001;
  static const MF_MENUBARBREAK = 0x00000020;
  static const MF_MENUBREAK = 0x00000040;
  static const MF_OWNERDRAW = 0x00000100;
  static const MF_POPUP = 0x00000010;
  static const MF_SEPARATOR = 0x00000800;
  static const MF_STRING = 0x00000000;
  static const MF_UNCHECKED = 0x00000000;
  static const MF_INSERT = 0x00000000;
  static const MF_CHANGE = 0x00000080;
  static const MF_APPEND = 0x00000100;
  static const MF_DELETE = 0x00000200;
  static const MF_REMOVE = 0x00001000;
  static const MF_USECHECKBITMAPS = 0x00000200;
  static const MF_UNHILITE = 0x00000000;
  static const MF_HILITE = 0x00000080;
  static const MF_DEFAULT = 0x00001000;
  static const MF_SYSMENU = 0x00002000;
  static const MF_HELP = 0x00004000;
  static const MF_RIGHTJUSTIFY = 0x00004000;
  static const MF_MOUSESELECT = 0x00008000;
  static const MF_END = 0x00000080;
}

/// {@category Enum}
class MENU_ITEM_MASK {
  static const MIIM_BITMAP = 0x00000080;
  static const MIIM_CHECKMARKS = 0x00000008;
  static const MIIM_DATA = 0x00000020;
  static const MIIM_FTYPE = 0x00000100;
  static const MIIM_ID = 0x00000002;
  static const MIIM_STATE = 0x00000001;
  static const MIIM_STRING = 0x00000040;
  static const MIIM_SUBMENU = 0x00000004;
  static const MIIM_TYPE = 0x00000010;
}

/// {@category Enum}
class MENU_ITEM_STATE {
  static const MFS_GRAYED = 0x00000003;
  static const MFS_DISABLED = 0x00000003;
  static const MFS_CHECKED = 0x00000008;
  static const MFS_HILITE = 0x00000080;
  static const MFS_ENABLED = 0x00000000;
  static const MFS_UNCHECKED = 0x00000000;
  static const MFS_UNHILITE = 0x00000000;
  static const MFS_DEFAULT = 0x00001000;
}

/// {@category Enum}
class MENU_ITEM_TYPE {
  static const MFT_BITMAP = 0x00000004;
  static const MFT_MENUBARBREAK = 0x00000020;
  static const MFT_MENUBREAK = 0x00000040;
  static const MFT_OWNERDRAW = 0x00000100;
  static const MFT_RADIOCHECK = 0x00000200;
  static const MFT_RIGHTJUSTIFY = 0x00004000;
  static const MFT_RIGHTORDER = 0x00002000;
  static const MFT_SEPARATOR = 0x00000800;
  static const MFT_STRING = 0x00000000;
}

/// {@category Enum}
class MESSAGEBOX_RESULT {
  static const IDOK = 0x00000001;
  static const IDCANCEL = 0x00000002;
  static const IDABORT = 0x00000003;
  static const IDRETRY = 0x00000004;
  static const IDIGNORE = 0x00000005;
  static const IDYES = 0x00000006;
  static const IDNO = 0x00000007;
  static const IDCLOSE = 0x00000008;
  static const IDHELP = 0x00000009;
  static const IDTRYAGAIN = 0x0000000a;
  static const IDCONTINUE = 0x0000000b;
  static const IDASYNC = 0x00007d01;
  static const IDTIMEOUT = 0x00007d00;
}

/// {@category Enum}
class MESSAGEBOX_STYLE {
  static const MB_ABORTRETRYIGNORE = 0x00000002;
  static const MB_CANCELTRYCONTINUE = 0x00000006;
  static const MB_HELP = 0x00004000;
  static const MB_OK = 0x00000000;
  static const MB_OKCANCEL = 0x00000001;
  static const MB_RETRYCANCEL = 0x00000005;
  static const MB_YESNO = 0x00000004;
  static const MB_YESNOCANCEL = 0x00000003;
  static const MB_ICONHAND = 0x00000010;
  static const MB_ICONQUESTION = 0x00000020;
  static const MB_ICONEXCLAMATION = 0x00000030;
  static const MB_ICONASTERISK = 0x00000040;
  static const MB_USERICON = 0x00000080;
  static const MB_ICONWARNING = 0x00000030;
  static const MB_ICONERROR = 0x00000010;
  static const MB_ICONINFORMATION = 0x00000040;
  static const MB_ICONSTOP = 0x00000010;
  static const MB_DEFBUTTON1 = 0x00000000;
  static const MB_DEFBUTTON2 = 0x00000100;
  static const MB_DEFBUTTON3 = 0x00000200;
  static const MB_DEFBUTTON4 = 0x00000300;
  static const MB_APPLMODAL = 0x00000000;
  static const MB_SYSTEMMODAL = 0x00001000;
  static const MB_TASKMODAL = 0x00002000;
  static const MB_NOFOCUS = 0x00008000;
  static const MB_SETFOREGROUND = 0x00010000;
  static const MB_DEFAULT_DESKTOP_ONLY = 0x00020000;
  static const MB_TOPMOST = 0x00040000;
  static const MB_RIGHT = 0x00080000;
  static const MB_RTLREADING = 0x00100000;
  static const MB_SERVICE_NOTIFICATION = 0x00200000;
  static const MB_SERVICE_NOTIFICATION_NT3X = 0x00040000;
  static const MB_TYPEMASK = 0x0000000f;
  static const MB_ICONMASK = 0x000000f0;
  static const MB_DEFMASK = 0x00000f00;
  static const MB_MODEMASK = 0x00003000;
  static const MB_MISCMASK = 0x0000c000;
}

/// {@category Enum}
class MINIMIZEDMETRICS_ARRANGE {
  static const ARW_BOTTOMLEFT = 0x00000000;
  static const ARW_BOTTOMRIGHT = 0x00000001;
  static const ARW_TOPLEFT = 0x00000002;
  static const ARW_TOPRIGHT = 0x00000003;
}

/// {@category Enum}
class MOUSEHOOKSTRUCTEX_MOUSE_DATA {
  static const XBUTTON1 = 0x00000001;
  static const XBUTTON2 = 0x00000002;
}

/// {@category Enum}
class MSGFLTINFO_STATUS {
  static const MSGFLTINFO_NONE = 0x00000000;
  static const MSGFLTINFO_ALLOWED_HIGHER = 0x00000003;
  static const MSGFLTINFO_ALREADYALLOWED_FORWND = 0x00000001;
  static const MSGFLTINFO_ALREADYDISALLOWED_FORWND = 0x00000002;
}

/// {@category Enum}
class MrmDumpType {
  static const MrmDumpType_Basic = 0x00000000;
  static const MrmDumpType_Detailed = 0x00000001;
  static const MrmDumpType_Schema = 0x00000002;
}

/// {@category Enum}
class MrmPackagingMode {
  static const MrmPackagingModeStandaloneFile = 0x00000000;
  static const MrmPackagingModeAutoSplit = 0x00000001;
  static const MrmPackagingModeResourcePack = 0x00000002;
}

/// {@category Enum}
class MrmPackagingOptions {
  static const MrmPackagingOptionsNone = 0x00000000;
  static const MrmPackagingOptionsOmitSchemaFromResourcePacks = 0x00000001;
  static const MrmPackagingOptionsSplitLanguageVariants = 0x00000002;
}

/// {@category Enum}
class MrmPlatformVersion {
  static const MrmPlatformVersion_Default = 0x00000000;
  static const MrmPlatformVersion_Windows10_0_0_0 = 0x010a0000;
  static const MrmPlatformVersion_Windows10_0_0_5 = 0x010a0005;
}

/// {@category Enum}
class MrmResourceIndexerMessageSeverity {
  static const MrmResourceIndexerMessageSeverityVerbose = 0x00000000;
  static const MrmResourceIndexerMessageSeverityInfo = 0x00000001;
  static const MrmResourceIndexerMessageSeverityWarning = 0x00000002;
  static const MrmResourceIndexerMessageSeverityError = 0x00000003;
}

/// {@category Enum}
class OPEN_FILENAME_FLAGS {
  static const OFN_READONLY = 0x00000001;
  static const OFN_OVERWRITEPROMPT = 0x00000002;
  static const OFN_HIDEREADONLY = 0x00000004;
  static const OFN_NOCHANGEDIR = 0x00000008;
  static const OFN_SHOWHELP = 0x00000010;
  static const OFN_ENABLEHOOK = 0x00000020;
  static const OFN_ENABLETEMPLATE = 0x00000040;
  static const OFN_ENABLETEMPLATEHANDLE = 0x00000080;
  static const OFN_NOVALIDATE = 0x00000100;
  static const OFN_ALLOWMULTISELECT = 0x00000200;
  static const OFN_EXTENSIONDIFFERENT = 0x00000400;
  static const OFN_PATHMUSTEXIST = 0x00000800;
  static const OFN_FILEMUSTEXIST = 0x00001000;
  static const OFN_CREATEPROMPT = 0x00002000;
  static const OFN_SHAREAWARE = 0x00004000;
  static const OFN_NOREADONLYRETURN = 0x00008000;
  static const OFN_NOTESTFILECREATE = 0x00010000;
  static const OFN_NONETWORKBUTTON = 0x00020000;
  static const OFN_NOLONGNAMES = 0x00040000;
  static const OFN_EXPLORER = 0x00080000;
  static const OFN_NODEREFERENCELINKS = 0x00100000;
  static const OFN_LONGNAMES = 0x00200000;
  static const OFN_ENABLEINCLUDENOTIFY = 0x00400000;
  static const OFN_ENABLESIZING = 0x00800000;
  static const OFN_DONTADDTORECENT = 0x02000000;
  static const OFN_FORCESHOWHIDDEN = 0x10000000;
}

/// {@category Enum}
class OPEN_FILENAME_FLAGS_EX {
  static const OFN_EX_NONE = 0x00000000;
  static const OFN_EX_NOPLACESBAR = 0x00000001;
}

/// {@category Enum}
class PAGESETUPDLG_FLAGS {
  static const PSD_DEFAULTMINMARGINS = 0x00000000;
  static const PSD_DISABLEMARGINS = 0x00000010;
  static const PSD_DISABLEORIENTATION = 0x00000100;
  static const PSD_DISABLEPAGEPAINTING = 0x00080000;
  static const PSD_DISABLEPAPER = 0x00000200;
  static const PSD_DISABLEPRINTER = 0x00000020;
  static const PSD_ENABLEPAGEPAINTHOOK = 0x00040000;
  static const PSD_ENABLEPAGESETUPHOOK = 0x00002000;
  static const PSD_ENABLEPAGESETUPTEMPLATE = 0x00008000;
  static const PSD_ENABLEPAGESETUPTEMPLATEHANDLE = 0x00020000;
  static const PSD_INHUNDREDTHSOFMILLIMETERS = 0x00000008;
  static const PSD_INTHOUSANDTHSOFINCHES = 0x00000004;
  static const PSD_INWININIINTLMEASURE = 0x00000000;
  static const PSD_MARGINS = 0x00000002;
  static const PSD_MINMARGINS = 0x00000001;
  static const PSD_NONETWORKBUTTON = 0x00200000;
  static const PSD_NOWARNING = 0x00000080;
  static const PSD_RETURNDEFAULT = 0x00000400;
  static const PSD_SHOWHELP = 0x00000800;
}

/// {@category Enum}
class PEEK_MESSAGE_REMOVE_TYPE {
  static const PM_NOREMOVE = 0x00000000;
  static const PM_REMOVE = 0x00000001;
  static const PM_NOYIELD = 0x00000002;
  static const PM_QS_INPUT = 0x04070000;
  static const PM_QS_POSTMESSAGE = 0x00980000;
  static const PM_QS_PAINT = 0x00200000;
  static const PM_QS_SENDMESSAGE = 0x00400000;
}

/// {@category Enum}
class POINTER_INPUT_TYPE {
  static const PT_POINTER = 0x00000001;
  static const PT_TOUCH = 0x00000002;
  static const PT_PEN = 0x00000003;
  static const PT_MOUSE = 0x00000004;
  static const PT_TOUCHPAD = 0x00000005;
}

/// {@category Enum}
class PRINTDLGEX_FLAGS {
  static const PD_ALLPAGES = 0x00000000;
  static const PD_COLLATE = 0x00000010;
  static const PD_CURRENTPAGE = 0x00400000;
  static const PD_DISABLEPRINTTOFILE = 0x00080000;
  static const PD_ENABLEPRINTTEMPLATE = 0x00004000;
  static const PD_ENABLEPRINTTEMPLATEHANDLE = 0x00010000;
  static const PD_EXCLUSIONFLAGS = 0x01000000;
  static const PD_HIDEPRINTTOFILE = 0x00100000;
  static const PD_NOCURRENTPAGE = 0x00800000;
  static const PD_NOPAGENUMS = 0x00000008;
  static const PD_NOSELECTION = 0x00000004;
  static const PD_NOWARNING = 0x00000080;
  static const PD_PAGENUMS = 0x00000002;
  static const PD_PRINTTOFILE = 0x00000020;
  static const PD_RETURNDC = 0x00000100;
  static const PD_RETURNDEFAULT = 0x00000400;
  static const PD_RETURNIC = 0x00000200;
  static const PD_SELECTION = 0x00000001;
  static const PD_USEDEVMODECOPIES = 0x00040000;
  static const PD_USEDEVMODECOPIESANDCOLLATE = 0x00040000;
  static const PD_USELARGETEMPLATE = 0x10000000;
  static const PD_ENABLEPRINTHOOK = 0x00001000;
  static const PD_ENABLESETUPHOOK = 0x00002000;
  static const PD_ENABLESETUPTEMPLATE = 0x00008000;
  static const PD_ENABLESETUPTEMPLATEHANDLE = 0x00020000;
  static const PD_NONETWORKBUTTON = 0x00200000;
  static const PD_PRINTSETUP = 0x00000040;
  static const PD_SHOWHELP = 0x00000800;
}

/// {@category Enum}
class QUEUE_STATUS_FLAGS {
  static const QS_ALLEVENTS = 0x000004bf;
  static const QS_ALLINPUT = 0x000004ff;
  static const QS_ALLPOSTMESSAGE = 0x00000100;
  static const QS_HOTKEY = 0x00000080;
  static const QS_INPUT = 0x00000407;
  static const QS_KEY = 0x00000001;
  static const QS_MOUSE = 0x00000006;
  static const QS_MOUSEBUTTON = 0x00000004;
  static const QS_MOUSEMOVE = 0x00000002;
  static const QS_PAINT = 0x00000020;
  static const QS_POSTMESSAGE = 0x00000008;
  static const QS_RAWINPUT = 0x00000400;
  static const QS_SENDMESSAGE = 0x00000040;
  static const QS_TIMER = 0x00000010;
}

/// {@category Enum}
class SEND_MESSAGE_TIMEOUT_FLAGS {
  static const SMTO_ABORTIFHUNG = 0x00000002;
  static const SMTO_BLOCK = 0x00000001;
  static const SMTO_NORMAL = 0x00000000;
  static const SMTO_NOTIMEOUTIFNOTHUNG = 0x00000008;
  static const SMTO_ERRORONEXIT = 0x00000020;
}

/// {@category Enum}
class SET_WINDOW_POS_FLAGS {
  static const SWP_ASYNCWINDOWPOS = 0x00004000;
  static const SWP_DEFERERASE = 0x00002000;
  static const SWP_DRAWFRAME = 0x00000020;
  static const SWP_FRAMECHANGED = 0x00000020;
  static const SWP_HIDEWINDOW = 0x00000080;
  static const SWP_NOACTIVATE = 0x00000010;
  static const SWP_NOCOPYBITS = 0x00000100;
  static const SWP_NOMOVE = 0x00000002;
  static const SWP_NOOWNERZORDER = 0x00000200;
  static const SWP_NOREDRAW = 0x00000008;
  static const SWP_NOREPOSITION = 0x00000200;
  static const SWP_NOSENDCHANGING = 0x00000400;
  static const SWP_NOSIZE = 0x00000001;
  static const SWP_NOZORDER = 0x00000004;
  static const SWP_SHOWWINDOW = 0x00000040;
  static const SWP__NOOWNERZORDER = 0x00000200;
}

/// {@category Enum}
class SHOW_WINDOW_CMD {
  static const SW_FORCEMINIMIZE = 0x0000000b;
  static const SW_HIDE = 0x00000000;
  static const SW_MAXIMIZE = 0x00000003;
  static const SW_MINIMIZE = 0x00000006;
  static const SW_RESTORE = 0x00000009;
  static const SW_SHOW = 0x00000005;
  static const SW_SHOWDEFAULT = 0x0000000a;
  static const SW_SHOWMAXIMIZED = 0x00000003;
  static const SW_SHOWMINIMIZED = 0x00000002;
  static const SW_SHOWMINNOACTIVE = 0x00000007;
  static const SW_SHOWNA = 0x00000008;
  static const SW_SHOWNOACTIVATE = 0x00000004;
  static const SW_SHOWNORMAL = 0x00000001;
  static const SW_NORMAL = 0x00000001;
  static const SW_MAX = 0x0000000b;
  static const SW_PARENTCLOSING = 0x00000001;
  static const SW_OTHERZOOM = 0x00000002;
  static const SW_PARENTOPENING = 0x00000003;
  static const SW_OTHERUNZOOM = 0x00000004;
  static const SW_SCROLLCHILDREN = 0x00000001;
  static const SW_INVALIDATE = 0x00000002;
  static const SW_ERASE = 0x00000004;
  static const SW_SMOOTHSCROLL = 0x00000010;
}

/// {@category Enum}
class SYSTEM_CURSOR_ID {
  static const OCR_APPSTARTING = 0x00007f8a;
  static const OCR_NORMAL = 0x00007f00;
  static const OCR_CROSS = 0x00007f03;
  static const OCR_HAND = 0x00007f89;
  static const OCR_HELP = 0x00007f8b;
  static const OCR_IBEAM = 0x00007f01;
  static const OCR_NO = 0x00007f88;
  static const OCR_SIZEALL = 0x00007f86;
  static const OCR_SIZENESW = 0x00007f83;
  static const OCR_SIZENS = 0x00007f85;
  static const OCR_SIZENWSE = 0x00007f82;
  static const OCR_SIZEWE = 0x00007f84;
  static const OCR_UP = 0x00007f04;
  static const OCR_WAIT = 0x00007f02;
}

/// {@category Enum}
class SYSTEM_METRICS_INDEX {
  static const SM_ARRANGE = 0x00000038;
  static const SM_CLEANBOOT = 0x00000043;
  static const SM_CMONITORS = 0x00000050;
  static const SM_CMOUSEBUTTONS = 0x0000002b;
  static const SM_CONVERTIBLESLATEMODE = 0x00002003;
  static const SM_CXBORDER = 0x00000005;
  static const SM_CXCURSOR = 0x0000000d;
  static const SM_CXDLGFRAME = 0x00000007;
  static const SM_CXDOUBLECLK = 0x00000024;
  static const SM_CXDRAG = 0x00000044;
  static const SM_CXEDGE = 0x0000002d;
  static const SM_CXFIXEDFRAME = 0x00000007;
  static const SM_CXFOCUSBORDER = 0x00000053;
  static const SM_CXFRAME = 0x00000020;
  static const SM_CXFULLSCREEN = 0x00000010;
  static const SM_CXHSCROLL = 0x00000015;
  static const SM_CXHTHUMB = 0x0000000a;
  static const SM_CXICON = 0x0000000b;
  static const SM_CXICONSPACING = 0x00000026;
  static const SM_CXMAXIMIZED = 0x0000003d;
  static const SM_CXMAXTRACK = 0x0000003b;
  static const SM_CXMENUCHECK = 0x00000047;
  static const SM_CXMENUSIZE = 0x00000036;
  static const SM_CXMIN = 0x0000001c;
  static const SM_CXMINIMIZED = 0x00000039;
  static const SM_CXMINSPACING = 0x0000002f;
  static const SM_CXMINTRACK = 0x00000022;
  static const SM_CXPADDEDBORDER = 0x0000005c;
  static const SM_CXSCREEN = 0x00000000;
  static const SM_CXSIZE = 0x0000001e;
  static const SM_CXSIZEFRAME = 0x00000020;
  static const SM_CXSMICON = 0x00000031;
  static const SM_CXSMSIZE = 0x00000034;
  static const SM_CXVIRTUALSCREEN = 0x0000004e;
  static const SM_CXVSCROLL = 0x00000002;
  static const SM_CYBORDER = 0x00000006;
  static const SM_CYCAPTION = 0x00000004;
  static const SM_CYCURSOR = 0x0000000e;
  static const SM_CYDLGFRAME = 0x00000008;
  static const SM_CYDOUBLECLK = 0x00000025;
  static const SM_CYDRAG = 0x00000045;
  static const SM_CYEDGE = 0x0000002e;
  static const SM_CYFIXEDFRAME = 0x00000008;
  static const SM_CYFOCUSBORDER = 0x00000054;
  static const SM_CYFRAME = 0x00000021;
  static const SM_CYFULLSCREEN = 0x00000011;
  static const SM_CYHSCROLL = 0x00000003;
  static const SM_CYICON = 0x0000000c;
  static const SM_CYICONSPACING = 0x00000027;
  static const SM_CYKANJIWINDOW = 0x00000012;
  static const SM_CYMAXIMIZED = 0x0000003e;
  static const SM_CYMAXTRACK = 0x0000003c;
  static const SM_CYMENU = 0x0000000f;
  static const SM_CYMENUCHECK = 0x00000048;
  static const SM_CYMENUSIZE = 0x00000037;
  static const SM_CYMIN = 0x0000001d;
  static const SM_CYMINIMIZED = 0x0000003a;
  static const SM_CYMINSPACING = 0x00000030;
  static const SM_CYMINTRACK = 0x00000023;
  static const SM_CYSCREEN = 0x00000001;
  static const SM_CYSIZE = 0x0000001f;
  static const SM_CYSIZEFRAME = 0x00000021;
  static const SM_CYSMCAPTION = 0x00000033;
  static const SM_CYSMICON = 0x00000032;
  static const SM_CYSMSIZE = 0x00000035;
  static const SM_CYVIRTUALSCREEN = 0x0000004f;
  static const SM_CYVSCROLL = 0x00000014;
  static const SM_CYVTHUMB = 0x00000009;
  static const SM_DBCSENABLED = 0x0000002a;
  static const SM_DEBUG = 0x00000016;
  static const SM_DIGITIZER = 0x0000005e;
  static const SM_IMMENABLED = 0x00000052;
  static const SM_MAXIMUMTOUCHES = 0x0000005f;
  static const SM_MEDIACENTER = 0x00000057;
  static const SM_MENUDROPALIGNMENT = 0x00000028;
  static const SM_MIDEASTENABLED = 0x0000004a;
  static const SM_MOUSEPRESENT = 0x00000013;
  static const SM_MOUSEHORIZONTALWHEELPRESENT = 0x0000005b;
  static const SM_MOUSEWHEELPRESENT = 0x0000004b;
  static const SM_NETWORK = 0x0000003f;
  static const SM_PENWINDOWS = 0x00000029;
  static const SM_REMOTECONTROL = 0x00002001;
  static const SM_REMOTESESSION = 0x00001000;
  static const SM_SAMEDISPLAYFORMAT = 0x00000051;
  static const SM_SECURE = 0x0000002c;
  static const SM_SERVERR2 = 0x00000059;
  static const SM_SHOWSOUNDS = 0x00000046;
  static const SM_SHUTTINGDOWN = 0x00002000;
  static const SM_SLOWMACHINE = 0x00000049;
  static const SM_STARTER = 0x00000058;
  static const SM_SWAPBUTTON = 0x00000017;
  static const SM_SYSTEMDOCKED_ = 0x00002004;
  static const SM_TABLETPC = 0x00000056;
  static const SM_XVIRTUALSCREEN = 0x0000004c;
  static const SM_YVIRTUALSCREEN = 0x0000004d;
}

/// {@category Enum}
class SYSTEM_PARAMETERS_INFO_ACTION {
  static const SPI_GETBEEP = 0x00000001;
  static const SPI_SETBEEP = 0x00000002;
  static const SPI_GETMOUSE = 0x00000003;
  static const SPI_SETMOUSE = 0x00000004;
  static const SPI_GETBORDER = 0x00000005;
  static const SPI_SETBORDER = 0x00000006;
  static const SPI_GETKEYBOARDSPEED = 0x0000000a;
  static const SPI_SETKEYBOARDSPEED = 0x0000000b;
  static const SPI_LANGDRIVER = 0x0000000c;
  static const SPI_ICONHORIZONTALSPACING = 0x0000000d;
  static const SPI_GETSCREENSAVETIMEOUT = 0x0000000e;
  static const SPI_SETSCREENSAVETIMEOUT = 0x0000000f;
  static const SPI_GETSCREENSAVEACTIVE = 0x00000010;
  static const SPI_SETSCREENSAVEACTIVE = 0x00000011;
  static const SPI_GETGRIDGRANULARITY = 0x00000012;
  static const SPI_SETGRIDGRANULARITY = 0x00000013;
  static const SPI_SETDESKWALLPAPER = 0x00000014;
  static const SPI_SETDESKPATTERN = 0x00000015;
  static const SPI_GETKEYBOARDDELAY = 0x00000016;
  static const SPI_SETKEYBOARDDELAY = 0x00000017;
  static const SPI_ICONVERTICALSPACING = 0x00000018;
  static const SPI_GETICONTITLEWRAP = 0x00000019;
  static const SPI_SETICONTITLEWRAP = 0x0000001a;
  static const SPI_GETMENUDROPALIGNMENT = 0x0000001b;
  static const SPI_SETMENUDROPALIGNMENT = 0x0000001c;
  static const SPI_SETDOUBLECLKWIDTH = 0x0000001d;
  static const SPI_SETDOUBLECLKHEIGHT = 0x0000001e;
  static const SPI_GETICONTITLELOGFONT = 0x0000001f;
  static const SPI_SETDOUBLECLICKTIME = 0x00000020;
  static const SPI_SETMOUSEBUTTONSWAP = 0x00000021;
  static const SPI_SETICONTITLELOGFONT = 0x00000022;
  static const SPI_GETFASTTASKSWITCH = 0x00000023;
  static const SPI_SETFASTTASKSWITCH = 0x00000024;
  static const SPI_SETDRAGFULLWINDOWS = 0x00000025;
  static const SPI_GETDRAGFULLWINDOWS = 0x00000026;
  static const SPI_GETNONCLIENTMETRICS = 0x00000029;
  static const SPI_SETNONCLIENTMETRICS = 0x0000002a;
  static const SPI_GETMINIMIZEDMETRICS = 0x0000002b;
  static const SPI_SETMINIMIZEDMETRICS = 0x0000002c;
  static const SPI_GETICONMETRICS = 0x0000002d;
  static const SPI_SETICONMETRICS = 0x0000002e;
  static const SPI_SETWORKAREA = 0x0000002f;
  static const SPI_GETWORKAREA = 0x00000030;
  static const SPI_SETPENWINDOWS = 0x00000031;
  static const SPI_GETHIGHCONTRAST = 0x00000042;
  static const SPI_SETHIGHCONTRAST = 0x00000043;
  static const SPI_GETKEYBOARDPREF = 0x00000044;
  static const SPI_SETKEYBOARDPREF = 0x00000045;
  static const SPI_GETSCREENREADER = 0x00000046;
  static const SPI_SETSCREENREADER = 0x00000047;
  static const SPI_GETANIMATION = 0x00000048;
  static const SPI_SETANIMATION = 0x00000049;
  static const SPI_GETFONTSMOOTHING = 0x0000004a;
  static const SPI_SETFONTSMOOTHING = 0x0000004b;
  static const SPI_SETDRAGWIDTH = 0x0000004c;
  static const SPI_SETDRAGHEIGHT = 0x0000004d;
  static const SPI_SETHANDHELD = 0x0000004e;
  static const SPI_GETLOWPOWERTIMEOUT = 0x0000004f;
  static const SPI_GETPOWEROFFTIMEOUT = 0x00000050;
  static const SPI_SETLOWPOWERTIMEOUT = 0x00000051;
  static const SPI_SETPOWEROFFTIMEOUT = 0x00000052;
  static const SPI_GETLOWPOWERACTIVE = 0x00000053;
  static const SPI_GETPOWEROFFACTIVE = 0x00000054;
  static const SPI_SETLOWPOWERACTIVE = 0x00000055;
  static const SPI_SETPOWEROFFACTIVE = 0x00000056;
  static const SPI_SETCURSORS = 0x00000057;
  static const SPI_SETICONS = 0x00000058;
  static const SPI_GETDEFAULTINPUTLANG = 0x00000059;
  static const SPI_SETDEFAULTINPUTLANG = 0x0000005a;
  static const SPI_SETLANGTOGGLE = 0x0000005b;
  static const SPI_GETWINDOWSEXTENSION = 0x0000005c;
  static const SPI_SETMOUSETRAILS = 0x0000005d;
  static const SPI_GETMOUSETRAILS = 0x0000005e;
  static const SPI_SETSCREENSAVERRUNNING = 0x00000061;
  static const SPI_SCREENSAVERRUNNING = 0x00000061;
  static const SPI_GETFILTERKEYS = 0x00000032;
  static const SPI_SETFILTERKEYS = 0x00000033;
  static const SPI_GETTOGGLEKEYS = 0x00000034;
  static const SPI_SETTOGGLEKEYS = 0x00000035;
  static const SPI_GETMOUSEKEYS = 0x00000036;
  static const SPI_SETMOUSEKEYS = 0x00000037;
  static const SPI_GETSHOWSOUNDS = 0x00000038;
  static const SPI_SETSHOWSOUNDS = 0x00000039;
  static const SPI_GETSTICKYKEYS = 0x0000003a;
  static const SPI_SETSTICKYKEYS = 0x0000003b;
  static const SPI_GETACCESSTIMEOUT = 0x0000003c;
  static const SPI_SETACCESSTIMEOUT = 0x0000003d;
  static const SPI_GETSERIALKEYS = 0x0000003e;
  static const SPI_SETSERIALKEYS = 0x0000003f;
  static const SPI_GETSOUNDSENTRY = 0x00000040;
  static const SPI_SETSOUNDSENTRY = 0x00000041;
  static const SPI_GETSNAPTODEFBUTTON = 0x0000005f;
  static const SPI_SETSNAPTODEFBUTTON = 0x00000060;
  static const SPI_GETMOUSEHOVERWIDTH = 0x00000062;
  static const SPI_SETMOUSEHOVERWIDTH = 0x00000063;
  static const SPI_GETMOUSEHOVERHEIGHT = 0x00000064;
  static const SPI_SETMOUSEHOVERHEIGHT = 0x00000065;
  static const SPI_GETMOUSEHOVERTIME = 0x00000066;
  static const SPI_SETMOUSEHOVERTIME = 0x00000067;
  static const SPI_GETWHEELSCROLLLINES = 0x00000068;
  static const SPI_SETWHEELSCROLLLINES = 0x00000069;
  static const SPI_GETMENUSHOWDELAY = 0x0000006a;
  static const SPI_SETMENUSHOWDELAY = 0x0000006b;
  static const SPI_GETWHEELSCROLLCHARS = 0x0000006c;
  static const SPI_SETWHEELSCROLLCHARS = 0x0000006d;
  static const SPI_GETSHOWIMEUI = 0x0000006e;
  static const SPI_SETSHOWIMEUI = 0x0000006f;
  static const SPI_GETMOUSESPEED = 0x00000070;
  static const SPI_SETMOUSESPEED = 0x00000071;
  static const SPI_GETSCREENSAVERRUNNING = 0x00000072;
  static const SPI_GETDESKWALLPAPER = 0x00000073;
  static const SPI_GETAUDIODESCRIPTION = 0x00000074;
  static const SPI_SETAUDIODESCRIPTION = 0x00000075;
  static const SPI_GETSCREENSAVESECURE = 0x00000076;
  static const SPI_SETSCREENSAVESECURE = 0x00000077;
  static const SPI_GETHUNGAPPTIMEOUT = 0x00000078;
  static const SPI_SETHUNGAPPTIMEOUT = 0x00000079;
  static const SPI_GETWAITTOKILLTIMEOUT = 0x0000007a;
  static const SPI_SETWAITTOKILLTIMEOUT = 0x0000007b;
  static const SPI_GETWAITTOKILLSERVICETIMEOUT = 0x0000007c;
  static const SPI_SETWAITTOKILLSERVICETIMEOUT = 0x0000007d;
  static const SPI_GETMOUSEDOCKTHRESHOLD = 0x0000007e;
  static const SPI_SETMOUSEDOCKTHRESHOLD = 0x0000007f;
  static const SPI_GETPENDOCKTHRESHOLD = 0x00000080;
  static const SPI_SETPENDOCKTHRESHOLD = 0x00000081;
  static const SPI_GETWINARRANGING = 0x00000082;
  static const SPI_SETWINARRANGING = 0x00000083;
  static const SPI_GETMOUSEDRAGOUTTHRESHOLD = 0x00000084;
  static const SPI_SETMOUSEDRAGOUTTHRESHOLD = 0x00000085;
  static const SPI_GETPENDRAGOUTTHRESHOLD = 0x00000086;
  static const SPI_SETPENDRAGOUTTHRESHOLD = 0x00000087;
  static const SPI_GETMOUSESIDEMOVETHRESHOLD = 0x00000088;
  static const SPI_SETMOUSESIDEMOVETHRESHOLD = 0x00000089;
  static const SPI_GETPENSIDEMOVETHRESHOLD = 0x0000008a;
  static const SPI_SETPENSIDEMOVETHRESHOLD = 0x0000008b;
  static const SPI_GETDRAGFROMMAXIMIZE = 0x0000008c;
  static const SPI_SETDRAGFROMMAXIMIZE = 0x0000008d;
  static const SPI_GETSNAPSIZING = 0x0000008e;
  static const SPI_SETSNAPSIZING = 0x0000008f;
  static const SPI_GETDOCKMOVING = 0x00000090;
  static const SPI_SETDOCKMOVING = 0x00000091;
  static const SPI_GETTOUCHPREDICTIONPARAMETERS = 0x0000009c;
  static const SPI_SETTOUCHPREDICTIONPARAMETERS = 0x0000009d;
  static const SPI_GETLOGICALDPIOVERRIDE = 0x0000009e;
  static const SPI_SETLOGICALDPIOVERRIDE = 0x0000009f;
  static const SPI_GETMENURECT = 0x000000a2;
  static const SPI_SETMENURECT = 0x000000a3;
  static const SPI_GETACTIVEWINDOWTRACKING = 0x00001000;
  static const SPI_SETACTIVEWINDOWTRACKING = 0x00001001;
  static const SPI_GETMENUANIMATION = 0x00001002;
  static const SPI_SETMENUANIMATION = 0x00001003;
  static const SPI_GETCOMBOBOXANIMATION = 0x00001004;
  static const SPI_SETCOMBOBOXANIMATION = 0x00001005;
  static const SPI_GETLISTBOXSMOOTHSCROLLING = 0x00001006;
  static const SPI_SETLISTBOXSMOOTHSCROLLING = 0x00001007;
  static const SPI_GETGRADIENTCAPTIONS = 0x00001008;
  static const SPI_SETGRADIENTCAPTIONS = 0x00001009;
  static const SPI_GETKEYBOARDCUES = 0x0000100a;
  static const SPI_SETKEYBOARDCUES = 0x0000100b;
  static const SPI_GETMENUUNDERLINES = 0x0000100a;
  static const SPI_SETMENUUNDERLINES = 0x0000100b;
  static const SPI_GETACTIVEWNDTRKZORDER = 0x0000100c;
  static const SPI_SETACTIVEWNDTRKZORDER = 0x0000100d;
  static const SPI_GETHOTTRACKING = 0x0000100e;
  static const SPI_SETHOTTRACKING = 0x0000100f;
  static const SPI_GETMENUFADE = 0x00001012;
  static const SPI_SETMENUFADE = 0x00001013;
  static const SPI_GETSELECTIONFADE = 0x00001014;
  static const SPI_SETSELECTIONFADE = 0x00001015;
  static const SPI_GETTOOLTIPANIMATION = 0x00001016;
  static const SPI_SETTOOLTIPANIMATION = 0x00001017;
  static const SPI_GETTOOLTIPFADE = 0x00001018;
  static const SPI_SETTOOLTIPFADE = 0x00001019;
  static const SPI_GETCURSORSHADOW = 0x0000101a;
  static const SPI_SETCURSORSHADOW = 0x0000101b;
  static const SPI_GETMOUSESONAR = 0x0000101c;
  static const SPI_SETMOUSESONAR = 0x0000101d;
  static const SPI_GETMOUSECLICKLOCK = 0x0000101e;
  static const SPI_SETMOUSECLICKLOCK = 0x0000101f;
  static const SPI_GETMOUSEVANISH = 0x00001020;
  static const SPI_SETMOUSEVANISH = 0x00001021;
  static const SPI_GETFLATMENU = 0x00001022;
  static const SPI_SETFLATMENU = 0x00001023;
  static const SPI_GETDROPSHADOW = 0x00001024;
  static const SPI_SETDROPSHADOW = 0x00001025;
  static const SPI_GETBLOCKSENDINPUTRESETS = 0x00001026;
  static const SPI_SETBLOCKSENDINPUTRESETS = 0x00001027;
  static const SPI_GETUIEFFECTS = 0x0000103e;
  static const SPI_SETUIEFFECTS = 0x0000103f;
  static const SPI_GETDISABLEOVERLAPPEDCONTENT = 0x00001040;
  static const SPI_SETDISABLEOVERLAPPEDCONTENT = 0x00001041;
  static const SPI_GETCLIENTAREAANIMATION = 0x00001042;
  static const SPI_SETCLIENTAREAANIMATION = 0x00001043;
  static const SPI_GETCLEARTYPE = 0x00001048;
  static const SPI_SETCLEARTYPE = 0x00001049;
  static const SPI_GETSPEECHRECOGNITION = 0x0000104a;
  static const SPI_SETSPEECHRECOGNITION = 0x0000104b;
  static const SPI_GETCARETBROWSING = 0x0000104c;
  static const SPI_SETCARETBROWSING = 0x0000104d;
  static const SPI_GETTHREADLOCALINPUTSETTINGS = 0x0000104e;
  static const SPI_SETTHREADLOCALINPUTSETTINGS = 0x0000104f;
  static const SPI_GETSYSTEMLANGUAGEBAR = 0x00001050;
  static const SPI_SETSYSTEMLANGUAGEBAR = 0x00001051;
  static const SPI_GETFOREGROUNDLOCKTIMEOUT = 0x00002000;
  static const SPI_SETFOREGROUNDLOCKTIMEOUT = 0x00002001;
  static const SPI_GETACTIVEWNDTRKTIMEOUT = 0x00002002;
  static const SPI_SETACTIVEWNDTRKTIMEOUT = 0x00002003;
  static const SPI_GETFOREGROUNDFLASHCOUNT = 0x00002004;
  static const SPI_SETFOREGROUNDFLASHCOUNT = 0x00002005;
  static const SPI_GETCARETWIDTH = 0x00002006;
  static const SPI_SETCARETWIDTH = 0x00002007;
  static const SPI_GETMOUSECLICKLOCKTIME = 0x00002008;
  static const SPI_SETMOUSECLICKLOCKTIME = 0x00002009;
  static const SPI_GETFONTSMOOTHINGTYPE = 0x0000200a;
  static const SPI_SETFONTSMOOTHINGTYPE = 0x0000200b;
  static const SPI_GETFONTSMOOTHINGCONTRAST = 0x0000200c;
  static const SPI_SETFONTSMOOTHINGCONTRAST = 0x0000200d;
  static const SPI_GETFOCUSBORDERWIDTH = 0x0000200e;
  static const SPI_SETFOCUSBORDERWIDTH = 0x0000200f;
  static const SPI_GETFOCUSBORDERHEIGHT = 0x00002010;
  static const SPI_SETFOCUSBORDERHEIGHT = 0x00002011;
  static const SPI_GETFONTSMOOTHINGORIENTATION = 0x00002012;
  static const SPI_SETFONTSMOOTHINGORIENTATION = 0x00002013;
  static const SPI_GETMINIMUMHITRADIUS = 0x00002014;
  static const SPI_SETMINIMUMHITRADIUS = 0x00002015;
  static const SPI_GETMESSAGEDURATION = 0x00002016;
  static const SPI_SETMESSAGEDURATION = 0x00002017;
  static const SPI_GETCONTACTVISUALIZATION = 0x00002018;
  static const SPI_SETCONTACTVISUALIZATION = 0x00002019;
  static const SPI_GETGESTUREVISUALIZATION = 0x0000201a;
  static const SPI_SETGESTUREVISUALIZATION = 0x0000201b;
  static const SPI_GETMOUSEWHEELROUTING = 0x0000201c;
  static const SPI_SETMOUSEWHEELROUTING = 0x0000201d;
  static const SPI_GETPENVISUALIZATION = 0x0000201e;
  static const SPI_SETPENVISUALIZATION = 0x0000201f;
  static const SPI_GETPENARBITRATIONTYPE = 0x00002020;
  static const SPI_SETPENARBITRATIONTYPE = 0x00002021;
  static const SPI_GETCARETTIMEOUT = 0x00002022;
  static const SPI_SETCARETTIMEOUT = 0x00002023;
  static const SPI_GETHANDEDNESS = 0x00002024;
  static const SPI_SETHANDEDNESS = 0x00002025;
}

/// {@category Enum}
class SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS {
  static const SPIF_UPDATEINIFILE = 0x00000001;
  static const SPIF_SENDCHANGE = 0x00000002;
  static const SPIF_SENDWININICHANGE = 0x00000002;
}

/// {@category Enum}
class SYS_COLOR_INDEX {
  static const COLOR_3DDKSHADOW = 0x00000015;
  static const COLOR_3DFACE = 0x0000000f;
  static const COLOR_3DHIGHLIGHT = 0x00000014;
  static const COLOR_3DHILIGHT = 0x00000014;
  static const COLOR_3DLIGHT = 0x00000016;
  static const COLOR_3DSHADOW = 0x00000010;
  static const COLOR_ACTIVEBORDER = 0x0000000a;
  static const COLOR_ACTIVECAPTION = 0x00000002;
  static const COLOR_APPWORKSPACE = 0x0000000c;
  static const COLOR_BACKGROUND = 0x00000001;
  static const COLOR_BTNFACE = 0x0000000f;
  static const _COLOR_BTNHIGHLIGHT = 0x00000014;
  static const _COLOR_BTNHILIGHT = 0x00000014;
  static const COLOR_BTNSHADOW = 0x00000010;
  static const COLOR_BTNTEXT = 0x00000012;
  static const COLOR_CAPTIONTEXT = 0x00000009;
  static const COLOR_DESKTOP = 0x00000001;
  static const COLOR_GRADIENTACTIVECAPTION = 0x0000001b;
  static const COLOR_GRADIENTINACTIVECAPTION = 0x0000001c;
  static const COLOR_GRAYTEXT = 0x00000011;
  static const COLOR_HIGHLIGHT = 0x0000000d;
  static const COLOR_HIGHLIGHTTEXT = 0x0000000e;
  static const COLOR_HOTLIGHT = 0x0000001a;
  static const COLOR_INACTIVEBORDER = 0x0000000b;
  static const COLOR_INACTIVECAPTION = 0x00000003;
  static const COLOR_INACTIVECAPTIONTEXT = 0x00000013;
  static const COLOR_INFOBK = 0x00000018;
  static const COLOR_INFOTEXT = 0x00000017;
  static const COLOR_MENU = 0x00000004;
  static const COLOR_MENUHILIGHT = 0x0000001d;
  static const COLOR_MENUBAR = 0x0000001e;
  static const COLOR_MENUTEXT = 0x00000007;
  static const COLOR_SCROLLBAR = 0x00000000;
  static const COLOR_WINDOW = 0x00000005;
  static const COLOR_WINDOWFRAME = 0x00000006;
  static const COLOR_WINDOWTEXT = 0x00000008;
}

/// {@category Enum}
class TILE_WINDOWS_HOW {
  static const MDITILE_HORIZONTAL = 0x00000001;
  static const MDITILE_VERTICAL = 0x00000000;
}

/// {@category Enum}
class TRACK_POPUP_MENU_FLAGS {
  static const TPM_LEFTBUTTON = 0x00000000;
  static const TPM_RIGHTBUTTON = 0x00000002;
  static const TPM_LEFTALIGN = 0x00000000;
  static const TPM_CENTERALIGN = 0x00000004;
  static const TPM_RIGHTALIGN = 0x00000008;
  static const TPM_TOPALIGN = 0x00000000;
  static const TPM_VCENTERALIGN = 0x00000010;
  static const TPM_BOTTOMALIGN = 0x00000020;
  static const TPM_HORIZONTAL = 0x00000000;
  static const TPM_VERTICAL = 0x00000040;
  static const TPM_NONOTIFY = 0x00000080;
  static const TPM_RETURNCMD = 0x00000100;
  static const TPM_RECURSE = 0x00000001;
  static const TPM_HORPOSANIMATION = 0x00000400;
  static const TPM_HORNEGANIMATION = 0x00000800;
  static const TPM_VERPOSANIMATION = 0x00001000;
  static const TPM_VERNEGANIMATION = 0x00002000;
  static const TPM_NOANIMATION = 0x00004000;
  static const TPM_LAYOUTRTL = 0x00008000;
  static const TPM_WORKAREA = 0x00010000;
}

/// {@category Enum}
class UPDATE_LAYERED_WINDOW_FLAGS {
  static const ULW_ALPHA = 0x00000002;
  static const ULW_COLORKEY = 0x00000001;
  static const ULW_OPAQUE = 0x00000004;
  static const ULW_EX_NORESIZE = 0x00000008;
}

/// {@category Enum}
class WINDOWPLACEMENT_FLAGS {
  static const WPF_ASYNCWINDOWPLACEMENT = 0x00000004;
  static const WPF_RESTORETOMAXIMIZED = 0x00000002;
  static const WPF_SETMINPOSITION = 0x00000001;
}

/// {@category Enum}
class WINDOWS_HOOK_ID {
  static const WH_CALLWNDPROC = 0x00000004;
  static const WH_CALLWNDPROCRET = 0x0000000c;
  static const WH_CBT = 0x00000005;
  static const WH_DEBUG = 0x00000009;
  static const WH_FOREGROUNDIDLE = 0x0000000b;
  static const WH_GETMESSAGE = 0x00000003;
  static const WH_JOURNALPLAYBACK = 0x00000001;
  static const WH_JOURNALRECORD = 0x00000000;
  static const WH_KEYBOARD = 0x00000002;
  static const WH_KEYBOARD_LL = 0x0000000d;
  static const WH_MOUSE = 0x00000007;
  static const WH_MOUSE_LL = 0x0000000e;
  static const WH_MSGFILTER = 0xffffffff;
  static const WH_SHELL = 0x0000000a;
  static const WH_SYSMSGFILTER = 0x00000006;
}

/// {@category Enum}
class WINDOW_DISPLAY_AFFINITY {
  static const WDA_NONE = 0x00000000;
  static const WDA_MONITOR = 0x00000001;
  static const WDA_EXCLUDEFROMCAPTURE = 0x00000011;
}

/// {@category Enum}
class WINDOW_EX_STYLE {
  static const WS_EX_DLGMODALFRAME = 0x00000001;
  static const WS_EX_NOPARENTNOTIFY = 0x00000004;
  static const WS_EX_TOPMOST = 0x00000008;
  static const WS_EX_ACCEPTFILES = 0x00000010;
  static const WS_EX_TRANSPARENT = 0x00000020;
  static const WS_EX_MDICHILD = 0x00000040;
  static const WS_EX_TOOLWINDOW = 0x00000080;
  static const WS_EX_WINDOWEDGE = 0x00000100;
  static const WS_EX_CLIENTEDGE = 0x00000200;
  static const WS_EX_CONTEXTHELP = 0x00000400;
  static const WS_EX_RIGHT = 0x00001000;
  static const WS_EX_LEFT = 0x00000000;
  static const WS_EX_RTLREADING = 0x00002000;
  static const WS_EX_LTRREADING = 0x00000000;
  static const WS_EX_LEFTSCROLLBAR = 0x00004000;
  static const WS_EX_RIGHTSCROLLBAR = 0x00000000;
  static const WS_EX_CONTROLPARENT = 0x00010000;
  static const WS_EX_STATICEDGE = 0x00020000;
  static const WS_EX_APPWINDOW = 0x00040000;
  static const WS_EX_OVERLAPPEDWINDOW = 0x00000300;
  static const WS_EX_PALETTEWINDOW = 0x00000188;
  static const WS_EX_LAYERED = 0x00080000;
  static const WS_EX_NOINHERITLAYOUT = 0x00100000;
  static const WS_EX_NOREDIRECTIONBITMAP = 0x00200000;
  static const WS_EX_LAYOUTRTL = 0x00400000;
  static const WS_EX_COMPOSITED = 0x02000000;
  static const WS_EX_NOACTIVATE = 0x08000000;
}

/// {@category Enum}
class WINDOW_LONG_PTR_INDEX {
  static const GWL_EXSTYLE = 0xffffffec;
  static const GWLP_HINSTANCE = 0xfffffffa;
  static const GWLP_HWNDPARENT = 0xfffffff8;
  static const GWLP_ID = 0xfffffff4;
  static const GWL_STYLE = 0xfffffff0;
  static const GWLP_USERDATA = 0xffffffeb;
  static const GWLP_WNDPROC = 0xfffffffc;
  static const GWL_HINSTANCE = 0xfffffffa;
  static const GWL_ID = 0xfffffff4;
  static const GWL_USERDATA = 0xffffffeb;
  static const GWL_WNDPROC = 0xfffffffc;
  static const GWL_HWNDPARENT = 0xfffffff8;
}

/// {@category Enum}
class WINDOW_MESSAGE_FILTER_ACTION {
  static const MSGFLT_ALLOW = 0x00000001;
  static const MSGFLT_DISALLOW = 0x00000002;
  static const MSGFLT_RESET = 0x00000000;
}

/// {@category Enum}
class WINDOW_STYLE {
  static const WS_OVERLAPPED = 0x00000000;
  static const WS_POPUP = 0x80000000;
  static const WS_CHILD = 0x40000000;
  static const WS_MINIMIZE = 0x20000000;
  static const WS_VISIBLE = 0x10000000;
  static const WS_DISABLED = 0x08000000;
  static const WS_CLIPSIBLINGS = 0x04000000;
  static const WS_CLIPCHILDREN = 0x02000000;
  static const WS_MAXIMIZE = 0x01000000;
  static const WS_CAPTION = 0x00c00000;
  static const WS_BORDER = 0x00800000;
  static const WS_DLGFRAME = 0x00400000;
  static const WS_VSCROLL = 0x00200000;
  static const WS_HSCROLL = 0x00100000;
  static const WS_SYSMENU = 0x00080000;
  static const WS_THICKFRAME = 0x00040000;
  static const WS_GROUP = 0x00020000;
  static const WS_TABSTOP = 0x00010000;
  static const WS_MINIMIZEBOX = 0x00020000;
  static const WS_MAXIMIZEBOX = 0x00010000;
  static const WS_TILED = 0x00000000;
  static const WS_ICONIC = 0x20000000;
  static const WS_SIZEBOX = 0x00040000;
  static const WS_TILEDWINDOW = 0x00cf0000;
  static const WS_OVERLAPPEDWINDOW = 0x00cf0000;
  static const WS_POPUPWINDOW = 0x80880000;
  static const WS_CHILDWINDOW = 0x40000000;
  static const WS_ACTIVECAPTION = 0x00000001;
}

/// {@category Enum}
class WNDCLASS_STYLES {
  static const CS_VREDRAW = 0x00000001;
  static const CS_HREDRAW = 0x00000002;
  static const CS_DBLCLKS = 0x00000008;
  static const CS_OWNDC = 0x00000020;
  static const CS_CLASSDC = 0x00000040;
  static const CS_PARENTDC = 0x00000080;
  static const CS_NOCLOSE = 0x00000200;
  static const CS_SAVEBITS = 0x00000800;
  static const CS_BYTEALIGNCLIENT = 0x00001000;
  static const CS_BYTEALIGNWINDOW = 0x00002000;
  static const CS_GLOBALCLASS = 0x00004000;
  static const CS_IME = 0x00010000;
  static const CS_DROPSHADOW = 0x00020000;
}
