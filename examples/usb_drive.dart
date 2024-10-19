// Demonstrates monitoring USB drive insertion and removal events.

import 'dart:async';
import 'dart:ffi';
import 'dart:isolate';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// This function sets up a message loop that listens for device change
/// notifications specific to USB drives. When a relevant event occurs, it sends
/// the event information back to the main isolate using the provided
/// [mainSendPort].
///
/// Since this function contains a message loop that _blocks_ until termination,
/// it _must_ run in a separate isolate to avoid blocking the main isolate.
void listenForUsbDriveChanges(SendPort mainSendPort) async {
  // Create a ReceivePort for stopping the isolate.
  final stopPort = ReceivePort();

  // Send the SendPort of stopPort back to the main isolate.
  mainSendPort.send(stopPort.sendPort);

  final hInstance = GetModuleHandle(nullptr);
  final className = 'USBMonitorWindowClass'.toNativeUtf16();

  int mainWindowProc(int hWnd, int msg, int wParam, int lParam) {
    switch (msg) {
      case WM_DEVICECHANGE:
        if (wParam case DBT_DEVICEARRIVAL || DBT_DEVICEREMOVECOMPLETE
            when lParam != 0) {
          final dbhdr = Pointer<DEV_BROADCAST_HDR>.fromAddress(lParam);
          if (dbhdr.ref.dbch_devicetype ==
              DEV_BROADCAST_HDR_DEVICE_TYPE.DBT_DEVTYP_VOLUME) {
            final devBroadcastVolume = dbhdr.cast<DEV_BROADCAST_VOLUME>().ref;
            final driveLetter =
                getDriveLetter(devBroadcastVolume.dbcv_unitmask);
            final driveInfo = getDriveInformation(driveLetter);
            // Send the event information back to the main isolate.
            mainSendPort.send({
              'event': wParam == DBT_DEVICEARRIVAL
                  ? 'USB drive connected'
                  : 'USB drive disconnected',
              'drive': driveLetter,
              'info': driveInfo,
            });
          }
        }
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
    mainSendPort.send(error); // Send the error back to the main isolate.
    throw error;
  }

  // Create a hidden window to receive messages.
  final hWnd = CreateWindowEx(
      0, className, className, 0, 0, 0, 0, 0, 0, 0, hInstance, nullptr);
  if (hWnd == 0) {
    // The window was not created. Clean up and close the stop port.
    stopPort.close();
    nativeCallable.close();
    UnregisterClass(className, hInstance);
    free(wndClass);
    free(className);
    final error = StateError('Failed to create window.');
    mainSendPort.send(error); // Send the error back to the main isolate.
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

    // Yield to the Dart event loop to allow the stop signal to be processed.
    await Future.delayed(Duration.zero);
  }

  // Clean up resources.
  nativeCallable.close();
  UnregisterClass(className, hInstance);
  free(msg);
  free(wndClass);
  free(className);
  PostQuitMessage(0);
}

/// Converts the [bitmask] to a corresponding drive letter.
String getDriveLetter(int bitmask) {
  for (var i = 0; i < 26; i++) {
    if (bitmask & (1 << i) != 0) {
      return String.fromCharCode('A'.codeUnitAt(0) + i);
    }
  }
  return '';
}

/// Retrieves information about the drive, including its type and volume label.
String? getDriveInformation(String driveLetter) {
  final lpRootPathName = '${driveLetter.toUpperCase()}:\\'.toNativeUtf16();
  final lpVolumeNameBuffer = wsalloc(MAX_PATH);
  final lpFileSystemNameBuffer = wsalloc(MAX_PATH);

  try {
    final result = GetVolumeInformation(
      lpRootPathName,
      lpVolumeNameBuffer,
      MAX_PATH,
      nullptr,
      nullptr,
      nullptr,
      lpFileSystemNameBuffer,
      MAX_PATH,
    );
    if (result == TRUE) {
      final driveType = GetDriveType(lpRootPathName);
      final driveTypeDesc = switch (driveType) {
        DRIVE_REMOVABLE => 'Removable',
        DRIVE_FIXED => 'Fixed',
        DRIVE_REMOTE => 'Remote',
        DRIVE_CDROM => 'CD-ROM',
        DRIVE_RAMDISK => 'RAM disk',
        _ => 'Unknown'
      };
      final volumeName = lpVolumeNameBuffer.toDartString();
      final label = volumeName.isNotEmpty ? 'Label: $volumeName' : 'N/A';
      return '$driveTypeDesc drive, Label: $label';
    }

    return null;
  } finally {
    free(lpRootPathName);
    free(lpVolumeNameBuffer);
    free(lpFileSystemNameBuffer);
  }
}

/// Returns a stream that listens for USB drive change notifications.
///
/// This stream emits a map containing the event type, drive letter, and
/// additional drive information whenever a USB drive is connected or
/// disconnected.
Stream<Map<String, Object?>> get onUsbDriveChanged {
  ReceivePort? receivePort;
  SendPort? isolateStopPort;
  StreamSubscription<dynamic>? receivePortSubscription;
  StreamController<Map<String, Object?>>? controller;

  // Create a StreamController that allows only a single listener.
  controller = StreamController<Map<String, Object?>>(
    onListen: () async {
      // Create a ReceivePort to listen for messages from the isolate.
      receivePort = ReceivePort();

      // Start the isolate and pass the message port.
      await Isolate.spawn(listenForUsbDriveChanges, receivePort!.sendPort);

      // Listen for messages from the isolate.
      receivePortSubscription = receivePort!.listen((message) {
        if (message is SendPort) {
          isolateStopPort = message;
        } else if (message is Map<String, Object?>) {
          controller?.add(message);
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
      controller?.close();
    },
  );

  return controller.stream;
}

void main() async {
  // Subscribe to the USB drive change stream.
  final subscription = onUsbDriveChanged.listen((message) {
    final {
      'event': event as String,
      'drive': drive as String,
      'info': info as String?
    } = message;
    print('$event: Drive $drive:${info != null ? ' ($info)' : ''}');
  }, cancelOnError: true);

  print('Monitoring USB drive changes for 30 seconds...');

  // Stop monitoring after 30 seconds.
  await Future.delayed(const Duration(seconds: 30), () async {
    await subscription.cancel();
    print('Stopped monitoring.');
  });
}
