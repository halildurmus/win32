import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../win_api_gui_wrapper/tools.dart';
import 'bundle.dart';

class FlutterApi {
  final FuncEngineCreate _createEngine;
  final FuncViewControllerCreate _createController;
  final FuncGetView getView;
  final FuncControllerWindowProc controllerWndProc;
  final FuncControllerDestroy controllerDestroy;
  final FuncViewGetHWND viewGetHWND;

  FlutterApi._internal(
    this._createEngine,
    this._createController,
    this.getView,
    this.controllerWndProc,
    this.controllerDestroy,
    this.viewGetHWND,
  );

  factory FlutterApi.load(String libPath) {
    final dll = DynamicLibrary.open(libPath);

    final createEngine = dll.lookupFunction<CEngineCreate, FuncEngineCreate>(
        'FlutterDesktopEngineCreate');

    final createController =
        dll.lookupFunction<CViewControllerCreate, FuncViewControllerCreate>(
            'FlutterDesktopViewControllerCreate');

    final getView = dll.lookupFunction<CGetView, FuncGetView>(
        'FlutterDesktopViewControllerGetView');

    final controllerWndProc =
        dll.lookupFunction<CControllerWindowProc, FuncControllerWindowProc>(
            'FlutterDesktopViewControllerHandleTopLevelWindowProc');

    final controllerDestroy =
        dll.lookupFunction<CControllerDestroy, FuncControllerDestroy>(
            'FlutterDesktopViewControllerDestroy');

    final viewGetHWND = dll.lookupFunction<CViewGetHWND, FuncViewGetHWND>(
        'FlutterDesktopViewGetHWND');

    return FlutterApi._internal(
      createEngine,
      createController,
      getView,
      controllerWndProc,
      controllerDestroy,
      viewGetHWND,
    );
  }

  EngineRef createEngine(Bundle bundle) {
    final engineProperties = bundle.toEngineProperties();
    try {
      return _createEngine(engineProperties.pValue);
    } finally {
      engineProperties.free();
    }
  }

  ViewControllerRef createController(Size size, EngineRef engineRef) {
    return _createController(size.width, size.height, engineRef);
  }
}

// flutter dll describe
// =============================================================================

// FlutterDesktopEngine
typedef EngineRef = Pointer<IntPtr>;

typedef CEngineCreate = EngineRef Function(Pointer<EngineProperties>);
typedef FuncEngineCreate = EngineRef Function(Pointer<EngineProperties>);

// FlutterDesktopViewControllerState
typedef ViewControllerRef = Pointer<IntPtr>;

typedef CViewControllerCreate = EngineRef Function(Int32, Int32, EngineRef);
typedef FuncViewControllerCreate = EngineRef Function(int, int, EngineRef);

// FlutterDesktopView;
typedef ViewRef = Pointer<IntPtr>;

typedef CGetView = ViewRef Function(ViewControllerRef);
typedef FuncGetView = ViewRef Function(ViewControllerRef);

typedef CControllerWindowProc = Int32 Function(
    ViewControllerRef, Int32, Int32, Int32, Int32, Pointer);
typedef FuncControllerWindowProc = int Function(
    ViewControllerRef, int, int, int, int, Pointer);

typedef CControllerDestroy = Void Function(ViewControllerRef);
typedef FuncControllerDestroy = void Function(ViewControllerRef);

typedef FlutterDesktopMessengerRef = Pointer;

typedef CViewGetHWND = Int32 Function(ViewRef);
typedef FuncViewGetHWND = int Function(ViewRef);

// =============================================================================

class EngineProperties extends Struct {
  // The path to the flutter_assets folder for the application to be run.
  // This can either be an absolute path or a path relative to the directory
  // containing the executable.
  // const wchar_t* assets_path;

  external Pointer<Utf16> assets_path;

  // The path to the icudtl.dat file for the version of Flutter you are using.
  // This can either be an absolute path or a path relative to the directory
  // containing the executable.
  // const wchar_t* icu_data_path;

  external Pointer<Utf16> icu_data_path;

  // The path to the AOT library file for your application, if any.
  // This can either be an absolute path or a path relative to the directory
  // containing the executable. This can be nullptr for a non-AOT build, as
  // it will be ignored in that case.
  // const wchar_t* aot_library_path;
  external Pointer<Utf16> aot_library_path;

  // Number of elements in the array passed in as dart_entrypoint_argv.
  @Uint32()
  external int dart_entrypoint_argc;

  // Array of Dart entrypoint arguments. This is deep copied during the call
  // to FlutterDesktopEngineCreate.
  // const char** dart_entrypoint_argv;
  external Pointer<Pointer<Utf8>> dart_entrypoint_argv;
}
