// Dart FFI wrapper functions for the Flutter Engine API.

// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'package:win32/win32.dart';

/* ******************************* CONSTANTS ******************************* */

/// Possible values for the type specified in [FlutterDesktopTextureInfo].
/// Additional types may be added in the future.
abstract class FlutterDesktopTextureType {
  /// A pixel buffer-based texture.
  static const int kFlutterDesktopPixelBufferTexture = 0;
}

/* ******************************* CALLBACKS ******************************* */

/// The callback expected as a response of a binary message.
typedef FlutterDesktopBinaryReply
    = Pointer<NativeFunction<Void Function(Pointer<Uint8>, UintPtr, Pointer)>>;

/// Function pointer type for message handler callback registration.
///
/// The user data will be whatever was passed to
/// [FlutterDesktopSetMessageHandler] for the channel the message is received
/// on.
typedef FlutterDesktopMessageCallback = Pointer<
    NativeFunction<
        Void Function(Pointer<FlutterDesktopMessenger>,
            Pointer<FlutterDesktopMessage>, Pointer)>>;

/// The pixel buffer copy callback definition provided to the Flutter engine to
/// copy the texture. It is invoked with the intended surface size specified by
/// `width` and `height` and the `user_data` held by
/// [FlutterDesktopPixelBufferTextureConfig].
///
/// As this is usually called from the render thread, the callee must take care
/// of proper synchronization. It also needs to be ensured that the returned
/// [FlutterDesktopPixelBuffer] isn't released prior to unregistering the
/// corresponding texture.
typedef FlutterDesktopPixelBufferTextureCallback = Pointer<
    NativeFunction<
        Pointer<FlutterDesktopPixelBuffer> Function(
            UintPtr, UintPtr, Pointer)>>;

/// Registers a callback to be called when the plugin registrar is destroyed.
typedef FlutterDesktopOnPluginRegistrarDestroyed = Pointer<
    NativeFunction<Void Function(Pointer<FlutterDesktopPluginRegistrar>)>>;

/* ******************************** STRUCTS ******************************** */

/// Opaque reference to a Flutter window controller.
class FlutterDesktopViewControllerState extends Opaque {}

/// Opaque reference to a Flutter engine messenger.
class FlutterDesktopMessenger extends Opaque {}

/// Opaque handle for tracking responses to messages.
class FlutterDesktopMessageResponseHandle extends Opaque {}

/// Opaque reference to a Flutter window.
class FlutterDesktopView extends Opaque {}

/// Opaque reference to a plugin registrar.
class FlutterDesktopPluginRegistrar extends Opaque {}

/// Opaque reference to a Flutter engine instance.
class FlutterDesktopEngine extends Opaque {}

/// Opaque reference to a texture registrar.
class FlutterDesktopTextureRegistrar extends Opaque {}

/// A message received from Flutter.
class FlutterDesktopMessage extends Struct {
  /// Size of this struct as created by Flutter.
  @UintPtr()
  external int struct_size;

  /// The name of the channel used for this message.
  external Pointer<Int8> channel;

  /// The raw message data.
  external Pointer<Uint8> message;

  /// The length of `message`.
  @UintPtr()
  external int message_size;

  /// The response handle. If non-null, the receiver of this message must call
  /// [FlutterDesktopSendMessageResponse] exactly once with this handle.
  external Pointer<FlutterDesktopMessageResponseHandle> response_handle;
}

/// An image buffer object.
class FlutterDesktopPixelBuffer extends Struct {
  /// The pixel data buffer.
  external Pointer<Uint8> buffer;

  /// Width of the pixel buffer.
  @UintPtr()
  external int width;

  /// Height of the pixel buffer.
  @UintPtr()
  external int height;

  /// An optional callback that gets invoked when the `buffer` can be released.
  external Pointer<NativeFunction<Void Function(Pointer)>> release_callback;

  /// Opaque data passed to `release_callback`.
  external Pointer release_context;
}

/// An object used to configure pixel buffer textures.
class FlutterDesktopPixelBufferTextureConfig extends Struct {
  /// The callback used by the engine to copy the pixel buffer object.
  external FlutterDesktopPixelBufferTextureCallback callback;

  /// Opaque data that will get passed to the provided [callback].
  external Pointer user_data;
}

class FlutterDesktopTextureInfo extends Struct {
  @Int32()
  external int type;
}

/// Properties for configuring a Flutter engine instance.
class FlutterDesktopEngineProperties extends Struct {
  /// The path to the `flutter_assets` folder for the application to be run.
  /// This can either be an absolute path or a path relative to the directory
  /// containing the executable.
  external Pointer<Utf16> assets_path;

  /// The path to the `icudtl.dat` file for the version of Flutter you are
  /// using. This can either be an absolute path or a path relative to the
  /// directory containing the executable.
  external Pointer<Utf16> icu_data_path;

  /// The path to the AOT library file for your application, if any. This can
  /// either be an absolute path or a path relative to the directory containing
  /// the executable. This can be `nullptr` for a non-AOT build, as it will be
  /// ignored in that case.
  external Pointer<Utf16> aot_library_path;

  /// Number of elements in the array passed in as [dart_entrypoint_argv].
  @Int32()
  external int dart_entrypoint_argc;

  /// Array of Dart entrypoint arguments. This is deep copied during the call to
  /// [FlutterDesktopEngineCreate].
  external Pointer<Pointer<Int8>> dart_entrypoint_argv;
}

/* ******************************* FUNCTIONS ******************************* */

/// Native API for the Flutter desktop embedder API.
class FlutterEngineLibrary {
  /// Holds the symbol lookup function.
  final Pointer<T> Function<T extends NativeType>(String symbolName) _lookup;

  /// The symbols are looked up in `dynamicLibrary`.
  FlutterEngineLibrary(DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with `lookup`.
  FlutterEngineLibrary.fromLookup(
      Pointer<T> Function<T extends NativeType>(String symbolName) lookup)
      : _lookup = lookup;

  /// Sends a binary message to the Flutter side on the specified channel.
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

  /// Sends a binary message to the Flutter side on the specified channel.
  int FlutterDesktopMessengerSendWithReply(
    Pointer<FlutterDesktopMessenger> messenger,
    Pointer<Int8> channel,
    Pointer<Uint8> message,
    int message_size,
    FlutterDesktopBinaryReply reply,
    Pointer user_data,
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
              Pointer)>>('FlutterDesktopMessengerSendWithReply');
  late final _FlutterDesktopMessengerSendWithReply =
      _FlutterDesktopMessengerSendWithReplyPtr.asFunction<
          int Function(Pointer<FlutterDesktopMessenger>, Pointer<Int8>,
              Pointer<Uint8>, int, FlutterDesktopBinaryReply, Pointer)>();

  /// Sends a reply to a [FlutterDesktopMessage] for the given response handle.
  ///
  /// Once this has been called, `handle` is invalid and must not be used again.
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

  /// Registers a callback function for incoming binary messages from the
  /// Flutter side on the specified channel.
  ///
  /// Replaces any existing callback. Provide a null handler to unregister the
  /// existing callback.
  ///
  /// If `user_data` is provided, it will be passed in `callback` calls.
  void FlutterDesktopMessengerSetCallback(
    Pointer<FlutterDesktopMessenger> messenger,
    Pointer<Int8> channel,
    FlutterDesktopMessageCallback callback,
    Pointer user_data,
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
              Pointer)>>('FlutterDesktopMessengerSetCallback');
  late final _FlutterDesktopMessengerSetCallback =
      _FlutterDesktopMessengerSetCallbackPtr.asFunction<
          void Function(Pointer<FlutterDesktopMessenger>, Pointer<Int8>,
              FlutterDesktopMessageCallback, Pointer)>();

  /// Registers a new texture with the Flutter engine and returns the texture
  /// ID. This function can be called from any thread.
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

  /// Unregisters an existing texture from the Flutter engine for a
  /// `texture_id`. Returns true on success or false if the specified texture
  /// doesn't exist. This function can be called from any thread. However,
  /// textures must not be unregistered while they're in use.
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

  /// Marks that a new texture frame is available for a given `texture_id`.
  /// Returns true on success or false if the specified texture doesn't exist.
  /// This function can be called from any thread.
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

  /// Returns the engine messenger associated with this registrar.
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

  /// Returns the texture registrar associated with this registrar.
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

  /// Registers a callback to be called when the plugin registrar is destroyed.
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

  /// Creates a view that hosts and displays the given engine instance.
  ///
  /// This takes ownership of `engine`, so [FlutterDesktopEngineDestroy] should
  /// no longer be called on it, as it will be called internally when the view
  /// controller is destroyed. If creating the view controller fails, the engine
  /// will be destroyed immediately.
  ///
  /// If `engine` is not already running, the view controller will start running
  /// it automatically before displaying the window.
  ///
  /// The caller owns the returned reference, and is responsible for calling
  /// [FlutterDesktopViewControllerDestroy]. Returns a null pointer in the event
  /// of an error.
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

  /// Shuts down the engine instance associated with `controller`, and cleans up
  /// associated state.
  ///
  /// `controller` is no longer valid after this call.
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

  /// Returns the handle for the engine running in
  /// [FlutterDesktopViewControllerRef].
  ///
  /// Its lifetime is the same as the `controller`'s.
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

  /// Returns the view managed by the given controller.
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

  /// Requests new frame from engine and repaints the view
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

  /// Allows the Flutter engine and any interested plugins an opportunity to
  /// handle the given message.
  ///
  /// If the `WindowProc` was handled and further handling should stop, this
  /// returns `true` and `result` will be populated. `result` is not set if
  /// returning `false`.
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

  /// Creates a Flutter engine with the given properties.
  ///
  /// The caller owns the returned reference, and is responsible for calling
  /// [FlutterDesktopEngineDestroy]. The lifetime of `engine_properties` is
  /// required to extend only until the end of this call.
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

  /// Shuts down and destroys the given engine instance. Returns true if the
  /// shutdown was successful, or if the engine was not running.
  ///
  /// `engine` is no longer valid after this call.
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

  /// Starts running the given engine instance and optional entry point in the
  /// Dart project. If the entry point is null, defaults to main().
  ///
  /// If provided, entry_point must be the name of a top-level function from the
  /// same Dart library that contains the app's `main()` function, and must be
  /// decorated with `@pragma(vm:entry-point)` to ensure the method is not
  /// tree-shaken by the Dart compiler.
  ///
  /// Returns `false` if running the engine failed.
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

  /// Processes any pending events in the Flutter engine, and returns the number
  /// of nanoseconds until the next scheduled event (or max, if none).
  ///
  /// This should be called on every run of the application-level runloop, and a
  /// wait for native events in the runloop should never be longer than the last
  /// return value from this function.
  @Deprecated('This is no longer necessary to call, Flutter will take care of'
      'processing engine messages transparently through DispatchMessage.')
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

  /// Returns the plugin registrar handle for the plugin with the given name.
  ///
  /// The name must be unique across the application.
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

  /// Returns the messenger associated with the engine.
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

  /// Returns the texture registrar associated with the engine.
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

  /// Return backing `HWND` for manipulation in host application.
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

  /// Returns the view associated with this registrar's engine instance.
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
    Pointer user_data,
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
                  Void Function(
                      Pointer<FlutterDesktopPluginRegistrar>, Int32, Pointer)>>(
          'FlutterDesktopPluginRegistrarRegisterTopLevelWindowProcDelegate');
  late final _FlutterDesktopPluginRegistrarRegisterTopLevelWindowProcDelegate =
      _FlutterDesktopPluginRegistrarRegisterTopLevelWindowProcDelegatePtr
          .asFunction<
              void Function(
                  Pointer<FlutterDesktopPluginRegistrar>, int, Pointer)>();

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

  /// Gets the DPI for a given `hwnd`, depending on the supported APIs per
  /// windows version and DPI awareness mode. If nullptr is passed, returns the
  /// DPI of the primary monitor.
  ///
  /// This uses the same logic and fallback for older Windows versions that is
  /// used internally by Flutter to determine the DPI to use for displaying
  /// Flutter content, so should be used by any code (e.g., in plugins) that
  /// translates between Windows and Dart sizes/offsets.
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

  /// Gets the DPI for a given `monitor`. If the API is not available, a default
  /// DPI of 96 is returned.
  ///
  /// See [FlutterDesktopGetDpiForHWND] for more information.
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

  /// Reopens stdout and stderr and resyncs the standard library output streams.
  /// Should be called if output is being directed somewhere in the runner
  /// process (e.g., after an `AllocConsole` call).
  void FlutterDesktopResyncOutputStreams() {
    return _FlutterDesktopResyncOutputStreams();
  }

  late final _FlutterDesktopResyncOutputStreamsPtr =
      _lookup<NativeFunction<Void Function()>>(
          'FlutterDesktopResyncOutputStreams');
  late final _FlutterDesktopResyncOutputStreams =
      _FlutterDesktopResyncOutputStreamsPtr.asFunction<void Function()>();
}
