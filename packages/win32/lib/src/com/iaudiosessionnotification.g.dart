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
final IID_IAudioSessionNotification = Guid.fromComponents(
  0x641dd20b,
  0x4d41,
  0x49cc,
  Uint8List.fromList(const [0xab, 0xa3, 0x17, 0x4b, 0x94, 0x77, 0xbb, 0x8]),
);

/// Provides notification when an audio session is created.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nn-audiopolicy-iaudiosessionnotification>.
///
/// {@category com}
class IAudioSessionNotification extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAudioSessionNotification] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAudioSessionNotification] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAudioSessionNotification(super.ptr)
    : _vtable = ptr.value.cast<IAudioSessionNotificationVtbl>().ref;

  /// Creates a new instance of [IAudioSessionNotification] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAudioSessionNotification] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioSessionNotification.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAudioSessionNotificationVtbl _vtable;
  late final _OnSessionCreatedFn =
      _vtable.OnSessionCreated.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();

  /// Notifies the registered processes that the audio session has been created.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionnotification-onsessioncreated>.
  @pragma('vm:prefer-inline')
  void onSessionCreated(IAudioSessionControl? newSession) {
    final hr$ = HRESULT(_OnSessionCreatedFn(ptr, newSession?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IAudioSessionNotification(ptr: $ptr)';
}

/// @nodoc
base class IAudioSessionNotificationVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer newSession)
    >
  >
  OnSessionCreated;
}

@internal
final class IAudioSessionNotificationCompanion
    extends ComCompanion<IAudioSessionNotification> {
  const IAudioSessionNotificationCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAudioSessionNotification Function(VTablePointer) get fromPointer =>
      IAudioSessionNotification.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAudioSessionNotification;
}
