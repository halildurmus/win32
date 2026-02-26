import 'dart:async';
import 'dart:ffi';
import 'dart:isolate';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

import 'clipboard.dart';
import 'data.dart';
import 'format.dart';

/// Event emitted when a change in the clipboard is detected.
///
/// Instances contain no payload because the Windows API does not report which
/// specific value changed — only that *something* changed.
///
/// Consumers must re-query the clipboard to determine what changed.
final class ClipboardChangeEvent {
  const ClipboardChangeEvent();
}

/// Watches the clipboard and produces a stream of change notifications.
///
/// This class provides an asynchronous, isolate-backed monitor for Windows
/// clipboard changes. It wraps the native [AddClipboardFormatListener] API and
/// exposes notifications as a Dart broadcast stream.
///
/// The monitor runs its blocking wait loop inside a dedicated isolate so that
/// clipboard change detection never blocks the main isolate or event loop.
///
/// Native failures are surfaced as stream errors. If an unrecoverable native
/// error occurs, the monitor stops automatically.
///
/// Consumers should listen for errors:
///
/// ```dart
/// monitor.events.listen(
///   (_) {},
///   onError: (e) => print('ClipboardChangeMonitor error: $e'),
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
final class ClipboardChangeMonitor {
  final _controller = StreamController<ClipboardChangeEvent>.broadcast();

  ReceivePort? _receivePort;
  StreamSubscription? _receiveSub;
  Completer<void>? _exitSignal;
  HANDLE? _stopHandle;

  var _running = false;
  var _closed = false;

  /// Stream of clipboard change events.
  ///
  /// This is a broadcast stream and supports multiple simultaneous listeners.
  Stream<ClipboardChangeEvent> get events => _controller.stream;

  /// Emits a [ClipboardData] object whenever the data with the specified
  /// [format] on the clipboard changes.
  Stream<ClipboardData> onDataChanged(ClipboardFormat format) =>
      events.transform(
        StreamTransformer.fromHandlers(
          handleData: (_, sink) {
            if (Clipboard.getData(format) case final data?) sink.add(data);
          },
        ),
      );

  /// Emits a file list whenever the file list on the clipboard changes.
  Stream<List<String>> get onFileListChanged => events.transform(
    StreamTransformer.fromHandlers(
      handleData: (_, sink) {
        if (Clipboard.getFileList() case final fileList
            when fileList.isNotEmpty) {
          sink.add(fileList);
        }
      },
    ),
  );

  /// Emits a string whenever the text on the clipboard changes.
  Stream<String> get onTextChanged => events.transform(
    StreamTransformer.fromHandlers(
      handleData: (_, sink) {
        if (Clipboard.getText() case final text?) sink.add(text);
      },
    ),
  );

  /// Whether monitoring is currently active.
  bool get isRunning => _running;

  /// Whether this monitor has been permanently closed.
  bool get isClosed => _closed;

  /// Starts monitoring the clipboard.
  ///
  /// Spawns a worker isolate and registers a native change notification.
  ///
  /// This method completes only after the underlying OS notification
  /// registration has succeeded.
  ///
  /// Throws a [WindowsException] if the native API calls fail.
  Future<void> start() async {
    _ensureNotClosed();
    if (_running) throw StateError('ClipboardChangeMonitor already running.');

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
          if (_running) _controller.add(const ClipboardChangeEvent());

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
    if (!_running) throw StateError('ClipboardChangeMonitor not running.');

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
    if (_closed) throw StateError('ClipboardChangeMonitor already closed.');
    if (_running) await stop();

    await _controller.close();
    _closed = true;
  }

  void _ensureNotClosed() {
    if (_closed) throw StateError('ClipboardChangeMonitor is closed.');
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

  // Register the window to receive clipboard change notifications.
  final Win32Result(:value, :error) = AddClipboardFormatListener(window.hWnd);
  if (!value) {
    // The window was not registered to clipboard format listener list.
    // Clean up and send the error back to the main isolate.
    window.destroy();
    stopEvent.close();
    mainPort.send(_Failure(WindowsException(error.toHRESULT())));
    return;
  }

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
    RemoveClipboardFormatListener(window.hWnd);
    window.destroy();
    free(msg);
    free(handles);
    stopEvent.close();
    mainPort.send(const _Exited());
  }
}

final class Win32Window {
  Win32Window(this._emit);

  final void Function(_Changed) _emit;

  static final Map<HWND, Win32Window> _registry = {};

  final PCWSTR _className = 'ClipboardChangeMonitorWindow'.toPcwstr();
  late final HWND hWnd;
  final _hInstance = HINSTANCE(GetModuleHandle(null).value);
  late final NativeCallable<WNDPROC> _wndProc;
  late final _token = HWND(Pointer.fromAddress(identityHashCode(this)));

  void create() => using((arena) {
    _wndProc = NativeCallable.isolateLocal(_windowProc, exceptionalReturn: 0);

    final wc = arena<WNDCLASS>();
    wc.ref
      ..lpfnWndProc = _wndProc.nativeFunction
      ..hInstance = _hInstance
      ..lpszClassName = .new(_className);
    final result = RegisterClass(wc);
    if (result.value == 0 && result.error != ERROR_CLASS_ALREADY_EXISTS) {
      throw WindowsException(result.error.toHRESULT());
    }

    _registry[_token] = this;
    final Win32Result(value: hwnd, :error) = CreateWindowEx(
      WS_EX_LEFT,
      _className,
      null,
      WS_OVERLAPPED,
      0,
      0,
      0,
      0,
      HWND_MESSAGE,
      null,
      _hInstance,
      _token,
    );
    if (hwnd.isNull) throw WindowsException(error.toHRESULT());

    hWnd = hwnd;
  });

  void destroy() {
    DestroyWindow(hWnd);
    UnregisterClass(_className, _hInstance);
    free(_className);
    _registry.remove(_token);
    _wndProc.close();
  }

  static int _windowProc(Pointer hWnd, int msg, int wParam, int lParam) {
    final hwnd = HWND(hWnd);
    switch (msg) {
      case WM_CREATE:
        final cs = Pointer<CREATESTRUCT>.fromAddress(lParam).ref;
        SetWindowLongPtr(hwnd, GWLP_USERDATA, cs.lpCreateParams.address);
        return 0;

      case WM_CLIPBOARDUPDATE:
        final Win32Result(value: token, :error) = GetWindowLongPtr(
          hwnd,
          GWLP_USERDATA,
        );
        if (token == 0) throw WindowsException(error.toHRESULT());
        final window = _registry[HWND(Pointer.fromAddress(token))];
        window?._handleClipboardChange();
        return 0;
    }

    return DefWindowProc(hwnd, msg, .new(wParam), .new(lParam));
  }

  void _handleClipboardChange() => _emit(const _Changed());
}
