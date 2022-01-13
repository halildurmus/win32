/// {@category Enum}
class ACTCTX_COMPATIBILITY_ELEMENT_TYPE {
  static const ACTCTX_COMPATIBILITY_ELEMENT_TYPE_UNKNOWN = 0x00000000;
  static const ACTCTX_COMPATIBILITY_ELEMENT_TYPE_OS = 0x00000001;
  static const ACTCTX_COMPATIBILITY_ELEMENT_TYPE_MITIGATION = 0x00000002;
  static const ACTCTX_COMPATIBILITY_ELEMENT_TYPE_MAXVERSIONTESTED = 0x00000003;
}

/// {@category Enum}
class ACTCTX_REQUESTED_RUN_LEVEL {
  static const ACTCTX_RUN_LEVEL_UNSPECIFIED = 0x00000000;
  static const ACTCTX_RUN_LEVEL_AS_INVOKER = 0x00000001;
  static const ACTCTX_RUN_LEVEL_HIGHEST_AVAILABLE = 0x00000002;
  static const ACTCTX_RUN_LEVEL_REQUIRE_ADMIN = 0x00000003;
  static const ACTCTX_RUN_LEVEL_NUMBERS = 0x00000004;
}

/// {@category Enum}
class ADVERTISEFLAGS {
  static const ADVERTISEFLAGS_MACHINEASSIGN = 0x00000000;
  static const ADVERTISEFLAGS_USERASSIGN = 0x00000001;
}

/// {@category Enum}
class ASM_BIND_FLAGS {
  static const ASM_BINDF_FORCE_CACHE_INSTALL = 0x00000001;
  static const ASM_BINDF_RFS_INTEGRITY_CHECK = 0x00000002;
  static const ASM_BINDF_RFS_MODULE_CHECK = 0x00000004;
  static const ASM_BINDF_BINPATH_PROBE_ONLY = 0x00000008;
  static const ASM_BINDF_SHARED_BINPATH_HINT = 0x00000010;
  static const ASM_BINDF_PARENT_ASM_HINT = 0x00000020;
}

/// {@category Enum}
class ASM_CMP_FLAGS {
  static const ASM_CMPF_NAME = 0x00000001;
  static const ASM_CMPF_MAJOR_VERSION = 0x00000002;
  static const ASM_CMPF_MINOR_VERSION = 0x00000004;
  static const ASM_CMPF_BUILD_NUMBER = 0x00000008;
  static const ASM_CMPF_REVISION_NUMBER = 0x00000010;
  static const ASM_CMPF_PUBLIC_KEY_TOKEN = 0x00000020;
  static const ASM_CMPF_CULTURE = 0x00000040;
  static const ASM_CMPF_CUSTOM = 0x00000080;
  static const ASM_CMPF_ALL = 0x000000ff;
  static const ASM_CMPF_DEFAULT = 0x00000100;
}

/// {@category Enum}
class ASM_DISPLAY_FLAGS {
  static const ASM_DISPLAYF_VERSION = 0x00000001;
  static const ASM_DISPLAYF_CULTURE = 0x00000002;
  static const ASM_DISPLAYF_PUBLIC_KEY_TOKEN = 0x00000004;
  static const ASM_DISPLAYF_PUBLIC_KEY = 0x00000008;
  static const ASM_DISPLAYF_CUSTOM = 0x00000010;
  static const ASM_DISPLAYF_PROCESSORARCHITECTURE = 0x00000020;
  static const ASM_DISPLAYF_LANGUAGEID = 0x00000040;
}

/// {@category Enum}
class ASM_NAME {
  static const ASM_NAME_PUBLIC_KEY = 0x00000000;
  static const ASM_NAME_PUBLIC_KEY_TOKEN = 0x00000001;
  static const ASM_NAME_HASH_VALUE = 0x00000002;
  static const ASM_NAME_NAME = 0x00000003;
  static const ASM_NAME_MAJOR_VERSION = 0x00000004;
  static const ASM_NAME_MINOR_VERSION = 0x00000005;
  static const ASM_NAME_BUILD_NUMBER = 0x00000006;
  static const ASM_NAME_REVISION_NUMBER = 0x00000007;
  static const ASM_NAME_CULTURE = 0x00000008;
  static const ASM_NAME_PROCESSOR_ID_ARRAY = 0x00000009;
  static const ASM_NAME_OSINFO_ARRAY = 0x0000000a;
  static const ASM_NAME_HASH_ALGID = 0x0000000b;
  static const ASM_NAME_ALIAS = 0x0000000c;
  static const ASM_NAME_CODEBASE_URL = 0x0000000d;
  static const ASM_NAME_CODEBASE_LASTMOD = 0x0000000e;
  static const ASM_NAME_NULL_PUBLIC_KEY = 0x0000000f;
  static const ASM_NAME_NULL_PUBLIC_KEY_TOKEN = 0x00000010;
  static const ASM_NAME_CUSTOM = 0x00000011;
  static const ASM_NAME_NULL_CUSTOM = 0x00000012;
  static const ASM_NAME_MVID = 0x00000013;
  static const ASM_NAME_MAX_PARAMS = 0x00000014;
}

/// {@category Enum}
class CREATE_ASM_NAME_OBJ_FLAGS {
  static const CANOF_PARSE_DISPLAY_NAME = 0x00000001;
  static const CANOF_SET_DEFAULT_VALUES = 0x00000002;
}

/// {@category Enum}
class IASSEMBLYCACHE_UNINSTALL_DISPOSITION {
  static const IASSEMBLYCACHE_UNINSTALL_DISPOSITION_UNINSTALLED = 0x00000001;
  static const IASSEMBLYCACHE_UNINSTALL_DISPOSITION_STILL_IN_USE = 0x00000002;
  static const IASSEMBLYCACHE_UNINSTALL_DISPOSITION_ALREADY_UNINSTALLED =
      0x00000003;
  static const IASSEMBLYCACHE_UNINSTALL_DISPOSITION_DELETE_PENDING = 0x00000004;
}

/// {@category Enum}
class INSTALLFEATUREATTRIBUTE {
  static const INSTALLFEATUREATTRIBUTE_FAVORLOCAL = 0x00000001;
  static const INSTALLFEATUREATTRIBUTE_FAVORSOURCE = 0x00000002;
  static const INSTALLFEATUREATTRIBUTE_FOLLOWPARENT = 0x00000004;
  static const INSTALLFEATUREATTRIBUTE_FAVORADVERTISE = 0x00000008;
  static const INSTALLFEATUREATTRIBUTE_DISALLOWADVERTISE = 0x00000010;
  static const INSTALLFEATUREATTRIBUTE_NOUNSUPPORTEDADVERTISE = 0x00000020;
}

/// {@category Enum}
class INSTALLLEVEL {
  static const INSTALLLEVEL_DEFAULT = 0x00000000;
  static const INSTALLLEVEL_MINIMUM = 0x00000001;
  static const INSTALLLEVEL_MAXIMUM = 0x0000ffff;
}

/// {@category Enum}
class INSTALLLOGATTRIBUTES {
  static const INSTALLLOGATTRIBUTES_APPEND = 0x00000001;
  static const INSTALLLOGATTRIBUTES_FLUSHEACHLINE = 0x00000002;
}

/// {@category Enum}
class INSTALLMESSAGE {
  static const INSTALLMESSAGE_FATALEXIT = 0x00000000;
  static const INSTALLMESSAGE_ERROR = 0x01000000;
  static const INSTALLMESSAGE_WARNING = 0x02000000;
  static const INSTALLMESSAGE_USER = 0x03000000;
  static const INSTALLMESSAGE_INFO = 0x04000000;
  static const INSTALLMESSAGE_FILESINUSE = 0x05000000;
  static const INSTALLMESSAGE_RESOLVESOURCE = 0x06000000;
  static const INSTALLMESSAGE_OUTOFDISKSPACE = 0x07000000;
  static const INSTALLMESSAGE_ACTIONSTART = 0x08000000;
  static const INSTALLMESSAGE_ACTIONDATA = 0x09000000;
  static const INSTALLMESSAGE_PROGRESS = 0x0a000000;
  static const INSTALLMESSAGE_COMMONDATA = 0x0b000000;
  static const INSTALLMESSAGE_INITIALIZE = 0x0c000000;
  static const INSTALLMESSAGE_TERMINATE = 0x0d000000;
  static const INSTALLMESSAGE_SHOWDIALOG = 0x0e000000;
  static const INSTALLMESSAGE_PERFORMANCE = 0x0f000000;
  static const INSTALLMESSAGE_RMFILESINUSE = 0x19000000;
  static const INSTALLMESSAGE_INSTALLSTART = 0x1a000000;
  static const INSTALLMESSAGE_INSTALLEND = 0x1b000000;
}

/// {@category Enum}
class INSTALLMODE {
  static const INSTALLMODE_NODETECTION_ANY = 0xfffffffc;
  static const INSTALLMODE_NOSOURCERESOLUTION = 0xfffffffd;
  static const INSTALLMODE_NODETECTION = 0xfffffffe;
  static const INSTALLMODE_EXISTING = 0xffffffff;
  static const INSTALLMODE_DEFAULT = 0x00000000;
}

/// {@category Enum}
class INSTALLOGMODE {
  static const INSTALLLOGMODE_FATALEXIT = 0x00000001;
  static const INSTALLLOGMODE_ERROR = 0x00000002;
  static const INSTALLLOGMODE_WARNING = 0x00000004;
  static const INSTALLLOGMODE_USER = 0x00000008;
  static const INSTALLLOGMODE_INFO = 0x00000010;
  static const INSTALLLOGMODE_RESOLVESOURCE = 0x00000040;
  static const INSTALLLOGMODE_OUTOFDISKSPACE = 0x00000080;
  static const INSTALLLOGMODE_ACTIONSTART = 0x00000100;
  static const INSTALLLOGMODE_ACTIONDATA = 0x00000200;
  static const INSTALLLOGMODE_COMMONDATA = 0x00000800;
  static const INSTALLLOGMODE_PROPERTYDUMP = 0x00000400;
  static const INSTALLLOGMODE_VERBOSE = 0x00001000;
  static const INSTALLLOGMODE_EXTRADEBUG = 0x00002000;
  static const INSTALLLOGMODE_LOGONLYONERROR = 0x00004000;
  static const INSTALLLOGMODE_LOGPERFORMANCE = 0x00008000;
  static const INSTALLLOGMODE_PROGRESS = 0x00000400;
  static const INSTALLLOGMODE_INITIALIZE = 0x00001000;
  static const INSTALLLOGMODE_TERMINATE = 0x00002000;
  static const INSTALLLOGMODE_SHOWDIALOG = 0x00004000;
  static const INSTALLLOGMODE_FILESINUSE = 0x00000020;
  static const INSTALLLOGMODE_RMFILESINUSE = 0x02000000;
  static const INSTALLLOGMODE_INSTALLSTART = 0x04000000;
  static const INSTALLLOGMODE_INSTALLEND = 0x08000000;
}

/// {@category Enum}
class INSTALLSTATE {
  static const INSTALLSTATE_NOTUSED = 0xfffffff9;
  static const INSTALLSTATE_BADCONFIG = 0xfffffffa;
  static const INSTALLSTATE_INCOMPLETE = 0xfffffffb;
  static const INSTALLSTATE_SOURCEABSENT = 0xfffffffc;
  static const INSTALLSTATE_MOREDATA = 0xfffffffd;
  static const INSTALLSTATE_INVALIDARG = 0xfffffffe;
  static const INSTALLSTATE_UNKNOWN = 0xffffffff;
  static const INSTALLSTATE_BROKEN = 0x00000000;
  static const INSTALLSTATE_ADVERTISED = 0x00000001;
  static const INSTALLSTATE_REMOVED = 0x00000001;
  static const INSTALLSTATE_ABSENT = 0x00000002;
  static const INSTALLSTATE_LOCAL = 0x00000003;
  static const INSTALLSTATE_SOURCE = 0x00000004;
  static const INSTALLSTATE_DEFAULT = 0x00000005;
}

/// {@category Enum}
class INSTALLTYPE {
  static const INSTALLTYPE_DEFAULT = 0x00000000;
  static const INSTALLTYPE_NETWORK_IMAGE = 0x00000001;
  static const INSTALLTYPE_SINGLE_INSTANCE = 0x00000002;
}

/// {@category Enum}
class INSTALLUILEVEL {
  static const INSTALLUILEVEL_NOCHANGE = 0x00000000;
  static const INSTALLUILEVEL_DEFAULT = 0x00000001;
  static const INSTALLUILEVEL_NONE = 0x00000002;
  static const INSTALLUILEVEL_BASIC = 0x00000003;
  static const INSTALLUILEVEL_REDUCED = 0x00000004;
  static const INSTALLUILEVEL_FULL = 0x00000005;
  static const INSTALLUILEVEL_ENDDIALOG = 0x00000080;
  static const INSTALLUILEVEL_PROGRESSONLY = 0x00000040;
  static const INSTALLUILEVEL_HIDECANCEL = 0x00000020;
  static const INSTALLUILEVEL_SOURCERESONLY = 0x00000100;
  static const INSTALLUILEVEL_UACONLY = 0x00000200;
}

/// {@category Enum}
class MSIADVERTISEOPTIONFLAGS {
  static const MSIADVERTISEOPTIONFLAGS_INSTANCE = 0x00000001;
}

/// {@category Enum}
class MSIARCHITECTUREFLAGS {
  static const MSIARCHITECTUREFLAGS_X86 = 0x00000001;
  static const MSIARCHITECTUREFLAGS_IA64 = 0x00000002;
  static const MSIARCHITECTUREFLAGS_AMD64 = 0x00000004;
  static const MSIARCHITECTUREFLAGS_ARM = 0x00000008;
}

/// {@category Enum}
class MSIASSEMBLYINFO {
  static const MSIASSEMBLYINFO_NETASSEMBLY = 0x00000000;
  static const MSIASSEMBLYINFO_WIN32ASSEMBLY = 0x00000001;
}

/// {@category Enum}
class MSICODE {
  static const MSICODE_PRODUCT = 0x00000000;
  static const MSICODE_PATCH = 0x40000000;
}

/// {@category Enum}
class MSICOLINFO {
  static const MSICOLINFO_NAMES = 0x00000000;
  static const MSICOLINFO_TYPES = 0x00000001;
}

/// {@category Enum}
class MSICONDITION {
  static const MSICONDITION_FALSE = 0x00000000;
  static const MSICONDITION_TRUE = 0x00000001;
  static const MSICONDITION_NONE = 0x00000002;
  static const MSICONDITION_ERROR = 0x00000003;
}

/// {@category Enum}
class MSICOSTTREE {
  static const MSICOSTTREE_SELFONLY = 0x00000000;
  static const MSICOSTTREE_CHILDREN = 0x00000001;
  static const MSICOSTTREE_PARENTS = 0x00000002;
  static const MSICOSTTREE_RESERVED = 0x00000003;
}

/// {@category Enum}
class MSIDBERROR {
  static const MSIDBERROR_INVALIDARG = 0xfffffffd;
  static const MSIDBERROR_MOREDATA = 0xfffffffe;
  static const MSIDBERROR_FUNCTIONERROR = 0xffffffff;
  static const MSIDBERROR_NOERROR = 0x00000000;
  static const MSIDBERROR_DUPLICATEKEY = 0x00000001;
  static const MSIDBERROR_REQUIRED = 0x00000002;
  static const MSIDBERROR_BADLINK = 0x00000003;
  static const MSIDBERROR_OVERFLOW = 0x00000004;
  static const MSIDBERROR_UNDERFLOW = 0x00000005;
  static const MSIDBERROR_NOTINSET = 0x00000006;
  static const MSIDBERROR_BADVERSION = 0x00000007;
  static const MSIDBERROR_BADCASE = 0x00000008;
  static const MSIDBERROR_BADGUID = 0x00000009;
  static const MSIDBERROR_BADWILDCARD = 0x0000000a;
  static const MSIDBERROR_BADIDENTIFIER = 0x0000000b;
  static const MSIDBERROR_BADLANGUAGE = 0x0000000c;
  static const MSIDBERROR_BADFILENAME = 0x0000000d;
  static const MSIDBERROR_BADPATH = 0x0000000e;
  static const MSIDBERROR_BADCONDITION = 0x0000000f;
  static const MSIDBERROR_BADFORMATTED = 0x00000010;
  static const MSIDBERROR_BADTEMPLATE = 0x00000011;
  static const MSIDBERROR_BADDEFAULTDIR = 0x00000012;
  static const MSIDBERROR_BADREGPATH = 0x00000013;
  static const MSIDBERROR_BADCUSTOMSOURCE = 0x00000014;
  static const MSIDBERROR_BADPROPERTY = 0x00000015;
  static const MSIDBERROR_MISSINGDATA = 0x00000016;
  static const MSIDBERROR_BADCATEGORY = 0x00000017;
  static const MSIDBERROR_BADKEYTABLE = 0x00000018;
  static const MSIDBERROR_BADMAXMINVALUES = 0x00000019;
  static const MSIDBERROR_BADCABINET = 0x0000001a;
  static const MSIDBERROR_BADSHORTCUT = 0x0000001b;
  static const MSIDBERROR_STRINGOVERFLOW = 0x0000001c;
  static const MSIDBERROR_BADLOCALIZEATTRIB = 0x0000001d;
}

/// {@category Enum}
class MSIDBSTATE {
  static const MSIDBSTATE_ERROR = 0xffffffff;
  static const MSIDBSTATE_READ = 0x00000000;
  static const MSIDBSTATE_WRITE = 0x00000001;
}

/// {@category Enum}
class MSIINSTALLCONTEXT {
  static const MSIINSTALLCONTEXT_FIRSTVISIBLE = 0x00000000;
  static const MSIINSTALLCONTEXT_NONE = 0x00000000;
  static const MSIINSTALLCONTEXT_USERMANAGED = 0x00000001;
  static const MSIINSTALLCONTEXT_USERUNMANAGED = 0x00000002;
  static const MSIINSTALLCONTEXT_MACHINE = 0x00000004;
  static const MSIINSTALLCONTEXT_ALL = 0x00000007;
  static const MSIINSTALLCONTEXT_ALLUSERMANAGED = 0x00000008;
}

/// {@category Enum}
class MSIMODIFY {
  static const MSIMODIFY_SEEK = 0xffffffff;
  static const MSIMODIFY_REFRESH = 0x00000000;
  static const MSIMODIFY_INSERT = 0x00000001;
  static const MSIMODIFY_UPDATE = 0x00000002;
  static const MSIMODIFY_ASSIGN = 0x00000003;
  static const MSIMODIFY_REPLACE = 0x00000004;
  static const MSIMODIFY_MERGE = 0x00000005;
  static const MSIMODIFY_DELETE = 0x00000006;
  static const MSIMODIFY_INSERT_TEMPORARY = 0x00000007;
  static const MSIMODIFY_VALIDATE = 0x00000008;
  static const MSIMODIFY_VALIDATE_NEW = 0x00000009;
  static const MSIMODIFY_VALIDATE_FIELD = 0x0000000a;
  static const MSIMODIFY_VALIDATE_DELETE = 0x0000000b;
}

/// {@category Enum}
class MSIOPENPACKAGEFLAGS {
  static const MSIOPENPACKAGEFLAGS_IGNOREMACHINESTATE = 0x00000001;
}

/// {@category Enum}
class MSIPATCHDATATYPE {
  static const MSIPATCH_DATATYPE_PATCHFILE = 0x00000000;
  static const MSIPATCH_DATATYPE_XMLPATH = 0x00000001;
  static const MSIPATCH_DATATYPE_XMLBLOB = 0x00000002;
}

/// {@category Enum}
class MSIPATCHSTATE {
  static const MSIPATCHSTATE_INVALID = 0x00000000;
  static const MSIPATCHSTATE_APPLIED = 0x00000001;
  static const MSIPATCHSTATE_SUPERSEDED = 0x00000002;
  static const MSIPATCHSTATE_OBSOLETED = 0x00000004;
  static const MSIPATCHSTATE_REGISTERED = 0x00000008;
  static const MSIPATCHSTATE_ALL = 0x0000000f;
}

/// {@category Enum}
class MSIRUNMODE {
  static const MSIRUNMODE_ADMIN = 0x00000000;
  static const MSIRUNMODE_ADVERTISE = 0x00000001;
  static const MSIRUNMODE_MAINTENANCE = 0x00000002;
  static const MSIRUNMODE_ROLLBACKENABLED = 0x00000003;
  static const MSIRUNMODE_LOGENABLED = 0x00000004;
  static const MSIRUNMODE_OPERATIONS = 0x00000005;
  static const MSIRUNMODE_REBOOTATEND = 0x00000006;
  static const MSIRUNMODE_REBOOTNOW = 0x00000007;
  static const MSIRUNMODE_CABINET = 0x00000008;
  static const MSIRUNMODE_SOURCESHORTNAMES = 0x00000009;
  static const MSIRUNMODE_TARGETSHORTNAMES = 0x0000000a;
  static const MSIRUNMODE_RESERVED11 = 0x0000000b;
  static const MSIRUNMODE_WINDOWS9X = 0x0000000c;
  static const MSIRUNMODE_ZAWENABLED = 0x0000000d;
  static const MSIRUNMODE_RESERVED14 = 0x0000000e;
  static const MSIRUNMODE_RESERVED15 = 0x0000000f;
  static const MSIRUNMODE_SCHEDULED = 0x00000010;
  static const MSIRUNMODE_ROLLBACK = 0x00000011;
  static const MSIRUNMODE_COMMIT = 0x00000012;
}

/// {@category Enum}
class MSISOURCETYPE {
  static const MSISOURCETYPE_UNKNOWN = 0x00000000;
  static const MSISOURCETYPE_NETWORK = 0x00000001;
  static const MSISOURCETYPE_URL = 0x00000002;
  static const MSISOURCETYPE_MEDIA = 0x00000004;
}

/// {@category Enum}
class MSITRANSACTION {
  static const MSITRANSACTION_CHAIN_EMBEDDEDUI = 0x00000001;
  static const MSITRANSACTION_JOIN_EXISTING_EMBEDDEDUI = 0x00000002;
}

/// {@category Enum}
class MSITRANSACTIONSTATE {
  static const MSITRANSACTIONSTATE_ROLLBACK = 0x00000000;
  static const MSITRANSACTIONSTATE_COMMIT = 0x00000001;
}

/// {@category Enum}
class MSITRANSFORM_ERROR {
  static const MSITRANSFORM_ERROR_ADDEXISTINGROW = 0x00000001;
  static const MSITRANSFORM_ERROR_DELMISSINGROW = 0x00000002;
  static const MSITRANSFORM_ERROR_ADDEXISTINGTABLE = 0x00000004;
  static const MSITRANSFORM_ERROR_DELMISSINGTABLE = 0x00000008;
  static const MSITRANSFORM_ERROR_UPDATEMISSINGROW = 0x00000010;
  static const MSITRANSFORM_ERROR_CHANGECODEPAGE = 0x00000020;
  static const MSITRANSFORM_ERROR_VIEWTRANSFORM = 0x00000100;
  static const MSITRANSFORM_ERROR_NONE = 0x00000000;
}

/// {@category Enum}
class MSITRANSFORM_VALIDATE {
  static const MSITRANSFORM_VALIDATE_LANGUAGE = 0x00000001;
  static const MSITRANSFORM_VALIDATE_PRODUCT = 0x00000002;
  static const MSITRANSFORM_VALIDATE_PLATFORM = 0x00000004;
  static const MSITRANSFORM_VALIDATE_MAJORVERSION = 0x00000008;
  static const MSITRANSFORM_VALIDATE_MINORVERSION = 0x00000010;
  static const MSITRANSFORM_VALIDATE_UPDATEVERSION = 0x00000020;
  static const MSITRANSFORM_VALIDATE_NEWLESSBASEVERSION = 0x00000040;
  static const MSITRANSFORM_VALIDATE_NEWLESSEQUALBASEVERSION = 0x00000080;
  static const MSITRANSFORM_VALIDATE_NEWEQUALBASEVERSION = 0x00000100;
  static const MSITRANSFORM_VALIDATE_NEWGREATEREQUALBASEVERSION = 0x00000200;
  static const MSITRANSFORM_VALIDATE_NEWGREATERBASEVERSION = 0x00000400;
  static const MSITRANSFORM_VALIDATE_UPGRADECODE = 0x00000800;
}

/// {@category Enum}
class PACKMAN_RUNTIME {
  static const PACKMAN_RUNTIME_NATIVE = 0x00000001;
  static const PACKMAN_RUNTIME_SILVERLIGHTMOBILE = 0x00000002;
  static const PACKMAN_RUNTIME_XNA = 0x00000003;
  static const PACKMAN_RUNTIME_MODERN_NATIVE = 0x00000004;
  static const PACKMAN_RUNTIME_JUPITER = 0x00000005;
  static const PACKMAN_RUNTIME_INVALID = 0x00000006;
}

/// {@category Enum}
class PM_ACTIVATION_POLICY {
  static const PM_ACTIVATION_POLICY_RESUME = 0x00000000;
  static const PM_ACTIVATION_POLICY_RESUMESAMEPARAMS = 0x00000001;
  static const PM_ACTIVATION_POLICY_REPLACE = 0x00000002;
  static const PM_ACTIVATION_POLICY_REPLACESAMEPARAMS = 0x00000003;
  static const PM_ACTIVATION_POLICY_MULTISESSION = 0x00000004;
  static const PM_ACTIVATION_POLICY_REPLACE_IGNOREFOREGROUND = 0x00000005;
  static const PM_ACTIVATION_POLICY_UNKNOWN = 0x00000006;
  static const PM_ACTIVATION_POLICY_INVALID = 0x00000007;
}

/// {@category Enum}
class PM_APPLICATION_HUBTYPE {
  static const PM_APPLICATION_HUBTYPE_NONMUSIC = 0x00000000;
  static const PM_APPLICATION_HUBTYPE_MUSIC = 0x00000001;
  static const PM_APPLICATION_HUBTYPE_INVALID = 0x00000002;
}

/// {@category Enum}
class PM_APPLICATION_INSTALL_TYPE {
  static const PM_APPLICATION_INSTALL_NORMAL = 0x00000000;
  static const PM_APPLICATION_INSTALL_IN_ROM = 0x00000001;
  static const PM_APPLICATION_INSTALL_PA = 0x00000002;
  static const PM_APPLICATION_INSTALL_DEBUG = 0x00000003;
  static const PM_APPLICATION_INSTALL_ENTERPRISE = 0x00000004;
  static const PM_APPLICATION_INSTALL_INVALID = 0x00000005;
}

/// {@category Enum}
class PM_APPLICATION_STATE {
  static const PM_APPLICATION_STATE_MIN = 0x00000000;
  static const PM_APPLICATION_STATE_INSTALLED = 0x00000001;
  static const PM_APPLICATION_STATE_INSTALLING = 0x00000002;
  static const PM_APPLICATION_STATE_UPDATING = 0x00000003;
  static const PM_APPLICATION_STATE_UNINSTALLING = 0x00000004;
  static const PM_APPLICATION_STATE_LICENSE_UPDATING = 0x00000005;
  static const PM_APPLICATION_STATE_MOVING = 0x00000006;
  static const PM_APPLICATION_STATE_DISABLED_SD_CARD = 0x00000007;
  static const PM_APPLICATION_STATE_DISABLED_ENTERPRISE = 0x00000008;
  static const PM_APPLICATION_STATE_DISABLED_BACKING_UP = 0x00000009;
  static const PM_APPLICATION_STATE_DISABLED_MDIL_BINDING = 0x0000000a;
  static const PM_APPLICATION_STATE_MAX = 0x0000000a;
  static const PM_APPLICATION_STATE_INVALID = 0x0000000b;
}

/// {@category Enum}
class PM_APP_GENRE {
  static const PM_APP_GENRE_GAMES = 0x00000000;
  static const PM_APP_GENRE_OTHER = 0x00000001;
  static const PM_APP_GENRE_INVALID = 0x00000002;
}

/// {@category Enum}
class PM_ENUM_APP_FILTER {
  static const PM_APP_FILTER_ALL = 0x00000000;
  static const PM_APP_FILTER_VISIBLE = 0x00000001;
  static const PM_APP_FILTER_GENRE = 0x00000002;
  static const PM_APP_FILTER_NONGAMES = 0x00000003;
  static const PM_APP_FILTER_HUBTYPE = 0x00000004;
  static const PM_APP_FILTER_PINABLEONKIDZONE = 0x00000005;
  static const PM_APP_FILTER_ALL_INCLUDE_MODERN = 0x00000006;
  static const PM_APP_FILTER_FRAMEWORK = 0x00000007;
  static const PM_APP_FILTER_MAX = 0x00000008;
}

/// {@category Enum}
class PM_ENUM_BSA_FILTER {
  static const PM_ENUM_BSA_FILTER_ALL = 0x0000001a;
  static const PM_ENUM_BSA_FILTER_BY_TASKID = 0x0000001b;
  static const PM_ENUM_BSA_FILTER_BY_PRODUCTID = 0x0000001c;
  static const PM_ENUM_BSA_FILTER_BY_PERIODIC = 0x0000001d;
  static const PM_ENUM_BSA_FILTER_BY_ALL_LAUNCHONBOOT = 0x0000001e;
  static const PM_ENUM_BSA_FILTER_MAX = 0x0000001f;
}

/// {@category Enum}
class PM_ENUM_BW_FILTER {
  static const PM_ENUM_BW_FILTER_BOOTWORKER_ALL = 0x0000001f;
  static const PM_ENUM_BW_FILTER_BY_TASKID = 0x00000020;
  static const PM_ENUM_BW_FILTER_MAX = 0x00000021;
}

/// {@category Enum}
class PM_ENUM_EXTENSION_FILTER {
  static const PM_ENUM_EXTENSION_FILTER_BY_CONSUMER = 0x00000011;
  static const PM_ENUM_EXTENSION_FILTER_APPCONNECT = 0x00000011;
  static const PM_ENUM_EXTENSION_FILTER_PROTOCOL_ALL = 0x00000012;
  static const PM_ENUM_EXTENSION_FILTER_FTASSOC_FILETYPE_ALL = 0x00000013;
  static const PM_ENUM_EXTENSION_FILTER_FTASSOC_CONTENTTYPE_ALL = 0x00000014;
  static const PM_ENUM_EXTENSION_FILTER_FTASSOC_APPLICATION_ALL = 0x00000015;
  static const PM_ENUM_EXTENSION_FILTER_SHARETARGET_ALL = 0x00000016;
  static const PM_ENUM_EXTENSION_FILTER_FILEOPENPICKER_ALL = 0x00000017;
  static const PM_ENUM_EXTENSION_FILTER_FILESAVEPICKER_ALL = 0x00000018;
  static const PM_ENUM_EXTENSION_FILTER_CACHEDFILEUPDATER_ALL = 0x00000019;
  static const PM_ENUM_EXTENSION_FILTER_MAX = 0x0000001a;
}

/// {@category Enum}
class PM_ENUM_TASK_FILTER {
  static const PM_TASK_FILTER_APP_ALL = 0x0000000c;
  static const PM_TASK_FILTER_TASK_TYPE = 0x0000000d;
  static const PM_TASK_FILTER_DEHYD_SUPRESSING = 0x0000000e;
  static const PM_TASK_FILTER_APP_TASK_TYPE = 0x0000000f;
  static const PM_TASK_FILTER_BGEXECUTION = 0x00000010;
  static const PM_TASK_FILTER_MAX = 0x00000011;
}

/// {@category Enum}
class PM_ENUM_TILE_FILTER {
  static const PM_TILE_FILTER_APPLIST = 0x00000008;
  static const PM_TILE_FILTER_PINNED = 0x00000009;
  static const PM_TILE_FILTER_HUBTYPE = 0x0000000a;
  static const PM_TILE_FILTER_APP_ALL = 0x0000000b;
  static const PM_TILE_FILTER_MAX = 0x0000000c;
}

/// {@category Enum}
class PM_LIVETILE_RECURRENCE_TYPE {
  static const PM_LIVETILE_RECURRENCE_TYPE_INSTANT = 0x00000000;
  static const PM_LIVETILE_RECURRENCE_TYPE_ONETIME = 0x00000001;
  static const PM_LIVETILE_RECURRENCE_TYPE_INTERVAL = 0x00000002;
  static const PM_LIVETILE_RECURRENCE_TYPE_MAX = 0x00000002;
}

/// {@category Enum}
class PM_LOGO_SIZE {
  static const PM_LOGO_SIZE_SMALL = 0x00000000;
  static const PM_LOGO_SIZE_MEDIUM = 0x00000001;
  static const PM_LOGO_SIZE_LARGE = 0x00000002;
  static const PM_LOGO_SIZE_INVALID = 0x00000003;
}

/// {@category Enum}
class PM_STARTTILE_TYPE {
  static const PM_STARTTILE_TYPE_PRIMARY = 0x00000001;
  static const PM_STARTTILE_TYPE_SECONDARY = 0x00000002;
  static const PM_STARTTILE_TYPE_APPLIST = 0x00000003;
  static const PM_STARTTILE_TYPE_APPLISTPRIMARY = 0x00000004;
  static const PM_STARTTILE_TYPE_INVALID = 0x00000005;
}

/// {@category Enum}
class PM_TASK_TRANSITION {
  static const PM_TASK_TRANSITION_DEFAULT = 0x00000000;
  static const PM_TASK_TRANSITION_NONE = 0x00000001;
  static const PM_TASK_TRANSITION_TURNSTILE = 0x00000002;
  static const PM_TASK_TRANSITION_SLIDE = 0x00000003;
  static const PM_TASK_TRANSITION_SWIVEL = 0x00000004;
  static const PM_TASK_TRANSITION_READERBOARD = 0x00000005;
  static const PM_TASK_TRANSITION_CUSTOM = 0x00000006;
  static const PM_TASK_TRANSITION_INVALID = 0x00000007;
}

/// {@category Enum}
class PM_TASK_TYPE {
  static const PM_TASK_TYPE_NORMAL = 0x00000000;
  static const PM_TASK_TYPE_DEFAULT = 0x00000001;
  static const PM_TASK_TYPE_SETTINGS = 0x00000002;
  static const PM_TASK_TYPE_BACKGROUNDSERVICEAGENT = 0x00000003;
  static const PM_TASK_TYPE_BACKGROUNDWORKER = 0x00000004;
  static const PM_TASK_TYPE_INVALID = 0x00000005;
}

/// {@category Enum}
class PM_TILE_HUBTYPE {
  static const PM_TILE_HUBTYPE_MUSIC = 0x00000001;
  static const PM_TILE_HUBTYPE_MOSETTINGS = 0x10000000;
  static const PM_TILE_HUBTYPE_GAMES = 0x20000000;
  static const PM_TILE_HUBTYPE_APPLIST = 0x40000000;
  static const PM_TILE_HUBTYPE_STARTMENU = 0x80000000;
  static const PM_TILE_HUBTYPE_LOCKSCREEN = 0x01000000;
  static const PM_TILE_HUBTYPE_KIDZONE = 0x02000000;
  static const PM_TILE_HUBTYPE_CACHED = 0x04000000;
  static const PM_TILE_HUBTYPE_INVALID = 0x04000001;
}

/// {@category Enum}
class PM_TILE_SIZE {
  static const PM_TILE_SIZE_SMALL = 0x00000000;
  static const PM_TILE_SIZE_MEDIUM = 0x00000001;
  static const PM_TILE_SIZE_LARGE = 0x00000002;
  static const PM_TILE_SIZE_SQUARE310X310 = 0x00000003;
  static const PM_TILE_SIZE_TALL150X310 = 0x00000004;
  static const PM_TILE_SIZE_INVALID = 0x00000005;
}

/// {@category Enum}
class QUERYASMINFO_FLAGS {
  static const QUERYASMINFO_FLAG_VALIDATE = 0x00000001;
}

/// {@category Enum}
class REINSTALLMODE {
  static const REINSTALLMODE_REPAIR = 0x00000001;
  static const REINSTALLMODE_FILEMISSING = 0x00000002;
  static const REINSTALLMODE_FILEOLDERVERSION = 0x00000004;
  static const REINSTALLMODE_FILEEQUALVERSION = 0x00000008;
  static const REINSTALLMODE_FILEEXACT = 0x00000010;
  static const REINSTALLMODE_FILEVERIFY = 0x00000020;
  static const REINSTALLMODE_FILEREPLACE = 0x00000040;
  static const REINSTALLMODE_MACHINEDATA = 0x00000080;
  static const REINSTALLMODE_USERDATA = 0x00000100;
  static const REINSTALLMODE_SHORTCUT = 0x00000200;
  static const REINSTALLMODE_PACKAGE = 0x00000400;
}

/// {@category Enum}
class RESULTTYPES {
  static const ieUnknown = 0x00000000;
  static const ieError = 0x00000001;
  static const ieWarning = 0x00000002;
  static const ieInfo = 0x00000003;
}

/// {@category Enum}
class SCRIPTFLAGS {
  static const SCRIPTFLAGS_CACHEINFO = 0x00000001;
  static const SCRIPTFLAGS_SHORTCUTS = 0x00000004;
  static const SCRIPTFLAGS_MACHINEASSIGN = 0x00000008;
  static const SCRIPTFLAGS_REGDATA_CNFGINFO = 0x00000020;
  static const SCRIPTFLAGS_VALIDATE_TRANSFORMS_LIST = 0x00000040;
  static const SCRIPTFLAGS_REGDATA_CLASSINFO = 0x00000080;
  static const SCRIPTFLAGS_REGDATA_EXTENSIONINFO = 0x00000100;
  static const SCRIPTFLAGS_REGDATA_APPINFO = 0x00000180;
  static const SCRIPTFLAGS_REGDATA = 0x000001a0;
}

/// {@category Enum}
class STATUSTYPES {
  static const ieStatusGetCUB = 0x00000000;
  static const ieStatusICECount = 0x00000001;
  static const ieStatusMerge = 0x00000002;
  static const ieStatusSummaryInfo = 0x00000003;
  static const ieStatusCreateEngine = 0x00000004;
  static const ieStatusStarting = 0x00000005;
  static const ieStatusRunICE = 0x00000006;
  static const ieStatusShutdown = 0x00000007;
  static const ieStatusSuccess = 0x00000008;
  static const ieStatusFail = 0x00000009;
  static const ieStatusCancel = 0x0000000a;
}

/// {@category Enum}
class TILE_TEMPLATE_TYPE {
  static const TILE_TEMPLATE_INVALID = 0x00000000;
  static const TILE_TEMPLATE_FLIP = 0x00000005;
  static const TILE_TEMPLATE_DEEPLINK = 0x0000000d;
  static const TILE_TEMPLATE_CYCLE = 0x0000000e;
  static const TILE_TEMPLATE_METROCOUNT = 0x00000001;
  static const TILE_TEMPLATE_AGILESTORE = 0x00000002;
  static const TILE_TEMPLATE_GAMES = 0x00000003;
  static const TILE_TEMPLATE_CALENDAR = 0x00000004;
  static const TILE_TEMPLATE_MUSICVIDEO = 0x00000007;
  static const TILE_TEMPLATE_PEOPLE = 0x0000000a;
  static const TILE_TEMPLATE_CONTACT = 0x0000000b;
  static const TILE_TEMPLATE_GROUP = 0x0000000c;
  static const TILE_TEMPLATE_DEFAULT = 0x0000000f;
  static const TILE_TEMPLATE_BADGE = 0x00000010;
  static const TILE_TEMPLATE_BLOCK = 0x00000011;
  static const TILE_TEMPLATE_TEXT01 = 0x00000012;
  static const TILE_TEMPLATE_TEXT02 = 0x00000013;
  static const TILE_TEMPLATE_TEXT03 = 0x00000014;
  static const TILE_TEMPLATE_TEXT04 = 0x00000015;
  static const TILE_TEMPLATE_TEXT05 = 0x00000016;
  static const TILE_TEMPLATE_TEXT06 = 0x00000017;
  static const TILE_TEMPLATE_TEXT07 = 0x00000018;
  static const TILE_TEMPLATE_TEXT08 = 0x00000019;
  static const TILE_TEMPLATE_TEXT09 = 0x0000001a;
  static const TILE_TEMPLATE_TEXT10 = 0x0000001b;
  static const TILE_TEMPLATE_TEXT11 = 0x0000001c;
  static const TILE_TEMPLATE_IMAGE = 0x0000001d;
  static const TILE_TEMPLATE_IMAGECOLLECTION = 0x0000001e;
  static const TILE_TEMPLATE_IMAGEANDTEXT01 = 0x0000001f;
  static const TILE_TEMPLATE_IMAGEANDTEXT02 = 0x00000020;
  static const TILE_TEMPLATE_BLOCKANDTEXT01 = 0x00000021;
  static const TILE_TEMPLATE_BLOCKANDTEXT02 = 0x00000022;
  static const TILE_TEMPLATE_PEEKIMAGEANDTEXT01 = 0x00000023;
  static const TILE_TEMPLATE_PEEKIMAGEANDTEXT02 = 0x00000024;
  static const TILE_TEMPLATE_PEEKIMAGEANDTEXT03 = 0x00000025;
  static const TILE_TEMPLATE_PEEKIMAGEANDTEXT04 = 0x00000026;
  static const TILE_TEMPLATE_PEEKIMAGE01 = 0x00000027;
  static const TILE_TEMPLATE_PEEKIMAGE02 = 0x00000028;
  static const TILE_TEMPLATE_PEEKIMAGE03 = 0x00000029;
  static const TILE_TEMPLATE_PEEKIMAGE04 = 0x0000002a;
  static const TILE_TEMPLATE_PEEKIMAGE05 = 0x0000002b;
  static const TILE_TEMPLATE_PEEKIMAGE06 = 0x0000002c;
  static const TILE_TEMPLATE_PEEKIMAGECOLLECTION01 = 0x0000002d;
  static const TILE_TEMPLATE_PEEKIMAGECOLLECTION02 = 0x0000002e;
  static const TILE_TEMPLATE_PEEKIMAGECOLLECTION03 = 0x0000002f;
  static const TILE_TEMPLATE_PEEKIMAGECOLLECTION04 = 0x00000030;
  static const TILE_TEMPLATE_PEEKIMAGECOLLECTION05 = 0x00000031;
  static const TILE_TEMPLATE_PEEKIMAGECOLLECTION06 = 0x00000032;
  static const TILE_TEMPLATE_SMALLIMAGEANDTEXT01 = 0x00000033;
  static const TILE_TEMPLATE_SMALLIMAGEANDTEXT02 = 0x00000034;
  static const TILE_TEMPLATE_SMALLIMAGEANDTEXT03 = 0x00000035;
  static const TILE_TEMPLATE_SMALLIMAGEANDTEXT04 = 0x00000036;
  static const TILE_TEMPLATE_SMALLIMAGEANDTEXT05 = 0x00000037;
  static const TILE_TEMPLATE_METROCOUNTQUEUE = 0x00000038;
  static const TILE_TEMPLATE_SEARCH = 0x00000039;
  static const TILE_TEMPLATE_TILEFLYOUT01 = 0x0000003a;
  static const TILE_TEMPLATE_FOLDER = 0x0000003b;
  static const TILE_TEMPLATE_ALL = 0x00000064;
}

/// {@category Enum}
class USERINFOSTATE {
  static const USERINFOSTATE_MOREDATA = 0xfffffffd;
  static const USERINFOSTATE_INVALIDARG = 0xfffffffe;
  static const USERINFOSTATE_UNKNOWN = 0xffffffff;
  static const USERINFOSTATE_ABSENT = 0x00000000;
  static const USERINFOSTATE_PRESENT = 0x00000001;
}

/// {@category Enum}
class msidbAssemblyAttributes {
  static const msidbAssemblyAttributesURT = 0x00000000;
  static const msidbAssemblyAttributesWin32 = 0x00000001;
}

/// {@category Enum}
class msidbClassAttributes {
  static const msidbClassAttributesRelativePath = 0x00000001;
}

/// {@category Enum}
class msidbComponentAttributes {
  static const msidbComponentAttributesLocalOnly = 0x00000000;
  static const msidbComponentAttributesSourceOnly = 0x00000001;
  static const msidbComponentAttributesOptional = 0x00000002;
  static const msidbComponentAttributesRegistryKeyPath = 0x00000004;
  static const msidbComponentAttributesSharedDllRefCount = 0x00000008;
  static const msidbComponentAttributesPermanent = 0x00000010;
  static const msidbComponentAttributesODBCDataSource = 0x00000020;
  static const msidbComponentAttributesTransitive = 0x00000040;
  static const msidbComponentAttributesNeverOverwrite = 0x00000080;
  static const msidbComponentAttributes64bit = 0x00000100;
  static const msidbComponentAttributesDisableRegistryReflection = 0x00000200;
  static const msidbComponentAttributesUninstallOnSupersedence = 0x00000400;
  static const msidbComponentAttributesShared = 0x00000800;
}

/// {@category Enum}
class msidbControlAttributes {
  static const msidbControlAttributesVisible = 0x00000001;
  static const msidbControlAttributesEnabled = 0x00000002;
  static const msidbControlAttributesSunken = 0x00000004;
  static const msidbControlAttributesIndirect = 0x00000008;
  static const msidbControlAttributesInteger = 0x00000010;
  static const msidbControlAttributesRTLRO = 0x00000020;
  static const msidbControlAttributesRightAligned = 0x00000040;
  static const msidbControlAttributesLeftScroll = 0x00000080;
  static const msidbControlAttributesBiDi = 0x000000e0;
  static const msidbControlAttributesTransparent = 0x00010000;
  static const msidbControlAttributesNoPrefix = 0x00020000;
  static const msidbControlAttributesNoWrap = 0x00040000;
  static const msidbControlAttributesFormatSize = 0x00080000;
  static const msidbControlAttributesUsersLanguage = 0x00100000;
  static const msidbControlAttributesMultiline = 0x00010000;
  static const msidbControlAttributesPasswordInput = 0x00200000;
  static const msidbControlAttributesProgress95 = 0x00010000;
  static const msidbControlAttributesRemovableVolume = 0x00010000;
  static const msidbControlAttributesFixedVolume = 0x00020000;
  static const msidbControlAttributesRemoteVolume = 0x00040000;
  static const msidbControlAttributesCDROMVolume = 0x00080000;
  static const msidbControlAttributesRAMDiskVolume = 0x00100000;
  static const msidbControlAttributesFloppyVolume = 0x00200000;
  static const msidbControlShowRollbackCost = 0x00400000;
  static const msidbControlAttributesSorted = 0x00010000;
  static const msidbControlAttributesComboList = 0x00020000;
  static const msidbControlAttributesImageHandle = 0x00010000;
  static const msidbControlAttributesPushLike = 0x00020000;
  static const msidbControlAttributesBitmap = 0x00040000;
  static const msidbControlAttributesIcon = 0x00080000;
  static const msidbControlAttributesFixedSize = 0x00100000;
  static const msidbControlAttributesIconSize16 = 0x00200000;
  static const msidbControlAttributesIconSize32 = 0x00400000;
  static const msidbControlAttributesIconSize48 = 0x00600000;
  static const msidbControlAttributesElevationShield = 0x00800000;
  static const msidbControlAttributesHasBorder = 0x01000000;
}

/// {@category Enum}
class msidbCustomActionType {
  static const msidbCustomActionTypeDll = 0x00000001;
  static const msidbCustomActionTypeExe = 0x00000002;
  static const msidbCustomActionTypeTextData = 0x00000003;
  static const msidbCustomActionTypeJScript = 0x00000005;
  static const msidbCustomActionTypeVBScript = 0x00000006;
  static const msidbCustomActionTypeInstall = 0x00000007;
  static const msidbCustomActionTypeBinaryData = 0x00000000;
  static const msidbCustomActionTypeSourceFile = 0x00000010;
  static const msidbCustomActionTypeDirectory = 0x00000020;
  static const msidbCustomActionTypeProperty = 0x00000030;
  static const msidbCustomActionTypeContinue = 0x00000040;
  static const msidbCustomActionTypeAsync = 0x00000080;
  static const msidbCustomActionTypeFirstSequence = 0x00000100;
  static const msidbCustomActionTypeOncePerProcess = 0x00000200;
  static const msidbCustomActionTypeClientRepeat = 0x00000300;
  static const msidbCustomActionTypeInScript = 0x00000400;
  static const msidbCustomActionTypeRollback = 0x00000100;
  static const msidbCustomActionTypeCommit = 0x00000200;
  static const msidbCustomActionTypeNoImpersonate = 0x00000800;
  static const msidbCustomActionTypeTSAware = 0x00004000;
  static const msidbCustomActionType64BitScript = 0x00001000;
  static const msidbCustomActionTypeHideTarget = 0x00002000;
  static const msidbCustomActionTypePatchUninstall = 0x00008000;
}

/// {@category Enum}
class msidbDialogAttributes {
  static const msidbDialogAttributesVisible = 0x00000001;
  static const msidbDialogAttributesModal = 0x00000002;
  static const msidbDialogAttributesMinimize = 0x00000004;
  static const msidbDialogAttributesSysModal = 0x00000008;
  static const msidbDialogAttributesKeepModeless = 0x00000010;
  static const msidbDialogAttributesTrackDiskSpace = 0x00000020;
  static const msidbDialogAttributesUseCustomPalette = 0x00000040;
  static const msidbDialogAttributesRTLRO = 0x00000080;
  static const msidbDialogAttributesRightAligned = 0x00000100;
  static const msidbDialogAttributesLeftScroll = 0x00000200;
  static const msidbDialogAttributesBiDi = 0x00000380;
  static const msidbDialogAttributesError = 0x00010000;
}

/// {@category Enum}
class msidbEmbeddedUIAttributes {
  static const msidbEmbeddedUI = 0x00000001;
  static const msidbEmbeddedHandlesBasic = 0x00000002;
}

/// {@category Enum}
class msidbFeatureAttributes {
  static const msidbFeatureAttributesFavorLocal = 0x00000000;
  static const msidbFeatureAttributesFavorSource = 0x00000001;
  static const msidbFeatureAttributesFollowParent = 0x00000002;
  static const msidbFeatureAttributesFavorAdvertise = 0x00000004;
  static const msidbFeatureAttributesDisallowAdvertise = 0x00000008;
  static const msidbFeatureAttributesUIDisallowAbsent = 0x00000010;
  static const msidbFeatureAttributesNoUnsupportedAdvertise = 0x00000020;
}

/// {@category Enum}
class msidbFileAttributes {
  static const msidbFileAttributesReadOnly = 0x00000001;
  static const msidbFileAttributesHidden = 0x00000002;
  static const msidbFileAttributesSystem = 0x00000004;
  static const msidbFileAttributesReserved0 = 0x00000008;
  static const msidbFileAttributesIsolatedComp = 0x00000010;
  static const msidbFileAttributesReserved1 = 0x00000040;
  static const msidbFileAttributesReserved2 = 0x00000080;
  static const msidbFileAttributesReserved3 = 0x00000100;
  static const msidbFileAttributesVital = 0x00000200;
  static const msidbFileAttributesChecksum = 0x00000400;
  static const msidbFileAttributesPatchAdded = 0x00001000;
  static const msidbFileAttributesNoncompressed = 0x00002000;
  static const msidbFileAttributesCompressed = 0x00004000;
  static const msidbFileAttributesReserved4 = 0x00008000;
}

/// {@category Enum}
class msidbIniFileAction {
  static const msidbIniFileActionAddLine = 0x00000000;
  static const msidbIniFileActionCreateLine = 0x00000001;
  static const msidbIniFileActionRemoveLine = 0x00000002;
  static const msidbIniFileActionAddTag = 0x00000003;
  static const msidbIniFileActionRemoveTag = 0x00000004;
}

/// {@category Enum}
class msidbLocatorType {
  static const msidbLocatorTypeDirectory = 0x00000000;
  static const msidbLocatorTypeFileName = 0x00000001;
  static const msidbLocatorTypeRawValue = 0x00000002;
  static const msidbLocatorType64bit = 0x00000010;
}

/// {@category Enum}
class msidbMoveFileOptions {
  static const msidbMoveFileOptionsMove = 0x00000001;
}

/// {@category Enum}
class msidbODBCDataSourceRegistration {
  static const msidbODBCDataSourceRegistrationPerMachine = 0x00000000;
  static const msidbODBCDataSourceRegistrationPerUser = 0x00000001;
}

/// {@category Enum}
class msidbPatchAttributes {
  static const msidbPatchAttributesNonVital = 0x00000001;
}

/// {@category Enum}
class msidbRegistryRoot {
  static const msidbRegistryRootClassesRoot = 0x00000000;
  static const msidbRegistryRootCurrentUser = 0x00000001;
  static const msidbRegistryRootLocalMachine = 0x00000002;
  static const msidbRegistryRootUsers = 0x00000003;
}

/// {@category Enum}
class msidbRemoveFileInstallMode {
  static const msidbRemoveFileInstallModeOnInstall = 0x00000001;
  static const msidbRemoveFileInstallModeOnRemove = 0x00000002;
  static const msidbRemoveFileInstallModeOnBoth = 0x00000003;
}

/// {@category Enum}
class msidbServiceConfigEvent {
  static const msidbServiceConfigEventInstall = 0x00000001;
  static const msidbServiceConfigEventUninstall = 0x00000002;
  static const msidbServiceConfigEventReinstall = 0x00000004;
}

/// {@category Enum}
class msidbServiceControlEvent {
  static const msidbServiceControlEventStart = 0x00000001;
  static const msidbServiceControlEventStop = 0x00000002;
  static const msidbServiceControlEventDelete = 0x00000008;
  static const msidbServiceControlEventUninstallStart = 0x00000010;
  static const msidbServiceControlEventUninstallStop = 0x00000020;
  static const msidbServiceControlEventUninstallDelete = 0x00000080;
}

/// {@category Enum}
class msidbServiceInstallErrorControl {
  static const msidbServiceInstallErrorControlVital = 0x00008000;
}

/// {@category Enum}
class msidbSumInfoSourceType {
  static const msidbSumInfoSourceTypeSFN = 0x00000001;
  static const msidbSumInfoSourceTypeCompressed = 0x00000002;
  static const msidbSumInfoSourceTypeAdminImage = 0x00000004;
  static const msidbSumInfoSourceTypeLUAPackage = 0x00000008;
}

/// {@category Enum}
class msidbTextStyleStyleBits {
  static const msidbTextStyleStyleBitsBold = 0x00000001;
  static const msidbTextStyleStyleBitsItalic = 0x00000002;
  static const msidbTextStyleStyleBitsUnderline = 0x00000004;
  static const msidbTextStyleStyleBitsStrike = 0x00000008;
}

/// {@category Enum}
class msidbUpgradeAttributes {
  static const msidbUpgradeAttributesMigrateFeatures = 0x00000001;
  static const msidbUpgradeAttributesOnlyDetect = 0x00000002;
  static const msidbUpgradeAttributesIgnoreRemoveFailure = 0x00000004;
  static const msidbUpgradeAttributesVersionMinInclusive = 0x00000100;
  static const msidbUpgradeAttributesVersionMaxInclusive = 0x00000200;
  static const msidbUpgradeAttributesLanguagesExclusive = 0x00000400;
}

/// {@category Enum}
class msifiFastInstallBits {
  static const msifiFastInstallNoSR = 0x00000001;
  static const msifiFastInstallQuickCosting = 0x00000002;
  static const msifiFastInstallLessPrgMsg = 0x00000004;
}

/// {@category Enum}
class msirbRebootReason {
  static const msirbRebootUndeterminedReason = 0x00000000;
  static const msirbRebootInUseFilesReason = 0x00000001;
  static const msirbRebootScheduleRebootReason = 0x00000002;
  static const msirbRebootForceRebootReason = 0x00000003;
  static const msirbRebootCustomActionReason = 0x00000004;
}

/// {@category Enum}
class msirbRebootType {
  static const msirbRebootImmediate = 0x00000001;
  static const msirbRebootDeferred = 0x00000002;
}

/// {@category Enum}
class msmErrorType {
  static const msmErrorLanguageUnsupported = 0x00000001;
  static const msmErrorLanguageFailed = 0x00000002;
  static const msmErrorExclusion = 0x00000003;
  static const msmErrorTableMerge = 0x00000004;
  static const msmErrorResequenceMerge = 0x00000005;
  static const msmErrorFileCreate = 0x00000006;
  static const msmErrorDirCreate = 0x00000007;
  static const msmErrorFeatureRequired = 0x00000008;
}
