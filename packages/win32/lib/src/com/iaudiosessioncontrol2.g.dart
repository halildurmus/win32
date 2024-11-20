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
import 'iunknown.g.dart';

/// @nodoc
final IID_IAudioSessionControl2 = Guid.fromComponents(
  0xbfb7ff88,
  0x7239,
  0x4fc9,
  Uint8List.fromList(const [0x8f, 0xa2, 0x7, 0xc9, 0x50, 0xbe, 0x9c, 0x6d]),
);

/// Can be used by a client to get information about the audio session.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nn-audiopolicy-iaudiosessioncontrol2>.
///
/// {@category com}
class IAudioSessionControl2 extends IAudioSessionControl
    implements ComInterface {
  /// Creates a new instance of [IAudioSessionControl2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAudioSessionControl2]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAudioSessionControl2(super.ptr)
    : _vtable = ptr.value.cast<IAudioSessionControl2Vtbl>().ref;

  /// Creates a new instance of [IAudioSessionControl2] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAudioSessionControl2] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioSessionControl2.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAudioSessionControl2Vtbl _vtable;
  late final _GetSessionIdentifierFn =
      _vtable.GetSessionIdentifier.asFunction<
        int Function(VTablePointer, Pointer<PWSTR>)
      >();
  late final _GetSessionInstanceIdentifierFn =
      _vtable.GetSessionInstanceIdentifier.asFunction<
        int Function(VTablePointer, Pointer<PWSTR>)
      >();
  late final _GetProcessIdFn = _vtable
      .GetProcessId.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _IsSystemSoundsSessionFn =
      _vtable.IsSystemSoundsSession.asFunction<int Function(VTablePointer)>();
  late final _SetDuckingPreferenceFn = _vtable
      .SetDuckingPreference.asFunction<int Function(VTablePointer, int)>();

  /// Retrieves the audio session identifier.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol2-getsessionidentifier>.
  PWSTR getSessionIdentifier() {
    final pRetVal = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetSessionIdentifierFn(ptr, pRetVal));
    if (hr$.isError) {
      free(pRetVal);
      throw WindowsException(hr$);
    }
    final result$ = pRetVal.value;
    free(pRetVal);
    return result$;
  }

  /// Retrieves the identifier of the audio session instance.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol2-getsessioninstanceidentifier>.
  PWSTR getSessionInstanceIdentifier() {
    final pRetVal = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetSessionInstanceIdentifierFn(ptr, pRetVal));
    if (hr$.isError) {
      free(pRetVal);
      throw WindowsException(hr$);
    }
    final result$ = pRetVal.value;
    free(pRetVal);
    return result$;
  }

  /// Retrieves the process identifier of the audio session.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol2-getprocessid>.
  int getProcessId() {
    final pRetVal = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetProcessIdFn(ptr, pRetVal));
    if (hr$.isError) {
      free(pRetVal);
      throw WindowsException(hr$);
    }
    final result$ = pRetVal.value;
    free(pRetVal);
    return result$;
  }

  /// Indicates whether the session is a system sounds session.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol2-issystemsoundssession>.
  @pragma('vm:prefer-inline')
  HRESULT isSystemSoundsSession() => HRESULT(_IsSystemSoundsSessionFn(ptr));

  /// Enables or disables the default stream attenuation experience
  /// (auto-ducking) provided by the system.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol2-setduckingpreference>.
  @pragma('vm:prefer-inline')
  void setDuckingPreference(bool optOut) {
    final hr$ = HRESULT(_SetDuckingPreferenceFn(ptr, optOut ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IAudioSessionControl2(ptr: $ptr)';
}

/// @nodoc
base class IAudioSessionControl2Vtbl extends Struct {
  external IAudioSessionControlVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<PWSTR> pRetVal)>
  >
  GetSessionIdentifier;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<PWSTR> pRetVal)>
  >
  GetSessionInstanceIdentifier;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> pRetVal)>
  >
  GetProcessId;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  IsSystemSoundsSession;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, BOOL optOut)>
  >
  SetDuckingPreference;
}

@internal
final class IAudioSessionControl2Companion
    extends ComCompanion<IAudioSessionControl2> {
  const IAudioSessionControl2Companion();

  @pragma('vm:prefer-inline')
  @override
  IAudioSessionControl2 Function(VTablePointer) get fromPointer =>
      IAudioSessionControl2.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAudioSessionControl2;
}
