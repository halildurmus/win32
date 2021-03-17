/// {@category Enum}
class CONFIGRET {
  static const CR_SUCCESS = 0x00000000;
  static const CR_DEFAULT = 0x00000001;
  static const CR_OUT_OF_MEMORY = 0x00000002;
  static const CR_INVALID_POINTER = 0x00000003;
  static const CR_INVALID_FLAG = 0x00000004;
  static const CR_INVALID_DEVNODE = 0x00000005;
  static const CR_INVALID_DEVINST = 0x00000005;
  static const CR_INVALID_RES_DES = 0x00000006;
  static const CR_INVALID_LOG_CONF = 0x00000007;
  static const CR_INVALID_ARBITRATOR = 0x00000008;
  static const CR_INVALID_NODELIST = 0x00000009;
  static const CR_DEVNODE_HAS_REQS = 0x0000000a;
  static const CR_DEVINST_HAS_REQS = 0x0000000a;
  static const CR_INVALID_RESOURCEID = 0x0000000b;
  static const CR_DLVXD_NOT_FOUND = 0x0000000c;
  static const CR_NO_SUCH_DEVNODE = 0x0000000d;
  static const CR_NO_SUCH_DEVINST = 0x0000000d;
  static const CR_NO_MORE_LOG_CONF = 0x0000000e;
  static const CR_NO_MORE_RES_DES = 0x0000000f;
  static const CR_ALREADY_SUCH_DEVNODE = 0x00000010;
  static const CR_ALREADY_SUCH_DEVINST = 0x00000010;
  static const CR_INVALID_RANGE_LIST = 0x00000011;
  static const CR_INVALID_RANGE = 0x00000012;
  static const CR_FAILURE = 0x00000013;
  static const CR_NO_SUCH_LOGICAL_DEV = 0x00000014;
  static const CR_CREATE_BLOCKED = 0x00000015;
  static const CR_NOT_SYSTEM_VM = 0x00000016;
  static const CR_REMOVE_VETOED = 0x00000017;
  static const CR_APM_VETOED = 0x00000018;
  static const CR_INVALID_LOAD_TYPE = 0x00000019;
  static const CR_BUFFER_SMALL = 0x0000001a;
  static const CR_NO_ARBITRATOR = 0x0000001b;
  static const CR_NO_REGISTRY_HANDLE = 0x0000001c;
  static const CR_REGISTRY_ERROR = 0x0000001d;
  static const CR_INVALID_DEVICE_ID = 0x0000001e;
  static const CR_INVALID_DATA = 0x0000001f;
  static const CR_INVALID_API = 0x00000020;
  static const CR_DEVLOADER_NOT_READY = 0x00000021;
  static const CR_NEED_RESTART = 0x00000022;
  static const CR_NO_MORE_HW_PROFILES = 0x00000023;
  static const CR_DEVICE_NOT_THERE = 0x00000024;
  static const CR_NO_SUCH_VALUE = 0x00000025;
  static const CR_WRONG_TYPE = 0x00000026;
  static const CR_INVALID_PRIORITY = 0x00000027;
  static const CR_NOT_DISABLEABLE = 0x00000028;
  static const CR_FREE_RESOURCES = 0x00000029;
  static const CR_QUERY_VETOED = 0x0000002a;
  static const CR_CANT_SHARE_IRQ = 0x0000002b;
  static const CR_NO_DEPENDENT = 0x0000002c;
  static const CR_SAME_RESOURCES = 0x0000002d;
  static const CR_NO_SUCH_REGISTRY_KEY = 0x0000002e;
  static const CR_INVALID_MACHINENAME = 0x0000002f;
  static const CR_REMOTE_COMM_FAILURE = 0x00000030;
  static const CR_MACHINE_UNAVAILABLE = 0x00000031;
  static const CR_NO_CM_SERVICES = 0x00000032;
  static const CR_ACCESS_DENIED = 0x00000033;
  static const CR_CALL_NOT_IMPLEMENTED = 0x00000034;
  static const CR_INVALID_PROPERTY = 0x00000035;
  static const CR_DEVICE_INTERFACE_ACTIVE = 0x00000036;
  static const CR_NO_SUCH_DEVICE_INTERFACE = 0x00000037;
  static const CR_INVALID_REFERENCE_STRING = 0x00000038;
  static const CR_INVALID_CONFLICT_LIST = 0x00000039;
  static const CR_INVALID_INDEX = 0x0000003a;
  static const CR_INVALID_STRUCTURE_SIZE = 0x0000003b;
  static const NUM_CR_RESULTS = 0x0000003c;
}

/// {@category Enum}
class SetupFileLogInfo {
  static const SetupFileLogSourceFilename = 0x00000000;
  static const SetupFileLogChecksum = 0x00000001;
  static const SetupFileLogDiskTagfile = 0x00000002;
  static const SetupFileLogDiskDescription = 0x00000003;
  static const SetupFileLogOtherInfo = 0x00000004;
  static const SetupFileLogMax = 0x00000005;
}

/// {@category Enum}
class PNP_VETO_TYPE {
  static const PNP_VetoTypeUnknown = 0x00000000;
  static const PNP_VetoLegacyDevice = 0x00000001;
  static const PNP_VetoPendingClose = 0x00000002;
  static const PNP_VetoWindowsApp = 0x00000003;
  static const PNP_VetoWindowsService = 0x00000004;
  static const PNP_VetoOutstandingOpen = 0x00000005;
  static const PNP_VetoDevice = 0x00000006;
  static const PNP_VetoDriver = 0x00000007;
  static const PNP_VetoIllegalDeviceRequest = 0x00000008;
  static const PNP_VetoInsufficientPower = 0x00000009;
  static const PNP_VetoNonDisableable = 0x0000000a;
  static const PNP_VetoLegacyDriver = 0x0000000b;
  static const PNP_VetoInsufficientRights = 0x0000000c;
  static const PNP_VetoAlreadyRemoved = 0x0000000d;
}

/// {@category Enum}
class CM_NOTIFY_FILTER_TYPE {
  static const CM_NOTIFY_FILTER_TYPE_DEVICEINTERFACE = 0x00000000;
  static const CM_NOTIFY_FILTER_TYPE_DEVICEHANDLE = 0x00000001;
  static const CM_NOTIFY_FILTER_TYPE_DEVICEINSTANCE = 0x00000002;
  static const CM_NOTIFY_FILTER_TYPE_MAX = 0x00000003;
}

/// {@category Enum}
class CM_NOTIFY_ACTION {
  static const CM_NOTIFY_ACTION_DEVICEINTERFACEARRIVAL = 0x00000000;
  static const CM_NOTIFY_ACTION_DEVICEINTERFACEREMOVAL = 0x00000001;
  static const CM_NOTIFY_ACTION_DEVICEQUERYREMOVE = 0x00000002;
  static const CM_NOTIFY_ACTION_DEVICEQUERYREMOVEFAILED = 0x00000003;
  static const CM_NOTIFY_ACTION_DEVICEREMOVEPENDING = 0x00000004;
  static const CM_NOTIFY_ACTION_DEVICEREMOVECOMPLETE = 0x00000005;
  static const CM_NOTIFY_ACTION_DEVICECUSTOMEVENT = 0x00000006;
  static const CM_NOTIFY_ACTION_DEVICEINSTANCEENUMERATED = 0x00000007;
  static const CM_NOTIFY_ACTION_DEVICEINSTANCESTARTED = 0x00000008;
  static const CM_NOTIFY_ACTION_DEVICEINSTANCEREMOVED = 0x00000009;
  static const CM_NOTIFY_ACTION_MAX = 0x0000000a;
}

/// {@category Enum}
class SetupDiBuildDriverInfoList_DriverTypeFlags {
  static const SPDIT_CLASSDRIVER = 0x00000001;
  static const SPDIT_COMPATDRIVER = 0x00000002;
}

