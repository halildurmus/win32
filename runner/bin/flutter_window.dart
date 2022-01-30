import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'dart_project.dart';
import 'engine_wrapper/viewcontroller.dart';
import 'win32_window.dart';

/// A window that does nothing but host a Flutter view.
class FlutterWindow extends Win32Window {
  /// The Flutter instance hosted by this window.
  late final FlutterViewController controller;

  bool quitOnClose = false;

  // Creates a new FlutterWindow driven by the |run_loop|, hosting a
  // Flutter view running |project|.
  FlutterWindow(this.project);

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
