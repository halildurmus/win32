/// {@category Enum}
class DPI_AWARENESS {
  static const DPI_AWARENESS_INVALID = 0xffffffff;
  static const DPI_AWARENESS_UNAWARE = 0x00000000;
  static const DPI_AWARENESS_SYSTEM_AWARE = 0x00000001;
  static const DPI_AWARENESS_PER_MONITOR_AWARE = 0x00000002;
}

/// {@category Enum}
class DPI_HOSTING_BEHAVIOR {
  static const DPI_HOSTING_BEHAVIOR_INVALID = 0xffffffff;
  static const DPI_HOSTING_BEHAVIOR_DEFAULT = 0x00000000;
  static const DPI_HOSTING_BEHAVIOR_MIXED = 0x00000001;
}

/// {@category Enum}
class DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS {
  static const DCDC_DEFAULT = 0x00000000;
  static const DCDC_DISABLE_FONT_UPDATE = 0x00000001;
  static const DCDC_DISABLE_RELAYOUT = 0x00000002;
}

/// {@category Enum}
class DIALOG_DPI_CHANGE_BEHAVIORS {
  static const DDC_DEFAULT = 0x00000000;
  static const DDC_DISABLE_ALL = 0x00000001;
  static const DDC_DISABLE_RESIZE = 0x00000002;
  static const DDC_DISABLE_CONTROL_RELAYOUT = 0x00000004;
}

/// {@category Enum}
class PROCESS_DPI_AWARENESS {
  static const PROCESS_DPI_UNAWARE = 0x00000000;
  static const PROCESS_SYSTEM_DPI_AWARE = 0x00000001;
  static const PROCESS_PER_MONITOR_DPI_AWARE = 0x00000002;
}

/// {@category Enum}
class MONITOR_DPI_TYPE {
  static const MDT_EFFECTIVE_DPI = 0x00000000;
  static const MDT_ANGULAR_DPI = 0x00000001;
  static const MDT_RAW_DPI = 0x00000002;
  static const MDT_DEFAULT = 0x00000000;
}

