// ignore_for_file: slash_for_doc_comments

import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'package:win32/win32.dart';

/********************************* CONSTANTS *********************************/

abstract class FlutterDesktopTextureType {
  static const int kFlutterDesktopPixelBufferTexture = 0;
}

/********************************* CALLBACKS *********************************/

typedef FlutterDesktopBinaryReply = Pointer<
    NativeFunction<Void Function(Pointer<Uint8>, UintPtr, Pointer<Void>)>>;

typedef FlutterDesktopMessageCallback = Pointer<
    NativeFunction<
        Void Function(Pointer<FlutterDesktopMessenger>,
            Pointer<FlutterDesktopMessage>, Pointer<Void>)>>;

typedef FlutterDesktopPixelBufferTextureCallback = Pointer<
    NativeFunction<
        Pointer<FlutterDesktopPixelBuffer> Function(
            UintPtr, UintPtr, Pointer<Void>)>>;

typedef FlutterDesktopOnPluginRegistrarDestroyed = Pointer<
    NativeFunction<Void Function(Pointer<FlutterDesktopPluginRegistrar>)>>;

/********************************** STRUCTS **********************************/

class FlutterDesktopViewControllerState extends Opaque {}

class FlutterDesktopMessenger extends Opaque {}

class FlutterDesktopMessageResponseHandle extends Opaque {}

class FlutterDesktopView extends Opaque {}

class FlutterDesktopPluginRegistrar extends Opaque {}

class FlutterDesktopEngine extends Opaque {}

class FlutterDesktopTextureRegistrar extends Opaque {}

class FlutterDesktopMessage extends Struct {
  @UintPtr()
  external int struct_size;

  external Pointer<Int8> channel;

  external Pointer<Uint8> message;

  @UintPtr()
  external int message_size;

  external Pointer<FlutterDesktopMessageResponseHandle> response_handle;
}

class FlutterDesktopPixelBuffer extends Struct {
  external Pointer<Uint8> buffer;

  @UintPtr()
  external int width;

  @UintPtr()
  external int height;

  external Pointer<NativeFunction<Void Function(Pointer<Void>)>>
      release_callback;

  external Pointer<Void> release_context;
}

class FlutterDesktopPixelBufferTextureConfig extends Struct {
  external FlutterDesktopPixelBufferTextureCallback callback;

  external Pointer<Void> user_data;
}

class FlutterDesktopTextureInfo extends Struct {
  @Int32()
  external int type;
}

class FlutterDesktopEngineProperties extends Struct {
  external Pointer<Utf16> assets_path;

  external Pointer<Utf16> icu_data_path;

  external Pointer<Utf16> aot_library_path;

  @Int32()
  external int dart_entrypoint_argc;

  external Pointer<Pointer<Int8>> dart_entrypoint_argv;
}

/********************************* FUNCTIONS *********************************/

/// Native API for Flutter Windows desktop engine `flutter_windows.h`
class FlutterEngineAPI {
  /// Holds the symbol lookup function.
  final Pointer<T> Function<T extends NativeType>(String symbolName) _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  FlutterEngineAPI(DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  FlutterEngineAPI.fromLookup(
      Pointer<T> Function<T extends NativeType>(String symbolName) lookup)
      : _lookup = lookup;

  int FlutterDesktopMessengerSend(
    Pointer<FlutterDesktopMessenger> messenger,
    Pointer<Int8> channel,
    Pointer<Uint8> message,
    int message_size,
  ) {
    return _FlutterDesktopMessengerSend(
      messenger,
      channel,
      message,
      message_size,
    );
  }

  late final _FlutterDesktopMessengerSendPtr = _lookup<
      NativeFunction<
          Int32 Function(Pointer<FlutterDesktopMessenger>, Pointer<Int8>,
              Pointer<Uint8>, UintPtr)>>('FlutterDesktopMessengerSend');
  late final _FlutterDesktopMessengerSend =
      _FlutterDesktopMessengerSendPtr.asFunction<
          int Function(Pointer<FlutterDesktopMessenger>, Pointer<Int8>,
              Pointer<Uint8>, int)>();

  int FlutterDesktopMessengerSendWithReply(
    Pointer<FlutterDesktopMessenger> messenger,
    Pointer<Int8> channel,
    Pointer<Uint8> message,
    int message_size,
    FlutterDesktopBinaryReply reply,
    Pointer<Void> user_data,
  ) {
    return _FlutterDesktopMessengerSendWithReply(
      messenger,
      channel,
      message,
      message_size,
      reply,
      user_data,
    );
  }

  late final _FlutterDesktopMessengerSendWithReplyPtr = _lookup<
      NativeFunction<
          Int32 Function(
              Pointer<FlutterDesktopMessenger>,
              Pointer<Int8>,
              Pointer<Uint8>,
              UintPtr,
              FlutterDesktopBinaryReply,
              Pointer<Void>)>>('FlutterDesktopMessengerSendWithReply');
  late final _FlutterDesktopMessengerSendWithReply =
      _FlutterDesktopMessengerSendWithReplyPtr.asFunction<
          int Function(Pointer<FlutterDesktopMessenger>, Pointer<Int8>,
              Pointer<Uint8>, int, FlutterDesktopBinaryReply, Pointer<Void>)>();

  void FlutterDesktopMessengerSendResponse(
    Pointer<FlutterDesktopMessenger> messenger,
    Pointer<FlutterDesktopMessageResponseHandle> handle,
    Pointer<Uint8> data,
    int data_length,
  ) {
    return _FlutterDesktopMessengerSendResponse(
      messenger,
      handle,
      data,
      data_length,
    );
  }

  late final _FlutterDesktopMessengerSendResponsePtr = _lookup<
      NativeFunction<
          Void Function(
              Pointer<FlutterDesktopMessenger>,
              Pointer<FlutterDesktopMessageResponseHandle>,
              Pointer<Uint8>,
              UintPtr)>>('FlutterDesktopMessengerSendResponse');
  late final _FlutterDesktopMessengerSendResponse =
      _FlutterDesktopMessengerSendResponsePtr.asFunction<
          void Function(
              Pointer<FlutterDesktopMessenger>,
              Pointer<FlutterDesktopMessageResponseHandle>,
              Pointer<Uint8>,
              int)>();

  void FlutterDesktopMessengerSetCallback(
    Pointer<FlutterDesktopMessenger> messenger,
    Pointer<Int8> channel,
    FlutterDesktopMessageCallback callback,
    Pointer<Void> user_data,
  ) {
    return _FlutterDesktopMessengerSetCallback(
      messenger,
      channel,
      callback,
      user_data,
    );
  }

  late final _FlutterDesktopMessengerSetCallbackPtr = _lookup<
      NativeFunction<
          Void Function(
              Pointer<FlutterDesktopMessenger>,
              Pointer<Int8>,
              FlutterDesktopMessageCallback,
              Pointer<Void>)>>('FlutterDesktopMessengerSetCallback');
  late final _FlutterDesktopMessengerSetCallback =
      _FlutterDesktopMessengerSetCallbackPtr.asFunction<
          void Function(Pointer<FlutterDesktopMessenger>, Pointer<Int8>,
              FlutterDesktopMessageCallback, Pointer<Void>)>();

  int FlutterDesktopTextureRegistrarRegisterExternalTexture(
    Pointer<FlutterDesktopTextureRegistrar> texture_registrar,
    Pointer<FlutterDesktopTextureInfo> info,
  ) {
    return _FlutterDesktopTextureRegistrarRegisterExternalTexture(
      texture_registrar,
      info,
    );
  }

  late final _FlutterDesktopTextureRegistrarRegisterExternalTexturePtr =
      _lookup<
              NativeFunction<
                  Int64 Function(Pointer<FlutterDesktopTextureRegistrar>,
                      Pointer<FlutterDesktopTextureInfo>)>>(
          'FlutterDesktopTextureRegistrarRegisterExternalTexture');
  late final _FlutterDesktopTextureRegistrarRegisterExternalTexture =
      _FlutterDesktopTextureRegistrarRegisterExternalTexturePtr.asFunction<
          int Function(Pointer<FlutterDesktopTextureRegistrar>,
              Pointer<FlutterDesktopTextureInfo>)>();

  int FlutterDesktopTextureRegistrarUnregisterExternalTexture(
    Pointer<FlutterDesktopTextureRegistrar> texture_registrar,
    int texture_id,
  ) {
    return _FlutterDesktopTextureRegistrarUnregisterExternalTexture(
      texture_registrar,
      texture_id,
    );
  }

  late final _FlutterDesktopTextureRegistrarUnregisterExternalTexturePtr =
      _lookup<
              NativeFunction<
                  Int32 Function(
                      Pointer<FlutterDesktopTextureRegistrar>, Int64)>>(
          'FlutterDesktopTextureRegistrarUnregisterExternalTexture');
  late final _FlutterDesktopTextureRegistrarUnregisterExternalTexture =
      _FlutterDesktopTextureRegistrarUnregisterExternalTexturePtr.asFunction<
          int Function(Pointer<FlutterDesktopTextureRegistrar>, int)>();

  int FlutterDesktopTextureRegistrarMarkExternalTextureFrameAvailable(
    Pointer<FlutterDesktopTextureRegistrar> texture_registrar,
    int texture_id,
  ) {
    return _FlutterDesktopTextureRegistrarMarkExternalTextureFrameAvailable(
      texture_registrar,
      texture_id,
    );
  }

  late final _FlutterDesktopTextureRegistrarMarkExternalTextureFrameAvailablePtr =
      _lookup<
              NativeFunction<
                  Int32 Function(
                      Pointer<FlutterDesktopTextureRegistrar>, Int64)>>(
          'FlutterDesktopTextureRegistrarMarkExternalTextureFrameAvailable');
  late final _FlutterDesktopTextureRegistrarMarkExternalTextureFrameAvailable =
      _FlutterDesktopTextureRegistrarMarkExternalTextureFrameAvailablePtr
          .asFunction<
              int Function(Pointer<FlutterDesktopTextureRegistrar>, int)>();

  Pointer<FlutterDesktopMessenger> FlutterDesktopPluginRegistrarGetMessenger(
    Pointer<FlutterDesktopPluginRegistrar> registrar,
  ) {
    return _FlutterDesktopPluginRegistrarGetMessenger(
      registrar,
    );
  }

  late final _FlutterDesktopPluginRegistrarGetMessengerPtr = _lookup<
          NativeFunction<
              Pointer<FlutterDesktopMessenger> Function(
                  Pointer<FlutterDesktopPluginRegistrar>)>>(
      'FlutterDesktopPluginRegistrarGetMessenger');
  late final _FlutterDesktopPluginRegistrarGetMessenger =
      _FlutterDesktopPluginRegistrarGetMessengerPtr.asFunction<
          Pointer<FlutterDesktopMessenger> Function(
              Pointer<FlutterDesktopPluginRegistrar>)>();

  Pointer<FlutterDesktopTextureRegistrar>
      FlutterDesktopRegistrarGetTextureRegistrar(
    Pointer<FlutterDesktopPluginRegistrar> registrar,
  ) {
    return _FlutterDesktopRegistrarGetTextureRegistrar(
      registrar,
    );
  }

  late final _FlutterDesktopRegistrarGetTextureRegistrarPtr = _lookup<
          NativeFunction<
              Pointer<FlutterDesktopTextureRegistrar> Function(
                  Pointer<FlutterDesktopPluginRegistrar>)>>(
      'FlutterDesktopRegistrarGetTextureRegistrar');
  late final _FlutterDesktopRegistrarGetTextureRegistrar =
      _FlutterDesktopRegistrarGetTextureRegistrarPtr.asFunction<
          Pointer<FlutterDesktopTextureRegistrar> Function(
              Pointer<FlutterDesktopPluginRegistrar>)>();

  void FlutterDesktopPluginRegistrarSetDestructionHandler(
    Pointer<FlutterDesktopPluginRegistrar> registrar,
    FlutterDesktopOnPluginRegistrarDestroyed callback,
  ) {
    return _FlutterDesktopPluginRegistrarSetDestructionHandler(
      registrar,
      callback,
    );
  }

  late final _FlutterDesktopPluginRegistrarSetDestructionHandlerPtr = _lookup<
          NativeFunction<
              Void Function(Pointer<FlutterDesktopPluginRegistrar>,
                  FlutterDesktopOnPluginRegistrarDestroyed)>>(
      'FlutterDesktopPluginRegistrarSetDestructionHandler');
  late final _FlutterDesktopPluginRegistrarSetDestructionHandler =
      _FlutterDesktopPluginRegistrarSetDestructionHandlerPtr.asFunction<
          void Function(Pointer<FlutterDesktopPluginRegistrar>,
              FlutterDesktopOnPluginRegistrarDestroyed)>();

  /// ! WINUWP
  Pointer<FlutterDesktopViewControllerState> FlutterDesktopViewControllerCreate(
    int width,
    int height,
    Pointer<FlutterDesktopEngine> engine,
  ) {
    return _FlutterDesktopViewControllerCreate(
      width,
      height,
      engine,
    );
  }

  late final _FlutterDesktopViewControllerCreatePtr = _lookup<
          NativeFunction<
              Pointer<FlutterDesktopViewControllerState> Function(
                  Int32, Int32, Pointer<FlutterDesktopEngine>)>>(
      'FlutterDesktopViewControllerCreate');
  late final _FlutterDesktopViewControllerCreate =
      _FlutterDesktopViewControllerCreatePtr.asFunction<
          Pointer<FlutterDesktopViewControllerState> Function(
              int, int, Pointer<FlutterDesktopEngine>)>();

  void FlutterDesktopViewControllerDestroy(
    Pointer<FlutterDesktopViewControllerState> controller,
  ) {
    return _FlutterDesktopViewControllerDestroy(
      controller,
    );
  }

  late final _FlutterDesktopViewControllerDestroyPtr = _lookup<
          NativeFunction<
              Void Function(Pointer<FlutterDesktopViewControllerState>)>>(
      'FlutterDesktopViewControllerDestroy');
  late final _FlutterDesktopViewControllerDestroy =
      _FlutterDesktopViewControllerDestroyPtr.asFunction<
          void Function(Pointer<FlutterDesktopViewControllerState>)>();

  Pointer<FlutterDesktopEngine> FlutterDesktopViewControllerGetEngine(
    Pointer<FlutterDesktopViewControllerState> controller,
  ) {
    return _FlutterDesktopViewControllerGetEngine(
      controller,
    );
  }

  late final _FlutterDesktopViewControllerGetEnginePtr = _lookup<
          NativeFunction<
              Pointer<FlutterDesktopEngine> Function(
                  Pointer<FlutterDesktopViewControllerState>)>>(
      'FlutterDesktopViewControllerGetEngine');
  late final _FlutterDesktopViewControllerGetEngine =
      _FlutterDesktopViewControllerGetEnginePtr.asFunction<
          Pointer<FlutterDesktopEngine> Function(
              Pointer<FlutterDesktopViewControllerState>)>();

  Pointer<FlutterDesktopView> FlutterDesktopViewControllerGetView(
    Pointer<FlutterDesktopViewControllerState> controller,
  ) {
    return _FlutterDesktopViewControllerGetView(
      controller,
    );
  }

  late final _FlutterDesktopViewControllerGetViewPtr = _lookup<
          NativeFunction<
              Pointer<FlutterDesktopView> Function(
                  Pointer<FlutterDesktopViewControllerState>)>>(
      'FlutterDesktopViewControllerGetView');
  late final _FlutterDesktopViewControllerGetView =
      _FlutterDesktopViewControllerGetViewPtr.asFunction<
          Pointer<FlutterDesktopView> Function(
              Pointer<FlutterDesktopViewControllerState>)>();

  void FlutterDesktopViewControllerForceRedraw(
    Pointer<FlutterDesktopViewControllerState> controller,
  ) {
    return _FlutterDesktopViewControllerForceRedraw(
      controller,
    );
  }

  late final _FlutterDesktopViewControllerForceRedrawPtr = _lookup<
          NativeFunction<
              Void Function(Pointer<FlutterDesktopViewControllerState>)>>(
      'FlutterDesktopViewControllerForceRedraw');
  late final _FlutterDesktopViewControllerForceRedraw =
      _FlutterDesktopViewControllerForceRedrawPtr.asFunction<
          void Function(Pointer<FlutterDesktopViewControllerState>)>();

  int FlutterDesktopViewControllerHandleTopLevelWindowProc(
    Pointer<FlutterDesktopViewControllerState> controller,
    int hwnd,
    int message,
    int wparam,
    int lparam,
    Pointer<LRESULT> result,
  ) {
    return _FlutterDesktopViewControllerHandleTopLevelWindowProc(
      controller,
      hwnd,
      message,
      wparam,
      lparam,
      result,
    );
  }

  late final _FlutterDesktopViewControllerHandleTopLevelWindowProcPtr = _lookup<
          NativeFunction<
              Int32 Function(Pointer<FlutterDesktopViewControllerState>, HWND,
                  UINT, WPARAM, LPARAM, Pointer<LRESULT>)>>(
      'FlutterDesktopViewControllerHandleTopLevelWindowProc');
  late final _FlutterDesktopViewControllerHandleTopLevelWindowProc =
      _FlutterDesktopViewControllerHandleTopLevelWindowProcPtr.asFunction<
          int Function(Pointer<FlutterDesktopViewControllerState>, int, int,
              int, int, Pointer<LRESULT>)>();

  Pointer<FlutterDesktopEngine> FlutterDesktopEngineCreate(
    Pointer<FlutterDesktopEngineProperties> engine_properties,
  ) {
    return _FlutterDesktopEngineCreate(
      engine_properties,
    );
  }

  late final _FlutterDesktopEngineCreatePtr = _lookup<
          NativeFunction<
              Pointer<FlutterDesktopEngine> Function(
                  Pointer<FlutterDesktopEngineProperties>)>>(
      'FlutterDesktopEngineCreate');
  late final _FlutterDesktopEngineCreate =
      _FlutterDesktopEngineCreatePtr.asFunction<
          Pointer<FlutterDesktopEngine> Function(
              Pointer<FlutterDesktopEngineProperties>)>();

  int FlutterDesktopEngineDestroy(
    Pointer<FlutterDesktopEngine> engine,
  ) {
    return _FlutterDesktopEngineDestroy(
      engine,
    );
  }

  late final _FlutterDesktopEngineDestroyPtr =
      _lookup<NativeFunction<Int32 Function(Pointer<FlutterDesktopEngine>)>>(
          'FlutterDesktopEngineDestroy');
  late final _FlutterDesktopEngineDestroy = _FlutterDesktopEngineDestroyPtr
      .asFunction<int Function(Pointer<FlutterDesktopEngine>)>();

  int FlutterDesktopEngineRun(
    Pointer<FlutterDesktopEngine> engine,
    Pointer<Int8> entry_point,
  ) {
    return _FlutterDesktopEngineRun(
      engine,
      entry_point,
    );
  }

  late final _FlutterDesktopEngineRunPtr = _lookup<
      NativeFunction<
          Int32 Function(Pointer<FlutterDesktopEngine>,
              Pointer<Int8>)>>('FlutterDesktopEngineRun');
  late final _FlutterDesktopEngineRun = _FlutterDesktopEngineRunPtr.asFunction<
      int Function(Pointer<FlutterDesktopEngine>, Pointer<Int8>)>();

  int FlutterDesktopEngineProcessMessages(
    Pointer<FlutterDesktopEngine> engine,
  ) {
    return _FlutterDesktopEngineProcessMessages(
      engine,
    );
  }

  late final _FlutterDesktopEngineProcessMessagesPtr =
      _lookup<NativeFunction<Uint64 Function(Pointer<FlutterDesktopEngine>)>>(
          'FlutterDesktopEngineProcessMessages');
  late final _FlutterDesktopEngineProcessMessages =
      _FlutterDesktopEngineProcessMessagesPtr.asFunction<
          int Function(Pointer<FlutterDesktopEngine>)>();

  void FlutterDesktopEngineReloadSystemFonts(
    Pointer<FlutterDesktopEngine> engine,
  ) {
    return _FlutterDesktopEngineReloadSystemFonts(
      engine,
    );
  }

  late final _FlutterDesktopEngineReloadSystemFontsPtr =
      _lookup<NativeFunction<Void Function(Pointer<FlutterDesktopEngine>)>>(
          'FlutterDesktopEngineReloadSystemFonts');
  late final _FlutterDesktopEngineReloadSystemFonts =
      _FlutterDesktopEngineReloadSystemFontsPtr.asFunction<
          void Function(Pointer<FlutterDesktopEngine>)>();

  void FlutterDesktopEngineReloadPlatformBrightness(
    Pointer<FlutterDesktopEngine> engine,
  ) {
    return _FlutterDesktopEngineReloadPlatformBrightness(
      engine,
    );
  }

  late final _FlutterDesktopEngineReloadPlatformBrightnessPtr =
      _lookup<NativeFunction<Void Function(Pointer<FlutterDesktopEngine>)>>(
          'FlutterDesktopEngineReloadPlatformBrightness');
  late final _FlutterDesktopEngineReloadPlatformBrightness =
      _FlutterDesktopEngineReloadPlatformBrightnessPtr.asFunction<
          void Function(Pointer<FlutterDesktopEngine>)>();

  Pointer<FlutterDesktopPluginRegistrar> FlutterDesktopEngineGetPluginRegistrar(
    Pointer<FlutterDesktopEngine> engine,
    Pointer<Int8> plugin_name,
  ) {
    return _FlutterDesktopEngineGetPluginRegistrar(
      engine,
      plugin_name,
    );
  }

  late final _FlutterDesktopEngineGetPluginRegistrarPtr = _lookup<
      NativeFunction<
          Pointer<FlutterDesktopPluginRegistrar> Function(
              Pointer<FlutterDesktopEngine>,
              Pointer<Int8>)>>('FlutterDesktopEngineGetPluginRegistrar');
  late final _FlutterDesktopEngineGetPluginRegistrar =
      _FlutterDesktopEngineGetPluginRegistrarPtr.asFunction<
          Pointer<FlutterDesktopPluginRegistrar> Function(
              Pointer<FlutterDesktopEngine>, Pointer<Int8>)>();

  Pointer<FlutterDesktopMessenger> FlutterDesktopEngineGetMessenger(
    Pointer<FlutterDesktopEngine> engine,
  ) {
    return _FlutterDesktopEngineGetMessenger(
      engine,
    );
  }

  late final _FlutterDesktopEngineGetMessengerPtr = _lookup<
          NativeFunction<
              Pointer<FlutterDesktopMessenger> Function(
                  Pointer<FlutterDesktopEngine>)>>(
      'FlutterDesktopEngineGetMessenger');
  late final _FlutterDesktopEngineGetMessenger =
      _FlutterDesktopEngineGetMessengerPtr.asFunction<
          Pointer<FlutterDesktopMessenger> Function(
              Pointer<FlutterDesktopEngine>)>();

  Pointer<FlutterDesktopTextureRegistrar>
      FlutterDesktopEngineGetTextureRegistrar(
    Pointer<FlutterDesktopTextureRegistrar> texture_registrar,
  ) {
    return _FlutterDesktopEngineGetTextureRegistrar(
      texture_registrar,
    );
  }

  late final _FlutterDesktopEngineGetTextureRegistrarPtr = _lookup<
          NativeFunction<
              Pointer<FlutterDesktopTextureRegistrar> Function(
                  Pointer<FlutterDesktopTextureRegistrar>)>>(
      'FlutterDesktopEngineGetTextureRegistrar');
  late final _FlutterDesktopEngineGetTextureRegistrar =
      _FlutterDesktopEngineGetTextureRegistrarPtr.asFunction<
          Pointer<FlutterDesktopTextureRegistrar> Function(
              Pointer<FlutterDesktopTextureRegistrar>)>();

  int FlutterDesktopViewGetHWND(
    Pointer<FlutterDesktopView> view,
  ) {
    return _FlutterDesktopViewGetHWND(
      view,
    );
  }

  late final _FlutterDesktopViewGetHWNDPtr =
      _lookup<NativeFunction<HWND Function(Pointer<FlutterDesktopView>)>>(
          'FlutterDesktopViewGetHWND');
  late final _FlutterDesktopViewGetHWND = _FlutterDesktopViewGetHWNDPtr
      .asFunction<int Function(Pointer<FlutterDesktopView>)>();

  Pointer<FlutterDesktopView> FlutterDesktopPluginRegistrarGetView(
    Pointer<FlutterDesktopPluginRegistrar> registrar,
  ) {
    return _FlutterDesktopPluginRegistrarGetView(
      registrar,
    );
  }

  late final _FlutterDesktopPluginRegistrarGetViewPtr = _lookup<
          NativeFunction<
              Pointer<FlutterDesktopView> Function(
                  Pointer<FlutterDesktopPluginRegistrar>)>>(
      'FlutterDesktopPluginRegistrarGetView');
  late final _FlutterDesktopPluginRegistrarGetView =
      _FlutterDesktopPluginRegistrarGetViewPtr.asFunction<
          Pointer<FlutterDesktopView> Function(
              Pointer<FlutterDesktopPluginRegistrar>)>();

  void FlutterDesktopPluginRegistrarRegisterTopLevelWindowProcDelegate(
    Pointer<FlutterDesktopPluginRegistrar> registrar,
    int delegate,
    Pointer<Void> user_data,
  ) {
    return _FlutterDesktopPluginRegistrarRegisterTopLevelWindowProcDelegate(
      registrar,
      delegate,
      user_data,
    );
  }

  late final _FlutterDesktopPluginRegistrarRegisterTopLevelWindowProcDelegatePtr =
      _lookup<
              NativeFunction<
                  Void Function(Pointer<FlutterDesktopPluginRegistrar>, Int32,
                      Pointer<Void>)>>(
          'FlutterDesktopPluginRegistrarRegisterTopLevelWindowProcDelegate');
  late final _FlutterDesktopPluginRegistrarRegisterTopLevelWindowProcDelegate =
      _FlutterDesktopPluginRegistrarRegisterTopLevelWindowProcDelegatePtr
          .asFunction<
              void Function(Pointer<FlutterDesktopPluginRegistrar>, int,
                  Pointer<Void>)>();

  void FlutterDesktopPluginRegistrarUnregisterTopLevelWindowProcDelegate(
    Pointer<FlutterDesktopPluginRegistrar> registrar,
    int delegate,
  ) {
    return _FlutterDesktopPluginRegistrarUnregisterTopLevelWindowProcDelegate(
      registrar,
      delegate,
    );
  }

  late final _FlutterDesktopPluginRegistrarUnregisterTopLevelWindowProcDelegatePtr =
      _lookup<
              NativeFunction<
                  Void Function(
                      Pointer<FlutterDesktopPluginRegistrar>, Int32)>>(
          'FlutterDesktopPluginRegistrarUnregisterTopLevelWindowProcDelegate');
  late final _FlutterDesktopPluginRegistrarUnregisterTopLevelWindowProcDelegate =
      _FlutterDesktopPluginRegistrarUnregisterTopLevelWindowProcDelegatePtr
          .asFunction<
              void Function(Pointer<FlutterDesktopPluginRegistrar>, int)>();

  int FlutterDesktopGetDpiForHWND(
    int hwnd,
  ) {
    return _FlutterDesktopGetDpiForHWND(
      hwnd,
    );
  }

  late final _FlutterDesktopGetDpiForHWNDPtr =
      _lookup<NativeFunction<UINT Function(HWND)>>(
          'FlutterDesktopGetDpiForHWND');
  late final _FlutterDesktopGetDpiForHWND =
      _FlutterDesktopGetDpiForHWNDPtr.asFunction<int Function(int)>();

  int FlutterDesktopGetDpiForMonitor(
    int monitor,
  ) {
    return _FlutterDesktopGetDpiForMonitor(
      monitor,
    );
  }

  late final _FlutterDesktopGetDpiForMonitorPtr =
      _lookup<NativeFunction<UINT Function(HMONITOR)>>(
          'FlutterDesktopGetDpiForMonitor');
  late final _FlutterDesktopGetDpiForMonitor =
      _FlutterDesktopGetDpiForMonitorPtr.asFunction<int Function(int)>();

  void FlutterDesktopResyncOutputStreams() {
    return _FlutterDesktopResyncOutputStreams();
  }

  late final _FlutterDesktopResyncOutputStreamsPtr =
      _lookup<NativeFunction<Void Function()>>(
          'FlutterDesktopResyncOutputStreams');
  late final _FlutterDesktopResyncOutputStreams =
      _FlutterDesktopResyncOutputStreamsPtr.asFunction<void Function()>();
}
