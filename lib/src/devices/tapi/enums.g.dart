/// {@category Enum}
class ACDGROUP_EVENT {
  static const ACDGE_NEW_GROUP = 0x00000000;
  static const ACDGE_GROUP_REMOVED = 0x00000001;
}

/// {@category Enum}
class ACDQUEUE_EVENT {
  static const ACDQE_NEW_QUEUE = 0x00000000;
  static const ACDQE_QUEUE_REMOVED = 0x00000001;
}

/// {@category Enum}
class ADDRESS_CAPABILITY {
  static const AC_ADDRESSTYPES = 0x00000000;
  static const AC_BEARERMODES = 0x00000001;
  static const AC_MAXACTIVECALLS = 0x00000002;
  static const AC_MAXONHOLDCALLS = 0x00000003;
  static const AC_MAXONHOLDPENDINGCALLS = 0x00000004;
  static const AC_MAXNUMCONFERENCE = 0x00000005;
  static const AC_MAXNUMTRANSCONF = 0x00000006;
  static const AC_MONITORDIGITSUPPORT = 0x00000007;
  static const AC_GENERATEDIGITSUPPORT = 0x00000008;
  static const AC_GENERATETONEMODES = 0x00000009;
  static const AC_GENERATETONEMAXNUMFREQ = 0x0000000a;
  static const AC_MONITORTONEMAXNUMFREQ = 0x0000000b;
  static const AC_MONITORTONEMAXNUMENTRIES = 0x0000000c;
  static const AC_DEVCAPFLAGS = 0x0000000d;
  static const AC_ANSWERMODES = 0x0000000e;
  static const AC_LINEFEATURES = 0x0000000f;
  static const AC_SETTABLEDEVSTATUS = 0x00000010;
  static const AC_PARKSUPPORT = 0x00000011;
  static const AC_CALLERIDSUPPORT = 0x00000012;
  static const AC_CALLEDIDSUPPORT = 0x00000013;
  static const AC_CONNECTEDIDSUPPORT = 0x00000014;
  static const AC_REDIRECTIONIDSUPPORT = 0x00000015;
  static const AC_REDIRECTINGIDSUPPORT = 0x00000016;
  static const AC_ADDRESSCAPFLAGS = 0x00000017;
  static const AC_CALLFEATURES1 = 0x00000018;
  static const AC_CALLFEATURES2 = 0x00000019;
  static const AC_REMOVEFROMCONFCAPS = 0x0000001a;
  static const AC_REMOVEFROMCONFSTATE = 0x0000001b;
  static const AC_TRANSFERMODES = 0x0000001c;
  static const AC_ADDRESSFEATURES = 0x0000001d;
  static const AC_PREDICTIVEAUTOTRANSFERSTATES = 0x0000001e;
  static const AC_MAXCALLDATASIZE = 0x0000001f;
  static const AC_LINEID = 0x00000020;
  static const AC_ADDRESSID = 0x00000021;
  static const AC_FORWARDMODES = 0x00000022;
  static const AC_MAXFORWARDENTRIES = 0x00000023;
  static const AC_MAXSPECIFICENTRIES = 0x00000024;
  static const AC_MINFWDNUMRINGS = 0x00000025;
  static const AC_MAXFWDNUMRINGS = 0x00000026;
  static const AC_MAXCALLCOMPLETIONS = 0x00000027;
  static const AC_CALLCOMPLETIONCONDITIONS = 0x00000028;
  static const AC_CALLCOMPLETIONMODES = 0x00000029;
  static const AC_PERMANENTDEVICEID = 0x0000002a;
  static const AC_GATHERDIGITSMINTIMEOUT = 0x0000002b;
  static const AC_GATHERDIGITSMAXTIMEOUT = 0x0000002c;
  static const AC_GENERATEDIGITMINDURATION = 0x0000002d;
  static const AC_GENERATEDIGITMAXDURATION = 0x0000002e;
  static const AC_GENERATEDIGITDEFAULTDURATION = 0x0000002f;
}

/// {@category Enum}
class ADDRESS_CAPABILITY_STRING {
  static const ACS_PROTOCOL = 0x00000000;
  static const ACS_ADDRESSDEVICESPECIFIC = 0x00000001;
  static const ACS_LINEDEVICESPECIFIC = 0x00000002;
  static const ACS_PROVIDERSPECIFIC = 0x00000003;
  static const ACS_SWITCHSPECIFIC = 0x00000004;
  static const ACS_PERMANENTDEVICEGUID = 0x00000005;
}

/// {@category Enum}
class ADDRESS_EVENT {
  static const AE_STATE = 0x00000000;
  static const AE_CAPSCHANGE = 0x00000001;
  static const AE_RINGING = 0x00000002;
  static const AE_CONFIGCHANGE = 0x00000003;
  static const AE_FORWARD = 0x00000004;
  static const AE_NEWTERMINAL = 0x00000005;
  static const AE_REMOVETERMINAL = 0x00000006;
  static const AE_MSGWAITON = 0x00000007;
  static const AE_MSGWAITOFF = 0x00000008;
  static const AE_LASTITEM = 0x00000008;
}

/// {@category Enum}
class ADDRESS_STATE {
  static const AS_INSERVICE = 0x00000000;
  static const AS_OUTOFSERVICE = 0x00000001;
}

/// {@category Enum}
class AGENTHANDLER_EVENT {
  static const AHE_NEW_AGENTHANDLER = 0x00000000;
  static const AHE_AGENTHANDLER_REMOVED = 0x00000001;
}

/// {@category Enum}
class AGENT_EVENT {
  static const AE_NOT_READY = 0x00000000;
  static const AE_READY = 0x00000001;
  static const AE_BUSY_ACD = 0x00000002;
  static const AE_BUSY_INCOMING = 0x00000003;
  static const AE_BUSY_OUTGOING = 0x00000004;
  static const AE_UNKNOWN = 0x00000005;
}

/// {@category Enum}
class AGENT_SESSION_EVENT {
  static const ASE_NEW_SESSION = 0x00000000;
  static const ASE_NOT_READY = 0x00000001;
  static const ASE_READY = 0x00000002;
  static const ASE_BUSY = 0x00000003;
  static const ASE_WRAPUP = 0x00000004;
  static const ASE_END = 0x00000005;
}

/// {@category Enum}
class AGENT_SESSION_STATE {
  static const ASST_NOT_READY = 0x00000000;
  static const ASST_READY = 0x00000001;
  static const ASST_BUSY_ON_CALL = 0x00000002;
  static const ASST_BUSY_WRAPUP = 0x00000003;
  static const ASST_SESSION_ENDED = 0x00000004;
}

/// {@category Enum}
class AGENT_STATE {
  static const AS_NOT_READY = 0x00000000;
  static const AS_READY = 0x00000001;
  static const AS_BUSY_ACD = 0x00000002;
  static const AS_BUSY_INCOMING = 0x00000003;
  static const AS_BUSY_OUTGOING = 0x00000004;
  static const AS_UNKNOWN = 0x00000005;
}

/// {@category Enum}
class CALLHUB_EVENT {
  static const CHE_CALLJOIN = 0x00000000;
  static const CHE_CALLLEAVE = 0x00000001;
  static const CHE_CALLHUBNEW = 0x00000002;
  static const CHE_CALLHUBIDLE = 0x00000003;
  static const CHE_LASTITEM = 0x00000003;
}

/// {@category Enum}
class CALLHUB_STATE {
  static const CHS_ACTIVE = 0x00000000;
  static const CHS_IDLE = 0x00000001;
}

/// {@category Enum}
class CALLINFOCHANGE_CAUSE {
  static const CIC_OTHER = 0x00000000;
  static const CIC_DEVSPECIFIC = 0x00000001;
  static const CIC_BEARERMODE = 0x00000002;
  static const CIC_RATE = 0x00000003;
  static const CIC_APPSPECIFIC = 0x00000004;
  static const CIC_CALLID = 0x00000005;
  static const CIC_RELATEDCALLID = 0x00000006;
  static const CIC_ORIGIN = 0x00000007;
  static const CIC_REASON = 0x00000008;
  static const CIC_COMPLETIONID = 0x00000009;
  static const CIC_NUMOWNERINCR = 0x0000000a;
  static const CIC_NUMOWNERDECR = 0x0000000b;
  static const CIC_NUMMONITORS = 0x0000000c;
  static const CIC_TRUNK = 0x0000000d;
  static const CIC_CALLERID = 0x0000000e;
  static const CIC_CALLEDID = 0x0000000f;
  static const CIC_CONNECTEDID = 0x00000010;
  static const CIC_REDIRECTIONID = 0x00000011;
  static const CIC_REDIRECTINGID = 0x00000012;
  static const CIC_USERUSERINFO = 0x00000013;
  static const CIC_HIGHLEVELCOMP = 0x00000014;
  static const CIC_LOWLEVELCOMP = 0x00000015;
  static const CIC_CHARGINGINFO = 0x00000016;
  static const CIC_TREATMENT = 0x00000017;
  static const CIC_CALLDATA = 0x00000018;
  static const CIC_PRIVILEGE = 0x00000019;
  static const CIC_MEDIATYPE = 0x0000001a;
  static const CIC_LASTITEM = 0x0000001a;
}

/// {@category Enum}
class CALLINFO_BUFFER {
  static const CIB_USERUSERINFO = 0x00000000;
  static const CIB_DEVSPECIFICBUFFER = 0x00000001;
  static const CIB_CALLDATABUFFER = 0x00000002;
  static const CIB_CHARGINGINFOBUFFER = 0x00000003;
  static const CIB_HIGHLEVELCOMPATIBILITYBUFFER = 0x00000004;
  static const CIB_LOWLEVELCOMPATIBILITYBUFFER = 0x00000005;
}

/// {@category Enum}
class CALLINFO_LONG {
  static const CIL_MEDIATYPESAVAILABLE = 0x00000000;
  static const CIL_BEARERMODE = 0x00000001;
  static const CIL_CALLERIDADDRESSTYPE = 0x00000002;
  static const CIL_CALLEDIDADDRESSTYPE = 0x00000003;
  static const CIL_CONNECTEDIDADDRESSTYPE = 0x00000004;
  static const CIL_REDIRECTIONIDADDRESSTYPE = 0x00000005;
  static const CIL_REDIRECTINGIDADDRESSTYPE = 0x00000006;
  static const CIL_ORIGIN = 0x00000007;
  static const CIL_REASON = 0x00000008;
  static const CIL_APPSPECIFIC = 0x00000009;
  static const CIL_CALLPARAMSFLAGS = 0x0000000a;
  static const CIL_CALLTREATMENT = 0x0000000b;
  static const CIL_MINRATE = 0x0000000c;
  static const CIL_MAXRATE = 0x0000000d;
  static const CIL_COUNTRYCODE = 0x0000000e;
  static const CIL_CALLID = 0x0000000f;
  static const CIL_RELATEDCALLID = 0x00000010;
  static const CIL_COMPLETIONID = 0x00000011;
  static const CIL_NUMBEROFOWNERS = 0x00000012;
  static const CIL_NUMBEROFMONITORS = 0x00000013;
  static const CIL_TRUNK = 0x00000014;
  static const CIL_RATE = 0x00000015;
  static const CIL_GENERATEDIGITDURATION = 0x00000016;
  static const CIL_MONITORDIGITMODES = 0x00000017;
  static const CIL_MONITORMEDIAMODES = 0x00000018;
}

/// {@category Enum}
class CALLINFO_STRING {
  static const CIS_CALLERIDNAME = 0x00000000;
  static const CIS_CALLERIDNUMBER = 0x00000001;
  static const CIS_CALLEDIDNAME = 0x00000002;
  static const CIS_CALLEDIDNUMBER = 0x00000003;
  static const CIS_CONNECTEDIDNAME = 0x00000004;
  static const CIS_CONNECTEDIDNUMBER = 0x00000005;
  static const CIS_REDIRECTIONIDNAME = 0x00000006;
  static const CIS_REDIRECTIONIDNUMBER = 0x00000007;
  static const CIS_REDIRECTINGIDNAME = 0x00000008;
  static const CIS_REDIRECTINGIDNUMBER = 0x00000009;
  static const CIS_CALLEDPARTYFRIENDLYNAME = 0x0000000a;
  static const CIS_COMMENT = 0x0000000b;
  static const CIS_DISPLAYABLEADDRESS = 0x0000000c;
  static const CIS_CALLINGPARTYID = 0x0000000d;
}

/// {@category Enum}
class CALL_MEDIA_EVENT {
  static const CME_NEW_STREAM = 0x00000000;
  static const CME_STREAM_FAIL = 0x00000001;
  static const CME_TERMINAL_FAIL = 0x00000002;
  static const CME_STREAM_NOT_USED = 0x00000003;
  static const CME_STREAM_ACTIVE = 0x00000004;
  static const CME_STREAM_INACTIVE = 0x00000005;
  static const CME_LASTITEM = 0x00000005;
}

/// {@category Enum}
class CALL_MEDIA_EVENT_CAUSE {
  static const CMC_UNKNOWN = 0x00000000;
  static const CMC_BAD_DEVICE = 0x00000001;
  static const CMC_CONNECT_FAIL = 0x00000002;
  static const CMC_LOCAL_REQUEST = 0x00000003;
  static const CMC_REMOTE_REQUEST = 0x00000004;
  static const CMC_MEDIA_TIMEOUT = 0x00000005;
  static const CMC_MEDIA_RECOVERED = 0x00000006;
  static const CMC_QUALITY_OF_SERVICE = 0x00000007;
}

/// {@category Enum}
class CALL_NOTIFICATION_EVENT {
  static const CNE_OWNER = 0x00000000;
  static const CNE_MONITOR = 0x00000001;
  static const CNE_LASTITEM = 0x00000001;
}

/// {@category Enum}
class CALL_PRIVILEGE {
  static const CP_OWNER = 0x00000000;
  static const CP_MONITOR = 0x00000001;
}

/// {@category Enum}
class CALL_STATE {
  static const CS_IDLE = 0x00000000;
  static const CS_INPROGRESS = 0x00000001;
  static const CS_CONNECTED = 0x00000002;
  static const CS_DISCONNECTED = 0x00000003;
  static const CS_OFFERING = 0x00000004;
  static const CS_HOLD = 0x00000005;
  static const CS_QUEUED = 0x00000006;
  static const CS_LASTITEM = 0x00000006;
}

/// {@category Enum}
class CALL_STATE_EVENT_CAUSE {
  static const CEC_NONE = 0x00000000;
  static const CEC_DISCONNECT_NORMAL = 0x00000001;
  static const CEC_DISCONNECT_BUSY = 0x00000002;
  static const CEC_DISCONNECT_BADADDRESS = 0x00000003;
  static const CEC_DISCONNECT_NOANSWER = 0x00000004;
  static const CEC_DISCONNECT_CANCELLED = 0x00000005;
  static const CEC_DISCONNECT_REJECTED = 0x00000006;
  static const CEC_DISCONNECT_FAILED = 0x00000007;
  static const CEC_DISCONNECT_BLOCKED = 0x00000008;
}

/// {@category Enum}
class DIRECTORY_OBJECT_TYPE {
  static const OT_CONFERENCE = 0x00000001;
  static const OT_USER = 0x00000002;
}

/// {@category Enum}
class DIRECTORY_TYPE {
  static const DT_NTDS = 0x00000001;
  static const DT_ILS = 0x00000002;
}

/// {@category Enum}
class DISCONNECT_CODE {
  static const DC_NORMAL = 0x00000000;
  static const DC_NOANSWER = 0x00000001;
  static const DC_REJECTED = 0x00000002;
}

/// {@category Enum}
class FINISH_MODE {
  static const FM_ASTRANSFER = 0x00000000;
  static const FM_ASCONFERENCE = 0x00000001;
}

/// {@category Enum}
class FT_STATE_EVENT_CAUSE {
  static const FTEC_NORMAL = 0x00000000;
  static const FTEC_END_OF_FILE = 0x00000001;
  static const FTEC_READ_ERROR = 0x00000002;
  static const FTEC_WRITE_ERROR = 0x00000003;
}

/// {@category Enum}
class FULLDUPLEX_SUPPORT {
  static const FDS_SUPPORTED = 0x00000000;
  static const FDS_NOTSUPPORTED = 0x00000001;
  static const FDS_UNKNOWN = 0x00000002;
}

/// {@category Enum}
class MSP_ADDRESS_EVENT {
  static const ADDRESS_TERMINAL_AVAILABLE = 0x00000000;
  static const ADDRESS_TERMINAL_UNAVAILABLE = 0x00000001;
}

/// {@category Enum}
class MSP_CALL_EVENT {
  static const CALL_NEW_STREAM = 0x00000000;
  static const CALL_STREAM_FAIL = 0x00000001;
  static const CALL_TERMINAL_FAIL = 0x00000002;
  static const CALL_STREAM_NOT_USED = 0x00000003;
  static const CALL_STREAM_ACTIVE = 0x00000004;
  static const CALL_STREAM_INACTIVE = 0x00000005;
}

/// {@category Enum}
class MSP_CALL_EVENT_CAUSE {
  static const CALL_CAUSE_UNKNOWN = 0x00000000;
  static const CALL_CAUSE_BAD_DEVICE = 0x00000001;
  static const CALL_CAUSE_CONNECT_FAIL = 0x00000002;
  static const CALL_CAUSE_LOCAL_REQUEST = 0x00000003;
  static const CALL_CAUSE_REMOTE_REQUEST = 0x00000004;
  static const CALL_CAUSE_MEDIA_TIMEOUT = 0x00000005;
  static const CALL_CAUSE_MEDIA_RECOVERED = 0x00000006;
  static const CALL_CAUSE_QUALITY_OF_SERVICE = 0x00000007;
}

/// {@category Enum}
class MSP_EVENT {
  static const ME_ADDRESS_EVENT = 0x00000000;
  static const ME_CALL_EVENT = 0x00000001;
  static const ME_TSP_DATA = 0x00000002;
  static const ME_PRIVATE_EVENT = 0x00000003;
  static const ME_ASR_TERMINAL_EVENT = 0x00000004;
  static const ME_TTS_TERMINAL_EVENT = 0x00000005;
  static const ME_FILE_TERMINAL_EVENT = 0x00000006;
  static const ME_TONE_TERMINAL_EVENT = 0x00000007;
}

/// {@category Enum}
class PHONECAPS_BUFFER {
  static const PCB_DEVSPECIFICBUFFER = 0x00000000;
}

/// {@category Enum}
class PHONECAPS_LONG {
  static const PCL_HOOKSWITCHES = 0x00000000;
  static const PCL_HANDSETHOOKSWITCHMODES = 0x00000001;
  static const PCL_HEADSETHOOKSWITCHMODES = 0x00000002;
  static const PCL_SPEAKERPHONEHOOKSWITCHMODES = 0x00000003;
  static const PCL_DISPLAYNUMROWS = 0x00000004;
  static const PCL_DISPLAYNUMCOLUMNS = 0x00000005;
  static const PCL_NUMRINGMODES = 0x00000006;
  static const PCL_NUMBUTTONLAMPS = 0x00000007;
  static const PCL_GENERICPHONE = 0x00000008;
}

/// {@category Enum}
class PHONECAPS_STRING {
  static const PCS_PHONENAME = 0x00000000;
  static const PCS_PHONEINFO = 0x00000001;
  static const PCS_PROVIDERINFO = 0x00000002;
}

/// {@category Enum}
class PHONE_BUTTON_FUNCTION {
  static const PBF_UNKNOWN = 0x00000000;
  static const PBF_CONFERENCE = 0x00000001;
  static const PBF_TRANSFER = 0x00000002;
  static const PBF_DROP = 0x00000003;
  static const PBF_HOLD = 0x00000004;
  static const PBF_RECALL = 0x00000005;
  static const PBF_DISCONNECT = 0x00000006;
  static const PBF_CONNECT = 0x00000007;
  static const PBF_MSGWAITON = 0x00000008;
  static const PBF_MSGWAITOFF = 0x00000009;
  static const PBF_SELECTRING = 0x0000000a;
  static const PBF_ABBREVDIAL = 0x0000000b;
  static const PBF_FORWARD = 0x0000000c;
  static const PBF_PICKUP = 0x0000000d;
  static const PBF_RINGAGAIN = 0x0000000e;
  static const PBF_PARK = 0x0000000f;
  static const PBF_REJECT = 0x00000010;
  static const PBF_REDIRECT = 0x00000011;
  static const PBF_MUTE = 0x00000012;
  static const PBF_VOLUMEUP = 0x00000013;
  static const PBF_VOLUMEDOWN = 0x00000014;
  static const PBF_SPEAKERON = 0x00000015;
  static const PBF_SPEAKEROFF = 0x00000016;
  static const PBF_FLASH = 0x00000017;
  static const PBF_DATAON = 0x00000018;
  static const PBF_DATAOFF = 0x00000019;
  static const PBF_DONOTDISTURB = 0x0000001a;
  static const PBF_INTERCOM = 0x0000001b;
  static const PBF_BRIDGEDAPP = 0x0000001c;
  static const PBF_BUSY = 0x0000001d;
  static const PBF_CALLAPP = 0x0000001e;
  static const PBF_DATETIME = 0x0000001f;
  static const PBF_DIRECTORY = 0x00000020;
  static const PBF_COVER = 0x00000021;
  static const PBF_CALLID = 0x00000022;
  static const PBF_LASTNUM = 0x00000023;
  static const PBF_NIGHTSRV = 0x00000024;
  static const PBF_SENDCALLS = 0x00000025;
  static const PBF_MSGINDICATOR = 0x00000026;
  static const PBF_REPDIAL = 0x00000027;
  static const PBF_SETREPDIAL = 0x00000028;
  static const PBF_SYSTEMSPEED = 0x00000029;
  static const PBF_STATIONSPEED = 0x0000002a;
  static const PBF_CAMPON = 0x0000002b;
  static const PBF_SAVEREPEAT = 0x0000002c;
  static const PBF_QUEUECALL = 0x0000002d;
  static const PBF_NONE = 0x0000002e;
  static const PBF_SEND = 0x0000002f;
}

/// {@category Enum}
class PHONE_BUTTON_MODE {
  static const PBM_DUMMY = 0x00000000;
  static const PBM_CALL = 0x00000001;
  static const PBM_FEATURE = 0x00000002;
  static const PBM_KEYPAD = 0x00000003;
  static const PBM_LOCAL = 0x00000004;
  static const PBM_DISPLAY = 0x00000005;
}

/// {@category Enum}
class PHONE_BUTTON_STATE {
  static const PBS_UP = 0x00000001;
  static const PBS_DOWN = 0x00000002;
  static const PBS_UNKNOWN = 0x00000004;
  static const PBS_UNAVAIL = 0x00000008;
}

/// {@category Enum}
class PHONE_EVENT {
  static const PE_DISPLAY = 0x00000000;
  static const PE_LAMPMODE = 0x00000001;
  static const PE_RINGMODE = 0x00000002;
  static const PE_RINGVOLUME = 0x00000003;
  static const PE_HOOKSWITCH = 0x00000004;
  static const PE_CAPSCHANGE = 0x00000005;
  static const PE_BUTTON = 0x00000006;
  static const PE_CLOSE = 0x00000007;
  static const PE_NUMBERGATHERED = 0x00000008;
  static const PE_DIALING = 0x00000009;
  static const PE_ANSWER = 0x0000000a;
  static const PE_DISCONNECT = 0x0000000b;
  static const PE_LASTITEM = 0x0000000b;
}

/// {@category Enum}
class PHONE_HOOK_SWITCH_DEVICE {
  static const PHSD_HANDSET = 0x00000001;
  static const PHSD_SPEAKERPHONE = 0x00000002;
  static const PHSD_HEADSET = 0x00000004;
}

/// {@category Enum}
class PHONE_HOOK_SWITCH_STATE {
  static const PHSS_ONHOOK = 0x00000001;
  static const PHSS_OFFHOOK_MIC_ONLY = 0x00000002;
  static const PHSS_OFFHOOK_SPEAKER_ONLY = 0x00000004;
  static const PHSS_OFFHOOK = 0x00000008;
}

/// {@category Enum}
class PHONE_LAMP_MODE {
  static const LM_DUMMY = 0x00000001;
  static const LM_OFF = 0x00000002;
  static const LM_STEADY = 0x00000004;
  static const LM_WINK = 0x00000008;
  static const LM_FLASH = 0x00000010;
  static const LM_FLUTTER = 0x00000020;
  static const LM_BROKENFLUTTER = 0x00000040;
  static const LM_UNKNOWN = 0x00000080;
}

/// {@category Enum}
class PHONE_PRIVILEGE {
  static const PP_OWNER = 0x00000000;
  static const PP_MONITOR = 0x00000001;
}

/// {@category Enum}
class PHONE_TONE {
  static const PT_KEYPADZERO = 0x00000000;
  static const PT_KEYPADONE = 0x00000001;
  static const PT_KEYPADTWO = 0x00000002;
  static const PT_KEYPADTHREE = 0x00000003;
  static const PT_KEYPADFOUR = 0x00000004;
  static const PT_KEYPADFIVE = 0x00000005;
  static const PT_KEYPADSIX = 0x00000006;
  static const PT_KEYPADSEVEN = 0x00000007;
  static const PT_KEYPADEIGHT = 0x00000008;
  static const PT_KEYPADNINE = 0x00000009;
  static const PT_KEYPADSTAR = 0x0000000a;
  static const PT_KEYPADPOUND = 0x0000000b;
  static const PT_KEYPADA = 0x0000000c;
  static const PT_KEYPADB = 0x0000000d;
  static const PT_KEYPADC = 0x0000000e;
  static const PT_KEYPADD = 0x0000000f;
  static const PT_NORMALDIALTONE = 0x00000010;
  static const PT_EXTERNALDIALTONE = 0x00000011;
  static const PT_BUSY = 0x00000012;
  static const PT_RINGBACK = 0x00000013;
  static const PT_ERRORTONE = 0x00000014;
  static const PT_SILENCE = 0x00000015;
}

/// {@category Enum}
class QOS_EVENT {
  static const QE_NOQOS = 0x00000001;
  static const QE_ADMISSIONFAILURE = 0x00000002;
  static const QE_POLICYFAILURE = 0x00000003;
  static const QE_GENERICERROR = 0x00000004;
  static const QE_LASTITEM = 0x00000004;
}

/// {@category Enum}
class QOS_SERVICE_LEVEL {
  static const QSL_NEEDED = 0x00000001;
  static const QSL_IF_AVAILABLE = 0x00000002;
  static const QSL_BEST_EFFORT = 0x00000003;
}

/// {@category Enum}
class RND_ADVERTISING_SCOPE {
  static const RAS_LOCAL = 0x00000001;
  static const RAS_SITE = 0x00000002;
  static const RAS_REGION = 0x00000003;
  static const RAS_WORLD = 0x00000004;
}

/// {@category Enum}
class TAPIOBJECT_EVENT {
  static const TE_ADDRESSCREATE = 0x00000000;
  static const TE_ADDRESSREMOVE = 0x00000001;
  static const TE_REINIT = 0x00000002;
  static const TE_TRANSLATECHANGE = 0x00000003;
  static const TE_ADDRESSCLOSE = 0x00000004;
  static const TE_PHONECREATE = 0x00000005;
  static const TE_PHONEREMOVE = 0x00000006;
}

/// {@category Enum}
class TAPI_EVENT {
  static const TE_TAPIOBJECT = 0x00000001;
  static const TE_ADDRESS = 0x00000002;
  static const TE_CALLNOTIFICATION = 0x00000004;
  static const TE_CALLSTATE = 0x00000008;
  static const TE_CALLMEDIA = 0x00000010;
  static const TE_CALLHUB = 0x00000020;
  static const TE_CALLINFOCHANGE = 0x00000040;
  static const TE_PRIVATE = 0x00000080;
  static const TE_REQUEST = 0x00000100;
  static const TE_AGENT = 0x00000200;
  static const TE_AGENTSESSION = 0x00000400;
  static const TE_QOSEVENT = 0x00000800;
  static const TE_AGENTHANDLER = 0x00001000;
  static const TE_ACDGROUP = 0x00002000;
  static const TE_QUEUE = 0x00004000;
  static const TE_DIGITEVENT = 0x00008000;
  static const TE_GENERATEEVENT = 0x00010000;
  static const TE_ASRTERMINAL = 0x00020000;
  static const TE_TTSTERMINAL = 0x00040000;
  static const TE_FILETERMINAL = 0x00080000;
  static const TE_TONETERMINAL = 0x00100000;
  static const TE_PHONEEVENT = 0x00200000;
  static const TE_TONEEVENT = 0x00400000;
  static const TE_GATHERDIGITS = 0x00800000;
  static const TE_ADDRESSDEVSPECIFIC = 0x01000000;
  static const TE_PHONEDEVSPECIFIC = 0x02000000;
}

/// {@category Enum}
class TAPI_GATHERTERM {
  static const TGT_BUFFERFULL = 0x00000001;
  static const TGT_TERMDIGIT = 0x00000002;
  static const TGT_FIRSTTIMEOUT = 0x00000004;
  static const TGT_INTERTIMEOUT = 0x00000008;
  static const TGT_CANCEL = 0x00000010;
}

/// {@category Enum}
class TAPI_OBJECT_TYPE {
  static const TOT_NONE = 0x00000000;
  static const TOT_TAPI = 0x00000001;
  static const TOT_ADDRESS = 0x00000002;
  static const TOT_TERMINAL = 0x00000003;
  static const TOT_CALL = 0x00000004;
  static const TOT_CALLHUB = 0x00000005;
  static const TOT_PHONE = 0x00000006;
}

/// {@category Enum}
class TAPI_TONEMODE {
  static const TTM_RINGBACK = 0x00000002;
  static const TTM_BUSY = 0x00000004;
  static const TTM_BEEP = 0x00000008;
  static const TTM_BILLING = 0x00000010;
}

/// {@category Enum}
class TERMINAL_DIRECTION {
  static const TD_CAPTURE = 0x00000000;
  static const TD_RENDER = 0x00000001;
  static const TD_BIDIRECTIONAL = 0x00000002;
  static const TD_MULTITRACK_MIXED = 0x00000003;
  static const TD_NONE = 0x00000004;
}

/// {@category Enum}
class TERMINAL_MEDIA_STATE {
  static const TMS_IDLE = 0x00000000;
  static const TMS_ACTIVE = 0x00000001;
  static const TMS_PAUSED = 0x00000002;
  static const TMS_LASTITEM = 0x00000002;
}

/// {@category Enum}
class TERMINAL_STATE {
  static const TS_INUSE = 0x00000000;
  static const TS_NOTINUSE = 0x00000001;
}

/// {@category Enum}
class TERMINAL_TYPE {
  static const TT_STATIC = 0x00000000;
  static const TT_DYNAMIC = 0x00000001;
}
