import 'dart:ffi' as ffi;
import 'package:win32/win32.dart';

typedef size_t = ffi.Uint64;
typedef rsize_t = size_t;
typedef wchar_t = ffi.Uint16;

class FlutterDesktopMessenger extends ffi.Opaque {}

class _FlutterPlatformMessageResponseHandle extends ffi.Opaque {}

class FlutterDesktopMessage extends ffi.Struct {
  @size_t()
  external int struct_size;

  external ffi.Pointer<ffi.Int8> channel;

  external ffi.Pointer<ffi.Uint8> message;

  @size_t()
  external int message_size;

  external ffi.Pointer<FlutterDesktopMessageResponseHandle> response_handle;
}

typedef FlutterDesktopMessageResponseHandle
    = _FlutterPlatformMessageResponseHandle;
typedef FlutterDesktopMessengerRef = ffi.Pointer<FlutterDesktopMessenger>;
typedef FlutterDesktopBinaryReply = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Void Function(
            ffi.Pointer<ffi.Uint8>, size_t, ffi.Pointer<ffi.Void>)>>;
typedef FlutterDesktopMessageCallback = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Void Function(FlutterDesktopMessengerRef,
            ffi.Pointer<FlutterDesktopMessage>, ffi.Pointer<ffi.Void>)>>;

class FlutterDesktopTextureRegistrar extends ffi.Opaque {}

abstract class FlutterDesktopTextureType {
  static const int kFlutterDesktopPixelBufferTexture = 0;
}

class FlutterDesktopPixelBuffer extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> buffer;

  @size_t()
  external int width;

  @size_t()
  external int height;

  external ffi
          .Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>
      release_callback;

  external ffi.Pointer<ffi.Void> release_context;
}

class FlutterDesktopPixelBufferTextureConfig extends ffi.Struct {
  external FlutterDesktopPixelBufferTextureCallback callback;

  external ffi.Pointer<ffi.Void> user_data;
}

typedef FlutterDesktopPixelBufferTextureCallback = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Pointer<FlutterDesktopPixelBuffer> Function(
            size_t, size_t, ffi.Pointer<ffi.Void>)>>;

class FlutterDesktopTextureInfo extends ffi.Struct {
  @ffi.Int32()
  external int type;
}

typedef FlutterDesktopTextureRegistrarRef
    = ffi.Pointer<FlutterDesktopTextureRegistrar>;

class FlutterDesktopPluginRegistrar extends ffi.Opaque {}

typedef FlutterDesktopPluginRegistrarRef
    = ffi.Pointer<FlutterDesktopPluginRegistrar>;
typedef FlutterDesktopOnPluginRegistrarDestroyed = ffi.Pointer<
    ffi.NativeFunction<ffi.Void Function(FlutterDesktopPluginRegistrarRef)>>;

class FlutterDesktopViewControllerState extends ffi.Opaque {}

class FlutterDesktopView extends ffi.Opaque {}

class FlutterDesktopEngine extends ffi.Opaque {}

class FlutterDesktopEngineProperties extends ffi.Struct {
  external ffi.Pointer<wchar_t> assets_path;

  external ffi.Pointer<wchar_t> icu_data_path;

  external ffi.Pointer<wchar_t> aot_library_path;

  @ffi.Int32()
  external int dart_entrypoint_argc;

  external ffi.Pointer<ffi.Pointer<ffi.Int8>> dart_entrypoint_argv;
}

typedef FlutterDesktopViewControllerRef
    = ffi.Pointer<FlutterDesktopViewControllerState>;
typedef FlutterDesktopEngineRef = ffi.Pointer<FlutterDesktopEngine>;
typedef FlutterDesktopViewRef = ffi.Pointer<FlutterDesktopView>;

/// Native API for Flutter Windows desktop engine `flutter_windows.h`
class FlutterEngineAPI {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  FlutterEngineAPI(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  FlutterEngineAPI.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  int FlutterDesktopMessengerSend(
    FlutterDesktopMessengerRef messenger,
    ffi.Pointer<ffi.Int8> channel,
    ffi.Pointer<ffi.Uint8> message,
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
      ffi.NativeFunction<
          ffi.Int32 Function(FlutterDesktopMessengerRef, ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Uint8>, size_t)>>('FlutterDesktopMessengerSend');
  late final _FlutterDesktopMessengerSend =
      _FlutterDesktopMessengerSendPtr.asFunction<
          int Function(FlutterDesktopMessengerRef, ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Uint8>, int)>();

  int FlutterDesktopMessengerSendWithReply(
    FlutterDesktopMessengerRef messenger,
    ffi.Pointer<ffi.Int8> channel,
    ffi.Pointer<ffi.Uint8> message,
    int message_size,
    FlutterDesktopBinaryReply reply,
    ffi.Pointer<ffi.Void> user_data,
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
      ffi.NativeFunction<
          ffi.Int32 Function(
              FlutterDesktopMessengerRef,
              ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Uint8>,
              size_t,
              FlutterDesktopBinaryReply,
              ffi.Pointer<ffi.Void>)>>('FlutterDesktopMessengerSendWithReply');
  late final _FlutterDesktopMessengerSendWithReply =
      _FlutterDesktopMessengerSendWithReplyPtr.asFunction<
          int Function(
              FlutterDesktopMessengerRef,
              ffi.Pointer<ffi.Int8>,
              ffi.Pointer<ffi.Uint8>,
              int,
              FlutterDesktopBinaryReply,
              ffi.Pointer<ffi.Void>)>();

  void FlutterDesktopMessengerSendResponse(
    FlutterDesktopMessengerRef messenger,
    ffi.Pointer<FlutterDesktopMessageResponseHandle> handle,
    ffi.Pointer<ffi.Uint8> data,
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
      ffi.NativeFunction<
          ffi.Void Function(
              FlutterDesktopMessengerRef,
              ffi.Pointer<FlutterDesktopMessageResponseHandle>,
              ffi.Pointer<ffi.Uint8>,
              size_t)>>('FlutterDesktopMessengerSendResponse');
  late final _FlutterDesktopMessengerSendResponse =
      _FlutterDesktopMessengerSendResponsePtr.asFunction<
          void Function(
              FlutterDesktopMessengerRef,
              ffi.Pointer<FlutterDesktopMessageResponseHandle>,
              ffi.Pointer<ffi.Uint8>,
              int)>();

  void FlutterDesktopMessengerSetCallback(
    FlutterDesktopMessengerRef messenger,
    ffi.Pointer<ffi.Int8> channel,
    FlutterDesktopMessageCallback callback,
    ffi.Pointer<ffi.Void> user_data,
  ) {
    return _FlutterDesktopMessengerSetCallback(
      messenger,
      channel,
      callback,
      user_data,
    );
  }

  late final _FlutterDesktopMessengerSetCallbackPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              FlutterDesktopMessengerRef,
              ffi.Pointer<ffi.Int8>,
              FlutterDesktopMessageCallback,
              ffi.Pointer<ffi.Void>)>>('FlutterDesktopMessengerSetCallback');
  late final _FlutterDesktopMessengerSetCallback =
      _FlutterDesktopMessengerSetCallbackPtr.asFunction<
          void Function(FlutterDesktopMessengerRef, ffi.Pointer<ffi.Int8>,
              FlutterDesktopMessageCallback, ffi.Pointer<ffi.Void>)>();

  int FlutterDesktopTextureRegistrarRegisterExternalTexture(
    FlutterDesktopTextureRegistrarRef texture_registrar,
    ffi.Pointer<FlutterDesktopTextureInfo> info,
  ) {
    return _FlutterDesktopTextureRegistrarRegisterExternalTexture(
      texture_registrar,
      info,
    );
  }

  late final _FlutterDesktopTextureRegistrarRegisterExternalTexturePtr =
      _lookup<
              ffi.NativeFunction<
                  ffi.Int64 Function(FlutterDesktopTextureRegistrarRef,
                      ffi.Pointer<FlutterDesktopTextureInfo>)>>(
          'FlutterDesktopTextureRegistrarRegisterExternalTexture');
  late final _FlutterDesktopTextureRegistrarRegisterExternalTexture =
      _FlutterDesktopTextureRegistrarRegisterExternalTexturePtr.asFunction<
          int Function(FlutterDesktopTextureRegistrarRef,
              ffi.Pointer<FlutterDesktopTextureInfo>)>();

  int FlutterDesktopTextureRegistrarUnregisterExternalTexture(
    FlutterDesktopTextureRegistrarRef texture_registrar,
    int texture_id,
  ) {
    return _FlutterDesktopTextureRegistrarUnregisterExternalTexture(
      texture_registrar,
      texture_id,
    );
  }

  late final _FlutterDesktopTextureRegistrarUnregisterExternalTexturePtr =
      _lookup<
              ffi.NativeFunction<
                  ffi.Int32 Function(
                      FlutterDesktopTextureRegistrarRef, ffi.Int64)>>(
          'FlutterDesktopTextureRegistrarUnregisterExternalTexture');
  late final _FlutterDesktopTextureRegistrarUnregisterExternalTexture =
      _FlutterDesktopTextureRegistrarUnregisterExternalTexturePtr.asFunction<
          int Function(FlutterDesktopTextureRegistrarRef, int)>();

  int FlutterDesktopTextureRegistrarMarkExternalTextureFrameAvailable(
    FlutterDesktopTextureRegistrarRef texture_registrar,
    int texture_id,
  ) {
    return _FlutterDesktopTextureRegistrarMarkExternalTextureFrameAvailable(
      texture_registrar,
      texture_id,
    );
  }

  late final _FlutterDesktopTextureRegistrarMarkExternalTextureFrameAvailablePtr =
      _lookup<
              ffi.NativeFunction<
                  ffi.Int32 Function(
                      FlutterDesktopTextureRegistrarRef, ffi.Int64)>>(
          'FlutterDesktopTextureRegistrarMarkExternalTextureFrameAvailable');
  late final _FlutterDesktopTextureRegistrarMarkExternalTextureFrameAvailable =
      _FlutterDesktopTextureRegistrarMarkExternalTextureFrameAvailablePtr
          .asFunction<int Function(FlutterDesktopTextureRegistrarRef, int)>();

  FlutterDesktopMessengerRef FlutterDesktopPluginRegistrarGetMessenger(
    FlutterDesktopPluginRegistrarRef registrar,
  ) {
    return _FlutterDesktopPluginRegistrarGetMessenger(
      registrar,
    );
  }

  late final _FlutterDesktopPluginRegistrarGetMessengerPtr = _lookup<
          ffi.NativeFunction<
              FlutterDesktopMessengerRef Function(
                  FlutterDesktopPluginRegistrarRef)>>(
      'FlutterDesktopPluginRegistrarGetMessenger');
  late final _FlutterDesktopPluginRegistrarGetMessenger =
      _FlutterDesktopPluginRegistrarGetMessengerPtr.asFunction<
          FlutterDesktopMessengerRef Function(
              FlutterDesktopPluginRegistrarRef)>();

  FlutterDesktopTextureRegistrarRef FlutterDesktopRegistrarGetTextureRegistrar(
    FlutterDesktopPluginRegistrarRef registrar,
  ) {
    return _FlutterDesktopRegistrarGetTextureRegistrar(
      registrar,
    );
  }

  late final _FlutterDesktopRegistrarGetTextureRegistrarPtr = _lookup<
          ffi.NativeFunction<
              FlutterDesktopTextureRegistrarRef Function(
                  FlutterDesktopPluginRegistrarRef)>>(
      'FlutterDesktopRegistrarGetTextureRegistrar');
  late final _FlutterDesktopRegistrarGetTextureRegistrar =
      _FlutterDesktopRegistrarGetTextureRegistrarPtr.asFunction<
          FlutterDesktopTextureRegistrarRef Function(
              FlutterDesktopPluginRegistrarRef)>();

  void FlutterDesktopPluginRegistrarSetDestructionHandler(
    FlutterDesktopPluginRegistrarRef registrar,
    FlutterDesktopOnPluginRegistrarDestroyed callback,
  ) {
    return _FlutterDesktopPluginRegistrarSetDestructionHandler(
      registrar,
      callback,
    );
  }

  late final _FlutterDesktopPluginRegistrarSetDestructionHandlerPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(FlutterDesktopPluginRegistrarRef,
                  FlutterDesktopOnPluginRegistrarDestroyed)>>(
      'FlutterDesktopPluginRegistrarSetDestructionHandler');
  late final _FlutterDesktopPluginRegistrarSetDestructionHandler =
      _FlutterDesktopPluginRegistrarSetDestructionHandlerPtr.asFunction<
          void Function(FlutterDesktopPluginRegistrarRef,
              FlutterDesktopOnPluginRegistrarDestroyed)>();

  /// ! WINUWP
  FlutterDesktopViewControllerRef FlutterDesktopViewControllerCreate(
    int width,
    int height,
    FlutterDesktopEngineRef engine,
  ) {
    return _FlutterDesktopViewControllerCreate(
      width,
      height,
      engine,
    );
  }

  late final _FlutterDesktopViewControllerCreatePtr = _lookup<
      ffi.NativeFunction<
          FlutterDesktopViewControllerRef Function(ffi.Int32, ffi.Int32,
              FlutterDesktopEngineRef)>>('FlutterDesktopViewControllerCreate');
  late final _FlutterDesktopViewControllerCreate =
      _FlutterDesktopViewControllerCreatePtr.asFunction<
          FlutterDesktopViewControllerRef Function(
              int, int, FlutterDesktopEngineRef)>();

  void FlutterDesktopViewControllerDestroy(
    FlutterDesktopViewControllerRef controller,
  ) {
    return _FlutterDesktopViewControllerDestroy(
      controller,
    );
  }

  late final _FlutterDesktopViewControllerDestroyPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(FlutterDesktopViewControllerRef)>>(
      'FlutterDesktopViewControllerDestroy');
  late final _FlutterDesktopViewControllerDestroy =
      _FlutterDesktopViewControllerDestroyPtr.asFunction<
          void Function(FlutterDesktopViewControllerRef)>();

  FlutterDesktopEngineRef FlutterDesktopViewControllerGetEngine(
    FlutterDesktopViewControllerRef controller,
  ) {
    return _FlutterDesktopViewControllerGetEngine(
      controller,
    );
  }

  late final _FlutterDesktopViewControllerGetEnginePtr = _lookup<
          ffi.NativeFunction<
              FlutterDesktopEngineRef Function(
                  FlutterDesktopViewControllerRef)>>(
      'FlutterDesktopViewControllerGetEngine');
  late final _FlutterDesktopViewControllerGetEngine =
      _FlutterDesktopViewControllerGetEnginePtr.asFunction<
          FlutterDesktopEngineRef Function(FlutterDesktopViewControllerRef)>();

  FlutterDesktopViewRef FlutterDesktopViewControllerGetView(
    FlutterDesktopViewControllerRef controller,
  ) {
    return _FlutterDesktopViewControllerGetView(
      controller,
    );
  }

  late final _FlutterDesktopViewControllerGetViewPtr = _lookup<
          ffi.NativeFunction<
              FlutterDesktopViewRef Function(FlutterDesktopViewControllerRef)>>(
      'FlutterDesktopViewControllerGetView');
  late final _FlutterDesktopViewControllerGetView =
      _FlutterDesktopViewControllerGetViewPtr.asFunction<
          FlutterDesktopViewRef Function(FlutterDesktopViewControllerRef)>();

  void FlutterDesktopViewControllerForceRedraw(
    FlutterDesktopViewControllerRef controller,
  ) {
    return _FlutterDesktopViewControllerForceRedraw(
      controller,
    );
  }

  late final _FlutterDesktopViewControllerForceRedrawPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(FlutterDesktopViewControllerRef)>>(
      'FlutterDesktopViewControllerForceRedraw');
  late final _FlutterDesktopViewControllerForceRedraw =
      _FlutterDesktopViewControllerForceRedrawPtr.asFunction<
          void Function(FlutterDesktopViewControllerRef)>();

  int FlutterDesktopViewControllerHandleTopLevelWindowProc(
    FlutterDesktopViewControllerRef controller,
    int hwnd,
    int message,
    int wparam,
    int lparam,
    ffi.Pointer<LRESULT> result,
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
          ffi.NativeFunction<
              ffi.Int32 Function(FlutterDesktopViewControllerRef, HWND, UINT,
                  WPARAM, LPARAM, ffi.Pointer<LRESULT>)>>(
      'FlutterDesktopViewControllerHandleTopLevelWindowProc');
  late final _FlutterDesktopViewControllerHandleTopLevelWindowProc =
      _FlutterDesktopViewControllerHandleTopLevelWindowProcPtr.asFunction<
          int Function(FlutterDesktopViewControllerRef, int, int, int, int,
              ffi.Pointer<LRESULT>)>();

  FlutterDesktopEngineRef FlutterDesktopEngineCreate(
    ffi.Pointer<FlutterDesktopEngineProperties> engine_properties,
  ) {
    return _FlutterDesktopEngineCreate(
      engine_properties,
    );
  }

  late final _FlutterDesktopEngineCreatePtr = _lookup<
          ffi.NativeFunction<
              FlutterDesktopEngineRef Function(
                  ffi.Pointer<FlutterDesktopEngineProperties>)>>(
      'FlutterDesktopEngineCreate');
  late final _FlutterDesktopEngineCreate =
      _FlutterDesktopEngineCreatePtr.asFunction<
          FlutterDesktopEngineRef Function(
              ffi.Pointer<FlutterDesktopEngineProperties>)>();

  int FlutterDesktopEngineDestroy(
    FlutterDesktopEngineRef engine,
  ) {
    return _FlutterDesktopEngineDestroy(
      engine,
    );
  }

  late final _FlutterDesktopEngineDestroyPtr =
      _lookup<ffi.NativeFunction<ffi.Int32 Function(FlutterDesktopEngineRef)>>(
          'FlutterDesktopEngineDestroy');
  late final _FlutterDesktopEngineDestroy = _FlutterDesktopEngineDestroyPtr
      .asFunction<int Function(FlutterDesktopEngineRef)>();

  int FlutterDesktopEngineRun(
    FlutterDesktopEngineRef engine,
    ffi.Pointer<ffi.Int8> entry_point,
  ) {
    return _FlutterDesktopEngineRun(
      engine,
      entry_point,
    );
  }

  late final _FlutterDesktopEngineRunPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(FlutterDesktopEngineRef,
              ffi.Pointer<ffi.Int8>)>>('FlutterDesktopEngineRun');
  late final _FlutterDesktopEngineRun = _FlutterDesktopEngineRunPtr.asFunction<
      int Function(FlutterDesktopEngineRef, ffi.Pointer<ffi.Int8>)>();

  int FlutterDesktopEngineProcessMessages(
    FlutterDesktopEngineRef engine,
  ) {
    return _FlutterDesktopEngineProcessMessages(
      engine,
    );
  }

  late final _FlutterDesktopEngineProcessMessagesPtr =
      _lookup<ffi.NativeFunction<ffi.Uint64 Function(FlutterDesktopEngineRef)>>(
          'FlutterDesktopEngineProcessMessages');
  late final _FlutterDesktopEngineProcessMessages =
      _FlutterDesktopEngineProcessMessagesPtr.asFunction<
          int Function(FlutterDesktopEngineRef)>();

  void FlutterDesktopEngineReloadSystemFonts(
    FlutterDesktopEngineRef engine,
  ) {
    return _FlutterDesktopEngineReloadSystemFonts(
      engine,
    );
  }

  late final _FlutterDesktopEngineReloadSystemFontsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(FlutterDesktopEngineRef)>>(
          'FlutterDesktopEngineReloadSystemFonts');
  late final _FlutterDesktopEngineReloadSystemFonts =
      _FlutterDesktopEngineReloadSystemFontsPtr.asFunction<
          void Function(FlutterDesktopEngineRef)>();

  void FlutterDesktopEngineReloadPlatformBrightness(
    FlutterDesktopEngineRef engine,
  ) {
    return _FlutterDesktopEngineReloadPlatformBrightness(
      engine,
    );
  }

  late final _FlutterDesktopEngineReloadPlatformBrightnessPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(FlutterDesktopEngineRef)>>(
          'FlutterDesktopEngineReloadPlatformBrightness');
  late final _FlutterDesktopEngineReloadPlatformBrightness =
      _FlutterDesktopEngineReloadPlatformBrightnessPtr.asFunction<
          void Function(FlutterDesktopEngineRef)>();

  FlutterDesktopPluginRegistrarRef FlutterDesktopEngineGetPluginRegistrar(
    FlutterDesktopEngineRef engine,
    ffi.Pointer<ffi.Int8> plugin_name,
  ) {
    return _FlutterDesktopEngineGetPluginRegistrar(
      engine,
      plugin_name,
    );
  }

  late final _FlutterDesktopEngineGetPluginRegistrarPtr = _lookup<
          ffi.NativeFunction<
              FlutterDesktopPluginRegistrarRef Function(
                  FlutterDesktopEngineRef, ffi.Pointer<ffi.Int8>)>>(
      'FlutterDesktopEngineGetPluginRegistrar');
  late final _FlutterDesktopEngineGetPluginRegistrar =
      _FlutterDesktopEngineGetPluginRegistrarPtr.asFunction<
          FlutterDesktopPluginRegistrarRef Function(
              FlutterDesktopEngineRef, ffi.Pointer<ffi.Int8>)>();

  FlutterDesktopMessengerRef FlutterDesktopEngineGetMessenger(
    FlutterDesktopEngineRef engine,
  ) {
    return _FlutterDesktopEngineGetMessenger(
      engine,
    );
  }

  late final _FlutterDesktopEngineGetMessengerPtr = _lookup<
      ffi.NativeFunction<
          FlutterDesktopMessengerRef Function(
              FlutterDesktopEngineRef)>>('FlutterDesktopEngineGetMessenger');
  late final _FlutterDesktopEngineGetMessenger =
      _FlutterDesktopEngineGetMessengerPtr.asFunction<
          FlutterDesktopMessengerRef Function(FlutterDesktopEngineRef)>();

  FlutterDesktopTextureRegistrarRef FlutterDesktopEngineGetTextureRegistrar(
    FlutterDesktopTextureRegistrarRef texture_registrar,
  ) {
    return _FlutterDesktopEngineGetTextureRegistrar(
      texture_registrar,
    );
  }

  late final _FlutterDesktopEngineGetTextureRegistrarPtr = _lookup<
          ffi.NativeFunction<
              FlutterDesktopTextureRegistrarRef Function(
                  FlutterDesktopTextureRegistrarRef)>>(
      'FlutterDesktopEngineGetTextureRegistrar');
  late final _FlutterDesktopEngineGetTextureRegistrar =
      _FlutterDesktopEngineGetTextureRegistrarPtr.asFunction<
          FlutterDesktopTextureRegistrarRef Function(
              FlutterDesktopTextureRegistrarRef)>();

  int FlutterDesktopViewGetHWND(
    FlutterDesktopViewRef view,
  ) {
    return _FlutterDesktopViewGetHWND(
      view,
    );
  }

  late final _FlutterDesktopViewGetHWNDPtr =
      _lookup<ffi.NativeFunction<HWND Function(FlutterDesktopViewRef)>>(
          'FlutterDesktopViewGetHWND');
  late final _FlutterDesktopViewGetHWND = _FlutterDesktopViewGetHWNDPtr
      .asFunction<int Function(FlutterDesktopViewRef)>();

  FlutterDesktopViewRef FlutterDesktopPluginRegistrarGetView(
    FlutterDesktopPluginRegistrarRef registrar,
  ) {
    return _FlutterDesktopPluginRegistrarGetView(
      registrar,
    );
  }

  late final _FlutterDesktopPluginRegistrarGetViewPtr = _lookup<
          ffi.NativeFunction<
              FlutterDesktopViewRef Function(
                  FlutterDesktopPluginRegistrarRef)>>(
      'FlutterDesktopPluginRegistrarGetView');
  late final _FlutterDesktopPluginRegistrarGetView =
      _FlutterDesktopPluginRegistrarGetViewPtr.asFunction<
          FlutterDesktopViewRef Function(FlutterDesktopPluginRegistrarRef)>();

  void FlutterDesktopPluginRegistrarRegisterTopLevelWindowProcDelegate(
    FlutterDesktopPluginRegistrarRef registrar,
    int delegate,
    ffi.Pointer<ffi.Void> user_data,
  ) {
    return _FlutterDesktopPluginRegistrarRegisterTopLevelWindowProcDelegate(
      registrar,
      delegate,
      user_data,
    );
  }

  late final _FlutterDesktopPluginRegistrarRegisterTopLevelWindowProcDelegatePtr =
      _lookup<
              ffi.NativeFunction<
                  ffi.Void Function(FlutterDesktopPluginRegistrarRef, ffi.Int32,
                      ffi.Pointer<ffi.Void>)>>(
          'FlutterDesktopPluginRegistrarRegisterTopLevelWindowProcDelegate');
  late final _FlutterDesktopPluginRegistrarRegisterTopLevelWindowProcDelegate =
      _FlutterDesktopPluginRegistrarRegisterTopLevelWindowProcDelegatePtr
          .asFunction<
              void Function(FlutterDesktopPluginRegistrarRef, int,
                  ffi.Pointer<ffi.Void>)>();

  void FlutterDesktopPluginRegistrarUnregisterTopLevelWindowProcDelegate(
    FlutterDesktopPluginRegistrarRef registrar,
    int delegate,
  ) {
    return _FlutterDesktopPluginRegistrarUnregisterTopLevelWindowProcDelegate(
      registrar,
      delegate,
    );
  }

  late final _FlutterDesktopPluginRegistrarUnregisterTopLevelWindowProcDelegatePtr =
      _lookup<
              ffi.NativeFunction<
                  ffi.Void Function(
                      FlutterDesktopPluginRegistrarRef, ffi.Int32)>>(
          'FlutterDesktopPluginRegistrarUnregisterTopLevelWindowProcDelegate');
  late final _FlutterDesktopPluginRegistrarUnregisterTopLevelWindowProcDelegate =
      _FlutterDesktopPluginRegistrarUnregisterTopLevelWindowProcDelegatePtr
          .asFunction<void Function(FlutterDesktopPluginRegistrarRef, int)>();

  int FlutterDesktopGetDpiForHWND(
    int hwnd,
  ) {
    return _FlutterDesktopGetDpiForHWND(
      hwnd,
    );
  }

  late final _FlutterDesktopGetDpiForHWNDPtr =
      _lookup<ffi.NativeFunction<UINT Function(HWND)>>(
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
      _lookup<ffi.NativeFunction<UINT Function(HMONITOR)>>(
          'FlutterDesktopGetDpiForMonitor');
  late final _FlutterDesktopGetDpiForMonitor =
      _FlutterDesktopGetDpiForMonitorPtr.asFunction<int Function(int)>();

  void FlutterDesktopResyncOutputStreams() {
    return _FlutterDesktopResyncOutputStreams();
  }

  late final _FlutterDesktopResyncOutputStreamsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>(
          'FlutterDesktopResyncOutputStreams');
  late final _FlutterDesktopResyncOutputStreams =
      _FlutterDesktopResyncOutputStreamsPtr.asFunction<void Function()>();
}
