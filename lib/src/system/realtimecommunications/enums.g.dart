/// {@category Enum}
class RTC_ACE_SCOPE {
  static const RTCAS_SCOPE_USER = 0x00000000;
  static const RTCAS_SCOPE_DOMAIN = 0x00000001;
  static const RTCAS_SCOPE_ALL = 0x00000002;
}

/// {@category Enum}
class RTC_ANSWER_MODE {
  static const RTCAM_OFFER_SESSION_EVENT = 0x00000000;
  static const RTCAM_AUTOMATICALLY_ACCEPT = 0x00000001;
  static const RTCAM_AUTOMATICALLY_REJECT = 0x00000002;
  static const RTCAM_NOT_SUPPORTED = 0x00000003;
}

/// {@category Enum}
class RTC_AUDIO_DEVICE {
  static const RTCAD_SPEAKER = 0x00000000;
  static const RTCAD_MICROPHONE = 0x00000001;
}

/// {@category Enum}
class RTC_BUDDY_EVENT_TYPE {
  static const RTCBET_BUDDY_ADD = 0x00000000;
  static const RTCBET_BUDDY_REMOVE = 0x00000001;
  static const RTCBET_BUDDY_UPDATE = 0x00000002;
  static const RTCBET_BUDDY_STATE_CHANGE = 0x00000003;
  static const RTCBET_BUDDY_ROAMED = 0x00000004;
  static const RTCBET_BUDDY_SUBSCRIBED = 0x00000005;
}

/// {@category Enum}
class RTC_BUDDY_SUBSCRIPTION_TYPE {
  static const RTCBT_SUBSCRIBED = 0x00000000;
  static const RTCBT_ALWAYS_OFFLINE = 0x00000001;
  static const RTCBT_ALWAYS_ONLINE = 0x00000002;
  static const RTCBT_POLL = 0x00000003;
}

/// {@category Enum}
class RTC_CLIENT_EVENT_TYPE {
  static const RTCCET_VOLUME_CHANGE = 0x00000000;
  static const RTCCET_DEVICE_CHANGE = 0x00000001;
  static const RTCCET_NETWORK_QUALITY_CHANGE = 0x00000002;
  static const RTCCET_ASYNC_CLEANUP_DONE = 0x00000003;
}

/// {@category Enum}
class RTC_DTMF {
  static const RTC_DTMF_0 = 0x00000000;
  static const RTC_DTMF_1 = 0x00000001;
  static const RTC_DTMF_2 = 0x00000002;
  static const RTC_DTMF_3 = 0x00000003;
  static const RTC_DTMF_4 = 0x00000004;
  static const RTC_DTMF_5 = 0x00000005;
  static const RTC_DTMF_6 = 0x00000006;
  static const RTC_DTMF_7 = 0x00000007;
  static const RTC_DTMF_8 = 0x00000008;
  static const RTC_DTMF_9 = 0x00000009;
  static const RTC_DTMF_STAR = 0x0000000a;
  static const RTC_DTMF_POUND = 0x0000000b;
  static const RTC_DTMF_A = 0x0000000c;
  static const RTC_DTMF_B = 0x0000000d;
  static const RTC_DTMF_C = 0x0000000e;
  static const RTC_DTMF_D = 0x0000000f;
  static const RTC_DTMF_FLASH = 0x00000010;
}

/// {@category Enum}
class RTC_EVENT {
  static const RTCE_CLIENT = 0x00000000;
  static const RTCE_REGISTRATION_STATE_CHANGE = 0x00000001;
  static const RTCE_SESSION_STATE_CHANGE = 0x00000002;
  static const RTCE_SESSION_OPERATION_COMPLETE = 0x00000003;
  static const RTCE_PARTICIPANT_STATE_CHANGE = 0x00000004;
  static const RTCE_MEDIA = 0x00000005;
  static const RTCE_INTENSITY = 0x00000006;
  static const RTCE_MESSAGING = 0x00000007;
  static const RTCE_BUDDY = 0x00000008;
  static const RTCE_WATCHER = 0x00000009;
  static const RTCE_PROFILE = 0x0000000a;
  static const RTCE_USERSEARCH = 0x0000000b;
  static const RTCE_INFO = 0x0000000c;
  static const RTCE_GROUP = 0x0000000d;
  static const RTCE_MEDIA_REQUEST = 0x0000000e;
  static const RTCE_ROAMING = 0x0000000f;
  static const RTCE_PRESENCE_PROPERTY = 0x00000010;
  static const RTCE_PRESENCE_DATA = 0x00000011;
  static const RTCE_PRESENCE_STATUS = 0x00000012;
  static const RTCE_SESSION_REFER_STATUS = 0x00000013;
  static const RTCE_SESSION_REFERRED = 0x00000014;
  static const RTCE_REINVITE = 0x00000015;
}

/// {@category Enum}
class RTC_GROUP_EVENT_TYPE {
  static const RTCGET_GROUP_ADD = 0x00000000;
  static const RTCGET_GROUP_REMOVE = 0x00000001;
  static const RTCGET_GROUP_UPDATE = 0x00000002;
  static const RTCGET_GROUP_BUDDY_ADD = 0x00000003;
  static const RTCGET_GROUP_BUDDY_REMOVE = 0x00000004;
  static const RTCGET_GROUP_ROAMED = 0x00000005;
}

/// {@category Enum}
class RTC_LISTEN_MODE {
  static const RTCLM_NONE = 0x00000000;
  static const RTCLM_DYNAMIC = 0x00000001;
  static const RTCLM_BOTH = 0x00000002;
}

/// {@category Enum}
class RTC_MEDIA_EVENT_REASON {
  static const RTCMER_NORMAL = 0x00000000;
  static const RTCMER_HOLD = 0x00000001;
  static const RTCMER_TIMEOUT = 0x00000002;
  static const RTCMER_BAD_DEVICE = 0x00000003;
  static const RTCMER_NO_PORT = 0x00000004;
  static const RTCMER_PORT_MAPPING_FAILED = 0x00000005;
  static const RTCMER_REMOTE_REQUEST = 0x00000006;
}

/// {@category Enum}
class RTC_MEDIA_EVENT_TYPE {
  static const RTCMET_STOPPED = 0x00000000;
  static const RTCMET_STARTED = 0x00000001;
  static const RTCMET_FAILED = 0x00000002;
}

/// {@category Enum}
class RTC_MESSAGING_EVENT_TYPE {
  static const RTCMSET_MESSAGE = 0x00000000;
  static const RTCMSET_STATUS = 0x00000001;
}

/// {@category Enum}
class RTC_MESSAGING_USER_STATUS {
  static const RTCMUS_IDLE = 0x00000000;
  static const RTCMUS_TYPING = 0x00000001;
}

/// {@category Enum}
class RTC_OFFER_WATCHER_MODE {
  static const RTCOWM_OFFER_WATCHER_EVENT = 0x00000000;
  static const RTCOWM_AUTOMATICALLY_ADD_WATCHER = 0x00000001;
}

/// {@category Enum}
class RTC_PARTICIPANT_STATE {
  static const RTCPS_IDLE = 0x00000000;
  static const RTCPS_PENDING = 0x00000001;
  static const RTCPS_INCOMING = 0x00000002;
  static const RTCPS_ANSWERING = 0x00000003;
  static const RTCPS_INPROGRESS = 0x00000004;
  static const RTCPS_ALERTING = 0x00000005;
  static const RTCPS_CONNECTED = 0x00000006;
  static const RTCPS_DISCONNECTING = 0x00000007;
  static const RTCPS_DISCONNECTED = 0x00000008;
}

/// {@category Enum}
class RTC_PORT_TYPE {
  static const RTCPT_AUDIO_RTP = 0x00000000;
  static const RTCPT_AUDIO_RTCP = 0x00000001;
  static const RTCPT_VIDEO_RTP = 0x00000002;
  static const RTCPT_VIDEO_RTCP = 0x00000003;
  static const RTCPT_SIP = 0x00000004;
}

/// {@category Enum}
class RTC_PRESENCE_PROPERTY {
  static const RTCPP_PHONENUMBER = 0x00000000;
  static const RTCPP_DISPLAYNAME = 0x00000001;
  static const RTCPP_EMAIL = 0x00000002;
  static const RTCPP_DEVICE_NAME = 0x00000003;
  static const RTCPP_MULTIPLE = 0x00000004;
}

/// {@category Enum}
class RTC_PRESENCE_STATUS {
  static const RTCXS_PRESENCE_OFFLINE = 0x00000000;
  static const RTCXS_PRESENCE_ONLINE = 0x00000001;
  static const RTCXS_PRESENCE_AWAY = 0x00000002;
  static const RTCXS_PRESENCE_IDLE = 0x00000003;
  static const RTCXS_PRESENCE_BUSY = 0x00000004;
  static const RTCXS_PRESENCE_BE_RIGHT_BACK = 0x00000005;
  static const RTCXS_PRESENCE_ON_THE_PHONE = 0x00000006;
  static const RTCXS_PRESENCE_OUT_TO_LUNCH = 0x00000007;
}

/// {@category Enum}
class RTC_PRIVACY_MODE {
  static const RTCPM_BLOCK_LIST_EXCLUDED = 0x00000000;
  static const RTCPM_ALLOW_LIST_ONLY = 0x00000001;
}

/// {@category Enum}
class RTC_PROFILE_EVENT_TYPE {
  static const RTCPFET_PROFILE_GET = 0x00000000;
  static const RTCPFET_PROFILE_UPDATE = 0x00000001;
}

/// {@category Enum}
class RTC_PROVIDER_URI {
  static const RTCPU_URIHOMEPAGE = 0x00000000;
  static const RTCPU_URIHELPDESK = 0x00000001;
  static const RTCPU_URIPERSONALACCOUNT = 0x00000002;
  static const RTCPU_URIDISPLAYDURINGCALL = 0x00000003;
  static const RTCPU_URIDISPLAYDURINGIDLE = 0x00000004;
}

/// {@category Enum}
class RTC_REGISTRATION_STATE {
  static const RTCRS_NOT_REGISTERED = 0x00000000;
  static const RTCRS_REGISTERING = 0x00000001;
  static const RTCRS_REGISTERED = 0x00000002;
  static const RTCRS_REJECTED = 0x00000003;
  static const RTCRS_UNREGISTERING = 0x00000004;
  static const RTCRS_ERROR = 0x00000005;
  static const RTCRS_LOGGED_OFF = 0x00000006;
  static const RTCRS_LOCAL_PA_LOGGED_OFF = 0x00000007;
  static const RTCRS_REMOTE_PA_LOGGED_OFF = 0x00000008;
}

/// {@category Enum}
class RTC_REINVITE_STATE {
  static const RTCRIN_INCOMING = 0x00000000;
  static const RTCRIN_SUCCEEDED = 0x00000001;
  static const RTCRIN_FAIL = 0x00000002;
}

/// {@category Enum}
class RTC_RING_TYPE {
  static const RTCRT_PHONE = 0x00000000;
  static const RTCRT_MESSAGE = 0x00000001;
  static const RTCRT_RINGBACK = 0x00000002;
}

/// {@category Enum}
class RTC_ROAMING_EVENT_TYPE {
  static const RTCRET_BUDDY_ROAMING = 0x00000000;
  static const RTCRET_WATCHER_ROAMING = 0x00000001;
  static const RTCRET_PRESENCE_ROAMING = 0x00000002;
  static const RTCRET_PROFILE_ROAMING = 0x00000003;
  static const RTCRET_WPENDING_ROAMING = 0x00000004;
}

/// {@category Enum}
class RTC_SECURITY_LEVEL {
  static const RTCSECL_UNSUPPORTED = 0x00000001;
  static const RTCSECL_SUPPORTED = 0x00000002;
  static const RTCSECL_REQUIRED = 0x00000003;
}

/// {@category Enum}
class RTC_SECURITY_TYPE {
  static const RTCSECT_AUDIO_VIDEO_MEDIA_ENCRYPTION = 0x00000000;
  static const RTCSECT_T120_MEDIA_ENCRYPTION = 0x00000001;
}

/// {@category Enum}
class RTC_SESSION_REFER_STATUS {
  static const RTCSRS_REFERRING = 0x00000000;
  static const RTCSRS_ACCEPTED = 0x00000001;
  static const RTCSRS_ERROR = 0x00000002;
  static const RTCSRS_REJECTED = 0x00000003;
  static const RTCSRS_DROPPED = 0x00000004;
  static const RTCSRS_DONE = 0x00000005;
}

/// {@category Enum}
class RTC_SESSION_STATE {
  static const RTCSS_IDLE = 0x00000000;
  static const RTCSS_INCOMING = 0x00000001;
  static const RTCSS_ANSWERING = 0x00000002;
  static const RTCSS_INPROGRESS = 0x00000003;
  static const RTCSS_CONNECTED = 0x00000004;
  static const RTCSS_DISCONNECTED = 0x00000005;
  static const RTCSS_HOLD = 0x00000006;
  static const RTCSS_REFER = 0x00000007;
}

/// {@category Enum}
class RTC_SESSION_TYPE {
  static const RTCST_PC_TO_PC = 0x00000000;
  static const RTCST_PC_TO_PHONE = 0x00000001;
  static const RTCST_PHONE_TO_PHONE = 0x00000002;
  static const RTCST_IM = 0x00000003;
  static const RTCST_MULTIPARTY_IM = 0x00000004;
  static const RTCST_APPLICATION = 0x00000005;
}

/// {@category Enum}
class RTC_T120_APPLET {
  static const RTCTA_WHITEBOARD = 0x00000000;
  static const RTCTA_APPSHARING = 0x00000001;
}

/// {@category Enum}
class RTC_TERMINATE_REASON {
  static const RTCTR_NORMAL = 0x00000000;
  static const RTCTR_DND = 0x00000001;
  static const RTCTR_BUSY = 0x00000002;
  static const RTCTR_REJECT = 0x00000003;
  static const RTCTR_TIMEOUT = 0x00000004;
  static const RTCTR_SHUTDOWN = 0x00000005;
  static const RTCTR_INSUFFICIENT_SECURITY_LEVEL = 0x00000006;
  static const RTCTR_NOT_SUPPORTED = 0x00000007;
}

/// {@category Enum}
class RTC_USER_SEARCH_COLUMN {
  static const RTCUSC_URI = 0x00000000;
  static const RTCUSC_DISPLAYNAME = 0x00000001;
  static const RTCUSC_TITLE = 0x00000002;
  static const RTCUSC_OFFICE = 0x00000003;
  static const RTCUSC_PHONE = 0x00000004;
  static const RTCUSC_COMPANY = 0x00000005;
  static const RTCUSC_CITY = 0x00000006;
  static const RTCUSC_STATE = 0x00000007;
  static const RTCUSC_COUNTRY = 0x00000008;
  static const RTCUSC_EMAIL = 0x00000009;
}

/// {@category Enum}
class RTC_USER_SEARCH_PREFERENCE {
  static const RTCUSP_MAX_MATCHES = 0x00000000;
  static const RTCUSP_TIME_LIMIT = 0x00000001;
}

/// {@category Enum}
class RTC_VIDEO_DEVICE {
  static const RTCVD_RECEIVE = 0x00000000;
  static const RTCVD_PREVIEW = 0x00000001;
}

/// {@category Enum}
class RTC_WATCHER_EVENT_TYPE {
  static const RTCWET_WATCHER_ADD = 0x00000000;
  static const RTCWET_WATCHER_REMOVE = 0x00000001;
  static const RTCWET_WATCHER_UPDATE = 0x00000002;
  static const RTCWET_WATCHER_OFFERING = 0x00000003;
  static const RTCWET_WATCHER_ROAMED = 0x00000004;
}

/// {@category Enum}
class RTC_WATCHER_MATCH_MODE {
  static const RTCWMM_EXACT_MATCH = 0x00000000;
  static const RTCWMM_BEST_ACE_MATCH = 0x00000001;
}

/// {@category Enum}
class RTC_WATCHER_STATE {
  static const RTCWS_UNKNOWN = 0x00000000;
  static const RTCWS_OFFERING = 0x00000001;
  static const RTCWS_ALLOWED = 0x00000002;
  static const RTCWS_BLOCKED = 0x00000003;
  static const RTCWS_DENIED = 0x00000004;
  static const RTCWS_PROMPT = 0x00000005;
}
