import 'dart:async';
import 'dart:ffi';
import 'dart:isolate';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:win32/win32.dart';

/// Emits an event whenever the contents of the clipboard have changed.
@internal
Stream<void> get onClipboardDataChanged {
  ReceivePort? receivePort;
  SendPort? isolateStopPort;
  StreamSubscription<dynamic>? receivePortSubscription;
  StreamController<void>? controller;

  controller = StreamController<void>.broadcast(
    onListen: () async {
      // Create a ReceivePort to listen for messages from the isolate.
      receivePort = ReceivePort();

      // Start the isolate and pass the message port.
      await Isolate.spawn(_listenForClipboardChanges, receivePort!.sendPort);

      // Listen for messages from the isolate.
      receivePortSubscription = receivePort!.listen((message) {
        if (message is SendPort) {
          isolateStopPort = message;
        } else if (message == null) {
          controller?.add(null); // Notify listeners of clipboard change.
        } else if (message is Error) {
          receivePortSubscription?.cancel();
          receivePort?.close();
          controller?.addError(message);
          controller?.close();
        }
      });
    },
    onCancel: () async {
      isolateStopPort?.send(null); // Signal to stop the isolate.
      // Give the isolate time to shut down gracefully.
      await Future.delayed(const Duration(milliseconds: 5));
      await receivePortSubscription?.cancel();
      receivePort?.close();
      await controller?.close();
    },
  );

  return controller.stream;
}

/// This function sets up a message loop that listens for clipboard data
/// changes.
///
/// When a relevant event occurs, it sends the event information back to the
/// main isolate using the provided [mainSendPort].
///
/// Since this function contains a message loop that _blocks_ until termination,
/// it _must_ run in a separate isolate to avoid blocking the main isolate.
Future<void> _listenForClipboardChanges(SendPort mainSendPort) async {
  // Create a ReceivePort for stopping the isolate.
  final stopPort = ReceivePort();

  // Send the SendPort of stopPort back to the main isolate.
  mainSendPort.send(stopPort.sendPort);

  final hInstance = GetModuleHandle(nullptr);
  final className = 'ClipboardListenerWindowClass'.toNativeUtf16();

  int mainWindowProc(int hWnd, int msg, int wParam, int lParam) {
    switch (msg) {
      case WM_CLIPBOARDUPDATE:
        mainSendPort.send(null); // Notify clipboard change.
    }

    return DefWindowProc(hWnd, msg, wParam, lParam);
  }

  // Use NativeCallable to define the Window Procedure (WNDPROC).
  final nativeCallable = NativeCallable<WNDPROC>.isolateLocal(
    mainWindowProc,
    exceptionalReturn: 0,
  );

  // Define the window class and register it.
  final wndClass = calloc<WNDCLASS>();
  wndClass.ref
    ..lpfnWndProc = nativeCallable.nativeFunction
    ..hInstance = hInstance
    ..lpszClassName = className;
  if (RegisterClass(wndClass) == 0) {
    // The window class was not registered. Clean up and close the stop port.
    stopPort.close();
    nativeCallable.close();
    free(wndClass);
    free(className);
    final error = StateError('Failed to register window class.');
    mainSendPort.send(error);
    throw error;
  }

  // Create a message-only window to receive messages.
  final hWnd = CreateWindowEx(0, className, className, 0, 0, 0, 0, 0,
      HWND_MESSAGE, 0, hInstance, nullptr);
  if (hWnd == 0) {
    // The window was not created. Clean up and close the stop port.
    stopPort.close();
    nativeCallable.close();
    UnregisterClass(className, hInstance);
    free(wndClass);
    free(className);
    final error = StateError('Failed to create window.');
    mainSendPort.send(error);
    throw error;
  }

  // Register the window to receive clipboard change notifications.
  if (AddClipboardFormatListener(hWnd) == FALSE) {
    // The window was not registered to clipboard format listener list. Clean up
    // and close the stop port.
    stopPort.close();
    nativeCallable.close();
    UnregisterClass(className, hInstance);
    free(wndClass);
    free(className);
    final error = StateError(
      'Failed to register window to clipboard format listener list.',
    );
    mainSendPort.send(error);
    throw error;
  }

  // Whether the message loop should continue running.
  var isRunning = true;

  StreamSubscription<dynamic>? stopPortSubscription;

  // Listen for the stop signal to gracefully shut down the isolate.
  stopPortSubscription = stopPort.listen((message) async {
    await stopPortSubscription?.cancel();
    stopPort.close();
    isRunning = false;
  });

  final msg = calloc<MSG>();

  // Message loop to keep the isolate running and handle notifications.
  while (isRunning) {
    // Process messages without blocking.
    while (
        PeekMessage(msg, hWnd, 0, 0, PEEK_MESSAGE_REMOVE_TYPE.PM_REMOVE) != 0) {
      TranslateMessage(msg);
      DispatchMessage(msg);
    }

    // Yield control to the Dart event loop to allow the stop signal to be
    // processed.
    await Future.delayed(Duration.zero);
  }

  // Clean up resources.
  RemoveClipboardFormatListener(hWnd);
  DestroyWindow(hWnd);
  UnregisterClass(className, hInstance);
  free(className);
  free(wndClass);
  free(msg);
  nativeCallable.close();
}
