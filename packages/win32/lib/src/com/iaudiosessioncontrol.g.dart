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
import 'iaudiosessionevents.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAudioSessionControl = Guid.fromComponents(
  0xf4b1a599,
  0x7266,
  0x4319,
  Uint8List.fromList(const [0xa8, 0xca, 0xe7, 0xa, 0xcb, 0x11, 0xe8, 0xcd]),
);

/// Enables a client to configure the control parameters for an audio session
/// and to monitor events in the session.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nn-audiopolicy-iaudiosessioncontrol>.
///
/// {@category com}
class IAudioSessionControl extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAudioSessionControl] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAudioSessionControl]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAudioSessionControl(super.ptr)
    : _vtable = ptr.value.cast<IAudioSessionControlVtbl>().ref;

  /// Creates a new instance of [IAudioSessionControl] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAudioSessionControl] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioSessionControl.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAudioSessionControlVtbl _vtable;
  late final _GetStateFn = _vtable
      .GetState.asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _GetDisplayNameFn = _vtable
      .GetDisplayName.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _SetDisplayNameFn =
      _vtable.SetDisplayName.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<GUID>)
      >();
  late final _GetIconPathFn = _vtable
      .GetIconPath.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _SetIconPathFn =
      _vtable.SetIconPath.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<GUID>)
      >();
  late final _GetGroupingParamFn =
      _vtable.GetGroupingParam.asFunction<
        int Function(VTablePointer, Pointer<GUID>)
      >();
  late final _SetGroupingParamFn =
      _vtable.SetGroupingParam.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<GUID>)
      >();
  late final _RegisterAudioSessionNotificationFn =
      _vtable.RegisterAudioSessionNotification.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _UnregisterAudioSessionNotificationFn =
      _vtable.UnregisterAudioSessionNotification.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();

  /// Retrieves the current state of the audio session.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-getstate>.
  AudioSessionState getState() {
    final pRetVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetStateFn(ptr, pRetVal));
    if (hr$.isError) {
      free(pRetVal);
      throw WindowsException(hr$);
    }
    final result$ = pRetVal.value;
    free(pRetVal);
    return AudioSessionState(result$);
  }

  /// Retrieves the display name for the audio session.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-getdisplayname>.
  PWSTR getDisplayName() {
    final pRetVal = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetDisplayNameFn(ptr, pRetVal));
    if (hr$.isError) {
      free(pRetVal);
      throw WindowsException(hr$);
    }
    final result$ = pRetVal.value;
    free(pRetVal);
    return result$;
  }

  /// Assigns a display name to the current session.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-setdisplayname>.
  @pragma('vm:prefer-inline')
  void setDisplayName(PCWSTR value, Pointer<GUID> eventContext) {
    final hr$ = HRESULT(_SetDisplayNameFn(ptr, value, eventContext));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the path for the display icon for the audio session.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-geticonpath>.
  PWSTR getIconPath() {
    final pRetVal = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetIconPathFn(ptr, pRetVal));
    if (hr$.isError) {
      free(pRetVal);
      throw WindowsException(hr$);
    }
    final result$ = pRetVal.value;
    free(pRetVal);
    return result$;
  }

  /// Assigns a display icon to the current session.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-seticonpath>.
  @pragma('vm:prefer-inline')
  void setIconPath(PCWSTR value, Pointer<GUID> eventContext) {
    final hr$ = HRESULT(_SetIconPathFn(ptr, value, eventContext));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the grouping parameter of the audio session.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-getgroupingparam>.
  Pointer<GUID> getGroupingParam() {
    final pRetVal = loggingCalloc<GUID>();
    final hr$ = HRESULT(_GetGroupingParamFn(ptr, pRetVal));
    if (hr$.isError) {
      free(pRetVal);
      throw WindowsException(hr$);
    }
    return pRetVal;
  }

  /// Assigns a session to a grouping of sessions.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-setgroupingparam>.
  @pragma('vm:prefer-inline')
  void setGroupingParam(Pointer<GUID> override, Pointer<GUID> eventContext) {
    final hr$ = HRESULT(_SetGroupingParamFn(ptr, override, eventContext));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Registers the client to receive notifications of session events, including
  /// changes in the stream state.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-registeraudiosessionnotification>.
  @pragma('vm:prefer-inline')
  void registerAudioSessionNotification(IAudioSessionEvents? newNotifications) {
    final hr$ = HRESULT(
      _RegisterAudioSessionNotificationFn(
        ptr,
        newNotifications?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Deletes a previous registration by the client to receive notifications.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-unregisteraudiosessionnotification>.
  @pragma('vm:prefer-inline')
  void unregisterAudioSessionNotification(
    IAudioSessionEvents? newNotifications,
  ) {
    final hr$ = HRESULT(
      _UnregisterAudioSessionNotificationFn(
        ptr,
        newNotifications?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IAudioSessionControl(ptr: $ptr)';
}

/// @nodoc
base class IAudioSessionControlVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> pRetVal)>
  >
  GetState;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<PWSTR> pRetVal)>
  >
  GetDisplayName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR value,
        Pointer<GUID> eventContext,
      )
    >
  >
  SetDisplayName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<PWSTR> pRetVal)>
  >
  GetIconPath;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR value,
        Pointer<GUID> eventContext,
      )
    >
  >
  SetIconPath;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<GUID> pRetVal)>
  >
  GetGroupingParam;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> override,
        Pointer<GUID> eventContext,
      )
    >
  >
  SetGroupingParam;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer newNotifications)
    >
  >
  RegisterAudioSessionNotification;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer newNotifications)
    >
  >
  UnregisterAudioSessionNotification;
}

@internal
final class IAudioSessionControlCompanion
    extends ComCompanion<IAudioSessionControl> {
  const IAudioSessionControlCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAudioSessionControl Function(VTablePointer) get fromPointer =>
      IAudioSessionControl.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAudioSessionControl;
}
