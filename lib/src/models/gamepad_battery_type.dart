/// The type of battery.
enum GamepadBatteryType {
  /// The device is not connected.
  disconnected,

  /// The device is a wired device and does not have a battery.
  wired,

  /// The device has an alkaline battery.
  alkaline,

  /// The device has a nickel metal hydride battery.
  nickelMetalHydride,

  /// The device has an unknown battery type.
  unknown
}
