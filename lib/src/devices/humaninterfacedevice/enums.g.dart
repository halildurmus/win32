/// {@category Enum}
class GPIOBUTTONS_BUTTON_TYPE {
  static const GPIO_BUTTON_POWER = 0x00000000;
  static const GPIO_BUTTON_WINDOWS = 0x00000001;
  static const GPIO_BUTTON_VOLUME_UP = 0x00000002;
  static const GPIO_BUTTON_VOLUME_DOWN = 0x00000003;
  static const GPIO_BUTTON_ROTATION_LOCK = 0x00000004;
  static const GPIO_BUTTON_BACK = 0x00000005;
  static const GPIO_BUTTON_SEARCH = 0x00000006;
  static const GPIO_BUTTON_CAMERA_FOCUS = 0x00000007;
  static const GPIO_BUTTON_CAMERA_SHUTTER = 0x00000008;
  static const GPIO_BUTTON_RINGER_TOGGLE = 0x00000009;
  static const GPIO_BUTTON_HEADSET = 0x0000000a;
  static const GPIO_BUTTON_HWKB_DEPLOY = 0x0000000b;
  static const GPIO_BUTTON_CAMERA_LENS = 0x0000000c;
  static const GPIO_BUTTON_OEM_CUSTOM = 0x0000000d;
  static const GPIO_BUTTON_OEM_CUSTOM2 = 0x0000000e;
  static const GPIO_BUTTON_OEM_CUSTOM3 = 0x0000000f;
  static const GPIO_BUTTON_COUNT_MIN = 0x00000005;
  static const GPIO_BUTTON_COUNT = 0x00000010;
}

/// {@category Enum}
class HIDP_KEYBOARD_DIRECTION {
  static const HidP_Keyboard_Break = 0x00000000;
  static const HidP_Keyboard_Make = 0x00000001;
}

/// {@category Enum}
class HIDP_REPORT_TYPE {
  static const HidP_Input = 0x00000000;
  static const HidP_Output = 0x00000001;
  static const HidP_Feature = 0x00000002;
}
