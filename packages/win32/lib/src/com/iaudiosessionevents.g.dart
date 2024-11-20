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
final IID_IAudioSessionEvents = Guid.fromComponents(
  0x24918acc,
  0x64b3,
  0x37c1,
  Uint8List.fromList(const [0x8c, 0xa9, 0x74, 0xa6, 0x6e, 0x99, 0x57, 0xa8]),
);

/// Provides notifications of session-related events such as changes in the
/// volume level, display name, and session state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nn-audiopolicy-iaudiosessionevents>.
///
/// {@category com}
class IAudioSessionEvents extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAudioSessionEvents] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAudioSessionEvents]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAudioSessionEvents(super.ptr)
    : _vtable = ptr.value.cast<IAudioSessionEventsVtbl>().ref;

  /// Creates a new instance of [IAudioSessionEvents] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAudioSessionEvents] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioSessionEvents.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAudioSessionEventsVtbl _vtable;
  late final _OnDisplayNameChangedFn =
      _vtable.OnDisplayNameChanged.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<GUID>)
      >();
  late final _OnIconPathChangedFn =
      _vtable.OnIconPathChanged.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<GUID>)
      >();
  late final _OnSimpleVolumeChangedFn =
      _vtable.OnSimpleVolumeChanged.asFunction<
        int Function(VTablePointer, double, int, Pointer<GUID>)
      >();
  late final _OnChannelVolumeChangedFn =
      _vtable.OnChannelVolumeChanged.asFunction<
        int Function(VTablePointer, int, Pointer<Float>, int, Pointer<GUID>)
      >();
  late final _OnGroupingParamChangedFn =
      _vtable.OnGroupingParamChanged.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<GUID>)
      >();
  late final _OnStateChangedFn =
      _vtable.OnStateChanged.asFunction<int Function(VTablePointer, int)>();
  late final _OnSessionDisconnectedFn = _vtable
      .OnSessionDisconnected.asFunction<int Function(VTablePointer, int)>();

  /// Notifies the client that the display name for the session has changed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionevents-ondisplaynamechanged>.
  @pragma('vm:prefer-inline')
  void onDisplayNameChanged(PCWSTR newDisplayName, Pointer<GUID> eventContext) {
    final hr$ = HRESULT(
      _OnDisplayNameChangedFn(ptr, newDisplayName, eventContext),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Notifies the client that the display icon for the session has changed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionevents-oniconpathchanged>.
  @pragma('vm:prefer-inline')
  void onIconPathChanged(PCWSTR newIconPath, Pointer<GUID> eventContext) {
    final hr$ = HRESULT(_OnIconPathChangedFn(ptr, newIconPath, eventContext));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Notifies the client that the volume level or muting state of the audio
  /// session has changed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionevents-onsimplevolumechanged>.
  @pragma('vm:prefer-inline')
  void onSimpleVolumeChanged(
    double newVolume,
    bool newMute,
    Pointer<GUID> eventContext,
  ) {
    final hr$ = HRESULT(
      _OnSimpleVolumeChangedFn(
        ptr,
        newVolume,
        newMute ? TRUE : FALSE,
        eventContext,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Notifies the client that the volume level of an audio channel in the
  /// session submix has changed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionevents-onchannelvolumechanged>.
  @pragma('vm:prefer-inline')
  void onChannelVolumeChanged(
    int channelCount,
    Pointer<Float> newChannelVolumeArray,
    int changedChannel,
    Pointer<GUID> eventContext,
  ) {
    final hr$ = HRESULT(
      _OnChannelVolumeChangedFn(
        ptr,
        channelCount,
        newChannelVolumeArray,
        changedChannel,
        eventContext,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Notifies the client that the grouping parameter for the session has
  /// changed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionevents-ongroupingparamchanged>.
  @pragma('vm:prefer-inline')
  void onGroupingParamChanged(
    Pointer<GUID> newGroupingParam,
    Pointer<GUID> eventContext,
  ) {
    final hr$ = HRESULT(
      _OnGroupingParamChangedFn(ptr, newGroupingParam, eventContext),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Notifies the client that the stream-activity state of the session has
  /// changed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionevents-onstatechanged>.
  @pragma('vm:prefer-inline')
  void onStateChanged(AudioSessionState newState) {
    final hr$ = HRESULT(_OnStateChangedFn(ptr, newState));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Notifies the client that the audio session has been disconnected.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionevents-onsessiondisconnected>.
  @pragma('vm:prefer-inline')
  void onSessionDisconnected(AudioSessionDisconnectReason disconnectReason) {
    final hr$ = HRESULT(_OnSessionDisconnectedFn(ptr, disconnectReason));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IAudioSessionEvents(ptr: $ptr)';
}

/// @nodoc
base class IAudioSessionEventsVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR newDisplayName,
        Pointer<GUID> eventContext,
      )
    >
  >
  OnDisplayNameChanged;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR newIconPath,
        Pointer<GUID> eventContext,
      )
    >
  >
  OnIconPathChanged;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Float newVolume,
        BOOL newMute,
        Pointer<GUID> eventContext,
      )
    >
  >
  OnSimpleVolumeChanged;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 channelCount,
        Pointer<Float> newChannelVolumeArray,
        Uint32 changedChannel,
        Pointer<GUID> eventContext,
      )
    >
  >
  OnChannelVolumeChanged;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> newGroupingParam,
        Pointer<GUID> eventContext,
      )
    >
  >
  OnGroupingParamChanged;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 newState)>
  >
  OnStateChanged;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 disconnectReason)>
  >
  OnSessionDisconnected;
}

@internal
final class IAudioSessionEventsCompanion
    extends ComCompanion<IAudioSessionEvents> {
  const IAudioSessionEventsCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAudioSessionEvents Function(VTablePointer) get fromPointer =>
      IAudioSessionEvents.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAudioSessionEvents;
}
