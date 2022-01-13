/// {@category Enum}
class CLFS_CONTEXT_MODE {
  static const ClfsContextNone = 0x00000000;
  static const ClfsContextUndoNext = 0x00000001;
  static const ClfsContextPrevious = 0x00000002;
  static const ClfsContextForward = 0x00000003;
}

/// {@category Enum}
class CLFS_FLAG {
  static const CLFS_FLAG_FORCE_APPEND = 0x00000001;
  static const CLFS_FLAG_FORCE_FLUSH = 0x00000002;
  static const CLFS_FLAG_NO_FLAGS = 0x00000000;
  static const CLFS_FLAG_USE_RESERVATION = 0x00000004;
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
class CLFS_MGMT_NOTIFICATION_TYPE {
  static const ClfsMgmtAdvanceTailNotification = 0x00000000;
  static const ClfsMgmtLogFullHandlerNotification = 0x00000001;
  static const ClfsMgmtLogUnpinnedNotification = 0x00000002;
  static const ClfsMgmtLogWriteNotification = 0x00000003;
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
class CLS_CONTEXT_MODE {
  static const ClsContextNone = 0x00000000;
  static const ClsContextUndoNext = 0x00000001;
  static const ClsContextPrevious = 0x00000002;
  static const ClsContextForward = 0x00000003;
}

/// {@category Enum}
class CLS_IOSTATS_CLASS {
  static const ClsIoStatsDefault = 0x00000000;
  static const ClsIoStatsMax = 0x0000ffff;
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
class COPYFILE2_MESSAGE_ACTION {
  static const COPYFILE2_PROGRESS_CONTINUE = 0x00000000;
  static const COPYFILE2_PROGRESS_CANCEL = 0x00000001;
  static const COPYFILE2_PROGRESS_STOP = 0x00000002;
  static const COPYFILE2_PROGRESS_QUIET = 0x00000003;
  static const COPYFILE2_PROGRESS_PAUSE = 0x00000004;
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
class CREATE_TAPE_PARTITION_METHOD {
  static const TAPE_FIXED_PARTITIONS = 0x00000000;
  static const TAPE_INITIATOR_PARTITIONS = 0x00000002;
  static const TAPE_SELECT_PARTITIONS = 0x00000001;
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
class DISKQUOTA_USERNAME_RESOLVE {
  static const DISKQUOTA_USERNAME_RESOLVE_ASYNC = 0x00000002;
  static const DISKQUOTA_USERNAME_RESOLVE_NONE = 0x00000000;
  static const DISKQUOTA_USERNAME_RESOLVE_SYNC = 0x00000001;
}

/// {@category Enum}
class ERASE_TAPE_TYPE {
  static const TAPE_ERASE_LONG = 0x00000001;
  static const TAPE_ERASE_SHORT = 0x00000000;
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
class FILE_ACTION {
  static const FILE_ACTION_ADDED = 0x00000001;
  static const FILE_ACTION_REMOVED = 0x00000002;
  static const FILE_ACTION_MODIFIED = 0x00000003;
  static const FILE_ACTION_RENAMED_OLD_NAME = 0x00000004;
  static const FILE_ACTION_RENAMED_NEW_NAME = 0x00000005;
}

/// {@category Enum}
class FILE_CREATION_DISPOSITION {
  static const CREATE_NEW = 0x00000001;
  static const CREATE_ALWAYS = 0x00000002;
  static const OPEN_EXISTING = 0x00000003;
  static const OPEN_ALWAYS = 0x00000004;
  static const TRUNCATE_EXISTING = 0x00000005;
}

/// {@category Enum}
class FILE_DEVICE_TYPE {
  static const FILE_DEVICE_CD_ROM = 0x00000002;
  static const FILE_DEVICE_DISK = 0x00000007;
  static const FILE_DEVICE_TAPE = 0x0000001f;
  static const FILE_DEVICE_DVD = 0x00000033;
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
  static const PIPE_ACCESS_DUPLEX = 0x00000003;
  static const PIPE_ACCESS_INBOUND = 0x00000001;
  static const PIPE_ACCESS_OUTBOUND = 0x00000002;
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
class FILE_ID_TYPE {
  static const FileIdType = 0x00000000;
  static const ObjectIdType = 0x00000001;
  static const ExtendedFileIdType = 0x00000002;
  static const MaximumFileIdType = 0x00000003;
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
class FILE_INFO_FLAGS_PERMISSIONS {
  static const PERM_FILE_READ = 0x00000001;
  static const PERM_FILE_WRITE = 0x00000002;
  static const PERM_FILE_CREATE = 0x00000004;
}

/// {@category Enum}
class FILE_NAME {
  static const FILE_NAME_NORMALIZED = 0x00000000;
  static const FILE_NAME_OPENED = 0x00000008;
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
class FILE_SHARE_MODE {
  static const FILE_SHARE_NONE = 0x00000000;
  static const FILE_SHARE_DELETE = 0x00000004;
  static const FILE_SHARE_READ = 0x00000001;
  static const FILE_SHARE_WRITE = 0x00000002;
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
class FIND_FIRST_EX_FLAGS {
  static const FIND_FIRST_EX_CASE_SENSITIVE = 0x00000001;
  static const FIND_FIRST_EX_LARGE_FETCH = 0x00000002;
  static const FIND_FIRST_EX_ON_DISK_ENTRIES_ONLY = 0x00000004;
}

/// {@category Enum}
class GET_FILEEX_INFO_LEVELS {
  static const GetFileExInfoStandard = 0x00000000;
  static const GetFileExMaxInfoLevel = 0x00000001;
}

/// {@category Enum}
class GET_FILE_VERSION_INFO_FLAGS {
  static const FILE_VER_GET_LOCALISED = 0x00000001;
  static const FILE_VER_GET_NEUTRAL = 0x00000002;
  static const FILE_VER_GET_PREFETCHED = 0x00000004;
}

/// {@category Enum}
class GET_TAPE_DRIVE_PARAMETERS_OPERATION {
  static const GET_TAPE_DRIVE_INFORMATION = 0x00000001;
  static const GET_TAPE_MEDIA_INFORMATION = 0x00000000;
}

/// {@category Enum}
class IORING_CREATE_ADVISORY_FLAGS {
  static const IORING_CREATE_ADVISORY_FLAGS_NONE = 0x00000000;
}

/// {@category Enum}
class IORING_CREATE_REQUIRED_FLAGS {
  static const IORING_CREATE_REQUIRED_FLAGS_NONE = 0x00000000;
}

/// {@category Enum}
class IORING_FEATURE_FLAGS {
  static const IORING_FEATURE_FLAGS_NONE = 0x00000000;
  static const IORING_FEATURE_UM_EMULATION = 0x00000001;
  static const IORING_FEATURE_SET_COMPLETION_EVENT = 0x00000002;
}

/// {@category Enum}
class IORING_OP_CODE {
  static const IORING_OP_NOP = 0x00000000;
  static const IORING_OP_READ = 0x00000001;
  static const IORING_OP_REGISTER_FILES = 0x00000002;
  static const IORING_OP_REGISTER_BUFFERS = 0x00000003;
  static const IORING_OP_CANCEL = 0x00000004;
}

/// {@category Enum}
class IORING_REF_KIND {
  static const IORING_REF_RAW = 0x00000000;
  static const IORING_REF_REGISTERED = 0x00000001;
}

/// {@category Enum}
class IORING_SQE_FLAGS {
  static const IOSQE_FLAGS_NONE = 0x00000000;
}

/// {@category Enum}
class IORING_VERSION {
  static const IORING_VERSION_INVALID = 0x00000000;
  static const IORING_VERSION_1 = 0x00000001;
}

/// {@category Enum}
class LOCK_FILE_FLAGS {
  static const LOCKFILE_EXCLUSIVE_LOCK = 0x00000002;
  static const LOCKFILE_FAIL_IMMEDIATELY = 0x00000001;
}

/// {@category Enum}
class LPPROGRESS_ROUTINE_CALLBACK_REASON {
  static const CALLBACK_CHUNK_FINISHED = 0x00000000;
  static const CALLBACK_STREAM_SWITCH = 0x00000001;
}

/// {@category Enum}
class LZOPENFILE_STYLE {
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
class MOVE_FILE_FLAGS {
  static const MOVEFILE_COPY_ALLOWED = 0x00000002;
  static const MOVEFILE_CREATE_HARDLINK = 0x00000010;
  static const MOVEFILE_DELAY_UNTIL_REBOOT = 0x00000004;
  static const MOVEFILE_REPLACE_EXISTING = 0x00000001;
  static const MOVEFILE_WRITE_THROUGH = 0x00000008;
  static const MOVEFILE_FAIL_IF_NOT_TRACKABLE = 0x00000020;
}

/// {@category Enum}
class NTMS_OMID_TYPE {
  static const NTMS_OMID_TYPE_FILESYSTEM_INFO = 0x00000002;
  static const NTMS_OMID_TYPE_RAW_LABEL = 0x00000001;
}

/// {@category Enum}
class NT_CREATE_FILE_DISPOSITION {
  static const FILE_SUPERSEDE = 0x00000000;
  static const FILE_CREATE = 0x00000002;
  static const FILE_OPEN = 0x00000001;
  static const FILE_OPEN_IF = 0x00000003;
  static const FILE_OVERWRITE = 0x00000004;
  static const FILE_OVERWRITE_IF = 0x00000005;
}

/// {@category Enum}
class NtmsAccessMask {
  static const NTMS_USE_ACCESS = 0x00000001;
  static const NTMS_MODIFY_ACCESS = 0x00000002;
  static const NTMS_CONTROL_ACCESS = 0x00000004;
}

/// {@category Enum}
class NtmsAllocateOptions {
  static const NTMS_ALLOCATE_NEW = 0x00000001;
  static const NTMS_ALLOCATE_NEXT = 0x00000002;
  static const NTMS_ALLOCATE_ERROR_IF_UNAVAILABLE = 0x00000004;
}

/// {@category Enum}
class NtmsAllocationPolicy {
  static const NTMS_ALLOCATE_FROMSCRATCH = 0x00000001;
}

/// {@category Enum}
class NtmsAsyncOperations {
  static const NTMS_ASYNCOP_MOUNT = 0x00000001;
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
class NtmsBarCodeState {
  static const NTMS_BARCODESTATE_OK = 0x00000001;
  static const NTMS_BARCODESTATE_UNREADABLE = 0x00000002;
}

/// {@category Enum}
class NtmsCreateNtmsMediaOptions {
  static const NTMS_ERROR_ON_DUPLICATE = 0x00000001;
}

/// {@category Enum}
class NtmsCreateOptions {
  static const NTMS_OPEN_EXISTING = 0x00000001;
  static const NTMS_CREATE_NEW = 0x00000002;
  static const NTMS_OPEN_ALWAYS = 0x00000003;
}

/// {@category Enum}
class NtmsDeallocationPolicy {
  static const NTMS_DEALLOCATE_TOSCRATCH = 0x00000001;
}

/// {@category Enum}
class NtmsDismountOptions {
  static const NTMS_DISMOUNT_DEFERRED = 0x00000001;
  static const NTMS_DISMOUNT_IMMEDIATE = 0x00000002;
}

/// {@category Enum}
class NtmsDoorState {
  static const NTMS_DOORSTATE_UNKNOWN = 0x00000000;
  static const NTMS_DOORSTATE_CLOSED = 0x00000001;
  static const NTMS_DOORSTATE_OPEN = 0x00000002;
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
class NtmsDriveType {
  static const NTMS_UNKNOWN_DRIVE = 0x00000000;
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
class NtmsEnumerateOption {
  static const NTMS_ENUM_DEFAULT = 0x00000000;
  static const NTMS_ENUM_ROOTPOOL = 0x00000001;
}

/// {@category Enum}
class NtmsInjectOperation {
  static const NTMS_INJECT_START = 0x00000000;
  static const NTMS_INJECT_STOP = 0x00000001;
  static const NTMS_INJECT_RETRACT = 0x00000002;
  static const NTMS_INJECT_STARTMANY = 0x00000003;
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
class NtmsLibRequestFlags {
  static const NTMS_LIBREQFLAGS_NOAUTOPURGE = 0x00000001;
  static const NTMS_LIBREQFLAGS_NOFAILEDPURGE = 0x00000002;
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
class NtmsLibraryType {
  static const NTMS_LIBRARYTYPE_UNKNOWN = 0x00000000;
  static const NTMS_LIBRARYTYPE_OFFLINE = 0x00000001;
  static const NTMS_LIBRARYTYPE_ONLINE = 0x00000002;
  static const NTMS_LIBRARYTYPE_STANDALONE = 0x00000003;
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
class NtmsMediaPoolPolicy {
  static const NTMS_POOLPOLICY_PURGEOFFLINESCRATCH = 0x00000001;
  static const NTMS_POOLPOLICY_KEEPOFFLINEIMPORT = 0x00000002;
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
class NtmsMountPriority {
  static const NTMS_PRIORITY_DEFAULT = 0x00000000;
  static const NTMS_PRIORITY_HIGHEST = 0x0000000f;
  static const NTMS_PRIORITY_HIGH = 0x00000007;
  static const NTMS_PRIORITY_NORMAL = 0x00000000;
  static const NTMS_PRIORITY_LOW = 0xfffffff9;
  static const NTMS_PRIORITY_LOWEST = 0xfffffff1;
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
class NtmsOpRequestFlags {
  static const NTMS_OPREQFLAGS_NOAUTOPURGE = 0x00000001;
  static const NTMS_OPREQFLAGS_NOFAILEDPURGE = 0x00000002;
  static const NTMS_OPREQFLAGS_NOALERTS = 0x00000010;
  static const NTMS_OPREQFLAGS_NOTRAYICON = 0x00000020;
}

/// {@category Enum}
class NtmsOperationalState {
  static const NTMS_READY = 0x00000000;
  static const NTMS_INITIALIZING = 0x0000000a;
  static const NTMS_NEEDS_SERVICE = 0x00000014;
  static const NTMS_NOT_PRESENT = 0x00000015;
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
class NtmsPortContent {
  static const NTMS_PORTCONTENT_UNKNOWN = 0x00000000;
  static const NTMS_PORTCONTENT_FULL = 0x00000001;
  static const NTMS_PORTCONTENT_EMPTY = 0x00000002;
}

/// {@category Enum}
class NtmsPortPosition {
  static const NTMS_PORTPOSITION_UNKNOWN = 0x00000000;
  static const NTMS_PORTPOSITION_EXTENDED = 0x00000001;
  static const NTMS_PORTPOSITION_RETRACTED = 0x00000002;
}

/// {@category Enum}
class NtmsReadWriteCharacteristics {
  static const NTMS_MEDIARW_UNKNOWN = 0x00000000;
  static const NTMS_MEDIARW_REWRITABLE = 0x00000001;
  static const NTMS_MEDIARW_WRITEONCE = 0x00000002;
  static const NTMS_MEDIARW_READONLY = 0x00000003;
}

/// {@category Enum}
class NtmsSessionOptions {
  static const NTMS_SESSION_QUERYEXPEDITE = 0x00000001;
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
class NtmsUIOperations {
  static const NTMS_UIDEST_ADD = 0x00000001;
  static const NTMS_UIDEST_DELETE = 0x00000002;
  static const NTMS_UIDEST_DELETEALL = 0x00000003;
  static const NTMS_UIOPERATION_MAX = 0x00000004;
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
class PREPARE_TAPE_OPERATION {
  static const TAPE_FORMAT = 0x00000005;
  static const TAPE_LOAD = 0x00000000;
  static const TAPE_LOCK = 0x00000003;
  static const TAPE_TENSION = 0x00000002;
  static const TAPE_UNLOAD = 0x00000001;
  static const TAPE_UNLOCK = 0x00000004;
}

/// {@category Enum}
class PRIORITY_HINT {
  static const IoPriorityHintVeryLow = 0x00000000;
  static const IoPriorityHintLow = 0x00000001;
  static const IoPriorityHintNormal = 0x00000002;
  static const MaximumIoPriorityHintType = 0x00000003;
}

/// {@category Enum}
class READ_DIRECTORY_NOTIFY_INFORMATION_CLASS {
  static const ReadDirectoryNotifyInformation = 0x00000001;
  static const ReadDirectoryNotifyExtendedInformation = 0x00000002;
}

/// {@category Enum}
class REPLACE_FILE_FLAGS {
  static const REPLACEFILE_WRITE_THROUGH = 0x00000001;
  static const REPLACEFILE_IGNORE_MERGE_ERRORS = 0x00000002;
  static const REPLACEFILE_IGNORE_ACL_ERRORS = 0x00000004;
}

/// {@category Enum}
class SERVER_CERTIFICATE_TYPE {
  static const QUIC = 0x00000000;
}

/// {@category Enum}
class SESSION_INFO_USER_FLAGS {
  static const SESS_GUEST = 0x00000001;
  static const SESS_NOENCRYPTION = 0x00000002;
}

/// {@category Enum}
class SET_FILE_POINTER_MOVE_METHOD {
  static const FILE_BEGIN = 0x00000000;
  static const FILE_CURRENT = 0x00000001;
  static const FILE_END = 0x00000002;
}

/// {@category Enum}
class SHARE_INFO_PERMISSIONS {
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
class SHARE_TYPE {
  static const STYPE_DISKTREE = 0x00000000;
  static const STYPE_PRINTQ = 0x00000001;
  static const STYPE_DEVICE = 0x00000002;
  static const STYPE_IPC = 0x00000003;
  static const STYPE_SPECIAL = 0x80000000;
  static const STYPE_TEMPORARY = 0x40000000;
  static const STYPE_MASK = 0x000000ff;
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
class STREAM_INFO_LEVELS {
  static const FindStreamInfoStandard = 0x00000000;
  static const FindStreamInfoMaxInfoLevel = 0x00000001;
}

/// {@category Enum}
class SYMBOLIC_LINK_FLAGS {
  static const SYMBOLIC_LINK_FLAG_DIRECTORY = 0x00000001;
  static const SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE = 0x00000002;
}

/// {@category Enum}
class TAPEMARK_TYPE {
  static const TAPE_FILEMARKS = 0x00000001;
  static const TAPE_LONG_FILEMARKS = 0x00000003;
  static const TAPE_SETMARKS = 0x00000000;
  static const TAPE_SHORT_FILEMARKS = 0x00000002;
}

/// {@category Enum}
class TAPE_INFORMATION_TYPE {
  static const SET_TAPE_DRIVE_INFORMATION = 0x00000001;
  static const SET_TAPE_MEDIA_INFORMATION = 0x00000000;
}

/// {@category Enum}
class TAPE_POSITION_METHOD {
  static const TAPE_ABSOLUTE_BLOCK = 0x00000001;
  static const TAPE_LOGICAL_BLOCK = 0x00000002;
  static const TAPE_REWIND = 0x00000000;
  static const TAPE_SPACE_END_OF_DATA = 0x00000004;
  static const TAPE_SPACE_FILEMARKS = 0x00000006;
  static const TAPE_SPACE_RELATIVE_BLOCKS = 0x00000005;
  static const TAPE_SPACE_SEQUENTIAL_FMKS = 0x00000007;
  static const TAPE_SPACE_SEQUENTIAL_SMKS = 0x00000009;
  static const TAPE_SPACE_SETMARKS = 0x00000008;
}

/// {@category Enum}
class TAPE_POSITION_TYPE {
  static const TAPE_ABSOLUTE_POSITION = 0x00000000;
  static const TAPE_LOGICAL_POSITION = 0x00000001;
}

/// {@category Enum}
class TRANSACTION_OUTCOME {
  static const TransactionOutcomeUndetermined = 0x00000001;
  static const TransactionOutcomeCommitted = 0x00000002;
  static const TransactionOutcomeAborted = 0x00000003;
}

/// {@category Enum}
class TXFS_MINIVERSION {
  static const TXFS_MINIVERSION_COMMITTED_VIEW = 0x00000000;
  static const TXFS_MINIVERSION_DIRTY_VIEW = 0x0000ffff;
  static const TXFS_MINIVERSION_DEFAULT_VIEW = 0x0000fffe;
}

/// {@category Enum}
class TXF_LOG_RECORD_TYPE {
  static const TXF_LOG_RECORD_TYPE_AFFECTED_FILE = 0x00020004;
  static const TXF_LOG_RECORD_TYPE_TRUNCATE = 0x04020002;
  static const TXF_LOG_RECORD_TYPE_WRITE = 0x02020001;
}

/// {@category Enum}
class VER_FIND_FILE_FLAGS {
  static const VFFF_ISSHAREDFILE = 0x00000001;
}

/// {@category Enum}
class VER_FIND_FILE_STATUS {
  static const VFF_CURNEDEST = 0x00000001;
  static const VFF_FILEINUSE = 0x00000002;
  static const VFF_BUFFTOOSMALL = 0x00000004;
}

/// {@category Enum}
class VER_INSTALL_FILE_FLAGS {
  static const VIFF_FORCEINSTALL = 0x00000001;
  static const VIFF_DONTDELETEOLD = 0x00000002;
}

/// {@category Enum}
class VER_INSTALL_FILE_STATUS {
  static const VIF_TEMPFILE = 0x00000001;
  static const VIF_MISMATCH = 0x00000002;
  static const VIF_SRCOLD = 0x00000004;
  static const VIF_DIFFLANG = 0x00000008;
  static const VIF_DIFFCODEPG = 0x00000010;
  static const VIF_DIFFTYPE = 0x00000020;
  static const VIF_WRITEPROT = 0x00000040;
  static const VIF_FILEINUSE = 0x00000080;
  static const VIF_OUTOFSPACE = 0x00000100;
  static const VIF_ACCESSVIOLATION = 0x00000200;
  static const VIF_SHARINGVIOLATION = 0x00000400;
  static const VIF_CANNOTCREATE = 0x00000800;
  static const VIF_CANNOTDELETE = 0x00001000;
  static const VIF_CANNOTRENAME = 0x00002000;
  static const VIF_CANNOTDELETECUR = 0x00004000;
  static const VIF_OUTOFMEMORY = 0x00008000;
  static const VIF_CANNOTREADSRC = 0x00010000;
  static const VIF_CANNOTREADDST = 0x00020000;
  static const VIF_BUFFTOOSMALL = 0x00040000;
  static const VIF_CANNOTLOADLZ32 = 0x00080000;
  static const VIF_CANNOTLOADCABINET = 0x00100000;
}

/// {@category Enum}
class VS_FIXEDFILEINFO_FILE_FLAGS {
  static const VS_FF_DEBUG = 0x00000001;
  static const VS_FF_PRERELEASE = 0x00000002;
  static const VS_FF_PATCHED = 0x00000004;
  static const VS_FF_PRIVATEBUILD = 0x00000008;
  static const VS_FF_INFOINFERRED = 0x00000010;
  static const VS_FF_SPECIALBUILD = 0x00000020;
}

/// {@category Enum}
class VS_FIXEDFILEINFO_FILE_OS {
  static const VOS_UNKNOWN = 0x00000000;
  static const VOS_DOS = 0x00010000;
  static const VOS_OS216 = 0x00020000;
  static const VOS_OS232 = 0x00030000;
  static const VOS_NT = 0x00040000;
  static const VOS_WINCE = 0x00050000;
  static const VOS__BASE = 0x00000000;
  static const VOS__WINDOWS16 = 0x00000001;
  static const VOS__PM16 = 0x00000002;
  static const VOS__PM32 = 0x00000003;
  static const VOS__WINDOWS32 = 0x00000004;
  static const VOS_DOS_WINDOWS16 = 0x00010001;
  static const VOS_DOS_WINDOWS32 = 0x00010004;
  static const VOS_OS216_PM16 = 0x00020002;
  static const VOS_OS232_PM32 = 0x00030003;
  static const VOS_NT_WINDOWS32 = 0x00040004;
}

/// {@category Enum}
class VS_FIXEDFILEINFO_FILE_SUBTYPE {
  static const VFT2_UNKNOWN = 0x00000000;
  static const VFT2_DRV_PRINTER = 0x00000001;
  static const VFT2_DRV_KEYBOARD = 0x00000002;
  static const VFT2_DRV_LANGUAGE = 0x00000003;
  static const VFT2_DRV_DISPLAY = 0x00000004;
  static const VFT2_DRV_MOUSE = 0x00000005;
  static const VFT2_DRV_NETWORK = 0x00000006;
  static const VFT2_DRV_SYSTEM = 0x00000007;
  static const VFT2_DRV_INSTALLABLE = 0x00000008;
  static const VFT2_DRV_SOUND = 0x00000009;
  static const VFT2_DRV_COMM = 0x0000000a;
  static const VFT2_DRV_INPUTMETHOD = 0x0000000b;
  static const VFT2_DRV_VERSIONED_PRINTER = 0x0000000c;
  static const VFT2_FONT_RASTER = 0x00000001;
  static const VFT2_FONT_VECTOR = 0x00000002;
  static const VFT2_FONT_TRUETYPE = 0x00000003;
}

/// {@category Enum}
class VS_FIXEDFILEINFO_FILE_TYPE {
  static const VFT_UNKNOWN = 0x00000000;
  static const VFT_APP = 0x00000001;
  static const VFT_DLL = 0x00000002;
  static const VFT_DRV = 0x00000003;
  static const VFT_FONT = 0x00000004;
  static const VFT_VXD = 0x00000005;
  static const VFT_STATIC_LIB = 0x00000007;
}

/// {@category Enum}
class WIN_STREAM_ID {
  static const BACKUP_ALTERNATE_DATA = 0x00000004;
  static const BACKUP_DATA = 0x00000001;
  static const BACKUP_EA_DATA = 0x00000002;
  static const BACKUP_LINK = 0x00000005;
  static const BACKUP_OBJECT_ID = 0x00000007;
  static const BACKUP_PROPERTY_DATA = 0x00000006;
  static const BACKUP_REPARSE_DATA = 0x00000008;
  static const BACKUP_SECURITY_DATA = 0x00000003;
  static const BACKUP_SPARSE_BLOCK = 0x00000009;
  static const BACKUP_TXFS_DATA = 0x0000000a;
}
