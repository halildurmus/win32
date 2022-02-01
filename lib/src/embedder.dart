import 'dart:ffi';
import 'dart:io';
import 'dart:math' show Rectangle;

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' as win32;

import 'dart_project.dart';
import 'ffi.dart';

/// A Dart wrapper for the Flutter engine API.
class FlutterEmbedder {
  /// Object that holds the native API functions.
  late final FlutterEngineLibrary flutter;

  /// Handle for interacting with the C API's engine reference.
  late final Pointer<FlutterDesktopEngine> engine;

  /// Messenger for communicating with the engine.
  late final Pointer<FlutterDesktopMessenger> messenger;

  late final Pointer<FlutterDesktopView> view;
  late final Pointer<FlutterDesktopViewControllerState> controller;

  /// Whether the engine has been run. This will be true if Run has been called,
  /// or if RelinquishEngine has been called (since the view controller will run
  /// the engine if it hasn't already been run).
  bool hasBeenRun = false;

  FlutterEmbedder(
      Rectangle<int> size, DartProject project, String flutterLibrary) {
    // Load the Windows engine
    final library = DynamicLibrary.open(flutterLibrary);
    flutter = FlutterEngineLibrary(library);

    // SymInitialize has already been called when Dart starts. When we invoke
    // the engine, it's called again, which leads to a "Failed to init
    // NativeSymbolResolver (SymInitialize 87)" error. So we clean up before we
    // call the engine.
    final hProcess = win32.GetCurrentProcess();
    win32.SymCleanup(hProcess);

    using((Arena arena) {
      final engineProperties = arena<FlutterDesktopEngineProperties>()
        ..ref.aot_library_path =
            project.aotLibraryPath.toNativeUtf16(allocator: arena)
        ..ref.icu_data_path =
            project.icuDataPath.toNativeUtf16(allocator: arena)
        ..ref.assets_path = project.assetsPath.toNativeUtf16(allocator: arena);
      engine = flutter.FlutterDesktopEngineCreate(engineProperties);
    });

    messenger = flutter.FlutterDesktopEngineGetMessenger(engine);
    if (messenger == nullptr) {
      throw Exception('Failed to create messenger.');
    }

    controller = flutter.FlutterDesktopViewControllerCreate(
        size.width, size.height, engine);
    if (controller == nullptr) {
      throw Exception('Failed to create view controller.');
    }

    view = flutter.FlutterDesktopViewControllerGetView(controller);
    if (view == nullptr) {
      throw Exception('Failed to create view from controller.');
    }
  }

  /// Tells the engine that the system font list has changed. Should be called
  /// by clients when OS-level font changes happen (e.g. the `WM_FONTCHANGE`
  /// message is received.)
  void reloadSystemFonts() {
    flutter.FlutterDesktopEngineReloadSystemFonts(engine);
  }

  int get hwnd => flutter.FlutterDesktopViewGetHWND(view);

  int handleTopLevelWindowProc(int hwnd, int message, int wParam, int lParam) {
    final result = calloc<IntPtr>();
    final handled =
        flutter.FlutterDesktopViewControllerHandleTopLevelWindowProc(
                controller, hwnd, message, wParam, lParam, result) !=
            0;
    if (handled) {
      return result.value;
    } else {
      return 0;
    }
  }

  /// Starts running the engine, with an optional entry point.
  ///
  /// If provided, entry_point must be the name of a top-level function from the
  /// same Dart library that contains the app's `main()` function. If not
  /// provided, defaults to `main()`.
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
