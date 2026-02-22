// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAudioVolumeDuckNotification = GUID.fromComponents(
  0xc3b284d4,
  0x6d39,
  0x4359,
  Uint8List.fromList(const [0xb3, 0xcf, 0xb5, 0x6d, 0xdb, 0x3b, 0xb3, 0x9c]),
);

/// Used to by the system to send notifications about stream attenuation
/// changes.
///
/// Stream Attenuation, or ducking, is a feature introduced in Windows 7, where
/// the system adjusts the volume of a non-communication stream when a new
/// communication stream is opened. For more information about this feature, see
/// Default Ducking Experience.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nn-audiopolicy-iaudiovolumeducknotification>.
///
/// {@category com}
class IAudioVolumeDuckNotification extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAudioVolumeDuckNotification] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAudioVolumeDuckNotification] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IAudioVolumeDuckNotification(super.ptr)
    : _vtable = ptr.value.cast<IAudioVolumeDuckNotificationVtbl>().ref;

  /// Creates a new instance of [IAudioVolumeDuckNotification] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IAudioVolumeDuckNotification] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioVolumeDuckNotification.from(IUnknown interface) =>
      interface.queryInterface();

  final IAudioVolumeDuckNotificationVtbl _vtable;
  late final _OnVolumeDuckNotificationFn =
      _vtable.OnVolumeDuckNotification.asFunction<
        int Function(VTablePointer, Pointer<Utf16>, int)
      >();
  late final _OnVolumeUnduckNotificationFn =
      _vtable.OnVolumeUnduckNotification.asFunction<
        int Function(VTablePointer, Pointer<Utf16>)
      >();

  /// Sends a notification about a pending system ducking event.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiovolumeducknotification-onvolumeducknotification>.
  @pragma('vm:prefer-inline')
  void onVolumeDuckNotification(
    PCWSTR sessionID,
    int countCommunicationSessions,
  ) {
    final hr$ = HRESULT(
      _OnVolumeDuckNotificationFn(ptr, sessionID, countCommunicationSessions),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sends a notification about a pending system unducking event.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiovolumeducknotification-onvolumeunducknotification>.
  @pragma('vm:prefer-inline')
  void onVolumeUnduckNotification(PCWSTR sessionID) {
    final hr$ = HRESULT(_OnVolumeUnduckNotificationFn(ptr, sessionID));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IAudioVolumeDuckNotification(ptr: $ptr)';
}

/// @nodoc
base class IAudioVolumeDuckNotificationVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf16> sessionID,
        Uint32 countCommunicationSessions,
      )
    >
  >
  OnVolumeDuckNotification;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Utf16> sessionID)
    >
  >
  OnVolumeUnduckNotification;
}

@internal
final class IAudioVolumeDuckNotificationCompanion
    extends ComCompanion<IAudioVolumeDuckNotification> {
  const IAudioVolumeDuckNotificationCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAudioVolumeDuckNotification Function(VTablePointer) get fromPointer =>
      IAudioVolumeDuckNotification.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IAudioVolumeDuckNotification;
}
