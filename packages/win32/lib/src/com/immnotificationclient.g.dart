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
import '../propertykey.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IMMNotificationClient = Guid.fromComponents(
  0x7991eec9,
  0x7e89,
  0x4d85,
  Uint8List.fromList(const [0x83, 0x90, 0x6c, 0x70, 0x3c, 0xec, 0x60, 0xc0]),
);

/// Provides notifications when an audio endpoint device is added or removed,
/// when the state or properties of an endpoint device change, or when there is
/// a change in the default role assigned to an endpoint device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nn-mmdeviceapi-immnotificationclient>.
///
/// {@category com}
class IMMNotificationClient extends IUnknown implements ComInterface {
  /// Creates a new instance of [IMMNotificationClient] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IMMNotificationClient]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IMMNotificationClient(super.ptr)
    : _vtable = ptr.value.cast<IMMNotificationClientVtbl>().ref;

  /// Creates a new instance of [IMMNotificationClient] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IMMNotificationClient] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IMMNotificationClient.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IMMNotificationClientVtbl _vtable;
  late final _OnDeviceStateChangedFn =
      _vtable.OnDeviceStateChanged.asFunction<
        int Function(VTablePointer, PCWSTR, int)
      >();
  late final _OnDeviceAddedFn =
      _vtable.OnDeviceAdded.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _OnDeviceRemovedFn =
      _vtable.OnDeviceRemoved.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _OnDefaultDeviceChangedFn =
      _vtable.OnDefaultDeviceChanged.asFunction<
        int Function(VTablePointer, int, int, PCWSTR)
      >();
  late final _OnPropertyValueChangedFn =
      _vtable.OnPropertyValueChanged.asFunction<
        int Function(VTablePointer, PCWSTR, PROPERTYKEY)
      >();

  /// Indicates that the state of an audio endpoint device has changed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immnotificationclient-ondevicestatechanged>.
  @pragma('vm:prefer-inline')
  void onDeviceStateChanged(PCWSTR pwstrDeviceId, DEVICE_STATE dwNewState) {
    final hr$ = HRESULT(
      _OnDeviceStateChangedFn(ptr, pwstrDeviceId, dwNewState),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Indicates that a new audio endpoint device has been added.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immnotificationclient-ondeviceadded>.
  @pragma('vm:prefer-inline')
  void onDeviceAdded(PCWSTR pwstrDeviceId) {
    final hr$ = HRESULT(_OnDeviceAddedFn(ptr, pwstrDeviceId));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Indicates that an audio endpoint device has been removed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immnotificationclient-ondeviceremoved>.
  @pragma('vm:prefer-inline')
  void onDeviceRemoved(PCWSTR pwstrDeviceId) {
    final hr$ = HRESULT(_OnDeviceRemovedFn(ptr, pwstrDeviceId));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Notifies the client that the default audio endpoint device for a
  /// particular device role has changed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immnotificationclient-ondefaultdevicechanged>.
  @pragma('vm:prefer-inline')
  void onDefaultDeviceChanged(
    EDataFlow flow,
    ERole role,
    PCWSTR? pwstrDefaultDeviceId,
  ) {
    final hr$ = HRESULT(
      _OnDefaultDeviceChangedFn(
        ptr,
        flow,
        role,
        pwstrDefaultDeviceId ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Indicates that the value of a property belonging to an audio endpoint
  /// device has changed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immnotificationclient-onpropertyvaluechanged>.
  @pragma('vm:prefer-inline')
  void onPropertyValueChanged(PCWSTR pwstrDeviceId, PROPERTYKEY key) {
    final hr$ = HRESULT(_OnPropertyValueChangedFn(ptr, pwstrDeviceId, key));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IMMNotificationClient(ptr: $ptr)';
}

/// @nodoc
base class IMMNotificationClientVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pwstrDeviceId,
        Uint32 dwNewState,
      )
    >
  >
  OnDeviceStateChanged;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR pwstrDeviceId)>
  >
  OnDeviceAdded;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR pwstrDeviceId)>
  >
  OnDeviceRemoved;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 flow,
        Int32 role,
        PCWSTR pwstrDefaultDeviceId,
      )
    >
  >
  OnDefaultDeviceChanged;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PCWSTR pwstrDeviceId, PROPERTYKEY key)
    >
  >
  OnPropertyValueChanged;
}

@internal
final class IMMNotificationClientCompanion
    extends ComCompanion<IMMNotificationClient> {
  const IMMNotificationClientCompanion();

  @pragma('vm:prefer-inline')
  @override
  IMMNotificationClient Function(VTablePointer) get fromPointer =>
      IMMNotificationClient.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IMMNotificationClient;
}
