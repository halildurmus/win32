/// {@category Enum}
class SW_DEVICE_CAPABILITIES {
  static const SWDeviceCapabilitiesNone = 0x00000000;
  static const SWDeviceCapabilitiesRemovable = 0x00000001;
  static const SWDeviceCapabilitiesSilentInstall = 0x00000002;
  static const SWDeviceCapabilitiesNoDisplayInUI = 0x00000004;
  static const SWDeviceCapabilitiesDriverRequired = 0x00000008;
}

/// {@category Enum}
class SW_DEVICE_LIFETIME {
  static const SWDeviceLifetimeHandle = 0x00000000;
  static const SWDeviceLifetimeParentPresent = 0x00000001;
  static const SWDeviceLifetimeMax = 0x00000002;
}
