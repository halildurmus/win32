/// {@category Enum}
class GPO_LINK {
  static const GPLinkUnknown = 0x00000000;
  static const GPLinkMachine = 0x00000001;
  static const GPLinkSite = 0x00000002;
  static const GPLinkDomain = 0x00000003;
  static const GPLinkOrganizationalUnit = 0x00000004;
}

/// {@category Enum}
class SETTINGSTATUS {
  static const RSOPUnspecified = 0x00000000;
  static const RSOPApplied = 0x00000001;
  static const RSOPIgnored = 0x00000002;
  static const RSOPFailed = 0x00000003;
  static const RSOPSubsettingFailed = 0x00000004;
}

/// {@category Enum}
class INSTALLSPECTYPE {
  static const APPNAME = 0x00000001;
  static const FILEEXT = 0x00000002;
  static const PROGID = 0x00000003;
  static const COMCLASS = 0x00000004;
}

/// {@category Enum}
class APPSTATE {
  static const ABSENT = 0x00000000;
  static const ASSIGNED = 0x00000001;
  static const PUBLISHED = 0x00000002;
}

/// {@category Enum}
class GROUP_POLICY_OBJECT_TYPE {
  static const GPOTypeLocal = 0x00000000;
  static const GPOTypeRemote = 0x00000001;
  static const GPOTypeDS = 0x00000002;
  static const GPOTypeLocalUser = 0x00000003;
  static const GPOTypeLocalGroup = 0x00000004;
}

/// {@category Enum}
class GROUP_POLICY_HINT_TYPE {
  static const GPHintUnknown = 0x00000000;
  static const GPHintMachine = 0x00000001;
  static const GPHintSite = 0x00000002;
  static const GPHintDomain = 0x00000003;
  static const GPHintOrganizationalUnit = 0x00000004;
}
