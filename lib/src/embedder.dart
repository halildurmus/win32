import 'dart:ffi';
import 'dart:io';
import 'dart:math' as math;

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'dart_project.dart';
import 'ffi.dart';

/// A Dart wrapper for the Flutter engine API.
class FlutterEmbedder {
  /// Creates an instance of the [FlutterEmbedder] for embedding Flutter in a
  /// Windows application.
  ///
  /// - `size`: The dimensions of the embedded Flutter view.
  /// - `project`: Information about the Dart project.
  /// - `flutterLibrary`: The path to the Flutter engine library.
  FlutterEmbedder(
    math.Rectangle<int> size,
    DartProject project,
    String flutterLibrary,
  ) {
    // Load the Windows engine
    final library = DynamicLibrary.open(flutterLibrary);
    flutter = FlutterEngineLibrary(library);

    // SymInitialize has already been called when Dart starts. When we invoke
    // the engine, it's called again, which leads to a "Failed to init
    // NativeSymbolResolver (SymInitialize 87)" error. So we clean up before we
    // call the engine.
    final hProcess = GetCurrentProcess();
    SymCleanup(hProcess);

    using((arena) {
      final engineProperties = arena<FlutterDesktopEngineProperties>();
      engineProperties.ref
        ..aot_library_path =
            project.aotLibraryPath.toNativeUtf16(allocator: arena)
        ..icu_data_path = project.icuDataPath.toNativeUtf16(allocator: arena)
        ..assets_path = project.assetsPath.toNativeUtf16(allocator: arena);
      engine = flutter.FlutterDesktopEngineCreate(engineProperties);
    });

    messenger = flutter.FlutterDesktopEngineGetMessenger(engine);
    if (messenger == nullptr) throw Exception('Failed to create messenger.');

    controller = flutter.FlutterDesktopViewControllerCreate(
      size.width,
      size.height,
      engine,
    );
    if (controller == nullptr) {
      throw Exception('Failed to create view controller.');
    }

    view = flutter.FlutterDesktopViewControllerGetView(controller);
    if (view == nullptr) {
      throw Exception('Failed to create view from controller.');
    }
  }

  /// Object that holds the native API functions.
  late final FlutterEngineLibrary flutter;

  /// Handle for interacting with the C API's engine reference.
  late final Pointer<FlutterDesktopEngine> engine;

  /// Messenger for communicating with the engine.
  late final Pointer<FlutterDesktopMessenger> messenger;

  /// Handle for the Flutter view.
  late final Pointer<FlutterDesktopView> view;

  /// Handle for the Flutter view controller.
  late final Pointer<FlutterDesktopViewControllerState> controller;

  /// Whether the engine has been run.
  ///
  /// This will be `true` if `Run` has been called, or if `RelinquishEngine` has
  /// been called (since the view controller will run the engine if it hasn't
  /// already been run).
  bool hasBeenRun = false;

  /// Notifies the Flutter engine that the system font list has changed.
  ///
  /// This should be called by clients when OS-level font changes happen
  /// (e.g., upon receiving the `WM_FONTCHANGE` message).
  void reloadSystemFonts() =>
      flutter.FlutterDesktopEngineReloadSystemFonts(engine);

  /// Gets the HWND (window handle) associated with the Flutter view.
  int get hwnd => flutter.FlutterDesktopViewGetHWND(view);

  /// Handles top-level window messages for Flutter view.
  ///
  /// - `hwnd`: The window handle.
  /// - `message`: The window message.
  /// - `wParam`: Additional message information.
  /// - `lParam`: Additional message information.
  int handleTopLevelWindowProc(int hwnd, int message, int wParam, int lParam) {
    final result = calloc<IntPtr>();
    final handled =
        flutter.FlutterDesktopViewControllerHandleTopLevelWindowProc(
              controller,
              hwnd,
              message,
              wParam,
              lParam,
              result,
            ) !=
            0;
    final returnValue = handled ? result.value : 0;
    free(result);
    return returnValue;
  }

  /// Starts running the Flutter engine, optionally specifying an entry point.
  ///
  /// [entryPoint] represents the name of a top-level function in the Dart
  /// library containing the app's `main()`.
  ///
  /// If `entryPoint` is not provided, it defaults to `main()`.
  ///
  /// Returns `true` if the engine starts successfully; otherwise, returns
  /// `false`.
  bool run(String entryPoint) {
    if (engine == nullptr) {
      stderr.writeln('Cannot run an engine that failed creation.');
      return false;
    }

    if (hasBeenRun) {
      stderr.writeln('Cannot run an engine more than once.');
      return false;
    }

    final runSucceeded = flutter.FlutterDesktopEngineRun(engine, nullptr) != 0;
    if (!runSucceeded) {
      stderr.writeln('Failed to start engine.');
    }

    hasBeenRun = true;
    return runSucceeded;
  }
}
