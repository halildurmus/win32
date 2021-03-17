/// {@category Enum}
class STREAM_INFO_LEVELS {
  static const FindStreamInfoStandard = 0x00000000;
  static const FindStreamInfoMaxInfoLevel = 0x00000001;
}

/// {@category Enum}
class NtmsObjectsTypes {
  static const NTMS_UNKNOWN = 0x00000000;
  static const NTMS_OBJECT = 0x00000001;
  static const NTMS_CHANGER = 0x00000002;
  static const NTMS_CHANGER_TYPE = 0x00000003;
  static const NTMS_COMPUTER = 0x00000004;
  static const NTMS_DRIVE = 0x00000005;
  static const NTMS_DRIVE_TYPE = 0x00000006;
  static const NTMS_IEDOOR = 0x00000007;
  static const NTMS_IEPORT = 0x00000008;
  static const NTMS_LIBRARY = 0x00000009;
  static const NTMS_LIBREQUEST = 0x0000000a;
  static const NTMS_LOGICAL_MEDIA = 0x0000000b;
  static const NTMS_MEDIA_POOL = 0x0000000c;
  static const NTMS_MEDIA_TYPE = 0x0000000d;
  static const NTMS_PARTITION = 0x0000000e;
  static const NTMS_PHYSICAL_MEDIA = 0x0000000f;
  static const NTMS_STORAGESLOT = 0x00000010;
  static const NTMS_OPREQUEST = 0x00000011;
  static const NTMS_UI_DESTINATION = 0x00000012;
  static const NTMS_NUMBER_OF_OBJECT_TYPES = 0x00000013;
}

/// {@category Enum}
class NtmsAsyncStatus {
  static const NTMS_ASYNCSTATE_QUEUED = 0x00000000;
  static const NTMS_ASYNCSTATE_WAIT_RESOURCE = 0x00000001;
  static const NTMS_ASYNCSTATE_WAIT_OPERATOR = 0x00000002;
  static const NTMS_ASYNCSTATE_INPROCESS = 0x00000003;
  static const NTMS_ASYNCSTATE_COMPLETE = 0x00000004;
}

/// {@category Enum}
class NtmsAsyncOperations {
  static const NTMS_ASYNCOP_MOUNT = 0x00000001;
}

/// {@category Enum}
class NtmsSessionOptions {
  static const NTMS_SESSION_QUERYEXPEDITE = 0x00000001;
}

/// {@category Enum}
class NtmsMountOptions {
  static const NTMS_MOUNT_READ = 0x00000001;
  static const NTMS_MOUNT_WRITE = 0x00000002;
  static const NTMS_MOUNT_ERROR_NOT_AVAILABLE = 0x00000004;
  static const NTMS_MOUNT_ERROR_IF_UNAVAILABLE = 0x00000004;
  static const NTMS_MOUNT_ERROR_OFFLINE = 0x00000008;
  static const NTMS_MOUNT_ERROR_IF_OFFLINE = 0x00000008;
  static const NTMS_MOUNT_SPECIFIC_DRIVE = 0x00000010;
  static const NTMS_MOUNT_NOWAIT = 0x00000020;
}

/// {@category Enum}
class NtmsDismountOptions {
  static const NTMS_DISMOUNT_DEFERRED = 0x00000001;
  static const NTMS_DISMOUNT_IMMEDIATE = 0x00000002;
}

/// {@category Enum}
class NtmsMountPriority {
  static const NTMS_PRIORITY_DEFAULT = 0x00000000;
  static const NTMS_PRIORITY_HIGHEST = 0x0000000f;
  static const NTMS_PRIORITY_HIGH = 0x00000007;
  static const NTMS_PRIORITY_NORMAL = 0x00000000;
  static const NTMS_PRIORITY_LOW = 0xfffffff9;
  static const NTMS_PRIORITY_LOWEST = 0xfffffff1;
}

/// {@category Enum}
class NtmsAllocateOptions {
  static const NTMS_ALLOCATE_NEW = 0x00000001;
  static const NTMS_ALLOCATE_NEXT = 0x00000002;
  static const NTMS_ALLOCATE_ERROR_IF_UNAVAILABLE = 0x00000004;
}

/// {@category Enum}
class NtmsCreateOptions {
  static const NTMS_OPEN_EXISTING = 0x00000001;
  static const NTMS_CREATE_NEW = 0x00000002;
  static const NTMS_OPEN_ALWAYS = 0x00000003;
}

/// {@category Enum}
class NtmsDriveState {
  static const NTMS_DRIVESTATE_DISMOUNTED = 0x00000000;
  static const NTMS_DRIVESTATE_MOUNTED = 0x00000001;
  static const NTMS_DRIVESTATE_LOADED = 0x00000002;
  static const NTMS_DRIVESTATE_UNLOADED = 0x00000005;
  static const NTMS_DRIVESTATE_BEING_CLEANED = 0x00000006;
  static const NTMS_DRIVESTATE_DISMOUNTABLE = 0x00000007;
}

/// {@category Enum}
class NtmsLibraryType {
  static const NTMS_LIBRARYTYPE_UNKNOWN = 0x00000000;
  static const NTMS_LIBRARYTYPE_OFFLINE = 0x00000001;
  static const NTMS_LIBRARYTYPE_ONLINE = 0x00000002;
  static const NTMS_LIBRARYTYPE_STANDALONE = 0x00000003;
}

/// {@category Enum}
class NtmsLibraryFlags {
  static const NTMS_LIBRARYFLAG_FIXEDOFFLINE = 0x00000001;
  static const NTMS_LIBRARYFLAG_CLEANERPRESENT = 0x00000002;
  static const NTMS_LIBRARYFLAG_AUTODETECTCHANGE = 0x00000004;
  static const NTMS_LIBRARYFLAG_IGNORECLEANERUSESREMAINING = 0x00000008;
  static const NTMS_LIBRARYFLAG_RECOGNIZECLEANERBARCODE = 0x00000010;
}

/// {@category Enum}
class NtmsInventoryMethod {
  static const NTMS_INVENTORY_NONE = 0x00000000;
  static const NTMS_INVENTORY_FAST = 0x00000001;
  static const NTMS_INVENTORY_OMID = 0x00000002;
  static const NTMS_INVENTORY_DEFAULT = 0x00000003;
  static const NTMS_INVENTORY_SLOT = 0x00000004;
  static const NTMS_INVENTORY_STOP = 0x00000005;
  static const NTMS_INVENTORY_MAX = 0x00000006;
}

/// {@category Enum}
class NtmsSlotState {
  static const NTMS_SLOTSTATE_UNKNOWN = 0x00000000;
  static const NTMS_SLOTSTATE_FULL = 0x00000001;
  static const NTMS_SLOTSTATE_EMPTY = 0x00000002;
  static const NTMS_SLOTSTATE_NOTPRESENT = 0x00000003;
  static const NTMS_SLOTSTATE_NEEDSINVENTORY = 0x00000004;
}

/// {@category Enum}
class NtmsDoorState {
  static const NTMS_DOORSTATE_UNKNOWN = 0x00000000;
  static const NTMS_DOORSTATE_CLOSED = 0x00000001;
  static const NTMS_DOORSTATE_OPEN = 0x00000002;
}

/// {@category Enum}
class NtmsPortPosition {
  static const NTMS_PORTPOSITION_UNKNOWN = 0x00000000;
  static const NTMS_PORTPOSITION_EXTENDED = 0x00000001;
  static const NTMS_PORTPOSITION_RETRACTED = 0x00000002;
}

/// {@category Enum}
class NtmsPortContent {
  static const NTMS_PORTCONTENT_UNKNOWN = 0x00000000;
  static const NTMS_PORTCONTENT_FULL = 0x00000001;
  static const NTMS_PORTCONTENT_EMPTY = 0x00000002;
}

/// {@category Enum}
class NtmsBarCodeState {
  static const NTMS_BARCODESTATE_OK = 0x00000001;
  static const NTMS_BARCODESTATE_UNREADABLE = 0x00000002;
}

/// {@category Enum}
class NtmsMediaState {
  static const NTMS_MEDIASTATE_IDLE = 0x00000000;
  static const NTMS_MEDIASTATE_INUSE = 0x00000001;
  static const NTMS_MEDIASTATE_MOUNTED = 0x00000002;
  static const NTMS_MEDIASTATE_LOADED = 0x00000003;
  static const NTMS_MEDIASTATE_UNLOADED = 0x00000004;
  static const NTMS_MEDIASTATE_OPERROR = 0x00000005;
  static const NTMS_MEDIASTATE_OPREQ = 0x00000006;
}

/// {@category Enum}
class NtmsPartitionState {
  static const NTMS_PARTSTATE_UNKNOWN = 0x00000000;
  static const NTMS_PARTSTATE_UNPREPARED = 0x00000001;
  static const NTMS_PARTSTATE_INCOMPATIBLE = 0x00000002;
  static const NTMS_PARTSTATE_DECOMMISSIONED = 0x00000003;
  static const NTMS_PARTSTATE_AVAILABLE = 0x00000004;
  static const NTMS_PARTSTATE_ALLOCATED = 0x00000005;
  static const NTMS_PARTSTATE_COMPLETE = 0x00000006;
  static const NTMS_PARTSTATE_FOREIGN = 0x00000007;
  static const NTMS_PARTSTATE_IMPORT = 0x00000008;
  static const NTMS_PARTSTATE_RESERVED = 0x00000009;
}

/// {@category Enum}
class NtmsPoolType {
  static const NTMS_POOLTYPE_UNKNOWN = 0x00000000;
  static const NTMS_POOLTYPE_SCRATCH = 0x00000001;
  static const NTMS_POOLTYPE_FOREIGN = 0x00000002;
  static const NTMS_POOLTYPE_IMPORT = 0x00000003;
  static const NTMS_POOLTYPE_APPLICATION = 0x000003e8;
}

/// {@category Enum}
class NtmsAllocationPolicy {
  static const NTMS_ALLOCATE_FROMSCRATCH = 0x00000001;
}

/// {@category Enum}
class NtmsDeallocationPolicy {
  static const NTMS_DEALLOCATE_TOSCRATCH = 0x00000001;
}

/// {@category Enum}
class NtmsReadWriteCharacteristics {
  static const NTMS_MEDIARW_UNKNOWN = 0x00000000;
  static const NTMS_MEDIARW_REWRITABLE = 0x00000001;
  static const NTMS_MEDIARW_WRITEONCE = 0x00000002;
  static const NTMS_MEDIARW_READONLY = 0x00000003;
}

/// {@category Enum}
class NtmsLmOperation {
  static const NTMS_LM_REMOVE = 0x00000000;
  static const NTMS_LM_DISABLECHANGER = 0x00000001;
  static const NTMS_LM_DISABLELIBRARY = 0x00000001;
  static const NTMS_LM_ENABLECHANGER = 0x00000002;
  static const NTMS_LM_ENABLELIBRARY = 0x00000002;
  static const NTMS_LM_DISABLEDRIVE = 0x00000003;
  static const NTMS_LM_ENABLEDRIVE = 0x00000004;
  static const NTMS_LM_DISABLEMEDIA = 0x00000005;
  static const NTMS_LM_ENABLEMEDIA = 0x00000006;
  static const NTMS_LM_UPDATEOMID = 0x00000007;
  static const NTMS_LM_INVENTORY = 0x00000008;
  static const NTMS_LM_DOORACCESS = 0x00000009;
  static const NTMS_LM_EJECT = 0x0000000a;
  static const NTMS_LM_EJECTCLEANER = 0x0000000b;
  static const NTMS_LM_INJECT = 0x0000000c;
  static const NTMS_LM_INJECTCLEANER = 0x0000000d;
  static const NTMS_LM_PROCESSOMID = 0x0000000e;
  static const NTMS_LM_CLEANDRIVE = 0x0000000f;
  static const NTMS_LM_DISMOUNT = 0x00000010;
  static const NTMS_LM_MOUNT = 0x00000011;
  static const NTMS_LM_WRITESCRATCH = 0x00000012;
  static const NTMS_LM_CLASSIFY = 0x00000013;
  static const NTMS_LM_RESERVECLEANER = 0x00000014;
  static const NTMS_LM_RELEASECLEANER = 0x00000015;
  static const NTMS_LM_MAXWORKITEM = 0x00000016;
}

/// {@category Enum}
class NtmsLmState {
  static const NTMS_LM_QUEUED = 0x00000000;
  static const NTMS_LM_INPROCESS = 0x00000001;
  static const NTMS_LM_PASSED = 0x00000002;
  static const NTMS_LM_FAILED = 0x00000003;
  static const NTMS_LM_INVALID = 0x00000004;
  static const NTMS_LM_WAITING = 0x00000005;
  static const NTMS_LM_DEFERRED = 0x00000006;
  static const NTMS_LM_DEFFERED = 0x00000006;
  static const NTMS_LM_CANCELLED = 0x00000007;
  static const NTMS_LM_STOPPED = 0x00000008;
}

/// {@category Enum}
class NtmsOpreqCommand {
  static const NTMS_OPREQ_UNKNOWN = 0x00000000;
  static const NTMS_OPREQ_NEWMEDIA = 0x00000001;
  static const NTMS_OPREQ_CLEANER = 0x00000002;
  static const NTMS_OPREQ_DEVICESERVICE = 0x00000003;
  static const NTMS_OPREQ_MOVEMEDIA = 0x00000004;
  static const NTMS_OPREQ_MESSAGE = 0x00000005;
}

/// {@category Enum}
class NtmsOpreqState {
  static const NTMS_OPSTATE_UNKNOWN = 0x00000000;
  static const NTMS_OPSTATE_SUBMITTED = 0x00000001;
  static const NTMS_OPSTATE_ACTIVE = 0x00000002;
  static const NTMS_OPSTATE_INPROGRESS = 0x00000003;
  static const NTMS_OPSTATE_REFUSED = 0x00000004;
  static const NTMS_OPSTATE_COMPLETE = 0x00000005;
}

/// {@category Enum}
class NtmsLibRequestFlags {
  static const NTMS_LIBREQFLAGS_NOAUTOPURGE = 0x00000001;
  static const NTMS_LIBREQFLAGS_NOFAILEDPURGE = 0x00000002;
}

/// {@category Enum}
class NtmsOpRequestFlags {
  static const NTMS_OPREQFLAGS_NOAUTOPURGE = 0x00000001;
  static const NTMS_OPREQFLAGS_NOFAILEDPURGE = 0x00000002;
  static const NTMS_OPREQFLAGS_NOALERTS = 0x00000010;
  static const NTMS_OPREQFLAGS_NOTRAYICON = 0x00000020;
}

/// {@category Enum}
class NtmsMediaPoolPolicy {
  static const NTMS_POOLPOLICY_PURGEOFFLINESCRATCH = 0x00000001;
  static const NTMS_POOLPOLICY_KEEPOFFLINEIMPORT = 0x00000002;
}

/// {@category Enum}
class NtmsOperationalState {
  static const NTMS_READY = 0x00000000;
  static const NTMS_INITIALIZING = 0x0000000a;
  static const NTMS_NEEDS_SERVICE = 0x00000014;
  static const NTMS_NOT_PRESENT = 0x00000015;
}

/// {@category Enum}
class NtmsCreateNtmsMediaOptions {
  static const NTMS_ERROR_ON_DUPLICATE = 0x00000001;
}

/// {@category Enum}
class NtmsEnumerateOption {
  static const NTMS_ENUM_DEFAULT = 0x00000000;
  static const NTMS_ENUM_ROOTPOOL = 0x00000001;
}

/// {@category Enum}
class NtmsEjectOperation {
  static const NTMS_EJECT_START = 0x00000000;
  static const NTMS_EJECT_STOP = 0x00000001;
  static const NTMS_EJECT_QUEUE = 0x00000002;
  static const NTMS_EJECT_FORCE = 0x00000003;
  static const NTMS_EJECT_IMMEDIATE = 0x00000004;
  static const NTMS_EJECT_ASK_USER = 0x00000005;
}

/// {@category Enum}
class NtmsInjectOperation {
  static const NTMS_INJECT_START = 0x00000000;
  static const NTMS_INJECT_STOP = 0x00000001;
  static const NTMS_INJECT_RETRACT = 0x00000002;
  static const NTMS_INJECT_STARTMANY = 0x00000003;
}

/// {@category Enum}
class NtmsDriveType {
  static const NTMS_UNKNOWN_DRIVE = 0x00000000;
}

/// {@category Enum}
class NtmsAccessMask {
  static const NTMS_USE_ACCESS = 0x00000001;
  static const NTMS_MODIFY_ACCESS = 0x00000002;
  static const NTMS_CONTROL_ACCESS = 0x00000004;
}

/// {@category Enum}
class NtmsUITypes {
  static const NTMS_UITYPE_INVALID = 0x00000000;
  static const NTMS_UITYPE_INFO = 0x00000001;
  static const NTMS_UITYPE_REQ = 0x00000002;
  static const NTMS_UITYPE_ERR = 0x00000003;
  static const NTMS_UITYPE_MAX = 0x00000004;
}

/// {@category Enum}
class NtmsUIOperations {
  static const NTMS_UIDEST_ADD = 0x00000001;
  static const NTMS_UIDEST_DELETE = 0x00000002;
  static const NTMS_UIDEST_DELETEALL = 0x00000003;
  static const NTMS_UIOPERATION_MAX = 0x00000004;
}

/// {@category Enum}
class NtmsNotificationOperations {
  static const NTMS_OBJ_UPDATE = 0x00000001;
  static const NTMS_OBJ_INSERT = 0x00000002;
  static const NTMS_OBJ_DELETE = 0x00000003;
  static const NTMS_EVENT_SIGNAL = 0x00000004;
  static const NTMS_EVENT_COMPLETE = 0x00000005;
}

/// {@category Enum}
class CLS_CONTEXT_MODE {
  static const ClsContextNone = 0x00000000;
  static const ClsContextUndoNext = 0x00000001;
  static const ClsContextPrevious = 0x00000002;
  static const ClsContextForward = 0x00000003;
}

/// {@category Enum}
class CLFS_CONTEXT_MODE {
  static const ClfsContextNone = 0x00000000;
  static const ClfsContextUndoNext = 0x00000001;
  static const ClfsContextPrevious = 0x00000002;
  static const ClfsContextForward = 0x00000003;
}

/// {@category Enum}
class CLS_LOG_INFORMATION_CLASS {
  static const ClfsLogBasicInformation = 0x00000000;
  static const ClfsLogBasicInformationPhysical = 0x00000001;
  static const ClfsLogPhysicalNameInformation = 0x00000002;
  static const ClfsLogStreamIdentifierInformation = 0x00000003;
  static const ClfsLogSystemMarkingInformation = 0x00000004;
  static const ClfsLogPhysicalLsnInformation = 0x00000005;
}

/// {@category Enum}
class CLS_IOSTATS_CLASS {
  static const ClsIoStatsDefault = 0x00000000;
  static const ClsIoStatsMax = 0x0000ffff;
}

/// {@category Enum}
class CLFS_IOSTATS_CLASS {
  static const ClfsIoStatsDefault = 0x00000000;
  static const ClfsIoStatsMax = 0x0000ffff;
}

/// {@category Enum}
class CLFS_LOG_ARCHIVE_MODE {
  static const ClfsLogArchiveEnabled = 0x00000001;
  static const ClfsLogArchiveDisabled = 0x00000002;
}

/// {@category Enum}
class CLFS_MGMT_POLICY_TYPE {
  static const ClfsMgmtPolicyMaximumSize = 0x00000000;
  static const ClfsMgmtPolicyMinimumSize = 0x00000001;
  static const ClfsMgmtPolicyNewContainerSize = 0x00000002;
  static const ClfsMgmtPolicyGrowthRate = 0x00000003;
  static const ClfsMgmtPolicyLogTail = 0x00000004;
  static const ClfsMgmtPolicyAutoShrink = 0x00000005;
  static const ClfsMgmtPolicyAutoGrow = 0x00000006;
  static const ClfsMgmtPolicyNewContainerPrefix = 0x00000007;
  static const ClfsMgmtPolicyNewContainerSuffix = 0x00000008;
  static const ClfsMgmtPolicyNewContainerExtension = 0x00000009;
  static const ClfsMgmtPolicyInvalid = 0x0000000a;
}

/// {@category Enum}
class CLFS_MGMT_NOTIFICATION_TYPE {
  static const ClfsMgmtAdvanceTailNotification = 0x00000000;
  static const ClfsMgmtLogFullHandlerNotification = 0x00000001;
  static const ClfsMgmtLogUnpinnedNotification = 0x00000002;
  static const ClfsMgmtLogWriteNotification = 0x00000003;
}

/// {@category Enum}
class SERVER_CERTIFICATE_TYPE {
  static const QUIC = 0x00000000;
}

/// {@category Enum}
class TRANSACTION_OUTCOME {
  static const TransactionOutcomeUndetermined = 0x00000001;
  static const TransactionOutcomeCommitted = 0x00000002;
  static const TransactionOutcomeAborted = 0x00000003;
}

/// {@category Enum}
class FIND_FIRST_EX_FLAGS {
  static const FIND_FIRST_EX_CASE_SENSITIVE = 0x00000001;
  static const FIND_FIRST_EX_LARGE_FETCH = 0x00000002;
  static const FIND_FIRST_EX_ON_DISK_ENTRIES_ONLY = 0x00000004;
}

/// {@category Enum}
class DEFINE_DOS_DEVICE_FLAGS {
  static const DDD_RAW_TARGET_PATH = 0x00000001;
  static const DDD_REMOVE_DEFINITION = 0x00000002;
  static const DDD_EXACT_MATCH_ON_REMOVE = 0x00000004;
  static const DDD_NO_BROADCAST_SYSTEM = 0x00000008;
  static const DDD_LUID_BROADCAST_DRIVE = 0x00000010;
}

/// {@category Enum}
class FILE_CREATE_FLAGS {
  static const CREATE_NEW = 0x00000001;
  static const CREATE_ALWAYS = 0x00000002;
  static const OPEN_EXISTING = 0x00000003;
  static const OPEN_ALWAYS = 0x00000004;
  static const TRUNCATE_EXISTING = 0x00000005;
}

/// {@category Enum}
class FILE_SHARE_FLAGS {
  static const FILE_SHARE_NONE = 0x00000000;
  static const FILE_SHARE_DELETE = 0x00000004;
  static const FILE_SHARE_READ = 0x00000001;
  static const FILE_SHARE_WRITE = 0x00000002;
}

/// {@category Enum}
class FILE_FLAGS_AND_ATTRIBUTES {
  static const FILE_ATTRIBUTE_READONLY = 0x00000001;
  static const FILE_ATTRIBUTE_HIDDEN = 0x00000002;
  static const FILE_ATTRIBUTE_SYSTEM = 0x00000004;
  static const FILE_ATTRIBUTE_DIRECTORY = 0x00000010;
  static const FILE_ATTRIBUTE_ARCHIVE = 0x00000020;
  static const FILE_ATTRIBUTE_DEVICE = 0x00000040;
  static const FILE_ATTRIBUTE_NORMAL = 0x00000080;
  static const FILE_ATTRIBUTE_TEMPORARY = 0x00000100;
  static const FILE_ATTRIBUTE_SPARSE_FILE = 0x00000200;
  static const FILE_ATTRIBUTE_REPARSE_POINT = 0x00000400;
  static const FILE_ATTRIBUTE_COMPRESSED = 0x00000800;
  static const FILE_ATTRIBUTE_OFFLINE = 0x00001000;
  static const FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 0x00002000;
  static const FILE_ATTRIBUTE_ENCRYPTED = 0x00004000;
  static const FILE_ATTRIBUTE_INTEGRITY_STREAM = 0x00008000;
  static const FILE_ATTRIBUTE_VIRTUAL = 0x00010000;
  static const FILE_ATTRIBUTE_NO_SCRUB_DATA = 0x00020000;
  static const FILE_ATTRIBUTE_EA = 0x00040000;
  static const FILE_ATTRIBUTE_PINNED = 0x00080000;
  static const FILE_ATTRIBUTE_UNPINNED = 0x00100000;
  static const FILE_ATTRIBUTE_RECALL_ON_OPEN = 0x00040000;
  static const FILE_ATTRIBUTE_RECALL_ON_DATA_ACCESS = 0x00400000;
  static const FILE_FLAG_WRITE_THROUGH = 0x80000000;
  static const FILE_FLAG_OVERLAPPED = 0x40000000;
  static const FILE_FLAG_NO_BUFFERING = 0x20000000;
  static const FILE_FLAG_RANDOM_ACCESS = 0x10000000;
  static const FILE_FLAG_SEQUENTIAL_SCAN = 0x08000000;
  static const FILE_FLAG_DELETE_ON_CLOSE = 0x04000000;
  static const FILE_FLAG_BACKUP_SEMANTICS = 0x02000000;
  static const FILE_FLAG_POSIX_SEMANTICS = 0x01000000;
  static const FILE_FLAG_SESSION_AWARE = 0x00800000;
  static const FILE_FLAG_OPEN_REPARSE_POINT = 0x00200000;
  static const FILE_FLAG_OPEN_NO_RECALL = 0x00100000;
  static const FILE_FLAG_FIRST_PIPE_INSTANCE = 0x00080000;
  static const SECURITY_ANONYMOUS = 0x00000000;
  static const SECURITY_IDENTIFICATION = 0x00010000;
  static const SECURITY_IMPERSONATION = 0x00020000;
  static const SECURITY_DELEGATION = 0x00030000;
  static const SECURITY_CONTEXT_TRACKING = 0x00040000;
  static const SECURITY_EFFECTIVE_ONLY = 0x00080000;
  static const SECURITY_SQOS_PRESENT = 0x00100000;
  static const SECURITY_VALID_SQOS_FLAGS = 0x001f0000;
}

/// {@category Enum}
class FILE_ACCESS_FLAGS {
  static const FILE_READ_DATA = 0x00000001;
  static const FILE_LIST_DIRECTORY = 0x00000001;
  static const FILE_WRITE_DATA = 0x00000002;
  static const FILE_ADD_FILE = 0x00000002;
  static const FILE_APPEND_DATA = 0x00000004;
  static const FILE_ADD_SUBDIRECTORY = 0x00000004;
  static const FILE_CREATE_PIPE_INSTANCE = 0x00000004;
  static const FILE_READ_EA = 0x00000008;
  static const FILE_WRITE_EA = 0x00000010;
  static const FILE_EXECUTE = 0x00000020;
  static const FILE_TRAVERSE = 0x00000020;
  static const FILE_DELETE_CHILD = 0x00000040;
  static const FILE_READ_ATTRIBUTES = 0x00000080;
  static const FILE_WRITE_ATTRIBUTES = 0x00000100;
  static const READ_CONTROL = 0x00020000;
  static const SYNCHRONIZE = 0x00100000;
  static const STANDARD_RIGHTS_REQUIRED = 0x000f0000;
  static const STANDARD_RIGHTS_READ = 0x00020000;
  static const STANDARD_RIGHTS_WRITE = 0x00020000;
  static const STANDARD_RIGHTS_EXECUTE = 0x00020000;
  static const STANDARD_RIGHTS_ALL = 0x001f0000;
  static const SPECIFIC_RIGHTS_ALL = 0x0000ffff;
  static const FILE_ALL_ACCESS = 0x001f01ff;
  static const FILE_GENERIC_READ = 0x00120089;
  static const FILE_GENERIC_WRITE = 0x00120116;
  static const FILE_GENERIC_EXECUTE = 0x001200a0;
}

/// {@category Enum}
class COPYFILE2_MESSAGE_TYPE {
  static const COPYFILE2_CALLBACK_NONE = 0x00000000;
  static const COPYFILE2_CALLBACK_CHUNK_STARTED = 0x00000001;
  static const COPYFILE2_CALLBACK_CHUNK_FINISHED = 0x00000002;
  static const COPYFILE2_CALLBACK_STREAM_STARTED = 0x00000003;
  static const COPYFILE2_CALLBACK_STREAM_FINISHED = 0x00000004;
  static const COPYFILE2_CALLBACK_POLL_CONTINUE = 0x00000005;
  static const COPYFILE2_CALLBACK_ERROR = 0x00000006;
  static const COPYFILE2_CALLBACK_MAX = 0x00000007;
}

/// {@category Enum}
class COPYFILE2_MESSAGE_ACTION {
  static const COPYFILE2_PROGRESS_CONTINUE = 0x00000000;
  static const COPYFILE2_PROGRESS_CANCEL = 0x00000001;
  static const COPYFILE2_PROGRESS_STOP = 0x00000002;
  static const COPYFILE2_PROGRESS_QUIET = 0x00000003;
  static const COPYFILE2_PROGRESS_PAUSE = 0x00000004;
}

/// {@category Enum}
class COPYFILE2_COPY_PHASE {
  static const COPYFILE2_PHASE_NONE = 0x00000000;
  static const COPYFILE2_PHASE_PREPARE_SOURCE = 0x00000001;
  static const COPYFILE2_PHASE_PREPARE_DEST = 0x00000002;
  static const COPYFILE2_PHASE_READ_SOURCE = 0x00000003;
  static const COPYFILE2_PHASE_WRITE_DESTINATION = 0x00000004;
  static const COPYFILE2_PHASE_SERVER_COPY = 0x00000005;
  static const COPYFILE2_PHASE_NAMEGRAFT_COPY = 0x00000006;
  static const COPYFILE2_PHASE_MAX = 0x00000007;
}

/// {@category Enum}
class PRIORITY_HINT {
  static const IoPriorityHintVeryLow = 0x00000000;
  static const IoPriorityHintLow = 0x00000001;
  static const IoPriorityHintNormal = 0x00000002;
  static const MaximumIoPriorityHintType = 0x00000003;
}

/// {@category Enum}
class FILE_ID_TYPE {
  static const FileIdType = 0x00000000;
  static const ObjectIdType = 0x00000001;
  static const ExtendedFileIdType = 0x00000002;
  static const MaximumFileIdType = 0x00000003;
}

/// {@category Enum}
class CLFS_FLAG {
  static const CLFS_FLAG_FORCE_APPEND = 0x00000001;
  static const CLFS_FLAG_FORCE_FLUSH = 0x00000002;
  static const CLFS_FLAG_NO_FLAGS = 0x00000000;
  static const CLFS_FLAG_USE_RESERVATION = 0x00000004;
}

/// {@category Enum}
class SetFilePointer_dwMoveMethod {
  static const FILE_BEGIN = 0x00000000;
  static const FILE_CURRENT = 0x00000001;
  static const FILE_END = 0x00000002;
}

/// {@category Enum}
class MoveFileTransacted_dwFlags {
  static const MOVEFILE_COPY_ALLOWED = 0x00000002;
  static const MOVEFILE_CREATE_HARDLINK = 0x00000010;
  static const MOVEFILE_DELAY_UNTIL_REBOOT = 0x00000004;
  static const MOVEFILE_REPLACE_EXISTING = 0x00000001;
  static const MOVEFILE_WRITE_THROUGH = 0x00000008;
  static const MOVEFILE_FAIL_IF_NOT_TRACKABLE = 0x00000020;
}

/// {@category Enum}
class FILE_NAME {
  static const FILE_NAME_NORMALIZED = 0x00000000;
  static const FILE_NAME_OPENED = 0x00000008;
}

/// {@category Enum}
class DefineDosDevice_dwFlags {
  static const DDD_EXACT_MATCH_ON_REMOVE = 0x00000004;
  static const DDD_NO_BROADCAST_SYSTEM = 0x00000008;
  static const DDD_RAW_TARGET_PATH = 0x00000001;
  static const DDD_REMOVE_DEFINITION = 0x00000002;
}

/// {@category Enum}
class CreateFile_dwShareMode {
  static const None = 0x00000000;
  static const FILE_SHARE_DELETE = 0x00000004;
  static const FILE_SHARE_READ = 0x00000001;
  static const FILE_SHARE_WRITE = 0x00000002;
}

/// {@category Enum}
class LZOpenFile_wStyle {
  static const OF_CANCEL = 0x00000800;
  static const OF_CREATE = 0x00001000;
  static const OF_DELETE = 0x00000200;
  static const OF_EXIST = 0x00004000;
  static const OF_PARSE = 0x00000100;
  static const OF_PROMPT = 0x00002000;
  static const OF_READ = 0x00000000;
  static const OF_READWRITE = 0x00000002;
  static const OF_REOPEN = 0x00008000;
  static const OF_SHARE_DENY_NONE = 0x00000040;
  static const OF_SHARE_DENY_READ = 0x00000030;
  static const OF_SHARE_DENY_WRITE = 0x00000020;
  static const OF_SHARE_EXCLUSIVE = 0x00000010;
  static const OF_WRITE = 0x00000001;
  static const OF_SHARE_COMPAT = 0x00000000;
  static const OF_VERIFY = 0x00000400;
}

/// {@category Enum}
class CreateLogFile_fCreateDispositionFlags {
  static const CREATE_NEW = 0x00000001;
  static const OPEN_EXISTING = 0x00000003;
  static const OPEN_ALWAYS = 0x00000004;
  static const CREATE_ALWAYS = 0x00000002;
  static const TRUNCATE_EXISTING = 0x00000005;
}

/// {@category Enum}
class FILE_NOTIFY_CHANGE {
  static const FILE_NOTIFY_CHANGE_FILE_NAME = 0x00000001;
  static const FILE_NOTIFY_CHANGE_DIR_NAME = 0x00000002;
  static const FILE_NOTIFY_CHANGE_ATTRIBUTES = 0x00000004;
  static const FILE_NOTIFY_CHANGE_SIZE = 0x00000008;
  static const FILE_NOTIFY_CHANGE_LAST_WRITE = 0x00000010;
  static const FILE_NOTIFY_CHANGE_LAST_ACCESS = 0x00000020;
  static const FILE_NOTIFY_CHANGE_CREATION = 0x00000040;
  static const FILE_NOTIFY_CHANGE_SECURITY = 0x00000100;
}

/// {@category Enum}
class TXFS_MINIVERSION {
  static const TXFS_MINIVERSION_COMMITTED_VIEW = 0x00000000;
  static const TXFS_MINIVERSION_DIRTY_VIEW = 0x0000ffff;
  static const TXFS_MINIVERSION_DEFAULT_VIEW = 0x0000fffe;
}

/// {@category Enum}
class ReplaceFile_dwReplaceFlags {
  static const REPLACEFILE_WRITE_THROUGH = 0x00000001;
  static const REPLACEFILE_IGNORE_MERGE_ERRORS = 0x00000002;
  static const REPLACEFILE_IGNORE_ACL_ERRORS = 0x00000004;
}

/// {@category Enum}
class DISKQUOTA_USERNAME_RESOLVE {
  static const DISKQUOTA_USERNAME_RESOLVE_ASYNC = 0x00000002;
  static const DISKQUOTA_USERNAME_RESOLVE_NONE = 0x00000000;
  static const DISKQUOTA_USERNAME_RESOLVE_SYNC = 0x00000001;
}

/// {@category Enum}
class UpdateNtmsOmidInfo_labelTypeFlags {
  static const NTMS_OMID_TYPE_FILESYSTEM_INFO = 0x00000002;
  static const NTMS_OMID_TYPE_RAW_LABEL = 0x00000001;
}

/// {@category Enum}
class LockFileEx_dwFlags {
  static const LOCKFILE_EXCLUSIVE_LOCK = 0x00000002;
  static const LOCKFILE_FAIL_IMMEDIATELY = 0x00000001;
}

/// {@category Enum}
class LPPROGRESS_ROUTINE_dwCallbackReasonFlags {
  static const CALLBACK_CHUNK_FINISHED = 0x00000000;
  static const CALLBACK_STREAM_SWITCH = 0x00000001;
}

/// {@category Enum}
class FILE_ACTION {
  static const FILE_ACTION_ADDED = 0x00000001;
  static const FILE_ACTION_REMOVED = 0x00000002;
  static const FILE_ACTION_MODIFIED = 0x00000003;
  static const FILE_ACTION_RENAMED_OLD_NAME = 0x00000004;
  static const FILE_ACTION_RENAMED_NEW_NAME = 0x00000005;
}

/// {@category Enum}
class DELETE_USN_JOURNAL_DATAFlags {
  static const USN_DELETE_FLAG_DELETE = 0x00000001;
  static const USN_DELETE_FLAG_NOTIFY = 0x00000002;
}

/// {@category Enum}
class SHARE_INFO_501_shi501_type {
  static const STYPE_DISKTREE = 0x00000000;
  static const STYPE_PRINTQ = 0x00000001;
  static const STYPE_DEVICE = 0x00000002;
  static const STYPE_IPC = 0x00000003;
}

/// {@category Enum}
class SHARE_INFO_502_shi502_permissionsFlags {
  static const ACCESS_READ = 0x00000001;
  static const ACCESS_WRITE = 0x00000002;
  static const ACCESS_CREATE = 0x00000004;
  static const ACCESS_EXEC = 0x00000008;
  static const ACCESS_DELETE = 0x00000010;
  static const ACCESS_ATRIB = 0x00000020;
  static const ACCESS_PERM = 0x00000040;
  static const ACCESS_ALL = 0x00008000;
}

/// {@category Enum}
class NTMS_MEDIATYPEINFORMATION_DeviceTypeFlags {
  static const FILE_DEVICE_CD_ROM = 0x00000002;
  static const FILE_DEVICE_DISK = 0x00000007;
  static const FILE_DEVICE_TAPE = 0x0000001f;
  static const FILE_DEVICE_DVD = 0x00000033;
}

/// {@category Enum}
class TXFS_MODIFY_RMFlags {
  static const TXFS_RM_FLAG_LOGGING_MODE = 0x00000001;
  static const TXFS_RM_FLAG_RENAME_RM = 0x00000002;
  static const TXFS_RM_FLAG_LOG_CONTAINER_COUNT_MAX = 0x00000004;
  static const TXFS_RM_FLAG_LOG_CONTAINER_COUNT_MIN = 0x00000008;
  static const TXFS_RM_FLAG_LOG_GROWTH_INCREMENT_NUM_CONTAINERS = 0x00000010;
  static const TXFS_RM_FLAG_LOG_GROWTH_INCREMENT_PERCENT = 0x00000020;
  static const TXFS_RM_FLAG_LOG_AUTO_SHRINK_PERCENTAGE = 0x00000040;
  static const TXFS_RM_FLAG_LOG_NO_CONTAINER_COUNT_MAX = 0x00000080;
  static const TXFS_RM_FLAG_LOG_NO_CONTAINER_COUNT_MIN = 0x00000100;
  static const TXFS_RM_FLAG_GROW_LOG = 0x00000400;
  static const TXFS_RM_FLAG_SHRINK_LOG = 0x00000800;
  static const TXFS_RM_FLAG_ENFORCE_MINIMUM_SIZE = 0x00001000;
  static const TXFS_RM_FLAG_PRESERVE_CHANGES = 0x00002000;
  static const TXFS_RM_FLAG_RESET_RM_AT_NEXT_START = 0x00004000;
  static const TXFS_RM_FLAG_DO_NOT_RESET_RM_AT_NEXT_START = 0x00008000;
  static const TXFS_RM_FLAG_PREFER_CONSISTENCY = 0x00010000;
  static const TXFS_RM_FLAG_PREFER_AVAILABILITY = 0x00020000;
}

/// {@category Enum}
class FILESYSTEM_STATISTICS_TYPE {
  static const FILESYSTEM_STATISTICS_TYPE_EXFAT = 0x00000003;
  static const FILESYSTEM_STATISTICS_TYPE_FAT = 0x00000002;
  static const FILESYSTEM_STATISTICS_TYPE_NTFS = 0x00000001;
}

/// {@category Enum}
class USN_RECORD_V4_SourceInfoFlags {
  static const USN_SOURCE_AUXILIARY_DATA = 0x00000002;
  static const USN_SOURCE_DATA_MANAGEMENT = 0x00000001;
  static const USN_SOURCE_REPLICATION_MANAGEMENT = 0x00000004;
  static const USN_SOURCE_CLIENT_REPLICATION_MANAGEMENT = 0x00000008;
}

/// {@category Enum}
class FILE_STORAGE_TIER_Flags {
  static const FILE_STORAGE_TIER_FLAG_NO_SEEK_PENALTY = 0x00020000;
}

/// {@category Enum}
class SESSION_INFO_502_sesi502_user_flags {
  static const SESS_GUEST = 0x00000001;
  static const SESS_NOENCRYPTION = 0x00000002;
}

/// {@category Enum}
class TXF_LOG_RECORD_BASE_RecordTypeFlags {
  static const TXF_LOG_RECORD_TYPE_AFFECTED_FILE = 0x00000004;
  static const TXF_LOG_RECORD_TYPE_TRUNCATE = 0x00000002;
  static const TXF_LOG_RECORD_TYPE_WRITE = 0x00000001;
}

/// {@category Enum}
class FILE_INFO_3_fi3_permissionsFlags {
  static const PERM_FILE_READ = 0x00000001;
  static const PERM_FILE_WRITE = 0x00000002;
  static const PERM_FILE_CREATE = 0x00000004;
}

/// {@category Enum}
class DISK_CACHE_INFORMATION_ReadRetentionPriorityFlags {
  static const EqualPriority = 0x00000000;
  static const KeepPrefetchedData = 0x00000001;
  static const KeepReadData = 0x00000002;
}

/// {@category Enum}
class FINDEX_INFO_LEVELS {
  static const FindExInfoStandard = 0x00000000;
  static const FindExInfoBasic = 0x00000001;
  static const FindExInfoMaxInfoLevel = 0x00000002;
}

/// {@category Enum}
class FINDEX_SEARCH_OPS {
  static const FindExSearchNameMatch = 0x00000000;
  static const FindExSearchLimitToDirectories = 0x00000001;
  static const FindExSearchLimitToDevices = 0x00000002;
  static const FindExSearchMaxSearchOp = 0x00000003;
}

/// {@category Enum}
class READ_DIRECTORY_NOTIFY_INFORMATION_CLASS {
  static const ReadDirectoryNotifyInformation = 0x00000001;
  static const ReadDirectoryNotifyExtendedInformation = 0x00000002;
}

/// {@category Enum}
class GET_FILEEX_INFO_LEVELS {
  static const GetFileExInfoStandard = 0x00000000;
  static const GetFileExMaxInfoLevel = 0x00000001;
}

/// {@category Enum}
class FILE_INFO_BY_HANDLE_CLASS {
  static const FileBasicInfo = 0x00000000;
  static const FileStandardInfo = 0x00000001;
  static const FileNameInfo = 0x00000002;
  static const FileRenameInfo = 0x00000003;
  static const FileDispositionInfo = 0x00000004;
  static const FileAllocationInfo = 0x00000005;
  static const FileEndOfFileInfo = 0x00000006;
  static const FileStreamInfo = 0x00000007;
  static const FileCompressionInfo = 0x00000008;
  static const FileAttributeTagInfo = 0x00000009;
  static const FileIdBothDirectoryInfo = 0x0000000a;
  static const FileIdBothDirectoryRestartInfo = 0x0000000b;
  static const FileIoPriorityHintInfo = 0x0000000c;
  static const FileRemoteProtocolInfo = 0x0000000d;
  static const FileFullDirectoryInfo = 0x0000000e;
  static const FileFullDirectoryRestartInfo = 0x0000000f;
  static const FileStorageInfo = 0x00000010;
  static const FileAlignmentInfo = 0x00000011;
  static const FileIdInfo = 0x00000012;
  static const FileIdExtdDirectoryInfo = 0x00000013;
  static const FileIdExtdDirectoryRestartInfo = 0x00000014;
  static const FileDispositionInfoEx = 0x00000015;
  static const FileRenameInfoEx = 0x00000016;
  static const FileCaseSensitiveInfo = 0x00000017;
  static const FileNormalizedNameInfo = 0x00000018;
  static const MaximumFileInfoByHandleClass = 0x00000019;
}

/// {@category Enum}
class STORAGE_QUERY_TYPE {
  static const PropertyStandardQuery = 0x00000000;
  static const PropertyExistsQuery = 0x00000001;
  static const PropertyMaskQuery = 0x00000002;
  static const PropertyQueryMaxDefined = 0x00000003;
}

/// {@category Enum}
class STORAGE_PROPERTY_ID {
  static const StorageDeviceProperty = 0x00000000;
  static const StorageAdapterProperty = 0x00000001;
  static const StorageDeviceIdProperty = 0x00000002;
  static const StorageDeviceUniqueIdProperty = 0x00000003;
  static const StorageDeviceWriteCacheProperty = 0x00000004;
  static const StorageMiniportProperty = 0x00000005;
  static const StorageAccessAlignmentProperty = 0x00000006;
  static const StorageDeviceSeekPenaltyProperty = 0x00000007;
  static const StorageDeviceTrimProperty = 0x00000008;
  static const StorageDeviceWriteAggregationProperty = 0x00000009;
  static const StorageDeviceDeviceTelemetryProperty = 0x0000000a;
  static const StorageDeviceLBProvisioningProperty = 0x0000000b;
  static const StorageDevicePowerProperty = 0x0000000c;
  static const StorageDeviceCopyOffloadProperty = 0x0000000d;
  static const StorageDeviceResiliencyProperty = 0x0000000e;
  static const StorageDeviceMediumProductType = 0x0000000f;
  static const StorageAdapterRpmbProperty = 0x00000010;
  static const StorageAdapterCryptoProperty = 0x00000011;
  static const StorageDeviceIoCapabilityProperty = 0x00000030;
  static const StorageAdapterProtocolSpecificProperty = 0x00000031;
  static const StorageDeviceProtocolSpecificProperty = 0x00000032;
  static const StorageAdapterTemperatureProperty = 0x00000033;
  static const StorageDeviceTemperatureProperty = 0x00000034;
  static const StorageAdapterPhysicalTopologyProperty = 0x00000035;
  static const StorageDevicePhysicalTopologyProperty = 0x00000036;
  static const StorageDeviceAttributesProperty = 0x00000037;
  static const StorageDeviceManagementStatus = 0x00000038;
  static const StorageAdapterSerialNumberProperty = 0x00000039;
  static const StorageDeviceLocationProperty = 0x0000003a;
  static const StorageDeviceNumaProperty = 0x0000003b;
  static const StorageDeviceZonedDeviceProperty = 0x0000003c;
  static const StorageDeviceUnsafeShutdownCount = 0x0000003d;
  static const StorageDeviceEnduranceProperty = 0x0000003e;
}

/// {@category Enum}
class STORAGE_PORT_CODE_SET {
  static const StoragePortCodeSetReserved = 0x00000000;
  static const StoragePortCodeSetStorport = 0x00000001;
  static const StoragePortCodeSetSCSIport = 0x00000002;
  static const StoragePortCodeSetSpaceport = 0x00000003;
  static const StoragePortCodeSetATAport = 0x00000004;
  static const StoragePortCodeSetUSBport = 0x00000005;
  static const StoragePortCodeSetSBP2port = 0x00000006;
  static const StoragePortCodeSetSDport = 0x00000007;
}

/// {@category Enum}
class STORAGE_PROTOCOL_TYPE {
  static const ProtocolTypeUnknown = 0x00000000;
  static const ProtocolTypeScsi = 0x00000001;
  static const ProtocolTypeAta = 0x00000002;
  static const ProtocolTypeNvme = 0x00000003;
  static const ProtocolTypeSd = 0x00000004;
  static const ProtocolTypeUfs = 0x00000005;
  static const ProtocolTypeProprietary = 0x0000007e;
  static const ProtocolTypeMaxReserved = 0x0000007f;
}

/// {@category Enum}
class STORAGE_PROTOCOL_NVME_DATA_TYPE {
  static const NVMeDataTypeUnknown = 0x00000000;
  static const NVMeDataTypeIdentify = 0x00000001;
  static const NVMeDataTypeLogPage = 0x00000002;
  static const NVMeDataTypeFeature = 0x00000003;
}

/// {@category Enum}
class STORAGE_PROTOCOL_ATA_DATA_TYPE {
  static const AtaDataTypeUnknown = 0x00000000;
  static const AtaDataTypeIdentify = 0x00000001;
  static const AtaDataTypeLogPage = 0x00000002;
}

/// {@category Enum}
class STORAGE_DEVICE_FORM_FACTOR {
  static const FormFactorUnknown = 0x00000000;
  static const FormFactor3_5 = 0x00000001;
  static const FormFactor2_5 = 0x00000002;
  static const FormFactor1_8 = 0x00000003;
  static const FormFactor1_8Less = 0x00000004;
  static const FormFactorEmbedded = 0x00000005;
  static const FormFactorMemoryCard = 0x00000006;
  static const FormFactormSata = 0x00000007;
  static const FormFactorM_2 = 0x00000008;
  static const FormFactorPCIeBoard = 0x00000009;
  static const FormFactorDimm = 0x0000000a;
}

/// {@category Enum}
class STORAGE_COMPONENT_HEALTH_STATUS {
  static const HealthStatusUnknown = 0x00000000;
  static const HealthStatusNormal = 0x00000001;
  static const HealthStatusThrottled = 0x00000002;
  static const HealthStatusWarning = 0x00000003;
  static const HealthStatusDisabled = 0x00000004;
  static const HealthStatusFailed = 0x00000005;
}

/// {@category Enum}
class WRITE_CACHE_TYPE {
  static const WriteCacheTypeUnknown = 0x00000000;
  static const WriteCacheTypeNone = 0x00000001;
  static const WriteCacheTypeWriteBack = 0x00000002;
  static const WriteCacheTypeWriteThrough = 0x00000003;
}

/// {@category Enum}
class WRITE_CACHE_ENABLE {
  static const WriteCacheEnableUnknown = 0x00000000;
  static const WriteCacheDisabled = 0x00000001;
  static const WriteCacheEnabled = 0x00000002;
}

/// {@category Enum}
class WRITE_CACHE_CHANGE {
  static const WriteCacheChangeUnknown = 0x00000000;
  static const WriteCacheNotChangeable = 0x00000001;
  static const WriteCacheChangeable = 0x00000002;
}

/// {@category Enum}
class WRITE_THROUGH {
  static const WriteThroughUnknown = 0x00000000;
  static const WriteThroughNotSupported = 0x00000001;
  static const WriteThroughSupported = 0x00000002;
}

/// {@category Enum}
class STORAGE_DEVICE_POWER_CAP_UNITS {
  static const StorageDevicePowerCapUnitsPercent = 0x00000000;
  static const StorageDevicePowerCapUnitsMilliwatts = 0x00000001;
}

/// {@category Enum}
class MEDIA_TYPE {
  static const Unknown = 0x00000000;
  static const F5_1Pt2_512 = 0x00000001;
  static const F3_1Pt44_512 = 0x00000002;
  static const F3_2Pt88_512 = 0x00000003;
  static const F3_20Pt8_512 = 0x00000004;
  static const F3_720_512 = 0x00000005;
  static const F5_360_512 = 0x00000006;
  static const F5_320_512 = 0x00000007;
  static const F5_320_1024 = 0x00000008;
  static const F5_180_512 = 0x00000009;
  static const F5_160_512 = 0x0000000a;
  static const RemovableMedia = 0x0000000b;
  static const FixedMedia = 0x0000000c;
  static const F3_120M_512 = 0x0000000d;
  static const F3_640_512 = 0x0000000e;
  static const F5_640_512 = 0x0000000f;
  static const F5_720_512 = 0x00000010;
  static const F3_1Pt2_512 = 0x00000011;
  static const F3_1Pt23_1024 = 0x00000012;
  static const F5_1Pt23_1024 = 0x00000013;
  static const F3_128Mb_512 = 0x00000014;
  static const F3_230Mb_512 = 0x00000015;
  static const F8_256_128 = 0x00000016;
  static const F3_200Mb_512 = 0x00000017;
  static const F3_240M_512 = 0x00000018;
  static const F3_32M_512 = 0x00000019;
}

/// {@category Enum}
class PARTITION_STYLE {
  static const PARTITION_STYLE_MBR = 0x00000000;
  static const PARTITION_STYLE_GPT = 0x00000001;
  static const PARTITION_STYLE_RAW = 0x00000002;
}

/// {@category Enum}
class CSV_CONTROL_OP {
  static const CsvControlStartRedirectFile = 0x00000002;
  static const CsvControlStopRedirectFile = 0x00000003;
  static const CsvControlQueryRedirectState = 0x00000004;
  static const CsvControlQueryFileRevision = 0x00000006;
  static const CsvControlQueryMdsPath = 0x00000008;
  static const CsvControlQueryFileRevisionFileId128 = 0x00000009;
  static const CsvControlQueryVolumeRedirectState = 0x0000000a;
  static const CsvControlEnableUSNRangeModificationTracking = 0x0000000d;
  static const CsvControlMarkHandleLocalVolumeMount = 0x0000000e;
  static const CsvControlUnmarkHandleLocalVolumeMount = 0x0000000f;
  static const CsvControlGetCsvFsMdsPathV2 = 0x00000012;
  static const CsvControlDisableCaching = 0x00000013;
  static const CsvControlEnableCaching = 0x00000014;
  static const CsvControlStartForceDFO = 0x00000015;
  static const CsvControlStopForceDFO = 0x00000016;
}

/// {@category Enum}
class FILE_STORAGE_TIER_MEDIA_TYPE {
  static const FileStorageTierMediaTypeUnspecified = 0x00000000;
  static const FileStorageTierMediaTypeDisk = 0x00000001;
  static const FileStorageTierMediaTypeSsd = 0x00000002;
  static const FileStorageTierMediaTypeScm = 0x00000004;
  static const FileStorageTierMediaTypeMax = 0x00000005;
}

