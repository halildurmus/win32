/// {@category Enum}
class WMPOpenState {
  static const wmposUndefined = 0x00000000;
  static const wmposPlaylistChanging = 0x00000001;
  static const wmposPlaylistLocating = 0x00000002;
  static const wmposPlaylistConnecting = 0x00000003;
  static const wmposPlaylistLoading = 0x00000004;
  static const wmposPlaylistOpening = 0x00000005;
  static const wmposPlaylistOpenNoMedia = 0x00000006;
  static const wmposPlaylistChanged = 0x00000007;
  static const wmposMediaChanging = 0x00000008;
  static const wmposMediaLocating = 0x00000009;
  static const wmposMediaConnecting = 0x0000000a;
  static const wmposMediaLoading = 0x0000000b;
  static const wmposMediaOpening = 0x0000000c;
  static const wmposMediaOpen = 0x0000000d;
  static const wmposBeginCodecAcquisition = 0x0000000e;
  static const wmposEndCodecAcquisition = 0x0000000f;
  static const wmposBeginLicenseAcquisition = 0x00000010;
  static const wmposEndLicenseAcquisition = 0x00000011;
  static const wmposBeginIndividualization = 0x00000012;
  static const wmposEndIndividualization = 0x00000013;
  static const wmposMediaWaiting = 0x00000014;
  static const wmposOpeningUnknownURL = 0x00000015;
}

/// {@category Enum}
class WMPPlayState {
  static const wmppsUndefined = 0x00000000;
  static const wmppsStopped = 0x00000001;
  static const wmppsPaused = 0x00000002;
  static const wmppsPlaying = 0x00000003;
  static const wmppsScanForward = 0x00000004;
  static const wmppsScanReverse = 0x00000005;
  static const wmppsBuffering = 0x00000006;
  static const wmppsWaiting = 0x00000007;
  static const wmppsMediaEnded = 0x00000008;
  static const wmppsTransitioning = 0x00000009;
  static const wmppsReady = 0x0000000a;
  static const wmppsReconnecting = 0x0000000b;
  static const wmppsLast = 0x0000000c;
}

/// {@category Enum}
class WMPPlaylistChangeEventType {
  static const wmplcUnknown = 0x00000000;
  static const wmplcClear = 0x00000001;
  static const wmplcInfoChange = 0x00000002;
  static const wmplcMove = 0x00000003;
  static const wmplcDelete = 0x00000004;
  static const wmplcInsert = 0x00000005;
  static const wmplcAppend = 0x00000006;
  static const wmplcPrivate = 0x00000007;
  static const wmplcNameChange = 0x00000008;
  static const wmplcMorph = 0x00000009;
  static const wmplcSort = 0x0000000a;
  static const wmplcLast = 0x0000000b;
}

/// {@category Enum}
class WMPSyncState {
  static const wmpssUnknown = 0x00000000;
  static const wmpssSynchronizing = 0x00000001;
  static const wmpssStopped = 0x00000002;
  static const wmpssEstimating = 0x00000003;
  static const wmpssLast = 0x00000004;
}

/// {@category Enum}
class WMPDeviceStatus {
  static const wmpdsUnknown = 0x00000000;
  static const wmpdsPartnershipExists = 0x00000001;
  static const wmpdsPartnershipDeclined = 0x00000002;
  static const wmpdsPartnershipAnother = 0x00000003;
  static const wmpdsManualDevice = 0x00000004;
  static const wmpdsNewDevice = 0x00000005;
  static const wmpdsLast = 0x00000006;
}

/// {@category Enum}
class WMPRipState {
  static const wmprsUnknown = 0x00000000;
  static const wmprsRipping = 0x00000001;
  static const wmprsStopped = 0x00000002;
}

/// {@category Enum}
class WMPBurnFormat {
  static const wmpbfAudioCD = 0x00000000;
  static const wmpbfDataCD = 0x00000001;
}

/// {@category Enum}
class WMPBurnState {
  static const wmpbsUnknown = 0x00000000;
  static const wmpbsBusy = 0x00000001;
  static const wmpbsReady = 0x00000002;
  static const wmpbsWaitingForDisc = 0x00000003;
  static const wmpbsRefreshStatusPending = 0x00000004;
  static const wmpbsPreparingToBurn = 0x00000005;
  static const wmpbsBurning = 0x00000006;
  static const wmpbsStopped = 0x00000007;
  static const wmpbsErasing = 0x00000008;
  static const wmpbsDownloading = 0x00000009;
}

/// {@category Enum}
class WMPStringCollectionChangeEventType {
  static const wmpsccetUnknown = 0x00000000;
  static const wmpsccetInsert = 0x00000001;
  static const wmpsccetChange = 0x00000002;
  static const wmpsccetDelete = 0x00000003;
  static const wmpsccetClear = 0x00000004;
  static const wmpsccetBeginUpdates = 0x00000005;
  static const wmpsccetEndUpdates = 0x00000006;
}

/// {@category Enum}
class WMPLibraryType {
  static const wmpltUnknown = 0x00000000;
  static const wmpltAll = 0x00000001;
  static const wmpltLocal = 0x00000002;
  static const wmpltRemote = 0x00000003;
  static const wmpltDisc = 0x00000004;
  static const wmpltPortableDevice = 0x00000005;
}

/// {@category Enum}
class WMPFolderScanState {
  static const wmpfssUnknown = 0x00000000;
  static const wmpfssScanning = 0x00000001;
  static const wmpfssUpdating = 0x00000002;
  static const wmpfssStopped = 0x00000003;
}

/// {@category Enum}
class WMPServices_StreamState {
  static const WMPServices_StreamState_Stop = 0x00000000;
  static const WMPServices_StreamState_Pause = 0x00000001;
  static const WMPServices_StreamState_Play = 0x00000002;
}

/// {@category Enum}
class WMPPlugin_Caps {
  static const WMPPlugin_Caps_CannotConvertFormats = 0x00000001;
}

/// {@category Enum}
class FEEDS_BACKGROUNDSYNC_ACTION {
  static const FBSA_DISABLE = 0x00000000;
  static const FBSA_ENABLE = 0x00000001;
  static const FBSA_RUNNOW = 0x00000002;
}

/// {@category Enum}
class FEEDS_BACKGROUNDSYNC_STATUS {
  static const FBSS_DISABLED = 0x00000000;
  static const FBSS_ENABLED = 0x00000001;
}

/// {@category Enum}
class FEEDS_EVENTS_SCOPE {
  static const FES_ALL = 0x00000000;
  static const FES_SELF_ONLY = 0x00000001;
  static const FES_SELF_AND_CHILDREN_ONLY = 0x00000002;
}

/// {@category Enum}
class FEEDS_EVENTS_MASK {
  static const FEM_FOLDEREVENTS = 0x00000001;
  static const FEM_FEEDEVENTS = 0x00000002;
}

/// {@category Enum}
class FEEDS_XML_SORT_PROPERTY {
  static const FXSP_NONE = 0x00000000;
  static const FXSP_PUBDATE = 0x00000001;
  static const FXSP_DOWNLOADTIME = 0x00000002;
}

/// {@category Enum}
class FEEDS_XML_SORT_ORDER {
  static const FXSO_NONE = 0x00000000;
  static const FXSO_ASCENDING = 0x00000001;
  static const FXSO_DESCENDING = 0x00000002;
}

/// {@category Enum}
class FEEDS_XML_FILTER_FLAGS {
  static const FXFF_ALL = 0x00000000;
  static const FXFF_UNREAD = 0x00000001;
  static const FXFF_READ = 0x00000002;
}

/// {@category Enum}
class FEEDS_XML_INCLUDE_FLAGS {
  static const FXIF_NONE = 0x00000000;
  static const FXIF_CF_EXTENSIONS = 0x00000001;
}

/// {@category Enum}
class FEEDS_DOWNLOAD_STATUS {
  static const FDS_NONE = 0x00000000;
  static const FDS_PENDING = 0x00000001;
  static const FDS_DOWNLOADING = 0x00000002;
  static const FDS_DOWNLOADED = 0x00000003;
  static const FDS_DOWNLOAD_FAILED = 0x00000004;
}

/// {@category Enum}
class FEEDS_SYNC_SETTING {
  static const FSS_DEFAULT = 0x00000000;
  static const FSS_INTERVAL = 0x00000001;
  static const FSS_MANUAL = 0x00000002;
  static const FSS_SUGGESTED = 0x00000003;
}

/// {@category Enum}
class FEEDS_DOWNLOAD_ERROR {
  static const FDE_NONE = 0x00000000;
  static const FDE_DOWNLOAD_FAILED = 0x00000001;
  static const FDE_INVALID_FEED_FORMAT = 0x00000002;
  static const FDE_NORMALIZATION_FAILED = 0x00000003;
  static const FDE_PERSISTENCE_FAILED = 0x00000004;
  static const FDE_DOWNLOAD_BLOCKED = 0x00000005;
  static const FDE_CANCELED = 0x00000006;
  static const FDE_UNSUPPORTED_AUTH = 0x00000007;
  static const FDE_BACKGROUND_DOWNLOAD_DISABLED = 0x00000008;
  static const FDE_NOT_EXIST = 0x00000009;
  static const FDE_UNSUPPORTED_MSXML = 0x0000000a;
  static const FDE_UNSUPPORTED_DTD = 0x0000000b;
  static const FDE_DOWNLOAD_SIZE_LIMIT_EXCEEDED = 0x0000000c;
  static const FDE_ACCESS_DENIED = 0x0000000d;
  static const FDE_AUTH_FAILED = 0x0000000e;
  static const FDE_INVALID_AUTH = 0x0000000f;
}

/// {@category Enum}
class FEEDS_EVENTS_ITEM_COUNT_FLAGS {
  static const FEICF_READ_ITEM_COUNT_CHANGED = 0x00000001;
  static const FEICF_UNREAD_ITEM_COUNT_CHANGED = 0x00000002;
}

/// {@category Enum}
class FEEDS_ERROR_CODE {
  static const FEC_E_ERRORBASE = 0xc0040200;
  static const FEC_E_INVALIDMSXMLPROPERTY = 0xc0040200;
  static const FEC_E_DOWNLOADSIZELIMITEXCEEDED = 0xc0040201;
}

/// {@category Enum}
class PlayerState {
  static const stop_state = 0x00000000;
  static const pause_state = 0x00000001;
  static const play_state = 0x00000002;
}

/// {@category Enum}
class WMPPartnerNotification {
  static const wmpsnBackgroundProcessingBegin = 0x00000001;
  static const wmpsnBackgroundProcessingEnd = 0x00000002;
  static const wmpsnCatalogDownloadFailure = 0x00000003;
  static const wmpsnCatalogDownloadComplete = 0x00000004;
}

/// {@category Enum}
class WMPCallbackNotification {
  static const wmpcnLoginStateChange = 0x00000001;
  static const wmpcnAuthResult = 0x00000002;
  static const wmpcnLicenseUpdated = 0x00000003;
  static const wmpcnNewCatalogAvailable = 0x00000004;
  static const wmpcnNewPluginAvailable = 0x00000005;
  static const wmpcnDisableRadioSkipping = 0x00000006;
}

/// {@category Enum}
class WMPTaskType {
  static const wmpttBrowse = 0x00000001;
  static const wmpttSync = 0x00000002;
  static const wmpttBurn = 0x00000003;
  static const wmpttCurrent = 0x00000004;
}

/// {@category Enum}
class WMPTransactionType {
  static const wmpttNoTransaction = 0x00000000;
  static const wmpttDownload = 0x00000001;
  static const wmpttBuy = 0x00000002;
}

/// {@category Enum}
class WMPTemplateSize {
  static const wmptsSmall = 0x00000000;
  static const wmptsMedium = 0x00000001;
  static const wmptsLarge = 0x00000002;
}

/// {@category Enum}
class WMPStreamingType {
  static const wmpstUnknown = 0x00000000;
  static const wmpstMusic = 0x00000001;
  static const wmpstVideo = 0x00000002;
  static const wmpstRadio = 0x00000003;
}

/// {@category Enum}
class WMPAccountType {
  static const wmpatBuyOnly = 0x00000001;
  static const wmpatSubscription = 0x00000002;
  static const wmpatJanus = 0x00000003;
}

/// {@category Enum}
class WMPSubscriptionServiceEvent {
  static const wmpsseCurrentBegin = 0x00000001;
  static const wmpsseCurrentEnd = 0x00000002;
  static const wmpsseFullBegin = 0x00000003;
  static const wmpsseFullEnd = 0x00000004;
}

/// {@category Enum}
class WMPSubscriptionDownloadState {
  static const wmpsdlsDownloading = 0x00000000;
  static const wmpsdlsPaused = 0x00000001;
  static const wmpsdlsProcessing = 0x00000002;
  static const wmpsdlsCompleted = 0x00000003;
  static const wmpsdlsCancelled = 0x00000004;
}
