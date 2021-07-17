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
class BIN_TYPES {
  static const RequestSize = 0x00000000;
  static const RequestLocation = 0x00000001;
}

/// {@category Enum}
class CERT_VIEWPROPERTIES_STRUCT_FLAGS {
  static const CM_ENABLEHOOK = 0x00000001;
  static const CM_SHOW_HELP = 0x00000002;
  static const CM_SHOW_HELPICON = 0x00000004;
  static const CM_ENABLETEMPLATE = 0x00000008;
  static const CM_HIDE_ADVANCEPAGE = 0x00000010;
  static const CM_HIDE_TRUSTPAGE = 0x00000020;
  static const CM_NO_NAMECHANGE = 0x00000040;
  static const CM_NO_EDITTRUST = 0x00000080;
  static const CM_HIDE_DETAILPAGE = 0x00000100;
  static const CM_ADD_CERT_STORES = 0x00000200;
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
class CHANGER_DEVICE_PROBLEM_TYPE {
  static const DeviceProblemNone = 0x00000000;
  static const DeviceProblemHardware = 0x00000001;
  static const DeviceProblemCHMError = 0x00000002;
  static const DeviceProblemDoorOpen = 0x00000003;
  static const DeviceProblemCalibrationError = 0x00000004;
  static const DeviceProblemTargetFailure = 0x00000005;
  static const DeviceProblemCHMMoveError = 0x00000006;
  static const DeviceProblemCHMZeroError = 0x00000007;
  static const DeviceProblemCartridgeInsertError = 0x00000008;
  static const DeviceProblemPositionError = 0x00000009;
  static const DeviceProblemSensorError = 0x0000000a;
  static const DeviceProblemCartridgeEjectError = 0x0000000b;
  static const DeviceProblemGripperError = 0x0000000c;
  static const DeviceProblemDriveError = 0x0000000d;
}

/// {@category Enum}
class CHANGER_ELEMENT_STATUS_FLAGS {
  static const ELEMENT_STATUS_ACCESS = 0x00000008;
  static const ELEMENT_STATUS_AVOLTAG = 0x20000000;
  static const ELEMENT_STATUS_EXCEPT = 0x00000004;
  static const ELEMENT_STATUS_EXENAB = 0x00000010;
  static const ELEMENT_STATUS_FULL = 0x00000001;
  static const ELEMENT_STATUS_ID_VALID = 0x00002000;
  static const ELEMENT_STATUS_IMPEXP = 0x00000002;
  static const ELEMENT_STATUS_INENAB = 0x00000020;
  static const ELEMENT_STATUS_INVERT = 0x00400000;
  static const ELEMENT_STATUS_LUN_VALID = 0x00001000;
  static const ELEMENT_STATUS_NOT_BUS = 0x00008000;
  static const ELEMENT_STATUS_PVOLTAG = 0x10000000;
  static const ELEMENT_STATUS_SVALID = 0x00800000;
  static const ELEMENT_STATUS_PRODUCT_DATA = 0x00000040;
}

/// {@category Enum}
class CHANGER_FEATURES {
  static const CHANGER_BAR_CODE_SCANNER_INSTALLED = 0x00000001;
  static const CHANGER_CARTRIDGE_MAGAZINE = 0x00000100;
  static const CHANGER_CLEANER_ACCESS_NOT_VALID = 0x00040000;
  static const CHANGER_CLEANER_SLOT = 0x00000040;
  static const CHANGER_CLOSE_IEPORT = 0x00000004;
  static const CHANGER_DEVICE_REINITIALIZE_CAPABLE = 0x08000000;
  static const CHANGER_DRIVE_CLEANING_REQUIRED = 0x00010000;
  static const CHANGER_DRIVE_EMPTY_ON_DOOR_ACCESS = 0x20000000;
  static const CHANGER_EXCHANGE_MEDIA = 0x00000020;
  static const CHANGER_INIT_ELEM_STAT_WITH_RANGE = 0x00000002;
  static const CHANGER_KEYPAD_ENABLE_DISABLE = 0x10000000;
  static const CHANGER_LOCK_UNLOCK = 0x00000080;
  static const CHANGER_MEDIUM_FLIP = 0x00000200;
  static const CHANGER_OPEN_IEPORT = 0x00000008;
  static const CHANGER_POSITION_TO_ELEMENT = 0x00000400;
  static const CHANGER_PREDISMOUNT_EJECT_REQUIRED = 0x00020000;
  static const CHANGER_PREMOUNT_EJECT_REQUIRED = 0x00080000;
  static const CHANGER_REPORT_IEPORT_STATE = 0x00000800;
  static const CHANGER_SERIAL_NUMBER_VALID = 0x04000000;
  static const CHANGER_STATUS_NON_VOLATILE = 0x00000010;
  static const CHANGER_STORAGE_DRIVE = 0x00001000;
  static const CHANGER_STORAGE_IEPORT = 0x00002000;
  static const CHANGER_STORAGE_SLOT = 0x00004000;
  static const CHANGER_STORAGE_TRANSPORT = 0x00008000;
  static const CHANGER_VOLUME_ASSERT = 0x00400000;
  static const CHANGER_VOLUME_IDENTIFICATION = 0x00100000;
  static const CHANGER_VOLUME_REPLACE = 0x00800000;
  static const CHANGER_VOLUME_SEARCH = 0x00200000;
  static const CHANGER_VOLUME_UNDEFINE = 0x01000000;
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
class CPU_SET_INFORMATION_TYPE {
  static const CpuSetInformation = 0x00000000;
}

/// {@category Enum}
class CSVFS_DISK_CONNECTIVITY {
  static const CsvFsDiskConnectivityNone = 0x00000000;
  static const CsvFsDiskConnectivityMdsNodeOnly = 0x00000001;
  static const CsvFsDiskConnectivitySubsetOfNodes = 0x00000002;
  static const CsvFsDiskConnectivityAllNodes = 0x00000003;
}

/// {@category Enum}
class D3DANTIALIASMODE {
  static const D3DANTIALIAS_NONE = 0x00000000;
  static const D3DANTIALIAS_SORTDEPENDENT = 0x00000001;
  static const D3DANTIALIAS_SORTINDEPENDENT = 0x00000002;
  static const D3DANTIALIAS_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DLIGHTSTATETYPE {
  static const D3DLIGHTSTATE_MATERIAL = 0x00000001;
  static const D3DLIGHTSTATE_AMBIENT = 0x00000002;
  static const D3DLIGHTSTATE_COLORMODEL = 0x00000003;
  static const D3DLIGHTSTATE_FOGMODE = 0x00000004;
  static const D3DLIGHTSTATE_FOGSTART = 0x00000005;
  static const D3DLIGHTSTATE_FOGEND = 0x00000006;
  static const D3DLIGHTSTATE_FOGDENSITY = 0x00000007;
  static const D3DLIGHTSTATE_COLORVERTEX = 0x00000008;
  static const D3DLIGHTSTATE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DNTHAL_DP2OPERATION {
  static const D3DNTDP2OP_POINTS = 0x00000001;
  static const D3DNTDP2OP_INDEXEDLINELIST = 0x00000002;
  static const D3DNTDP2OP_INDEXEDTRIANGLELIST = 0x00000003;
  static const D3DNTDP2OP_RENDERSTATE = 0x00000008;
  static const D3DNTDP2OP_LINELIST = 0x0000000f;
  static const D3DNTDP2OP_LINESTRIP = 0x00000010;
  static const D3DNTDP2OP_INDEXEDLINESTRIP = 0x00000011;
  static const D3DNTDP2OP_TRIANGLELIST = 0x00000012;
  static const D3DNTDP2OP_TRIANGLESTRIP = 0x00000013;
  static const D3DNTDP2OP_INDEXEDTRIANGLESTRIP = 0x00000014;
  static const D3DNTDP2OP_TRIANGLEFAN = 0x00000015;
  static const D3DNTDP2OP_INDEXEDTRIANGLEFAN = 0x00000016;
  static const D3DNTDP2OP_TRIANGLEFAN_IMM = 0x00000017;
  static const D3DNTDP2OP_LINELIST_IMM = 0x00000018;
  static const D3DNTDP2OP_TEXTURESTAGESTATE = 0x00000019;
  static const D3DNTDP2OP_INDEXEDTRIANGLELIST2 = 0x0000001a;
  static const D3DNTDP2OP_INDEXEDLINELIST2 = 0x0000001b;
  static const D3DNTDP2OP_VIEWPORTINFO = 0x0000001c;
  static const D3DNTDP2OP_WINFO = 0x0000001d;
  static const D3DNTDP2OP_SETPALETTE = 0x0000001e;
  static const D3DNTDP2OP_UPDATEPALETTE = 0x0000001f;
  static const D3DNTDP2OP_ZRANGE = 0x00000020;
  static const D3DNTDP2OP_SETMATERIAL = 0x00000021;
  static const D3DNTDP2OP_SETLIGHT = 0x00000022;
  static const D3DNTDP2OP_CREATELIGHT = 0x00000023;
  static const D3DNTDP2OP_SETTRANSFORM = 0x00000024;
  static const D3DNTDP2OP_TEXBLT = 0x00000026;
  static const D3DNTDP2OP_STATESET = 0x00000027;
  static const D3DNTDP2OP_SETPRIORITY = 0x00000028;
  static const D3DNTDP2OP_SETRENDERTARGET = 0x00000029;
  static const D3DNTDP2OP_CLEAR = 0x0000002a;
  static const D3DNTDP2OP_SETTEXLOD = 0x0000002b;
  static const D3DNTDP2OP_SETCLIPPLANE = 0x0000002c;
}

/// {@category Enum}
class D3DOPCODE {
  static const D3DOP_POINT = 0x00000001;
  static const D3DOP_LINE = 0x00000002;
  static const D3DOP_TRIANGLE = 0x00000003;
  static const D3DOP_MATRIXLOAD = 0x00000004;
  static const D3DOP_MATRIXMULTIPLY = 0x00000005;
  static const D3DOP_STATETRANSFORM = 0x00000006;
  static const D3DOP_STATELIGHT = 0x00000007;
  static const D3DOP_STATERENDER = 0x00000008;
  static const D3DOP_PROCESSVERTICES = 0x00000009;
  static const D3DOP_TEXTURELOAD = 0x0000000a;
  static const D3DOP_EXIT = 0x0000000b;
  static const D3DOP_BRANCHFORWARD = 0x0000000c;
  static const D3DOP_SPAN = 0x0000000d;
  static const D3DOP_SETSTATUS = 0x0000000e;
  static const D3DOP_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DTEXTUREBLEND {
  static const D3DTBLEND_DECAL = 0x00000001;
  static const D3DTBLEND_MODULATE = 0x00000002;
  static const D3DTBLEND_DECALALPHA = 0x00000003;
  static const D3DTBLEND_MODULATEALPHA = 0x00000004;
  static const D3DTBLEND_DECALMASK = 0x00000005;
  static const D3DTBLEND_MODULATEMASK = 0x00000006;
  static const D3DTBLEND_COPY = 0x00000007;
  static const D3DTBLEND_ADD = 0x00000008;
  static const D3DTBLEND_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DTEXTUREFILTER {
  static const D3DFILTER_NEAREST = 0x00000001;
  static const D3DFILTER_LINEAR = 0x00000002;
  static const D3DFILTER_MIPNEAREST = 0x00000003;
  static const D3DFILTER_MIPLINEAR = 0x00000004;
  static const D3DFILTER_LINEARMIPNEAREST = 0x00000005;
  static const D3DFILTER_LINEARMIPLINEAR = 0x00000006;
  static const D3DFILTER_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DTEXTUREMAGFILTER {
  static const D3DTFG_POINT = 0x00000001;
  static const D3DTFG_LINEAR = 0x00000002;
  static const D3DTFG_FLATCUBIC = 0x00000003;
  static const D3DTFG_GAUSSIANCUBIC = 0x00000004;
  static const D3DTFG_ANISOTROPIC = 0x00000005;
  static const D3DTFG_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DTEXTUREMINFILTER {
  static const D3DTFN_POINT = 0x00000001;
  static const D3DTFN_LINEAR = 0x00000002;
  static const D3DTFN_ANISOTROPIC = 0x00000003;
  static const D3DTFN_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DTEXTUREMIPFILTER {
  static const D3DTFP_NONE = 0x00000001;
  static const D3DTFP_POINT = 0x00000002;
  static const D3DTFP_LINEAR = 0x00000003;
  static const D3DTFP_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class D3DVERTEXTYPE {
  static const D3DVT_VERTEX = 0x00000001;
  static const D3DVT_LVERTEX = 0x00000002;
  static const D3DVT_TLVERTEX = 0x00000003;
  static const D3DVT_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class DETECTION_TYPE {
  static const DetectNone = 0x00000000;
  static const DetectInt13 = 0x00000001;
  static const DetectExInt13 = 0x00000002;
}

/// {@category Enum}
class DEVICE_INTERNAL_STATUS_DATA_REQUEST_TYPE {
  static const DeviceInternalStatusDataRequestTypeUndefined = 0x00000000;
  static const DeviceCurrentInternalStatusDataHeader = 0x00000001;
  static const DeviceCurrentInternalStatusData = 0x00000002;
}

/// {@category Enum}
class DEVICE_INTERNAL_STATUS_DATA_SET {
  static const DeviceStatusDataSetUndefined = 0x00000000;
  static const DeviceStatusDataSet1 = 0x00000001;
  static const DeviceStatusDataSet2 = 0x00000002;
  static const DeviceStatusDataSet3 = 0x00000003;
  static const DeviceStatusDataSet4 = 0x00000004;
  static const DeviceStatusDataSetMax = 0x00000005;
}

/// {@category Enum}
class DEVICE_POWER_STATE {
  static const PowerDeviceUnspecified = 0x00000000;
  static const PowerDeviceD0 = 0x00000001;
  static const PowerDeviceD1 = 0x00000002;
  static const PowerDeviceD2 = 0x00000003;
  static const PowerDeviceD3 = 0x00000004;
  static const PowerDeviceMaximum = 0x00000005;
}

/// {@category Enum}
class DEVPROPSTORE {
  static const DEVPROP_STORE_SYSTEM = 0x00000000;
  static const DEVPROP_STORE_USER = 0x00000001;
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
  static const DBTF_MEDIA = 0x00000001;
  static const DBTF_NET = 0x00000002;
}

/// {@category Enum}
class DISK_CACHE_RETENTION_PRIORITY {
  static const EqualPriority = 0x00000000;
  static const KeepPrefetchedData = 0x00000001;
  static const KeepReadData = 0x00000002;
}

/// {@category Enum}
class ELEMENT_TYPE {
  static const AllElements = 0x00000000;
  static const ChangerTransport = 0x00000001;
  static const ChangerSlot = 0x00000002;
  static const ChangerIEPort = 0x00000003;
  static const ChangerDrive = 0x00000004;
  static const ChangerDoor = 0x00000005;
  static const ChangerKeypad = 0x00000006;
  static const ChangerMaxElement = 0x00000007;
}

/// {@category Enum}
class ENG_DEVICE_ATTRIBUTE {
  static const QDA_RESERVED = 0x00000000;
  static const QDA_ACCELERATION_LEVEL = 0x00000001;
}

/// {@category Enum}
class ENG_SYSTEM_ATTRIBUTE {
  static const EngProcessorFeature = 0x00000001;
  static const EngNumberOfProcessors = 0x00000002;
  static const EngOptimumAvailableUserMemory = 0x00000003;
  static const EngOptimumAvailableSystemMemory = 0x00000004;
}

/// {@category Enum}
class ENLISTMENT_INFORMATION_CLASS {
  static const EnlistmentBasicInformation = 0x00000000;
  static const EnlistmentRecoveryInformation = 0x00000001;
  static const EnlistmentCrmInformation = 0x00000002;
}

/// {@category Enum}
class FILE_STORAGE_TIER_CLASS {
  static const FileStorageTierClassUnspecified = 0x00000000;
  static const FileStorageTierClassCapacity = 0x00000001;
  static const FileStorageTierClassPerformance = 0x00000002;
  static const FileStorageTierClassMax = 0x00000003;
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
class GET_CHANGER_PARAMETERS_FEATURES1 {
  static const CHANGER_CLEANER_AUTODISMOUNT = 0x80000004;
  static const CHANGER_CLEANER_OPS_NOT_SUPPORTED = 0x80000040;
  static const CHANGER_IEPORT_USER_CONTROL_CLOSE = 0x80000100;
  static const CHANGER_IEPORT_USER_CONTROL_OPEN = 0x80000080;
  static const CHANGER_MOVE_EXTENDS_IEPORT = 0x80000200;
  static const CHANGER_MOVE_RETRACTS_IEPORT = 0x80000400;
  static const CHANGER_PREDISMOUNT_ALIGN_TO_DRIVE = 0x80000002;
  static const CHANGER_PREDISMOUNT_ALIGN_TO_SLOT = 0x80000001;
  static const CHANGER_RTN_MEDIA_TO_ORIGINAL_ADDR = 0x80000020;
  static const CHANGER_SLOTS_USE_TRAYS = 0x80000010;
  static const CHANGER_TRUE_EXCHANGE_CAPABLE = 0x80000008;
}

/// {@category Enum}
class HEAP_INFORMATION_CLASS {
  static const HeapCompatibilityInformation = 0x00000000;
  static const HeapEnableTerminationOnCorruption = 0x00000001;
  static const HeapOptimizeResources = 0x00000003;
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
class JOBOBJECTINFOCLASS {
  static const JobObjectBasicAccountingInformation = 0x00000001;
  static const JobObjectBasicLimitInformation = 0x00000002;
  static const JobObjectBasicProcessIdList = 0x00000003;
  static const JobObjectBasicUIRestrictions = 0x00000004;
  static const JobObjectSecurityLimitInformation = 0x00000005;
  static const JobObjectEndOfJobTimeInformation = 0x00000006;
  static const JobObjectAssociateCompletionPortInformation = 0x00000007;
  static const JobObjectBasicAndIoAccountingInformation = 0x00000008;
  static const JobObjectExtendedLimitInformation = 0x00000009;
  static const JobObjectJobSetInformation = 0x0000000a;
  static const JobObjectGroupInformation = 0x0000000b;
  static const JobObjectNotificationLimitInformation = 0x0000000c;
  static const JobObjectLimitViolationInformation = 0x0000000d;
  static const JobObjectGroupInformationEx = 0x0000000e;
  static const JobObjectCpuRateControlInformation = 0x0000000f;
  static const JobObjectCompletionFilter = 0x00000010;
  static const JobObjectCompletionCounter = 0x00000011;
  static const JobObjectReserved1Information = 0x00000012;
  static const JobObjectReserved2Information = 0x00000013;
  static const JobObjectReserved3Information = 0x00000014;
  static const JobObjectReserved4Information = 0x00000015;
  static const JobObjectReserved5Information = 0x00000016;
  static const JobObjectReserved6Information = 0x00000017;
  static const JobObjectReserved7Information = 0x00000018;
  static const JobObjectReserved8Information = 0x00000019;
  static const JobObjectReserved9Information = 0x0000001a;
  static const JobObjectReserved10Information = 0x0000001b;
  static const JobObjectReserved11Information = 0x0000001c;
  static const JobObjectReserved12Information = 0x0000001d;
  static const JobObjectReserved13Information = 0x0000001e;
  static const JobObjectReserved14Information = 0x0000001f;
  static const JobObjectNetRateControlInformation = 0x00000020;
  static const JobObjectNotificationLimitInformation2 = 0x00000021;
  static const JobObjectLimitViolationInformation2 = 0x00000022;
  static const JobObjectCreateSilo = 0x00000023;
  static const JobObjectSiloBasicInformation = 0x00000024;
  static const JobObjectReserved15Information = 0x00000025;
  static const JobObjectReserved16Information = 0x00000026;
  static const JobObjectReserved17Information = 0x00000027;
  static const JobObjectReserved18Information = 0x00000028;
  static const JobObjectReserved19Information = 0x00000029;
  static const JobObjectReserved20Information = 0x0000002a;
  static const JobObjectReserved21Information = 0x0000002b;
  static const JobObjectReserved22Information = 0x0000002c;
  static const JobObjectReserved23Information = 0x0000002d;
  static const JobObjectReserved24Information = 0x0000002e;
  static const JobObjectReserved25Information = 0x0000002f;
  static const MaxJobObjectInfoClass = 0x00000030;
}

/// {@category Enum}
class JOBOBJECT_IO_ATTRIBUTION_CONTROL_FLAGS {
  static const JOBOBJECT_IO_ATTRIBUTION_CONTROL_ENABLE = 0x00000001;
  static const JOBOBJECT_IO_ATTRIBUTION_CONTROL_DISABLE = 0x00000002;
  static const JOBOBJECT_IO_ATTRIBUTION_CONTROL_VALID_FLAGS = 0x00000003;
}

/// {@category Enum}
class JOBOBJECT_RATE_CONTROL_TOLERANCE {
  static const ToleranceLow = 0x00000001;
  static const ToleranceMedium = 0x00000002;
  static const ToleranceHigh = 0x00000003;
}

/// {@category Enum}
class JOBOBJECT_RATE_CONTROL_TOLERANCE_INTERVAL {
  static const ToleranceIntervalShort = 0x00000001;
  static const ToleranceIntervalMedium = 0x00000002;
  static const ToleranceIntervalLong = 0x00000003;
}

/// {@category Enum}
class JOB_OBJECT_CPU_RATE_CONTROL {
  static const JOB_OBJECT_CPU_RATE_CONTROL_ENABLE = 0x00000001;
  static const JOB_OBJECT_CPU_RATE_CONTROL_WEIGHT_BASED = 0x00000002;
  static const JOB_OBJECT_CPU_RATE_CONTROL_HARD_CAP = 0x00000004;
  static const JOB_OBJECT_CPU_RATE_CONTROL_NOTIFY = 0x00000008;
  static const JOB_OBJECT__CPU_RATE_CONTROL_MIN_MAX_RATE = 0x00000010;
}

/// {@category Enum}
class JOB_OBJECT_IO_RATE_CONTROL_FLAGS {
  static const JOB_OBJECT_IO_RATE_CONTROL_ENABLE = 0x00000001;
  static const JOB_OBJECT_IO_RATE_CONTROL_STANDALONE_VOLUME = 0x00000002;
  static const JOB_OBJECT_IO_RATE_CONTROL_FORCE_UNIT_ACCESS_ALL = 0x00000004;
  static const JOB_OBJECT_IO_RATE_CONTROL_FORCE_UNIT_ACCESS_ON_SOFT_CAP =
      0x00000008;
  static const JOB_OBJECT_IO_RATE_CONTROL_VALID_FLAGS = 0x0000000f;
}

/// {@category Enum}
class JOB_OBJECT_NET_RATE_CONTROL_FLAGS {
  static const JOB_OBJECT_NET_RATE_CONTROL_ENABLE = 0x00000001;
  static const JOB_OBJECT_NET_RATE_CONTROL_MAX_BANDWIDTH = 0x00000002;
  static const JOB_OBJECT_NET_RATE_CONTROL_DSCP_TAG = 0x00000004;
  static const JOB_OBJECT_NET_RATE_CONTROL_VALID_FLAGS = 0x00000007;
}

/// {@category Enum}
class JOB_OBJECT_TERMINATE_AT_END_ACTION {
  static const JOB_OBJECT_TERMINATE_AT_END_OF_JOB = 0x00000000;
  static const JOB_OBJECT_POST_AT_END_OF_JOB = 0x00000001;
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
class MEM_EXTENDED_PARAMETER_TYPE {
  static const MemExtendedParameterInvalidType = 0x00000000;
  static const MemExtendedParameterAddressRequirements = 0x00000001;
  static const MemExtendedParameterNumaNode = 0x00000002;
  static const MemExtendedParameterPartitionHandle = 0x00000003;
  static const MemExtendedParameterUserPhysicalHandle = 0x00000004;
  static const MemExtendedParameterAttributeFlags = 0x00000005;
  static const MemExtendedParameterMax = 0x00000006;
}

/// {@category Enum}
class MEM_SECTION_EXTENDED_PARAMETER_TYPE {
  static const MemSectionExtendedParameterInvalidType = 0x00000000;
  static const MemSectionExtendedParameterUserPhysicalFlags = 0x00000001;
  static const MemSectionExtendedParameterNumaNode = 0x00000002;
  static const MemSectionExtendedParameterMax = 0x00000003;
}

/// {@category Enum}
class MONITOR_DISPLAY_STATE {
  static const PowerMonitorOff = 0x00000000;
  static const PowerMonitorOn = 0x00000001;
  static const PowerMonitorDim = 0x00000002;
}

/// {@category Enum}
class OS_DEPLOYEMENT_STATE_VALUES {
  static const OS_DEPLOYMENT_STANDARD = 0x00000001;
  static const OS_DEPLOYMENT_COMPACT = 0x00000002;
}

/// {@category Enum}
class POWER_INFORMATION_LEVEL {
  static const SystemPowerPolicyAc = 0x00000000;
  static const SystemPowerPolicyDc = 0x00000001;
  static const VerifySystemPolicyAc = 0x00000002;
  static const VerifySystemPolicyDc = 0x00000003;
  static const SystemPowerCapabilities = 0x00000004;
  static const SystemBatteryState = 0x00000005;
  static const SystemPowerStateHandler = 0x00000006;
  static const ProcessorStateHandler = 0x00000007;
  static const SystemPowerPolicyCurrent = 0x00000008;
  static const AdministratorPowerPolicy = 0x00000009;
  static const SystemReserveHiberFile = 0x0000000a;
  static const ProcessorInformation = 0x0000000b;
  static const SystemPowerInformation = 0x0000000c;
  static const ProcessorStateHandler2 = 0x0000000d;
  static const LastWakeTime = 0x0000000e;
  static const LastSleepTime = 0x0000000f;
  static const SystemExecutionState = 0x00000010;
  static const SystemPowerStateNotifyHandler = 0x00000011;
  static const ProcessorPowerPolicyAc = 0x00000012;
  static const ProcessorPowerPolicyDc = 0x00000013;
  static const VerifyProcessorPowerPolicyAc = 0x00000014;
  static const VerifyProcessorPowerPolicyDc = 0x00000015;
  static const ProcessorPowerPolicyCurrent = 0x00000016;
  static const SystemPowerStateLogging = 0x00000017;
  static const SystemPowerLoggingEntry = 0x00000018;
  static const SetPowerSettingValue = 0x00000019;
  static const NotifyUserPowerSetting = 0x0000001a;
  static const PowerInformationLevelUnused0 = 0x0000001b;
  static const SystemMonitorHiberBootPowerOff = 0x0000001c;
  static const SystemVideoState = 0x0000001d;
  static const TraceApplicationPowerMessage = 0x0000001e;
  static const TraceApplicationPowerMessageEnd = 0x0000001f;
  static const ProcessorPerfStates = 0x00000020;
  static const ProcessorIdleStates = 0x00000021;
  static const ProcessorCap = 0x00000022;
  static const SystemWakeSource = 0x00000023;
  static const SystemHiberFileInformation = 0x00000024;
  static const TraceServicePowerMessage = 0x00000025;
  static const ProcessorLoad = 0x00000026;
  static const PowerShutdownNotification = 0x00000027;
  static const MonitorCapabilities = 0x00000028;
  static const SessionPowerInit = 0x00000029;
  static const SessionDisplayState = 0x0000002a;
  static const PowerRequestCreate = 0x0000002b;
  static const PowerRequestAction = 0x0000002c;
  static const GetPowerRequestList = 0x0000002d;
  static const ProcessorInformationEx = 0x0000002e;
  static const NotifyUserModeLegacyPowerEvent = 0x0000002f;
  static const GroupPark = 0x00000030;
  static const ProcessorIdleDomains = 0x00000031;
  static const WakeTimerList = 0x00000032;
  static const SystemHiberFileSize = 0x00000033;
  static const ProcessorIdleStatesHv = 0x00000034;
  static const ProcessorPerfStatesHv = 0x00000035;
  static const ProcessorPerfCapHv = 0x00000036;
  static const ProcessorSetIdle = 0x00000037;
  static const LogicalProcessorIdling = 0x00000038;
  static const UserPresence = 0x00000039;
  static const PowerSettingNotificationName = 0x0000003a;
  static const GetPowerSettingValue = 0x0000003b;
  static const IdleResiliency = 0x0000003c;
  static const SessionRITState = 0x0000003d;
  static const SessionConnectNotification = 0x0000003e;
  static const SessionPowerCleanup = 0x0000003f;
  static const SessionLockState = 0x00000040;
  static const SystemHiberbootState = 0x00000041;
  static const PlatformInformation = 0x00000042;
  static const PdcInvocation = 0x00000043;
  static const MonitorInvocation = 0x00000044;
  static const FirmwareTableInformationRegistered = 0x00000045;
  static const SetShutdownSelectedTime = 0x00000046;
  static const SuspendResumeInvocation = 0x00000047;
  static const PlmPowerRequestCreate = 0x00000048;
  static const ScreenOff = 0x00000049;
  static const CsDeviceNotification = 0x0000004a;
  static const PlatformRole = 0x0000004b;
  static const LastResumePerformance = 0x0000004c;
  static const DisplayBurst = 0x0000004d;
  static const ExitLatencySamplingPercentage = 0x0000004e;
  static const RegisterSpmPowerSettings = 0x0000004f;
  static const PlatformIdleStates = 0x00000050;
  static const ProcessorIdleVeto = 0x00000051;
  static const PlatformIdleVeto = 0x00000052;
  static const SystemBatteryStatePrecise = 0x00000053;
  static const ThermalEvent = 0x00000054;
  static const PowerRequestActionInternal = 0x00000055;
  static const BatteryDeviceState = 0x00000056;
  static const PowerInformationInternal = 0x00000057;
  static const ThermalStandby = 0x00000058;
  static const SystemHiberFileType = 0x00000059;
  static const PhysicalPowerButtonPress = 0x0000005a;
  static const QueryPotentialDripsConstraint = 0x0000005b;
  static const EnergyTrackerCreate = 0x0000005c;
  static const EnergyTrackerQuery = 0x0000005d;
  static const UpdateBlackBoxRecorder = 0x0000005e;
  static const SessionAllowExternalDmaDevices = 0x0000005f;
  static const PowerInformationLevelMaximum = 0x00000060;
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
  static const MonitorRequestReasonUserInputTouch = 0x00000021;
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
  static const MonitorRequestReasonMax = 0x00000033;
}

/// {@category Enum}
class POWER_MONITOR_REQUEST_TYPE {
  static const MonitorRequestTypeOff = 0x00000000;
  static const MonitorRequestTypeOnAndPresent = 0x00000001;
  static const MonitorRequestTypeToggleOn = 0x00000002;
}

/// {@category Enum}
class POWER_REQUEST_CONTEXT_FLAGS {
  static const POWER_REQUEST_CONTEXT_DETAILED_STRING = 0x00000002;
  static const POWER_REQUEST_CONTEXT_SIMPLE_STRING = 0x00000001;
}

/// {@category Enum}
class POWER_REQUEST_TYPE {
  static const PowerRequestDisplayRequired = 0x00000000;
  static const PowerRequestSystemRequired = 0x00000001;
  static const PowerRequestAwayModeRequired = 0x00000002;
  static const PowerRequestExecutionRequired = 0x00000003;
}

/// {@category Enum}
class POWER_USER_PRESENCE_TYPE {
  static const UserNotPresent = 0x00000000;
  static const UserPresent = 0x00000001;
  static const UserUnknown = 0x000000ff;
}

/// {@category Enum}
class PROCESSOR_CACHE_TYPE {
  static const CacheUnified = 0x00000000;
  static const CacheInstruction = 0x00000001;
  static const CacheData = 0x00000002;
  static const CacheTrace = 0x00000003;
}

/// {@category Enum}
class PROCESS_MITIGATION_POLICY {
  static const ProcessDEPPolicy = 0x00000000;
  static const ProcessASLRPolicy = 0x00000001;
  static const ProcessDynamicCodePolicy = 0x00000002;
  static const ProcessStrictHandleCheckPolicy = 0x00000003;
  static const ProcessSystemCallDisablePolicy = 0x00000004;
  static const ProcessMitigationOptionsMask = 0x00000005;
  static const ProcessExtensionPointDisablePolicy = 0x00000006;
  static const ProcessControlFlowGuardPolicy = 0x00000007;
  static const ProcessSignaturePolicy = 0x00000008;
  static const ProcessFontDisablePolicy = 0x00000009;
  static const ProcessImageLoadPolicy = 0x0000000a;
  static const ProcessSystemCallFilterPolicy = 0x0000000b;
  static const ProcessPayloadRestrictionPolicy = 0x0000000c;
  static const ProcessChildProcessPolicy = 0x0000000d;
  static const ProcessSideChannelIsolationPolicy = 0x0000000e;
  static const ProcessUserShadowStackPolicy = 0x0000000f;
  static const MaxProcessMitigationPolicy = 0x00000010;
}

/// {@category Enum}
class QUERY_FILE_LAYOUT_FILTER_TYPE {
  static const QUERY_FILE_LAYOUT_FILTER_TYPE_NONE = 0x00000000;
  static const QUERY_FILE_LAYOUT_FILTER_TYPE_CLUSTERS = 0x00000001;
  static const QUERY_FILE_LAYOUT_FILTER_TYPE_FILEID = 0x00000002;
  static const QUERY_FILE_LAYOUT_FILTER_TYPE_STORAGE_RESERVE_ID = 0x00000003;
  static const QUERY_FILE_LAYOUT_NUM_FILTER_TYPES = 0x00000004;
}

/// {@category Enum}
class REFS_SMR_VOLUME_GC_ACTION {
  static const SmrGcActionStart = 0x00000001;
  static const SmrGcActionStartFullSpeed = 0x00000002;
  static const SmrGcActionPause = 0x00000003;
  static const SmrGcActionStop = 0x00000004;
}

/// {@category Enum}
class REFS_SMR_VOLUME_GC_METHOD {
  static const SmrGcMethodCompaction = 0x00000001;
  static const SmrGcMethodCompression = 0x00000002;
  static const SmrGcMethodRotation = 0x00000003;
}

/// {@category Enum}
class REFS_SMR_VOLUME_GC_STATE {
  static const SmrGcStateInactive = 0x00000000;
  static const SmrGcStatePaused = 0x00000001;
  static const SmrGcStateActive = 0x00000002;
  static const SmrGcStateActiveFullSpeed = 0x00000003;
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
class RTL_UMS_THREAD_INFO_CLASS {
  static const UmsThreadInvalidInfoClass = 0x00000000;
  static const UmsThreadUserContext = 0x00000001;
  static const UmsThreadPriority = 0x00000002;
  static const UmsThreadAffinity = 0x00000003;
  static const UmsThreadTeb = 0x00000004;
  static const UmsThreadIsSuspended = 0x00000005;
  static const UmsThreadIsTerminated = 0x00000006;
  static const UmsThreadMaxInfoClass = 0x00000007;
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
class SCM_PD_HEALTH_STATUS {
  static const ScmPhysicalDeviceHealth_Unknown = 0x00000000;
  static const ScmPhysicalDeviceHealth_Unhealthy = 0x00000001;
  static const ScmPhysicalDeviceHealth_Warning = 0x00000002;
  static const ScmPhysicalDeviceHealth_Healthy = 0x00000003;
  static const ScmPhysicalDeviceHealth_Max = 0x00000004;
}

/// {@category Enum}
class SCM_PD_MEDIA_REINITIALIZATION_STATUS {
  static const ScmPhysicalDeviceReinit_Success = 0x00000000;
  static const ScmPhysicalDeviceReinit_RebootNeeded = 0x00000001;
  static const ScmPhysicalDeviceReinit_ColdBootNeeded = 0x00000002;
  static const ScmPhysicalDeviceReinit_Max = 0x00000003;
}

/// {@category Enum}
class SCM_PD_OPERATIONAL_STATUS {
  static const ScmPhysicalDeviceOpStatus_Unknown = 0x00000000;
  static const ScmPhysicalDeviceOpStatus_Ok = 0x00000001;
  static const ScmPhysicalDeviceOpStatus_PredictingFailure = 0x00000002;
  static const ScmPhysicalDeviceOpStatus_InService = 0x00000003;
  static const ScmPhysicalDeviceOpStatus_HardwareError = 0x00000004;
  static const ScmPhysicalDeviceOpStatus_NotUsable = 0x00000005;
  static const ScmPhysicalDeviceOpStatus_TransientError = 0x00000006;
  static const ScmPhysicalDeviceOpStatus_Missing = 0x00000007;
  static const ScmPhysicalDeviceOpStatus_Max = 0x00000008;
}

/// {@category Enum}
class SCM_PD_OPERATIONAL_STATUS_REASON {
  static const ScmPhysicalDeviceOpReason_Unknown = 0x00000000;
  static const ScmPhysicalDeviceOpReason_Media = 0x00000001;
  static const ScmPhysicalDeviceOpReason_ThresholdExceeded = 0x00000002;
  static const ScmPhysicalDeviceOpReason_LostData = 0x00000003;
  static const ScmPhysicalDeviceOpReason_EnergySource = 0x00000004;
  static const ScmPhysicalDeviceOpReason_Configuration = 0x00000005;
  static const ScmPhysicalDeviceOpReason_DeviceController = 0x00000006;
  static const ScmPhysicalDeviceOpReason_MediaController = 0x00000007;
  static const ScmPhysicalDeviceOpReason_Component = 0x00000008;
  static const ScmPhysicalDeviceOpReason_BackgroundOperation = 0x00000009;
  static const ScmPhysicalDeviceOpReason_InvalidFirmware = 0x0000000a;
  static const ScmPhysicalDeviceOpReason_HealthCheck = 0x0000000b;
  static const ScmPhysicalDeviceOpReason_LostDataPersistence = 0x0000000c;
  static const ScmPhysicalDeviceOpReason_DisabledByPlatform = 0x0000000d;
  static const ScmPhysicalDeviceOpReason_PermanentError = 0x0000000e;
  static const ScmPhysicalDeviceOpReason_LostWritePersistence = 0x0000000f;
  static const ScmPhysicalDeviceOpReason_FatalError = 0x00000010;
  static const ScmPhysicalDeviceOpReason_DataPersistenceLossImminent =
      0x00000011;
  static const ScmPhysicalDeviceOpReason_WritePersistenceLossImminent =
      0x00000012;
  static const ScmPhysicalDeviceOpReason_MediaRemainingSpareBlock = 0x00000013;
  static const ScmPhysicalDeviceOpReason_PerformanceDegradation = 0x00000014;
  static const ScmPhysicalDeviceOpReason_ExcessiveTemperature = 0x00000015;
  static const ScmPhysicalDeviceOpReason_Max = 0x00000016;
}

/// {@category Enum}
class SCM_PD_PROPERTY_ID {
  static const ScmPhysicalDeviceProperty_DeviceInfo = 0x00000000;
  static const ScmPhysicalDeviceProperty_ManagementStatus = 0x00000001;
  static const ScmPhysicalDeviceProperty_FirmwareInfo = 0x00000002;
  static const ScmPhysicalDeviceProperty_LocationString = 0x00000003;
  static const ScmPhysicalDeviceProperty_DeviceSpecificInfo = 0x00000004;
  static const ScmPhysicalDeviceProperty_DeviceHandle = 0x00000005;
  static const ScmPhysicalDeviceProperty_Max = 0x00000006;
}

/// {@category Enum}
class SCM_PD_QUERY_TYPE {
  static const ScmPhysicalDeviceQuery_Descriptor = 0x00000000;
  static const ScmPhysicalDeviceQuery_IsSupported = 0x00000001;
  static const ScmPhysicalDeviceQuery_Max = 0x00000002;
}

/// {@category Enum}
class SCM_REGION_FLAG {
  static const ScmRegionFlagNone = 0x00000000;
  static const ScmRegionFlagLabel = 0x00000001;
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
}

/// {@category Enum}
class SE_LEARNING_MODE_DATA_TYPE {
  static const SeLearningModeInvalidType = 0x00000000;
  static const SeLearningModeSettings = 0x00000001;
  static const SeLearningModeMax = 0x00000002;
}

/// {@category Enum}
class SHRINK_VOLUME_REQUEST_TYPES {
  static const ShrinkPrepare = 0x00000001;
  static const ShrinkCommit = 0x00000002;
  static const ShrinkAbort = 0x00000003;
}

/// {@category Enum}
class STORAGE_ASSOCIATION_TYPE {
  static const StorageIdAssocDevice = 0x00000000;
  static const StorageIdAssocPort = 0x00000001;
  static const StorageIdAssocTarget = 0x00000002;
}

/// {@category Enum}
class STORAGE_ATTRIBUTE_MGMT_ACTION {
  static const StorAttributeMgmt_ClearAttribute = 0x00000000;
  static const StorAttributeMgmt_SetAttribute = 0x00000001;
  static const StorAttributeMgmt_ResetAttribute = 0x00000002;
}

/// {@category Enum}
class STORAGE_BUS_TYPE {
  static const BusTypeUnknown = 0x00000000;
  static const BusTypeScsi = 0x00000001;
  static const BusTypeAtapi = 0x00000002;
  static const BusTypeAta = 0x00000003;
  static const BusType1394 = 0x00000004;
  static const BusTypeSsa = 0x00000005;
  static const BusTypeFibre = 0x00000006;
  static const BusTypeUsb = 0x00000007;
  static const BusTypeRAID = 0x00000008;
  static const BusTypeiScsi = 0x00000009;
  static const BusTypeSas = 0x0000000a;
  static const BusTypeSata = 0x0000000b;
  static const BusTypeSd = 0x0000000c;
  static const BusTypeMmc = 0x0000000d;
  static const BusTypeVirtual = 0x0000000e;
  static const BusTypeFileBackedVirtual = 0x0000000f;
  static const BusTypeSpaces = 0x00000010;
  static const BusTypeNvme = 0x00000011;
  static const BusTypeSCM = 0x00000012;
  static const BusTypeUfs = 0x00000013;
  static const BusTypeMax = 0x00000014;
  static const BusTypeMaxReserved = 0x0000007f;
}

/// {@category Enum}
class STORAGE_COUNTER_TYPE {
  static const StorageCounterTypeUnknown = 0x00000000;
  static const StorageCounterTypeTemperatureCelsius = 0x00000001;
  static const StorageCounterTypeTemperatureCelsiusMax = 0x00000002;
  static const StorageCounterTypeReadErrorsTotal = 0x00000003;
  static const StorageCounterTypeReadErrorsCorrected = 0x00000004;
  static const StorageCounterTypeReadErrorsUncorrected = 0x00000005;
  static const StorageCounterTypeWriteErrorsTotal = 0x00000006;
  static const StorageCounterTypeWriteErrorsCorrected = 0x00000007;
  static const StorageCounterTypeWriteErrorsUncorrected = 0x00000008;
  static const StorageCounterTypeManufactureDate = 0x00000009;
  static const StorageCounterTypeStartStopCycleCount = 0x0000000a;
  static const StorageCounterTypeStartStopCycleCountMax = 0x0000000b;
  static const StorageCounterTypeLoadUnloadCycleCount = 0x0000000c;
  static const StorageCounterTypeLoadUnloadCycleCountMax = 0x0000000d;
  static const StorageCounterTypeWearPercentage = 0x0000000e;
  static const StorageCounterTypeWearPercentageWarning = 0x0000000f;
  static const StorageCounterTypeWearPercentageMax = 0x00000010;
  static const StorageCounterTypePowerOnHours = 0x00000011;
  static const StorageCounterTypeReadLatency100NSMax = 0x00000012;
  static const StorageCounterTypeWriteLatency100NSMax = 0x00000013;
  static const StorageCounterTypeFlushLatency100NSMax = 0x00000014;
  static const StorageCounterTypeMax = 0x00000015;
}

/// {@category Enum}
class STORAGE_CRYPTO_ALGORITHM_ID {
  static const StorageCryptoAlgorithmUnknown = 0x00000000;
  static const StorageCryptoAlgorithmXTSAES = 0x00000001;
  static const StorageCryptoAlgorithmBitlockerAESCBC = 0x00000002;
  static const StorageCryptoAlgorithmAESECB = 0x00000003;
  static const StorageCryptoAlgorithmESSIVAESCBC = 0x00000004;
  static const StorageCryptoAlgorithmMax = 0x00000005;
}

/// {@category Enum}
class STORAGE_CRYPTO_KEY_SIZE {
  static const StorageCryptoKeySizeUnknown = 0x00000000;
  static const StorageCryptoKeySize128Bits = 0x00000001;
  static const StorageCryptoKeySize192Bits = 0x00000002;
  static const StorageCryptoKeySize256Bits = 0x00000003;
  static const StorageCryptoKeySize512Bits = 0x00000004;
}

/// {@category Enum}
class STORAGE_DIAGNOSTIC_LEVEL {
  static const StorageDiagnosticLevelDefault = 0x00000000;
  static const StorageDiagnosticLevelMax = 0x00000001;
}

/// {@category Enum}
class STORAGE_DIAGNOSTIC_TARGET_TYPE {
  static const StorageDiagnosticTargetTypeUndefined = 0x00000000;
  static const StorageDiagnosticTargetTypePort = 0x00000001;
  static const StorageDiagnosticTargetTypeMiniport = 0x00000002;
  static const StorageDiagnosticTargetTypeHbaFirmware = 0x00000003;
  static const StorageDiagnosticTargetTypeMax = 0x00000004;
}

/// {@category Enum}
class STORAGE_DISK_HEALTH_STATUS {
  static const DiskHealthUnknown = 0x00000000;
  static const DiskHealthUnhealthy = 0x00000001;
  static const DiskHealthWarning = 0x00000002;
  static const DiskHealthHealthy = 0x00000003;
  static const DiskHealthMax = 0x00000004;
}

/// {@category Enum}
class STORAGE_DISK_OPERATIONAL_STATUS {
  static const DiskOpStatusNone = 0x00000000;
  static const DiskOpStatusUnknown = 0x00000001;
  static const DiskOpStatusOk = 0x00000002;
  static const DiskOpStatusPredictingFailure = 0x00000003;
  static const DiskOpStatusInService = 0x00000004;
  static const DiskOpStatusHardwareError = 0x00000005;
  static const DiskOpStatusNotUsable = 0x00000006;
  static const DiskOpStatusTransientError = 0x00000007;
  static const DiskOpStatusMissing = 0x00000008;
}

/// {@category Enum}
class STORAGE_IDENTIFIER_CODE_SET {
  static const StorageIdCodeSetReserved = 0x00000000;
  static const StorageIdCodeSetBinary = 0x00000001;
  static const StorageIdCodeSetAscii = 0x00000002;
  static const StorageIdCodeSetUtf8 = 0x00000003;
}

/// {@category Enum}
class STORAGE_IDENTIFIER_TYPE {
  static const StorageIdTypeVendorSpecific = 0x00000000;
  static const StorageIdTypeVendorId = 0x00000001;
  static const StorageIdTypeEUI64 = 0x00000002;
  static const StorageIdTypeFCPHName = 0x00000003;
  static const StorageIdTypePortRelative = 0x00000004;
  static const StorageIdTypeTargetPortGroup = 0x00000005;
  static const StorageIdTypeLogicalUnitGroup = 0x00000006;
  static const StorageIdTypeMD5LogicalUnitIdentifier = 0x00000007;
  static const StorageIdTypeScsiNameString = 0x00000008;
}

/// {@category Enum}
class STORAGE_ID_NAA_FORMAT {
  static const StorageIdNAAFormatIEEEExtended = 0x00000002;
  static const StorageIdNAAFormatIEEERegistered = 0x00000003;
  static const StorageIdNAAFormatIEEEERegisteredExtended = 0x00000005;
}

/// {@category Enum}
class STORAGE_MEDIA_TYPE {
  static const DDS_4mm = 0x00000020;
  static const MiniQic = 0x00000021;
  static const Travan = 0x00000022;
  static const QIC = 0x00000023;
  static const MP_8mm = 0x00000024;
  static const AME_8mm = 0x00000025;
  static const AIT1_8mm = 0x00000026;
  static const DLT = 0x00000027;
  static const NCTP = 0x00000028;
  static const IBM_3480 = 0x00000029;
  static const IBM_3490E = 0x0000002a;
  static const IBM_Magstar_3590 = 0x0000002b;
  static const IBM_Magstar_MP = 0x0000002c;
  static const STK_DATA_D3 = 0x0000002d;
  static const SONY_DTF = 0x0000002e;
  static const DV_6mm = 0x0000002f;
  static const DMI = 0x00000030;
  static const SONY_D2 = 0x00000031;
  static const CLEANER_CARTRIDGE = 0x00000032;
  static const CD_ROM = 0x00000033;
  static const CD_R = 0x00000034;
  static const CD_RW = 0x00000035;
  static const DVD_ROM = 0x00000036;
  static const DVD_R = 0x00000037;
  static const DVD_RW = 0x00000038;
  static const MO_3_RW = 0x00000039;
  static const MO_5_WO = 0x0000003a;
  static const MO_5_RW = 0x0000003b;
  static const MO_5_LIMDOW = 0x0000003c;
  static const PC_5_WO = 0x0000003d;
  static const PC_5_RW = 0x0000003e;
  static const PD_5_RW = 0x0000003f;
  static const ABL_5_WO = 0x00000040;
  static const PINNACLE_APEX_5_RW = 0x00000041;
  static const SONY_12_WO = 0x00000042;
  static const PHILIPS_12_WO = 0x00000043;
  static const HITACHI_12_WO = 0x00000044;
  static const CYGNET_12_WO = 0x00000045;
  static const KODAK_14_WO = 0x00000046;
  static const MO_NFR_525 = 0x00000047;
  static const NIKON_12_RW = 0x00000048;
  static const IOMEGA_ZIP = 0x00000049;
  static const IOMEGA_JAZ = 0x0000004a;
  static const SYQUEST_EZ135 = 0x0000004b;
  static const SYQUEST_EZFLYER = 0x0000004c;
  static const SYQUEST_SYJET = 0x0000004d;
  static const AVATAR_F2 = 0x0000004e;
  static const MP2_8mm = 0x0000004f;
  static const DST_S = 0x00000050;
  static const DST_M = 0x00000051;
  static const DST_L = 0x00000052;
  static const VXATape_1 = 0x00000053;
  static const VXATape_2 = 0x00000054;
  static const STK_9840 = 0x00000055;
  static const LTO_Ultrium = 0x00000056;
  static const LTO_Accelis = 0x00000057;
  static const DVD_RAM = 0x00000058;
  static const AIT_8mm = 0x00000059;
  static const ADR_1 = 0x0000005a;
  static const ADR_2 = 0x0000005b;
  static const STK_9940 = 0x0000005c;
  static const SAIT = 0x0000005d;
  static const VXATape = 0x0000005e;
}

/// {@category Enum}
class STORAGE_OPERATIONAL_STATUS_REASON {
  static const DiskOpReasonUnknown = 0x00000000;
  static const DiskOpReasonScsiSenseCode = 0x00000001;
  static const DiskOpReasonMedia = 0x00000002;
  static const DiskOpReasonIo = 0x00000003;
  static const DiskOpReasonThresholdExceeded = 0x00000004;
  static const DiskOpReasonLostData = 0x00000005;
  static const DiskOpReasonEnergySource = 0x00000006;
  static const DiskOpReasonConfiguration = 0x00000007;
  static const DiskOpReasonDeviceController = 0x00000008;
  static const DiskOpReasonMediaController = 0x00000009;
  static const DiskOpReasonComponent = 0x0000000a;
  static const DiskOpReasonNVDIMM_N = 0x0000000b;
  static const DiskOpReasonBackgroundOperation = 0x0000000c;
  static const DiskOpReasonInvalidFirmware = 0x0000000d;
  static const DiskOpReasonHealthCheck = 0x0000000e;
  static const DiskOpReasonLostDataPersistence = 0x0000000f;
  static const DiskOpReasonDisabledByPlatform = 0x00000010;
  static const DiskOpReasonLostWritePersistence = 0x00000011;
  static const DiskOpReasonDataPersistenceLossImminent = 0x00000012;
  static const DiskOpReasonWritePersistenceLossImminent = 0x00000013;
  static const DiskOpReasonMax = 0x00000014;
}

/// {@category Enum}
class STORAGE_POWERUP_REASON_TYPE {
  static const StoragePowerupUnknown = 0x00000000;
  static const StoragePowerupIO = 0x00000001;
  static const StoragePowerupDeviceAttention = 0x00000002;
}

/// {@category Enum}
class STORAGE_PROTOCOL_UFS_DATA_TYPE {
  static const UfsDataTypeUnknown = 0x00000000;
  static const UfsDataTypeQueryDescriptor = 0x00000001;
  static const UfsDataTypeMax = 0x00000002;
}

/// {@category Enum}
class STORAGE_RESERVE_ID {
  static const StorageReserveIdNone = 0x00000000;
  static const StorageReserveIdHard = 0x00000001;
  static const StorageReserveIdSoft = 0x00000002;
  static const StorageReserveIdUpdateScratch = 0x00000003;
  static const StorageReserveIdMax = 0x00000004;
}

/// {@category Enum}
class STORAGE_RPMB_COMMAND_TYPE {
  static const StorRpmbProgramAuthKey = 0x00000001;
  static const StorRpmbQueryWriteCounter = 0x00000002;
  static const StorRpmbAuthenticatedWrite = 0x00000003;
  static const StorRpmbAuthenticatedRead = 0x00000004;
  static const StorRpmbReadResultRequest = 0x00000005;
  static const StorRpmbAuthenticatedDeviceConfigWrite = 0x00000006;
  static const StorRpmbAuthenticatedDeviceConfigRead = 0x00000007;
}

/// {@category Enum}
class STORAGE_RPMB_FRAME_TYPE {
  static const StorageRpmbFrameTypeUnknown = 0x00000000;
  static const StorageRpmbFrameTypeStandard = 0x00000001;
  static const StorageRpmbFrameTypeMax = 0x00000002;
}

/// {@category Enum}
class STORAGE_SET_TYPE {
  static const PropertyStandardSet = 0x00000000;
  static const PropertyExistsSet = 0x00000001;
  static const PropertySetMaxDefined = 0x00000002;
}

/// {@category Enum}
class STORAGE_TIER_CLASS {
  static const StorageTierClassUnspecified = 0x00000000;
  static const StorageTierClassCapacity = 0x00000001;
  static const StorageTierClassPerformance = 0x00000002;
  static const StorageTierClassMax = 0x00000003;
}

/// {@category Enum}
class STORAGE_TIER_MEDIA_TYPE {
  static const StorageTierMediaTypeUnspecified = 0x00000000;
  static const StorageTierMediaTypeDisk = 0x00000001;
  static const StorageTierMediaTypeSsd = 0x00000002;
  static const StorageTierMediaTypeScm = 0x00000004;
  static const StorageTierMediaTypeMax = 0x00000005;
}

/// {@category Enum}
class STORAGE_ZONED_DEVICE_TYPES {
  static const ZonedDeviceTypeUnknown = 0x00000000;
  static const ZonedDeviceTypeHostManaged = 0x00000001;
  static const ZonedDeviceTypeHostAware = 0x00000002;
  static const ZonedDeviceTypeDeviceManaged = 0x00000003;
}

/// {@category Enum}
class STORAGE_ZONES_ATTRIBUTES {
  static const ZonesAttributeTypeAndLengthMayDifferent = 0x00000000;
  static const ZonesAttributeTypeSameLengthSame = 0x00000001;
  static const ZonesAttributeTypeSameLastZoneLengthDifferent = 0x00000002;
  static const ZonesAttributeTypeMayDifferentLengthSame = 0x00000003;
}

/// {@category Enum}
class STORAGE_ZONE_CONDITION {
  static const ZoneConditionConventional = 0x00000000;
  static const ZoneConditionEmpty = 0x00000001;
  static const ZoneConditionImplicitlyOpened = 0x00000002;
  static const ZoneConditionExplicitlyOpened = 0x00000003;
  static const ZoneConditionClosed = 0x00000004;
  static const ZoneConditionReadOnly = 0x0000000d;
  static const ZoneConditionFull = 0x0000000e;
  static const ZoneConditionOffline = 0x0000000f;
}

/// {@category Enum}
class STORAGE_ZONE_TYPES {
  static const ZoneTypeUnknown = 0x00000000;
  static const ZoneTypeConventional = 0x00000001;
  static const ZoneTypeSequentialWriteRequired = 0x00000002;
  static const ZoneTypeSequentialWritePreferred = 0x00000003;
  static const ZoneTypeMax = 0x00000004;
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
class TP_CALLBACK_PRIORITY {
  static const TP_CALLBACK_PRIORITY_HIGH = 0x00000000;
  static const TP_CALLBACK_PRIORITY_NORMAL = 0x00000001;
  static const TP_CALLBACK_PRIORITY_LOW = 0x00000002;
  static const TP_CALLBACK_PRIORITY_INVALID = 0x00000003;
  static const TP_CALLBACK_PRIORITY_COUNT = 0x00000003;
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
class TTTOOLINFO_FLAGS {
  static const TTF_ABSOLUTE = 0x00000080;
  static const TTF_CENTERTIP = 0x00000002;
  static const TTF_IDISHWND = 0x00000001;
  static const TTF_PARSELINKS = 0x00001000;
  static const TTF_RTLREADING = 0x00000004;
  static const TTF_SUBCLASS = 0x00000010;
  static const TTF_TRACK = 0x00000020;
  static const TTF_TRANSPARENT = 0x00000100;
}

/// {@category Enum}
class USER_ACTIVITY_PRESENCE {
  static const PowerUserPresent = 0x00000000;
  static const PowerUserNotPresent = 0x00000001;
  static const PowerUserInactive = 0x00000002;
  static const PowerUserMaximum = 0x00000003;
  static const PowerUserInvalid = 0x00000003;
}

/// {@category Enum}
class VIRTUAL_STORAGE_BEHAVIOR_CODE {
  static const VirtualStorageBehaviorUndefined = 0x00000000;
  static const VirtualStorageBehaviorCacheWriteThrough = 0x00000001;
  static const VirtualStorageBehaviorCacheWriteBack = 0x00000002;
}

/// {@category Enum}
class DEVICEDUMP_COLLECTION_TYPE {
  static const TCCollectionBugCheck = 0x00000001;
  static const TCCollectionApplicationRequested = 0x00000002;
  static const TCCollectionDeviceRequested = 0x00000003;
}
