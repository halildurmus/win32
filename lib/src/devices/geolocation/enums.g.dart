/// {@category Enum}
class GNSS_AGNSS_REQUEST_TYPE {
  static const GNSS_AGNSS_TimeInjection = 0x00000001;
  static const GNSS_AGNSS_PositionInjection = 0x00000002;
  static const GNSS_AGNSS_BlobInjection = 0x00000003;
}

/// {@category Enum}
class GNSS_DRIVERCOMMAND_TYPE {
  static const GNSS_SetLocationServiceEnabled = 0x00000001;
  static const GNSS_SetLocationNIRequestAllowed = 0x00000002;
  static const GNSS_ForceSatelliteSystem = 0x00000003;
  static const GNSS_ForceOperationMode = 0x00000004;
  static const GNSS_ResetEngine = 0x00000009;
  static const GNSS_ClearAgnssData = 0x0000000a;
  static const GNSS_SetSuplVersion = 0x0000000c;
  static const GNSS_SetNMEALogging = 0x0000000d;
  static const GNSS_SetUplServerAccessInterval = 0x0000000e;
  static const GNSS_SetNiTimeoutInterval = 0x0000000f;
  static const GNSS_ResetGeofencesTracking = 0x00000010;
  static const GNSS_SetSuplVersion2 = 0x00000011;
  static const GNSS_CustomCommand = 0x00000100;
}

/// {@category Enum}
class GNSS_DRIVER_REQUEST {
  static const SUPL_CONFIG_DATA = 0x00000001;
}

/// {@category Enum}
class GNSS_EVENT_TYPE {
  static const GNSS_Event_FixAvailable = 0x00000001;
  static const GNSS_Event_RequireAgnss = 0x00000002;
  static const GNSS_Event_Error = 0x00000003;
  static const GNSS_Event_NiRequest = 0x0000000c;
  static const GNSS_Event_NmeaData = 0x0000000d;
  static const GNSS_Event_GeofenceAlertData = 0x0000000e;
  static const GNSS_Event_GeofencesTrackingStatus = 0x0000000f;
  static const GNSS_Event_DriverRequest = 0x00000010;
  static const GNSS_Event_BreadcrumbAlertEvent = 0x00000011;
  static const GNSS_Event_FixAvailable_2 = 0x00000012;
  static const GNSS_Event_Custom = 0x00008000;
}

/// {@category Enum}
class GNSS_FIXSESSIONTYPE {
  static const GNSS_FixSession_SingleShot = 0x00000001;
  static const GNSS_FixSession_DistanceTracking = 0x00000002;
  static const GNSS_FixSession_ContinuousTracking = 0x00000003;
  static const GNSS_FixSession_LKG = 0x00000004;
}

/// {@category Enum}
class GNSS_GEOFENCE_STATE {
  static const GNSS_GeofenceState_Unknown = 0x00000000;
  static const GNSS_GeofenceState_Entered = 0x00000001;
  static const GNSS_GeofenceState_Exited = 0x00000002;
}

/// {@category Enum}
class GNSS_GEOREGIONTYPE {
  static const GNSS_GeoRegion_Circle = 0x00000001;
}

/// {@category Enum}
class GNSS_NI_NOTIFICATION_TYPE {
  static const GNSS_NI_NoNotifyNoVerify = 0x00000001;
  static const GNSS_NI_NotifyOnly = 0x00000002;
  static const GNSS_NI_NotifyVerifyDefaultAllow = 0x00000003;
  static const GNSS_NI_NotifyVerifyDefaultNotAllow = 0x00000004;
  static const GNSS_NI_PrivacyOverride = 0x00000005;
}

/// {@category Enum}
class GNSS_NI_PLANE_TYPE {
  static const GNSS_NI_SUPL = 0x00000001;
  static const GNSS_NI_CP = 0x00000002;
  static const GNSS_NI_V2UPL = 0x00000003;
}

/// {@category Enum}
class GNSS_NI_REQUEST_TYPE {
  static const GNSS_NI_Request_SingleShot = 0x00000001;
  static const GNSS_NI_Request_AreaTrigger = 0x00000002;
}

/// {@category Enum}
class GNSS_NI_USER_RESPONSE {
  static const GNSS_Ni_UserResponseAccept = 0x00000001;
  static const GNSS_Ni_UserResponseDeny = 0x00000002;
  static const GNSS_Ni_UserResponseTimeout = 0x00000003;
}

/// {@category Enum}
class GNSS_SUPL_CERT_ACTION {
  static const GNSS_Supl_Cert_Inject = 0x00000001;
  static const GNSS_Supl_Cert_Delete = 0x00000002;
  static const GNSS_Supl_Cert_Purge = 0x00000003;
}

/// {@category Enum}
class LOCATION_REPORT_STATUS {
  static const REPORT_NOT_SUPPORTED = 0x00000000;
  static const REPORT_ERROR = 0x00000001;
  static const REPORT_ACCESS_DENIED = 0x00000002;
  static const REPORT_INITIALIZING = 0x00000003;
  static const REPORT_RUNNING = 0x00000004;
}
