/// {@category Enum}
class int_serv_wkp {
  static const IS_WKP_HOP_CNT = 0x00000004;
  static const IS_WKP_PATH_BW = 0x00000006;
  static const IS_WKP_MIN_LATENCY = 0x00000008;
  static const IS_WKP_COMPOSED_MTU = 0x0000000a;
  static const IS_WKP_TB_TSPEC = 0x0000007f;
  static const IS_WKP_Q_TSPEC = 0x00000080;
}

/// {@category Enum}
class QOS_TRAFFIC_TYPE {
  static const QOSTrafficTypeBestEffort = 0x00000000;
  static const QOSTrafficTypeBackground = 0x00000001;
  static const QOSTrafficTypeExcellentEffort = 0x00000002;
  static const QOSTrafficTypeAudioVideo = 0x00000003;
  static const QOSTrafficTypeVoice = 0x00000004;
  static const QOSTrafficTypeControl = 0x00000005;
}

/// {@category Enum}
class QOS_SET_FLOW {
  static const QOSSetTrafficType = 0x00000000;
  static const QOSSetOutgoingRate = 0x00000001;
  static const QOSSetOutgoingDSCPValue = 0x00000002;
}

/// {@category Enum}
class QOS_FLOWRATE_REASON {
  static const QOSFlowRateNotApplicable = 0x00000000;
  static const QOSFlowRateContentChange = 0x00000001;
  static const QOSFlowRateCongestion = 0x00000002;
  static const QOSFlowRateHigherContentEncoding = 0x00000003;
  static const QOSFlowRateUserCaused = 0x00000004;
}

/// {@category Enum}
class QOS_SHAPING {
  static const QOSShapeOnly = 0x00000000;
  static const QOSShapeAndMark = 0x00000001;
  static const QOSUseNonConformantMarkings = 0x00000002;
}

/// {@category Enum}
class QOS_QUERY_FLOW {
  static const QOSQueryFlowFundamentals = 0x00000000;
  static const QOSQueryPacketPriority = 0x00000001;
  static const QOSQueryOutgoingRate = 0x00000002;
}

/// {@category Enum}
class QOS_NOTIFY_FLOW {
  static const QOSNotifyCongested = 0x00000000;
  static const QOSNotifyUncongested = 0x00000001;
  static const QOSNotifyAvailable = 0x00000002;
}
