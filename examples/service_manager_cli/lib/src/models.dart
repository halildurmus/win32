import 'package:win32/win32.dart';

/// The result of an attempt to start a service.
enum ServiceStartResult {
  /// The attempt to start the service was denied due to insufficient
  /// permissions.
  accessDenied,

  /// The service is already running.
  alreadyRunning,

  /// The attempt to start the service failed for an unspecified reason.
  failed,

  /// The service was started successfully.
  success,

  /// The attempt to start the service timed out.
  timedOut,
}

/// The various states a service can be in.
enum ServiceStatus {
  /// The service is not running.
  stopped,

  /// The service is in the process of starting.
  startPending,

  /// The service is in the process of stopping.
  stopPending,

  /// The service is running.
  running,

  /// The service is in the process of resuming from a paused state.
  continuePending,

  /// The service is in the process of being paused.
  pausePending,

  /// The service is paused.
  paused;

  /// Converts an integer value to a corresponding [ServiceStatus] enum.
  static ServiceStatus fromValue(int value) => switch (value) {
    SERVICE_STOPPED => ServiceStatus.stopped,
    SERVICE_START_PENDING => ServiceStatus.startPending,
    SERVICE_STOP_PENDING => ServiceStatus.stopPending,
    SERVICE_RUNNING => ServiceStatus.running,
    SERVICE_CONTINUE_PENDING => ServiceStatus.continuePending,
    SERVICE_PAUSE_PENDING => ServiceStatus.pausePending,
    SERVICE_PAUSED => ServiceStatus.paused,
    _ => throw ArgumentError('Invalid value: $value'),
  };
}

/// The result of an attempt to stop a service.
enum ServiceStopResult {
  /// The attempt to stop the service was denied due to insufficient
  /// permissions.
  accessDenied,

  /// The service is already stopped.
  alreadyStopped,

  /// The attempt to stop the service failed for an unspecified reason.
  failed,

  /// The service was stopped successfully.
  success,

  /// The attempt to stop the service timed out.
  timedOut,
}

/// Represents a Windows service with its name, display name, and current
/// status.
class Service {
  const Service({
    required this.displayName,
    required this.name,
    required this.status,
  });

  /// The display name of the service.
  final String displayName;

  /// The name of the service.
  final String name;

  /// The current status of the service.
  final ServiceStatus status;

  @override
  String toString() =>
      'Service(displayName: $displayName, name: $name, status: $status)';
}
