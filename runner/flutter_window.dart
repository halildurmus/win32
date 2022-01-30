import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'engine_wrapper/viewcontroller.dart';
import 'win32_window.dart';

/// A set of Flutter and Dart assets used to initialize a Flutter engine.
class DartProject {
  final String assetsPath;
  final String icuDataPath;
  final String aotLibraryPath;

  /// Creates a DartProject from a series of absolute paths.
  ///
  /// The three paths are:
  /// - assets_path: Path to the assets directory as built by the Flutter tool.
  /// - icu_data_path: Path to the icudtl.dat file.
  /// - aot_library_path: Path to the AOT snapshot file.
  ///
  /// The paths can either be absolute or relative to the directory containing
  /// the running executable.
  const DartProject(
      {required this.assetsPath,
      required this.icuDataPath,
      required this.aotLibraryPath});
}

/// A window that does nothing but host a Flutter view.
class FlutterWindow extends Win32Window {
  /// The Flutter instance hosted by this window.
  late final FlutterViewController controller;

  bool quitOnClose = false;

  // Creates a new FlutterWindow driven by the |run_loop|, hosting a
  // Flutter view running |project|.
  FlutterWindow(this.project);

  // Win32Window:
  @override
  bool OnCreate() {
    final frame = calloc<RECT>();
    GetClientRect(topLevelWindowHandle, frame);

    // The size here must match the window dimensions to avoid unnecessary
    // surface creation / destruction in the startup path.
    controller = FlutterViewController(frame.ref.right - frame.ref.left,
        frame.ref.bottom - frame.ref.top, project);
    if (controller.view == nullptr) {
      return false;
    }

    // TODO: Register plugins
    // RegisterPlugins();

    final hWnd = controller.nativeWindowHandle;
    SetChildContent(hWnd);

    return true;
  }

  @override
  void OnDestroy() {}

  // The project to run.
  final DartProject project;
}
