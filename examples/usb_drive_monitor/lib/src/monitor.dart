import 'dart:async';
import 'dart:ffi';
import 'dart:isolate';

import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

import 'events.dart';
import 'window.dart';

final class UsbDriveMonitor {
  final _controller = StreamController<UsbDriveEvent>.broadcast();

  ReceivePort? _receivePort;
  StreamSubscription? _receiveSub;
  Completer<void>? _exitSignal;
  HANDLE? _stopHandle;

  var _running = false;
  var _closed = false;

  /// Stream of USB drive events.
  ///
  /// This is a broadcast stream and supports multiple simultaneous listeners.
  Stream<UsbDriveEvent> get events => _controller.stream;

  /// Whether monitoring is currently active.
  bool get isRunning => _running;

  /// Whether this monitor has been permanently closed.
  bool get isClosed => _closed;

  /// Starts monitoring for USB drive events.
  Future<void> start() async {
    _ensureNotClosed();
    if (_running) throw StateError('UsbDriveMonitor already running.');

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

        case UsbDriveEvent():
          if (_running) _controller.add(msg);

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
        _receivePort!.sendPort,
        onExit: _receivePort!.sendPort,
        onError: _receivePort!.sendPort,
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
    if (!_running) throw StateError('UsbDriveMonitor not running.');

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
    if (_closed) throw StateError('UsbDriveMonitor already closed.');
    if (_running) await stop();

    await _controller.close();
    _closed = true;
  }

  void _ensureNotClosed() {
    if (_closed) throw StateError('UsbDriveMonitor is closed.');
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

final class _Failure extends _Msg {
  const _Failure(this.error);

  final Object error;
}

final class _Exited extends _Msg {
  const _Exited();
}

Future<void> _isolateMain(SendPort mainPort) async {
  final Win32Result(value: stopEvent, error: stopEventError) = CreateEvent(
    null,
    true,
    false,
    null,
  );
  if (stopEvent.isNull) {
    mainPort.send(_Failure(WindowsException(stopEventError.toHRESULT())));
    return;
  }

  final window = Win32Window((event) => mainPort.send(event))..create();
  mainPort.send(_Ready(stopEvent));

  final msg = adaptiveCalloc<MSG>();
  final handles = adaptiveCalloc<Pointer>()..value = stopEvent;

  try {
    while (true) {
      final Win32Result(:value, :error) = MsgWaitForMultipleObjects(
        1,
        handles,
        false,
        INFINITE,
        QS_ALLINPUT,
      );

      // Stop requested
      if (value == WAIT_OBJECT_0) break;

      if (value == WAIT_OBJECT_0 + 1) {
        while (PeekMessage(msg, null, 0, 0, PM_REMOVE)) {
          TranslateMessage(msg);
          DispatchMessage(msg);
        }
        continue;
      }

      mainPort.send(_Failure(WindowsException(error.toHRESULT())));
      break;
    }
  } finally {
    window.destroy();
    free(msg);
    free(handles);
    stopEvent.close();
    mainPort.send(const _Exited());
  }
}
