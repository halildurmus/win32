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
final IID_IAudioClientDuckingControl = Guid.fromComponents(
  0xc789d381,
  0xa28c,
  0x4168,
  Uint8List.fromList(const [0xb2, 0x8f, 0xd3, 0xa8, 0x37, 0x92, 0x4d, 0xc3]),
);

/// Provides a method, SetDuckingOptionsForCurrentStream, that allows an app to
/// specify that the system shouldn't duck the audio of other streams when the
/// app's audio render stream is active.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudioclientduckingcontrol>.
///
/// {@category com}
class IAudioClientDuckingControl extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAudioClientDuckingControl] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAudioClientDuckingControl] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAudioClientDuckingControl(super.ptr)
    : _vtable = ptr.value.cast<IAudioClientDuckingControlVtbl>().ref;

  /// Creates a new instance of [IAudioClientDuckingControl] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAudioClientDuckingControl] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioClientDuckingControl.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAudioClientDuckingControlVtbl _vtable;
  late final _SetDuckingOptionsForCurrentStreamFn =
      _vtable.SetDuckingOptionsForCurrentStream.asFunction<
        int Function(VTablePointer, int)
      >();

  /// Sets the audio ducking options for an audio render stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclientduckingcontrol-setduckingoptionsforcurrentstream>.
  @pragma('vm:prefer-inline')
  void setDuckingOptionsForCurrentStream(AUDIO_DUCKING_OPTIONS options) {
    final hr$ = HRESULT(_SetDuckingOptionsForCurrentStreamFn(ptr, options));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IAudioClientDuckingControl(ptr: $ptr)';
}

/// @nodoc
base class IAudioClientDuckingControlVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 options)>
  >
  SetDuckingOptionsForCurrentStream;
}

@internal
final class IAudioClientDuckingControlCompanion
    extends ComCompanion<IAudioClientDuckingControl> {
  const IAudioClientDuckingControlCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAudioClientDuckingControl Function(VTablePointer) get fromPointer =>
      IAudioClientDuckingControl.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAudioClientDuckingControl;
}
