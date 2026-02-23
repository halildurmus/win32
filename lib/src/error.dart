/// Error occurring when an operation is attempted on a device that is not
/// connected.
class DeviceNotConnectedError extends StateError {
  DeviceNotConnectedError() : super('Device is not connected.');
}
