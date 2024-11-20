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
import 'iaudiosessionenumerator.g.dart';
import 'iaudiosessionmanager.g.dart';
import 'iaudiosessionnotification.g.dart';
import 'iaudiovolumeducknotification.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAudioSessionManager2 = Guid.fromComponents(
  0x77aa99a0,
  0x1bd6,
  0x484f,
  Uint8List.fromList(const [0x8b, 0xc7, 0x2c, 0x65, 0x4c, 0x9a, 0x9b, 0x6f]),
);

/// Enables an application to manage submixes for the audio device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nn-audiopolicy-iaudiosessionmanager2>.
///
/// {@category com}
class IAudioSessionManager2 extends IAudioSessionManager
    implements ComInterface {
  /// Creates a new instance of [IAudioSessionManager2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAudioSessionManager2]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAudioSessionManager2(super.ptr)
    : _vtable = ptr.value.cast<IAudioSessionManager2Vtbl>().ref;

  /// Creates a new instance of [IAudioSessionManager2] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAudioSessionManager2] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioSessionManager2.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAudioSessionManager2Vtbl _vtable;
  late final _GetSessionEnumeratorFn =
      _vtable.GetSessionEnumerator.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _RegisterSessionNotificationFn =
      _vtable.RegisterSessionNotification.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _UnregisterSessionNotificationFn =
      _vtable.UnregisterSessionNotification.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _RegisterDuckNotificationFn =
      _vtable.RegisterDuckNotification.asFunction<
        int Function(VTablePointer, PCWSTR, VTablePointer)
      >();
  late final _UnregisterDuckNotificationFn =
      _vtable.UnregisterDuckNotification.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();

  /// Gets a pointer to the audio session enumerator object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionmanager2-getsessionenumerator>.
  IAudioSessionEnumerator? getSessionEnumerator() {
    final sessionEnum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetSessionEnumeratorFn(ptr, sessionEnum));
    if (hr$.isError) {
      free(sessionEnum);
      throw WindowsException(hr$);
    }
    final result$ = sessionEnum.value;
    free(sessionEnum);
    if (result$.isNull) return null;
    return IAudioSessionEnumerator(result$);
  }

  /// Registers the application to receive a notification when a session is
  /// created.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionmanager2-registersessionnotification>.
  @pragma('vm:prefer-inline')
  void registerSessionNotification(
    IAudioSessionNotification? sessionNotification,
  ) {
    final hr$ = HRESULT(
      _RegisterSessionNotificationFn(ptr, sessionNotification?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Deletes the registration to receive a notification when a session is
  /// created.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionmanager2-unregistersessionnotification>.
  @pragma('vm:prefer-inline')
  void unregisterSessionNotification(
    IAudioSessionNotification? sessionNotification,
  ) {
    final hr$ = HRESULT(
      _UnregisterSessionNotificationFn(
        ptr,
        sessionNotification?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Registers the application with the session manager to receive ducking
  /// notifications.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionmanager2-registerducknotification>.
  @pragma('vm:prefer-inline')
  void registerDuckNotification(
    PCWSTR sessionID,
    IAudioVolumeDuckNotification? duckNotification,
  ) {
    final hr$ = HRESULT(
      _RegisterDuckNotificationFn(
        ptr,
        sessionID,
        duckNotification?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Deletes a previous registration by the application to receive
  /// notifications.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionmanager2-unregisterducknotification>.
  @pragma('vm:prefer-inline')
  void unregisterDuckNotification(
    IAudioVolumeDuckNotification? duckNotification,
  ) {
    final hr$ = HRESULT(
      _UnregisterDuckNotificationFn(ptr, duckNotification?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IAudioSessionManager2(ptr: $ptr)';
}

/// @nodoc
base class IAudioSessionManager2Vtbl extends Struct {
  external IAudioSessionManagerVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> sessionEnum)
    >
  >
  GetSessionEnumerator;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer sessionNotification)
    >
  >
  RegisterSessionNotification;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer sessionNotification)
    >
  >
  UnregisterSessionNotification;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR sessionID,
        VTablePointer duckNotification,
      )
    >
  >
  RegisterDuckNotification;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer duckNotification)
    >
  >
  UnregisterDuckNotification;
}

@internal
final class IAudioSessionManager2Companion
    extends ComCompanion<IAudioSessionManager2> {
  const IAudioSessionManager2Companion();

  @pragma('vm:prefer-inline')
  @override
  IAudioSessionManager2 Function(VTablePointer) get fromPointer =>
      IAudioSessionManager2.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAudioSessionManager2;
}
