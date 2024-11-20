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
import 'iaudiosessioncontrol.g.dart';
import 'interface.g.dart';
import 'isimpleaudiovolume.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAudioSessionManager = Guid.fromComponents(
  0xbfa971f1,
  0x4d5e,
  0x40bb,
  Uint8List.fromList(const [0x93, 0x5e, 0x96, 0x70, 0x39, 0xbf, 0xbe, 0xe4]),
);

/// Enables a client to access the session controls and volume controls for both
/// cross-process and process-specific audio sessions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nn-audiopolicy-iaudiosessionmanager>.
///
/// {@category com}
class IAudioSessionManager extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAudioSessionManager] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAudioSessionManager]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAudioSessionManager(super.ptr)
    : _vtable = ptr.value.cast<IAudioSessionManagerVtbl>().ref;

  /// Creates a new instance of [IAudioSessionManager] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAudioSessionManager] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioSessionManager.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAudioSessionManagerVtbl _vtable;
  late final _GetAudioSessionControlFn =
      _vtable.GetAudioSessionControl.asFunction<
        int Function(VTablePointer, Pointer<GUID>, int, Pointer<VTablePointer>)
      >();
  late final _GetSimpleAudioVolumeFn =
      _vtable.GetSimpleAudioVolume.asFunction<
        int Function(VTablePointer, Pointer<GUID>, int, Pointer<VTablePointer>)
      >();

  /// Retrieves an audio session control.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionmanager-getaudiosessioncontrol>.
  IAudioSessionControl? getAudioSessionControl(
    Pointer<GUID>? audioSessionGuid,
    int streamFlags,
  ) {
    final sessionControl = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetAudioSessionControlFn(
        ptr,
        audioSessionGuid ?? nullptr,
        streamFlags,
        sessionControl,
      ),
    );
    if (hr$.isError) {
      free(sessionControl);
      throw WindowsException(hr$);
    }
    final result$ = sessionControl.value;
    free(sessionControl);
    if (result$.isNull) return null;
    return IAudioSessionControl(result$);
  }

  /// Retrieves a simple audio volume control.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionmanager-getsimpleaudiovolume>.
  ISimpleAudioVolume? getSimpleAudioVolume(
    Pointer<GUID>? audioSessionGuid,
    int streamFlags,
  ) {
    final audioVolume = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetSimpleAudioVolumeFn(
        ptr,
        audioSessionGuid ?? nullptr,
        streamFlags,
        audioVolume,
      ),
    );
    if (hr$.isError) {
      free(audioVolume);
      throw WindowsException(hr$);
    }
    final result$ = audioVolume.value;
    free(audioVolume);
    if (result$.isNull) return null;
    return ISimpleAudioVolume(result$);
  }

  @override
  String toString() => 'IAudioSessionManager(ptr: $ptr)';
}

/// @nodoc
base class IAudioSessionManagerVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> audioSessionGuid,
        Uint32 streamFlags,
        Pointer<VTablePointer> sessionControl,
      )
    >
  >
  GetAudioSessionControl;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> audioSessionGuid,
        Uint32 streamFlags,
        Pointer<VTablePointer> audioVolume,
      )
    >
  >
  GetSimpleAudioVolume;
}

@internal
final class IAudioSessionManagerCompanion
    extends ComCompanion<IAudioSessionManager> {
  const IAudioSessionManagerCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAudioSessionManager Function(VTablePointer) get fromPointer =>
      IAudioSessionManager.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAudioSessionManager;
}
