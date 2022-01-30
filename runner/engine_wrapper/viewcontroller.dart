import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'engine.dart';
import 'ffi.dart';
import 'utils.dart';

class FlutterViewController {
  late final FlutterEngineAPI flutter;

  int width;
  int height;

  Pointer<FlutterDesktopView> view = nullptr;
  Pointer<FlutterDesktopViewControllerState> controller = nullptr;

  FlutterViewController(this.width, this.height) {
    final library = DynamicLibrary.open(
        r'c:\flutter\bin\cache\artifacts\engine\windows-x64-release\flutter_windows.dll');
    flutter = FlutterEngineAPI(library);
    final engine = FlutterEngine();
    controller = flutter.FlutterDesktopViewControllerCreate(
        width, height, engine.handle);

    if (controller == nullptr) {
      error('Failed to create view controller.');
    } else {
      view = flutter.FlutterDesktopViewControllerGetView(controller);
    }
  }

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
}
