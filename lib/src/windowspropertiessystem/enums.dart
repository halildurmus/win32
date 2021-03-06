/// {@category Enum}
class GETPROPERTYSTOREFLAGS {
  static const GPS_DEFAULT = 0x00000000;
  static const GPS_HANDLERPROPERTIESONLY = 0x00000001;
  static const GPS_READWRITE = 0x00000002;
  static const GPS_TEMPORARY = 0x00000004;
  static const GPS_FASTPROPERTIESONLY = 0x00000008;
  static const GPS_OPENSLOWITEM = 0x00000010;
  static const GPS_DELAYCREATION = 0x00000020;
  static const GPS_BESTEFFORT = 0x00000040;
  static const GPS_NO_OPLOCK = 0x00000080;
  static const GPS_PREFERQUERYPROPERTIES = 0x00000100;
  static const GPS_EXTRINSICPROPERTIES = 0x00000200;
  static const GPS_EXTRINSICPROPERTIESONLY = 0x00000400;
  static const GPS_VOLATILEPROPERTIES = 0x00000800;
  static const GPS_VOLATILEPROPERTIESONLY = 0x00001000;
  static const GPS_MASK_VALID = 0x00001fff;
}

/// {@category Enum}
class PKA_FLAGS {
  static const PKA_SET = 0x00000000;
  static const PKA_APPEND = 0x00000001;
  static const PKA_DELETE = 0x00000002;
}

/// {@category Enum}
class PSC_STATE {
  static const PSC_NORMAL = 0x00000000;
  static const PSC_NOTINSOURCE = 0x00000001;
  static const PSC_DIRTY = 0x00000002;
  static const PSC_READONLY = 0x00000003;
}

/// {@category Enum}
class PROPENUMTYPE {
  static const PET_DISCRETEVALUE = 0x00000000;
  static const PET_RANGEDVALUE = 0x00000001;
  static const PET_DEFAULTVALUE = 0x00000002;
  static const PET_ENDRANGE = 0x00000003;
}

/// {@category Enum}
class PROPDESC_TYPE_FLAGS {
  static const PDTF_DEFAULT = 0x00000000;
  static const PDTF_MULTIPLEVALUES = 0x00000001;
  static const PDTF_ISINNATE = 0x00000002;
  static const PDTF_ISGROUP = 0x00000004;
  static const PDTF_CANGROUPBY = 0x00000008;
  static const PDTF_CANSTACKBY = 0x00000010;
  static const PDTF_ISTREEPROPERTY = 0x00000020;
  static const PDTF_INCLUDEINFULLTEXTQUERY = 0x00000040;
  static const PDTF_ISVIEWABLE = 0x00000080;
  static const PDTF_ISQUERYABLE = 0x00000100;
  static const PDTF_CANBEPURGED = 0x00000200;
  static const PDTF_SEARCHRAWVALUE = 0x00000400;
  static const PDTF_DONTCOERCEEMPTYSTRINGS = 0x00000800;
  static const PDTF_ALWAYSINSUPPLEMENTALSTORE = 0x00001000;
  static const PDTF_ISSYSTEMPROPERTY = 0x80000000;
  static const PDTF_MASK_ALL = 0x80001fff;
}

/// {@category Enum}
class PROPDESC_VIEW_FLAGS {
  static const PDVF_DEFAULT = 0x00000000;
  static const PDVF_CENTERALIGN = 0x00000001;
  static const PDVF_RIGHTALIGN = 0x00000002;
  static const PDVF_BEGINNEWGROUP = 0x00000004;
  static const PDVF_FILLAREA = 0x00000008;
  static const PDVF_SORTDESCENDING = 0x00000010;
  static const PDVF_SHOWONLYIFPRESENT = 0x00000020;
  static const PDVF_SHOWBYDEFAULT = 0x00000040;
  static const PDVF_SHOWINPRIMARYLIST = 0x00000080;
  static const PDVF_SHOWINSECONDARYLIST = 0x00000100;
  static const PDVF_HIDELABEL = 0x00000200;
  static const PDVF_HIDDEN = 0x00000800;
  static const PDVF_CANWRAP = 0x00001000;
  static const PDVF_MASK_ALL = 0x00001bff;
}

/// {@category Enum}
class PROPDESC_DISPLAYTYPE {
  static const PDDT_STRING = 0x00000000;
  static const PDDT_NUMBER = 0x00000001;
  static const PDDT_BOOLEAN = 0x00000002;
  static const PDDT_DATETIME = 0x00000003;
  static const PDDT_ENUMERATED = 0x00000004;
}

/// {@category Enum}
class PROPDESC_GROUPING_RANGE {
  static const PDGR_DISCRETE = 0x00000000;
  static const PDGR_ALPHANUMERIC = 0x00000001;
  static const PDGR_SIZE = 0x00000002;
  static const PDGR_DYNAMIC = 0x00000003;
  static const PDGR_DATE = 0x00000004;
  static const PDGR_PERCENT = 0x00000005;
  static const PDGR_ENUMERATED = 0x00000006;
}

/// {@category Enum}
class PROPDESC_FORMAT_FLAGS {
  static const PDFF_DEFAULT = 0x00000000;
  static const PDFF_PREFIXNAME = 0x00000001;
  static const PDFF_FILENAME = 0x00000002;
  static const PDFF_ALWAYSKB = 0x00000004;
  static const PDFF_RESERVED_RIGHTTOLEFT = 0x00000008;
  static const PDFF_SHORTTIME = 0x00000010;
  static const PDFF_LONGTIME = 0x00000020;
  static const PDFF_HIDETIME = 0x00000040;
  static const PDFF_SHORTDATE = 0x00000080;
  static const PDFF_LONGDATE = 0x00000100;
  static const PDFF_HIDEDATE = 0x00000200;
  static const PDFF_RELATIVEDATE = 0x00000400;
  static const PDFF_USEEDITINVITATION = 0x00000800;
  static const PDFF_READONLY = 0x00001000;
  static const PDFF_NOAUTOREADINGORDER = 0x00002000;
}

/// {@category Enum}
class PROPDESC_SORTDESCRIPTION {
  static const PDSD_GENERAL = 0x00000000;
  static const PDSD_A_Z = 0x00000001;
  static const PDSD_LOWEST_HIGHEST = 0x00000002;
  static const PDSD_SMALLEST_BIGGEST = 0x00000003;
  static const PDSD_OLDEST_NEWEST = 0x00000004;
}

/// {@category Enum}
class PROPDESC_RELATIVEDESCRIPTION_TYPE {
  static const PDRDT_GENERAL = 0x00000000;
  static const PDRDT_DATE = 0x00000001;
  static const PDRDT_SIZE = 0x00000002;
  static const PDRDT_COUNT = 0x00000003;
  static const PDRDT_REVISION = 0x00000004;
  static const PDRDT_LENGTH = 0x00000005;
  static const PDRDT_DURATION = 0x00000006;
  static const PDRDT_SPEED = 0x00000007;
  static const PDRDT_RATE = 0x00000008;
  static const PDRDT_RATING = 0x00000009;
  static const PDRDT_PRIORITY = 0x0000000a;
}

/// {@category Enum}
class PROPDESC_AGGREGATION_TYPE {
  static const PDAT_DEFAULT = 0x00000000;
  static const PDAT_FIRST = 0x00000001;
  static const PDAT_SUM = 0x00000002;
  static const PDAT_AVERAGE = 0x00000003;
  static const PDAT_DATERANGE = 0x00000004;
  static const PDAT_UNION = 0x00000005;
  static const PDAT_MAX = 0x00000006;
  static const PDAT_MIN = 0x00000007;
}

/// {@category Enum}
class PROPDESC_CONDITION_TYPE {
  static const PDCOT_NONE = 0x00000000;
  static const PDCOT_STRING = 0x00000001;
  static const PDCOT_SIZE = 0x00000002;
  static const PDCOT_DATETIME = 0x00000003;
  static const PDCOT_BOOLEAN = 0x00000004;
  static const PDCOT_NUMBER = 0x00000005;
}

/// {@category Enum}
class PROPDESC_SEARCHINFO_FLAGS {
  static const PDSIF_DEFAULT = 0x00000000;
  static const PDSIF_ININVERTEDINDEX = 0x00000001;
  static const PDSIF_ISCOLUMN = 0x00000002;
  static const PDSIF_ISCOLUMNSPARSE = 0x00000004;
  static const PDSIF_ALWAYSINCLUDE = 0x00000008;
  static const PDSIF_USEFORTYPEAHEAD = 0x00000010;
}

/// {@category Enum}
class PROPDESC_COLUMNINDEX_TYPE {
  static const PDCIT_NONE = 0x00000000;
  static const PDCIT_ONDISK = 0x00000001;
  static const PDCIT_INMEMORY = 0x00000002;
  static const PDCIT_ONDEMAND = 0x00000003;
  static const PDCIT_ONDISKALL = 0x00000004;
  static const PDCIT_ONDISKVECTOR = 0x00000005;
}

/// {@category Enum}
class PROPDESC_ENUMFILTER {
  static const PDEF_ALL = 0x00000000;
  static const PDEF_SYSTEM = 0x00000001;
  static const PDEF_NONSYSTEM = 0x00000002;
  static const PDEF_VIEWABLE = 0x00000003;
  static const PDEF_QUERYABLE = 0x00000004;
  static const PDEF_INFULLTEXTQUERY = 0x00000005;
  static const PDEF_COLUMN = 0x00000006;
}

/// {@category Enum}
class PERSIST_SPROPSTORE_FLAGS {
  static const FPSPS_DEFAULT = 0x00000000;
  static const FPSPS_READONLY = 0x00000001;
  static const FPSPS_TREAT_NEW_VALUES_AS_DIRTY = 0x00000002;
}

/// {@category Enum}
class tagPSTIME_FLAGS {
  static const PSTF_UTC = 0x00000000;
  static const PSTF_LOCAL = 0x00000001;
}

/// {@category Enum}
class PROPVAR_COMPARE_UNIT {
  static const PVCU_DEFAULT = 0x00000000;
  static const PVCU_SECOND = 0x00000001;
  static const PVCU_MINUTE = 0x00000002;
  static const PVCU_HOUR = 0x00000003;
  static const PVCU_DAY = 0x00000004;
  static const PVCU_MONTH = 0x00000005;
  static const PVCU_YEAR = 0x00000006;
}

/// {@category Enum}
class tagPROPVAR_COMPARE_FLAGS {
  static const PVCF_DEFAULT = 0x00000000;
  static const PVCF_TREATEMPTYASGREATERTHAN = 0x00000001;
  static const PVCF_USESTRCMP = 0x00000002;
  static const PVCF_USESTRCMPC = 0x00000004;
  static const PVCF_USESTRCMPI = 0x00000008;
  static const PVCF_USESTRCMPIC = 0x00000010;
  static const PVCF_DIGITSASNUMBERS_CASESENSITIVE = 0x00000020;
}

/// {@category Enum}
class tagPROPVAR_CHANGE_FLAGS {
  static const PVCHF_DEFAULT = 0x00000000;
  static const PVCHF_NOVALUEPROP = 0x00000001;
  static const PVCHF_ALPHABOOL = 0x00000002;
  static const PVCHF_NOUSEROVERRIDE = 0x00000004;
  static const PVCHF_LOCALBOOL = 0x00000008;
  static const PVCHF_NOHEXSTRING = 0x00000010;
}

/// {@category Enum}
class DRAWPROGRESSFLAGS {
  static const DPF_NONE = 0x00000000;
  static const DPF_MARQUEE = 0x00000001;
  static const DPF_MARQUEE_COMPLETE = 0x00000002;
  static const DPF_ERROR = 0x00000004;
  static const DPF_WARNING = 0x00000008;
  static const DPF_STOPPED = 0x00000010;
}

/// {@category Enum}
class SYNC_TRANSFER_STATUS {
  static const STS_NONE = 0x00000000;
  static const STS_NEEDSUPLOAD = 0x00000001;
  static const STS_NEEDSDOWNLOAD = 0x00000002;
  static const STS_TRANSFERRING = 0x00000004;
  static const STS_PAUSED = 0x00000008;
  static const STS_HASERROR = 0x00000010;
  static const STS_FETCHING_METADATA = 0x00000020;
  static const STS_USER_REQUESTED_REFRESH = 0x00000040;
  static const STS_HASWARNING = 0x00000080;
  static const STS_EXCLUDED = 0x00000100;
  static const STS_INCOMPLETE = 0x00000200;
  static const STS_PLACEHOLDER_IFEMPTY = 0x00000400;
}

/// {@category Enum}
class PLACEHOLDER_STATES {
  static const PS_NONE = 0x00000000;
  static const PS_MARKED_FOR_OFFLINE_AVAILABILITY = 0x00000001;
  static const PS_FULL_PRIMARY_STREAM_AVAILABLE = 0x00000002;
  static const PS_CREATE_FILE_ACCESSIBLE = 0x00000004;
  static const PS_CLOUDFILE_PLACEHOLDER = 0x00000008;
  static const PS_DEFAULT = 0x00000007;
  static const PS_ALL = 0x0000000f;
}

/// {@category Enum}
class PROPERTYUI_FLAGS {
  static const PUIF_DEFAULT = 0x00000000;
  static const PUIF_RIGHTALIGN = 0x00000001;
  static const PUIF_NOLABELININFOTIP = 0x00000002;
}

/// {@category Enum}
class PDOPSTATUS {
  static const PDOPS_RUNNING = 0x00000001;
  static const PDOPS_PAUSED = 0x00000002;
  static const PDOPS_CANCELLED = 0x00000003;
  static const PDOPS_STOPPED = 0x00000004;
  static const PDOPS_ERRORS = 0x00000005;
}

/// {@category Enum}
class SYNC_ENGINE_STATE_FLAGS {
  static const SESF_NONE = 0x00000000;
  static const SESF_SERVICE_QUOTA_NEARING_LIMIT = 0x00000001;
  static const SESF_SERVICE_QUOTA_EXCEEDED_LIMIT = 0x00000002;
  static const SESF_AUTHENTICATION_ERROR = 0x00000004;
  static const SESF_PAUSED_DUE_TO_METERED_NETWORK = 0x00000008;
  static const SESF_PAUSED_DUE_TO_DISK_SPACE_FULL = 0x00000010;
  static const SESF_PAUSED_DUE_TO_CLIENT_POLICY = 0x00000020;
  static const SESF_PAUSED_DUE_TO_SERVICE_POLICY = 0x00000040;
  static const SESF_SERVICE_UNAVAILABLE = 0x00000080;
  static const SESF_PAUSED_DUE_TO_USER_REQUEST = 0x00000100;
  static const SESF_ALL_FLAGS = 0x000001ff;
}
