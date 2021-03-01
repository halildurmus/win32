/// {@category Enum}
class DI_FLAGS {
  static const DI_MASK = 0x00000001;
  static const DI_IMAGE = 0x00000002;
  static const DI_NORMAL = 0x00000003;
  static const DI_COMPAT = 0x00000004;
  static const DI_DEFAULTSIZE = 0x00000008;
  static const DI_NOMIRROR = 0x00000010;
}

/// {@category Enum}
class POINTER_INPUT_TYPE {
  static const PT_POINTER = 0x00000001;
  static const PT_TOUCH = 0x00000002;
  static const PT_PEN = 0x00000003;
  static const PT_MOUSE = 0x00000004;
  static const PT_TOUCHPAD = 0x00000005;
}

/// {@category Enum}
class EDIT_CONTROL_FEATURE {
  static const EDIT_CONTROL_FEATURE_ENTERPRISE_DATA_PROTECTION_PASTE_SUPPORT = 0x00000000;
  static const EDIT_CONTROL_FEATURE_PASTE_NOTIFICATIONS = 0x00000001;
}

/// {@category Enum}
class HANDEDNESS {
  static const HANDEDNESS_LEFT = 0x00000000;
  static const HANDEDNESS_RIGHT = 0x00000001;
}

/// {@category Enum}
class MrmPlatformVersion {
  static const MrmPlatformVersion_Default = 0x00000000;
  static const MrmPlatformVersion_Windows10_0_0_0 = 0x010a0000;
  static const MrmPlatformVersion_Windows10_0_0_5 = 0x010a0005;
}

/// {@category Enum}
class MrmPackagingMode {
  static const MrmPackagingModeStandaloneFile = 0x00000000;
  static const MrmPackagingModeAutoSplit = 0x00000001;
  static const MrmPackagingModeResourcePack = 0x00000002;
}

/// {@category Enum}
class MrmPackagingOptions {
  static const MrmPackagingOptionsNone = 0x00000000;
  static const MrmPackagingOptionsOmitSchemaFromResourcePacks = 0x00000001;
  static const MrmPackagingOptionsSplitLanguageVariants = 0x00000002;
}

/// {@category Enum}
class MrmDumpType {
  static const MrmDumpType_Basic = 0x00000000;
  static const MrmDumpType_Detailed = 0x00000001;
  static const MrmDumpType_Schema = 0x00000002;
}

/// {@category Enum}
class MrmResourceIndexerMessageSeverity {
  static const MrmResourceIndexerMessageSeverityVerbose = 0x00000000;
  static const MrmResourceIndexerMessageSeverityInfo = 0x00000001;
  static const MrmResourceIndexerMessageSeverityWarning = 0x00000002;
  static const MrmResourceIndexerMessageSeverityError = 0x00000003;
}

