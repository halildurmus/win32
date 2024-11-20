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
import 'iaudioclient2.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAudioClient3 = Guid.fromComponents(
  0x7ed4ee07,
  0x8e67,
  0x4cd4,
  Uint8List.fromList(const [0x8c, 0x1a, 0x2b, 0x7a, 0x59, 0x87, 0xad, 0x42]),
);

/// Derived from the IAudioClient2 interface, with a set of additional methods
/// that enable a Windows Audio Session API (WASAPI) audio client to query for
/// the audio engine's supported periodicities and current periodicity as well
/// as request initialization of a shared audio stream with a specified
/// periodicity.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudioclient3>.
///
/// {@category com}
class IAudioClient3 extends IAudioClient2 implements ComInterface {
  /// Creates a new instance of [IAudioClient3] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAudioClient3]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAudioClient3(super.ptr) : _vtable = ptr.value.cast<IAudioClient3Vtbl>().ref;

  /// Creates a new instance of [IAudioClient3] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAudioClient3] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioClient3.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAudioClient3Vtbl _vtable;
  late final _GetSharedModeEnginePeriodFn =
      _vtable.GetSharedModeEnginePeriod.asFunction<
        int Function(
          VTablePointer,
          Pointer<WAVEFORMATEX>,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _GetCurrentSharedModeEnginePeriodFn =
      _vtable.GetCurrentSharedModeEnginePeriod.asFunction<
        int Function(
          VTablePointer,
          Pointer<Pointer<WAVEFORMATEX>>,
          Pointer<Uint32>,
        )
      >();
  late final _InitializeSharedAudioStreamFn =
      _vtable.InitializeSharedAudioStream.asFunction<
        int Function(
          VTablePointer,
          int,
          int,
          Pointer<WAVEFORMATEX>,
          Pointer<GUID>,
        )
      >();

  /// Returns the range of periodicities supported by the engine for the
  /// specified stream format.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient3-getsharedmodeengineperiod>.
  @pragma('vm:prefer-inline')
  void getSharedModeEnginePeriod(
    Pointer<WAVEFORMATEX> pFormat,
    Pointer<Uint32> pDefaultPeriodInFrames,
    Pointer<Uint32> pFundamentalPeriodInFrames,
    Pointer<Uint32> pMinPeriodInFrames,
    Pointer<Uint32> pMaxPeriodInFrames,
  ) {
    final hr$ = HRESULT(
      _GetSharedModeEnginePeriodFn(
        ptr,
        pFormat,
        pDefaultPeriodInFrames,
        pFundamentalPeriodInFrames,
        pMinPeriodInFrames,
        pMaxPeriodInFrames,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Returns the current format and periodicity of the audio engine.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient3-getcurrentsharedmodeengineperiod>.
  @pragma('vm:prefer-inline')
  void getCurrentSharedModeEnginePeriod(
    Pointer<Pointer<WAVEFORMATEX>> ppFormat,
    Pointer<Uint32> pCurrentPeriodInFrames,
  ) {
    final hr$ = HRESULT(
      _GetCurrentSharedModeEnginePeriodFn(
        ptr,
        ppFormat,
        pCurrentPeriodInFrames,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Initializes a shared stream with the specified periodicity.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient3-initializesharedaudiostream>.
  @pragma('vm:prefer-inline')
  void initializeSharedAudioStream(
    int streamFlags,
    int periodInFrames,
    Pointer<WAVEFORMATEX> pFormat,
    Pointer<GUID>? audioSessionGuid,
  ) {
    final hr$ = HRESULT(
      _InitializeSharedAudioStreamFn(
        ptr,
        streamFlags,
        periodInFrames,
        pFormat,
        audioSessionGuid ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IAudioClient3(ptr: $ptr)';
}

/// @nodoc
base class IAudioClient3Vtbl extends Struct {
  external IAudioClient2Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<WAVEFORMATEX> pFormat,
        Pointer<Uint32> pDefaultPeriodInFrames,
        Pointer<Uint32> pFundamentalPeriodInFrames,
        Pointer<Uint32> pMinPeriodInFrames,
        Pointer<Uint32> pMaxPeriodInFrames,
      )
    >
  >
  GetSharedModeEnginePeriod;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<WAVEFORMATEX>> ppFormat,
        Pointer<Uint32> pCurrentPeriodInFrames,
      )
    >
  >
  GetCurrentSharedModeEnginePeriod;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 streamFlags,
        Uint32 periodInFrames,
        Pointer<WAVEFORMATEX> pFormat,
        Pointer<GUID> audioSessionGuid,
      )
    >
  >
  InitializeSharedAudioStream;
}

@internal
final class IAudioClient3Companion extends ComCompanion<IAudioClient3> {
  const IAudioClient3Companion();

  @pragma('vm:prefer-inline')
  @override
  IAudioClient3 Function(VTablePointer) get fromPointer => IAudioClient3.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAudioClient3;
}
