/// {@category Enum}
class CONSOLE_MODE {
  static const ENABLE_PROCESSED_INPUT = 0x00000001;
  static const ENABLE_LINE_INPUT = 0x00000002;
  static const ENABLE_ECHO_INPUT = 0x00000004;
  static const ENABLE_WINDOW_INPUT = 0x00000008;
  static const ENABLE_MOUSE_INPUT = 0x00000010;
  static const ENABLE_INSERT_MODE = 0x00000020;
  static const ENABLE_QUICK_EDIT_MODE = 0x00000040;
  static const ENABLE_EXTENDED_FLAGS = 0x00000080;
  static const ENABLE_AUTO_POSITION = 0x00000100;
  static const ENABLE_VIRTUAL_TERMINAL_INPUT = 0x00000200;
  static const ENABLE_PROCESSED_OUTPUT = 0x00000001;
  static const ENABLE_WRAP_AT_EOL_OUTPUT = 0x00000002;
  static const ENABLE_VIRTUAL_TERMINAL_PROCESSING = 0x00000004;
  static const DISABLE_NEWLINE_AUTO_RETURN = 0x00000008;
  static const ENABLE_LVB_GRID_WORLDWIDE = 0x00000010;
}

/// {@category Enum}
class STD_HANDLE {
  static const STD_INPUT_HANDLE = 0xfffffff6;
  static const STD_OUTPUT_HANDLE = 0xfffffff5;
  static const STD_ERROR_HANDLE = 0xfffffff4;
}
