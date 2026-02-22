sealed class UsbDriveEvent {
  const UsbDriveEvent({required this.timestamp});
  final DateTime timestamp;
}

final class UsbDriveInserted extends UsbDriveEvent {
  const UsbDriveInserted({required super.timestamp, required this.driveLetter});

  final String driveLetter;
}

final class UsbDriveRemoved extends UsbDriveEvent {
  const UsbDriveRemoved({required super.timestamp, required this.driveLetter});

  final String driveLetter;
}
