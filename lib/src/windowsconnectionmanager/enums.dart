/// {@category Enum}
class WCM_CONNECTION_COST {
  static const WCM_CONNECTION_COST_UNKNOWN = 0x00000000;
  static const WCM_CONNECTION_COST_UNRESTRICTED = 0x00000001;
  static const WCM_CONNECTION_COST_FIXED = 0x00000002;
  static const WCM_CONNECTION_COST_VARIABLE = 0x00000004;
  static const WCM_CONNECTION_COST_OVERDATALIMIT = 0x00010000;
  static const WCM_CONNECTION_COST_CONGESTED = 0x00020000;
  static const WCM_CONNECTION_COST_ROAMING = 0x00040000;
  static const WCM_CONNECTION_COST_APPROACHINGDATALIMIT = 0x00080000;
}

/// {@category Enum}
class WCM_CONNECTION_COST_SOURCE {
  static const WCM_CONNECTION_COST_SOURCE_DEFAULT = 0x00000000;
  static const WCM_CONNECTION_COST_SOURCE_GP = 0x00000001;
  static const WCM_CONNECTION_COST_SOURCE_USER = 0x00000002;
  static const WCM_CONNECTION_COST_SOURCE_OPERATOR = 0x00000003;
}

/// {@category Enum}
class WCM_MEDIA_TYPE {
  static const wcm_media_unknown = 0x00000000;
  static const wcm_media_ethernet = 0x00000001;
  static const wcm_media_wlan = 0x00000002;
  static const wcm_media_mbn = 0x00000003;
  static const wcm_media_invalid = 0x00000004;
  static const wcm_media_max = 0x00000005;
}

/// {@category Enum}
class WCM_PROPERTY {
  static const wcm_global_property_domain_policy = 0x00000000;
  static const wcm_global_property_minimize_policy = 0x00000001;
  static const wcm_global_property_roaming_policy = 0x00000002;
  static const wcm_global_property_powermanagement_policy = 0x00000003;
  static const wcm_intf_property_connection_cost = 0x00000004;
  static const wcm_intf_property_dataplan_status = 0x00000005;
  static const wcm_intf_property_hotspot_profile = 0x00000006;
}

