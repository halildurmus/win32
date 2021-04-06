/// {@category Enum}
class AUTHENTICATION_LEVEL {
  static const NO_AUTHENTICATION_REQUIRED = 0x00000000;
  static const INCOMING_AUTHENTICATION_REQUIRED = 0x00000001;
  static const MUTUAL_AUTHENTICATION_REQUIRED = 0x00000002;
}

/// {@category Enum}
class AutoSvcs_Error_Constants {
  static const mtsErrCtxAborted = 0x8004e002;
  static const mtsErrCtxAborting = 0x8004e003;
  static const mtsErrCtxNoContext = 0x8004e004;
  static const mtsErrCtxNotRegistered = 0x8004e005;
  static const mtsErrCtxSynchTimeout = 0x8004e006;
  static const mtsErrCtxOldReference = 0x8004e007;
  static const mtsErrCtxRoleNotFound = 0x8004e00c;
  static const mtsErrCtxNoSecurity = 0x8004e00d;
  static const mtsErrCtxWrongThread = 0x8004e00e;
  static const mtsErrCtxTMNotAvailable = 0x8004e00f;
  static const comQCErrApplicationNotQueued = 0x80110600;
  static const comQCErrNoQueueableInterfaces = 0x80110601;
  static const comQCErrQueuingServiceNotAvailable = 0x80110602;
  static const comQCErrQueueTransactMismatch = 0x80110603;
  static const comqcErrRecorderMarshalled = 0x80110604;
  static const comqcErrOutParam = 0x80110605;
  static const comqcErrRecorderNotTrusted = 0x80110606;
  static const comqcErrPSLoad = 0x80110607;
  static const comqcErrMarshaledObjSameTxn = 0x80110608;
  static const comqcErrInvalidMessage = 0x80110650;
  static const comqcErrMsmqSidUnavailable = 0x80110651;
  static const comqcErrWrongMsgExtension = 0x80110652;
  static const comqcErrMsmqServiceUnavailable = 0x80110653;
  static const comqcErrMsgNotAuthenticated = 0x80110654;
  static const comqcErrMsmqConnectorUsed = 0x80110655;
  static const comqcErrBadMarshaledObject = 0x80110656;
}

/// {@category Enum}
class COMAdminAccessChecksLevelOptions {
  static const COMAdminAccessChecksApplicationLevel = 0x00000000;
  static const COMAdminAccessChecksApplicationComponentLevel = 0x00000001;
}

/// {@category Enum}
class COMAdminActivationOptions {
  static const COMAdminActivationInproc = 0x00000000;
  static const COMAdminActivationLocal = 0x00000001;
}

/// {@category Enum}
class COMAdminApplicationExportOptions {
  static const COMAdminExportNoUsers = 0x00000000;
  static const COMAdminExportUsers = 0x00000001;
  static const COMAdminExportApplicationProxy = 0x00000002;
  static const COMAdminExportForceOverwriteOfFiles = 0x00000004;
  static const COMAdminExportIn10Format = 0x00000010;
}

/// {@category Enum}
class COMAdminApplicationInstallOptions {
  static const COMAdminInstallNoUsers = 0x00000000;
  static const COMAdminInstallUsers = 0x00000001;
  static const COMAdminInstallForceOverwriteOfFiles = 0x00000002;
}

/// {@category Enum}
class COMAdminAuthenticationCapabilitiesOptions {
  static const COMAdminAuthenticationCapabilitiesNone = 0x00000000;
  static const COMAdminAuthenticationCapabilitiesSecureReference = 0x00000002;
  static const COMAdminAuthenticationCapabilitiesStaticCloaking = 0x00000020;
  static const COMAdminAuthenticationCapabilitiesDynamicCloaking = 0x00000040;
}

/// {@category Enum}
class COMAdminAuthenticationLevelOptions {
  static const COMAdminAuthenticationDefault = 0x00000000;
  static const COMAdminAuthenticationNone = 0x00000001;
  static const COMAdminAuthenticationConnect = 0x00000002;
  static const COMAdminAuthenticationCall = 0x00000003;
  static const COMAdminAuthenticationPacket = 0x00000004;
  static const COMAdminAuthenticationIntegrity = 0x00000005;
  static const COMAdminAuthenticationPrivacy = 0x00000006;
}

/// {@category Enum}
class COMAdminComponentFlags {
  static const COMAdminCompFlagTypeInfoFound = 0x00000001;
  static const COMAdminCompFlagCOMPlusPropertiesFound = 0x00000002;
  static const COMAdminCompFlagProxyFound = 0x00000004;
  static const COMAdminCompFlagInterfacesFound = 0x00000008;
  static const COMAdminCompFlagAlreadyInstalled = 0x00000010;
  static const COMAdminCompFlagNotInApplication = 0x00000020;
}

/// {@category Enum}
class COMAdminComponentType {
  static const COMAdmin32BitComponent = 0x00000001;
  static const COMAdmin64BitComponent = 0x00000002;
}

/// {@category Enum}
class COMAdminErrorCodes {
  static const COMAdminErrObjectErrors = 0x80110401;
  static const COMAdminErrObjectInvalid = 0x80110402;
  static const COMAdminErrKeyMissing = 0x80110403;
  static const COMAdminErrAlreadyInstalled = 0x80110404;
  static const COMAdminErrAppFileWriteFail = 0x80110407;
  static const COMAdminErrAppFileReadFail = 0x80110408;
  static const COMAdminErrAppFileVersion = 0x80110409;
  static const COMAdminErrBadPath = 0x8011040a;
  static const COMAdminErrApplicationExists = 0x8011040b;
  static const COMAdminErrRoleExists = 0x8011040c;
  static const COMAdminErrCantCopyFile = 0x8011040d;
  static const COMAdminErrNoUser = 0x8011040f;
  static const COMAdminErrInvalidUserids = 0x80110410;
  static const COMAdminErrNoRegistryCLSID = 0x80110411;
  static const COMAdminErrBadRegistryProgID = 0x80110412;
  static const COMAdminErrAuthenticationLevel = 0x80110413;
  static const COMAdminErrUserPasswdNotValid = 0x80110414;
  static const COMAdminErrCLSIDOrIIDMismatch = 0x80110418;
  static const COMAdminErrRemoteInterface = 0x80110419;
  static const COMAdminErrDllRegisterServer = 0x8011041a;
  static const COMAdminErrNoServerShare = 0x8011041b;
  static const COMAdminErrDllLoadFailed = 0x8011041d;
  static const COMAdminErrBadRegistryLibID = 0x8011041e;
  static const COMAdminErrAppDirNotFound = 0x8011041f;
  static const COMAdminErrRegistrarFailed = 0x80110423;
  static const COMAdminErrCompFileDoesNotExist = 0x80110424;
  static const COMAdminErrCompFileLoadDLLFail = 0x80110425;
  static const COMAdminErrCompFileGetClassObj = 0x80110426;
  static const COMAdminErrCompFileClassNotAvail = 0x80110427;
  static const COMAdminErrCompFileBadTLB = 0x80110428;
  static const COMAdminErrCompFileNotInstallable = 0x80110429;
  static const COMAdminErrNotChangeable = 0x8011042a;
  static const COMAdminErrNotDeletable = 0x8011042b;
  static const COMAdminErrSession = 0x8011042c;
  static const COMAdminErrCompMoveLocked = 0x8011042d;
  static const COMAdminErrCompMoveBadDest = 0x8011042e;
  static const COMAdminErrRegisterTLB = 0x80110430;
  static const COMAdminErrSystemApp = 0x80110433;
  static const COMAdminErrCompFileNoRegistrar = 0x80110434;
  static const COMAdminErrCoReqCompInstalled = 0x80110435;
  static const COMAdminErrServiceNotInstalled = 0x80110436;
  static const COMAdminErrPropertySaveFailed = 0x80110437;
  static const COMAdminErrObjectExists = 0x80110438;
  static const COMAdminErrComponentExists = 0x80110439;
  static const COMAdminErrRegFileCorrupt = 0x8011043b;
  static const COMAdminErrPropertyOverflow = 0x8011043c;
  static const COMAdminErrNotInRegistry = 0x8011043e;
  static const COMAdminErrObjectNotPoolable = 0x8011043f;
  static const COMAdminErrApplidMatchesClsid = 0x80110446;
  static const COMAdminErrRoleDoesNotExist = 0x80110447;
  static const COMAdminErrStartAppNeedsComponents = 0x80110448;
  static const COMAdminErrRequiresDifferentPlatform = 0x80110449;
  static const COMAdminErrQueuingServiceNotAvailable = 0x80110602;
  static const COMAdminErrObjectParentMissing = 0x80110808;
  static const COMAdminErrObjectDoesNotExist = 0x80110809;
  static const COMAdminErrCanNotExportAppProxy = 0x8011044a;
  static const COMAdminErrCanNotStartApp = 0x8011044b;
  static const COMAdminErrCanNotExportSystemApp = 0x8011044c;
  static const COMAdminErrCanNotSubscribeToComponent = 0x8011044d;
  static const COMAdminErrAppNotRunning = 0x8011080a;
  static const COMAdminErrEventClassCannotBeSubscriber = 0x8011044e;
  static const COMAdminErrLibAppProxyIncompatible = 0x8011044f;
  static const COMAdminErrBasePartitionOnly = 0x80110450;
  static const COMAdminErrDuplicatePartitionName = 0x80110457;
  static const COMAdminErrPartitionInUse = 0x80110459;
  static const COMAdminErrImportedComponentsNotAllowed = 0x8011045b;
  static const COMAdminErrRegdbNotInitialized = 0x80110472;
  static const COMAdminErrRegdbNotOpen = 0x80110473;
  static const COMAdminErrRegdbSystemErr = 0x80110474;
  static const COMAdminErrRegdbAlreadyRunning = 0x80110475;
  static const COMAdminErrMigVersionNotSupported = 0x80110480;
  static const COMAdminErrMigSchemaNotFound = 0x80110481;
  static const COMAdminErrCatBitnessMismatch = 0x80110482;
  static const COMAdminErrCatUnacceptableBitness = 0x80110483;
  static const COMAdminErrCatWrongAppBitnessBitness = 0x80110484;
  static const COMAdminErrCatPauseResumeNotSupported = 0x80110485;
  static const COMAdminErrCatServerFault = 0x80110486;
  static const COMAdminErrCantRecycleLibraryApps = 0x8011080f;
  static const COMAdminErrCantRecycleServiceApps = 0x80110811;
  static const COMAdminErrProcessAlreadyRecycled = 0x80110812;
  static const COMAdminErrPausedProcessMayNotBeRecycled = 0x80110813;
  static const COMAdminErrInvalidPartition = 0x8011080b;
  static const COMAdminErrPartitionMsiOnly = 0x80110819;
  static const COMAdminErrStartAppDisabled = 0x80110451;
  static const COMAdminErrCompMoveSource = 0x8011081c;
  static const COMAdminErrCompMoveDest = 0x8011081d;
  static const COMAdminErrCompMovePrivate = 0x8011081e;
  static const COMAdminErrCannotCopyEventClass = 0x80110820;
}

/// {@category Enum}
class COMAdminFileFlags {
  static const COMAdminFileFlagLoadable = 0x00000001;
  static const COMAdminFileFlagCOM = 0x00000002;
  static const COMAdminFileFlagContainsPS = 0x00000004;
  static const COMAdminFileFlagContainsComp = 0x00000008;
  static const COMAdminFileFlagContainsTLB = 0x00000010;
  static const COMAdminFileFlagSelfReg = 0x00000020;
  static const COMAdminFileFlagSelfUnReg = 0x00000040;
  static const COMAdminFileFlagUnloadableDLL = 0x00000080;
  static const COMAdminFileFlagDoesNotExist = 0x00000100;
  static const COMAdminFileFlagAlreadyInstalled = 0x00000200;
  static const COMAdminFileFlagBadTLB = 0x00000400;
  static const COMAdminFileFlagGetClassObjFailed = 0x00000800;
  static const COMAdminFileFlagClassNotAvailable = 0x00001000;
  static const COMAdminFileFlagRegistrar = 0x00002000;
  static const COMAdminFileFlagNoRegistrar = 0x00004000;
  static const COMAdminFileFlagDLLRegsvrFailed = 0x00008000;
  static const COMAdminFileFlagRegTLBFailed = 0x00010000;
  static const COMAdminFileFlagRegistrarFailed = 0x00020000;
  static const COMAdminFileFlagError = 0x00040000;
}

/// {@category Enum}
class COMAdminImpersonationLevelOptions {
  static const COMAdminImpersonationAnonymous = 0x00000001;
  static const COMAdminImpersonationIdentify = 0x00000002;
  static const COMAdminImpersonationImpersonate = 0x00000003;
  static const COMAdminImpersonationDelegate = 0x00000004;
}

/// {@category Enum}
class COMAdminInUse {
  static const COMAdminNotInUse = 0x00000000;
  static const COMAdminInUseByCatalog = 0x00000001;
  static const COMAdminInUseByRegistryUnknown = 0x00000002;
  static const COMAdminInUseByRegistryProxyStub = 0x00000003;
  static const COMAdminInUseByRegistryTypeLib = 0x00000004;
  static const COMAdminInUseByRegistryClsid = 0x00000005;
}

/// {@category Enum}
class COMAdminOS {
  static const COMAdminOSNotInitialized = 0x00000000;
  static const COMAdminOSWindows3_1 = 0x00000001;
  static const COMAdminOSWindows9x = 0x00000002;
  static const COMAdminOSWindows2000 = 0x00000003;
  static const COMAdminOSWindows2000AdvancedServer = 0x00000004;
  static const COMAdminOSWindows2000Unknown = 0x00000005;
  static const COMAdminOSUnknown = 0x00000006;
  static const COMAdminOSWindowsXPPersonal = 0x0000000b;
  static const COMAdminOSWindowsXPProfessional = 0x0000000c;
  static const COMAdminOSWindowsNETStandardServer = 0x0000000d;
  static const COMAdminOSWindowsNETEnterpriseServer = 0x0000000e;
  static const COMAdminOSWindowsNETDatacenterServer = 0x0000000f;
  static const COMAdminOSWindowsNETWebServer = 0x00000010;
  static const COMAdminOSWindowsLonghornPersonal = 0x00000011;
  static const COMAdminOSWindowsLonghornProfessional = 0x00000012;
  static const COMAdminOSWindowsLonghornStandardServer = 0x00000013;
  static const COMAdminOSWindowsLonghornEnterpriseServer = 0x00000014;
  static const COMAdminOSWindowsLonghornDatacenterServer = 0x00000015;
  static const COMAdminOSWindowsLonghornWebServer = 0x00000016;
  static const COMAdminOSWindows7Personal = 0x00000017;
  static const COMAdminOSWindows7Professional = 0x00000018;
  static const COMAdminOSWindows7StandardServer = 0x00000019;
  static const COMAdminOSWindows7EnterpriseServer = 0x0000001a;
  static const COMAdminOSWindows7DatacenterServer = 0x0000001b;
  static const COMAdminOSWindows7WebServer = 0x0000001c;
  static const COMAdminOSWindows8Personal = 0x0000001d;
  static const COMAdminOSWindows8Professional = 0x0000001e;
  static const COMAdminOSWindows8StandardServer = 0x0000001f;
  static const COMAdminOSWindows8EnterpriseServer = 0x00000020;
  static const COMAdminOSWindows8DatacenterServer = 0x00000021;
  static const COMAdminOSWindows8WebServer = 0x00000022;
  static const COMAdminOSWindowsBluePersonal = 0x00000023;
  static const COMAdminOSWindowsBlueProfessional = 0x00000024;
  static const COMAdminOSWindowsBlueStandardServer = 0x00000025;
  static const COMAdminOSWindowsBlueEnterpriseServer = 0x00000026;
  static const COMAdminOSWindowsBlueDatacenterServer = 0x00000027;
  static const COMAdminOSWindowsBlueWebServer = 0x00000028;
}

/// {@category Enum}
class COMAdminQCMessageAuthenticateOptions {
  static const COMAdminQCMessageAuthenticateSecureApps = 0x00000000;
  static const COMAdminQCMessageAuthenticateOff = 0x00000001;
  static const COMAdminQCMessageAuthenticateOn = 0x00000002;
}

/// {@category Enum}
class COMAdminServiceOptions {
  static const COMAdminServiceLoadBalanceRouter = 0x00000001;
}

/// {@category Enum}
class COMAdminServiceStatusOptions {
  static const COMAdminServiceStopped = 0x00000000;
  static const COMAdminServiceStartPending = 0x00000001;
  static const COMAdminServiceStopPending = 0x00000002;
  static const COMAdminServiceRunning = 0x00000003;
  static const COMAdminServiceContinuePending = 0x00000004;
  static const COMAdminServicePausePending = 0x00000005;
  static const COMAdminServicePaused = 0x00000006;
  static const COMAdminServiceUnknownState = 0x00000007;
}

/// {@category Enum}
class COMAdminSynchronizationOptions {
  static const COMAdminSynchronizationIgnored = 0x00000000;
  static const COMAdminSynchronizationNone = 0x00000001;
  static const COMAdminSynchronizationSupported = 0x00000002;
  static const COMAdminSynchronizationRequired = 0x00000003;
  static const COMAdminSynchronizationRequiresNew = 0x00000004;
}

/// {@category Enum}
class COMAdminThreadingModels {
  static const COMAdminThreadingModelApartment = 0x00000000;
  static const COMAdminThreadingModelFree = 0x00000001;
  static const COMAdminThreadingModelMain = 0x00000002;
  static const COMAdminThreadingModelBoth = 0x00000003;
  static const COMAdminThreadingModelNeutral = 0x00000004;
  static const COMAdminThreadingModelNotSpecified = 0x00000005;
}

/// {@category Enum}
class COMAdminTransactionOptions {
  static const COMAdminTransactionIgnored = 0x00000000;
  static const COMAdminTransactionNone = 0x00000001;
  static const COMAdminTransactionSupported = 0x00000002;
  static const COMAdminTransactionRequired = 0x00000003;
  static const COMAdminTransactionRequiresNew = 0x00000004;
}

/// {@category Enum}
class COMAdminTxIsolationLevelOptions {
  static const COMAdminTxIsolationLevelAny = 0x00000000;
  static const COMAdminTxIsolationLevelReadUnCommitted = 0x00000001;
  static const COMAdminTxIsolationLevelReadCommitted = 0x00000002;
  static const COMAdminTxIsolationLevelRepeatableRead = 0x00000003;
  static const COMAdminTxIsolationLevelSerializable = 0x00000004;
}

/// {@category Enum}
class COMPLUS_APPTYPE {
  static const APPTYPE_UNKNOWN = 0xffffffff;
  static const APPTYPE_SERVER = 0x00000001;
  static const APPTYPE_LIBRARY = 0x00000000;
  static const APPTYPE_SWC = 0x00000002;
}

/// {@category Enum}
class CRMFLAGS {
  static const CRMFLAG_FORGETTARGET = 0x00000001;
  static const CRMFLAG_WRITTENDURINGPREPARE = 0x00000002;
  static const CRMFLAG_WRITTENDURINGCOMMIT = 0x00000004;
  static const CRMFLAG_WRITTENDURINGABORT = 0x00000008;
  static const CRMFLAG_WRITTENDURINGRECOVERY = 0x00000010;
  static const CRMFLAG_WRITTENDURINGREPLAY = 0x00000020;
  static const CRMFLAG_REPLAYINPROGRESS = 0x00000040;
}

/// {@category Enum}
class CRMREGFLAGS {
  static const CRMREGFLAG_PREPAREPHASE = 0x00000001;
  static const CRMREGFLAG_COMMITPHASE = 0x00000002;
  static const CRMREGFLAG_ABORTPHASE = 0x00000004;
  static const CRMREGFLAG_ALLPHASES = 0x00000007;
  static const CRMREGFLAG_FAILIFINDOUBTSREMAIN = 0x00000010;
}

/// {@category Enum}
class CSC_Binding {
  static const CSC_NoBinding = 0x00000000;
  static const CSC_BindToPoolThread = 0x00000001;
}

/// {@category Enum}
class CSC_COMTIIntrinsicsConfig {
  static const CSC_NoCOMTIIntrinsics = 0x00000000;
  static const CSC_InheritCOMTIIntrinsics = 0x00000001;
}

/// {@category Enum}
class CSC_IISIntrinsicsConfig {
  static const CSC_NoIISIntrinsics = 0x00000000;
  static const CSC_InheritIISIntrinsics = 0x00000001;
}

/// {@category Enum}
class CSC_InheritanceConfig {
  static const CSC_Inherit = 0x00000000;
  static const CSC_Ignore = 0x00000001;
}

/// {@category Enum}
class CSC_PartitionConfig {
  static const CSC_NoPartition = 0x00000000;
  static const CSC_InheritPartition = 0x00000001;
  static const CSC_NewPartition = 0x00000002;
}

/// {@category Enum}
class CSC_SxsConfig {
  static const CSC_NoSxs = 0x00000000;
  static const CSC_InheritSxs = 0x00000001;
  static const CSC_NewSxs = 0x00000002;
}

/// {@category Enum}
class CSC_SynchronizationConfig {
  static const CSC_NoSynchronization = 0x00000000;
  static const CSC_IfContainerIsSynchronized = 0x00000001;
  static const CSC_NewSynchronizationIfNecessary = 0x00000002;
  static const CSC_NewSynchronization = 0x00000003;
}

/// {@category Enum}
class CSC_ThreadPool {
  static const CSC_ThreadPoolNone = 0x00000000;
  static const CSC_ThreadPoolInherit = 0x00000001;
  static const CSC_STAThreadPool = 0x00000002;
  static const CSC_MTAThreadPool = 0x00000003;
}

/// {@category Enum}
class CSC_TrackerConfig {
  static const CSC_DontUseTracker = 0x00000000;
  static const CSC_UseTracker = 0x00000001;
}

/// {@category Enum}
class CSC_TransactionConfig {
  static const CSC_NoTransaction = 0x00000000;
  static const CSC_IfContainerIsTransactional = 0x00000001;
  static const CSC_CreateTransactionIfNecessary = 0x00000002;
  static const CSC_NewTransaction = 0x00000003;
}

/// {@category Enum}
class CrmTransactionState {
  static const TxState_Active = 0x00000000;
  static const TxState_Committed = 0x00000001;
  static const TxState_Aborted = 0x00000002;
  static const TxState_Indoubt = 0x00000003;
}

/// {@category Enum}
class DUMPTYPE {
  static const DUMPTYPE_FULL = 0x00000000;
  static const DUMPTYPE_MINI = 0x00000001;
  static const DUMPTYPE_NONE = 0x00000002;
}

/// {@category Enum}
class GetAppTrackerDataFlags {
  static const GATD_INCLUDE_PROCESS_EXE_NAME = 0x00000001;
  static const GATD_INCLUDE_LIBRARY_APPS = 0x00000002;
  static const GATD_INCLUDE_SWC = 0x00000004;
  static const GATD_INCLUDE_CLASS_NAME = 0x00000008;
  static const GATD_INCLUDE_APPLICATION_NAME = 0x00000010;
}

/// {@category Enum}
class ICOMAdminCatalog_ExportApplication_lOptionsFlags {
  static const COMAdminExportNoUsers = 0x00000000;
  static const COMAdminExportUsers = 0x00000001;
  static const COMAdminExportApplicationProxy = 0x00000002;
  static const COMAdminExportForceOverwriteOfFile = 0x00000004;
  static const COMAdminExportIn10Format = 0x00000010;
}

/// {@category Enum}
class ICOMAdminCatalog_InstallApplication_lOptionsFlags {
  static const COMAdminInstallNoUsers = 0x00000000;
  static const COMAdminInstallUsers = 0x00000001;
  static const COMAdminInstallForceOverwriteOfFiles = 0x00000002;
  static const COMAdminInstallForceOverwriteOfFile = 0x00000002;
}

/// {@category Enum}
class ISOFLAG {
  static const ISOFLAG_RETAIN_COMMIT_DC = 0x00000001;
  static const ISOFLAG_RETAIN_COMMIT = 0x00000002;
  static const ISOFLAG_RETAIN_COMMIT_NO = 0x00000003;
  static const ISOFLAG_RETAIN_ABORT_DC = 0x00000004;
  static const ISOFLAG_RETAIN_ABORT = 0x00000008;
  static const ISOFLAG_RETAIN_ABORT_NO = 0x0000000c;
  static const ISOFLAG_RETAIN_DONTCARE = 0x00000005;
  static const ISOFLAG_RETAIN_BOTH = 0x0000000a;
  static const ISOFLAG_RETAIN_NONE = 0x0000000f;
  static const ISOFLAG_OPTIMISTIC = 0x00000010;
  static const ISOFLAG_READONLY = 0x00000020;
}

/// {@category Enum}
class ISOLATIONLEVEL {
  static const ISOLATIONLEVEL_UNSPECIFIED = 0xffffffff;
  static const ISOLATIONLEVEL_CHAOS = 0x00000010;
  static const ISOLATIONLEVEL_READUNCOMMITTED = 0x00000100;
  static const ISOLATIONLEVEL_BROWSE = 0x00000100;
  static const ISOLATIONLEVEL_CURSORSTABILITY = 0x00001000;
  static const ISOLATIONLEVEL_READCOMMITTED = 0x00001000;
  static const ISOLATIONLEVEL_REPEATABLEREAD = 0x00010000;
  static const ISOLATIONLEVEL_SERIALIZABLE = 0x00100000;
  static const ISOLATIONLEVEL_ISOLATED = 0x00100000;
}

/// {@category Enum}
class LockModes {
  static const LockSetGet = 0x00000000;
  static const LockMethod = 0x00000001;
}

/// {@category Enum}
class ReleaseModes {
  static const Standard = 0x00000000;
  static const Process = 0x00000001;
}

/// {@category Enum}
class TRACKING_COLL_TYPE {
  static const TRKCOLL_PROCESSES = 0x00000000;
  static const TRKCOLL_APPLICATIONS = 0x00000001;
  static const TRKCOLL_COMPONENTS = 0x00000002;
}

/// {@category Enum}
class TX_MISC_CONSTANTS {
  static const MAX_TRAN_DESC = 0x00000028;
}

/// {@category Enum}
class TransactionVote {
  static const TxCommit = 0x00000000;
  static const TxAbort = 0x00000001;
}

/// {@category Enum}
class XACTCONST {
  static const XACTCONST_TIMEOUTINFINITE = 0x00000000;
}

/// {@category Enum}
class XACTHEURISTIC {
  static const XACTHEURISTIC_ABORT = 0x00000001;
  static const XACTHEURISTIC_COMMIT = 0x00000002;
  static const XACTHEURISTIC_DAMAGE = 0x00000003;
  static const XACTHEURISTIC_DANGER = 0x00000004;
}

/// {@category Enum}
class XACTRM {
  static const XACTRM_OPTIMISTICLASTWINS = 0x00000001;
  static const XACTRM_NOREADONLYPREPARES = 0x00000002;
}

/// {@category Enum}
class XACTSTAT {
  static const XACTSTAT_NONE = 0x00000000;
  static const XACTSTAT_OPENNORMAL = 0x00000001;
  static const XACTSTAT_OPENREFUSED = 0x00000002;
  static const XACTSTAT_PREPARING = 0x00000004;
  static const XACTSTAT_PREPARED = 0x00000008;
  static const XACTSTAT_PREPARERETAINING = 0x00000010;
  static const XACTSTAT_PREPARERETAINED = 0x00000020;
  static const XACTSTAT_COMMITTING = 0x00000040;
  static const XACTSTAT_COMMITRETAINING = 0x00000080;
  static const XACTSTAT_ABORTING = 0x00000100;
  static const XACTSTAT_ABORTED = 0x00000200;
  static const XACTSTAT_COMMITTED = 0x00000400;
  static const XACTSTAT_HEURISTIC_ABORT = 0x00000800;
  static const XACTSTAT_HEURISTIC_COMMIT = 0x00001000;
  static const XACTSTAT_HEURISTIC_DAMAGE = 0x00002000;
  static const XACTSTAT_HEURISTIC_DANGER = 0x00004000;
  static const XACTSTAT_FORCED_ABORT = 0x00008000;
  static const XACTSTAT_FORCED_COMMIT = 0x00010000;
  static const XACTSTAT_INDOUBT = 0x00020000;
  static const XACTSTAT_CLOSED = 0x00040000;
  static const XACTSTAT_OPEN = 0x00000003;
  static const XACTSTAT_NOTPREPARED = 0x0007ffc3;
  static const XACTSTAT_ALL = 0x0007ffff;
}

/// {@category Enum}
class XACTTC {
  static const XACTTC_NONE = 0x00000000;
  static const XACTTC_SYNC_PHASEONE = 0x00000001;
  static const XACTTC_SYNC_PHASETWO = 0x00000002;
  static const XACTTC_SYNC = 0x00000002;
  static const XACTTC_ASYNC_PHASEONE = 0x00000004;
  static const XACTTC_ASYNC = 0x00000004;
}

/// {@category Enum}
class XACT_DTC_CONSTANTS {
  static const XACT_E_CONNECTION_REQUEST_DENIED = 0x8004d100;
  static const XACT_E_TOOMANY_ENLISTMENTS = 0x8004d101;
  static const XACT_E_DUPLICATE_GUID = 0x8004d102;
  static const XACT_E_NOTSINGLEPHASE = 0x8004d103;
  static const XACT_E_RECOVERYALREADYDONE = 0x8004d104;
  static const XACT_E_PROTOCOL = 0x8004d105;
  static const XACT_E_RM_FAILURE = 0x8004d106;
  static const XACT_E_RECOVERY_FAILED = 0x8004d107;
  static const XACT_E_LU_NOT_FOUND = 0x8004d108;
  static const XACT_E_DUPLICATE_LU = 0x8004d109;
  static const XACT_E_LU_NOT_CONNECTED = 0x8004d10a;
  static const XACT_E_DUPLICATE_TRANSID = 0x8004d10b;
  static const XACT_E_LU_BUSY = 0x8004d10c;
  static const XACT_E_LU_NO_RECOVERY_PROCESS = 0x8004d10d;
  static const XACT_E_LU_DOWN = 0x8004d10e;
  static const XACT_E_LU_RECOVERING = 0x8004d10f;
  static const XACT_E_LU_RECOVERY_MISMATCH = 0x8004d110;
  static const XACT_E_RM_UNAVAILABLE = 0x8004d111;
  static const XACT_E_LRMRECOVERYALREADYDONE = 0x8004d112;
  static const XACT_E_NOLASTRESOURCEINTERFACE = 0x8004d113;
  static const XACT_S_NONOTIFY = 0x0004d100;
  static const XACT_OK_NONOTIFY = 0x0004d101;
  static const dwUSER_MS_SQLSERVER = 0x0000ffff;
}

/// {@category Enum}
class DtcLu_CompareState {
  static const DTCLUCOMPARESTATE_COMMITTED = 0x00000001;
  static const DTCLUCOMPARESTATE_HEURISTICCOMMITTED = 0x00000002;
  static const DTCLUCOMPARESTATE_HEURISTICMIXED = 0x00000003;
  static const DTCLUCOMPARESTATE_HEURISTICRESET = 0x00000004;
  static const DTCLUCOMPARESTATE_INDOUBT = 0x00000005;
  static const DTCLUCOMPARESTATE_RESET = 0x00000006;
}

/// {@category Enum}
class DtcLu_CompareStates_Confirmation {
  static const DTCLUCOMPARESTATESCONFIRMATION_CONFIRM = 0x00000001;
  static const DTCLUCOMPARESTATESCONFIRMATION_PROTOCOL = 0x00000002;
}

/// {@category Enum}
class DtcLu_CompareStates_Error {
  static const DTCLUCOMPARESTATESERROR_PROTOCOL = 0x00000001;
}

/// {@category Enum}
class DtcLu_CompareStates_Response {
  static const DTCLUCOMPARESTATESRESPONSE_OK = 0x00000001;
  static const DTCLUCOMPARESTATESRESPONSE_PROTOCOL = 0x00000002;
}

/// {@category Enum}
class DtcLu_LocalRecovery_Work {
  static const DTCINITIATEDRECOVERYWORK_CHECKLUSTATUS = 0x00000001;
  static const DTCINITIATEDRECOVERYWORK_TRANS = 0x00000002;
  static const DTCINITIATEDRECOVERYWORK_TMDOWN = 0x00000003;
}

/// {@category Enum}
class DtcLu_Xln {
  static const DTCLUXLN_COLD = 0x00000001;
  static const DTCLUXLN_WARM = 0x00000002;
}

/// {@category Enum}
class DtcLu_Xln_Confirmation {
  static const DTCLUXLNCONFIRMATION_CONFIRM = 0x00000001;
  static const DTCLUXLNCONFIRMATION_LOGNAMEMISMATCH = 0x00000002;
  static const DTCLUXLNCONFIRMATION_COLDWARMMISMATCH = 0x00000003;
  static const DTCLUXLNCONFIRMATION_OBSOLETE = 0x00000004;
}

/// {@category Enum}
class DtcLu_Xln_Error {
  static const DTCLUXLNERROR_PROTOCOL = 0x00000001;
  static const DTCLUXLNERROR_LOGNAMEMISMATCH = 0x00000002;
  static const DTCLUXLNERROR_COLDWARMMISMATCH = 0x00000003;
}

/// {@category Enum}
class DtcLu_Xln_Response {
  static const DTCLUXLNRESPONSE_OK_SENDOURXLNBACK = 0x00000001;
  static const DTCLUXLNRESPONSE_OK_SENDCONFIRMATION = 0x00000002;
  static const DTCLUXLNRESPONSE_LOGNAMEMISMATCH = 0x00000003;
  static const DTCLUXLNRESPONSE_COLDWARMMISMATCH = 0x00000004;
}
