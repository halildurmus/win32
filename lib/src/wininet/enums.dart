/// {@category Enum}
class INTERNET_SCHEME {
  static const INTERNET_SCHEME_PARTIAL = 0xfffffffe;
  static const INTERNET_SCHEME_UNKNOWN = 0xffffffff;
  static const INTERNET_SCHEME_DEFAULT = 0x00000000;
  static const INTERNET_SCHEME_FTP = 0x00000001;
  static const INTERNET_SCHEME_GOPHER = 0x00000002;
  static const INTERNET_SCHEME_HTTP = 0x00000003;
  static const INTERNET_SCHEME_HTTPS = 0x00000004;
  static const INTERNET_SCHEME_FILE = 0x00000005;
  static const INTERNET_SCHEME_NEWS = 0x00000006;
  static const INTERNET_SCHEME_MAILTO = 0x00000007;
  static const INTERNET_SCHEME_SOCKS = 0x00000008;
  static const INTERNET_SCHEME_JAVASCRIPT = 0x00000009;
  static const INTERNET_SCHEME_VBSCRIPT = 0x0000000a;
  static const INTERNET_SCHEME_RES = 0x0000000b;
  static const INTERNET_SCHEME_FIRST = 0x00000001;
  static const INTERNET_SCHEME_LAST = 0x0000000b;
}

/// {@category Enum}
class InternetCookieState {
  static const COOKIE_STATE_UNKNOWN = 0x00000000;
  static const COOKIE_STATE_ACCEPT = 0x00000001;
  static const COOKIE_STATE_PROMPT = 0x00000002;
  static const COOKIE_STATE_LEASH = 0x00000003;
  static const COOKIE_STATE_DOWNGRADE = 0x00000004;
  static const COOKIE_STATE_REJECT = 0x00000005;
  static const COOKIE_STATE_MAX = 0x00000005;
}

/// {@category Enum}
class WPAD_CACHE_DELETE {
  static const WPAD_CACHE_DELETE_CURRENT = 0x00000000;
  static const WPAD_CACHE_DELETE_ALL = 0x00000001;
}

/// {@category Enum}
class FORTCMD {
  static const FORTCMD_LOGON = 0x00000001;
  static const FORTCMD_LOGOFF = 0x00000002;
  static const FORTCMD_CHG_PERSONALITY = 0x00000003;
}

/// {@category Enum}
class FORTSTAT {
  static const FORTSTAT_INSTALLED = 0x00000001;
  static const FORTSTAT_LOGGEDON = 0x00000002;
}

/// {@category Enum}
class REQUEST_TIMES {
  static const NameResolutionStart = 0x00000000;
  static const NameResolutionEnd = 0x00000001;
  static const ConnectionEstablishmentStart = 0x00000002;
  static const ConnectionEstablishmentEnd = 0x00000003;
  static const TLSHandshakeStart = 0x00000004;
  static const TLSHandshakeEnd = 0x00000005;
  static const HttpRequestTimeMax = 0x00000020;
}

/// {@category Enum}
class HTTP_PUSH_WAIT_TYPE {
  static const HttpPushWaitEnableComplete = 0x00000000;
  static const HttpPushWaitReceiveComplete = 0x00000001;
  static const HttpPushWaitSendComplete = 0x00000002;
}

/// {@category Enum}
class WININET_SYNC_MODE {
  static const WININET_SYNC_MODE_NEVER = 0x00000000;
  static const WININET_SYNC_MODE_ON_EXPIRY = 0x00000001;
  static const WININET_SYNC_MODE_ONCE_PER_SESSION = 0x00000002;
  static const WININET_SYNC_MODE_ALWAYS = 0x00000003;
  static const WININET_SYNC_MODE_AUTOMATIC = 0x00000004;
  static const WININET_SYNC_MODE_DEFAULT = 0x00000004;
}

/// {@category Enum}
class APP_CACHE_STATE {
  static const AppCacheStateNoUpdateNeeded = 0x00000000;
  static const AppCacheStateUpdateNeeded = 0x00000001;
  static const AppCacheStateUpdateNeededNew = 0x00000002;
  static const AppCacheStateUpdateNeededMasterOnly = 0x00000003;
}

/// {@category Enum}
class APP_CACHE_FINALIZE_STATE {
  static const AppCacheFinalizeStateIncomplete = 0x00000000;
  static const AppCacheFinalizeStateManifestChange = 0x00000001;
  static const AppCacheFinalizeStateComplete = 0x00000002;
}

/// {@category Enum}
class URL_CACHE_LIMIT_TYPE {
  static const UrlCacheLimitTypeIE = 0x00000000;
  static const UrlCacheLimitTypeIETotal = 0x00000001;
  static const UrlCacheLimitTypeAppContainer = 0x00000002;
  static const UrlCacheLimitTypeAppContainerTotal = 0x00000003;
  static const UrlCacheLimitTypeNum = 0x00000004;
}

/// {@category Enum}
class HTTP_WEB_SOCKET_OPERATION {
  static const HTTP_WEB_SOCKET_SEND_OPERATION = 0x00000000;
  static const HTTP_WEB_SOCKET_RECEIVE_OPERATION = 0x00000001;
  static const HTTP_WEB_SOCKET_CLOSE_OPERATION = 0x00000002;
  static const HTTP_WEB_SOCKET_SHUTDOWN_OPERATION = 0x00000003;
}

/// {@category Enum}
class HTTP_WEB_SOCKET_BUFFER_TYPE {
  static const HTTP_WEB_SOCKET_BINARY_MESSAGE_TYPE = 0x00000000;
  static const HTTP_WEB_SOCKET_BINARY_FRAGMENT_TYPE = 0x00000001;
  static const HTTP_WEB_SOCKET_UTF8_MESSAGE_TYPE = 0x00000002;
  static const HTTP_WEB_SOCKET_UTF8_FRAGMENT_TYPE = 0x00000003;
  static const HTTP_WEB_SOCKET_CLOSE_TYPE = 0x00000004;
  static const HTTP_WEB_SOCKET_PING_TYPE = 0x00000005;
}

/// {@category Enum}
class HTTP_WEB_SOCKET_CLOSE_STATUS {
  static const HTTP_WEB_SOCKET_SUCCESS_CLOSE_STATUS = 0x000003e8;
  static const HTTP_WEB_SOCKET_ENDPOINT_TERMINATED_CLOSE_STATUS = 0x000003e9;
  static const HTTP_WEB_SOCKET_PROTOCOL_ERROR_CLOSE_STATUS = 0x000003ea;
  static const HTTP_WEB_SOCKET_INVALID_DATA_TYPE_CLOSE_STATUS = 0x000003eb;
  static const HTTP_WEB_SOCKET_EMPTY_CLOSE_STATUS = 0x000003ed;
  static const HTTP_WEB_SOCKET_ABORTED_CLOSE_STATUS = 0x000003ee;
  static const HTTP_WEB_SOCKET_INVALID_PAYLOAD_CLOSE_STATUS = 0x000003ef;
  static const HTTP_WEB_SOCKET_POLICY_VIOLATION_CLOSE_STATUS = 0x000003f0;
  static const HTTP_WEB_SOCKET_MESSAGE_TOO_BIG_CLOSE_STATUS = 0x000003f1;
  static const HTTP_WEB_SOCKET_UNSUPPORTED_EXTENSIONS_CLOSE_STATUS = 0x000003f2;
  static const HTTP_WEB_SOCKET_SERVER_ERROR_CLOSE_STATUS = 0x000003f3;
  static const HTTP_WEB_SOCKET_SECURE_HANDSHAKE_ERROR_CLOSE_STATUS = 0x000003f7;
}

