import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'ffi.dart';
import 'utils.dart';

/// An instance of a Flutter engine.
class FlutterEngine {
  late final FlutterEngineAPI flutter;

  /// Handle for interacting with the C API's engine reference.
  Pointer<FlutterDesktopEngine> handle = nullptr;

  /// Messenger for communicating with the engine.
  Pointer<FlutterDesktopMessenger> messenger = nullptr;

  /// Whether the engine has been run. This will be true if Run has been called,
  /// or if RelinquishEngine has been called (since the view controller will run
  /// the engine if it hasn't already been run).
  bool hasBeenRun = false;

  /// Creates a new engine for running the given project.
  FlutterEngine() {
    final library = DynamicLibrary.open(
        r'c:\flutter\bin\cache\artifacts\engine\windows-x64-release\flutter_windows.dll');
    flutter = FlutterEngineAPI(library);

    final engineProperties = calloc<FlutterDesktopEngineProperties>();
    handle = flutter.FlutterDesktopEngineCreate(engineProperties);

    messenger = flutter.FlutterDesktopEngineGetMessenger(handle);
  }

  /// Starts running the engine, with an optional entry point.
  ///
  /// If provided, entry_point must be the name of a top-level function from the
  /// same Dart library that contains the app's `main()` function. If not
  /// provided, defaults to `main()`.
  bool run(String entryPoint) {
    // TODO: Implement entryPoint

    if (handle == nullptr) {
      error('Cannot run an engine that failed creation.');
      return false;
    }
    if (hasBeenRun) {
      error('Cannot run an engine more than once.');
      return false;
    }

    final runSucceeded = flutter.FlutterDesktopEngineRun(handle, nullptr) != 0;

    if (!runSucceeded) {
      error('Failed to start engine.');
    }

    hasBeenRun = true;
    return runSucceeded;
  }
}
