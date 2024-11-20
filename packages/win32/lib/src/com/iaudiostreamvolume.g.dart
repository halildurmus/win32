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
final IID_IAudioStreamVolume = Guid.fromComponents(
  0x93014887,
  0x242d,
  0x4068,
  Uint8List.fromList(const [0x8a, 0x15, 0xcf, 0x5e, 0x93, 0xb9, 0xf, 0xe3]),
);

/// Enables a client to control and monitor the volume levels for all of the
/// channels in an audio stream.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudiostreamvolume>.
///
/// {@category com}
class IAudioStreamVolume extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAudioStreamVolume] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAudioStreamVolume]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAudioStreamVolume(super.ptr)
    : _vtable = ptr.value.cast<IAudioStreamVolumeVtbl>().ref;

  /// Creates a new instance of [IAudioStreamVolume] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAudioStreamVolume] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioStreamVolume.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAudioStreamVolumeVtbl _vtable;
  late final _GetChannelCountFn =
      _vtable.GetChannelCount.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();
  late final _SetChannelVolumeFn = _vtable
      .SetChannelVolume.asFunction<int Function(VTablePointer, int, double)>();
  late final _GetChannelVolumeFn =
      _vtable.GetChannelVolume.asFunction<
        int Function(VTablePointer, int, Pointer<Float>)
      >();
  late final _SetAllVolumesFn =
      _vtable.SetAllVolumes.asFunction<
        int Function(VTablePointer, int, Pointer<Float>)
      >();
  late final _GetAllVolumesFn =
      _vtable.GetAllVolumes.asFunction<
        int Function(VTablePointer, int, Pointer<Float>)
      >();

  /// Retrieves the number of channels in the audio stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiostreamvolume-getchannelcount>.
  int getChannelCount() {
    final pdwCount = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetChannelCountFn(ptr, pdwCount));
    if (hr$.isError) {
      free(pdwCount);
      throw WindowsException(hr$);
    }
    final result$ = pdwCount.value;
    free(pdwCount);
    return result$;
  }

  /// Sets the volume level for the specified channel in the audio stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiostreamvolume-setchannelvolume>.
  @pragma('vm:prefer-inline')
  void setChannelVolume(int dwIndex, double fLevel) {
    final hr$ = HRESULT(_SetChannelVolumeFn(ptr, dwIndex, fLevel));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the volume level for the specified channel in the audio stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiostreamvolume-getchannelvolume>.
  double getChannelVolume(int dwIndex) {
    final pfLevel = loggingCalloc<Float>();
    final hr$ = HRESULT(_GetChannelVolumeFn(ptr, dwIndex, pfLevel));
    if (hr$.isError) {
      free(pfLevel);
      throw WindowsException(hr$);
    }
    final result$ = pfLevel.value;
    free(pfLevel);
    return result$;
  }

  /// Sets the individual volume levels for all the channels in the audio
  /// stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiostreamvolume-setallvolumes>.
  @pragma('vm:prefer-inline')
  void setAllVolumes(int dwCount, Pointer<Float> pfVolumes) {
    final hr$ = HRESULT(_SetAllVolumesFn(ptr, dwCount, pfVolumes));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the volume levels for all the channels in the audio stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiostreamvolume-getallvolumes>.
  @pragma('vm:prefer-inline')
  void getAllVolumes(int dwCount, Pointer<Float> pfVolumes) {
    final hr$ = HRESULT(_GetAllVolumesFn(ptr, dwCount, pfVolumes));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IAudioStreamVolume(ptr: $ptr)';
}

/// @nodoc
base class IAudioStreamVolumeVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pdwCount)
    >
  >
  GetChannelCount;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 dwIndex, Float fLevel)
    >
  >
  SetChannelVolume;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwIndex,
        Pointer<Float> pfLevel,
      )
    >
  >
  GetChannelVolume;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwCount,
        Pointer<Float> pfVolumes,
      )
    >
  >
  SetAllVolumes;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwCount,
        Pointer<Float> pfVolumes,
      )
    >
  >
  GetAllVolumes;
}

@internal
final class IAudioStreamVolumeCompanion
    extends ComCompanion<IAudioStreamVolume> {
  const IAudioStreamVolumeCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAudioStreamVolume Function(VTablePointer) get fromPointer =>
      IAudioStreamVolume.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAudioStreamVolume;
}
