/// {@category Enum}
class AR_STATE {
  static const AR_ENABLED = 0x00000000;
  static const AR_DISABLED = 0x00000001;
  static const AR_SUPPRESSED = 0x00000002;
  static const AR_REMOTESESSION = 0x00000004;
  static const AR_MULTIMON = 0x00000008;
  static const AR_NOSENSOR = 0x00000010;
  static const AR_NOT_SUPPORTED = 0x00000020;
  static const AR_DOCKED = 0x00000040;
  static const AR_LAPTOP = 0x00000080;
}

/// {@category Enum}
class BACKLIGHT_OPTIMIZATION_LEVEL {
  static const BacklightOptimizationDisable = 0x00000000;
  static const BacklightOptimizationDesktop = 0x00000001;
  static const BacklightOptimizationDynamic = 0x00000002;
  static const BacklightOptimizationDimmed = 0x00000003;
  static const BacklightOptimizationEDR = 0x00000004;
}

/// {@category Enum}
class BRIGHTNESS_INTERFACE_VERSION {
  static const BRIGHTNESS_INTERFACE_VERSION_1 = 0x00000001;
  static const BRIGHTNESS_INTERFACE_VERSION_2 = 0x00000002;
  static const BRIGHTNESS_INTERFACE_VERSION_3 = 0x00000003;
}

/// {@category Enum}
class BlackScreenDiagnosticsCalloutParam {
  static const BlackScreenDiagnosticsData = 0x00000001;
  static const BlackScreenDisplayRecovery = 0x00000002;
}

/// {@category Enum}
class COLORSPACE_TRANSFORM_DATA_TYPE {
  static const COLORSPACE_TRANSFORM_DATA_TYPE_FIXED_POINT = 0x00000000;
  static const COLORSPACE_TRANSFORM_DATA_TYPE_FLOAT = 0x00000001;
}

/// {@category Enum}
class COLORSPACE_TRANSFORM_STAGE_CONTROL {
  static const ColorSpaceTransformStageControl_No_Change = 0x00000000;
  static const ColorSpaceTransformStageControl_Enable = 0x00000001;
  static const ColorSpaceTransformStageControl_Bypass = 0x00000002;
}

/// {@category Enum}
class COLORSPACE_TRANSFORM_TARGET_CAPS_VERSION {
  static const COLORSPACE_TRANSFORM_VERSION_DEFAULT = 0x00000000;
  static const COLORSPACE_TRANSFORM_VERSION_1 = 0x00000001;
  static const COLORSPACE_TRANSFORM_VERSION_NOT_SUPPORTED = 0x00000000;
}

/// {@category Enum}
class COLORSPACE_TRANSFORM_TYPE {
  static const COLORSPACE_TRANSFORM_TYPE_UNINITIALIZED = 0x00000000;
  static const COLORSPACE_TRANSFORM_TYPE_DEFAULT = 0x00000001;
  static const COLORSPACE_TRANSFORM_TYPE_RGB256x3x16 = 0x00000002;
  static const COLORSPACE_TRANSFORM_TYPE_DXGI_1 = 0x00000003;
  static const COLORSPACE_TRANSFORM_TYPE_MATRIX_3x4 = 0x00000004;
  static const COLORSPACE_TRANSFORM_TYPE_MATRIX_V2 = 0x00000005;
}

/// {@category Enum}
class DSI_CONTROL_TRANSMISSION_MODE {
  static const DCT_DEFAULT = 0x00000000;
  static const DCT_FORCE_LOW_POWER = 0x00000001;
  static const DCT_FORCE_HIGH_PERFORMANCE = 0x00000002;
}

/// {@category Enum}
class MC_COLOR_TEMPERATURE {
  static const MC_COLOR_TEMPERATURE_UNKNOWN = 0x00000000;
  static const MC_COLOR_TEMPERATURE_4000K = 0x00000001;
  static const MC_COLOR_TEMPERATURE_5000K = 0x00000002;
  static const MC_COLOR_TEMPERATURE_6500K = 0x00000003;
  static const MC_COLOR_TEMPERATURE_7500K = 0x00000004;
  static const MC_COLOR_TEMPERATURE_8200K = 0x00000005;
  static const MC_COLOR_TEMPERATURE_9300K = 0x00000006;
  static const MC_COLOR_TEMPERATURE_10000K = 0x00000007;
  static const MC_COLOR_TEMPERATURE_11500K = 0x00000008;
}

/// {@category Enum}
class MC_DISPLAY_TECHNOLOGY_TYPE {
  static const MC_SHADOW_MASK_CATHODE_RAY_TUBE = 0x00000000;
  static const MC_APERTURE_GRILL_CATHODE_RAY_TUBE = 0x00000001;
  static const MC_THIN_FILM_TRANSISTOR = 0x00000002;
  static const MC_LIQUID_CRYSTAL_ON_SILICON = 0x00000003;
  static const MC_PLASMA = 0x00000004;
  static const MC_ORGANIC_LIGHT_EMITTING_DIODE = 0x00000005;
  static const MC_ELECTROLUMINESCENT = 0x00000006;
  static const MC_MICROELECTROMECHANICAL = 0x00000007;
  static const MC_FIELD_EMISSION_DEVICE = 0x00000008;
}

/// {@category Enum}
class MC_DRIVE_TYPE {
  static const MC_RED_DRIVE = 0x00000000;
  static const MC_GREEN_DRIVE = 0x00000001;
  static const MC_BLUE_DRIVE = 0x00000002;
}

/// {@category Enum}
class MC_GAIN_TYPE {
  static const MC_RED_GAIN = 0x00000000;
  static const MC_GREEN_GAIN = 0x00000001;
  static const MC_BLUE_GAIN = 0x00000002;
}

/// {@category Enum}
class MC_POSITION_TYPE {
  static const MC_HORIZONTAL_POSITION = 0x00000000;
  static const MC_VERTICAL_POSITION = 0x00000001;
}

/// {@category Enum}
class MC_SIZE_TYPE {
  static const MC_WIDTH = 0x00000000;
  static const MC_HEIGHT = 0x00000001;
}

/// {@category Enum}
class MC_VCP_CODE_TYPE {
  static const MC_MOMENTARY = 0x00000000;
  static const MC_SET_PARAMETER = 0x00000001;
}

/// {@category Enum}
class ORIENTATION_PREFERENCE {
  static const ORIENTATION_PREFERENCE_NONE = 0x00000000;
  static const ORIENTATION_PREFERENCE_LANDSCAPE = 0x00000001;
  static const ORIENTATION_PREFERENCE_PORTRAIT = 0x00000002;
  static const ORIENTATION_PREFERENCE_LANDSCAPE_FLIPPED = 0x00000004;
  static const ORIENTATION_PREFERENCE_PORTRAIT_FLIPPED = 0x00000008;
}

/// {@category Enum}
class OUTPUT_COLOR_ENCODING {
  static const OUTPUT_COLOR_ENCODING_RGB = 0x00000000;
  static const OUTPUT_COLOR_ENCODING_YCBCR444 = 0x00000001;
  static const OUTPUT_COLOR_ENCODING_YCBCR422 = 0x00000002;
  static const OUTPUT_COLOR_ENCODING_YCBCR420 = 0x00000003;
  static const OUTPUT_COLOR_ENCODING_INTENSITY = 0x00000004;
  static const OUTPUT_COLOR_ENCODING_FORCE_UINT32 = 0xffffffff;
}

/// {@category Enum}
class OUTPUT_WIRE_COLOR_SPACE_TYPE {
  static const OUTPUT_WIRE_COLOR_SPACE_G22_P709 = 0x00000000;
  static const OUTPUT_WIRE_COLOR_SPACE_RESERVED = 0x00000004;
  static const OUTPUT_WIRE_COLOR_SPACE_G2084_P2020 = 0x0000000c;
  static const OUTPUT_WIRE_COLOR_SPACE_G22_P709_WCG = 0x0000001e;
  static const OUTPUT_WIRE_COLOR_SPACE_G22_P2020 = 0x0000001f;
  static const OUTPUT_WIRE_COLOR_SPACE_G2084_P2020_HDR10PLUS = 0x00000020;
  static const OUTPUT_WIRE_COLOR_SPACE_G2084_P2020_DVLL = 0x00000021;
}

/// {@category Enum}
class VIDEO_BANK_TYPE {
  static const VideoNotBanked = 0x00000000;
  static const VideoBanked1RW = 0x00000001;
  static const VideoBanked1R1W = 0x00000002;
  static const VideoBanked2RW = 0x00000003;
  static const NumVideoBankTypes = 0x00000004;
}

/// {@category Enum}
class VIDEO_POWER_STATE {
  static const VideoPowerUnspecified = 0x00000000;
  static const VideoPowerOn = 0x00000001;
  static const VideoPowerStandBy = 0x00000002;
  static const VideoPowerSuspend = 0x00000003;
  static const VideoPowerOff = 0x00000004;
  static const VideoPowerHibernate = 0x00000005;
  static const VideoPowerShutdown = 0x00000006;
  static const VideoPowerMaximum = 0x00000007;
}

/// {@category Enum}
class VIDEO_WIN32K_CALLBACKS_PARAMS_TYPE {
  static const VideoPowerNotifyCallout = 0x00000001;
  static const VideoEnumChildPdoNotifyCallout = 0x00000003;
  static const VideoFindAdapterCallout = 0x00000004;
  static const VideoPnpNotifyCallout = 0x00000007;
  static const VideoDxgkDisplaySwitchCallout = 0x00000008;
  static const VideoDxgkFindAdapterTdrCallout = 0x0000000a;
  static const VideoDxgkHardwareProtectionTeardown = 0x0000000b;
  static const VideoRepaintDesktop = 0x0000000c;
  static const VideoUpdateCursor = 0x0000000d;
  static const VideoDisableMultiPlaneOverlay = 0x0000000e;
  static const VideoDesktopDuplicationChange = 0x0000000f;
  static const VideoBlackScreenDiagnostics = 0x00000010;
}
