/// {@category Enum}
class DNS_CONFIG_TYPE {
  static const DnsConfigPrimaryDomainName_W = 0x00000000;
  static const DnsConfigPrimaryDomainName_A = 0x00000001;
  static const DnsConfigPrimaryDomainName_UTF8 = 0x00000002;
  static const DnsConfigAdapterDomainName_W = 0x00000003;
  static const DnsConfigAdapterDomainName_A = 0x00000004;
  static const DnsConfigAdapterDomainName_UTF8 = 0x00000005;
  static const DnsConfigDnsServerList = 0x00000006;
  static const DnsConfigSearchList = 0x00000007;
  static const DnsConfigAdapterInfo = 0x00000008;
  static const DnsConfigPrimaryHostNameRegistrationEnabled = 0x00000009;
  static const DnsConfigAdapterHostNameRegistrationEnabled = 0x0000000a;
  static const DnsConfigAddressRegistrationMaxCount = 0x0000000b;
  static const DnsConfigHostName_W = 0x0000000c;
  static const DnsConfigHostName_A = 0x0000000d;
  static const DnsConfigHostName_UTF8 = 0x0000000e;
  static const DnsConfigFullHostName_W = 0x0000000f;
  static const DnsConfigFullHostName_A = 0x00000010;
  static const DnsConfigFullHostName_UTF8 = 0x00000011;
  static const DnsConfigNameServer = 0x00000012;
}

/// {@category Enum}
class DNS_SECTION {
  static const DnsSectionQuestion = 0x00000000;
  static const DnsSectionAnswer = 0x00000001;
  static const DnsSectionAuthority = 0x00000002;
  static const DnsSectionAddtional = 0x00000003;
}

/// {@category Enum}
class DNS_PROXY_INFORMATION_TYPE {
  static const DNS_PROXY_INFORMATION_DIRECT = 0x00000000;
  static const DNS_PROXY_INFORMATION_DEFAULT_SETTINGS = 0x00000001;
  static const DNS_PROXY_INFORMATION_PROXY_NAME = 0x00000002;
  static const DNS_PROXY_INFORMATION_DOES_NOT_EXIST = 0x00000003;
}

/// {@category Enum}
class DNS_CHARSET {
  static const DnsCharSetUnknown = 0x00000000;
  static const DnsCharSetUnicode = 0x00000001;
  static const DnsCharSetUtf8 = 0x00000002;
  static const DnsCharSetAnsi = 0x00000003;
}

/// {@category Enum}
class DNS_FREE_TYPE {
  static const DnsFreeFlat = 0x00000000;
  static const DnsFreeRecordList = 0x00000001;
  static const DnsFreeParsedMessageFields = 0x00000002;
}

/// {@category Enum}
class DNS_NAME_FORMAT {
  static const DnsNameDomain = 0x00000000;
  static const DnsNameDomainLabel = 0x00000001;
  static const DnsNameHostnameFull = 0x00000002;
  static const DnsNameHostnameLabel = 0x00000003;
  static const DnsNameWildcard = 0x00000004;
  static const DnsNameSrvRecord = 0x00000005;
  static const DnsNameValidateTld = 0x00000006;
}

/// {@category Enum}
class DNS_CONNECTION_PROXY_TYPE {
  static const DNS_CONNECTION_PROXY_TYPE_NULL = 0x00000000;
  static const DNS_CONNECTION_PROXY_TYPE_HTTP = 0x00000001;
  static const DNS_CONNECTION_PROXY_TYPE_WAP = 0x00000002;
  static const DNS_CONNECTION_PROXY_TYPE_SOCKS4 = 0x00000004;
  static const DNS_CONNECTION_PROXY_TYPE_SOCKS5 = 0x00000005;
}

/// {@category Enum}
class DNS_CONNECTION_PROXY_INFO_SWITCH {
  static const DNS_CONNECTION_PROXY_INFO_SWITCH_CONFIG = 0x00000000;
  static const DNS_CONNECTION_PROXY_INFO_SWITCH_SCRIPT = 0x00000001;
  static const DNS_CONNECTION_PROXY_INFO_SWITCH_WPAD = 0x00000002;
}

/// {@category Enum}
class DNS_CONNECTION_POLICY_TAG {
  static const TAG_DNS_CONNECTION_POLICY_TAG_DEFAULT = 0x00000000;
  static const TAG_DNS_CONNECTION_POLICY_TAG_CONNECTION_MANAGER = 0x00000001;
  static const TAG_DNS_CONNECTION_POLICY_TAG_WWWPT = 0x00000002;
}

