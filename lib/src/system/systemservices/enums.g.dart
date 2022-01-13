/// {@category Enum}
class ACCESS_REASON_TYPE {
  static const AccessReasonNone = 0x00000000;
  static const AccessReasonAllowedAce = 0x00010000;
  static const AccessReasonDeniedAce = 0x00020000;
  static const AccessReasonAllowedParentAce = 0x00030000;
  static const AccessReasonDeniedParentAce = 0x00040000;
  static const AccessReasonNotGrantedByCape = 0x00050000;
  static const AccessReasonNotGrantedByParentCape = 0x00060000;
  static const AccessReasonNotGrantedToAppContainer = 0x00070000;
  static const AccessReasonMissingPrivilege = 0x00100000;
  static const AccessReasonFromPrivilege = 0x00200000;
  static const AccessReasonIntegrityLevel = 0x00300000;
  static const AccessReasonOwnership = 0x00400000;
  static const AccessReasonNullDacl = 0x00500000;
  static const AccessReasonEmptyDacl = 0x00600000;
  static const AccessReasonNoSD = 0x00700000;
  static const AccessReasonNoGrant = 0x00800000;
  static const AccessReasonTrustLabel = 0x00900000;
  static const AccessReasonFilterAce = 0x00a00000;
}

/// {@category Enum}
class ACTIVATION_CONTEXT_INFO_CLASS {
  static const ActivationContextBasicInformation = 0x00000001;
  static const ActivationContextDetailedInformation = 0x00000002;
  static const AssemblyDetailedInformationInActivationContext = 0x00000003;
  static const FileInformationInAssemblyOfAssemblyInActivationContext =
      0x00000004;
  static const RunlevelInformationInActivationContext = 0x00000005;
  static const CompatibilityInformationInActivationContext = 0x00000006;
  static const ActivationContextManifestResourceName = 0x00000007;
  static const MaxActivationContextInfoClass = 0x00000008;
  static const AssemblyDetailedInformationInActivationContxt = 0x00000003;
  static const FileInformationInAssemblyOfAssemblyInActivationContxt =
      0x00000004;
}

/// {@category Enum}
class ALERT_SYSTEM_SEV {
  static const ALERT_SYSTEM_INFORMATIONAL = 0x00000001;
  static const ALERT_SYSTEM_WARNING = 0x00000002;
  static const ALERT_SYSTEM_ERROR = 0x00000003;
  static const ALERT_SYSTEM_QUERY = 0x00000004;
  static const ALERT_SYSTEM_CRITICAL = 0x00000005;
}

/// {@category Enum}
class APPCOMMAND_ID {
  static const APPCOMMAND_BROWSER_BACKWARD = 0x00000001;
  static const APPCOMMAND_BROWSER_FORWARD = 0x00000002;
  static const APPCOMMAND_BROWSER_REFRESH = 0x00000003;
  static const APPCOMMAND_BROWSER_STOP = 0x00000004;
  static const APPCOMMAND_BROWSER_SEARCH = 0x00000005;
  static const APPCOMMAND_BROWSER_FAVORITES = 0x00000006;
  static const APPCOMMAND_BROWSER_HOME = 0x00000007;
  static const APPCOMMAND_VOLUME_MUTE = 0x00000008;
  static const APPCOMMAND_VOLUME_DOWN = 0x00000009;
  static const APPCOMMAND_VOLUME_UP = 0x0000000a;
  static const APPCOMMAND_MEDIA_NEXTTRACK = 0x0000000b;
  static const APPCOMMAND_MEDIA_PREVIOUSTRACK = 0x0000000c;
  static const APPCOMMAND_MEDIA_STOP = 0x0000000d;
  static const APPCOMMAND_MEDIA_PLAY_PAUSE = 0x0000000e;
  static const APPCOMMAND_LAUNCH_MAIL = 0x0000000f;
  static const APPCOMMAND_LAUNCH_MEDIA_SELECT = 0x00000010;
  static const APPCOMMAND_LAUNCH_APP1 = 0x00000011;
  static const APPCOMMAND_LAUNCH_APP2 = 0x00000012;
  static const APPCOMMAND_BASS_DOWN = 0x00000013;
  static const APPCOMMAND_BASS_BOOST = 0x00000014;
  static const APPCOMMAND_BASS_UP = 0x00000015;
  static const APPCOMMAND_TREBLE_DOWN = 0x00000016;
  static const APPCOMMAND_TREBLE_UP = 0x00000017;
  static const APPCOMMAND_MICROPHONE_VOLUME_MUTE = 0x00000018;
  static const APPCOMMAND_MICROPHONE_VOLUME_DOWN = 0x00000019;
  static const APPCOMMAND_MICROPHONE_VOLUME_UP = 0x0000001a;
  static const APPCOMMAND_HELP = 0x0000001b;
  static const APPCOMMAND_FIND = 0x0000001c;
  static const APPCOMMAND_NEW = 0x0000001d;
  static const APPCOMMAND_OPEN = 0x0000001e;
  static const APPCOMMAND_CLOSE = 0x0000001f;
  static const APPCOMMAND_SAVE = 0x00000020;
  static const APPCOMMAND_PRINT = 0x00000021;
  static const APPCOMMAND_UNDO = 0x00000022;
  static const APPCOMMAND_REDO = 0x00000023;
  static const APPCOMMAND_COPY = 0x00000024;
  static const APPCOMMAND_CUT = 0x00000025;
  static const APPCOMMAND_PASTE = 0x00000026;
  static const APPCOMMAND_REPLY_TO_MAIL = 0x00000027;
  static const APPCOMMAND_FORWARD_MAIL = 0x00000028;
  static const APPCOMMAND_SEND_MAIL = 0x00000029;
  static const APPCOMMAND_SPELL_CHECK = 0x0000002a;
  static const APPCOMMAND_DICTATE_OR_COMMAND_CONTROL_TOGGLE = 0x0000002b;
  static const APPCOMMAND_MIC_ON_OFF_TOGGLE = 0x0000002c;
  static const APPCOMMAND_CORRECTION_LIST = 0x0000002d;
  static const APPCOMMAND_MEDIA_PLAY = 0x0000002e;
  static const APPCOMMAND_MEDIA_PAUSE = 0x0000002f;
  static const APPCOMMAND_MEDIA_RECORD = 0x00000030;
  static const APPCOMMAND_MEDIA_FAST_FORWARD = 0x00000031;
  static const APPCOMMAND_MEDIA_REWIND = 0x00000032;
  static const APPCOMMAND_MEDIA_CHANNEL_UP = 0x00000033;
  static const APPCOMMAND_MEDIA_CHANNEL_DOWN = 0x00000034;
  static const APPCOMMAND_DELETE = 0x00000035;
  static const APPCOMMAND_DWM_FLIP3D = 0x00000036;
}

/// {@category Enum}
class ARM64_FNPDATA_CR {
  static const PdataCrUnchained = 0x00000000;
  static const PdataCrUnchainedSavedLr = 0x00000001;
  static const PdataCrChainedWithPac = 0x00000002;
  static const PdataCrChained = 0x00000003;
}

/// {@category Enum}
class ARM64_FNPDATA_FLAGS {
  static const PdataRefToFullXdata = 0x00000000;
  static const PdataPackedUnwindFunction = 0x00000001;
  static const PdataPackedUnwindFragment = 0x00000002;
}

/// {@category Enum}
class ATF_FLAGS {
  static const ATF_TIMEOUTON = 0x00000001;
  static const ATF_ONOFFFEEDBACK = 0x00000002;
}

/// {@category Enum}
class CFE_UNDERLINE {
  static const CFU_CF1UNDERLINE = 0x000000ff;
  static const CFU_INVERT = 0x000000fe;
  static const CFU_UNDERLINETHICKLONGDASH = 0x00000012;
  static const CFU_UNDERLINETHICKDOTTED = 0x00000011;
  static const CFU_UNDERLINETHICKDASHDOTDOT = 0x00000010;
  static const CFU_UNDERLINETHICKDASHDOT = 0x0000000f;
  static const CFU_UNDERLINETHICKDASH = 0x0000000e;
  static const CFU_UNDERLINELONGDASH = 0x0000000d;
  static const CFU_UNDERLINEHEAVYWAVE = 0x0000000c;
  static const CFU_UNDERLINEDOUBLEWAVE = 0x0000000b;
  static const CFU_UNDERLINEHAIRLINE = 0x0000000a;
  static const CFU_UNDERLINETHICK = 0x00000009;
  static const CFU_UNDERLINEWAVE = 0x00000008;
  static const CFU_UNDERLINEDASHDOTDOT = 0x00000007;
  static const CFU_UNDERLINEDASHDOT = 0x00000006;
  static const CFU_UNDERLINEDASH = 0x00000005;
  static const CFU_UNDERLINEDOTTED = 0x00000004;
  static const CFU_UNDERLINEDOUBLE = 0x00000003;
  static const CFU_UNDERLINEWORD = 0x00000002;
  static const CFU_UNDERLINE = 0x00000001;
  static const CFU_UNDERLINENONE = 0x00000000;
}

/// {@category Enum}
class CHOOSECOLOR_FLAGS {
  static const CC_RGBINIT = 0x00000001;
  static const CC_FULLOPEN = 0x00000002;
  static const CC_PREVENTFULLOPEN = 0x00000004;
  static const CC_SHOWHELP = 0x00000008;
  static const CC_ENABLEHOOK = 0x00000010;
  static const CC_ENABLETEMPLATE = 0x00000020;
  static const CC_ENABLETEMPLATEHANDLE = 0x00000040;
  static const CC_SOLIDCOLOR = 0x00000080;
  static const CC_ANYCOLOR = 0x00000100;
}

/// {@category Enum}
class CLIPBOARD_FORMATS {
  static const CF_TEXT = 0x00000001;
  static const CF_BITMAP = 0x00000002;
  static const CF_METAFILEPICT = 0x00000003;
  static const CF_SYLK = 0x00000004;
  static const CF_DIF = 0x00000005;
  static const CF_TIFF = 0x00000006;
  static const CF_OEMTEXT = 0x00000007;
  static const CF_DIB = 0x00000008;
  static const CF_PALETTE = 0x00000009;
  static const CF_PENDATA = 0x0000000a;
  static const CF_RIFF = 0x0000000b;
  static const CF_WAVE = 0x0000000c;
  static const CF_UNICODETEXT = 0x0000000d;
  static const CF_ENHMETAFILE = 0x0000000e;
  static const CF_HDROP = 0x0000000f;
  static const CF_LOCALE = 0x00000010;
  static const CF_DIBV5 = 0x00000011;
  static const CF_MAX = 0x00000012;
  static const CF_OWNERDISPLAY = 0x00000080;
  static const CF_DSPTEXT = 0x00000081;
  static const CF_DSPBITMAP = 0x00000082;
  static const CF_DSPMETAFILEPICT = 0x00000083;
  static const CF_DSPENHMETAFILE = 0x0000008e;
  static const CF_PRIVATEFIRST = 0x00000200;
  static const CF_PRIVATELAST = 0x000002ff;
  static const CF_GDIOBJFIRST = 0x00000300;
  static const CF_GDIOBJLAST = 0x000003ff;
}

/// {@category Enum}
class CM_ERROR_CONTROL_TYPE {
  static const IgnoreError = 0x00000000;
  static const NormalError = 0x00000001;
  static const SevereError = 0x00000002;
  static const CriticalError = 0x00000003;
}

/// {@category Enum}
class CM_SERVICE_LOAD_TYPE {
  static const BootLoad = 0x00000000;
  static const SystemLoad = 0x00000001;
  static const AutoLoad = 0x00000002;
  static const DemandLoad = 0x00000003;
  static const DisableLoad = 0x00000004;
}

/// {@category Enum}
class CM_SERVICE_NODE_TYPE {
  static const DriverType = 0x00000001;
  static const FileSystemType = 0x00000002;
  static const Win32ServiceOwnProcess = 0x00000010;
  static const Win32ServiceShareProcess = 0x00000020;
  static const AdapterType = 0x00000004;
  static const RecognizerType = 0x00000008;
}

/// {@category Enum}
class DEV_BROADCAST_HDR_DEVICE_TYPE {
  static const DBT_DEVTYP_DEVICEINTERFACE = 0x00000005;
  static const DBT_DEVTYP_HANDLE = 0x00000006;
  static const DBT_DEVTYP_OEM = 0x00000000;
  static const DBT_DEVTYP_PORT = 0x00000003;
  static const DBT_DEVTYP_VOLUME = 0x00000002;
}

/// {@category Enum}
class DEV_BROADCAST_VOLUME_FLAGS {
  static const DBTF_MEDIA = 0x02020001;
  static const DBTF_NET = 0x04020002;
}

/// {@category Enum}
class ENLISTMENT_INFORMATION_CLASS {
  static const EnlistmentBasicInformation = 0x00000000;
  static const EnlistmentRecoveryInformation = 0x00000001;
  static const EnlistmentCrmInformation = 0x00000002;
}

/// {@category Enum}
class GESTURECONFIG_FLAGS {
  static const GC_ALLGESTURES = 0x00000001;
  static const GC_ZOOM = 0x00000001;
  static const GC_PAN = 0x00000001;
  static const GC_PAN_WITH_SINGLE_FINGER_VERTICALLY = 0x00000002;
  static const GC_PAN_WITH_SINGLE_FINGER_HORIZONTALLY = 0x00000004;
  static const GC_PAN_WITH_GUTTER = 0x00000008;
  static const GC_PAN_WITH_INERTIA = 0x00000010;
  static const GC_ROTATE = 0x00000001;
  static const GC_TWOFINGERTAP = 0x00000001;
  static const GC_PRESSANDTAP = 0x00000001;
  static const GC_ROLLOVER = 0x00000001;
}

/// {@category Enum}
class HIBERFILE_BUCKET_SIZE {
  static const HiberFileBucket1GB = 0x00000000;
  static const HiberFileBucket2GB = 0x00000001;
  static const HiberFileBucket4GB = 0x00000002;
  static const HiberFileBucket8GB = 0x00000003;
  static const HiberFileBucket16GB = 0x00000004;
  static const HiberFileBucket32GB = 0x00000005;
  static const HiberFileBucketUnlimited = 0x00000006;
  static const HiberFileBucketMax = 0x00000007;
}

/// {@category Enum}
class IGP_ID {
  static const IGP_GETIMEVERSION = 0xfffffffc;
  static const IGP_PROPERTY = 0x00000004;
  static const IGP_CONVERSION = 0x00000008;
  static const IGP_SENTENCE = 0x0000000c;
  static const IGP_UI = 0x00000010;
  static const IGP_SETCOMPSTR = 0x00000014;
  static const IGP_SELECT = 0x00000018;
}

/// {@category Enum}
class IMAGE_AUX_SYMBOL_TYPE {
  static const IMAGE_AUX_SYMBOL_TYPE_TOKEN_DEF = 0x00000001;
}

/// {@category Enum}
class IMAGE_POLICY_ENTRY_TYPE {
  static const ImagePolicyEntryTypeNone = 0x00000000;
  static const ImagePolicyEntryTypeBool = 0x00000001;
  static const ImagePolicyEntryTypeInt8 = 0x00000002;
  static const ImagePolicyEntryTypeUInt8 = 0x00000003;
  static const ImagePolicyEntryTypeInt16 = 0x00000004;
  static const ImagePolicyEntryTypeUInt16 = 0x00000005;
  static const ImagePolicyEntryTypeInt32 = 0x00000006;
  static const ImagePolicyEntryTypeUInt32 = 0x00000007;
  static const ImagePolicyEntryTypeInt64 = 0x00000008;
  static const ImagePolicyEntryTypeUInt64 = 0x00000009;
  static const ImagePolicyEntryTypeAnsiString = 0x0000000a;
  static const ImagePolicyEntryTypeUnicodeString = 0x0000000b;
  static const ImagePolicyEntryTypeOverride = 0x0000000c;
  static const ImagePolicyEntryTypeMaximum = 0x0000000d;
}

/// {@category Enum}
class IMAGE_POLICY_ID {
  static const ImagePolicyIdNone = 0x00000000;
  static const ImagePolicyIdEtw = 0x00000001;
  static const ImagePolicyIdDebug = 0x00000002;
  static const ImagePolicyIdCrashDump = 0x00000003;
  static const ImagePolicyIdCrashDumpKey = 0x00000004;
  static const ImagePolicyIdCrashDumpKeyGuid = 0x00000005;
  static const ImagePolicyIdParentSd = 0x00000006;
  static const ImagePolicyIdParentSdRev = 0x00000007;
  static const ImagePolicyIdSvn = 0x00000008;
  static const ImagePolicyIdDeviceId = 0x00000009;
  static const ImagePolicyIdCapability = 0x0000000a;
  static const ImagePolicyIdScenarioId = 0x0000000b;
  static const ImagePolicyIdMaximum = 0x0000000c;
}

/// {@category Enum}
class IMPORT_OBJECT_NAME_TYPE {
  static const IMPORT_OBJECT_ORDINAL = 0x00000000;
  static const IMPORT_OBJECT_NAME = 0x00000001;
  static const IMPORT_OBJECT_NAME_NO_PREFIX = 0x00000002;
  static const IMPORT_OBJECT_NAME_UNDECORATE = 0x00000003;
  static const IMPORT_OBJECT_NAME_EXPORTAS = 0x00000004;
}

/// {@category Enum}
class IMPORT_OBJECT_TYPE {
  static const IMPORT_OBJECT_CODE = 0x00000000;
  static const IMPORT_OBJECT_DATA = 0x00000001;
  static const IMPORT_OBJECT_CONST = 0x00000002;
}

/// {@category Enum}
class KTMOBJECT_TYPE {
  static const KTMOBJECT_TRANSACTION = 0x00000000;
  static const KTMOBJECT_TRANSACTION_MANAGER = 0x00000001;
  static const KTMOBJECT_RESOURCE_MANAGER = 0x00000002;
  static const KTMOBJECT_ENLISTMENT = 0x00000003;
  static const KTMOBJECT_INVALID = 0x00000004;
}

/// {@category Enum}
class MEM_DEDICATED_ATTRIBUTE_TYPE {
  static const MemDedicatedAttributeReadBandwidth = 0x00000000;
  static const MemDedicatedAttributeReadLatency = 0x00000001;
  static const MemDedicatedAttributeWriteBandwidth = 0x00000002;
  static const MemDedicatedAttributeWriteLatency = 0x00000003;
  static const MemDedicatedAttributeMax = 0x00000004;
}

/// {@category Enum}
class MEM_SECTION_EXTENDED_PARAMETER_TYPE {
  static const MemSectionExtendedParameterInvalidType = 0x00000000;
  static const MemSectionExtendedParameterUserPhysicalFlags = 0x00000001;
  static const MemSectionExtendedParameterNumaNode = 0x00000002;
  static const MemSectionExtendedParameterSigningLevel = 0x00000003;
  static const MemSectionExtendedParameterMax = 0x00000004;
}

/// {@category Enum}
class MONITOR_DISPLAY_STATE {
  static const PowerMonitorOff = 0x00000000;
  static const PowerMonitorOn = 0x00000001;
  static const PowerMonitorDim = 0x00000002;
}

/// {@category Enum}
class POWER_MONITOR_REQUEST_REASON {
  static const MonitorRequestReasonUnknown = 0x00000000;
  static const MonitorRequestReasonPowerButton = 0x00000001;
  static const MonitorRequestReasonRemoteConnection = 0x00000002;
  static const MonitorRequestReasonScMonitorpower = 0x00000003;
  static const MonitorRequestReasonUserInput = 0x00000004;
  static const MonitorRequestReasonAcDcDisplayBurst = 0x00000005;
  static const MonitorRequestReasonUserDisplayBurst = 0x00000006;
  static const MonitorRequestReasonPoSetSystemState = 0x00000007;
  static const MonitorRequestReasonSetThreadExecutionState = 0x00000008;
  static const MonitorRequestReasonFullWake = 0x00000009;
  static const MonitorRequestReasonSessionUnlock = 0x0000000a;
  static const MonitorRequestReasonScreenOffRequest = 0x0000000b;
  static const MonitorRequestReasonIdleTimeout = 0x0000000c;
  static const MonitorRequestReasonPolicyChange = 0x0000000d;
  static const MonitorRequestReasonSleepButton = 0x0000000e;
  static const MonitorRequestReasonLid = 0x0000000f;
  static const MonitorRequestReasonBatteryCountChange = 0x00000010;
  static const MonitorRequestReasonGracePeriod = 0x00000011;
  static const MonitorRequestReasonPnP = 0x00000012;
  static const MonitorRequestReasonDP = 0x00000013;
  static const MonitorRequestReasonSxTransition = 0x00000014;
  static const MonitorRequestReasonSystemIdle = 0x00000015;
  static const MonitorRequestReasonNearProximity = 0x00000016;
  static const MonitorRequestReasonThermalStandby = 0x00000017;
  static const MonitorRequestReasonResumePdc = 0x00000018;
  static const MonitorRequestReasonResumeS4 = 0x00000019;
  static const MonitorRequestReasonTerminal = 0x0000001a;
  static const MonitorRequestReasonPdcSignal = 0x0000001b;
  static const MonitorRequestReasonAcDcDisplayBurstSuppressed = 0x0000001c;
  static const MonitorRequestReasonSystemStateEntered = 0x0000001d;
  static const MonitorRequestReasonWinrt = 0x0000001e;
  static const MonitorRequestReasonUserInputKeyboard = 0x0000001f;
  static const MonitorRequestReasonUserInputMouse = 0x00000020;
  static const MonitorRequestReasonUserInputTouchpad = 0x00000021;
  static const MonitorRequestReasonUserInputPen = 0x00000022;
  static const MonitorRequestReasonUserInputAccelerometer = 0x00000023;
  static const MonitorRequestReasonUserInputHid = 0x00000024;
  static const MonitorRequestReasonUserInputPoUserPresent = 0x00000025;
  static const MonitorRequestReasonUserInputSessionSwitch = 0x00000026;
  static const MonitorRequestReasonUserInputInitialization = 0x00000027;
  static const MonitorRequestReasonPdcSignalWindowsMobilePwrNotif = 0x00000028;
  static const MonitorRequestReasonPdcSignalWindowsMobileShell = 0x00000029;
  static const MonitorRequestReasonPdcSignalHeyCortana = 0x0000002a;
  static const MonitorRequestReasonPdcSignalHolographicShell = 0x0000002b;
  static const MonitorRequestReasonPdcSignalFingerprint = 0x0000002c;
  static const MonitorRequestReasonDirectedDrips = 0x0000002d;
  static const MonitorRequestReasonDim = 0x0000002e;
  static const MonitorRequestReasonBuiltinPanel = 0x0000002f;
  static const MonitorRequestReasonDisplayRequiredUnDim = 0x00000030;
  static const MonitorRequestReasonBatteryCountChangeSuppressed = 0x00000031;
  static const MonitorRequestReasonResumeModernStandby = 0x00000032;
  static const MonitorRequestReasonTerminalInit = 0x00000033;
  static const MonitorRequestReasonPdcSignalSensorsHumanPresence = 0x00000034;
  static const MonitorRequestReasonBatteryPreCritical = 0x00000035;
  static const MonitorRequestReasonUserInputTouch = 0x00000036;
  static const MonitorRequestReasonMax = 0x00000037;
}

/// {@category Enum}
class POWER_MONITOR_REQUEST_TYPE {
  static const MonitorRequestTypeOff = 0x00000000;
  static const MonitorRequestTypeOnAndPresent = 0x00000001;
  static const MonitorRequestTypeToggleOn = 0x00000002;
}

/// {@category Enum}
class POWER_SETTING_ALTITUDE {
  static const ALTITUDE_GROUP_POLICY = 0x00000000;
  static const ALTITUDE_USER = 0x00000001;
  static const ALTITUDE_RUNTIME_OVERRIDE = 0x00000002;
  static const ALTITUDE_PROVISIONING = 0x00000003;
  static const ALTITUDE_OEM_CUSTOMIZATION = 0x00000004;
  static const ALTITUDE_INTERNAL_OVERRIDE = 0x00000005;
  static const ALTITUDE_OS_DEFAULT = 0x00000006;
}

/// {@category Enum}
class POWER_USER_PRESENCE_TYPE {
  static const UserNotPresent = 0x00000000;
  static const UserPresent = 0x00000001;
  static const UserUnknown = 0x000000ff;
}

/// {@category Enum}
class RESOURCEMANAGER_INFORMATION_CLASS {
  static const ResourceManagerBasicInformation = 0x00000000;
  static const ResourceManagerCompletionInformation = 0x00000001;
}

/// {@category Enum}
class RTL_UMS_SCHEDULER_REASON {
  static const UmsSchedulerStartup = 0x00000000;
  static const UmsSchedulerThreadBlocked = 0x00000001;
  static const UmsSchedulerThreadYield = 0x00000002;
}

/// {@category Enum}
class ReplacesCorHdrNumericDefines {
  static const COMIMAGE_FLAGS_ILONLY = 0x00000001;
  static const COMIMAGE_FLAGS_32BITREQUIRED = 0x00000002;
  static const COMIMAGE_FLAGS_IL_LIBRARY = 0x00000004;
  static const COMIMAGE_FLAGS_STRONGNAMESIGNED = 0x00000008;
  static const COMIMAGE_FLAGS_NATIVE_ENTRYPOINT = 0x00000010;
  static const COMIMAGE_FLAGS_TRACKDEBUGDATA = 0x00010000;
  static const COMIMAGE_FLAGS_32BITPREFERRED = 0x00020000;
  static const COR_VERSION_MAJOR_V2 = 0x00000002;
  static const COR_VERSION_MAJOR = 0x00000002;
  static const COR_VERSION_MINOR = 0x00000005;
  static const COR_DELETED_NAME_LENGTH = 0x00000008;
  static const COR_VTABLEGAP_NAME_LENGTH = 0x00000008;
  static const NATIVE_TYPE_MAX_CB = 0x00000001;
  static const COR_ILMETHOD_SECT_SMALL_MAX_DATASIZE = 0x000000ff;
  static const IMAGE_COR_MIH_METHODRVA = 0x00000001;
  static const IMAGE_COR_MIH_EHRVA = 0x00000002;
  static const IMAGE_COR_MIH_BASICBLOCK = 0x00000008;
  static const COR_VTABLE_32BIT = 0x00000001;
  static const COR_VTABLE_64BIT = 0x00000002;
  static const COR_VTABLE_FROM_UNMANAGED = 0x00000004;
  static const COR_VTABLE_FROM_UNMANAGED_RETAIN_APPDOMAIN = 0x00000008;
  static const COR_VTABLE_CALL_MOST_DERIVED = 0x00000010;
  static const IMAGE_COR_EATJ_THUNK_SIZE = 0x00000020;
  static const MAX_CLASS_NAME = 0x00000400;
  static const MAX_PACKAGE_NAME = 0x00000400;
}

/// {@category Enum}
class SECTION_FLAGS {
  static const SECTION_ALL_ACCESS = 0x000f001f;
  static const SECTION_QUERY = 0x00000001;
  static const SECTION_MAP_WRITE = 0x00000002;
  static const SECTION_MAP_READ = 0x00000004;
  static const SECTION_MAP_EXECUTE = 0x00000008;
  static const SECTION_EXTEND_SIZE = 0x00000010;
  static const SECTION_MAP_EXECUTE_EXPLICIT = 0x00000020;
}

/// {@category Enum}
class SERVERSILO_STATE {
  static const SERVERSILO_INITING = 0x00000000;
  static const SERVERSILO_STARTED = 0x00000001;
  static const SERVERSILO_SHUTTING_DOWN = 0x00000002;
  static const SERVERSILO_TERMINATING = 0x00000003;
  static const SERVERSILO_TERMINATED = 0x00000004;
}

/// {@category Enum}
class SE_IMAGE_SIGNATURE_TYPE {
  static const SeImageSignatureNone = 0x00000000;
  static const SeImageSignatureEmbedded = 0x00000001;
  static const SeImageSignatureCache = 0x00000002;
  static const SeImageSignatureCatalogCached = 0x00000003;
  static const SeImageSignatureCatalogNotCached = 0x00000004;
  static const SeImageSignatureCatalogHint = 0x00000005;
  static const SeImageSignaturePackageCatalog = 0x00000006;
  static const SeImageSignaturePplMitigated = 0x00000007;
}

/// {@category Enum}
class SE_LEARNING_MODE_DATA_TYPE {
  static const SeLearningModeInvalidType = 0x00000000;
  static const SeLearningModeSettings = 0x00000001;
  static const SeLearningModeMax = 0x00000002;
}

/// {@category Enum}
class SharedVirtualDiskHandleState {
  static const SharedVirtualDiskHandleStateNone = 0x00000000;
  static const SharedVirtualDiskHandleStateFileShared = 0x00000001;
  static const SharedVirtualDiskHandleStateHandleShared = 0x00000003;
}

/// {@category Enum}
class SharedVirtualDiskSupportType {
  static const SharedVirtualDisksUnsupported = 0x00000000;
  static const SharedVirtualDisksSupported = 0x00000001;
  static const SharedVirtualDiskSnapshotsSupported = 0x00000003;
  static const SharedVirtualDiskCDPSnapshotsSupported = 0x00000007;
}

/// {@category Enum}
class TAPE_DRIVE_PROBLEM_TYPE {
  static const TapeDriveProblemNone = 0x00000000;
  static const TapeDriveReadWriteWarning = 0x00000001;
  static const TapeDriveReadWriteError = 0x00000002;
  static const TapeDriveReadWarning = 0x00000003;
  static const TapeDriveWriteWarning = 0x00000004;
  static const TapeDriveReadError = 0x00000005;
  static const TapeDriveWriteError = 0x00000006;
  static const TapeDriveHardwareError = 0x00000007;
  static const TapeDriveUnsupportedMedia = 0x00000008;
  static const TapeDriveScsiConnectionError = 0x00000009;
  static const TapeDriveTimetoClean = 0x0000000a;
  static const TapeDriveCleanDriveNow = 0x0000000b;
  static const TapeDriveMediaLifeExpired = 0x0000000c;
  static const TapeDriveSnappedTape = 0x0000000d;
}

/// {@category Enum}
class TAPE_GET_DRIVE_PARAMETERS_FEATURES_HIGH {
  static const TAPE_DRIVE_ABS_BLK_IMMED = 0x80002000;
  static const TAPE_DRIVE_ABSOLUTE_BLK = 0x80001000;
  static const TAPE_DRIVE_END_OF_DATA = 0x80010000;
  static const TAPE_DRIVE_FILEMARKS = 0x80040000;
  static const TAPE_DRIVE_LOAD_UNLOAD = 0x80000001;
  static const TAPE_DRIVE_LOAD_UNLD_IMMED = 0x80000020;
  static const TAPE_DRIVE_LOCK_UNLOCK = 0x80000004;
  static const TAPE_DRIVE_LOCK_UNLK_IMMED = 0x80000080;
  static const TAPE_DRIVE_LOG_BLK_IMMED = 0x80008000;
  static const TAPE_DRIVE_LOGICAL_BLK = 0x80004000;
  static const TAPE_DRIVE_RELATIVE_BLKS = 0x80020000;
  static const TAPE_DRIVE_REVERSE_POSITION = 0x80400000;
  static const TAPE_DRIVE_REWIND_IMMEDIATE = 0x80000008;
  static const TAPE_DRIVE_SEQUENTIAL_FMKS = 0x80080000;
  static const TAPE_DRIVE_SEQUENTIAL_SMKS = 0x80200000;
  static const TAPE_DRIVE_SET_BLOCK_SIZE = 0x80000010;
  static const TAPE_DRIVE_SET_COMPRESSION = 0x80000200;
  static const TAPE_DRIVE_SET_ECC = 0x80000100;
  static const TAPE_DRIVE_SET_PADDING = 0x80000400;
  static const TAPE_DRIVE_SET_REPORT_SMKS = 0x80000800;
  static const TAPE_DRIVE_SETMARKS = 0x80100000;
  static const TAPE_DRIVE_SPACE_IMMEDIATE = 0x80800000;
  static const TAPE_DRIVE_TENSION = 0x80000002;
  static const TAPE_DRIVE_TENSION_IMMED = 0x80000040;
  static const TAPE_DRIVE_WRITE_FILEMARKS = 0x82000000;
  static const TAPE_DRIVE_WRITE_LONG_FMKS = 0x88000000;
  static const TAPE_DRIVE_WRITE_MARK_IMMED = 0x90000000;
  static const TAPE_DRIVE_WRITE_SETMARKS = 0x81000000;
  static const TAPE_DRIVE_WRITE_SHORT_FMKS = 0x84000000;
}

/// {@category Enum}
class TRANSACTIONMANAGER_INFORMATION_CLASS {
  static const TransactionManagerBasicInformation = 0x00000000;
  static const TransactionManagerLogInformation = 0x00000001;
  static const TransactionManagerLogPathInformation = 0x00000002;
  static const TransactionManagerRecoveryInformation = 0x00000004;
  static const TransactionManagerOnlineProbeInformation = 0x00000003;
  static const TransactionManagerOldestTransactionInformation = 0x00000005;
}

/// {@category Enum}
class TRANSACTION_INFORMATION_CLASS {
  static const TransactionBasicInformation = 0x00000000;
  static const TransactionPropertiesInformation = 0x00000001;
  static const TransactionEnlistmentInformation = 0x00000002;
  static const TransactionSuperiorEnlistmentInformation = 0x00000003;
  static const TransactionBindInformation = 0x00000004;
  static const TransactionDTCPrivateInformation = 0x00000005;
}

/// {@category Enum}
class TRANSACTION_STATE {
  static const TransactionStateNormal = 0x00000001;
  static const TransactionStateIndoubt = 0x00000002;
  static const TransactionStateCommittedNotify = 0x00000003;
}

/// {@category Enum}
class USER_ACTIVITY_PRESENCE {
  static const PowerUserPresent = 0x00000000;
  static const PowerUserNotPresent = 0x00000001;
  static const PowerUserInactive = 0x00000002;
  static const PowerUserMaximum = 0x00000003;
  static const PowerUserInvalid = 0x00000003;
}
