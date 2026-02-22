import 'dart:async';
import 'dart:ffi';
import 'dart:isolate';

import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

import 'key.dart';

/// Event emitted when a registry key change is detected.
///
/// Instances contain no payload because the Windows API does not report which
/// specific value changed — only that *something* changed.
///
/// Consumers must re-query the registry to determine what changed.
final class RegistryChangeEvent {
  const RegistryChangeEvent();
}

/// Watches a registry key and produces a stream of change notifications.
///
/// This class provides an asynchronous, isolate-backed monitor for Windows
/// Registry keys. It wraps the native [RegNotifyChangeKeyValue] API and exposes
/// notifications as a Dart broadcast stream.
///
/// The monitor runs its blocking wait loop inside a dedicated isolate so that
/// registry change detection never blocks the main isolate or event loop.
///
/// Native failures are surfaced as stream errors. If an unrecoverable native
/// error occurs, the monitor stops automatically.
///
/// Consumers should listen for errors:
///
/// ```dart
/// monitor.events.listen(
///   (_) {},
///   onError: (e) => print('RegistryChangeMonitor error: $e'),
/// );
/// ```
///
/// You **must** call [close] when finished. This:
///
/// - Stops monitoring if active
/// - Releases native handles
/// - Closes the event stream
///
/// Failing to close will leak native resources.
final class RegistryChangeMonitor {
  /// Creates a registry change monitor for [key].
  ///
  /// If [includeSubkeys] is `true`, changes in descendant keys will also trigger
  /// events.
  RegistryChangeMonitor(this.key, {this.includeSubkeys = false});

  /// Registry key being monitored.
  final BaseRegistryKey key;

  /// Whether changes in subkeys should trigger events.
  final bool includeSubkeys;

  final _controller = StreamController<RegistryChangeEvent>.broadcast();

  ReceivePort? _receivePort;
  StreamSubscription? _receiveSub;
  Completer<void>? _exitSignal;
  HANDLE? _stopHandle;

  var _running = false;
  var _closed = false;

  /// Stream of registry change notifications.
  ///
  /// This is a broadcast stream and supports multiple simultaneous listeners.
  Stream<RegistryChangeEvent> get events => _controller.stream;

  /// Whether monitoring is currently active.
  bool get isRunning => _running;

  /// Whether this monitor has been permanently closed.
  bool get isClosed => _closed;

  /// Starts monitoring the registry key.
  ///
  /// Spawns a worker isolate and registers a native change notification.
  ///
  /// This method completes only after the underlying OS notification
  /// registration has succeeded.
  ///
  /// Throws a [WindowsException] if the native API calls fails.
  Future<void> start() async {
    _ensureNotClosed();
    if (_running) throw StateError('RegistryChangeMonitor already running.');

    final receivePort = ReceivePort();
    _receivePort = receivePort;
    final ready = Completer<void>();
    final exit = Completer<void>();
    _exitSignal = exit;

    _receiveSub = receivePort.listen((msg) {
      switch (msg) {
        case _Ready(:final stopHandle):
          _stopHandle = stopHandle;
          ready.complete();

        case _Changed():
          if (_running) _controller.add(const RegistryChangeEvent());

        case _Failure(:final error):
          if (!ready.isCompleted) ready.completeError(error);
          _controller.addError(error);
          if (!exit.isCompleted) exit.complete();

        case _Exited():
        case null:
          if (!exit.isCompleted) exit.complete();

        case [final err, final _]:
          _controller.addError(err);
          if (!exit.isCompleted) exit.complete();
      }
    });

    try {
      await Isolate.spawn(
        _isolateMain,
        _StartArgs(
          receivePort.sendPort,
          key.hkey,
          includeSubkeys: includeSubkeys,
        ),
        onExit: receivePort.sendPort,
        onError: receivePort.sendPort,
      );

      await ready.future;
      _running = true;
    } catch (_) {
      await _cleanup();
      rethrow;
    }
  }

  /// Stops monitoring.
  ///
  /// Signals the worker isolate and waits for it to terminate.
  Future<void> stop() async {
    _ensureNotClosed();
    if (!_running) throw StateError('RegistryChangeMonitor not running.');

    if (_stopHandle case final handle? when !handle.isNull) {
      SetEvent(handle);
    }

    if (_exitSignal case final exit? when !exit.isCompleted) {
      await exit.future.timeout(const Duration(seconds: 2));
    }

    await _cleanup();
    _running = false;
  }

  /// Permanently disposes this monitor.
  ///
  /// After calling this method:
  /// - The stream is closed
  /// - Native resources are released
  /// - The instance becomes unusable
  Future<void> close() async {
    if (_closed) throw StateError('RegistryChangeMonitor already closed.');
    if (_running) await stop();

    await _controller.close();
    _closed = true;
  }

  void _ensureNotClosed() {
    if (_closed) throw StateError('RegistryChangeMonitor is closed.');
  }

  Future<void> _cleanup() async {
    await _receiveSub?.cancel();
    _receivePort?.close();
    _receiveSub = null;
    _receivePort = null;
    _exitSignal = null;
    _stopHandle = null;
  }
}

sealed class _Msg {
  const _Msg();
}

final class _Ready extends _Msg {
  const _Ready(this.stopHandle);

  final HANDLE stopHandle;
}

final class _Changed extends _Msg {
  const _Changed();
}

final class _Failure extends _Msg {
  const _Failure(this.error);

  final Object error;
}

final class _Exited extends _Msg {
  const _Exited();
}

final class _StartArgs {
  const _StartArgs(this.mainPort, this.hkey, {required this.includeSubkeys});

  final SendPort mainPort;
  final HKEY hkey;
  final bool includeSubkeys;
}

Future<void> _isolateMain(_StartArgs args) async {
  final _StartArgs(:mainPort, :hkey, :includeSubkeys) = args;

  final Win32Result(value: changeEvent, error: changeEventError) = CreateEvent(
    null,
    true,
    false,
    null,
  );
  if (changeEvent.isNull) {
    mainPort.send(_Failure(WindowsException(changeEventError.toHRESULT())));
    return;
  }

  final Win32Result(value: stopEvent, error: stopEventError) = CreateEvent(
    null,
    true,
    false,
    null,
  );
  if (stopEvent.isNull) {
    changeEvent.close();
    mainPort.send(_Failure(WindowsException(stopEventError.toHRESULT())));
    return;
  }

  final handles = adaptiveCalloc<Pointer>(2)
    ..[0] = changeEvent
    ..[1] = stopEvent;

  var sentReady = false;

  try {
    while (true) {
      final result = RegNotifyChangeKeyValue(
        hkey,
        includeSubkeys,
        REG_NOTIFY_CHANGE_NAME |
            REG_NOTIFY_CHANGE_ATTRIBUTES |
            REG_NOTIFY_CHANGE_LAST_SET |
            REG_NOTIFY_CHANGE_SECURITY,
        changeEvent,
        true,
      );
      if (result != ERROR_SUCCESS) {
        mainPort.send(_Failure(WindowsException(result.toHRESULT())));
        return;
      }

      if (!sentReady) {
        mainPort.send(_Ready(stopEvent));
        sentReady = true;
      }

      final Win32Result(:value, :error) = WaitForMultipleObjects(
        2,
        handles,
        false,
        INFINITE,
      );

      if (value == WAIT_OBJECT_0) {
        mainPort.send(const _Changed());
        ResetEvent(changeEvent);
        continue;
      }

      // Stop requested
      if (value == WAIT_OBJECT_0 + 1) break;

      mainPort.send(_Failure(WindowsException(error.toHRESULT())));
      return;
    }
  } finally {
    free(handles);
    changeEvent.close();
    stopEvent.close();
    mainPort.send(const _Exited());
  }
}
