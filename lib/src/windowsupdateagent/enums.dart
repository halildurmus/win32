/// {@category Enum}
class AutomaticUpdatesNotificationLevel {
  static const aunlNotConfigured = 0x00000000;
  static const aunlDisabled = 0x00000001;
  static const aunlNotifyBeforeDownload = 0x00000002;
  static const aunlNotifyBeforeInstallation = 0x00000003;
  static const aunlScheduledInstallation = 0x00000004;
}

/// {@category Enum}
class AutomaticUpdatesScheduledInstallationDay {
  static const ausidEveryDay = 0x00000000;
  static const ausidEverySunday = 0x00000001;
  static const ausidEveryMonday = 0x00000002;
  static const ausidEveryTuesday = 0x00000003;
  static const ausidEveryWednesday = 0x00000004;
  static const ausidEveryThursday = 0x00000005;
  static const ausidEveryFriday = 0x00000006;
  static const ausidEverySaturday = 0x00000007;
}

/// {@category Enum}
class DownloadPhase {
  static const dphInitializing = 0x00000001;
  static const dphDownloading = 0x00000002;
  static const dphVerifying = 0x00000003;
}

/// {@category Enum}
class DownloadPriority {
  static const dpLow = 0x00000001;
  static const dpNormal = 0x00000002;
  static const dpHigh = 0x00000003;
  static const dpExtraHigh = 0x00000004;
}

/// {@category Enum}
class AutoSelectionMode {
  static const asLetWindowsUpdateDecide = 0x00000000;
  static const asAutoSelectIfDownloaded = 0x00000001;
  static const asNeverAutoSelect = 0x00000002;
  static const asAlwaysAutoSelect = 0x00000003;
}

/// {@category Enum}
class AutoDownloadMode {
  static const adLetWindowsUpdateDecide = 0x00000000;
  static const adNeverAutoDownload = 0x00000001;
  static const adAlwaysAutoDownload = 0x00000002;
}

/// {@category Enum}
class InstallationImpact {
  static const iiNormal = 0x00000000;
  static const iiMinor = 0x00000001;
  static const iiRequiresExclusiveHandling = 0x00000002;
}

/// {@category Enum}
class InstallationRebootBehavior {
  static const irbNeverReboots = 0x00000000;
  static const irbAlwaysRequiresReboot = 0x00000001;
  static const irbCanRequestReboot = 0x00000002;
}

/// {@category Enum}
class OperationResultCode {
  static const orcNotStarted = 0x00000000;
  static const orcInProgress = 0x00000001;
  static const orcSucceeded = 0x00000002;
  static const orcSucceededWithErrors = 0x00000003;
  static const orcFailed = 0x00000004;
  static const orcAborted = 0x00000005;
}

/// {@category Enum}
class ServerSelection {
  static const ssDefault = 0x00000000;
  static const ssManagedServer = 0x00000001;
  static const ssWindowsUpdate = 0x00000002;
  static const ssOthers = 0x00000003;
}

/// {@category Enum}
class UpdateType {
  static const utSoftware = 0x00000001;
  static const utDriver = 0x00000002;
}

/// {@category Enum}
class UpdateOperation {
  static const uoInstallation = 0x00000001;
  static const uoUninstallation = 0x00000002;
}

/// {@category Enum}
class DeploymentAction {
  static const daNone = 0x00000000;
  static const daInstallation = 0x00000001;
  static const daUninstallation = 0x00000002;
  static const daDetection = 0x00000003;
  static const daOptionalInstallation = 0x00000004;
}

/// {@category Enum}
class UpdateExceptionContext {
  static const uecGeneral = 0x00000001;
  static const uecWindowsDriver = 0x00000002;
  static const uecWindowsInstaller = 0x00000003;
  static const uecSearchIncomplete = 0x00000004;
}

/// {@category Enum}
class AutomaticUpdatesUserType {
  static const auutCurrentUser = 0x00000001;
  static const auutLocalAdministrator = 0x00000002;
}

/// {@category Enum}
class AutomaticUpdatesPermissionType {
  static const auptSetNotificationLevel = 0x00000001;
  static const auptDisableAutomaticUpdates = 0x00000002;
  static const auptSetIncludeRecommendedUpdates = 0x00000003;
  static const auptSetFeaturedUpdatesEnabled = 0x00000004;
  static const auptSetNonAdministratorsElevated = 0x00000005;
}

/// {@category Enum}
class UpdateServiceRegistrationState {
  static const usrsNotRegistered = 0x00000001;
  static const usrsRegistrationPending = 0x00000002;
  static const usrsRegistered = 0x00000003;
}

/// {@category Enum}
class SearchScope {
  static const searchScopeDefault = 0x00000000;
  static const searchScopeMachineOnly = 0x00000001;
  static const searchScopeCurrentUserOnly = 0x00000002;
  static const searchScopeMachineAndCurrentUser = 0x00000003;
  static const searchScopeMachineAndAllUsers = 0x00000004;
  static const searchScopeAllUsers = 0x00000005;
}

/// {@category Enum}
class UpdateLockdownOption {
  static const uloForWebsiteAccess = 0x00000001;
}

/// {@category Enum}
class AddServiceFlag {
  static const asfAllowPendingRegistration = 0x00000001;
  static const asfAllowOnlineRegistration = 0x00000002;
  static const asfRegisterServiceWithAU = 0x00000004;
}

/// {@category Enum}
class UpdateServiceOption {
  static const usoNonVolatileService = 0x00000001;
}

