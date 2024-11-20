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
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISimpleAudioVolume = Guid.fromComponents(
  0x87ce5498,
  0x68d6,
  0x44e5,
  Uint8List.fromList(const [0x92, 0x15, 0x6d, 0xa4, 0x7e, 0xf8, 0x83, 0xd8]),
);

/// Enables a client to control the master volume level of an audio session.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-isimpleaudiovolume>.
///
/// {@category com}
class ISimpleAudioVolume extends IUnknown implements ComInterface {
  /// Creates a new instance of [ISimpleAudioVolume] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISimpleAudioVolume]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISimpleAudioVolume(super.ptr)
    : _vtable = ptr.value.cast<ISimpleAudioVolumeVtbl>().ref;

  /// Creates a new instance of [ISimpleAudioVolume] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISimpleAudioVolume] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISimpleAudioVolume.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISimpleAudioVolumeVtbl _vtable;
  late final _SetMasterVolumeFn =
      _vtable.SetMasterVolume.asFunction<
        int Function(VTablePointer, double, Pointer<GUID>)
      >();
  late final _GetMasterVolumeFn =
      _vtable.GetMasterVolume.asFunction<
        int Function(VTablePointer, Pointer<Float>)
      >();
  late final _SetMuteFn = _vtable
      .SetMute.asFunction<int Function(VTablePointer, int, Pointer<GUID>)>();
  late final _GetMuteFn =
      _vtable.GetMute.asFunction<int Function(VTablePointer, Pointer<BOOL>)>();

  /// Sets the master volume level for the audio session.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-isimpleaudiovolume-setmastervolume>.
  @pragma('vm:prefer-inline')
  void setMasterVolume(double fLevel, Pointer<GUID> eventContext) {
    final hr$ = HRESULT(_SetMasterVolumeFn(ptr, fLevel, eventContext));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the client volume level for the audio session.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-isimpleaudiovolume-getmastervolume>.
  double getMasterVolume() {
    final pfLevel = loggingCalloc<Float>();
    final hr$ = HRESULT(_GetMasterVolumeFn(ptr, pfLevel));
    if (hr$.isError) {
      free(pfLevel);
      throw WindowsException(hr$);
    }
    final result$ = pfLevel.value;
    free(pfLevel);
    return result$;
  }

  /// Sets the muting state for the audio session.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-isimpleaudiovolume-setmute>.
  @pragma('vm:prefer-inline')
  void setMute(bool bMute, Pointer<GUID> eventContext) {
    final hr$ = HRESULT(_SetMuteFn(ptr, bMute ? TRUE : FALSE, eventContext));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the current muting state for the audio session.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-isimpleaudiovolume-getmute>.
  bool getMute() {
    final pbMute = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_GetMuteFn(ptr, pbMute));
    if (hr$.isError) {
      free(pbMute);
      throw WindowsException(hr$);
    }
    final result$ = pbMute.value;
    free(pbMute);
    return result$ != FALSE;
  }

  @override
  String toString() => 'ISimpleAudioVolume(ptr: $ptr)';
}

/// @nodoc
base class ISimpleAudioVolumeVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Float fLevel,
        Pointer<GUID> eventContext,
      )
    >
  >
  SetMasterVolume;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Float> pfLevel)>
  >
  GetMasterVolume;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BOOL bMute,
        Pointer<GUID> eventContext,
      )
    >
  >
  SetMute;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> pbMute)>
  >
  GetMute;
}

@internal
final class ISimpleAudioVolumeCompanion
    extends ComCompanion<ISimpleAudioVolume> {
  const ISimpleAudioVolumeCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISimpleAudioVolume Function(VTablePointer) get fromPointer =>
      ISimpleAudioVolume.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISimpleAudioVolume;
}
