// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/iunknown.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAudioClient = Guid.fromComponents(
  0x1cb9ad4c,
  0xdbfa,
  0x4c32,
  Uint8List.fromList(const [0xb1, 0x78, 0xc2, 0xf5, 0x68, 0xa7, 0x3, 0xb2]),
);

/// Enables a client to create and initialize an audio stream between an audio
/// application and the audio engine (for a shared-mode stream) or the hardware
/// buffer of an audio endpoint device (for an exclusive-mode stream).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudioclient>.
///
/// {@category com}
class IAudioClient extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAudioClient] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAudioClient] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAudioClient(super.ptr) : _vtable = ptr.value.cast<IAudioClientVtbl>().ref;

  /// Creates a new instance of [IAudioClient] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAudioClient] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioClient.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAudioClientVtbl _vtable;
  late final _InitializeFn =
      _vtable.Initialize.asFunction<
        int Function(
          VTablePointer,
          int,
          int,
          int,
          int,
          Pointer<WAVEFORMATEX>,
          Pointer<GUID>,
        )
      >();
  late final _GetBufferSizeFn = _vtable
      .GetBufferSize.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _GetStreamLatencyFn =
      _vtable.GetStreamLatency.asFunction<
        int Function(VTablePointer, Pointer<Int64>)
      >();
  late final _GetCurrentPaddingFn =
      _vtable.GetCurrentPadding.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();
  late final _IsFormatSupportedFn =
      _vtable.IsFormatSupported.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<WAVEFORMATEX>,
          Pointer<Pointer<WAVEFORMATEX>>,
        )
      >();
  late final _GetMixFormatFn =
      _vtable.GetMixFormat.asFunction<
        int Function(VTablePointer, Pointer<Pointer<WAVEFORMATEX>>)
      >();
  late final _GetDevicePeriodFn =
      _vtable.GetDevicePeriod.asFunction<
        int Function(VTablePointer, Pointer<Int64>, Pointer<Int64>)
      >();
  late final _StartFn = _vtable.Start.asFunction<int Function(VTablePointer)>();
  late final _StopFn = _vtable.Stop.asFunction<int Function(VTablePointer)>();
  late final _ResetFn = _vtable.Reset.asFunction<int Function(VTablePointer)>();
  late final _SetEventHandleFn =
      _vtable.SetEventHandle.asFunction<int Function(VTablePointer, int)>();
  late final _GetServiceFn =
      _vtable.GetService.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<Pointer>)
      >();

  /// Initializes the audio stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient-initialize>.
  @pragma('vm:prefer-inline')
  void initialize(
    AUDCLNT_SHAREMODE shareMode,
    int streamFlags,
    int hnsBufferDuration,
    int hnsPeriodicity,
    Pointer<WAVEFORMATEX> pFormat,
    Pointer<GUID>? audioSessionGuid,
  ) {
    final hr$ = HRESULT(
      _InitializeFn(
        ptr,
        shareMode,
        streamFlags,
        hnsBufferDuration,
        hnsPeriodicity,
        pFormat,
        audioSessionGuid ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the size (maximum capacity) of the endpoint buffer.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient-getbuffersize>.
  int getBufferSize() {
    final pNumBufferFrames = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetBufferSizeFn(ptr, pNumBufferFrames));
    if (hr$.isError) {
      free(pNumBufferFrames);
      throw WindowsException(hr$);
    }
    final result$ = pNumBufferFrames.value;
    free(pNumBufferFrames);
    return result$;
  }

  /// Retrieves the maximum latency for the current stream and can be called any
  /// time after the stream has been initialized.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient-getstreamlatency>.
  int getStreamLatency() {
    final phnsLatency = loggingCalloc<Int64>();
    final hr$ = HRESULT(_GetStreamLatencyFn(ptr, phnsLatency));
    if (hr$.isError) {
      free(phnsLatency);
      throw WindowsException(hr$);
    }
    final result$ = phnsLatency.value;
    free(phnsLatency);
    return result$;
  }

  /// Retrieves the number of frames of padding in the endpoint buffer.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient-getcurrentpadding>.
  int getCurrentPadding() {
    final pNumPaddingFrames = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetCurrentPaddingFn(ptr, pNumPaddingFrames));
    if (hr$.isError) {
      free(pNumPaddingFrames);
      throw WindowsException(hr$);
    }
    final result$ = pNumPaddingFrames.value;
    free(pNumPaddingFrames);
    return result$;
  }

  /// Indicates whether the audio endpoint device supports a particular stream
  /// format.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient-isformatsupported>.
  @pragma('vm:prefer-inline')
  HRESULT isFormatSupported(
    AUDCLNT_SHAREMODE shareMode,
    Pointer<WAVEFORMATEX> pFormat,
    Pointer<Pointer<WAVEFORMATEX>>? ppClosestMatch,
  ) => HRESULT(
    _IsFormatSupportedFn(ptr, shareMode, pFormat, ppClosestMatch ?? nullptr),
  );

  /// Retrieves the stream format that the audio engine uses for its internal
  /// processing of shared-mode streams.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient-getmixformat>.
  Pointer<WAVEFORMATEX> getMixFormat() {
    final ppDeviceFormat = loggingCalloc<Pointer<WAVEFORMATEX>>();
    final hr$ = HRESULT(_GetMixFormatFn(ptr, ppDeviceFormat));
    if (hr$.isError) {
      free(ppDeviceFormat);
      throw WindowsException(hr$);
    }
    final result$ = ppDeviceFormat.value;
    free(ppDeviceFormat);
    return result$;
  }

  /// Retrieves the length of the periodic interval separating successive
  /// processing passes by the audio engine on the data in the endpoint buffer.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient-getdeviceperiod>.
  @pragma('vm:prefer-inline')
  void getDevicePeriod(
    Pointer<Int64>? phnsDefaultDevicePeriod,
    Pointer<Int64>? phnsMinimumDevicePeriod,
  ) {
    final hr$ = HRESULT(
      _GetDevicePeriodFn(
        ptr,
        phnsDefaultDevicePeriod ?? nullptr,
        phnsMinimumDevicePeriod ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Starts the audio stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient-start>.
  @pragma('vm:prefer-inline')
  void start() {
    final hr$ = HRESULT(_StartFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Stops the audio stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient-stop>.
  @pragma('vm:prefer-inline')
  void stop() {
    final hr$ = HRESULT(_StopFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Resets the audio stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient-reset>.
  @pragma('vm:prefer-inline')
  void reset() {
    final hr$ = HRESULT(_ResetFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the event handle that the system signals when an audio buffer is
  /// ready to be processed by the client.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient-seteventhandle>.
  @pragma('vm:prefer-inline')
  void setEventHandle(int eventHandle) {
    final hr$ = HRESULT(_SetEventHandleFn(ptr, eventHandle));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Accesses additional services from the audio client object.
  ///
  /// This method uses the [ComInterface.type] method to retrieve metadata about
  /// the target interface defined by [T], including its IID (Interface ID) and
  /// instantiation logic.
  ///
  /// All COM interfaces provided by this package are pre-registered. Custom COM
  /// interfaces must be registered manually using the [ComInterface.register]
  /// method before calling this method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient-getservice>.
  T getService<T extends IUnknown>() {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final ppv = loggingCalloc<Pointer>();
    final hr$ = HRESULT(_GetServiceFn(ptr, riid.ptr, ppv));
    if (hr$.isError) {
      free(ppv);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppv.value.cast());
    free(ppv);
    return result;
  }

  @override
  String toString() => 'IAudioClient(ptr: $ptr)';
}

/// @nodoc
base class IAudioClientVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 shareMode,
        Uint32 streamFlags,
        Int64 hnsBufferDuration,
        Int64 hnsPeriodicity,
        Pointer<WAVEFORMATEX> pFormat,
        Pointer<GUID> audioSessionGuid,
      )
    >
  >
  Initialize;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pNumBufferFrames)
    >
  >
  GetBufferSize;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int64> phnsLatency)
    >
  >
  GetStreamLatency;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pNumPaddingFrames)
    >
  >
  GetCurrentPadding;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 shareMode,
        Pointer<WAVEFORMATEX> pFormat,
        Pointer<Pointer<WAVEFORMATEX>> ppClosestMatch,
      )
    >
  >
  IsFormatSupported;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<WAVEFORMATEX>> ppDeviceFormat,
      )
    >
  >
  GetMixFormat;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Int64> phnsDefaultDevicePeriod,
        Pointer<Int64> phnsMinimumDevicePeriod,
      )
    >
  >
  GetDevicePeriod;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Start;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Stop;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Reset;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, HANDLE eventHandle)>
  >
  SetEventHandle;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> riid,
        Pointer<Pointer> ppv,
      )
    >
  >
  GetService;
}

@internal
final class IAudioClientCompanion extends ComCompanion<IAudioClient> {
  const IAudioClientCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAudioClient Function(VTablePointer) get fromPointer => IAudioClient.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAudioClient;
}
